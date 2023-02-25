#!/bin/bash

name=$1
port=$2
images=$3
pwd_file_local=$4
pwd_directory_content=$5

docker run --name $name -d -p $port:80 $images
docker cp $pwd_file_local $name:$pwd_directory_content
