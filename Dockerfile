FROM centos:latest
MAINTAINER guptakavita235678@gmail.com
RUN yum install -y httpd \
    Zip \
Unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/pages258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf _MACOSX markups-loxury loxury.zip
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
