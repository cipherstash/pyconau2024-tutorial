from flask import Flask
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
    return User.query.all()

@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()
