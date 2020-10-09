#!/bin/bash
#
set -e

docker builder build --rm -t apt-mirror:latest .
docker builder build --rm -t nginx-mirror:latest -f ./Dockerfile-nginx .

docker network rm mirror
docker network create mirror

docker-compose up -d