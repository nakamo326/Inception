FROM alpine:3.13.5

RUN set -x \
    && apk update \
    && apk add --no-cache \
    redis \
    && rm -f /var/cache/apk/*

COPY ./conf/redis.conf /etc/redis/redis.conf

EXPOSE 6379

CMD ["/usr/bin/redis-server", "/etc/redis/redis.conf"]