#! /bin/bash
# php-fpm7.4  &
# PID=&!
sleep 10
# if exist -------------
cd /var/www/wordpress
wp user get user --allow-root --quiet
if [ $? -ne 0 ]
	then
	wp user create user user@student.42.fr --role=user --allow-root
fi
wp user get abd --allow-root --quiet
if [ ! -f 'wp-config.php' ]
	then
	wp config create --dbuser=abd --dbpass=chut --dbhost=maria_debe --dbname=wordpress --allow-root 
fi
wp user get abiju-du --allow-root --quiet
if [ $? -ne 0 ]
	then
	wp core install --title="Abiju-du's website" --admin_user="abiju-du" --admin_password="123" --admin_email="abiju-du@student.42.fr" --url=abiju-du.42.fr --allow-root
fi
# kill $PID
exec php-fpm7.4 -F -R
