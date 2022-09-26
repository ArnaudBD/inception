FROM debian:bullseye

RUN apt-get update; apt-get install -y php; apt-get install -y php-fpm vim wget mariadb-client
RUN apt-get install -y php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip php-bcmath php-imagick php-ldap php-redis php-memcached php-igbinary php-msgpack php-apcu php-geoip php-ssh2 php-ldap php-redis php-memcached php-igbinary php-msgpack php-apcu php-geoip php-ssh2
RUN mkdir /run/php && chown www-data:www-data /run/php && chmod 755 /run/php
RUN ln -sf /dev/stdout /var/log/php7.4-fpm.log
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN wp core download --path=/var/www/wordpress --allow-root
COPY script.sh .
RUN chmod +x script.sh

COPY default /etc/php/7.4/fpm/pool.d/www.conf
# ENTRYPOINT [ "php-fpm7.4" ]
ENTRYPOINT [ "./script.sh" ]
# CMD ["-F", "-R"]
# CMD [ "cd", "/var/www/wordpress", "&&", "wp", "config", "create", "--dbuser=abd", "--dbpass=chut", "--dbhost=maria_debe", "--dbname=wordpress", "--allow-root" ]
# CMD && cd /var/www/wordpress
# CMD && wp config create --dbuser=abd --dbpass=chut --dbhost=maria_debe --dbname=wordpress --allow-root


# VOLUME [ "index.php" ]
