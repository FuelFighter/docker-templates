#!/usr/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $DIR/config.sh
docker run --net=host -it --privileged -v $(realpath $DIR/..):$WORKDIR --name $PROJECT_NAME --rm $DOCKER_REPOSITORY_NAME:latest
