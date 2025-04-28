FROM debian:buster

RUN apt-get update && apt-get install -y \
	mariadb-server && \
	apt-get clean && \
	rm -rf /var/lib/apt-get/lists/*

# Ensure the mysqld socket directory exists
RUN mkdir -p /run/mysqld
RUN chown mysql:mysql /run/mysqld
RUN service mysql start

COPY ./tools/installer.sh ./
RUN  chmod +x installer.sh

EXPOSE 3306

CMD  ["./installer.sh"]
