#!/bin/bash

set -exu

sudo chown 10000:10000 docker/inspircd/conf
sudo chown 10000:10000 docker/inspircd/data
sudo chown 10000:10000 docker/inspircd/logs
