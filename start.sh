#! /bin/sh
docker stop my-nginx
docker rm my-nginx
docker run --name my-nginx -p 80:80 -v /home/project/nginx/conf/nginx.conf:/etc/nginx/nginx.conf:ro -v /home/project/nginx/html:/usr/share/nginx/html:ro -d nginx
