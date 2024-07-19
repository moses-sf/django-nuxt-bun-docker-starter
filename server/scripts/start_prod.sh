#!/usr/bin/env bash

/root/.local/bin/poetry run python manage.py makemigrations
/root/.local/bin/poetry run python manage.py migrate
/root/.local/bin/poetry run python manage.py collectstatic --no-input
/root/.local/bin/poetry run gunicorn --access-logfile - --workers 4 --bind 0.0.0.0:8000 project.wsgi:application