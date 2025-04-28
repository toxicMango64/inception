#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/CAR.key \
 -out /etc/ssl/certs/CAR.crt \
 -subj="/CN=myousaf/O=myousaf.42.fr/C=AE/L=ABUDHABI"

echo "<h1>hello world</h1>" > /var/www/html/index.html

nginx -g "daemon off;"
