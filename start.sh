#! /bin/sh
proxychains4 git pull
cp conf/nginx.conf /etc/nginx/nginx.conf
nginx -s reload

