FROM nginx:1.23.2

RUN apt-get update && apt-get install -y vim nano python3-certbot-nginx --fix-missing

ADD nginx.conf /etc/nginx/nginx.conf
ADD ssl /etc/nginx/ssl

RUN usermod -u 1000 www-data

CMD ["nginx"]

WORKDIR /var/www/html

EXPOSE 80 443
