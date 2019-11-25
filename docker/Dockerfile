FROM debian:stretch
LABEL maintainer="Dak Developers <dev@dak.org>"
LABEL description="Dockerised DakCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
