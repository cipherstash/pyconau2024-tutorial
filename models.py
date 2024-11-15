from dataclasses import dataclass
from sqlalchemy import Column, Integer, String
from database import Base

@dataclass
class User(Base):
    __tablename__ = "users"
    id: int
    name: str
    email: str

    id = Column(Integer, primary_key=True)
    name = Column(String(50), unique=True)
    email = Column(String(120), unique=True)

    def __init__(self, name=None, email=None):
        self.name = name
        self.email = email

    def __repr__(self):
        return f'<User {self.name!r}>'
