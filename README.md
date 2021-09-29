# AI Contest
## Build
* Install redis, you can find installation document on the internet. If you installed Docker, you can run command `docker-compose up` (run with sudo if your OS is Linux)
* Run commands
```
pip install -r ./requirements.txt
python manage.py runserver
```
* Open new terminal window and run. Before this step, your Redis should be run smoothly
```
python manage.py rqworker
```
* Now, you can access with url: `http://localhost:8000`
