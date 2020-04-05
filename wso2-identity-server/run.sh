#!/bin/bash

WSO2IS_CONTAINER=training_wso2is

docker run -ti \
    -p 9443:9443 \
    --name ${WSO2IS_CONTAINER} \
    wso2/wso2is

