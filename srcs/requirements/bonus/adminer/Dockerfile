FROM alpine:3.13.5

WORKDIR /tmp/

RUN set -x \
    && apk update \
    && apk add --no-cache \
    unit \
    unit-php7 \
    php \
    php7-session \
    php7-mysqli \
    curl \
    && rm -f /var/cache/apk/*

RUN mkdir -p /var/www/html \
    && curl -L https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php \
    > /var/www/html/adminer.php

COPY ./conf/config.json /tmp/config.json
COPY ./conf/adminer.css /var/www/html/adminer.css
RUN unitd \
    && curl -X PUT -d @/tmp/config.json --unix-socket /run/control.unit.sock http://localhost/config \
    && chmod +r /var/www/html/adminer.css

EXPOSE 8300

CMD [ "unitd", "--no-daemon" ]