FROM mysql:5.5

ADD default.sql /tmp/default.sql
CMD sleep 5 && mysql --host=goobi -u $MYSQL_USER --password=$MYSQL_PASSWORD -D $MYSQL_DATABASE < /tmp/default.sql  && tail -f /dev/null


