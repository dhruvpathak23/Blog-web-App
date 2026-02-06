FROM python:3.11-slim

WORKDIR /app

# Install system dependencies required for Pillow
RUN apt-get update && apt-get install -y \
    libjpeg-dev \
    zlib1g-dev \
    libfreetype6-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip, setuptools, and wheel
RUN python -m pip install --upgrade pip setuptools wheel

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application
COPY . .

# Collect static files
RUN python manage.py collectstatic --noinput

# Run migrations and start the app
CMD ["sh", "-c", "python manage.py migrate && gunicorn blog_project.wsgi:application --bind 0.0.0.0:$PORT"]
