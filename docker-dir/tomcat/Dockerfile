FROM tomcat:7.0


ADD goobi.war /usr/local/tomcat/webapps/goobi.war
#ADD hibernate.cfg.xml /usr/local/tomcat/webapps/goobi/WEB-INF/classes/hibernate.cfg.xml
ADD  tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

RUN mkdir -p /usr/local/goobi/config/
RUN chmod 777 /usr/local/goobi/config/

RUN mkdir -p /usr/local/goobi/debug/
RUN chmod 777 /usr/local/goobi/debug/

RUN mkdir -p /usr/local/goobi/import/
RUN chmod 777 /usr/local/goobi/import/

RUN mkdir -p /usr/local/goobi/logs/
RUN chmod 777 /usr/local/goobi/logs/

RUN mkdir -p /usr/local/goobi/messages/
RUN chmod 777 /usr/local/goobi/messages/

RUN mkdir -p /usr/local/goobi/metadata/
RUN chmod 777 /usr/local/goobi/metadata/

RUN mkdir -p /usr/local/goobi/plugins/
RUN chmod 777 /usr/local/goobi/plugins/

RUN mkdir -p /usr/local/goobi/plugins/command/
RUN chmod 777 /usr/local/goobi/plugins/command/

RUN mkdir -p /usr/local/goobi/plugins/import/
RUN chmod 777 /usr/local/goobi/plugins/import/

RUN mkdir -p /usr/local/goobi/plugins/opac/
RUN chmod 777 /usr/local/goobi/plugins/opac/

RUN mkdir -p /usr/local/goobi/plugins/step/
RUN chmod 777 /usr/local/goobi/plugins/step/

RUN mkdir -p /usr/local/goobi/plugins/validation/
RUN chmod 777 /usr/local/goobi/plugins/validation/

RUN mkdir -p /usr/local/goobi/rulesets/
RUN chmod 777 /usr/local/goobi/rulesets/

RUN mkdir -p /usr/local/goobi/scripts/
RUN chmod 777 /usr/local/goobi/scripts/

RUN mkdir -p /usr/local/goobi/swap/
RUN chmod 777 /usr/local/goobi/swap/

RUN mkdir -p /usr/local/goobi/temp/
RUN chmod 777 /usr/local/goobi/temp/

RUN mkdir -p /usr/local/goobi/users/
RUN chmod 777 /usr/local/goobi/users/

RUN mkdir -p /usr/local/goobi/xslt/
RUN chmod 777 /usr/local/goobi/xslt/


#ADD goobi_config.properties /usr/local/tomcat/webapps/goobi/WEB-INF/classes/goobi_config.properties
#ADD goobi_meta_klein.jpg ???
#ADD goobi_meta_verlauf.jpg ???

#ADD script_createDirUserHome.sh /usr/local/goobi/scripts/script_createDirUserHome.sh
#ADD script_createDirMeta.sh /usr/local/goobi/scripts/script_createDirMeta.sh
#ADD script_createSymLink.sh /usr/local/goobi/scripts/script_createSymLink.sh
#ADD script_deleteSymLink.sh /usr/local/goobi/scripts/script_deleteSymLink.sh


#ADD statischTechnischerHintergrund.jsf ???

#ADD cacert.crt /usr/local/goobi/config/cacert.crt
#ADD pdc.crt /usr/local/goobi/config/pdc.crt
#ADD mykeystore.crt /usr/local/goobi/config/mykeystore.crt


#ADD log4j.properties /usr/local/tomcat/webapps/goobi/WEB-INF/classes/log4j.properties


#RUN mv /usr/local/tomcat/webapps/goobi/WEB-INF/classes/goobi_*.xml /usr/local/goobi/config/
#RUN mv /usr/local/tomcat/webapps/goobi/WEB-INF/classes/modules.xml /usr/local/goobi/config/
#RUN mv /usr/local/tomcat/webapps/goobi/WEB-INF/classes/docket.xsl /usr/local/goobi/xslt/
#RUN mv scripts/*.sh /usr/local/goobi/scripts/
#RUN chmod 111 /usr/local/goobi/scripts/*.sh


#ADD goobi_projects.xml /usr/local/goobi/config/goobi_projects.xml
#ADD goobi_metadataDisplayRules.xml /usr/local/goobi/config/goobi_metadataDisplayRules.xml
#ADD goobi_processProperties.xml /usr/local/goobi/config/goobi_processProperties.xml
#ADD goobi_digitalCollections.xml /usr/local/goobi/config/goobi_digitalCollections.xml


#ADD picaOpacImportClass.jar /usr/local/goobi/plugins/opac/picaOpacImportClass.jar
