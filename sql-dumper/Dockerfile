FROM tiangolo/docker-with-compose:latest

RUN apk add --no-cache bash

WORKDIR /sql-dumper

ENV DB_ADDR=keycloak-db \
    MARIADB_DATABASE=keycloak \
    MARIADB_USER=keycloak \
    MARIADB_PASSWORD=keycloak \
    MARIADB_CHARSET=utf8 \
    MARIADB_COLLATION=utf8_general_ci

USER root

COPY ./sql-dumper/init_db.sh /scripts/init_db.sh
COPY ./docker-compose.yml Makefile /sql-dumper/

RUN ["chmod", "+x", "/scripts/init_db.sh"]
ENTRYPOINT ["/scripts/init_db.sh"]