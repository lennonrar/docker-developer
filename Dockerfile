FROM ubuntu:22.04

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y\
    software-properties-common \
    git \
    python3-pip \
    python3-venv \
    tzdata \
    django-cors-header

