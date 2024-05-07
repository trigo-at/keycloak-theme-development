# Keycloak Theme Development

An example development environment setup to build Keycloak themes

## How to get started

### Spin up Keycloak

Start required container (keycloak+postgres) using the follow command:

`docker compose up -d` 

You can proof if the container is running with the command:

`docker ps` 

Access the Administration Console via `http://localhost:8080/`

### (optional) Extract themes

This step is optional, although I strongly suggest extracting the themes from the container.
They are often the only reliable source on how things are implemented.

You can find a couple of helpful scripts in the scripts folder.

The jar can be extracted with this command:

`./scripts/exportThemes.sh`

## Build the Tailwind Example

During development run

`npm run build:tailwind-example:dev`

Before using it in production run

`npm run build:tailwind-example`

(this will use all the optimization features of Tailwind)
