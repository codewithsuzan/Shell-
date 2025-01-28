#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Enter the Django project name:"
read PROJECT_NAME

echo "Enter the Django app name:"
read APP_NAME

# Step 1: Create a virtual environment
echo "Creating a virtual environment..."
python3 -m venv env
source env/bin/activate

# Step 2: Upgrade pip and install Django
echo "Upgrading pip and installing Django..."
pip install --upgrade pip
pip install django

# Step 3: Start a new Django project
echo "Creating Django project '$PROJECT_NAME'..."
django-admin startproject $PROJECT_NAME

# Step 4: Navigate into the project directory
cd $PROJECT_NAME

# Step 5: Create a new Django app
echo "Creating Django app '$APP_NAME'..."
python manage.py startapp $APP_NAME

# Step 6: Add the app to the project settings
SETTINGS_FILE="$PROJECT_NAME/settings.py"
echo "Registering the app in settings.py..."
sed -i "s/'django.contrib.staticfiles',/&\n    '$APP_NAME',/" $SETTINGS_FILE

# Step 7: Migrate the database
echo "Applying initial migrations..."
python manage.py migrate

# Step 8: Run the development server
echo "Starting the development server..."
python manage.py runserver

# Final Message
echo "Django project setup complete! Visit http://127.0.0.1:8000 in your browser."
