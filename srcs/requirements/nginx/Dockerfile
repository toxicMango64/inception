FROM debian:bullseye-slim

RUN apt update && apt install -y --no-install-recommends nginx
COPY ./tools/installer.sh ./
COPY ./conf/nginx.conf /etc/nginx/
RUN  chmod +x installer.sh
EXPOSE 443

CMD ["./installer.sh"]