#!/usr/bin/env bash

set -euo pipefail

CONTAINER_NAME="localhost/bash-dev-tools:latest"
CONTAINER_BASEDIR="$(dirname "$(dirname "$(readlink -f "$0")")")/container"

pushd "$CONTAINER_BASEDIR"
podman build -t "$CONTAINER_NAME" -f bash.Containerfile .
popd
