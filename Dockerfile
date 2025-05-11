FROM nginxinc/nginx-unprivileged:1.23-alpine as final

USER root

COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

USER nginx
