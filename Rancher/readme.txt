docker run -ti -d --restart=always -e MYSQL_ROOT_PASSWORD=password \
-e MYSQL_DATABASE=cattle -e MYSQL_USER=cattle -e MYSQL_PASSWORD=cattle -p 3306:3306 mariadb


docker run -d -p 8080:8080 \
-e CATTLE_DB_CATTLE_MYSQL_HOST=127.0.0.1 \
-e CATTLE_DB_CATTLE_MYSQL_PORT=3306 \
-e CATTLE_DB_CATTLE_MYSQL_NAME=cattle \
-e CATTLE_DB_CATTLE_USERNAME=cattle \
-e CATTLE_DB_CATTLE_PASSWORD=cattle \
-v /var/run/docker.sock:/var/run/docker.sock \
rancher/server

????
echo '192.168.99.101 index.docker.io' >> /etc/hosts
echo '192.168.99.101 registry-1.docker.io' >> /etc/hosts
