#!/bin/bash

python manage.py rqworker & > rqworker.log
python manage.py runserver 0.0.0.0:8000 & > server.log
wait
