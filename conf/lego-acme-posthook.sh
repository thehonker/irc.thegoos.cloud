#!/bin/sh

set -exu

# set perms/ownership such that inspircd can read certs
chown -R 0:10000 /certs/certificates
chmod -R 750 /certs/certificates
