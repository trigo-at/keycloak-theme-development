# Keycloak Theme Development

An example development environment setup to build Keycloak themes

## How to get started

### Spin up Keycloak

Start required container (keycloak+postgres) using the follow command:

`./scripts/start.sh`

Access the Administration Console via `http://localhost:8080/auth/`

### (optional) Extract themes

This step is optional, although I strongly suggest extracting the themes from the container.
They are often the only reliable source on how things are implemented.

`./scripts/exportThemes.sh`

Themes are extracted to `./themes/keycloak-provided-themes`.

## Build the Tailwind Example

During development run

`npm run build:tailwind-example:dev`

Before using it in production run

`npm run build:tailwind-example`

(this will use all the optimization features of Tailwind)
