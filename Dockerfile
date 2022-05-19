FROM ubuntu:20.04
MAINTAINER "surya@evoke.com"
RUN apt-get update
RUN apt-get install nginx -y
ENV Host surya
ENTRYPOINT service nginx restart && bash
EXPOSE 80/tcp
WORKDIR /var/www/html
VOLUME /var/www/html
