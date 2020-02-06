#!/usr/bin/env bash

set -e

use_tag="yuichiroluke/uvicorn-gunicorn:$NAME"
[[ "$(uname -s)" != "Darwin" ]]&&use_dated_tag="${use_tag}-$(date -I)"
[[ "$(uname -s)" == "Darwin" ]]&&use_dated_tag="${use_tag}-$(date +%F)"

docker build -t "$use_tag" "$BUILD_PATH"

docker tag "$use_tag" "$use_dated_tag"

docker push "$use_tag"
docker push "$use_dated_tag"
