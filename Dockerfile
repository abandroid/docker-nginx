FROM nginx:1.25.3-alpine3.18

RUN apk add --no-cache certbot certbot-nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD ssl /etc/nginx/ssl

CMD ["nginx"]

WORKDIR /var/www/html

EXPOSE 80 443
