ARG VERSION=1.21

FROM nginx:1.21
COPY nginx.conf /etc/nginx/conf.d/default.conf
