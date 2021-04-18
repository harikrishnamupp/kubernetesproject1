FROM centos:latest
MAINTAINER harikrishna
RUN yum install -y httpd \
  zip \
 unzip
WORKDIR /var/www/html
RUN yum -y install wget
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page266/builderz.zip -P /var/www/html/
RUN unzip /var/www/html/builderz.zip
RUN cp -rvf construction-company-website-template/* .
RUN rm -rf construction-company-website-template builderz.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
