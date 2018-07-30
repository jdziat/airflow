FROM ubuntu:bionic
LABEL maintainer="jdziat"

RUN apt-get -y update && apt-get install -y apt-utils locales
ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd
RUN mkdir -p /etc/confd/conf.d