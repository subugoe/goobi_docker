# Goobi Docker Project
Goobi docker configuration, with different containers for db, tomcat, reverse proxy, etc


## Missing files
* goobi.war
	 * build your own goobi.war and add it to the docker-dir/tomcat/ folder
	 * unpack it to a directory called docker-dir/tomcat/goobi2.0

## List containers

Identify the container Id's:

	$ docker ps
	CONTAINER ID	IMAGE			COMMAND					...
	<id-1> 			ubuntu:14.04	"/entrypoint.sh mysq	...
	<id-2>			...
	...

## (Optional) Remove previously created images and containers

	$ cd <path-to-docker-dir>
	$ ./clean-all.sh

## Build and start the containers

	$ cd <path-to-docker-dir>
	$ ./start-all.sh
	
## Connect to a container

Connect to a container, e.g. the database container:

	$ docker exec -it db1 bash
	root@a39b7f03199a:/$ mysql -ugoobi -pgoobi
	Welcome to the MySQL monitor.  Commands end with ; or \g.
	...
	...
	mysql>
	
