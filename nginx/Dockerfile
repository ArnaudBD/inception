FROM debian:bullseye

RUN apt-get update; apt-get install -y nginx vim wget php mariadb-client
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
# RUN wget https://fr.wordpress.org/wordpress-6.0.2-fr_FR.tar.gz && tar -xvf wordpress-6.0.2-fr_FR.tar.gz && rm wordpress-6.0.2-fr_FR.tar.gz && mv wordpress /var/www/wordpress
COPY default /etc/nginx/sites-enabled/
ENTRYPOINT [ "nginx"]
CMD ["-g", "daemon off;"]

# VOLUME [ "../wordpress/index.php" ]

EXPOSE 80