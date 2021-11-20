FROM python:3.8-buster
WORKDIR /ai-contest
COPY requirements.txt .
RUN pip install -r ./requirements.txt
COPY . .
RUN python manage.py migrate ContestAdmin
RUN python manage.py migrate
RUN python manage.py initdata
ENTRYPOINT ["./run_script.sh"]
