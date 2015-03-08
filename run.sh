#!/bin/bash

PORT="${1}"

python manage.py migrate

python manage.py runserver 0.0.0.0:${PORT}
