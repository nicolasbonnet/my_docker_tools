FROM prestashop/prestashop:1.6

MAINTAINER Nicolas BONNET <nicolas.bonnet07@gmail.com>

RUN usermod -u 1000 www-data
RUN echo 'alias ll="ls -alsh"' >> ~/.bashrc

WORKDIR /var/www/html

CMD ["/tmp/docker_run.sh"]