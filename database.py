from sqlalchemy import create_engine, text
from sqlalchemy.orm import scoped_session, sessionmaker, declarative_base
from faker import Faker
from eqlpy.eqlalchemy import *

engine = create_engine("postgresql://postgres:postgres@localhost:6432/pyconau_tute", echo=True)
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
    BaseModel.metadata.create_all(engine)

    # Ensure EQL is installed
    with open('cipherstash-eql.sql', 'r') as file:
        eql = file.read()
        with engine.connect() as conn:
            conn.execute(text(eql))
            conn.commit()

    # reset test data
    with engine.connect() as conn:
        conn.execute(text('TRUNCATE users, payment_methods, transactions, cs_configuration_v1'))
        conn.commit()

    # set up encrypted indexes
    with engine.connect() as conn:
        conn.execute(text("SELECT cs_add_column_v1('users', 'name');"))
        conn.execute(text("SELECT cs_add_column_v1('users', 'email');"))
        conn.execute(text("SELECT cs_add_column_v1('users', 'phone_number');"))
        conn.execute(text("SELECT cs_add_column_v1('payment_methods', 'attrs');"))
        conn.execute(text("SELECT cs_add_column_v1('transactions', 'amount');"))
        conn.execute(text("SELECT cs_add_column_v1('transactions', 'description');"))
        conn.execute(text("SELECT cs_encrypt_v1(TRUE); SELECT cs_activate_v1();"))
        conn.execute(text("SELECT cs_refresh_encrypt_config();"))
        conn.commit()

    db_session.execute(text("SELECT cs_refresh_encrypt_config();"))

    # add a consistent record
    u = models.User('admin', 'admin@localhost', 'omgwtfbbq')
    # add a bunch of fake data
    fake = Faker()
    Faker.seed(4321)
    for _ in range(1000):
        u = models.User(fake.name(), fake.ascii_email(), fake.phone_number())
        db_session.add(u)
    db_session.commit()
