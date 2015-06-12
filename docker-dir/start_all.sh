#! /bin/bash

docker build -t dockerdir_goobi ./db
docker build -t dockerdir_dbcontent ./db-content
docker build -t dockerdir_goobitomcat ./tomcat


docker run --name db1 --env-file docker-env.yml --publish 3306:3306 -d dockerdir_goobi
docker run --name tomcat1 --link db1:goobi --volume=${PWD}/tomcat/goobi2.0:/usr/local/tomcat/webapps/goobi --publish 8080:8080 -d dockerdir_goobitomcat
sleep 15
docker run --name content1 --env-file docker-env.yml --link db1:goobi dockerdir_dbcontent

