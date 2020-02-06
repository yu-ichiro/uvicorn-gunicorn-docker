#!/usr/bin/env bash

set -e
set -x

bash scripts/build-push-all.sh

# disabling auto-pr
# bash scripts/trigger-children.sh
