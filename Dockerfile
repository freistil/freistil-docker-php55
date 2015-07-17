FROM ubuntu:trusty
MAINTAINER Jochen Lillich <jochen@freistil.it>

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install \
    php-apc \
    php5-cli \
    php5-curl \
    php5-gd \
    php5-mcrypt \
    php5-mysql \
  && apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Image setup scripts
RUN mkdir /docker
ADD docker/ /docker/

# PHP
ENV PHP_UPLOAD_MAX_FILESIZE 10M
ENV PHP_POST_MAX_SIZE 10M

# Boot container
CMD ["/docker/cmd.sh"]
