DROP FUNCTION IF EXISTS cs_count_encrypted_with_active_config_v1(table_name TEXT, column_name TEXT);
DROP FUNCTION IF EXISTS cs_rename_encrypted_columns_v1();
DROP FUNCTION IF EXISTS cs_create_encrypted_columns_v1();
DROP FUNCTION IF EXISTS cs_ready_for_encryption_v1();
DROP FUNCTION IF EXISTS cs_select_target_columns_v1();
DROP FUNCTION IF EXISTS cs_select_pending_columns_v1();
DROP FUNCTION IF EXISTS _cs_diff_config_v1(a JSONB, b JSONB);
DROP FUNCTION IF EXISTS cs_refresh_encrypt_config();
DROP FUNCTION IF EXISTS cs_remove_column_v1(table_name text, column_name text);
DROP FUNCTION IF EXISTS cs_add_column_v1(table_name text, column_name text, cast_as text);
DROP FUNCTION IF EXISTS cs_discard_v1();
DROP FUNCTION IF EXISTS cs_activate_v1();
DROP FUNCTION IF EXISTS cs_encrypt_v1();
DROP FUNCTION IF EXISTS cs_modify_index_v1(table_name text, column_name text, index_name text, cast_as text, opts jsonb);
DROP FUNCTION IF EXISTS cs_remove_index_v1(table_name text, column_name text, index_name text);
DROP FUNCTION IF EXISTS cs_add_index_v1(table_name text, column_name text, index_name text, cast_as text, opts jsonb);
DROP FUNCTION IF EXISTS _cs_config_match_default();
DROP FUNCTION IF EXISTS _cs_config_add_index(table_name text, column_name text, index_name text, opts jsonb, config jsonb);
DROP FUNCTION IF EXISTS _cs_config_add_cast(table_name text, column_name text, cast_as text, config jsonb);
DROP FUNCTION IF EXISTS _cs_config_add_column(table_name text, column_name text, config jsonb);
DROP FUNCTION IF EXISTS _cs_config_add_table(table_name text, config jsonb);
DROP FUNCTION IF EXISTS  _cs_config_default(config jsonb);
DROP FUNCTION IF EXISTS _cs_config_check_v(jsonb);
DROP FUNCTION IF EXISTS _cs_config_check_tables(jsonb);
DROP FUNCTION IF EXISTS _cs_config_check_cast(jsonb);
DROP FUNCTION IF EXISTS _cs_config_check_indexes(jsonb);
DROP FUNCTION IF EXISTS _cs_extract_indexes(jsonb);
DROP AGGREGATE IF EXISTS cs_grouped_value_v1(jsonb);
DROP FUNCTION IF EXISTS _cs_first_grouped_value(jsonb, jsonb);
DROP FUNCTION IF EXISTS cs_ore_64_8_v1(val jsonb);
DROP FUNCTION IF EXISTS cs_ore_64_8_v1_v0(val jsonb);
DROP FUNCTION IF EXISTS cs_ore_64_8_v1_v0_0(val jsonb);
DROP CAST IF EXISTS (text AS ore_64_8_v1_term);
DROP FUNCTION IF EXISTS _cs_text_to_ore_64_8_v1_term_v1_0(t text);
DROP FUNCTION IF EXISTS cs_ste_vec_v1(val jsonb);
DROP FUNCTION IF EXISTS cs_ste_vec_v1_v0(val jsonb);
DROP FUNCTION IF EXISTS cs_ste_vec_v1_v0_0(val jsonb);
DROP FUNCTION IF EXISTS  cs_unique_v1(val jsonb);
DROP FUNCTION IF EXISTS  cs_unique_v1_v0(val jsonb);
DROP FUNCTION IF EXISTS  cs_unique_v1_v0_0(val jsonb);
DROP FUNCTION IF EXISTS cs_match_v1(val jsonb);
DROP FUNCTION IF EXISTS cs_match_v1_v0(val jsonb);
DROP FUNCTION IF EXISTS cs_match_v1_v0_0(val jsonb);
DROP FUNCTION IF EXISTS cs_ciphertext_v1(val jsonb);
DROP FUNCTION IF EXISTS cs_ciphertext_v1_v0(val jsonb);
DROP FUNCTION IF EXISTS cs_ciphertext_v1_v0_0(val jsonb);
DROP FUNCTION IF EXISTS cs_check_encrypted_v1(val jsonb);
DROP FUNCTION IF EXISTS _cs_encrypted_check_v(jsonb);
DROP FUNCTION IF EXISTS _cs_encrypted_check_i_ct(jsonb);
DROP FUNCTION IF EXISTS _cs_encrypted_check_q(jsonb);
DROP FUNCTION IF EXISTS _cs_encrypted_check_i(jsonb);
DROP FUNCTION IF EXISTS _cs_encrypted_check_p(jsonb);
DROP FUNCTION IF EXISTS _cs_encrypted_check_k_sv(jsonb);
DROP FUNCTION IF EXISTS _cs_encrypted_check_k_ct(jsonb);
DROP FUNCTION IF EXISTS _cs_encrypted_check_k(jsonb);
DROP DOMAIN IF EXISTS cs_unique_index_v1;
DROP DOMAIN IF EXISTS cs_match_index_v1;
DROP OPERATOR IF EXISTS <@ (cs_ste_vec_index_v1, cs_ste_vec_index_v1);
DROP OPERATOR IF EXISTS @> (cs_ste_vec_index_v1, cs_ste_vec_index_v1);
DROP CAST IF EXISTS (jsonb AS cs_ste_vec_index_v1);
DROP FUNCTION IF EXISTS jsonb_to_cs_ste_vec_index_v1(input jsonb);
DROP FUNCTION IF EXISTS ste_vec_v1_logical_is_contained(a cs_ste_vec_index_v1, b cs_ste_vec_index_v1);
DROP FUNCTION IF EXISTS cs_ste_vec_v1_entry_array_contains_entry(a cs_ste_vec_v1_entry[], b cs_ste_vec_v1_entry);
DROP FUNCTION IF EXISTS ste_vec_v1_logical_contains(a cs_ste_vec_index_v1, b cs_ste_vec_index_v1);
DROP FUNCTION IF EXISTS cs_ste_vec_v1_entry_eq(a cs_ste_vec_v1_entry, b cs_ste_vec_v1_entry);
DROP FUNCTION IF EXISTS cs_ste_vec_term_v1(col jsonb);
DROP FUNCTION IF EXISTS cs_ste_vec_term_v1(col jsonb, selector jsonb);
DROP FUNCTION IF EXISTS cs_ste_vec_terms_v1(col jsonb, selector jsonb);
DROP FUNCTION IF EXISTS cs_ste_vec_value_v1(col jsonb, selector jsonb);
DROP OPERATOR CLASS IF EXISTS cs_ste_vec_encrypted_term_v1_btree_ops USING btree;
DROP OPERATOR FAMILY IF EXISTS cs_ste_vec_encrypted_term_v1_btree_ops USING btree;
DROP OPERATOR IF EXISTS <= (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);
DROP OPERATOR IF EXISTS >= (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);
DROP OPERATOR IF EXISTS < (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);
DROP OPERATOR IF EXISTS > (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);
DROP OPERATOR IF EXISTS <> (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);
DROP OPERATOR IF EXISTS = (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);
DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_gte(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);
DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_gt(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);
DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_lte(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);
DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_lt(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);
DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_neq(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);
DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_eq(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);
DROP FUNCTION IF EXISTS compare_ste_vec_encrypted_term_v1(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);
DROP OPERATOR CLASS IF EXISTS ore_cllw_8_v1_variable_btree_ops USING btree;
DROP OPERATOR FAMILY IF EXISTS ore_cllw_8_v1_variable_btree_ops USING btree;
DROP OPERATOR CLASS IF EXISTS ore_cllw_8_v1_btree_ops USING btree;
DROP OPERATOR FAMILY IF EXISTS ore_cllw_8_v1_btree_ops USING btree;
DROP OPERATOR IF EXISTS <= (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);
DROP OPERATOR IF EXISTS >= (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);
DROP OPERATOR IF EXISTS < (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);
DROP OPERATOR IF EXISTS > (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);
DROP OPERATOR IF EXISTS <> (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);
DROP OPERATOR IF EXISTS = (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_gte_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_gt_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_lte_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_lt_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_variable_v1_neq(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_variable_v1_eq(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);
DROP OPERATOR IF EXISTS <= (ore_cllw_8_v1, ore_cllw_8_v1);
DROP OPERATOR IF EXISTS >= (ore_cllw_8_v1, ore_cllw_8_v1);
DROP OPERATOR IF EXISTS < (ore_cllw_8_v1, ore_cllw_8_v1);
DROP OPERATOR IF EXISTS > (ore_cllw_8_v1, ore_cllw_8_v1);
DROP OPERATOR IF EXISTS <> (ore_cllw_8_v1, ore_cllw_8_v1);
DROP OPERATOR IF EXISTS = (ore_cllw_8_v1, ore_cllw_8_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_gte(a ore_cllw_8_v1, b ore_cllw_8_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_gt(a ore_cllw_8_v1, b ore_cllw_8_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_lte(a ore_cllw_8_v1, b ore_cllw_8_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_lt(a ore_cllw_8_v1, b ore_cllw_8_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_neq(a ore_cllw_8_v1, b ore_cllw_8_v1);
DROP FUNCTION IF EXISTS ore_cllw_8_v1_eq(a ore_cllw_8_v1, b ore_cllw_8_v1);
DROP FUNCTION IF EXISTS compare_lex_ore_cllw_8_v1(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);
DROP FUNCTION IF EXISTS compare_ore_cllw_8_v1(a ore_cllw_8_v1, b ore_cllw_8_v1);
DROP FUNCTION IF EXISTS __compare_inner_ore_cllw_8_v1(a bytea, b bytea);
DROP FUNCTION IF EXISTS __bytea_ct_eq(a bytea, b bytea);
DROP OPERATOR CLASS IF EXISTS ore_64_8_v1_btree_ops USING btree;
DROP OPERATOR FAMILY IF EXISTS ore_64_8_v1_btree_ops USING btree;
DROP OPERATOR IF EXISTS >= (ore_64_8_v1, ore_64_8_v1);
DROP OPERATOR IF EXISTS <= (ore_64_8_v1, ore_64_8_v1);
DROP OPERATOR IF EXISTS < (ore_64_8_v1, ore_64_8_v1);
DROP OPERATOR IF EXISTS > (ore_64_8_v1, ore_64_8_v1);
DROP OPERATOR IF EXISTS <> (ore_64_8_v1, ore_64_8_v1);
DROP OPERATOR IF EXISTS = (ore_64_8_v1, ore_64_8_v1);
DROP FUNCTION IF EXISTS ore_64_8_v1_gte(a ore_64_8_v1, b ore_64_8_v1);
DROP FUNCTION IF EXISTS ore_64_8_v1_gt(a ore_64_8_v1, b ore_64_8_v1);
DROP FUNCTION IF EXISTS ore_64_8_v1_lte(a ore_64_8_v1, b ore_64_8_v1);
DROP FUNCTION IF EXISTS ore_64_8_v1_lt(a ore_64_8_v1, b ore_64_8_v1);
DROP FUNCTION IF EXISTS ore_64_8_v1_neq(a ore_64_8_v1, b ore_64_8_v1);
DROP FUNCTION IF EXISTS ore_64_8_v1_eq(a ore_64_8_v1, b ore_64_8_v1);
DROP FUNCTION IF EXISTS compare_ore_64_8_v1(a ore_64_8_v1, b ore_64_8_v1);
DROP FUNCTION IF EXISTS compare_ore_array(a ore_64_8_v1_term[], b ore_64_8_v1_term[]);
DROP OPERATOR CLASS IF EXISTS ore_64_8_v1_term_btree_ops USING btree;
DROP OPERATOR FAMILY IF EXISTS ore_64_8_v1_term_btree_ops USING btree;
DROP OPERATOR IF EXISTS >= (ore_64_8_v1_term, ore_64_8_v1_term);
DROP OPERATOR IF EXISTS <= (ore_64_8_v1_term, ore_64_8_v1_term);
DROP OPERATOR IF EXISTS < (ore_64_8_v1_term, ore_64_8_v1_term);
DROP OPERATOR IF EXISTS > (ore_64_8_v1_term, ore_64_8_v1_term);
DROP OPERATOR IF EXISTS <> (ore_64_8_v1_term, ore_64_8_v1_term);
DROP OPERATOR IF EXISTS = (ore_64_8_v1_term, ore_64_8_v1_term);
DROP FUNCTION IF EXISTS ore_64_8_v1_term_gte(a ore_64_8_v1_term, b ore_64_8_v1_term);
DROP FUNCTION IF EXISTS ore_64_8_v1_term_gt(a ore_64_8_v1_term, b ore_64_8_v1_term);
DROP FUNCTION IF EXISTS ore_64_8_v1_term_lte(a ore_64_8_v1_term, b ore_64_8_v1_term);
DROP FUNCTION IF EXISTS ore_64_8_v1_term_lt(a ore_64_8_v1_term, b ore_64_8_v1_term);
DROP FUNCTION IF EXISTS ore_64_8_v1_term_neq(a ore_64_8_v1_term, b ore_64_8_v1_term);
DROP FUNCTION IF EXISTS ore_64_8_v1_term_eq(a ore_64_8_v1_term, b ore_64_8_v1_term);
DROP FUNCTION IF EXISTS compare_ore_64_8_v1_term(a ore_64_8_v1_term, b ore_64_8_v1_term);
-- ANYTHING THAT NEEDS TO BE DROPPED LAST
DROP TYPE IF EXISTS ore_64_8_v1;
DROP TYPE IF EXISTS ore_64_8_v1_term;
DROP TYPE IF EXISTS cs_ste_vec_index_v1;
DROP TYPE IF EXISTS cs_ste_vec_v1_entry;
DROP TYPE IF EXISTS ore_cllw_8_v1;
DROP TYPE IF EXISTS ore_cllw_8_variable_v1;
DROP TYPE IF EXISTS cs_ste_vec_encrypted_term_v1;
CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TYPE ore_64_8_v1_term AS (
  bytes bytea
);

CREATE TYPE ore_64_8_v1 AS (
  terms ore_64_8_v1_term[]
);

DROP FUNCTION IF EXISTS compare_ore_64_8_v1_term(a ore_64_8_v1_term, b ore_64_8_v1_term);

CREATE FUNCTION compare_ore_64_8_v1_term(a ore_64_8_v1_term, b ore_64_8_v1_term) returns integer AS $$
  DECLARE
    eq boolean := true;
    unequal_block smallint := 0;
    hash_key bytea;
    target_block bytea;

    left_block_size CONSTANT smallint := 16;
    right_block_size CONSTANT smallint := 32;
    right_offset CONSTANT smallint := 136; -- 8 * 17

    indicator smallint := 0;
  BEGIN
    IF a IS NULL AND b IS NULL THEN
      RETURN 0;
    END IF;

    IF a IS NULL THEN
      RETURN -1;
    END IF;

    IF b IS NULL THEN
      RETURN 1;
    END IF;

    IF bit_length(a.bytes) != bit_length(b.bytes) THEN
      RAISE EXCEPTION 'Ciphertexts are different lengths';
    END IF;

    FOR block IN 0..7 LOOP
      -- Compare each PRP (byte from the first 8 bytes) and PRF block (8 byte
      -- chunks of the rest of the value).
      -- NOTE:
      -- * Substr is ordinally indexed (hence 1 and not 0, and 9 and not 8).
      -- * We are not worrying about timing attacks here; don't fret about
      --   the OR or !=.
      IF
        substr(a.bytes, 1 + block, 1) != substr(b.bytes, 1 + block, 1)
        OR substr(a.bytes, 9 + left_block_size * block, left_block_size) != substr(b.bytes, 9 + left_block_size * BLOCK, left_block_size)
      THEN
        -- set the first unequal block we find
        IF eq THEN
          unequal_block := block;
        END IF;
        eq = false;
      END IF;
    END LOOP;

    IF eq THEN
      RETURN 0::integer;
    END IF;

    -- Hash key is the IV from the right CT of b
    hash_key := substr(b.bytes, right_offset + 1, 16);

    -- first right block is at right offset + nonce_size (ordinally indexed)
    target_block := substr(b.bytes, right_offset + 17 + (unequal_block * right_block_size), right_block_size);

    indicator := (
      get_bit(
        encrypt(
          substr(a.bytes, 9 + (left_block_size * unequal_block), left_block_size),
          hash_key,
          'aes-ecb'
        ),
        0
      ) + get_bit(target_block, get_byte(a.bytes, unequal_block))) % 2;

    IF indicator = 1 THEN
      RETURN 1::integer;
    ELSE
      RETURN -1::integer;
    END IF;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS ore_64_8_v1_term_eq(a ore_64_8_v1_term, b ore_64_8_v1_term);

CREATE FUNCTION ore_64_8_v1_term_eq(a ore_64_8_v1_term, b ore_64_8_v1_term)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1_term(a, b) = 0
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_term_neq(a ore_64_8_v1_term, b ore_64_8_v1_term);

CREATE FUNCTION ore_64_8_v1_term_neq(a ore_64_8_v1_term, b ore_64_8_v1_term)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1_term(a, b) <> 0
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_term_lt(a ore_64_8_v1_term, b ore_64_8_v1_term);

CREATE FUNCTION ore_64_8_v1_term_lt(a ore_64_8_v1_term, b ore_64_8_v1_term)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1_term(a, b) = -1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_term_lte(a ore_64_8_v1_term, b ore_64_8_v1_term);

CREATE FUNCTION ore_64_8_v1_term_lte(a ore_64_8_v1_term, b ore_64_8_v1_term)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1_term(a, b) != 1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_term_gt(a ore_64_8_v1_term, b ore_64_8_v1_term);

CREATE FUNCTION ore_64_8_v1_term_gt(a ore_64_8_v1_term, b ore_64_8_v1_term)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1_term(a, b) = 1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_term_gte(a ore_64_8_v1_term, b ore_64_8_v1_term);

CREATE FUNCTION ore_64_8_v1_term_gte(a ore_64_8_v1_term, b ore_64_8_v1_term)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1_term(a, b) != -1
$$ LANGUAGE SQL;


DROP OPERATOR IF EXISTS = (ore_64_8_v1_term, ore_64_8_v1_term);

CREATE OPERATOR = (
  PROCEDURE="ore_64_8_v1_term_eq",
  LEFTARG=ore_64_8_v1_term,
  RIGHTARG=ore_64_8_v1_term,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);


DROP OPERATOR IF EXISTS <> (ore_64_8_v1_term, ore_64_8_v1_term);

CREATE OPERATOR <> (
  PROCEDURE="ore_64_8_v1_term_neq",
  LEFTARG=ore_64_8_v1_term,
  RIGHTARG=ore_64_8_v1_term,
  NEGATOR = =,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS > (ore_64_8_v1_term, ore_64_8_v1_term);

CREATE OPERATOR > (
  PROCEDURE="ore_64_8_v1_term_gt",
  LEFTARG=ore_64_8_v1_term,
  RIGHTARG=ore_64_8_v1_term,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);

DROP OPERATOR IF EXISTS < (ore_64_8_v1_term, ore_64_8_v1_term);

CREATE OPERATOR < (
  PROCEDURE="ore_64_8_v1_term_lt",
  LEFTARG=ore_64_8_v1_term,
  RIGHTARG=ore_64_8_v1_term,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);

DROP OPERATOR IF EXISTS <= (ore_64_8_v1_term, ore_64_8_v1_term);

CREATE OPERATOR <= (
  PROCEDURE="ore_64_8_v1_term_lte",
  LEFTARG=ore_64_8_v1_term,
  RIGHTARG=ore_64_8_v1_term,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

DROP OPERATOR IF EXISTS >= (ore_64_8_v1_term, ore_64_8_v1_term);

CREATE OPERATOR >= (
  PROCEDURE="ore_64_8_v1_term_gte",
  LEFTARG=ore_64_8_v1_term,
  RIGHTARG=ore_64_8_v1_term,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);

DROP OPERATOR FAMILY IF EXISTS ore_64_8_v1_term_btree_ops USING btree;

CREATE OPERATOR FAMILY ore_64_8_v1_term_btree_ops USING btree;


DROP OPERATOR CLASS IF EXISTS ore_64_8_v1_term_btree_ops USING btree;

CREATE OPERATOR CLASS ore_64_8_v1_term_btree_ops DEFAULT FOR TYPE ore_64_8_v1_term USING btree FAMILY ore_64_8_v1_term_btree_ops  AS
        OPERATOR 1 <,
        OPERATOR 2 <=,
        OPERATOR 3 =,
        OPERATOR 4 >=,
        OPERATOR 5 >,
        FUNCTION 1 compare_ore_64_8_v1_term(a ore_64_8_v1_term, b ore_64_8_v1_term);

-- Compare the "head" of each array and recurse if necessary
-- This function assumes an empty string is "less than" everything else
-- so if a is empty we return -1, if be is empty and a isn't, we return 1.
-- If both are empty we return 0. This cases probably isn't necessary as equality
-- doesn't always make sense but it's here for completeness.
-- If both are non-empty, we compare the first element. If they are equal
-- we need to consider the next block so we recurse, otherwise we return the comparison result.
DROP FUNCTION IF EXISTS compare_ore_array(a ore_64_8_v1_term[], b ore_64_8_v1_term[]);

CREATE FUNCTION compare_ore_array(a ore_64_8_v1_term[], b ore_64_8_v1_term[])
RETURNS integer AS $$
  DECLARE
    cmp_result integer;
  BEGIN
    IF (array_length(a, 1) = 0 OR a IS NULL) AND (array_length(b, 1) = 0 OR b IS NULL) THEN
      RETURN 0;
    END IF;
    IF array_length(a, 1) = 0 OR a IS NULL THEN
      RETURN -1;
    END IF;
    IF array_length(b, 1) = 0 OR a IS NULL THEN
      RETURN 1;
    END IF;

    cmp_result := compare_ore_64_8_v1_term(a[1], b[1]);
    IF cmp_result = 0 THEN
    -- Removes the first element in the array, and calls this fn again to compare the next element/s in the array.
      RETURN compare_ore_array(a[2:array_length(a,1)], b[2:array_length(b,1)]);
    END IF;

    RETURN cmp_result;
  END
$$ LANGUAGE plpgsql;

-- This function uses lexicographic comparison
DROP FUNCTION IF EXISTS compare_ore_64_8_v1(a ore_64_8_v1, b ore_64_8_v1);

CREATE FUNCTION compare_ore_64_8_v1(a ore_64_8_v1, b ore_64_8_v1)
RETURNS integer AS $$
  DECLARE
    cmp_result integer;
  BEGIN
    -- Recursively compare blocks bailing as soon as we can make a decision
    RETURN compare_ore_array(a.terms, b.terms);
  END
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS ore_64_8_v1_eq(a ore_64_8_v1, b ore_64_8_v1);

CREATE FUNCTION ore_64_8_v1_eq(a ore_64_8_v1, b ore_64_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1(a, b) = 0
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_neq(a ore_64_8_v1, b ore_64_8_v1);

CREATE FUNCTION ore_64_8_v1_neq(a ore_64_8_v1, b ore_64_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1(a, b) <> 0
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_lt(a ore_64_8_v1, b ore_64_8_v1);

CREATE FUNCTION ore_64_8_v1_lt(a ore_64_8_v1, b ore_64_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1(a, b) = -1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_lte(a ore_64_8_v1, b ore_64_8_v1);

CREATE FUNCTION ore_64_8_v1_lte(a ore_64_8_v1, b ore_64_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1(a, b) != 1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_gt(a ore_64_8_v1, b ore_64_8_v1);

CREATE FUNCTION ore_64_8_v1_gt(a ore_64_8_v1, b ore_64_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1(a, b) = 1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_64_8_v1_gte(a ore_64_8_v1, b ore_64_8_v1);

CREATE FUNCTION ore_64_8_v1_gte(a ore_64_8_v1, b ore_64_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_64_8_v1(a, b) != -1
$$ LANGUAGE SQL;


DROP OPERATOR IF EXISTS = (ore_64_8_v1, ore_64_8_v1);

CREATE OPERATOR = (
  PROCEDURE="ore_64_8_v1_eq",
  LEFTARG=ore_64_8_v1,
  RIGHTARG=ore_64_8_v1,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);


DROP OPERATOR IF EXISTS <> (ore_64_8_v1, ore_64_8_v1);

CREATE OPERATOR <> (
  PROCEDURE="ore_64_8_v1_neq",
  LEFTARG=ore_64_8_v1,
  RIGHTARG=ore_64_8_v1,
  NEGATOR = =,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS > (ore_64_8_v1, ore_64_8_v1);

CREATE OPERATOR > (
  PROCEDURE="ore_64_8_v1_gt",
  LEFTARG=ore_64_8_v1,
  RIGHTARG=ore_64_8_v1,
  COMMUTATOR = <,
  NEGATOR = <=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel
);


DROP OPERATOR IF EXISTS < (ore_64_8_v1, ore_64_8_v1);

CREATE OPERATOR < (
  PROCEDURE="ore_64_8_v1_lt",
  LEFTARG=ore_64_8_v1,
  RIGHTARG=ore_64_8_v1,
  COMMUTATOR = >,
  NEGATOR = >=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel
);


DROP OPERATOR IF EXISTS <= (ore_64_8_v1, ore_64_8_v1);

CREATE OPERATOR <= (
  PROCEDURE="ore_64_8_v1_lte",
  LEFTARG=ore_64_8_v1,
  RIGHTARG=ore_64_8_v1,
  COMMUTATOR = >=,
  NEGATOR = >,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);


DROP OPERATOR IF EXISTS >= (ore_64_8_v1, ore_64_8_v1);

CREATE OPERATOR >= (
  PROCEDURE="ore_64_8_v1_gte",
  LEFTARG=ore_64_8_v1,
  RIGHTARG=ore_64_8_v1,
  COMMUTATOR = <=,
  NEGATOR = <,
  RESTRICT = scalarlesel,
  JOIN = scalarlejoinsel
);


DROP OPERATOR FAMILY IF EXISTS ore_64_8_v1_btree_ops USING btree;

CREATE OPERATOR FAMILY ore_64_8_v1_btree_ops USING btree;


DROP OPERATOR CLASS IF EXISTS ore_64_8_v1_btree_ops USING btree;

CREATE OPERATOR CLASS ore_64_8_v1_btree_ops DEFAULT FOR TYPE ore_64_8_v1 USING btree FAMILY ore_64_8_v1_btree_ops  AS
        OPERATOR 1 <,
        OPERATOR 2 <=,
        OPERATOR 3 =,
        OPERATOR 4 >=,
        OPERATOR 5 >,
        FUNCTION 1 compare_ore_64_8_v1(a ore_64_8_v1, b ore_64_8_v1);

---
--- ORE CLLW types, functions, and operators
---

-- Represents a ciphertext encrypted with the CLLW ORE scheme for a fixed output size
-- Each output block is 8-bits
CREATE TYPE ore_cllw_8_v1 AS (
  bytes bytea
);

-- Represents a ciphertext encrypted with the CLLW ORE scheme for a variable output size
-- Each output block is 8-bits
CREATE TYPE ore_cllw_8_variable_v1 AS (
  bytes bytea
);

DROP FUNCTION IF EXISTS __bytea_ct_eq(a bytea, b bytea);

-- Constant time comparison of 2 bytea values
CREATE FUNCTION __bytea_ct_eq(a bytea, b bytea) RETURNS boolean AS $$
DECLARE
    result boolean;
    differing bytea;
BEGIN
    -- Check if the bytea values are the same length
    IF LENGTH(a) != LENGTH(b) THEN
        RETURN false;
    END IF;

    -- Compare each byte in the bytea values
    result := true;
    FOR i IN 1..LENGTH(a) LOOP
        IF SUBSTRING(a FROM i FOR 1) != SUBSTRING(b FROM i FOR 1) THEN
            result := result AND false;
        END IF;
    END LOOP;

    RETURN result;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS __compare_inner_ore_cllw_8_v1(a bytea, b bytea);

CREATE FUNCTION __compare_inner_ore_cllw_8_v1(a bytea, b bytea)
RETURNS int AS $$
DECLARE
    len_a INT;
    x BYTEA;
    y BYTEA;
    i INT;
    differing RECORD;
BEGIN
    len_a := LENGTH(a);

    -- Iterate over each byte and compare them
    FOR i IN 1..len_a LOOP
        x := SUBSTRING(a FROM i FOR 1);
        y := SUBSTRING(b FROM i FOR 1);

        -- Check if there's a difference
        IF x != y THEN
            differing := (x, y);
            EXIT;
        END IF;
    END LOOP;

    -- If a difference is found, compare the bytes as in Rust logic
    IF differing IS NOT NULL THEN
        IF (get_byte(y, 0) + 1) % 256 = get_byte(x, 0) THEN
            RETURN 1;
        ELSE
            RETURN -1;
        END IF;
    ELSE
        RETURN 0;
    END IF;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS compare_ore_cllw_8_v1(a ore_cllw_8_v1, b ore_cllw_8_v1);

CREATE FUNCTION compare_ore_cllw_8_v1(a ore_cllw_8_v1, b ore_cllw_8_v1)
RETURNS int AS $$
DECLARE
    len_a INT;
    len_b INT;
    x BYTEA;
    y BYTEA;
    i INT;
    differing RECORD;
BEGIN
    -- Check if the lengths of the two bytea arguments are the same
    len_a := LENGTH(a.bytes);
    len_b := LENGTH(b.bytes);

    IF len_a != len_b THEN
      RAISE EXCEPTION 'Numeric ORE comparison requires bytea values of the same length';
    END IF;

    RETURN __compare_inner_ore_cllw_8_v1(a.bytes, b.bytes);
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS compare_lex_ore_cllw_8_v1(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);

CREATE FUNCTION compare_lex_ore_cllw_8_v1(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1)
RETURNS int AS $$
DECLARE
    len_a INT;
    len_b INT;
    -- length of the common part of the two bytea values
    common_len INT;
    cmp_result INT;
BEGIN
    -- Get the lengths of both bytea inputs
    len_a := LENGTH(a.bytes);
    len_b := LENGTH(b.bytes);

    -- Handle empty cases
    IF len_a = 0 AND len_b = 0 THEN
        RETURN 0;
    ELSIF len_a = 0 THEN
        RETURN -1;
    ELSIF len_b = 0 THEN
        RETURN 1;
    END IF;

    -- Find the length of the shorter bytea
    IF len_a < len_b THEN
        common_len := len_a;
    ELSE
        common_len := len_b;
    END IF;

    -- Use the compare_bytea function to compare byte by byte
    cmp_result := __compare_inner_ore_cllw_8_v1(
      SUBSTRING(a.bytes FROM 1 FOR common_len),
      SUBSTRING(b.bytes FROM 1 FOR common_len)
    );

    -- If the comparison returns 'less' or 'greater', return that result
    IF cmp_result = -1 THEN
        RETURN -1;
    ELSIF cmp_result = 1 THEN
        RETURN 1;
    END IF;

    -- If the bytea comparison is 'equal', compare lengths
    IF len_a < len_b THEN
        RETURN -1;
    ELSIF len_a > len_b THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS ore_cllw_8_v1_eq(a ore_cllw_8_v1, b ore_cllw_8_v1);

CREATE FUNCTION ore_cllw_8_v1_eq(a ore_cllw_8_v1, b ore_cllw_8_v1)
RETURNS boolean AS $$
  SELECT __bytea_ct_eq(a.bytes, b.bytes)
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_cllw_8_v1_neq(a ore_cllw_8_v1, b ore_cllw_8_v1);

CREATE FUNCTION ore_cllw_8_v1_neq(a ore_cllw_8_v1, b ore_cllw_8_v1)
RETURNS boolean AS $$
  SELECT not __bytea_ct_eq(a.bytes, b.bytes)
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_cllw_8_v1_lt(a ore_cllw_8_v1, b ore_cllw_8_v1);

CREATE FUNCTION ore_cllw_8_v1_lt(a ore_cllw_8_v1, b ore_cllw_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_cllw_8_v1(a, b) = -1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_cllw_8_v1_lte(a ore_cllw_8_v1, b ore_cllw_8_v1);

CREATE FUNCTION ore_cllw_8_v1_lte(a ore_cllw_8_v1, b ore_cllw_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_cllw_8_v1(a, b) != 1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_cllw_8_v1_gt(a ore_cllw_8_v1, b ore_cllw_8_v1);

CREATE FUNCTION ore_cllw_8_v1_gt(a ore_cllw_8_v1, b ore_cllw_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_cllw_8_v1(a, b) = 1
$$ LANGUAGE SQL;


DROP FUNCTION IF EXISTS ore_cllw_8_v1_gte(a ore_cllw_8_v1, b ore_cllw_8_v1);

CREATE FUNCTION ore_cllw_8_v1_gte(a ore_cllw_8_v1, b ore_cllw_8_v1)
RETURNS boolean AS $$
  SELECT compare_ore_cllw_8_v1(a, b) != -1
$$ LANGUAGE SQL;


DROP OPERATOR IF EXISTS = (ore_cllw_8_v1, ore_cllw_8_v1);

CREATE OPERATOR = (
  PROCEDURE="ore_cllw_8_v1_eq",
  LEFTARG=ore_cllw_8_v1,
  RIGHTARG=ore_cllw_8_v1,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);


DROP OPERATOR IF EXISTS <> (ore_cllw_8_v1, ore_cllw_8_v1);

CREATE OPERATOR <> (
  PROCEDURE="ore_cllw_8_v1_neq",
  LEFTARG=ore_cllw_8_v1,
  RIGHTARG=ore_cllw_8_v1,
  NEGATOR = =,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);


DROP OPERATOR IF EXISTS > (ore_cllw_8_v1, ore_cllw_8_v1);

CREATE OPERATOR > (
  PROCEDURE="ore_cllw_8_v1_gt",
  LEFTARG=ore_cllw_8_v1,
  RIGHTARG=ore_cllw_8_v1,
  NEGATOR = <=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel,
  HASHES,
  MERGES
);


DROP OPERATOR IF EXISTS < (ore_cllw_8_v1, ore_cllw_8_v1);

CREATE OPERATOR < (
  PROCEDURE="ore_cllw_8_v1_lt",
  LEFTARG=ore_cllw_8_v1,
  RIGHTARG=ore_cllw_8_v1,
  NEGATOR = >=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel,
  HASHES,
  MERGES
);


DROP OPERATOR IF EXISTS >= (ore_cllw_8_v1, ore_cllw_8_v1);

CREATE OPERATOR >= (
  PROCEDURE="ore_cllw_8_v1_gte",
  LEFTARG=ore_cllw_8_v1,
  RIGHTARG=ore_cllw_8_v1,
  NEGATOR = <,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel,
  HASHES,
  MERGES
);


DROP OPERATOR IF EXISTS <= (ore_cllw_8_v1, ore_cllw_8_v1);

CREATE OPERATOR <= (
  PROCEDURE="ore_cllw_8_v1_lte",
  LEFTARG=ore_cllw_8_v1,
  RIGHTARG=ore_cllw_8_v1,
  NEGATOR = >,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel,
  HASHES,
  MERGES
);

-- Lexical comparison operators

DROP FUNCTION IF EXISTS ore_cllw_8_variable_v1_eq(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);

CREATE OR REPLACE FUNCTION ore_cllw_8_variable_v1_eq(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1) RETURNS boolean AS $$
  SELECT __bytea_ct_eq(a.bytes, b.bytes)
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS ore_cllw_8_variable_v1_neq(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);

CREATE OR REPLACE FUNCTION ore_cllw_8_variable_v1_neq(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1) RETURNS boolean AS $$
  SELECT not __bytea_ct_eq(a.bytes, b.bytes)
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS ore_cllw_8_v1_lt_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);

CREATE OR REPLACE FUNCTION ore_cllw_8_v1_lt_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1) RETURNS boolean AS $$
  SELECT compare_lex_ore_cllw_8_v1(a, b) = -1
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS ore_cllw_8_v1_lte_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);

CREATE OR REPLACE FUNCTION ore_cllw_8_v1_lte_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1) RETURNS boolean AS $$
  SELECT compare_lex_ore_cllw_8_v1(a, b) != 1
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS ore_cllw_8_v1_gt_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);

CREATE OR REPLACE FUNCTION ore_cllw_8_v1_gt_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1) RETURNS boolean AS $$
  SELECT compare_lex_ore_cllw_8_v1(a, b) = 1
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS ore_cllw_8_v1_gte_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);

CREATE OR REPLACE FUNCTION ore_cllw_8_v1_gte_lex(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1) RETURNS boolean AS $$
  SELECT compare_lex_ore_cllw_8_v1(a, b) != -1
$$ LANGUAGE SQL;

DROP OPERATOR IF EXISTS = (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);

CREATE OPERATOR = (
  PROCEDURE="ore_cllw_8_variable_v1_eq",
  LEFTARG=ore_cllw_8_variable_v1,
  RIGHTARG=ore_cllw_8_variable_v1,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS <> (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);

CREATE OPERATOR <> (
  PROCEDURE="ore_cllw_8_variable_v1_neq",
  LEFTARG=ore_cllw_8_variable_v1,
  RIGHTARG=ore_cllw_8_variable_v1,
  NEGATOR = =,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS > (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);

CREATE OPERATOR > (
  PROCEDURE="ore_cllw_8_v1_gt_lex",
  LEFTARG=ore_cllw_8_variable_v1,
  RIGHTARG=ore_cllw_8_variable_v1,
  NEGATOR = <=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS < (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);

CREATE OPERATOR < (
  PROCEDURE="ore_cllw_8_v1_lt_lex",
  LEFTARG=ore_cllw_8_variable_v1,
  RIGHTARG=ore_cllw_8_variable_v1,
  NEGATOR = >=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS >= (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);

CREATE OPERATOR >= (
  PROCEDURE="ore_cllw_8_v1_gte_lex",
  LEFTARG=ore_cllw_8_variable_v1,
  RIGHTARG=ore_cllw_8_variable_v1,
  NEGATOR = <,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS <= (ore_cllw_8_variable_v1, ore_cllw_8_variable_v1);

CREATE OPERATOR <= (
  PROCEDURE="ore_cllw_8_v1_lte_lex",
  LEFTARG=ore_cllw_8_variable_v1,
  RIGHTARG=ore_cllw_8_variable_v1,
  NEGATOR = >,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel,
  HASHES,
  MERGES
);


DROP OPERATOR FAMILY IF EXISTS ore_cllw_8_v1_btree_ops USING btree;

CREATE OPERATOR FAMILY ore_cllw_8_v1_btree_ops USING btree;

DROP OPERATOR CLASS IF EXISTS ore_cllw_8_v1_btree_ops USING btree;

CREATE OPERATOR CLASS ore_cllw_8_v1_btree_ops DEFAULT FOR TYPE ore_cllw_8_v1 USING btree FAMILY ore_cllw_8_v1_btree_ops  AS
        OPERATOR 1 <,
        OPERATOR 2 <=,
        OPERATOR 3 =,
        OPERATOR 4 >=,
        OPERATOR 5 >,
        FUNCTION 1 compare_ore_cllw_8_v1(a ore_cllw_8_v1, b ore_cllw_8_v1);

-- Lexical comparison operator class

DROP OPERATOR FAMILY IF EXISTS ore_cllw_8_v1_variable_btree_ops USING btree;

CREATE OPERATOR FAMILY ore_cllw_8_v1_variable_btree_ops USING btree;

DROP OPERATOR CLASS IF EXISTS ore_cllw_8_v1_variable_btree_ops USING btree;

CREATE OPERATOR CLASS ore_cllw_8_v1_variable_btree_ops DEFAULT FOR TYPE ore_cllw_8_variable_v1 USING btree FAMILY ore_cllw_8_v1_variable_btree_ops  AS
        OPERATOR 1 <,
        OPERATOR 2 <=,
        OPERATOR 3 =,
        OPERATOR 4 >=,
        OPERATOR 5 >,
        FUNCTION 1 compare_lex_ore_cllw_8_v1(a ore_cllw_8_variable_v1, b ore_cllw_8_variable_v1);

---
--- SteVec types, functions, and operators
---

CREATE TYPE cs_ste_vec_encrypted_term_v1 AS (
  bytes bytea
);

DROP FUNCTION IF EXISTS compare_ste_vec_encrypted_term_v1(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);

CREATE FUNCTION compare_ste_vec_encrypted_term_v1(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1)
RETURNS INT AS $$
DECLARE
  header_a INT;
  header_b INT;
  body_a BYTEA;
  body_b BYTEA;
BEGIN
  -- `get_byte` is 0-indexed
  header_a := get_byte(a.bytes, 0);
  header_b := get_byte(b.bytes, 0);

  IF header_a != header_b THEN
    RAISE EXCEPTION 'compare_ste_vec_encrypted_term_v1: expected equal header bytes';
  END IF;

  -- `substr` is 1-indexed (yes, `subtr` starts at 1 and `get_byte` starts at 0).
  body_a := substr(a.bytes, 2);
  body_b := substr(b.bytes, 2);

  CASE header_a
    WHEN 0 THEN
      RAISE EXCEPTION 'compare_ste_vec_encrypted_term_v1: can not compare MAC terms';
    WHEN 1 THEN
      RETURN compare_ore_cllw_8_v1(ROW(body_a)::ore_cllw_8_v1, ROW(body_b)::ore_cllw_8_v1);
    WHEN 2 THEN
      RETURN compare_lex_ore_cllw_8_v1(ROW(body_a)::ore_cllw_8_variable_v1, ROW(body_b)::ore_cllw_8_variable_v1);
    ELSE
      RAISE EXCEPTION 'compare_ste_vec_encrypted_term_v1: invalid header for cs_ste_vec_encrypted_term_v1: header "%", body "%', header_a, body_a;
  END CASE;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_eq(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);

CREATE FUNCTION cs_ste_vec_encrypted_term_eq(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1) RETURNS boolean AS $$
  SELECT __bytea_ct_eq(a.bytes, b.bytes)
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_neq(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);

CREATE FUNCTION cs_ste_vec_encrypted_term_neq(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1) RETURNS boolean AS $$
  SELECT not __bytea_ct_eq(a.bytes, b.bytes)
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_lt(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);

CREATE FUNCTION cs_ste_vec_encrypted_term_lt(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1) RETURNS boolean AS $$
  SELECT compare_ste_vec_encrypted_term_v1(a, b) = -1
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_lte(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);

CREATE FUNCTION cs_ste_vec_encrypted_term_lte(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1) RETURNS boolean AS $$
  SELECT compare_ste_vec_encrypted_term_v1(a, b) != 1
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_gt(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);

CREATE FUNCTION cs_ste_vec_encrypted_term_gt(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1) RETURNS boolean AS $$
  SELECT compare_ste_vec_encrypted_term_v1(a, b) = 1
$$ LANGUAGE SQL;

DROP FUNCTION IF EXISTS cs_ste_vec_encrypted_term_gte(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);

CREATE FUNCTION cs_ste_vec_encrypted_term_gte(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1) RETURNS boolean AS $$
  SELECT compare_ste_vec_encrypted_term_v1(a, b) != -1
$$ LANGUAGE SQL;

DROP OPERATOR IF EXISTS = (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);

CREATE OPERATOR = (
  PROCEDURE="cs_ste_vec_encrypted_term_eq",
  LEFTARG=cs_ste_vec_encrypted_term_v1,
  RIGHTARG=cs_ste_vec_encrypted_term_v1,
  NEGATOR = <>,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS <> (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);

CREATE OPERATOR <> (
  PROCEDURE="cs_ste_vec_encrypted_term_neq",
  LEFTARG=cs_ste_vec_encrypted_term_v1,
  RIGHTARG=cs_ste_vec_encrypted_term_v1,
  NEGATOR = =,
  RESTRICT = eqsel,
  JOIN = eqjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS > (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);

CREATE OPERATOR > (
  PROCEDURE="cs_ste_vec_encrypted_term_gt",
  LEFTARG=cs_ste_vec_encrypted_term_v1,
  RIGHTARG=cs_ste_vec_encrypted_term_v1,
  NEGATOR = <=,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS < (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);

CREATE OPERATOR < (
  PROCEDURE="cs_ste_vec_encrypted_term_lt",
  LEFTARG=cs_ste_vec_encrypted_term_v1,
  RIGHTARG=cs_ste_vec_encrypted_term_v1,
  NEGATOR = >=,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS >= (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);

CREATE OPERATOR >= (
  PROCEDURE="cs_ste_vec_encrypted_term_gte",
  LEFTARG=cs_ste_vec_encrypted_term_v1,
  RIGHTARG=cs_ste_vec_encrypted_term_v1,
  NEGATOR = <,
  RESTRICT = scalarltsel,
  JOIN = scalarltjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR IF EXISTS <= (cs_ste_vec_encrypted_term_v1, cs_ste_vec_encrypted_term_v1);

CREATE OPERATOR <= (
  PROCEDURE="cs_ste_vec_encrypted_term_lte",
  LEFTARG=cs_ste_vec_encrypted_term_v1,
  RIGHTARG=cs_ste_vec_encrypted_term_v1,
  NEGATOR = >,
  RESTRICT = scalargtsel,
  JOIN = scalargtjoinsel,
  HASHES,
  MERGES
);

DROP OPERATOR FAMILY IF EXISTS cs_ste_vec_encrypted_term_v1_btree_ops USING btree;

CREATE OPERATOR FAMILY cs_ste_vec_encrypted_term_v1_btree_ops USING btree;

DROP OPERATOR CLASS IF EXISTS cs_ste_vec_encrypted_term_v1_btree_ops USING btree;

CREATE OPERATOR CLASS cs_ste_vec_encrypted_term_v1_btree_ops DEFAULT FOR TYPE cs_ste_vec_encrypted_term_v1 USING btree FAMILY cs_ste_vec_encrypted_term_v1_btree_ops  AS
        OPERATOR 1 <,
        OPERATOR 2 <=,
        OPERATOR 3 =,
        OPERATOR 4 >=,
        OPERATOR 5 >,
        FUNCTION 1 compare_ste_vec_encrypted_term_v1(a cs_ste_vec_encrypted_term_v1, b cs_ste_vec_encrypted_term_v1);

CREATE TYPE cs_ste_vec_v1_entry AS (
    tokenized_selector text,
    term cs_ste_vec_encrypted_term_v1,
    ciphertext text
);

CREATE TYPE cs_ste_vec_index_v1 AS (
    entries cs_ste_vec_v1_entry[]
);

DROP FUNCTION IF EXISTS cs_ste_vec_value_v1(col jsonb, selector jsonb);

-- col: already encrypted payload
-- selector: already encrypted payload
-- returns a value in the format of our custom jsonb schema that will be decrypted
CREATE FUNCTION cs_ste_vec_value_v1(col jsonb, selector jsonb)
RETURNS jsonb AS $$
DECLARE
  ste_vec_index cs_ste_vec_index_v1;
  target_selector text;
  found text;
  ignored text;
  i integer;
BEGIN
  ste_vec_index := cs_ste_vec_v1(col);

  IF ste_vec_index IS NULL THEN
    RETURN NULL;
  END IF;

  target_selector := selector->>'svs';

  FOR i IN 1..array_length(ste_vec_index.entries, 1) LOOP
      -- The ELSE part is to help ensure constant time operation.
      -- The result is thrown away.
      IF ste_vec_index.entries[i].tokenized_selector = target_selector THEN
        found := ste_vec_index.entries[i].ciphertext;
      ELSE
        ignored := ste_vec_index.entries[i].ciphertext;
      END IF;
  END LOOP;

  IF found IS NOT NULL THEN
    RETURN jsonb_build_object(
      'k', 'ct',
      'c', found,
      'o', NULL,
      'm', NULL,
      'u', NULL,
      'i', col->'i',
      'v', 1
    );
  ELSE
    RETURN NULL;
  END IF;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS cs_ste_vec_terms_v1(col jsonb, selector jsonb);

CREATE FUNCTION cs_ste_vec_terms_v1(col jsonb, selector jsonb)
RETURNS cs_ste_vec_encrypted_term_v1[] AS $$
DECLARE
  ste_vec_index cs_ste_vec_index_v1;
  target_selector text;
  found cs_ste_vec_encrypted_term_v1;
  ignored cs_ste_vec_encrypted_term_v1;
  i integer;
  term_array cs_ste_vec_encrypted_term_v1[];
BEGIN
  ste_vec_index := cs_ste_vec_v1(col);

  IF ste_vec_index IS NULL THEN
    RETURN NULL;
  END IF;

  target_selector := selector->>'svs';

  FOR i IN 1..array_length(ste_vec_index.entries, 1) LOOP
      -- The ELSE part is to help ensure constant time operation.
      -- The result is thrown away.
      IF ste_vec_index.entries[i].tokenized_selector = target_selector THEN
        found := ste_vec_index.entries[i].term;
        term_array := array_append(term_array, found);
      ELSE
        ignored := ste_vec_index.entries[i].term;
      END IF;
  END LOOP;

  RETURN term_array;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS cs_ste_vec_term_v1(col jsonb, selector jsonb);

-- col: already encrypted payload
-- selector: already encrypted payload
-- returns a value that can be used for comparison operations
CREATE OR REPLACE FUNCTION cs_ste_vec_term_v1(col jsonb, selector jsonb)
RETURNS cs_ste_vec_encrypted_term_v1 AS $$
DECLARE
  ste_vec_index cs_ste_vec_index_v1;
  target_selector text;
  found cs_ste_vec_encrypted_term_v1;
  ignored cs_ste_vec_encrypted_term_v1;
  i integer;
BEGIN
  ste_vec_index := cs_ste_vec_v1(col);

  IF ste_vec_index IS NULL THEN
    RETURN NULL;
  END IF;

  target_selector := selector->>'svs';

  FOR i IN 1..array_length(ste_vec_index.entries, 1) LOOP
      -- The ELSE part is to help ensure constant time operation.
      -- The result is thrown away.
      IF ste_vec_index.entries[i].tokenized_selector = target_selector THEN
        found := ste_vec_index.entries[i].term;
      ELSE
        ignored := ste_vec_index.entries[i].term;
      END IF;
  END LOOP;

  RETURN found;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS cs_ste_vec_term_v1(col jsonb);

CREATE FUNCTION cs_ste_vec_term_v1(col jsonb)
RETURNS cs_ste_vec_encrypted_term_v1 AS $$
DECLARE
  ste_vec_index cs_ste_vec_index_v1;
BEGIN
  ste_vec_index := cs_ste_vec_v1(col);

  IF ste_vec_index IS NULL THEN
    RETURN NULL;
  END IF;

  RETURN ste_vec_index.entries[1].term;
END;
$$ LANGUAGE plpgsql;

-- Determine if a == b (ignoring ciphertext values)
DROP FUNCTION IF EXISTS cs_ste_vec_v1_entry_eq(a cs_ste_vec_v1_entry, b cs_ste_vec_v1_entry);

CREATE FUNCTION cs_ste_vec_v1_entry_eq(a cs_ste_vec_v1_entry, b cs_ste_vec_v1_entry)
RETURNS boolean AS $$
DECLARE
    sel_cmp int;
    term_cmp int;
BEGIN
    -- Constant time comparison
    IF a.tokenized_selector = b.tokenized_selector THEN
        sel_cmp := 1;
    ELSE
        sel_cmp := 0;
    END IF;
    IF a.term = b.term THEN
        term_cmp := 1;
    ELSE
        term_cmp := 0;
    END IF;
    RETURN (sel_cmp # term_cmp) = 0;
END;
$$ LANGUAGE plpgsql;

-- Determine if a contains b (ignoring ciphertext values)
DROP FUNCTION IF EXISTS ste_vec_v1_logical_contains(a cs_ste_vec_index_v1, b cs_ste_vec_index_v1);

CREATE FUNCTION ste_vec_v1_logical_contains(a cs_ste_vec_index_v1, b cs_ste_vec_index_v1)
RETURNS boolean AS $$
DECLARE
    result boolean;
    intermediate_result boolean;
BEGIN
    result := true;
    IF array_length(b.entries, 1) IS NULL THEN
        RETURN result;
    END IF;
    FOR i IN 1..array_length(b.entries, 1) LOOP
        intermediate_result := cs_ste_vec_v1_entry_array_contains_entry(a.entries, b.entries[i]);
        result := result AND intermediate_result;
    END LOOP;
    RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Determine if a contains b (ignoring ciphertext values)
DROP FUNCTION IF EXISTS cs_ste_vec_v1_entry_array_contains_entry(a cs_ste_vec_v1_entry[], b cs_ste_vec_v1_entry);

CREATE FUNCTION cs_ste_vec_v1_entry_array_contains_entry(a cs_ste_vec_v1_entry[], b cs_ste_vec_v1_entry)
RETURNS boolean AS $$
DECLARE
    result boolean;
    intermediate_result boolean;
BEGIN
    IF array_length(a, 1) IS NULL THEN
        RETURN false;
    END IF;

    result := false;
    FOR i IN 1..array_length(a, 1) LOOP
        intermediate_result := a[i].tokenized_selector = b.tokenized_selector AND a[i].term = b.term;
        result := result OR intermediate_result;
    END LOOP;
    RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Determine if a is contained by b (ignoring ciphertext values)
DROP FUNCTION IF EXISTS ste_vec_v1_logical_is_contained(a cs_ste_vec_index_v1, b cs_ste_vec_index_v1);

CREATE FUNCTION ste_vec_v1_logical_is_contained(a cs_ste_vec_index_v1, b cs_ste_vec_index_v1)
RETURNS boolean AS $$
BEGIN
    RETURN ste_vec_v1_logical_contains(b, a);
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS jsonb_to_cs_ste_vec_index_v1(input jsonb);

CREATE FUNCTION jsonb_to_cs_ste_vec_index_v1(input jsonb)
RETURNS cs_ste_vec_index_v1 AS $$
DECLARE
    vec_entry cs_ste_vec_v1_entry;
    entry_array cs_ste_vec_v1_entry[];
    entry_json jsonb;
    entry_json_array jsonb[];
    entry_array_length int;
    i int;
BEGIN
    FOR entry_json IN SELECT * FROM jsonb_array_elements(input)
    LOOP
        vec_entry := ROW(
           entry_json->>0,
           ROW(decode(entry_json->>1, 'hex'))::cs_ste_vec_encrypted_term_v1,
           entry_json->>2
        )::cs_ste_vec_v1_entry;
        entry_array := array_append(entry_array, vec_entry);
    END LOOP;

    RETURN ROW(entry_array)::cs_ste_vec_index_v1;
END;
$$ LANGUAGE plpgsql;

DROP CAST IF EXISTS (jsonb AS cs_ste_vec_index_v1);

CREATE CAST (jsonb AS cs_ste_vec_index_v1)
	WITH FUNCTION jsonb_to_cs_ste_vec_index_v1(jsonb) AS IMPLICIT;

DROP OPERATOR IF EXISTS @> (cs_ste_vec_index_v1, cs_ste_vec_index_v1);

CREATE OPERATOR @> (
  PROCEDURE="ste_vec_v1_logical_contains",
  LEFTARG=cs_ste_vec_index_v1,
  RIGHTARG=cs_ste_vec_index_v1,
  COMMUTATOR = <@
);

DROP OPERATOR IF EXISTS <@ (cs_ste_vec_index_v1, cs_ste_vec_index_v1);

CREATE OPERATOR <@ (
  PROCEDURE="ste_vec_v1_logical_is_contained",
  LEFTARG=cs_ste_vec_index_v1,
  RIGHTARG=cs_ste_vec_index_v1,
  COMMUTATOR = @>
);
DROP DOMAIN IF EXISTS cs_match_index_v1;
CREATE DOMAIN cs_match_index_v1 AS smallint[];

DROP DOMAIN IF EXISTS cs_unique_index_v1;
CREATE DOMAIN cs_unique_index_v1 AS text;


-- cs_encrypted_v1 is a column type and cannot be dropped if in use
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'cs_encrypted_v1') THEN
      CREATE DOMAIN cs_encrypted_v1 AS JSONB;
	  END IF;
END
$$;


-- Should include a kind field
DROP FUNCTION IF EXISTS _cs_encrypted_check_k(jsonb);
CREATE FUNCTION _cs_encrypted_check_k(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF (val->>'k' = ANY('{ct, sv}')) THEN
      RETURN true;
    END IF;
    RAISE 'Invalid kind (%) in Encrypted column. Kind should be one of {ct, sv}', val;
  END;
$$ LANGUAGE plpgsql;


--
-- CT payload should include a c field
--
DROP FUNCTION IF EXISTS _cs_encrypted_check_k_ct(jsonb);
CREATE FUNCTION _cs_encrypted_check_k_ct(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF (val->>'k' = 'ct') THEN
      IF (val ? 'c') THEN
        RETURN true;
      END IF;
      RAISE 'Encrypted column kind (k) of "ct" missing data field (c):  %', val;
    END IF;
    RETURN true;
  END;
$$ LANGUAGE plpgsql;


--
-- SV payload should include an sv field
--
DROP FUNCTION IF EXISTS _cs_encrypted_check_k_sv(jsonb);
CREATE FUNCTION _cs_encrypted_check_k_sv(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF (val->>'k' = 'sv') THEN
      IF (val ? 'sv') THEN
        RETURN true;
      END IF;
      RAISE 'Encrypted column kind (k) of "sv" missing data field (sv):  %', val;
    END IF;
    RETURN true;
  END;
$$ LANGUAGE plpgsql;


-- Plaintext field should never be present in an encrypted column
DROP FUNCTION IF EXISTS _cs_encrypted_check_p(jsonb);
CREATE FUNCTION _cs_encrypted_check_p(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF NOT val ? 'p' THEN
      RETURN true;
    END IF;
    RAISE 'Encrypted column includes plaintext (p) field: %', val;
  END;
$$ LANGUAGE plpgsql;

-- Should include an ident field
DROP FUNCTION IF EXISTS _cs_encrypted_check_i(jsonb);
CREATE FUNCTION _cs_encrypted_check_i(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF val ? 'i' THEN
      RETURN true;
    END IF;
    RAISE 'Encrypted column missing ident (i) field: %', val;
  END;
$$ LANGUAGE plpgsql;

-- Query field should never be present in an encrypted column
DROP FUNCTION IF EXISTS _cs_encrypted_check_q(jsonb);
CREATE FUNCTION _cs_encrypted_check_q(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF val ? 'q' THEN
      RAISE 'Encrypted column includes query (q) field: %', val;
    END IF;
    RETURN true;
  END;
$$ LANGUAGE plpgsql;

-- Ident field should include table and column
DROP FUNCTION IF EXISTS _cs_encrypted_check_i_ct(jsonb);
CREATE FUNCTION _cs_encrypted_check_i_ct(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF (val->'i' ?& array['t', 'c']) THEN
      RETURN true;
    END IF;
    RAISE 'Encrypted column ident (i) missing table (t) or column (c) fields: %', val;
  END;
$$ LANGUAGE plpgsql;

-- Should include a version field
DROP FUNCTION IF EXISTS _cs_encrypted_check_v(jsonb);
CREATE FUNCTION _cs_encrypted_check_v(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF (val ? 'v') THEN
      RETURN true;
    END IF;
    RAISE 'Encrypted column missing version (v) field: %', val;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_check_encrypted_v1(val jsonb);

CREATE FUNCTION cs_check_encrypted_v1(val jsonb)
  RETURNS BOOLEAN
LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
    RETURN (
      _cs_encrypted_check_v(val) AND
      _cs_encrypted_check_i(val) AND
      _cs_encrypted_check_k(val) AND
      _cs_encrypted_check_k_ct(val) AND
      _cs_encrypted_check_k_sv(val) AND
      _cs_encrypted_check_q(val) AND
      _cs_encrypted_check_p(val)
    );
END;


ALTER DOMAIN cs_encrypted_v1 DROP CONSTRAINT IF EXISTS cs_encrypted_v1_check;

ALTER DOMAIN cs_encrypted_v1
  ADD CONSTRAINT cs_encrypted_v1_check CHECK (
   cs_check_encrypted_v1(VALUE)
);


DROP FUNCTION IF EXISTS cs_ciphertext_v1_v0_0(val jsonb);

CREATE FUNCTION cs_ciphertext_v1_v0_0(val jsonb)
  RETURNS text
  IMMUTABLE STRICT PARALLEL SAFE
AS $$
	BEGIN
    IF val ? 'c' THEN
      RETURN val->>'c';
    END IF;
    RAISE 'Expected a ciphertext (c) value in json: %', val;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_ciphertext_v1_v0(val jsonb);

CREATE FUNCTION cs_ciphertext_v1_v0(val jsonb)
    RETURNS text
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_ciphertext_v1_v0_0(val);
END;


DROP FUNCTION IF EXISTS cs_ciphertext_v1(val jsonb);

CREATE FUNCTION cs_ciphertext_v1(val jsonb)
    RETURNS text
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_ciphertext_v1_v0_0(val);
END;


-- extracts match index from an emcrypted column
DROP FUNCTION IF EXISTS cs_match_v1_v0_0(val jsonb);

CREATE FUNCTION cs_match_v1_v0_0(val jsonb)
  RETURNS cs_match_index_v1
  IMMUTABLE STRICT PARALLEL SAFE
AS $$
	BEGIN
    IF val ? 'm' THEN
      RETURN ARRAY(SELECT jsonb_array_elements(val->'m'))::cs_match_index_v1;
    END IF;
    RAISE 'Expected a match index (m) value in json: %', val;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_match_v1_v0(val jsonb);

CREATE FUNCTION cs_match_v1_v0(val jsonb)
  RETURNS cs_match_index_v1
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_match_v1_v0_0(val);
END;


DROP FUNCTION IF EXISTS cs_match_v1(val jsonb);

CREATE FUNCTION cs_match_v1(val jsonb)
  RETURNS cs_match_index_v1
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_match_v1_v0_0(val);
END;


-- extracts unique index from an encrypted column
DROP FUNCTION IF EXISTS  cs_unique_v1_v0_0(val jsonb);

CREATE FUNCTION cs_unique_v1_v0_0(val jsonb)
  RETURNS cs_unique_index_v1
  IMMUTABLE STRICT PARALLEL SAFE
AS $$
	BEGIN
    IF val ? 'u' THEN
      RETURN val->>'u';
    END IF;
    RAISE 'Expected a unique index (u) value in json: %', val;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS  cs_unique_v1_v0(val jsonb);

CREATE FUNCTION cs_unique_v1_v0(val jsonb)
  RETURNS cs_unique_index_v1
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_unique_v1_v0_0(val);
END;


DROP FUNCTION IF EXISTS  cs_unique_v1(val jsonb);

CREATE FUNCTION cs_unique_v1(val jsonb)
  RETURNS cs_unique_index_v1
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_unique_v1_v0_0(val);
END;

-- extracts json ste_vec index from an encrypted column
DROP FUNCTION IF EXISTS cs_ste_vec_v1_v0_0(val jsonb);

CREATE FUNCTION cs_ste_vec_v1_v0_0(val jsonb)
  RETURNS cs_ste_vec_index_v1
  IMMUTABLE STRICT PARALLEL SAFE
AS $$
	BEGIN
    IF val ? 'sv' THEN
      RETURN (val->'sv')::cs_ste_vec_index_v1;
    END IF;
    RAISE 'Expected a structured vector index (sv) value in json: %', val;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_ste_vec_v1_v0(val jsonb);

CREATE FUNCTION cs_ste_vec_v1_v0(val jsonb)
  RETURNS cs_ste_vec_index_v1
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_ste_vec_v1_v0_0(val);
END;


DROP FUNCTION IF EXISTS cs_ste_vec_v1(val jsonb);

CREATE FUNCTION cs_ste_vec_v1(val jsonb)
  RETURNS cs_ste_vec_index_v1
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_ste_vec_v1_v0_0(val);
END;


-- casts text to ore_64_8_v1_term (bytea)
DROP FUNCTION IF EXISTS _cs_text_to_ore_64_8_v1_term_v1_0(t text);

CREATE FUNCTION _cs_text_to_ore_64_8_v1_term_v1_0(t text)
  RETURNS ore_64_8_v1_term
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN t::bytea;
END;

-- cast to cleanup ore_64_8_v1 extraction
DROP CAST IF EXISTS (text AS ore_64_8_v1_term);

CREATE CAST (text AS ore_64_8_v1_term)
	WITH FUNCTION _cs_text_to_ore_64_8_v1_term_v1_0(text) AS IMPLICIT;


-- extracts ore index from an encrypted column
DROP FUNCTION IF EXISTS cs_ore_64_8_v1_v0_0(val jsonb);

CREATE FUNCTION cs_ore_64_8_v1_v0_0(val jsonb)
  RETURNS ore_64_8_v1
  IMMUTABLE STRICT PARALLEL SAFE
AS $$
	BEGIN
    IF val ? 'o' THEN
      RETURN (val->>'o')::ore_64_8_v1;
    END IF;
    RAISE 'Expected an ore index (o) value in json: %', val;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_ore_64_8_v1_v0(val jsonb);

CREATE FUNCTION cs_ore_64_8_v1_v0(val jsonb)
  RETURNS ore_64_8_v1
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_ore_64_8_v1_v0_0(val);
END;

DROP FUNCTION IF EXISTS cs_ore_64_8_v1(val jsonb);

CREATE FUNCTION cs_ore_64_8_v1(val jsonb)
  RETURNS ore_64_8_v1
  LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	RETURN cs_ore_64_8_v1_v0_0(val);
END;

DROP FUNCTION IF EXISTS _cs_first_grouped_value(jsonb, jsonb);

CREATE FUNCTION _cs_first_grouped_value(jsonb, jsonb)
RETURNS jsonb AS $$
  SELECT COALESCE($1, $2);
$$ LANGUAGE sql IMMUTABLE;

DROP AGGREGATE IF EXISTS cs_grouped_value_v1(jsonb);

CREATE AGGREGATE cs_grouped_value_v1(jsonb) (
  SFUNC = _cs_first_grouped_value,
  STYPE = jsonb
);
--
-- Configuration Schema
--
--  Defines core config state and storage types
--  Creates the cs_configuration_v1 table with constraint and unique indexes
--
--


--
-- cs_configuration_data_v1 is a jsonb column that stores the actuak configuration
--
-- For some reason CREATE DFOMAIN and CREATE TYPE do not support IF NOT EXISTS
-- Types cannot be dropped if used by a table, and we never drop the configuration table
-- DOMAIN constraints are added separately and not tied to DOMAIN creation
--
DO $$
  BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'cs_configuration_data_v1') THEN
      CREATE DOMAIN cs_configuration_data_v1 AS JSONB;
    END IF;
  END
$$;

--
-- cs_configuration_state_v1 is an ENUM that defines the valid configuration states
--
DO $$
  BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'cs_configuration_state_v1') THEN
      CREATE TYPE cs_configuration_state_v1 AS ENUM ('active', 'inactive', 'encrypting', 'pending');
    END IF;
  END
$$;



--
-- Extracts index keys/names from configuration json
--
-- Used by the _cs_config_check_indexes as part of the  cs_configuration_data_v1_check constraint
--
DROP FUNCTION IF EXISTS _cs_extract_indexes(jsonb);
CREATE FUNCTION _cs_extract_indexes(val jsonb)
    RETURNS SETOF text
    LANGUAGE sql IMMUTABLE STRICT PARALLEL SAFE
BEGIN ATOMIC
	SELECT jsonb_object_keys(jsonb_path_query(val,'$.tables.*.*.indexes'));
END;

--
-- _cs_check_config_indexes returns true if the table configuration only includes valid index types
--
-- Used by the cs_configuration_data_v1_check constraint
--
DROP FUNCTION IF EXISTS _cs_config_check_indexes(jsonb);
CREATE FUNCTION _cs_config_check_indexes(val jsonb)
  RETURNS BOOLEAN
AS $$
	BEGIN
    IF (SELECT EXISTS (SELECT _cs_extract_indexes(val)))  THEN
      IF (SELECT bool_and(index = ANY('{match, ore, unique, ste_vec}')) FROM _cs_extract_indexes(val) AS index) THEN
        RETURN true;
      END IF;
      RAISE 'Configuration has an invalid index (%). Index should be one of {match, ore, unique, ste_vec}', val;
    END IF;
    RETURN true;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS _cs_config_check_cast(jsonb);

CREATE FUNCTION _cs_config_check_cast(val jsonb)
  RETURNS BOOLEAN
AS $$
	BEGIN
    IF EXISTS (SELECT jsonb_array_elements_text(jsonb_path_query_array(val, '$.tables.*.*.cast_as')) = ANY('{text, int, small_int, big_int, real, double, boolean, date, jsonb}')) THEN
      RETURN true;
    END IF;
    RAISE 'Configuration has an invalid cast_as (%). Cast should be one of {text, int, small_int, big_int, real, double, boolean, date, jsonb}', val;
  END;
$$ LANGUAGE plpgsql;

--
-- Should include a tables field
-- Tables should not be empty
DROP FUNCTION IF EXISTS _cs_config_check_tables(jsonb);
CREATE FUNCTION _cs_config_check_tables(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF (val ? 'tables') AND (val->'tables' <> '{}'::jsonb) THEN
      RETURN true;
    END IF;
    RAISE 'Configuration missing tables (tables) field: %', val;
  END;
$$ LANGUAGE plpgsql;

-- Should include a version field
DROP FUNCTION IF EXISTS _cs_config_check_v(jsonb);
CREATE FUNCTION _cs_config_check_v(val jsonb)
  RETURNS boolean
AS $$
	BEGIN
    IF (val ? 'v') THEN
      RETURN true;
    END IF;
    RAISE 'Configuration missing version (v) field: %', val;
  END;
$$ LANGUAGE plpgsql;


ALTER DOMAIN cs_configuration_data_v1 DROP CONSTRAINT IF EXISTS cs_configuration_data_v1_check;

ALTER DOMAIN cs_configuration_data_v1
  ADD CONSTRAINT cs_configuration_data_v1_check CHECK (
    _cs_config_check_v(VALUE) AND
    _cs_config_check_tables(VALUE) AND
    _cs_config_check_cast(VALUE) AND
    _cs_config_check_indexes(VALUE)
);


--
-- CREATE the cs_configuration_v1 TABLE
--
CREATE TABLE IF NOT EXISTS cs_configuration_v1
(
    id bigint GENERATED ALWAYS AS IDENTITY,
    state cs_configuration_state_v1 NOT NULL DEFAULT 'pending',
    data cs_configuration_data_v1,
    created_at timestamptz not null default current_timestamp,
    PRIMARY KEY(id)
);

--
-- Define partial indexes to ensure that there is only one active, pending and encrypting config at a time
--
CREATE UNIQUE INDEX IF NOT EXISTS cs_configuration_v1_index_active ON cs_configuration_v1 (state) WHERE state = 'active';
CREATE UNIQUE INDEX IF NOT EXISTS cs_configuration_v1_index_pending ON cs_configuration_v1 (state) WHERE state = 'pending';
CREATE UNIQUE INDEX IF NOT EXISTS cs_configuration_v1_index_encrypting ON cs_configuration_v1 (state) WHERE state = 'encrypting';
--
-- Configuration functions
--
--

DROP FUNCTION IF EXISTS  _cs_config_default(config jsonb);

CREATE FUNCTION _cs_config_default(config jsonb)
  RETURNS jsonb
  IMMUTABLE PARALLEL SAFE
AS $$
  BEGIN
    IF config IS NULL THEN
      SELECT jsonb_build_object('v', 1, 'tables', jsonb_build_object()) INTO config;
    END IF;
    RETURN config;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS _cs_config_add_table(table_name text, config jsonb);

CREATE FUNCTION _cs_config_add_table(table_name text, config jsonb)
  RETURNS jsonb
  -- IMMUTABLE PARALLEL SAFE
AS $$
  DECLARE
    tbl jsonb;
  BEGIN
    IF NOT config #> array['tables'] ? table_name THEN
      SELECT jsonb_insert(config, array['tables', table_name], jsonb_build_object()) INTO config;
    END IF;
    RETURN config;
  END;
$$ LANGUAGE plpgsql;


-- Add the column if it doesn't exist
DROP FUNCTION IF EXISTS _cs_config_add_column(table_name text, column_name text, config jsonb);

CREATE FUNCTION _cs_config_add_column(table_name text, column_name text, config jsonb)
  RETURNS jsonb
  IMMUTABLE PARALLEL SAFE
AS $$
  DECLARE
    col jsonb;
  BEGIN
    IF NOT config #> array['tables', table_name] ? column_name THEN
      SELECT jsonb_build_object('indexes', jsonb_build_object()) into col;
      SELECT jsonb_set(config, array['tables', table_name, column_name], col) INTO config;
    END IF;
    RETURN config;
  END;
$$ LANGUAGE plpgsql;


-- Set the cast
DROP FUNCTION IF EXISTS _cs_config_add_cast(table_name text, column_name text, cast_as text, config jsonb);

CREATE FUNCTION _cs_config_add_cast(table_name text, column_name text, cast_as text, config jsonb)
  RETURNS jsonb
  IMMUTABLE PARALLEL SAFE
AS $$
  BEGIN
    SELECT jsonb_set(config, array['tables', table_name, column_name, 'cast_as'], to_jsonb(cast_as)) INTO config;
    RETURN config;
  END;
$$ LANGUAGE plpgsql;


-- Add the column if it doesn't exist
DROP FUNCTION IF EXISTS _cs_config_add_index(table_name text, column_name text, index_name text, opts jsonb, config jsonb);

CREATE FUNCTION _cs_config_add_index(table_name text, column_name text, index_name text, opts jsonb, config jsonb)
  RETURNS jsonb
  IMMUTABLE PARALLEL SAFE
AS $$
  BEGIN
    SELECT jsonb_insert(config, array['tables', table_name, column_name, 'indexes', index_name], opts) INTO config;
    RETURN config;
  END;
$$ LANGUAGE plpgsql;


--
-- Default options for match index
--
DROP FUNCTION IF EXISTS _cs_config_match_default();

CREATE FUNCTION _cs_config_match_default()
  RETURNS jsonb
LANGUAGE sql STRICT PARALLEL SAFE
BEGIN ATOMIC
  SELECT jsonb_build_object(
            'k', 6,
            'm', 2048,
            'include_original', true,
            'tokenizer', json_build_object('kind', 'ngram', 'token_length', 3),
            'token_filters', json_build_array(json_build_object('kind', 'downcase')));
END;

--
--
--
DROP FUNCTION IF EXISTS cs_add_index_v1(table_name text, column_name text, index_name text, cast_as text, opts jsonb);

CREATE FUNCTION cs_add_index_v1(table_name text, column_name text, index_name text, cast_as text DEFAULT 'text', opts jsonb DEFAULT '{}')
  RETURNS jsonb
AS $$
  DECLARE
    o jsonb;
    _config jsonb;
  BEGIN

    -- set the active config
    SELECT data INTO _config FROM cs_configuration_v1 WHERE state = 'active' OR state = 'pending' ORDER BY state DESC;

    -- if index exists
    IF _config #> array['tables', table_name, column_name, 'indexes'] ?  index_name THEN
      RAISE EXCEPTION '% index exists for column: % %', index_name, table_name, column_name;
    END IF;

    IF NOT cast_as = ANY('{text, int, small_int, big_int, real, double, boolean, date, jsonb}') THEN
      RAISE EXCEPTION '% is not a valid cast type', cast_as;
    END IF;

    -- set default config
    SELECT _cs_config_default(_config) INTO _config;

    SELECT _cs_config_add_table(table_name, _config) INTO _config;

    SELECT _cs_config_add_column(table_name, column_name, _config) INTO _config;

    SELECT _cs_config_add_cast(table_name, column_name, cast_as, _config) INTO _config;

    -- set default options for index if opts empty
    IF index_name = 'match' AND opts = '{}' THEN
      SELECT _cs_config_match_default() INTO opts;
    END IF;

    SELECT _cs_config_add_index(table_name, column_name, index_name, opts, _config) INTO _config;

    --  create a new pending record if we don't have one
    INSERT INTO cs_configuration_v1 (state, data) VALUES ('pending', _config)
    ON CONFLICT (state)
      WHERE state = 'pending'
    DO UPDATE
      SET data = _config;

    -- exeunt
    RETURN _config;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_remove_index_v1(table_name text, column_name text, index_name text);

CREATE FUNCTION cs_remove_index_v1(table_name text, column_name text, index_name text)
  RETURNS jsonb
AS $$
  DECLARE
    _config jsonb;
  BEGIN

    -- set the active config
    SELECT data INTO _config FROM cs_configuration_v1 WHERE state = 'active' OR state = 'pending' ORDER BY state DESC;

    -- if no config
    IF _config IS NULL THEN
      RAISE EXCEPTION 'No active or pending configuration exists';
    END IF;

    -- if the table doesn't exist
    IF NOT _config #> array['tables'] ? table_name THEN
      RAISE EXCEPTION 'No configuration exists for table: %', table_name;
    END IF;

    -- if the index does not exist
    -- IF NOT _config->key ? index_name THEN
    IF NOT _config #> array['tables', table_name] ?  column_name THEN
      RAISE EXCEPTION 'No % index exists for column: % %', index_name, table_name, column_name;
    END IF;

    --  create a new pending record if we don't have one
    INSERT INTO cs_configuration_v1 (state, data) VALUES ('pending', _config)
    ON CONFLICT (state)
      WHERE state = 'pending'
    DO NOTHING;

    -- remove the index
    SELECT _config #- array['tables', table_name, column_name, 'indexes', index_name] INTO _config;

    -- if column is now empty, remove the column
    IF _config #> array['tables', table_name, column_name, 'indexes'] = '{}' THEN
      SELECT _config #- array['tables', table_name, column_name] INTO _config;
    END IF;

    -- if table  is now empty, remove the table
    IF _config #> array['tables', table_name] = '{}' THEN
      SELECT _config #- array['tables', table_name] INTO _config;
    END IF;

    -- if config empty delete
    -- or update the config
    IF _config #> array['tables'] = '{}' THEN
      DELETE FROM cs_configuration_v1 WHERE state = 'pending';
    ELSE
      UPDATE cs_configuration_v1 SET data = _config WHERE state = 'pending';
    END IF;

    -- exeunt
    RETURN _config;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_modify_index_v1(table_name text, column_name text, index_name text, cast_as text, opts jsonb);

CREATE FUNCTION cs_modify_index_v1(table_name text, column_name text, index_name text, cast_as text DEFAULT 'text', opts jsonb DEFAULT '{}')
  RETURNS jsonb
AS $$
  BEGIN
    PERFORM cs_remove_index_v1(table_name, column_name, index_name);
    RETURN cs_add_index_v1(table_name, column_name, index_name, cast_as, opts);
  END;
$$ LANGUAGE plpgsql;



--
--
-- Marks the currently `pending` configuration as `encrypting`.
--
-- Validates the database schema and raises an exception if the configured columns are not of `jsonb` or `cs_encrypted_v1` type.
--
-- Accepts an optional `force` parameter.
-- If `force` is `true`, the schema validation is skipped.
--
-- Raises an exception if the configuration is already `encrypting` or if there is no `pending` configuration to encrypt.
--
DROP FUNCTION IF EXISTS cs_encrypt_v1();

CREATE FUNCTION cs_encrypt_v1(force boolean DEFAULT false)
  RETURNS boolean
AS $$
	BEGIN

    IF EXISTS (SELECT FROM cs_configuration_v1 c WHERE c.state = 'encrypting') THEN
      RAISE EXCEPTION 'An encryption is already in progress';
    END IF;

		IF NOT EXISTS (SELECT FROM cs_configuration_v1 c WHERE c.state = 'pending') THEN
			RAISE EXCEPTION 'No pending configuration exists to encrypt';
		END IF;

    IF NOT force THEN
      IF NOT cs_ready_for_encryption_v1() THEN
        RAISE EXCEPTION 'Some pending columns do not have an encrypted target';
      END IF;
    END IF;

    UPDATE cs_configuration_v1 SET state = 'encrypting' WHERE state = 'pending';
		RETURN true;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_activate_v1();

CREATE FUNCTION cs_activate_v1()
  RETURNS boolean
AS $$
	BEGIN

	  IF EXISTS (SELECT FROM cs_configuration_v1 c WHERE c.state = 'encrypting') THEN
	  	UPDATE cs_configuration_v1 SET state = 'inactive' WHERE state = 'active';
			UPDATE cs_configuration_v1 SET state = 'active' WHERE state = 'encrypting';
			RETURN true;
		ELSE
			RAISE EXCEPTION 'No encrypting configuration exists to activate';
		END IF;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_discard_v1();

CREATE FUNCTION cs_discard_v1()
  RETURNS boolean
AS $$
  BEGIN
    IF EXISTS (SELECT FROM cs_configuration_v1 c WHERE c.state = 'pending') THEN
        DELETE FROM cs_configuration_v1 WHERE state = 'pending';
      RETURN true;
    ELSE
      RAISE EXCEPTION 'No pending configuration exists to discard';
    END IF;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_add_column_v1(table_name text, column_name text, cast_as text);

CREATE FUNCTION cs_add_column_v1(table_name text, column_name text, cast_as text DEFAULT 'text')
  RETURNS jsonb
AS $$
  DECLARE
    key text;
    _config jsonb;
  BEGIN
    -- set the active config
    SELECT data INTO _config FROM cs_configuration_v1 WHERE state = 'active' OR state = 'pending' ORDER BY state DESC;

    -- set default config
    SELECT _cs_config_default(_config) INTO _config;

    -- if index exists
    IF _config #> array['tables', table_name] ?  column_name THEN
      RAISE EXCEPTION 'Config exists for column: % %', table_name, column_name;
    END IF;

    SELECT _cs_config_add_table(table_name, _config) INTO _config;

    SELECT _cs_config_add_column(table_name, column_name, _config) INTO _config;

    SELECT _cs_config_add_cast(table_name, column_name, cast_as, _config) INTO _config;

    --  create a new pending record if we don't have one
    INSERT INTO cs_configuration_v1 (state, data) VALUES ('pending', _config)
    ON CONFLICT (state)
      WHERE state = 'pending'
    DO UPDATE
      SET data = _config;

    -- exeunt
    RETURN _config;
  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_remove_column_v1(table_name text, column_name text);

CREATE FUNCTION cs_remove_column_v1(table_name text, column_name text)
  RETURNS jsonb
AS $$
  DECLARE
    key text;
    _config jsonb;
  BEGIN
     -- set the active config
    SELECT data INTO _config FROM cs_configuration_v1 WHERE state = 'active' OR state = 'pending' ORDER BY state DESC;

    -- if no config
    IF _config IS NULL THEN
      RAISE EXCEPTION 'No active or pending configuration exists';
    END IF;

    -- if the table doesn't exist
    IF NOT _config #> array['tables'] ? table_name THEN
      RAISE EXCEPTION 'No configuration exists for table: %', table_name;
    END IF;

    -- if the column does not exist
    IF NOT _config #> array['tables', table_name] ?  column_name THEN
      RAISE EXCEPTION 'No configuration exists for column: % %', table_name, column_name;
    END IF;

    --  create a new pending record if we don't have one
    INSERT INTO cs_configuration_v1 (state, data) VALUES ('pending', _config)
    ON CONFLICT (state)
      WHERE state = 'pending'
    DO NOTHING;

    -- remove the column
    SELECT _config #- array['tables', table_name, column_name] INTO _config;

    -- if table  is now empty, remove the table
    IF _config #> array['tables', table_name] = '{}' THEN
      SELECT _config #- array['tables', table_name] INTO _config;
    END IF;

    -- if config empty delete
    -- or update the config
    IF _config #> array['tables'] = '{}' THEN
      DELETE FROM cs_configuration_v1 WHERE state = 'pending';
    ELSE
      UPDATE cs_configuration_v1 SET data = _config WHERE state = 'pending';
    END IF;

    -- exeunt
    RETURN _config;

  END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_refresh_encrypt_config();

CREATE FUNCTION cs_refresh_encrypt_config()
  RETURNS void
LANGUAGE sql STRICT PARALLEL SAFE
BEGIN ATOMIC
  RETURN NULL;
END;
-- Return the diff of two configurations
-- Returns the set of keys in a that have different values to b
-- The json comparison is on object values held by the key
DROP FUNCTION IF EXISTS _cs_diff_config_v1(a JSONB, b JSONB);

CREATE FUNCTION _cs_diff_config_v1(a JSONB, b JSONB)
	RETURNS TABLE(table_name TEXT, column_name TEXT)
IMMUTABLE STRICT PARALLEL SAFE
AS $$
  BEGIN
    RETURN QUERY
    WITH table_keys AS (
      SELECT jsonb_object_keys(a->'tables') AS key
      UNION
      SELECT jsonb_object_keys(b->'tables') AS key
    ),
    column_keys AS (
      SELECT tk.key AS table_key, jsonb_object_keys(a->'tables'->tk.key) AS column_key
      FROM table_keys tk
      UNION
      SELECT tk.key AS table_key, jsonb_object_keys(b->'tables'->tk.key) AS column_key
      FROM table_keys tk
    )
    SELECT
      ck.table_key AS table_name,
      ck.column_key AS column_name
    FROM
      column_keys ck
    WHERE
      (a->'tables'->ck.table_key->ck.column_key IS DISTINCT FROM b->'tables'->ck.table_key->ck.column_key);
  END;
$$ LANGUAGE plpgsql;


-- Returns the set of columns with pending configuration changes
-- Compares the columns in pending configuration that do not match the active config
DROP FUNCTION IF EXISTS cs_select_pending_columns_v1();

CREATE FUNCTION cs_select_pending_columns_v1()
	RETURNS TABLE(table_name TEXT, column_name TEXT)
AS $$
	DECLARE
		active JSONB;
		pending JSONB;
		config_id BIGINT;
	BEGIN
		SELECT data INTO active FROM cs_configuration_v1 WHERE state = 'active';

		-- set default config
    IF active IS NULL THEN
      active := '{}';
    END IF;

		SELECT id, data INTO config_id, pending FROM cs_configuration_v1 WHERE state = 'pending';

		-- set default config
		IF config_id IS NULL THEN
			RAISE EXCEPTION 'No pending configuration exists to encrypt';
		END IF;

		RETURN QUERY
		SELECT d.table_name, d.column_name FROM _cs_diff_config_v1(active, pending) as d;
	END;
$$ LANGUAGE plpgsql;

--
-- Returns the target columns with pending configuration
--
-- A `pending` column may be either a plaintext variant or cs_encrypted_v1.
-- A `target` column is always of type cs_encrypted_v1
--
-- On initial encryption from plaintext the target column will be `{column_name}_encrypted `
-- OR NULL if the column does not exist
--
DROP FUNCTION IF EXISTS cs_select_target_columns_v1();

CREATE FUNCTION cs_select_target_columns_v1()
	RETURNS TABLE(table_name TEXT, column_name TEXT, target_column TEXT)
	STABLE STRICT PARALLEL SAFE
AS $$
  SELECT
    c.table_name,
    c.column_name,
    s.column_name as target_column
  FROM
    cs_select_pending_columns_v1() c
  LEFT JOIN information_schema.columns s ON
    s.table_name = c.table_name AND
    (s.column_name = c.column_name OR s.column_name = c.column_name || '_encrypted') AND
    (s.domain_name = 'cs_encrypted_v1' OR s.data_type = 'jsonb');
$$ LANGUAGE sql;


--
-- Returns true if all pending columns have a target (encrypted) column
DROP FUNCTION IF EXISTS cs_ready_for_encryption_v1();

CREATE FUNCTION cs_ready_for_encryption_v1()
	RETURNS BOOLEAN
	STABLE STRICT PARALLEL SAFE
AS $$
	SELECT EXISTS (
	  SELECT *
	  FROM cs_select_target_columns_v1() AS c
	  WHERE c.target_column IS NOT NULL);
$$ LANGUAGE sql;


--
-- Creates cs_encrypted_v1 columns for any plaintext columns with pending configuration
-- The new column name is `{column_name}_encrypted`
--
-- Executes the ALTER TABLE statement
--   `ALTER TABLE {target_table} ADD COLUMN {column_name}_encrypted cs_encrypted_v1;`
--
DROP FUNCTION IF EXISTS cs_create_encrypted_columns_v1();

CREATE FUNCTION cs_create_encrypted_columns_v1()
	RETURNS TABLE(table_name TEXT, column_name TEXT)
AS $$
	BEGIN
    FOR table_name, column_name IN
      SELECT c.table_name, (c.column_name || '_encrypted') FROM cs_select_target_columns_v1() AS c WHERE c.target_column IS NULL
    LOOP
		  EXECUTE format('ALTER TABLE %I ADD column %I cs_encrypted_v1', table_name, column_name);
      RETURN NEXT;
    END LOOP;
	END;
$$ LANGUAGE plpgsql;


--
-- Renames plaintext and cs_encrypted_v1 columns created for the initial encryption.
-- The source plaintext column is renamed to `{column_name}_plaintext`
-- The target encrypted column is renamed from `{column_name}_encrypted` to `{column_name}`
--
-- Executes the ALTER TABLE statements
--   `ALTER TABLE {target_table} RENAME COLUMN {column_name} TO {column_name}_plaintext;
--   `ALTER TABLE {target_table} RENAME COLUMN {column_name}_encrypted TO {column_name};`
--
DROP FUNCTION IF EXISTS cs_rename_encrypted_columns_v1();

CREATE FUNCTION cs_rename_encrypted_columns_v1()
	RETURNS TABLE(table_name TEXT, column_name TEXT, target_column TEXT)
AS $$
	BEGIN
    FOR table_name, column_name, target_column IN
      SELECT * FROM cs_select_target_columns_v1() as c WHERE c.target_column = c.column_name || '_encrypted'
    LOOP
		  EXECUTE format('ALTER TABLE %I RENAME %I TO %I;', table_name, column_name, column_name || '_plaintext');
		  EXECUTE format('ALTER TABLE %I RENAME %I TO %I;', table_name, target_column, column_name);
      RETURN NEXT;
    END LOOP;
	END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS cs_count_encrypted_with_active_config_v1(table_name TEXT, column_name TEXT);

CREATE FUNCTION cs_count_encrypted_with_active_config_v1(table_name TEXT, column_name TEXT)
  RETURNS BIGINT
AS $$
DECLARE
  result BIGINT;
BEGIN
	EXECUTE format(
        'SELECT COUNT(%I) FROM %s t WHERE %I->>%L = (SELECT id::TEXT FROM cs_configuration_v1 WHERE state = %L)',
        column_name, table_name, column_name, 'v', 'active'
    )
	INTO result;
  	RETURN result;
END;
$$ LANGUAGE plpgsql;

