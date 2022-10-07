#! /bin/bash
# php-fpm7.4  &
# PID=&!
sleep 10
# if exist -------------
cd /var/www/wordpress
wp user get abd --allow-root --quiet
if [ ! -f 'wp-config.php' ]
then
	echo "wp-config.php does not exist, creating wp-config..."
	wp config create --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=maria_debe --dbname=wordpress --allow-root
fi
wp user get abiju-du --allow-root --quiet
if [ $? -ne 0 ]
then
	wp core install --title="Abiju-du's website" --admin_user=$ADMINUSER --admin_password=$ADMINPASSWORD --admin_email="abiju-du@student.42.fr" --url=abiju-du.42.fr --allow-root
fi
wp user get user --allow-root --quiet
if [ $? -ne 0 ]
then
	wp user create user user@student.42.fr --user_pass="123" --allow-root
fi
# wp plugin install redis-cache is-installed
# wp --path= config set 'variables dans le fichier de config'
# kill $PID
exec php-fpm7.4 -F -R
