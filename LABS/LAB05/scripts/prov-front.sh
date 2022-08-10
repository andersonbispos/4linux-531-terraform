#/usr/bin/env bash

sudo apt-get update

sudo apt-get install nginx -y

sudo cat <<EOF > /etc/nginx/conf.d/lb.conf
upstream webfront {
server web1;
server web2;
}

server {
listen 80;

location / {
    proxy_pass http://webfront;
}
}
EOF

sudo rm -f /etc/nginx/sites-enabled/default

sudo systemctl restart nginx