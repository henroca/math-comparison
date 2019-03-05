FROM ruby:latest 

LABEL maintainer="Jefferson Ramos"

WORKDIR /home/app

RUN apt update \
    && apt install -y python3-pip \
    && apt clean \
    && pip3 install sympy