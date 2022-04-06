#!/usr/bin/env bash
set -eu

echo "Waiting until $DB_ADDR is ready"
until nc -vzw5 "$DB_ADDR" 3306; do
    sleep 1
done

echo "Database is ready"

until docker logs --tail 10 lagoon-keycloak-db-configured_keycloak_1 | grep "Config of Keycloak done.";
do
    printf 'Waiting for keycloak start.sh to finish\n'
    sleep 5
done

docker exec lagoon-keycloak-db-configured_keycloak-db_1 bash -c "mysqldump --quick -h 0.0.0.0 -u $MARIADB_USER -p$MARIADB_PASSWORD -P 3306 $MARIADB_DATABASE > configured_db.sql"
docker cp lagoon-keycloak-db-configured_keycloak-db_1:/var/lib/mysql/configured_db.sql .

echo "Database dump has successfully been processed"