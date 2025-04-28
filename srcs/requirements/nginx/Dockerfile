FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY ./tools/installer.sh ./
RUN  chmod +x installer.sh

COPY ./conf/nginx.conf /etc/nginx/

EXPOSE 443

CMD ["./installer.sh"]
