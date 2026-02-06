#!/usr/bin/env bash

set -euo pipefail

# Upgrade pip, setuptools, and wheel to ensure binary wheels can be used
python -m pip install --upgrade pip setuptools wheel

# Install Python dependencies
pip install -r requirements.txt

# Run migrations and collect static files
python manage.py migrate --noinput
python manage.py collectstatic --noinput
