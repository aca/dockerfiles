#!/usr/bin/env bash
set -euxo pipefail

DOCKER_USERNAME=${DOCKER_USERNAME:-acadx0}

for d in $(find -L . -iname '*Dockerfile' | sed 's|^./||' | sed 's|/Dockerfile$||')
do
  tag="$DOCKER_USERNAME/$d"
  docker build -t "$tag" $d
  docker push "$tag"
done
