#! /bin/bash
# php-fpm7.4  &
# PID=&!
sleep 10
# if exist -------------
cd /var/www/wordpress && wp config create --dbuser=abd --dbpass=chut --dbhost=maria_debe --dbname=wordpress --allow-root
cd /var/www/wordpress && wp faitlereste
# kill $PID
exec php-fpm7.4 -F -R
