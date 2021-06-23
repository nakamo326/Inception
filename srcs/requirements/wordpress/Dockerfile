FROM debian:stretch

WORKDIR /tmp/

RUN set -x \
    && apt-get update \
    && apt-get install -y \
    php \
    php-fpm \
#    wordpress \
    vim

COPY ./conf/www.conf /etc/php/7.0/fpm/pool.d/www.conf
RUN chmod +r /etc/php/7.0/fpm/pool.d/www.conf

RUN mkdir /run/php/

EXPOSE 9000

CMD [ "php-fpm7.0", "-F", "-R" ]
