#!/bin/bash

docker-compose start rabbitmq
docker-compose start mongodb
sleep 3
docker-compose up
