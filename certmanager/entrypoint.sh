#!/bin/bash

set -exu

# defaults
CERTS_DIR="${CERTS_DIR:-"/certs"}"
IRCD_CONTAINER_NAME="${IRCD_CONTAINER_NAME:-"inspircd"}"
IRCD_REHASH_SIGNAL="${IRCD_REHASH_SIGNAL:-"SIGUSR1"}"

CERTS_DIR=$(echo "${CERTS_DIR}" | tr -d '"')
IRCD_CONTAINER_NAME=$(echo "${IRCD_CONTAINER_NAME}" | tr -d '"')
IRCD_REHASH_SIGNAL=$(echo "${IRCD_REHASH_SIGNAL}" | tr -d '"')

# setup our inotifywait
/usr/bin/inotifywait --monitor --event modify --recursive "${CERTS_DIR}" | \
while read -r path; do
  echo "Certs changed on disk: ${path}"
  echo "Skipping $(timeout 2 cat | wc -l) further changes"
  /usr/bin/docker kill --signal="${IRCD_REHASH_SIGNAL}" "${IRCD_CONTAINER_NAME}"
done
