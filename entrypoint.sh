#!/bin/bash

python manage.py migrate

python manage.py createsuperuser --no-input

exec gunicorn chatgpt_ui_server.wsgi --timeout 60 --bind 0.0.0.0:8000 --access-logfile -