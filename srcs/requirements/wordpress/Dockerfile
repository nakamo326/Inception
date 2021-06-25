FROM alpine:3.13.5

RUN set -x \
    && apk update \
    && apk add --no-cache \
    php7 \
    php7-fpm \
    php7-curl \
    php7-dom \
    php7-exif \
    php7-fileinfo \
    php7-pecl-imagick \
    php7-json \
    php7-mbstring \
    php7-mysqli \
    php7-openssl \
    php7-sodium \
    php7-xml \
    php7-zip \
    php7-pdo_mysql \
    && rm -f /var/cache/apk/*

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf
COPY ./conf/php.ini /etc/php7/php.ini
COPY ./conf/wp-conf-tmpl.php /tmp/wp-conf-tmpl.php
COPY ./tools/run.sh /scripts/run.sh
RUN chmod +r /etc/php7/php-fpm.d/www.conf \
    && chmod +r /etc/php7/php.ini \
    && chmod +r /tmp/wp-conf-tmpl.php \
    && chmod -R 755 /scripts

EXPOSE 9000
EXPOSE 3306

CMD [ "/scripts/run.sh" ]
