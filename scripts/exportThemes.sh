#!/bin/bash

# Determine the path of the current script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo ${DIR}

# Remove the existing themes directory
rm -rf ${DIR}/../themes/keycloak-provided-themes

# Create the directory for the themes
mkdir -p ${DIR}/../themes/keycloak-provided-themes

# Determine the name of the JAR file
JAR_FILE="org.keycloak.keycloak-themes-24.0.2.jar"

# Determine the Container ID of the running Keycloak container
CONTAINER_ID=$(docker ps | grep quay.io/keycloak/keycloak:24.0.2 | awk '{print $1}')

# Copy the JAR file from the container to the target directory
docker cp ${CONTAINER_ID}:/opt/keycloak/lib/lib/main/${JAR_FILE} ${DIR}/../themes/keycloak-provided-themes