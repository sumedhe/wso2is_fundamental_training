#!/bin/bash

APPNAME=wso2is

docker run -ti --rm \
    -p 9443:9443 \
    --name ${APPNAME} \
    --hostname wso2is.com \
    wso2/wso2is

