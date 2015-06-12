#!/bin/bash



mysqladmin --host=goobi -u $MYSQL_USER --password=$MYSQL_PASSWORD --silent --wait=30 ping || exit 1
cat 	/tmp/Goobi_setup_schema.sql \
	/tmp/Goobi_setup_default.sql \
	| mysql --host=goobi -u $MYSQL_USER --password=$MYSQL_PASSWORD -D $MYSQL_DATABASE
