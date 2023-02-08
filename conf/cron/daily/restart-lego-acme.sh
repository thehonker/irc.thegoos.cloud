#!/bin/bash

set -exu

ACME_CONTAINER_NAME="${ACME_CONTAINER_NAME:-"lego-acme"}"
ACME_CONTAINER_NAME=$(echo "${ACME_CONTAINER_NAME}" | tr -d '"')

echo "Restarting container ${ACME_CONTAINER_NAME}"
/usr/bin/docker restart "${ACME_CONTAINER_NAME}"
