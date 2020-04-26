#!/bin/bash

RELEASE_URL=https://github.com/wso2/samples-is/releases/download/v4.3.0
WEBAPPS_DIR=./webapps

wget ${RELEASE_URL}/playground2.war -P ${WEBAPPS_DIR}
wget ${RELEASE_URL}/pickup-dispatch.war -P ${WEBAPPS_DIR}
wget ${RELEASE_URL}/pickup-manager.war -P ${WEBAPPS_DIR}
wget ${RELEASE_URL}/saml2-web-app-pickup-dispatch.com.war -P ${WEBAPPS_DIR}
wget ${RELEASE_URL}/saml2-web-app-pickup-manager.com.war -P ${WEBAPPS_DIR}
