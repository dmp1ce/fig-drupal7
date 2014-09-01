#!/bin/bash
/usr/bin/sed -i "s/<php-fpm-ip>/${PHP_1_PORT_9000_TCP_ADDR}/" /etc/nginx/nginx.conf
/usr/bin/sed -i "s/<php-fpm-port>/${PHP_1_PORT_9000_TCP_PORT}/" /etc/nginx/nginx.conf

echo "Starting nginx"
nginx
