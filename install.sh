#!/bin/bash

apt update -y && apt install nginx certbot python-certbot-nginx -y

cp mainpage /etc/nginx/sites-available/mainpage
ln -s /etc/nginx/sites-available/mainpage /etc/nginx/sites-enabled/mainpage
rm /etc/nginx/sites-enabled/default

mkdir /var/www/cgqaq
cp index.html /var/www/cgqaq/index.html


nginx -s reload
certbot --nginx
