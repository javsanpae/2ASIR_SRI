#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

sudo apt install -y nginx && sudo apt install -y libnginx-mod-rtmp

cat "$(pwd)"/nginx.file >> /etc/nginx/nginx.conf

sudo systemctl restart nginx