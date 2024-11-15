from flask import Flask, request
from flask_sqlalchemy import SQLAlchemy
from database import db_session, init_db
from models import User

app = Flask(__name__)
init_db()

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

    return User.query.all()

@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()
