FROM debian:jessie

#MAINTAINER
MAINTAINER Nicolas Bonnet <nicolas.bonnet@maisondeco.com>

LABEL version="1.0"
LABEL description="base debian for other container"

RUN echo 'alias ll="ls -aslh"' >> ~/.bashrc

#install dev tools
RUN apt-get update && apt-get install -y vim wget && \
    apt-get upgrade -qy && apt-get dist-upgrade -yq
