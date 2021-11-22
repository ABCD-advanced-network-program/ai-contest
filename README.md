# AI Contest

## Installation and running instructions

### Development Environment

- Install redis, there're 2 ways:
  - Install and run redis manually, see [more](https://redis.io/topics/quickstart)
  - Otherwise, if you installed Docker, you can run command `docker-compose -f ./docker-compose.dev.yml up`
- Install packages, initialize data

```
pip install -r ./requirements.txt # install dependencies
python manage.py migrate ContestAdmin  # run migrations for self-defined tables
python manage.py migrate # run migrations for django tables
python manage.py initdata # initialize data
```

- Create environment file `.env` in root of project with content

```
REDIS_HOST=localhost
```

or excute command bellow (in Linux)

```
echo "REDIS_HOST=localhost" > .env
```

- Run server

```
python manage.py runserver
```

- Open new terminal window and run command bellow

```
python manage.py rqworker
```

- Now, you can access with url: `http://localhost:8000`

### Production Environment

- Create environment file `.env` in root of project with content

```
REDIS_HOST=redis
```

or excute command bellow (in Linux)

```
echo "REDIS_HOST=redis" > .env
```

- Run docker

```
docker-compose -f ./docker-compose.prod.yml up
```
