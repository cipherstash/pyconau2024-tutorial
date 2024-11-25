import hashlib
from typing import List
from dataclasses import dataclass
from datetime import time
from sqlalchemy import Column, Integer, String, Time, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column, DeclarativeBase, relationship
from eqlpy.eqlalchemy import *
from database import Base

@dataclass
class User(Base):
    __tablename__ = "users"
    id: int
    name: str
    email: str
    phone_number: str

    id = Column(Integer, primary_key=True)
    name = Column(EncryptedUtf8Str(__tablename__, "name"))
    email = Column(EncryptedUtf8Str(__tablename__, "email"))
    phone_number = Column(EncryptedUtf8Str(__tablename__, "phone_number"))
    payment_methods: Mapped[List["PaymentMethod"]] = relationship()
    transactions: Mapped[List["Transactions"]] = relationship()

    def __init__(self, name=None, email=None, phone_number=None):
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

    attrs = Column(EncryptedUtf8Str(__tablename__, "attrs"))

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
    amount = Column(EncryptedFloat(__tablename__, "amount"))
    description = Column(EncryptedUtf8Str(__tablename__, "description"))

    def __init__(self, user_id=None, attrs=None):
        self.user_id = user_id
        self.attrs = attrs

    def __repr__(self):
        return f'<User {self.id!r}>'
