FROM debian:bullseye

RUN apt-get update; apt-get install -y php; apt-get install -y php-fpm vim
RUN apt-get install -y php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip php-bcmath php-imagick php-ldap php-redis php-memcached php-igbinary php-msgpack php-apcu php-geoip php-ssh2 php-ldap php-redis php-memcached php-igbinary php-msgpack php-apcu php-geoip php-ssh2
RUN mkdir /run/php && chown www-data:www-data /run/php && chmod 755 /run/php
RUN ln -sf /dev/stdout /var/log/apache2/access.log \
    && ln -sf /dev/stderr /var/log/apache2/error.log
COPY default /etc/php/7.4/fpm/pool.d/www.conf
ENTRYPOINT [ "php-fpm7.4" ]
CMD ["-F", "-R"]

VOLUME [ "index.php" ]
