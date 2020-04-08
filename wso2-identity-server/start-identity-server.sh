#!/bin/bash

WSO2IS_CONTAINER=training_wso2is

docker run -ti \
    -p 9443:9443 \
    -v "$(pwd)"/conf/deployment.toml:/home/wso2carbon/wso2is-5.10.0/repository/conf/deployment.toml \
    --name ${WSO2IS_CONTAINER} \
    wso2/wso2is:5.10.0

