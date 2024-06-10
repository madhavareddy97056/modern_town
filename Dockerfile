FROM centos:7
MAINTAINER madhava
LABEL This is for testing pipeline
RUN yum install httpd unzip wget -y
COPY . /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
