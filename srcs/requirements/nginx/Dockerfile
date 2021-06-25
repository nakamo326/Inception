FROM alpine:3.13.5

WORKDIR /tmp/

RUN set -x \
    && apk update \
    && apk add --no-cache \
    nginx \
    wget \
    nss \
    && rm -f /var/cache/apk/*

ARG DOMAIN_NAME

RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64 -O mkcert \
    && chmod 755 mkcert \
    && ./mkcert -install \
    && ./mkcert ${DOMAIN_NAME} \
    && rm ./mkcert

COPY conf/tmpl.conf /tmp/tmpl.conf
RUN eval "echo \"$(cat ./tmpl.conf)\"" > /etc/nginx/conf.d/default.conf \
    && chmod +r /etc/nginx/conf.d/default.conf \
    && mkdir /run/nginx

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]