#! /bin/sh
git pull
docker stop my-nginx
docker rm my-nginx
docker run --name my-nginx --restart=always -p 80:80 -v /home/project/esrrhs.xyz/conf/nginx.conf:/etc/nginx/nginx.conf:ro -v /home/project/esrrhs.xyz/html:/usr/share/nginx/html:ro -d nginx:latest
