FROM debian:bullseye-slim

RUN apt update && apt install -y --no-install-recommends mariadb-server

COPY ./tools/installer.sh ./
RUN  chmod +x installer.sh
EXPOSE 3306

CMD  ["./installer.sh"]