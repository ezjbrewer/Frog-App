#!/bin/bash

rm db.sqlite3
rm -rf ./frogapi/migrations
python manage.py migrate
python manage.py makemigrations frogapi
python manage.py migrate frogapi
python manage.py loaddata users
python manage.py loaddata tokens

