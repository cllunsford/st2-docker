#!/bin/bash

docker-compose scale rabbitmq=1
docker-compose scale mongodb=1
sleep 6
docker-compose up
