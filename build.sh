#!/usr/bin/env bash
set -euxo pipefail

for d in $(find -L . -iname '*Dockerfile' | sed 's|^./||' | sed 's|/Dockerfile$||')
do
  tag="acadx0/$d"
  docker build -t "$tag" $d
  docker push "$tag"
done
