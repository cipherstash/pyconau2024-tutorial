import hashlib
from typing import List
from dataclasses import dataclass
from datetime import time
from sqlalchemy import Column, Integer, String, Time, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column, DeclarativeBase, relationship
from sqlalchemy_utils.types.encrypted.encrypted_type import StringEncryptedType, AesEngine, AesGcmEngine, EncryptionDecryptionBaseEngine
from database import Base

class ShaEngine(EncryptionDecryptionBaseEngine):
    def _initialize_engine(self, parent_class_key):
        pass

    def encrypt(self, value):
        encoded = value.encode('utf-8')
        sha = hashlib.sha256(encoded)
        digest = sha.hexdigest()
        return digest

    def decrypt(self, value):
        return ""

@dataclass
class User(Base):
    __tablename__ = "users"
    id: int
    name: str
    email: str
    phone_number: str

    id = Column(Integer, primary_key=True)
    name = Column(StringEncryptedType(String, length=120, key='secret', padding='pkcs5', engine=AesGcmEngine))
    email = Column(StringEncryptedType(String, length=120, key='secret', padding='pkcs5', engine=AesGcmEngine))
    phone_number = Column(StringEncryptedType(String, length=255, key='secret', padding='pkcs5', engine=AesGcmEngine))
    payment_methods: Mapped[List["PaymentMethod"]] = relationship()
    transactions: Mapped[List["Transactions"]] = relationship()
    # make the encrypted fields searchable by exact match
    name_search = Column(StringEncryptedType(String, length=255, engine=ShaEngine, key='abc', padding='pkcs5'))
    email_search = Column(StringEncryptedType(String, length=255, engine=ShaEngine, key='abc', padding='pkcs5'))
    phone_number_search = Column(StringEncryptedType(String, length=255, engine=ShaEngine, key='abc', padding='pkcs5'))

    def __init__(self, id, name=None, email=None, phone_number=None):
        self.id = id
        self.name = name
        self.email = email
        self.phone_number = phone_number
        # make these fields searchable with exact match
        self.name_search = name
        self.email_search = email
        self.phone_number_search = phone_number

    def __repr__(self):
        return f'<User {self.name!r}>'

@dataclass
class PaymentMethod(Base):
    __tablename__ = "payment_methods"
    id: Mapped[int] = mapped_column(primary_key=True)
    user_id: Mapped[int] =  mapped_column(ForeignKey("users.id"))
    attrs: str

    attrs = Column(StringEncryptedType(String, length=255, key='secret', padding='pkcs5', engine=AesGcmEngine))

    def __init__(self, user_id=None, attrs=None):
        self.user_id = user_id
        self.attrs = attrs

    def __repr__(self):
        return f'<PaymentMethod {self.id!r}>'

@dataclass
class Transactions(Base):
    __tablename__ = "transactions"
    id: Mapped[int] = mapped_column(primary_key=True)
    user_id: Mapped[int] = mapped_column(ForeignKey("users.id"))
    timestamp: time
    amount: int
    description: str

    timestamp = Column(Time)
    amount = Column(Integer)
    description = Column(StringEncryptedType(String, length=255, key='secret', padding='pkcs5', engine=AesGcmEngine))

    def __init__(self, user_id=None, attrs=None):
        self.user_id = user_id
        self.attrs = attrs

    def __repr__(self):
        return f'<User {self.id!r}>'
