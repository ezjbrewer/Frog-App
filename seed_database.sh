#!/bin/bash

rm db.sqlite3
rm -rf ./frogapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations frogapi
python3 manage.py migrate frogapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens

