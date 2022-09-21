# !/bin/bash
mysqld << EOF
CREATE USER abd IDENTIFIED BY 'chut';
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* to abd;
EOF