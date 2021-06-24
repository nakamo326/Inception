FROM alpine:3.13.5

WORKDIR /tmp/


RUN set -x \
    && apk update \
    && apk add --no-cache \
    mariadb \
    mariadb-client \
    tini

COPY ./conf/init.sql /tmp/init.sql

# RUN service mysql start \
    # && mysql -u root < init.sql

# EXPOSE 3306

# ENTRYPOINT ["/usr/bin/tini", "--"]

# CMD [ "mysqld_safe" ]
#CMD [ "service", "mysql", "start" ]
