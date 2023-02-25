#!/bin/sh

name = $1
passwd=$2

docker run --name=$name -p 3306:3306 -e MYSQL_ROOT_PASSWORD=passwd -d mysql:8
docker logs $name
docker exec -it $name bash
