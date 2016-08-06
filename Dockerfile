FROM ubuntu:xenial
RUN apt-get update
RUN apt-get install -y git python python-pip libffi-dev libssl-dev dialog && \
                       rm -rf /var/lib/apt/lists/*
WORKDIR /home/
RUN git clone https://github.com/sjerdo/letsencrypt-directadmin.git
WORKDIR /home/letsencrypt-directadmin
RUN python setup-directadmin.py develop
WORKDIR /home/