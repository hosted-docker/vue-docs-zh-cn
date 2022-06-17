FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

ADD dist  /usr/share/nginx/html/mirror/vue3

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
