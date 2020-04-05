# Docker Scripts for WSO2IS Fundamental Training

## Pre-requisites
- Docker

## Starting wso2is container
This will start a new container with wso2 identity server 5.10
```bash
cd wso2-identity-server
./run.sh
```

## Starting sample apps container with tomcat
This will start tomcat server with the sample apps included in `sample_apps/webapps` directory.
```bash
cd sample_apps
./run.sh
```

## Running mysql-server container
This will run mysql server with the dump files in	`mysql/sql-scripts`
```bash
cd mysql
./run.sh
```
