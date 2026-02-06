FROM python:3.11-slim

WORKDIR /app

# Install system dependencies required for Pillow and build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    libjpeg-dev \
    zlib1g-dev \
    libfreetype6-dev \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip, setuptools, and wheel
RUN python -m pip install --upgrade pip setuptools wheel

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Create staticfiles directory
RUN mkdir -p staticfiles

# Collect static files (will use SQLite initially)
RUN python manage.py collectstatic --noinput --clear || true

# Run migrations and start the app
CMD ["sh", "-c", "python manage.py migrate && gunicorn blog_project.wsgi:application --bind 0.0.0.0:$PORT"]
