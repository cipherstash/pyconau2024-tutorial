from flask import Flask, request, jsonify
from database import db_session
from models import User, PaymentMethod
from sqlalchemy_utils.types.encrypted.padding import InvalidPaddingError

app = Flask(__name__)

# A dump authenication system for demonstration purposes
# Hardcoded user ID to token mapping
USER_TOKENS = {
    1: "token123",
    2: "token456",
}

def authenticate(func):
    def wrapper(*args, **kwargs):
        # Get the Authorization header
        auth_header = request.headers.get("Authorization")
        
        if not auth_header:
            return jsonify({"error": "Missing Authorization header"}), 401
        
        # Token should be in the format: "Bearer <token>"
        try:
            token_type, token_value = auth_header.split(" ")
            if token_type.lower() != "bearer":
                raise ValueError("Invalid token type")
        except ValueError:
            return jsonify({"error": "Invalid Authorization header format"}), 400
        
        # Verify the token
        user_id = next((uid for uid, tok in USER_TOKENS.items() if tok == token_value), None)
        if not user_id:
            return jsonify({"error": "Invalid token"}), 403
        
        print("Authenticated user ID=%s", user_id)
        # Add user_id to request context
        request.user_id = user_id
        
        return func(*args, **kwargs)
    wrapper.__name__ = func.__name__
    return wrapper


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
@authenticate
def charge(payment_method_id):
    try:
        payment_method = PaymentMethod.query.get(payment_method_id)
        print("Payment method=%s", payment_method)
        if request.user_id != payment_method.user_id:
            return {"message": "Unauthorized"}, 403
        
        print("Charging payment method ID=%s", payment_method.attrs)
        # Charge the payment method
        return "Charged payment method"
    except InvalidPaddingError as e:
        print("Invalid padding: %s", e)
        return {"message": "Invalid padding"}, 400
    except Exception as e:
        return {"message": str(e)}, 500

@app.route("/users/search")
def users_search():
    name = request.args.get('name')
    if name:
        return User.query.where(User.name_search == name).all()

    email = request.args.get('email')
    if email:
        return User.query.where(User.email_search == email).all()

    phone_number = request.args.get('phone_number')
    if phone_number:
        return User.query.where(User.phone_number_search == phone_number).all()

    return []

@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()
