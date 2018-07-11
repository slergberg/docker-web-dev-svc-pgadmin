#!/usr/bin/env sh

set -x

healthcheck_server() {
  curl --fail http://0.0.0.0:5050 \
    || exit 1
}

healthcheck_server
