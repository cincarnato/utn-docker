FROM python:3.9.7-buster

RUN apt-get update && apt-get install -y \
    python-pip

COPY ./ /app

WORKDIR /app
ENV FLASK_ENV = "development"

RUN python -m pip install -r requirements.txt

CMD [ "python", "./main.py" ]
