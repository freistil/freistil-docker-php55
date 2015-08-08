FROM freistil/base-trusty
MAINTAINER Jochen Lillich <jochen@freistil.it>

# Install packages
RUN /docker/bin/aptinstall \
   php5-cli \
   php5-curl \
   php5-gd \
   php5-mcrypt \
   php5-mysql

# Image setup scripts
ADD docker/ /docker/

# PHP
ENV PHP_UPLOAD_MAX_FILESIZE 10M
ENV PHP_POST_MAX_SIZE 10M

