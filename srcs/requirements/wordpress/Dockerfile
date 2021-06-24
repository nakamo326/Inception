FROM alpine:3.13.5

RUN set -x \
    && apk update \
    && apk add --no-cache \
    php7 \
    php7-fpm \
    php7-json \
    php7-pdo_mysql \
    php7-mysqli \
    php7-mbstring \
    && rm -f /var/cache/apk/*

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf
RUN chmod +r /etc/php7/php-fpm.d/www.conf
COPY ./conf/php.ini /etc/php7/php.ini
RUN chmod +r /etc/php7/php.ini

EXPOSE 9000
EXPOSE 3306

CMD [ "php-fpm7", "-F", "-R" ]
