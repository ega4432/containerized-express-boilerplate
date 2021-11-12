FROM nginx:1.21.3-alpine
LABEL maintainer="ega4432 <ysmtegsr@gmail.com>"

COPY ./services/nginx/conf.d/*.conf /etc/nginx/conf.d/

CMD [ "nginx", "-g", "daemon off;" ]
