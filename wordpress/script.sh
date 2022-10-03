#! /bin/bash
# php-fpm7.4  &
# PID=&!
sleep 50
# if exist -------------
cd /var/www/wordpress
wp config create --dbuser=abd --dbpass=chut --dbhost=maria_debe --dbname=wordpress --allow-root
# cd /var/www/wordpress && wp user create abiju-du abiju-du@student.42.fr --role=administrator --send-email --porcelain
wp core install --title="Abiju-du's website" --admin_user="abiju-du" --admin_password="123" --admin_email="abiju-du@student.42.fr" --url=abiju-du.42.fr --allow-root  #--url="http://abiju-du.42.fr"
# kill $PID
exec php-fpm7.4 -F -R
