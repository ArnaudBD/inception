FROM debian:bullseye

RUN apt-get update; apt-get install -y mariadb-server
RUN mkdir -p /run/mysqld && chown mysql:mysql /run/mysqld
RUN chown mysql:mysql /var/lib/mysql
RUN sed -i 's+127.0.0.1+0.0.0.0+g' /etc/mysql/mariadb.conf.d/50-server.cnf

# RUN  service mysql start && mariadb -u root < /var/lib/mysql/init.sql

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]