from sqlalchemy import create_engine, text
from sqlalchemy.orm import scoped_session, sessionmaker, declarative_base
from faker import Faker

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
        u = models.User(id, fake.name(), fake.ascii_email(), fake.phone_number())
        db_session.add(u)
    db_session.commit()

    pm = models.PaymentMethod(user_id=1, attrs="{'card_num': '444433332222111'}")
    db_session.add(pm)
    db_session.commit()
