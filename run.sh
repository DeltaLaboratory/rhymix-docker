service php7.4-fpm start
service nginx start
echo "[Docker Manager : Info] Started" > /var/log/nginx/log.log
tail -f /var/log/nginx/log.log