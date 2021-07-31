wget -O /etc/nginx/snippets/rhymix.conf https://raw.githubusercontent.com/rhymix/rhymix/master/common/manual/server_config/rhymix-nginx.conf
rm /etc/nginx/sites-enabled/default
wget -O /etc/nginx/sites-enabled/default https://cdn.deltalab.dev/docker/rhymix/nginx.conf