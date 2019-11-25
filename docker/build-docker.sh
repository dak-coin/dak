#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-dakpay/dakd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/dakd docker/bin/
cp $BUILD_DIR/src/dak-cli docker/bin/
cp $BUILD_DIR/src/dak-tx docker/bin/
strip docker/bin/dakd
strip docker/bin/dak-cli
strip docker/bin/dak-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
