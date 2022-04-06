KEYCLOAK_DB_CONFIGURED_IMAGE := lagoon-keycloak-db-configured
UPSTREAM_REPO ?= uselagoon
UPSTREAM_TAG ?= latest

all: clean build up

build:
	docker-compose build --no-cache

up:
	docker-compose up -d --force-recreate

## once setup has finsihed and a db dump has completed then copy the db down to host
copy-db-to-host:
	docker cp lagoon-keycloak-db-configured_keycloak-db_1:/var/lib/mysql/configured_db.sql .

## only run once dump is avialable
build-publish: copy-db-to-host
	docker build . -t $(KEYCLOAK_DB_CONFIGURED_IMAGE)
	docker tag $(KEYCLOAK_DB_CONFIGURED_IMAGE):$(UPSTREAM_TAG) $(UPSTREAM_REPO)/$(KEYCLOAK_DB_CONFIGURED_IMAGE):$(UPSTREAM_TAG)
	docker push $(UPSTREAM_REPO)/$(KEYCLOAK_DB_CONFIGURED_IMAGE):$(UPSTREAM_TAG) | cat

clean:
	@rm configured_db.sql || true