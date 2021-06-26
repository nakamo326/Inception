FROM alpine:3.13.5

WORKDIR /tmp/

RUN set -x \
    && apk update \
    && apk add --no-cache \
    nginx \
    && rm -f /var/cache/apk/*

COPY conf/tmpl.conf /etc/nginx/conf.d/default.conf
RUN chmod +r /etc/nginx/conf.d/default.conf \
    && mkdir /run/nginx

COPY conf/document /var/www/document

EXPOSE 8888

CMD ["nginx", "-g", "daemon off;"]