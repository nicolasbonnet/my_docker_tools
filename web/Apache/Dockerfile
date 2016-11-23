#FROM debian:jessie
FROM nicolasbonnet/debian:latest

#MAINTAINER
MAINTAINER Nicolas Bonnet <nicolas.bonnet@maisondeco.com>

LABEL version="1.0"
LABEL description="front web based on debian jessie"

RUN echo 'alias ll="ls -aslh"' >> ~/.bashrc

#install dev tools
RUN apt-get update && apt-get install -y vim wget

#add some sources
RUN echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list && \
    echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list && \
    wget https://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg

RUN apt-get update && apt-get -y install apache2 && apt-get clean && rm -rf /var/lib/apt/lists/* && apt-get -qy autoremove

# Remove default VirtualHost
RUN rm -rf /etc/apache2/sites-enabled/* /etc/apache2/sites-available/* /var/www/html

#copy special conf
COPY ./conf.d/httpd.conf /etc/apache2/conf.d/httpd.conf
#copy vhost for prestashop
COPY ./sites-enabled/presta_test.conf /etc/apache2/sites-enabled/
COPY ./sites-available/000-default.conf /etc/apache2/sites-available/
COPY ./sites-available/default-ssl.conf /etc/apache2/sites-available/

#enable ssl
RUN /usr/sbin/a2ensite default-ssl
RUN /usr/sbin/a2enmod ssl
# Enable rewrite module
RUN a2enmod rewrite&& \
 	a2enmod proxy && \
 	a2enmod proxy_fcgi

RUN a2enmod actions alias

# Configure Apache2
ENV APACHE_RUN_USER     www-data
ENV APACHE_RUN_GROUP    www-data
ENV APACHE_LOG_DIR      /var/log/apache2

COPY ./index.html /var/www/
WORKDIR /var/www

# Expose ourselves
EXPOSE 80
EXPOSE 443

# Run!
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
