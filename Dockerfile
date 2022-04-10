FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/configfile.template

ENV AUTHOR=COMP3916

WORKDIR /usr/share/nginx/html

COPY index.html /usr/share/nginx/html

ENV PORT 8080
EXPOSE 8080

CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
