from ubuntu:14.04

MAINTAINER rockets "rockets.fang@gmail.com"

ENV CATALINA_BASE /var/lib/tomcat7
ENV CATALINA_HOME /usr/share/tomcat7

RUN apt-get update && apt-get install -y openssh-server curl tomcat7 && mkdir -p /var/run/sshd

RUN echo "root:123456" | chpasswd

