FROM nginx
COPY ./nginx/index.html /usr/share/nginx/html
COPY ./nginx/conf/nginx.conf /etc/nginx/nginx.conf

