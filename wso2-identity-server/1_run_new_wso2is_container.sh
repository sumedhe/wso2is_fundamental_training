#!/bin/bash

# Create network if not exists
docker network create --driver bridge training_net || true

# Remove container if exists
docker rm -f wso2is.com || true

# Create and run new wso2is container
docker run -ti \
    -p 9443:9443 \
    --volume "$(pwd)"/conf/deployment.toml:/home/wso2carbon/wso2is-5.10.0/repository/conf/deployment.toml \
    --name wso2is.com \
    --hostname wso2is.com \
    --network training_net \
    wso2/wso2is:5.10.0

