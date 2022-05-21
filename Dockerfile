FROM ubuntu:20.04 
MAINTAINER "surya@evoke.com"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-8.5.38.tar.gz /root
COPY /home/ubuntu/surya/gamutgurus.war /root/apache-tomcat-8.5.38/webapps
ENTRYPOINT /root/apache-tomcat-8.5.38/bin/startup.sh && bash
EXPOSE 8080/tcp
