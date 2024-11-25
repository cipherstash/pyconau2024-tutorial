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

Now we're going to add CipherStash EQL, so we:

- can search the data
- are using secure encryption

### Step 3.1: set up

Switch to step 3 branch and set up:

```bash
# Change to the branch
git checkout stage-3/cipherstash-encrypt-query-language

# Install dependencies
. .venv/bin/activate
pip install -r requirements.txt

# Tear down existing containers
docker compose down
```

Download and install [Stash CLI](https://github.com/cipherstash/cli-releases/releases/latest).

If you haven't got a CipherStash account yet, run:

```bash
stash signup
```

Otherwise, login:

```bash
stash login
```

### Step 3.2: configure CipherStash Proxy

CipherStash Proxy sits between the application and the database.

CipherStash Proxy transparently encrypts and decrypts columns configured by [eqlpy](https://github.com/cipherstash/eqlpy) and SQLAlchemy.

There are three steps to configuring Proxy:

1. Create an access key:
   ```bash
   stash access-keys create pyconau_tute
   ```

   Copy the output into these environment variables in `.envrc`:

   ```bash
   export CS_CLIENT_ACCESS_KEY=CS...
   export CS_WORKSPACE_ID=...
   ```
1. Create a dataset:
   ```bash
   stash datasets create pyconau_tute
   ```

   Copy the output into these environment variables in `.envrc`:

   ```bash
   export CS_DATASET_ID=...
   ```
1. Create a client:
   ```bash
   # Read environment variables
   source .envrc

   # Create a client
   stash clients create --dataset-id ${CS_DATASET_ID} pyconau_tute
   ```

   Copy the output into these environment variables in `.envrc`:

   ```bash
   export CS_ENCRYPTION__CLIENT_ID=...
   export CS_ENCRYPTION__CLIENT_KEY=...
   ```

## Step 3.3

Lastly, start up the database and proxy:

``` bash
# Read environment variables
source .envrc

# Start Postgres and CipherStash Proxy containers
docker compose up -d

# Install EQL
psql -f cipherstash-eql.sql postgres://postgres:postgres@localhost/pyconau_tute

# Reset the database configuration and test data
python init_db.py
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
