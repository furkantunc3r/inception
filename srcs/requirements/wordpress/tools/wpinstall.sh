#!/bin/bash

cd /var/www/html

wp core download --allow-root

wp config create --allow-root --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${USER} --dbpass=${DB_PASS} --dbcharset=utf8

wp core install --allow-root --url=https://ftuncer.42.fr --title="Furkan TUNCER" --admin_name=${USER} --admin_password=${ADMIN_PASS} --admin_email=${ADMIN_EMAIL}

wp user create apollo11 apollo11@gmail.com --role=subscriber --user_pass=gizli --description="Space-ship and human" --display_name=APOLLO11 --allow-root 

wp db optimize --allow-root

wp theme install microtype --activate --allow-root

service php7.3-fpm start --allow-root


