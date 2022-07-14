FROM python:3.9

RUN mkdir -p /app
WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt
RUN flask run --host=0.0.0.0 --port=8080
