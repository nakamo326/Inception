FROM debian:stretch

WORKDIR /tmp/

RUN set -x \
    && apt-get update \
    && apt-get install -y wget gnupg

#install latest nginx
RUN echo "deb http://nginx.org/packages/mainline/debian/ stretch nginx" \
        > /etc/apt/sources.list.d/nginx.list \
    && echo "deb-src http://nginx.org/packages/mainline/debian/ stretch nginx" \
        >> /etc/apt/sources.list.d/nginx.list \
    && wget http://nginx.org/keys/nginx_signing.key \
    && apt-key add nginx_signing.key \
    && apt-get update \
    && apt-get install -y nginx

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

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]