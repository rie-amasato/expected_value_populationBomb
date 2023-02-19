FROM python:3.7

USER root

COPY ["requirements.txt", "/requirements.txt"]

RUN pwd
RUN apt-get -y update && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install -r requirements.txt
