FROM debian:bullseye

RUN apt-get update; apt-get install -y nginx vim wget php mariadb-client
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
COPY default /etc/nginx/sites-enabled/
ENTRYPOINT [ "nginx"]
CMD ["-g", "daemon off;"]

EXPOSE 80