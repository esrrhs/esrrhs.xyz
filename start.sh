#! /bin/sh
set -e
cd "$(dirname "$0")"

proxychains4 -q git pull

sudo cp conf/nginx.conf /etc/nginx/nginx.conf
# avoid Ubuntu default site conflicting with our nginx.conf
sudo rm -f /etc/nginx/sites-enabled/default

sudo nginx -t
sudo nginx -s reload
echo "nginx reloaded"
