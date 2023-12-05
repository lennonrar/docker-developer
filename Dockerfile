FROM ubuntu:22.04

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y\
    software-properties-common \
    git \
    python3-pip \
    python3-venv \
    tzdata \
    openssh-client

RUN mkdir -p /root/.ssh && \
    chmod 600 /root/.ssh && \
    ssh-keyscan github.com >> /root/.ssh/known_hosts && \
    chmod 600 /root/.ssh/known_hosts


