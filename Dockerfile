FROM ubuntu:20.04
MAINTAINER "surya@evoke.com"
RUN apt-get update
RUN apt-get install nginx -y
ENV Host surya
RUN rm -rf /var/www/html/index.nginx-debian.html
ADD https://github.com/surya123789/evoketech/blob/master/index.nginx-debian.html /var/www/html
ENTRYPOINT service nginx restart && bash
EXPOSE 80/tcp
WORKDIR /var/www/html
VOLUME /var/www/html
