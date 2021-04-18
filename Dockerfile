FROM ubuntu:16.04
MAINTAINER harikrishna
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/builderz.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip builderz.zip .
RUN cp -rvf builderz/*
RUN rm -rf builderz builderz.zip
CMD /usr/sbin/apache2ctl -D FOREGROUND
EXPOSE 80
