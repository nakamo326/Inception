FROM alpine:3.13.5

WORKDIR /tmp/

RUN set -x \
    && apk update \
    && apk add --no-cache \
    curl \
    php7 php7-phar php7-fpm \
    php7-curl php7-dom php7-exif \
    php7-fileinfo php7-pecl-imagick php7-json \
    php7-mbstring php7-mysqli php7-openssl php7-sodium \
    php7-xml php7-zip php7-pdo_mysql \
    && rm -f /var/cache/apk/*

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG ADMIN_USER
ARG ADMIN_MAIL
ARG ADMIN_PASS
ARG AUTHOR_USER
ARG AUTHOR_MAIL
ARG AUTHOR_PASS

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf
COPY ./conf/php.ini /etc/php7/php.ini
COPY ./conf/wp-conf-tmpl.php /tmp/wp-conf-tmpl.php
COPY ./tools/init_wp.sh /tmp/init_wp.sh
RUN chmod +r /etc/php7/php-fpm.d/www.conf \
    && chmod +r /etc/php7/php.ini \
    && chmod +x /tmp/init_wp.sh \
    && sh init_wp.sh


EXPOSE 9000
EXPOSE 3306

CMD [ "php-fpm7", "-F", "-R" ]
