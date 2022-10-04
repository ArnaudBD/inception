#! /bin/bash
# php-fpm7.4  &
# PID=&!
sleep 50
# if exist -------------
cd /var/www/wordpress
wp config create --dbuser=abd --dbpass=chut --dbhost=maria_debe --dbname=wordpress --allow-root 
wp user create abiju-du user@student.42.fr --role=user --allow-root 
wp core install --title="Abiju-du's website" --admin_user="abiju-du" --admin_password="123" --admin_email="abiju-du@student.42.fr" --url=abiju-du.42.fr --allow-root  
# kill $PID
exec php-fpm7.4 -F -R
