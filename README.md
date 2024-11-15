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

# List users with an exact matching secret (will return 1 result)
curl http://127.0.0.1:5000/users?secret=omgwtf

# List users with a partially matching secret (will return none)
curl http://127.0.0.1:5000/users?q=omgwtf
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
