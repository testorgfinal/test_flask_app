FROM python:3.9
ARG FLASK_APP

RUN mkdir -p /app
WORKDIR /app
COPY . /app

ENV FLASK_APP=${FLASK_APP}
RUN pip install -r requirements.txt
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
