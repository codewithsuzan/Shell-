# Django Project Setup Script

This script automates the setup of a basic Django project and app, making it easier to start a new Django development environment.

## Features
- Creates a virtual environment for the project.
- Installs Django via `pip`.
- Initializes a new Django project.
- Creates a Django app within the project.
- Automatically registers the app in `settings.py`.
- Applies initial database migrations.
- Starts the Django development server.

## Prerequisites
Before running the script, ensure the following are installed on your system:
- **Python 3.x**
- **`pip`** (Python package manager)
- **`venv`** module (comes with Python 3.x)
- **Bash shell** (Linux, macOS, or WSL for Windows)

## Usage

1. **Clone or Download the Script**  
   Save the script as `django_setup.sh` in your desired folder.

2. **Make the Script Executable**  
   Open a terminal and run:
   ```bash
   chmod +x django_setup.sh
   ````

   Folder Structure:
   After running the script, the generated folder structure will look like this:
   ````bash
   myproject/                     # Root project directory
   ├── env/                       # Virtual environment directory (created by the script)
   ├── myproject/                 # Django project directory
   │   ├── __init__.py            # Marks the directory as a Python package
   │   ├── asgi.py                # ASGI configuration for the project
   │   ├── settings.py            # Main project settings file
   │   ├── urls.py                # URL routing configuration
   │   ├── wsgi.py                # WSGI configuration for deployment
   │   └── __pycache__/           # Compiled Python files
   ├── myapp/                     # Django app directory
   │   ├── migrations/            # Database migration files
   │   │   ├── __init__.py        # Marks the directory as a Python package
   │   │   └── ...                # Auto-generated migration files
   │   ├── __init__.py            # Marks the directory as a Python package
   │   ├── admin.py               # Admin site configuration
   │   ├── apps.py                # App configuration
   │   ├── models.py              # Database models
   │   ├── tests.py               # Automated tests
   │   ├── views.py               # Application logic
   │   └── __pycache__/           # Compiled Python files
   ├── manage.py                  # Django management script
   └── db.sqlite3                 # SQLite database (created after migrations)
