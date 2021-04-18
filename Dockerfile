FROM centos:latest
MAINTAINER harikrishna
RUN yum install -y httpd \
  zip \
 unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page266/builderz.zip -P /var/www/html/
WORKDIR /var/www/html
RUN unzip builderz.zip
RUN cp -rvf builderz/*
RUN rm -rf builderz builderz.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
