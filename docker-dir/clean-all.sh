#! /bin/bash

docker rm -f $(docker ps -aq)
docker rmi dockerdir_goobitomcat dockerdir_goobi dockerdir_dbtables dockerdir_dbcontent
