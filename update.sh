#!/bin/bash
 set -e
 cd /var/www/blog
 /usr/local/bin/hugo --minify
 rm -rf /var/www/html/*
 cp -r public/* /var/www/html/
 systemctl reload nginx
 echo "博客更新完成！"
