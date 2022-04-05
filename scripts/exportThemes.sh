#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo ${DIR}

rm -rf ${DIR}/../themes/keycloak-provided-themes
mkdir -p ${DIR}/../themes/

docker cp $jar $(docker ps | grep keycloak_dev_keycloak_1 | cut -d' ' -f1):/opt/jboss/keycloak/themes ${DIR}/../themes/keycloak-provided-themes
