FROM python:3.8-slim

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get -y install libpq-dev gcc

RUN pip3 install --upgrade pip -r requirements.txt

EXPOSE 5000
