# Preconfigured Keycloak DB Lagoon Image

This image contains the Lagoon Keycloak MariaDB with a preconfigured Lagoon Realm and other configuration that is used when intially setting up Lagoon Core.

The purpose of this image is make testing Lagoon faster since you now no longer have to wait for the db to be configured in E2E tests.

## Local Dev

```
    make all                # Builds images, runs containers and configures Keycloak

    make build-publish      # Once Keycloak has finished, this will build and publish the final image
```