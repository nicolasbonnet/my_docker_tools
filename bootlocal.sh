#/var/lib/boot2docker
#/var/lib/boot2docker/bootlocal.sh
curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /var/lib/boot2docker/docker-compose
cp /var/lib/boot2docker/docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

alias composer='docker run -ti --rm -v $(pwd):/app composer/composer'
