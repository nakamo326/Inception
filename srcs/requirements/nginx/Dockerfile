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

ARG DOMAIN_NAME
ENV DOMAIN_NAME=/${DOMAIN_NAME}

COPY conf/tmpl.conf /tmp/tmpl.conf
RUN eval "echo \"$(cat ./tmpl.conf)\"" > /etc/nginx/conf.d/default.conf \
    && chmod +r /etc/nginx/conf.d/default.conf \
    && mkdir /run/nginx

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]