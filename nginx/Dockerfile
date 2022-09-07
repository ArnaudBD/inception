FROM debian:bullseye

RUN apt-get update; apt-get install -y nginx vim
COPY default /etc/nginx/sites-enabled/
ENTRYPOINT [ "nginx" ]
CMD ["-g", "daemon off;"]

EXPOSE 80