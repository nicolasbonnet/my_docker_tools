FROM php:5.6-apache
MAINTAINER Nicolas BONNET <nicolas.bonnet07@gmail.com>

RUN docker-php-ext-install pdo_mysql mysqli
COPY ./yourhost.com.conf  /etc/apache2/sites-available/
COPY php.ini /usr/local/etc/php/
#RUN a2enmod rewrite 

RUN service apache2 restart
WORKDIR /etc/apache2/sites-available/
RUN a2ensite yourhost.com.conf 