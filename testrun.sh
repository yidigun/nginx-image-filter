#!/bin/sh

exec docker run -d \
  --name nginxif \
  -p 20080:80/tcp \
  -v `pwd`/etc/nginx:/etc/nginx \
  -v `pwd`/test/00_upstream.conf:/etc/nginx/conf.d/00_upstream.conf \
  -v `pwd`/test/html:/var/www/html \
  nginx:latest
