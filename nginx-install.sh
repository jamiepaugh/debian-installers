#!/bin/bash

# Install prerequisites
apt install gnupg2 certbot python3-certbot-nginx

# Add NGINX's repo
apt-key add nginx_signing.key
echo "deb http://nginx.org/packages/ubuntu focal nginx
deb-src http://nginx.org/packages/ubuntu focal nginx" >> /etc/apt/sources.list

# Install
apt update -y
apt install nginx -y
apt install certbot
apt install python3-certbot-nginx
systemctl enable nginx 
