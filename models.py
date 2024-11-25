import hashlib
from typing import List
from dataclasses import dataclass
from datetime import time
from sqlalchemy import Column, Integer, String, Time, ForeignKey, JSON
from sqlalchemy.orm import Mapped, mapped_column, DeclarativeBase, relationship
from sqlalchemy.dialects.postgresql import JSONB
from eqlpy.eqlalchemy import *
from database import Base

@dataclass
class User(BaseModel):
    __tablename__ = "users"
#    id: int
#    name: str
#    email: str
#    phone_number: str

    id = Column(Integer, primary_key=True)
    name = mapped_column(EncryptedUtf8Str(__tablename__, "name"))
    email = mapped_column(EncryptedUtf8Str(__tablename__, "email"))
    phone_number = mapped_column(EncryptedUtf8Str(__tablename__, "phone_number"))
    payment_methods: Mapped[List["PaymentMethod"]] = relationship()
    transactions: Mapped[List["Transactions"]] = relationship()

    def __init__(self, name=None, email=None, phone_number=None):
        self.name = name
        self.email = email
        self.phone_number = phone_number

    def __repr__(self):
        return f'<User {self.name!r}>'

@dataclass
class PaymentMethod(BaseModel):
    __tablename__ = "payment_methods"
#    id: Mapped[int] = mapped_column(primary_key=True)
#    user_id: Mapped[int] =  mapped_column(ForeignKey("users.id"))
#    attrs: str

    id = Column(Integer, primary_key=True)
    user_id = mapped_column(ForeignKey("users.id"))
    attrs = mapped_column(EncryptedUtf8Str(__tablename__, "attrs"))

    def __init__(self, user_id=None, attrs=None):
        self.user_id = user_id
        self.attrs = attrs

    def __repr__(self):
        return f'<PaymentMethod {self.id!r}>'

@dataclass
class Transactions(BaseModel):
    __tablename__ = "transactions"
#    id: Mapped[int] = mapped_column(primary_key=True)
#    user_id: Mapped[int] = mapped_column(ForeignKey("users.id"))
#    timestamp: time
#    amount: int
#    description: str

    id = Column(Integer, primary_key=True)
    user_id = mapped_column(ForeignKey("users.id"))
    timestamp = Column(Time)
    amount = mapped_column(EncryptedFloat(__tablename__, "amount"))
    description = mapped_column(EncryptedUtf8Str(__tablename__, "description"))

    def __init__(self, user_id=None, attrs=None):
        self.user_id = user_id
        self.attrs = attrs

    def __repr__(self):
        return f'<User {self.id!r}>'
