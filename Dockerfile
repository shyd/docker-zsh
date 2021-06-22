FROM debian:latest

RUN apt update && \
    apt -y install curl

ENV TERM=xterm-256color

RUN curl https://raw.githubusercontent.com/shyd/dotfiles/main/run-once.sh | bash

RUN rm -rf /var/lib/apt/lists/*

RUN mkdir /data

WORKDIR /data

CMD zsh
