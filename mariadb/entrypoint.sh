#! /bin/bash
mysqld &
PID=$!
sleep 5
mariadb << EOF
CREATE USER abd IDENTIFIED BY 'chut';
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* to abd;
# GRANT ALL PRIVILEGES ON wordpress_c.* to abd;
FLUSH PRIVILEGES;
EOF
kill $PID
exec mysqld