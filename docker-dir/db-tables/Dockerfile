FROM tomcat:7.0

RUN mkdir -p 	/tmp/sql-tables
COPY sql-tables/* /tmp/sql-tables/
WORKDIR /tmp/sql-tables/
CMD java -cp .:/usr/local/tomcat/webapps/goobi/WEB-INF/lib/* DatabaseCreator && tail -f /dev/null
#CMD echo bla
#CMD ["java", "-cp", ".:/usr/local/tomcat/webapps/goobi/WEB-INF/lib/*", "DatabaseCreator"]

