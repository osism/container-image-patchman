#!/usr/bin/env bash
set -x

# DO NOT EDIT THIS FILE BY HAND -- FILE IS SYNCHRONIZED REGULARLY

# Available environment variables
#
# DOCKER_REGISTRY
# REPOSITORY
# VERSION

DOCKER_REGISTRY=${DOCKER_REGISTRY:-quay.io}
VERSION=${VERSION:-latest}

if [[ -n $DOCKER_REGISTRY ]]; then
    REPOSITORY="$DOCKER_REGISTRY/$REPOSITORY"
fi

docker push "$REPOSITORY:$VERSION"
docker rmi "$REPOSITORY:$VERSION"
