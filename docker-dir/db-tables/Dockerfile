FROM mysql:5.5

ADD Goobi_setup_schema.sql /tmp/Goobi_setup_schema.sql
CMD sleep 10 && mysql --host=goobi -u $MYSQL_USER --password=$MYSQL_PASSWORD -D $MYSQL_DATABASE < /tmp/Goobi_setup_schema.sql  && tail -f /dev/null

