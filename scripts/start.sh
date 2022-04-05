#!/bin/bash
# Start verify-keycloak image

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker-compose -f ${DIR}/../docker-compose.yml up -p
