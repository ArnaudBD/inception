FROM debian:bullseye

RUN apt-get update; apt-get install -y mariadb-server
RUN mkdir /run/mysqld && chown mysql:mysql /run/mysqld
RUN sed -i 's+127.0.0.1+0.0.0.0+g' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
# ENTRYPOINT ["bash", "entrypoint.sh"]
# ENTRYPOINT ["mysqld"]
ENTRYPOINT ["./entrypoint.sh"]