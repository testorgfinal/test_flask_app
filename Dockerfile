FROM python:3.9

RUN pip install -r requirements.txt
RUN flask run --host=0.0.0.0 --port=8080
