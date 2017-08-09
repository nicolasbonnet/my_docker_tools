FROM php:5.6-apache
MAINTAINER Nicolas BONNET <nicolas.bonnet07@gmail.com>

#install tools
RUN docker-php-ext-install pdo_mysql mysqli
RUN apt-get update && apt-get install -y curl git
#install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#config php &&
COPY ./yourhost.com.conf  /etc/apache2/sites-available/
COPY php.ini /usr/local/etc/php/
RUN a2enmod rewrite

#personnalization .bashrc
RUN echo 'alias ll="ls -alsh"' >> /root/.bashrc

#install xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini

#install nodejs to manage javascript tools (elexir, gilpjs ...)
apt-get install -y nodejs npm

#VOLUME /var/www/html
#add right to host to write files
RUN usermod -u 1000 www-data
RUN chown -R 1000:www-data /var/www/html

RUN service apache2 restart
WORKDIR /var/www/html
RUN a2ensite yourhost.com.conf 