#!/bin/bash

cd /var/www/html

wp core download --allow-root

wp config create --allow-root --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${USER} --dbpass=${DB_PASS} --dbcharset=utf8

wp core install --allow-root --url=https://localhost --title="Furkan TUNCER" --admin_name=${USER} --admin_password=${ADMIN_PASS} --admin_email=${ADMIN_EMAIL}
wp theme install microtype --activate --allow-root

service php7.3-fpm start --allow-root


