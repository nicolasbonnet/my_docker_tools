FROM nginx

#MAINTAINER
MAINTAINER Nicolas Bonnet <nicolas.bonnet@maisondeco.com>

#utils to user to debug
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && \
    apt-get install -y vim
#préférence bash
RUN echo 'alias ll="ls -aslh"' >> ~/.bashrc

# Change Nginx config here...
RUN rm /etc/nginx/conf.d/default.conf
ADD ./conf.d/default.conf /etc/nginx/conf.d/

ADD ./index.php /usr/share/nginx/html/

ENV NGINX_LOG /var/log/nginx

#conf of presta
COPY ./conf.d/presta_test.conf /etc/nginx/conf.d/presta_test.conf

#give right to www-data
RUN mkdir /var/www && chown -R www-data:www-data /var/www