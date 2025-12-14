#!/bin/bash
apt update -y
apt install apache2 -y
systemctl start apache2

cat <<EOF > /var/www/html/index.html
<h1>3-Tier E-Commerce Website</h1>
<p>Web Tier - Apache Server</p>
EOF
