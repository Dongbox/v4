#! /bin/bash

path=`pwd`
echo "Create a container for dongbox website.", $path

docker run -d -p 80:80 --name dongbox \
-v $path/nginx.conf:/etc/nginx/conf.d/default.conf \
dongbox:v1
