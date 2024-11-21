from flask import Flask, request
from flask_sqlalchemy import SQLAlchemy
from database import db_session, init_db
from models import User, PaymentMethod
from sqlalchemy.orm import selectinload
from sqlalchemy_utils.types.encrypted.padding import InvalidPaddingError

app = Flask(__name__)
#init_db()

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/users")
def users():
    return User.query.all()

@app.route("/users/<int:user_id>")
def get_user(user_id):
    user = User.query.with_statement_hint("foo").get(user_id)
    if user is None:
        return {"message": "User not found"}, 404
    return {
        "id": user.id,
        "name": user.name,
        "email": user.email,
        "phone_number": user.phone_number
    }

@app.route("/users/<int:user_id>/payment_methods", methods=["POST"])
def create_payment_method(user_id):
    user = User.query.get(user_id)
    if user is None:
        return {"message": "User not found"}, 404
    
    payment_method = PaymentMethod(user_id=user_id, attrs=request.json)
    user.payment_methods.append(payment_method)
    db_session.add(payment_method)
    db_session.commit()
    return "Created payment method"

@app.route("/charge/<int:payment_method_id>", methods=["POST"])
def charge(payment_method_id):
    try:
        payment_method = PaymentMethod.query.get(payment_method_id)
        print("Charging payment method ID=%s", payment_method.attrs)
        # Charge the payment method
        return "Charged payment method"
    except InvalidPaddingError as e:
        print("Invalid padding: %s", e)
        return {"message": "Invalid padding"}, 400
    except Exception as e:
        return {"message": str(e)}, 500

@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()
