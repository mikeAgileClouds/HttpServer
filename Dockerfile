FROM ubuntu:14.04

MAINTAINER Mike

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
