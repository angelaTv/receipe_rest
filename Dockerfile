FROM python:3.8-alpine
MAINTAINER Awe

ENV PYTHONUNBUFFERERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

FROM ubuntu
# ...
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install gcc mono-mcs && \
    rm -rf /var/lib/apt/lists/*



RUN mkdir /app
WORKDIR /app
COPY ./app /app



RUN adduser  adduser
USER user
