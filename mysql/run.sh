#!/bin/bash

CONTAINER_NAME=training_mysql
MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=wso2db

# Remove container if exists
docker rm -f ${CONTAINER_NAME}

# Start mysql container with sql scripts
docker run -v "$PWD/sql-scripts":/docker-entrypoint-initdb.d \
  --name ${CONTAINER_NAME} \
  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
  -e MYSQL_DATABASE=${MYSQL_DATABASE} \
  -p 3306:3306 \
  mysql

