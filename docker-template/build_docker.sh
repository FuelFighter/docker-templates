#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $DIR/config.sh
docker build -f $DIR/Dockerfile -t $DOCKER_REPOSITORY_NAME $DIR
