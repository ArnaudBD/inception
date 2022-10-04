FROM debian:bullseye

RUN apt-get update; apt-get install -y nginx vim wget php mariadb-client 
RUN apt-get install -y nginx openssl
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
RUN mkdir /etc/nginx/certificate && cd /etc/nginx/certificate && openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key \
-subj "/C=EU/ST=FR/L=Paris/O=42/OU=Student/CN=abiju-du.42.fr"
COPY default /etc/nginx/sites-enabled/
ENTRYPOINT [ "nginx"]
CMD ["-g", "daemon off;"]

# EXPOSE 80