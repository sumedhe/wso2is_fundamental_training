#!/bin/bash

# Create network if not exists
docker network create --driver bridge training_net || true

# Remove container if exists
docker rm -f wso2apps.com || true

# Create and run new wso2apps container
docker run -it \
    -p 8080:8080 \
    --volume "$(pwd)"/webapps:/usr/local/tomcat/webapps \
    --name wso2apps.com \
    --hostname wso2apps.com \
    --network training_net \
    tomcat:latest

