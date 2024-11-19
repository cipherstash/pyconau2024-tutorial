from flask import Flask, request
from flask_sqlalchemy import SQLAlchemy
from database import db_session, init_db
from models import User
from sqlalchemy.orm import selectinload

app = Flask(__name__)
#init_db()

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/users")
def users():
    return User.query.options(selectinload(User.payment_methods), selectinload(User.transactions)).all()

@app.route("/users/<int:user_id>")
def get_user(user_id):
    user = User.query.get(user_id)
    if user is None:
        return {"message": "User not found"}, 404
    return {
        "id": user.id,
        "name": user.name,
        "email": user.email,
        "secret": user.secret
    }

@app.route("/users", methods=["POST"])
def create_user():
    name = request.json.get('name')
    email = request.json.get('email')
    secret = request.json.get('secret')
    if not name or not email or not secret:
        return {"message": "Missing required fields"}, 400
    new_user = User(name, email, secret)
    db_session.add(new_user)
    db_session.commit()
    return {"message": "User created successfully", "user": {"name": name}}, 201

@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()
