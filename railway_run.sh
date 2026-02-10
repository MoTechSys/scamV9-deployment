#!/bin/bash

# Execute database migrations
echo "Running database migrations..."
python manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

# Start the application with Gunicorn
echo "Starting Gunicorn..."
gunicorn config.wsgi --log-file -
