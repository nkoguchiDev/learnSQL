#!/bin/sh

echo MYSQL_ROOT_PASSWORD=password >.env
echo MYSQL_DATABASE=test >>.env

docker-compose up -d
