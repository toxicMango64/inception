FROM debian:buster

RUN apt-get update && apt-get install -y \
	wget curl ca-certificates mariadb-client php-cgi \
	php-fpm php-zip php-gd php-xml-util php-mysql && \
	apt-get clean && \
	rm -rf /var/lib/apt-get/lists/*

COPY ./tools/installer.sh ./
RUN chmod +x installer.sh
EXPOSE 9000

CMD [ "./installer.sh" ]

# apt-utils