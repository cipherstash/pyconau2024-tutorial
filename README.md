# PyCon AU 2024 encrypted data vault tutorial

Code that accompanies the Monday November 25 tutorial [How to secure, break, and re-secure an encrypted data vault using Python and PostgreSQL](https://2024.pycon.org.au/program/HBB3ST/) at PyCon AU 2024

## Quickstart

```
# Clone the repo
git clone https://github.com/cipherstash/pyconau2024-tutorial
cd pyconau2024-tutorial

# Install dependencies
python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt

# Run the app
flask run --debug
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
