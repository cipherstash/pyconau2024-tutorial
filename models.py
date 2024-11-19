from dataclasses import dataclass
from sqlalchemy import Column, Integer, String
from sqlalchemy_utils.types.encrypted.encrypted_type import StringEncryptedType, AesEngine, AesGcmEngine
from database import Base

@dataclass
class User(Base):
    __tablename__ = "users"
    id: int
    name: str
    email: str
    phone_number: str

    id = Column(Integer, primary_key=True)
    name = Column(StringEncryptedType(String, length=120, key='abc', padding='pkcs5'))
    email = Column(StringEncryptedType(String, length=120, key='abc', padding='pkcs5'))
    phone_number = Column(StringEncryptedType(String, length=255, key='abc', padding='pkcs5'))

    def __init__(self, name=None, email=None, phone_number=None):
        self.name = name
        self.email = email
        self.phone_number = phone_number

    def __repr__(self):
        return f'<User {self.name!r}>'
