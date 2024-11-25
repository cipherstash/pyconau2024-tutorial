from sqlalchemy import create_engine, text
from sqlalchemy.orm import scoped_session, sessionmaker, declarative_base
from faker import Faker
import re

engine = create_engine("postgresql://postgres:postgres@localhost/pyconau_tute", echo=True)
db_session = scoped_session(sessionmaker(autocommit=False,
                                         autoflush=False,
                                         bind=engine))
Base = declarative_base()
Base.query = db_session.query_property()

def init_db():
    # import all modules here that might define models so that
    # they will be registered properly on the metadata.  Otherwise
    # you will have to import them first before calling init_db()
    import models
    Base.metadata.create_all(bind=engine)

    # reset test data
    with engine.connect() as conn:
        conn.execute(text('TRUNCATE users, payment_methods, transactions'))
        conn.commit()

    # add a consistent record
    u = models.User('admin', 'admin@localhost', 'omgwtfbbq')
    # add a bunch of fake data
    fake = Faker()
    Faker.seed(4321)
    for id in range(1000):
        name = fake.name()
        domain = fake.domain_name()
        email = generate_email(name, domain)
        phone = fake.phone_number()
        print(f"Adding user {name} with email {email} and phone {phone}")
        u = models.User(id, name, email, phone)
        db_session.add(u)
    db_session.commit()

    pm = models.PaymentMethod(user_id=1, attrs="{'card_num': '444433332222111'}")
    db_session.add(pm)
    db_session.commit()

def generate_email(name: str, domain: str) -> str:
    """
    Generates an email address using the first character of the first name
    and the full last name, all downcased, and stripping any suffix.

    Args:
        name (str): Full name of the person, which may include a suffix.
        domain (str): The domain name for the email address.

    Returns:
        str: Generated email address.
    """
    # Remove suffixes (e.g., "PhD", "Jr", etc.)
    name = re.sub(r",?\s*(PhD|Jr|Sr|II|III|IV)$", "", name, flags=re.IGNORECASE)
    # Split the name into parts
    parts = name.split()
    
    if len(parts) < 2:
        raise ValueError("Name must include at least a first and last name.")
    
    first_name = parts[0]
    last_name = parts[-1]
    
    # Create the email address
    email = f"{first_name[0].lower()}{last_name.lower()}@{domain}"
    return email