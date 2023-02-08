# irc.thegoos.cloud

## Initial setup

- Clone the repo

- Run `docker compose up -d traefik lego-acme && docker compose logs -f`, let it acquire certs for the first time

- Spam ^c 3 times to exit compose log viewer

- Run `docker compose down`

- Run `docker compose up -d --build --force-recreate`

- Done
