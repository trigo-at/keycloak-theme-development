#!/bin/bash
# Run after containers are stopped to remove Volumes (data)

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker-compose -f ${DIR}/../docker-compose.yml down -v
