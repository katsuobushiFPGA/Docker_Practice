FROM amazonlinux

#remove AmazonLinux default php & httpd
RUN yum -y remove httpd*
RUN yum -y remove php-*
RUN yum clean all

# Install & Add repo
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

#yum update
RUN yum update -y

# Install Apache2.4
RUN yum install -y httpd httpd-devel

# Install PHP7.0
#RUN yum -y --enablerepo=remi,remi-php56 install php56 php56-php-devel php56-php-mbstring php56-php-mcrypt php56-php-mysqlnd php56-php-pdo php56-php-intl php56-runtime php56-build
RUN yum -y install php71 php71-php-devel php71-php-fpm php71-php-intl php71-php-mysql php71-php-mysqlnd php71-php-mbstring php71-php-pdo php71-php-xml php71-php-zip

#add symboliclink
RUN ln -s /usr/bin/php71 /usr/bin/php

# Clear yum cache
RUN yum clean all

# for web
EXPOSE 80
EXPOSE 443

CMD /usr/sbin/httpd -DFOREGROUND

RUN systemctl enable httpd.service