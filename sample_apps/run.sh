#!/bin/bash

APPNAME=sample_app

docker run -ti --rm \
    -p 8080:8080 \
    -v "$(pwd)"/webapps:/usr/local/tomcat/webapps \
    --name ${APPNAME} \
    tomcat:latest

