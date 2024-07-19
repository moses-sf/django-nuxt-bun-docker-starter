#!/usr/bin/env bash

/root/.local/bin/poetry run python manage.py makemigrations
/root/.local/bin/poetry run python manage.py migrate
/root/.local/bin/poetry run python manage.py runserver 0.0.0.0:8000