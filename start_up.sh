#!/bin/sh

docker-compose build
docker-compose run --rm web rails db:migrate:reset
docker-compose up
