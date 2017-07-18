FROM debian:latest

RUN apt-get update && \
    apt-get -y install vim zsh wget curl git tree rsync openssh-client zip

RUN rm -rf /var/lib/apt/lists/*

RUN wget -qO /root/.zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc

COPY zshrc.local /root/.zshrc.local

RUN mkdir /data

WORKDIR /data

CMD zsh
