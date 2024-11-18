from flask import Flask, request
from flask_sqlalchemy import SQLAlchemy
from database import db_session, init_db
from models import User

app = Flask(__name__)
#init_db()

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/users")
def users():
    q = request.args.get('q')
    if q:
        search = "%{}%".format(q)
        return User.query.where(User.secret.like(search)).all()

    s = request.args.get('secret')
    if s:
        return User.query.where(User.secret == s).all()

    g = request.args.get('gender')
    if g:
        return User.query.where(User.gender == g).all()

    sg = request.args.get('safer_gender')
    if sg:
        return User.query.where(User.safer_gender == sg).all()

    return User.query.all()

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
