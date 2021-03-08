FROM alpine

RUN apk add vim
RUN apk add nginx

RUN mkdir -p /run/nginx/

RUN mkdir -p /var/www/html

RUN chown -R nginx.nginx /var/www/html

COPY default.conf  /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
