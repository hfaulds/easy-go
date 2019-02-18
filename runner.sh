#!/bin/sh

set -e

echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin

image="$DOCKER_USERNAME/$ACTION_CACHE_NAME"

if [ -n "$1" ]; then
  cd $1
fi

echo "Building Action"
docker pull "$image" &>/dev/null || true
docker build --file /build/Dockerfile -t "$image" --cache-from "$image" .
docker push "$image"
docker run "$image"
