FROM uselagoon/keycloak-db

COPY ./configured_db.sql /docker-entrypoint-initdb.d/