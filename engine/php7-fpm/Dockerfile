FROM php:7-fpm
#FROM php:7-apache

#MAINTAINER
MAINTAINER Nicolas Bonnet <nicolas.bonnet@maisondeco.com>


#utils to user to debug
RUN apt-get update && apt-get install -y vim
#préférence bash
RUN echo 'alias ll="ls -aslh"' >> ~/.bashrc

#utils php
#RUN apt-get update && \
RUN apt-get install -y libvpx-dev libjpeg62-turbo-dev libpng12-dev libfreetype6-dev libmcrypt-dev libssl-dev

RUN docker-php-ext-configure pdo_mysql && \
    docker-php-ext-configure opcache && \
    docker-php-ext-configure exif && \
    docker-php-ext-configure gd \
    --with-jpeg-dir=/usr/include --with-png-dir=/usr/include --with-jpeg-dir=/usr/include --with-freetype-dir=/usr/include && \
    docker-php-ext-configure sockets && \
    docker-php-ext-configure mcrypt

RUN docker-php-ext-install pdo_mysql opcache exif gd sockets mcrypt && \
    docker-php-source delete && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/*

RUN rm -rf /var/www/html

WORKDIR /var/www/