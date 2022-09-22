#! /bin/bash
mysqld &
PID=$!
sleep 5
mariadb << EOF
CREATE USER abd IDENTIFIED BY 'chut';
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* to abd;
EOF
kill $PID
exec mysqld