FROM debian:buster

WORKDIR /tmp/

RUN set -x \
    && apt-get update \
    && apt-get install -y \
    php \
    php-fpm \
    php-pdo \
    php-mysql \
    vim

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN chmod +r /etc/php/7.3/fpm/pool.d/www.conf

RUN mkdir /run/php/

EXPOSE 9000
EXPOSE 3306

CMD [ "php-fpm7.3", "-F", "-R" ]
