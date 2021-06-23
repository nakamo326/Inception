FROM debian:buster

WORKDIR /tmp/

RUN set -x \
    && apt-get update \
    && apt-get install -y \
    mariadb-server \
    tini

COPY ./conf/init.sql /tmp/init.sql

RUN service mysql start \
    && mysql -u root < init.sql

EXPOSE 3306

ENTRYPOINT ["/usr/bin/tini", "--"]

CMD [ "mysqld_safe" ]
#CMD [ "service", "mysql", "start" ]
