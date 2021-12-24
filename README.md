# DCS statistics site

### Install

1. Setup docker and docker-compose;
2. Setup DB connection in env.dev;

Run command:\
`sudo docker-compose build`\
`sudo docker-compose up -d`

### Startup dev version

1. Import dump file dump/dcs_dump_2021-12-19.sql to postgres

Run command:\
Setup virtual environment\
`pyhton -m venv venv`\
Turn on vitual environment\
`. venv/bin/activate`
Install packages\
`python -m pip install -r requirements.txt`
Run app\
`env.sh&&flask run`
