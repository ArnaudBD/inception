FROM debian:bullseye

RUN apt-get update; apt-get install -y nginx vim
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
RUN mkdir /run/nginx && chown www-data:www-data /run/nginx
COPY default /etc/nginx/sites-enabled/
ENTRYPOINT [ "nginx"]
CMD ["-g", "daemon off;"]

VOLUME [ "../wordpress/index.php" ]

EXPOSE 80