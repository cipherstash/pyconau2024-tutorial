# Attack steps

## Set up

There are 2 users for our application which we'll use to interact via the REST API.

User ID=1, has token `token123`
User ID=2, has token `token456`

The app stores credit card numbers in the `PaymentMethod` model as encrypted JSON which is stored in the `attrs` field.
A `charge` API endpoint allows an authorized user to charge a payment method.
Only owners of the payment method can call charge.

## Attack 1: Confused Deputy

* Find the payment method belonging to user with ID=1
* Try to charge the card with User 2’s token and verify that access is denied and is allowed with User 1’s token:
  ```bash
  curl -v -H "Authorization: Bearer token456" -H "Content-Type: application/json" -XPOST http://127.0.0.1:5000/charge/<payment-method-id>
  ```

* Connect to the database and modify the payment method to have `user_id=2`
* Now verify that User 2 can charge the card

## Attack 2: Partially Decrypting the card number without the key

* Open the `oracle.py` file and set the `payment_method_id` variable to the ID of the payment ID we want to decrypt
* Make sure the token is set to User 2’s token
* Run the attack

```bash
python oracle.py
```

You should see `4433332222111'}` output which is the decryption of the second ciphertext block and includes all but the first 2-digits of the card number.


### Attack 3: Breaking Public Hashes

*On a MAC*

Download `tokencrack` [here](https://github.com/cipherstash/pyconau2024-tutorial/releases/tag/v1.0.0).
You will need to override your security settings to allow this run.

*Other platforms*

* Install Rust by following the steps [here](https://www.rust-lang.org/learn/get-started)
* Install `tokencrack`

```
cargo install --git https://github.com/cipherstash/tokencrack
```

Running the attack:

Find a value from the `name_search` field in the database.
For example:

```sql
SELECT name_search FROM users LIMIT 1;
```

Then pass this to `tokencrack` with the `english-names` generator:

```
tokencrack english-name 7ab06efba42abce6d077fb298d741c9591e27a9f1189360b0d9286f9cc2f9545
```

You can also try cracking the email address which is straightforward once you have the name.

```
tokencrack email --name 'Jason Brown' 9811473dfc280c7b6d5410b81574b62d78662941215eb4103df38df496fdbda5
```

Lastly, phone numbers can also be cracked but these will take a little longer and depends on the format used for the number.
Expect up to a few minutes for this to run.

```
tokencrack us-phone 40a10270a9af751213b6af3ec656568ce166c48b84da344a24f380f051b5996d
```


