FROM alpine:3.13.5

RUN set -x \
    && apk update \
    && apk add --no-cache \
    mariadb \
    mariadb-client \
    mariadb-server-utils \
    && rm -f /var/cache/apk/*

COPY ./conf/run.sh /scripts/run.sh
RUN chmod -R 755 /scripts

EXPOSE 3306

CMD [ "/scripts/run.sh" ]
