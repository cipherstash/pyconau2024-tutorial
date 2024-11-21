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
    secret: str
    gender: str
    safer_gender: str

    id = Column(Integer, primary_key=True)
    name = Column(String(50), unique=False)
    email = Column(String(120), unique=True)
    secret = Column(StringEncryptedType(String, length=255, key='abc', padding='pkcs5'))
    gender = Column(StringEncryptedType(String, engine=AesEngine, length=255, key='abc'))
    safer_gender = Column(StringEncryptedType(String, engine=AesGcmEngine, length=255, key='abc'))

    def __init__(self, name=None, email=None, secret=None, gender=None):
        self.name = name
        self.email = email
        self.secret = secret
        self.gender = gender
        self.safer_gender = gender

    def __repr__(self):
        return f'<User {self.name!r}>'
