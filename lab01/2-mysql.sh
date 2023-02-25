#!/bin/sh

name1=$1
name2=$2
passwd=$3
docker run --name=$name1 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=passwd -d mysql:8
docker run --name=$name2  -p 82:80 --link $name1:$name1 -d phpmyadmin
docker logs $name1
docker exec -it $name1 bash



