#!/bin/bash

# Install prerequisites
apt install gnupg2 -y

# Add NGINX's repo
wget http://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key
echo "deb http://nginx.org/packages/debian bookworm nginx
deb-src http://nginx.org/packages/debian bookworm nginx" >> /etc/apt/sources.list

# Install
apt update -y
apt install nginx certbot python3-certbot-nginx -y
systemctl enable nginx 
