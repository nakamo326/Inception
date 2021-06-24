FROM alpine:3.13.5

WORKDIR /tmp/

RUN set -x \
    && apk update \
    && apk add --no-cache \
    nginx \
    openssl \
    && rm -f /var/cache/apk/*

#make self-signed ssl
RUN openssl req -newkey rsa:4096 \
    -x509 \
    -sha256 \
    -days 3650 \
    -nodes \
    -out server.crt \
    -keyout server.key \
    -subj "/C=JP/ST=tokyo/L=tokyo/O=42tokyo/OU=IT Department/CN=ynakamot"

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf
RUN chmod +r /etc/nginx/conf.d/default.conf

RUN mkdir /run/nginx

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]