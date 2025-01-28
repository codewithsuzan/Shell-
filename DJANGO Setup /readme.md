# Django Project Setup Script

This script automates the setup of a basic Django project and an app, streamlining the process of starting a new Django development environment.

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
- Python 3.x
- `pip` (Python package manager)
- `venv` module (comes with Python 3.x)
- Bash shell (Linux, macOS, or WSL for Windows)

## Usage

1. **Clone or Download the Script**  
   Save the script as `django_setup.sh` in your desired folder.

2. **Make the Script Executable**  
   Open a terminal and run:
   ```bash
   chmod +x django_setup.sh
