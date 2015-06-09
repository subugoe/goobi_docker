FROM mysql:5.5

ADD Goobi_setup_default.sql /tmp/Goobi_setup_default.sql
CMD sleep 25 && mysql --host=goobi -u $MYSQL_USER --password=$MYSQL_PASSWORD -D $MYSQL_DATABASE < /tmp/Goobi_setup_default.sql  && tail -f /dev/null


