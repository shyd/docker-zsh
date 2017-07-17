FROM debian:latest

RUN apt-get update && \
    apt-get -y install vim zsh wget

RUN wget -qO /root/.zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc

CMD zsh
