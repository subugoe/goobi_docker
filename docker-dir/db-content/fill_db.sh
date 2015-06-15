#!/bin/bash



mysqladmin --host=goobi -u $MYSQL_USER --password=$MYSQL_PASSWORD --silent --wait=30 ping || exit 1
cat 	/tmp/Goobi_setup_schema.sql \
	/tmp/Goobi_setup_ldapgruppen.sql \
	/tmp/Goobi_setup_benutzer.sql \
	/tmp/Goobi_setup_benutzergruppen.sql \
	/tmp/Goobi_setup_benutzergruppenmitgliedschaft.sql \
	/tmp/Goobi_setup_regelsaetze.sql \
	/tmp/Goobi_setup_laufzettel.sql \
	/tmp/Goobi_setup_datentypen.sql \
	| mysql --host=goobi -u $MYSQL_USER --password=$MYSQL_PASSWORD -D $MYSQL_DATABASE
