#! /bin/bash
mysqld &
PID=$!
sleep 5
mariadb << EOF

ALTER USER 'root'@'localhost' IDENTIFIED BY 'pass';

# USE mysql;

# CREATE DATABASE IF NOT EXISTS db_name;
# CREATE USER 'db_user'@'%' IDENTIFIED BY 'db_user_pass';
# GRANT ALL PRIVILEGES ON . TO 'db_user'@'%';

# ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_pass';
# FLUSH PRIVILEGES;

CREATE USER abd IDENTIFIED BY 'chut';
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* to abd;
FLUSH PRIVILEGES;
EOF
kill $PID
exec mysqld