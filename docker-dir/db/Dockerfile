FROM mysql:5.5
#ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD my.cnf /etc/mysql/my.cnf

RUN mkdir -p /usr/local/mysql/scripts/
RUN chmod 777 /usr/local/mysql/scripts/

#ADD errmsg.sys /usr/share/mysql/english/errmsg.sys

ADD default.sql /usr/local/mysql/scripts/default.sql
#RUN mysql -u $MYSQL_USER --password=$MYSQL_PASSWORD -D $MYSQL_DATABASE < /usr/local/mysql/scripts/default.sql


