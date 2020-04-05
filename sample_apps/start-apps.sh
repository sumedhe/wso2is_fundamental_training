#!/bin/bash

SAMPLE_APPS_CONTAINER=sample_apps

docker run -ti --rm \
    -p 8080:8080 \
    -v "$(pwd)"/webapps:/usr/local/tomcat/webapps \
    --name ${SAMPLE_APPS_CONTAINER} \
    tomcat:latest

