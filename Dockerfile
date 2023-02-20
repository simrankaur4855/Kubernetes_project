FROM centos:latest
MAINTAINER simrankaur.18021998@gmail.com
RUN yum install httpd -y \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/webuild.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip webuild.zip
RUN cp -rvf webuild/* .
RUN rm -rf webuild webuild.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80