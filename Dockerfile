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
EXPOSE 80 22




# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/photoprowess.zip /var/www/html
  WORKDIR /var/www/html/
#  RUN unzip shine.zip
#  RUN cp -rvf shine/* .
#  RUN rm -rf shine shine.zip
#  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#  EXPOSE 80