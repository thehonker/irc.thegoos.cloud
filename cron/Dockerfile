# pin 3.17 via shasum
FROM docker.io/alpine@sha256:93d5a28ff72d288d69b5997b8ba47396d2cbb62a72b5d87cd3351094b5d578a0

RUN set -exu \
  && apk add --no-cache \
    docker-cli \
    bash

ENV ACME_CONTAINER_NAME="lego-acme"

CMD ["crond", "-f"]
