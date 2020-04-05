#!/bin/bash

MYSQL_CONTAINER=training_mysql
MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=wso2db

# Remove container if exists
docker rm -f ${MYSQL_CONTAINER}

# Start mysql container with sql scripts
docker run -v "$PWD/sql-scripts":/docker-entrypoint-initdb.d \
  --name ${MYSQL_CONTAINER} \
  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
  -e MYSQL_DATABASE=${MYSQL_DATABASE} \
  -p 3306:3306 \
  mysql

