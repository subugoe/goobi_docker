FROM tomcat:7.0

RUN mkdir -p 	/tmp/sql-tables
COPY sql-tables/DatabaseCreator.class /tmp/sql-tables/
WORKDIR /tmp/sql-tables/
CMD java -cp .:/usr/local/tomcat/webapps/goobi/WEB-INF/lib/*:/usr/local/tomcat/webapps/goobi/WEB-INF/classes:/usr/local/tomcat/lib/* DatabaseCreator && tail -f /dev/null
