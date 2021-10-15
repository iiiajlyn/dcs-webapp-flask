FROM python:3.8-slim

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN pip3 install --upgrade pip -r requirements.txt

EXPOSE 5000

CMD ["flask", "run"]
