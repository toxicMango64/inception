FROM debian:bullseye-slim

RUN apt update && apt install -y --no-install-recommends \
	wget mariadb-client php-cgi \
    php-fpm php-zip php-gd php-xml-util php-mysql && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

COPY ./tools/installer.sh ./
RUN chmod +x installer.sh
EXPOSE 9000

CMD [ "./installer.sh" ]
