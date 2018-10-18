# setting base image
FROM centos:centos7

# Author
MAINTAINER pppurple

# install Apache http server
RUN ["yum",  "-y", "install", "httpd"]

# start httpd
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]