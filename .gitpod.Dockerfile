FROM jupyter/datascience-notebook:514883dc662a

USER root

COPY ["requirements.txt", "/requirements.txt"]

RUN apt-get -y update && \
    apt-get install -y fonts-noto-cjk &&\
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install -r requirements.txt
