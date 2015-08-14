#!/bin/bash

#trap _on_exit EXIT

docker-compose build
docker-compose start rabbitmq
docker-compose start mongodb
sleep 3
docker-compose up
