FROM nginx

ENV AUTHOR=COMP3916

WORKDIR /usr/share/nginx/html

COPY index.html /usr/share/nginx/html

CMD nginx -g 'daemon off;'
