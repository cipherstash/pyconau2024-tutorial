from dataclasses import dataclass
from sqlalchemy import Column, Integer, String
from sqlalchemy_utils.types.encrypted.encrypted_type import StringEncryptedType
from database import Base

@dataclass
class User(Base):
    __tablename__ = "users"
    id: int
    name: str
    email: str
    secret: str

    id = Column(Integer, primary_key=True)
    name = Column(String(50), unique=True)
    email = Column(String(120), unique=True)
    secret = Column(StringEncryptedType(String, length=255, key='abc'))

    def __init__(self, name=None, email=None, secret=None):
        self.name = name
        self.email = email
        self.secret = secret

    def __repr__(self):
        return f'<User {self.name!r}>'
