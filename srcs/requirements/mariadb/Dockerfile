# FROM debian:bullseye-slim
FROM debian:bullseye

RUN apt update && apt install -y --no-install-recommends \
	mariadb-server

# Ensure the mysqld socket directory exists
mkdir -p /run/mysqld
chown mysql:mysql /run/mysqld

COPY ./tools/installer.sh ./
RUN  chmod +x installer.sh
EXPOSE 3306

CMD  ["./installer.sh"]