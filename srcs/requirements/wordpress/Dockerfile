FROM alpine:3.13.5

RUN set -x \
    && apk update \
    && apk --no-cache add \
    php \
    php-fpm \
    php-pdo \
    php7-mysqli

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf
RUN chmod +r /etc/php7/php-fpm.d/www.conf

RUN mkdir /run/php/

EXPOSE 9000
EXPOSE 3306

CMD [ "php-fpm7", "-F", "-R" ]
