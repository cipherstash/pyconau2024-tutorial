# Attack steps

## Set up

There are 2 users for our application which we'll use to interact via the REST API.

User ID=1, has token “token123”
User ID=2, has token “token456”

The app stores credit card numbers in the `PaymentMethod` model as encrypted JSON which is stored in the `attrs` field.
A `charge` API endpoint allows an authorized user to charge a payment method.
Only owners of the payment method can call charge.

## Attack 1: Confused Deputy

* Find the payment method belonging to user with ID=1
* Try to charge the card with User 2’s token and verify that access is denied and is allowed with User 1’s token
```
curl -v -H "Authorization: Bearer token456" -H "Content-Type: application/json" -XPOST http://127.0.0.1:5000/charge/<payment-method-id>
```

* Connect to the database and modify the payment method to have `user_id=2`
* Now verify that User 2 can charge the card

## Attack 2: Partially Decrypting the card number without the key

* Open the `oracle.py` file and set the `payment_method_id` variable to the ID of the payment ID we want to decrypt
* Make sure the token is set to User 2’s token
* Run the attack

`python oracle.py`

You should see `4433332222111'}` output which is the decryption of the second ciphertext block and includes all but the first 2-digits of the card number.