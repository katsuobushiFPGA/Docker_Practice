FROM            centos:latest
MAINTAINER      RANOCCI
ENV             container docker
RUN             yum update -y && yum clean all
RUN             yum install -y httpd && yum clean all
RUN             echo "Hello Docker!" > /var/www/html/index.html
RUN             systemctl enable httpd
EXPOSE          80