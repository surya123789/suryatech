FROM ubuntu:20.04
MAINTAINER "surya@evoke.com"
RUN apt-get update
RUN apt-get install nginx -y
ENV Host surya
RUN rm -rf /usr/share/nginx/html/index.html
ADD https://github.com/surya123789/suryatech/blob/master/surya.html /usr/share/nginx/html
ENTRYPOINT service nginx restart && bash
EXPOSE 80/tcp
WORKDIR /var/www/html
VOLUME /var/www/html
