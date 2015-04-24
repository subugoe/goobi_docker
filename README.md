# Goobi Docker Project
Goobi docker configuration, with different containers for db, tomcat, reverse proxy, etc


## Missing files
* goobi.war
	 * build your own goobi.war and add it to the docker-dir/tomcat/ folder

## List containers

Identify the container Id's:

	$ docker ps
	CONTAINER ID	IMAGE			COMMAND					...
	<id-1> 			ubuntu:14.04	"/entrypoint.sh mysq	...
	<id-2>			...
	...

## Build the containers

	$ cd <path-to-docker-dir>
	$ docker rm
	$ docker-compose build
	$ docker-compose up
	
## Connext to a contailer

Connect to a container, e.g. the datafase container:

	$ docker exec -it <id-1> bash
	root@a39b7f03199a:/$ mysql -p
	Enter password: 
	Welcome to the MySQL monitor.  Commands end with ; or \g.
	...
	...
	mysql>
	
