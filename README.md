# PyCon AU 2024 encrypted data vault tutorial

Code that accompanies the Monday November 25 tutorial [How to secure, break, and re-secure an encrypted data vault using Python and PostgreSQL](https://2024.pycon.org.au/program/HBB3ST/) at PyCon AU 2024

## Quickstart

Make sure you have these dependencies installed:

- Python
- git
- Docker

Then run the app:

```bash
# Clone the repo
git clone https://github.com/cipherstash/pyconau2024-tutorial
cd pyconau2024-tutorial

# Install dependencies
python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt

# Start the database
docker compose up -d

# Run the app
flask run --debug
```

Now query the API:

```bash
# List all users
curl http://127.0.0.1:5000/users

# Search for users by exact name
curl http://127.0.0.1:5000/users/search?name=Sarah%20Alvarez

# Search for users by exact email
curl http://127.0.0.1:5000/users/search?email=daniel02@brown.biz

# Search for users by exact phone number
curl http://127.0.0.1:5000/users/search?phone_number=214-800-3418
```

## Step 3 — CipherStash EQL

```bash
# Change to the branch
git checkout stage-3/cipherstash-encrypt-query-language

# Install dependencies
. .venv/bin/activate
pip install -r requirements.txt

# Tear down existing containers
docker compose down
# Set up Postgres and CipherStash Proxy
docker compose up
```

If you need to reset the database at any point, run:

```bash
python init_db.py
```

## Development

To update dependencies:

```bash
# Make sure the virtualenv is activated
. .venv/bin/activate

# Install the new dependency
pip install -U Flask-SQLAlchemy

# Update requirements
pip freeze > requirements.txt
```
