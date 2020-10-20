#!/bin/bash

# 删除创建的网络，若为已有网络，不要随便删除
NET="NC_network"

docker stop NC_redis && docker rm NC_redis
docker stop NC_mariadb && docker rm NC_mariadb
docker stop NC_nextcloud && docker rm NC_nextcloud
docker stop NC_nginx && docker rm NC_nginx

docker network rm $NET
