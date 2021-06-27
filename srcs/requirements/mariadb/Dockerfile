FROM alpine:3.13.5

RUN set -x \
    && apk update \
    && apk add --no-cache \
    mariadb \
    mariadb-client \
    mariadb-server-utils \
    && rm -f /var/cache/apk/*

WORKDIR /tmp/

ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_CHARSET
ARG MYSQL_COLLATION

COPY ./tools/run.sh /tmp/init.sh
RUN chmod 755 /tmp/init.sh \
    && /tmp/init.sh

EXPOSE 3306

ENTRYPOINT [ "/usr/bin/mysqld", "--user=mysql", "--console", "--skip-name-resolve", "--skip-networking=0" ]
