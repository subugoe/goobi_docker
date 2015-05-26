FROM tomcat:7.0


WORKDIR /usr/local/tomcat/

RUN mkdir webapps/goobi/

ADD data/goobi.xml    /usr/local/tomcat/conf/Catalina/localhost/goobi.xml
ADD data/tomcat-users.xml    /usr/local/tomcat/conf/tomcat-users.xml

RUN mkdir -p    /usr/local/goobi/config/
RUN chmod 777   /usr/local/goobi/config/

RUN mkdir -p    /usr/local/goobi/debug/
RUN chmod 777   /usr/local/goobi/debug/

RUN mkdir -p    /usr/local/goobi/import/
RUN chmod 777   /usr/local/goobi/import/

RUN mkdir -p    /usr/local/goobi/logs/
RUN chmod 777   /usr/local/goobi/logs/

RUN mkdir -p    /usr/local/goobi/messages/
RUN chmod 777   /usr/local/goobi/messages/

RUN mkdir -p    /usr/local/goobi/metadata/
RUN chmod 777   /usr/local/goobi/metadata/

RUN mkdir -p    /usr/local/goobi/plugins/
RUN chmod 777   /usr/local/goobi/plugins/

RUN mkdir -p    /usr/local/goobi/plugins/command/
RUN chmod 777   /usr/local/goobi/plugins/command/

RUN mkdir -p    /usr/local/goobi/plugins/import/
RUN chmod 777   /usr/local/goobi/plugins/import/

RUN mkdir -p    /usr/local/goobi/plugins/opac/
RUN chmod 777   /usr/local/goobi/plugins/opac/

RUN mkdir -p    /usr/local/goobi/plugins/step/
RUN chmod 777   /usr/local/goobi/plugins/step/

RUN mkdir -p    /usr/local/goobi/plugins/validation/
RUN chmod 777   /usr/local/goobi/plugins/validation/

RUN mkdir -p    /usr/local/goobi/rulesets/
RUN chmod 777   /usr/local/goobi/rulesets/

RUN mkdir -p    /usr/local/goobi/scripts/
RUN chmod 777   /usr/local/goobi/scripts/

RUN mkdir -p    /usr/local/goobi/swap/
RUN chmod 777   /usr/local/goobi/swap/

RUN mkdir -p    /usr/local/goobi/temp/
RUN chmod 777   /usr/local/goobi/temp/

RUN mkdir -p    /usr/local/goobi/users/
RUN chmod 777   /usr/local/goobi/users/

RUN mkdir -p    /usr/local/goobi/xslt/
RUN chmod 777   /usr/local/goobi/xslt/


#ADD data/goobi_config.properties     /usr/local/tomcat/webapps/goobi/WEB-INF/classes/goobi_config.properties
#ADD goobi_meta_klein.jpg ???
#ADD goobi_meta_verlauf.jpg ???


#ADD statischTechnischerHintergrund.jsf ???

#ADD cacert.crt         /usr/local/goobi/config/cacert.crt
#ADD pdc.crt            /usr/local/goobi/config/pdc.crt
#ADD mykeystore.crt     /usr/local/goobi/config/mykeystore.crt


#ADD data/log4j.properties   /usr/local/tomcat/webapps/goobi/WEB-INF/classes/log4j.properties


COPY data/goobi_*.xml    /usr/local/goobi/config/
#ADD goobi_projects.xml              /usr/local/goobi/config/goobi_projects.xml
#ADD goobi_metadataDisplayRules.xml  /usr/local/goobi/config/goobi_metadataDisplayRules.xml
#ADD goobi_processProperties.xml     /usr/local/goobi/config/goobi_processProperties.xml
#ADD goobi_digitalCollections.xml    /usr/local/goobi/config/goobi_digitalCollections.xml


COPY data/modules.xml    /usr/local/goobi/config/
COPY data/docket.xsl     /usr/local/goobi/xslt/

COPY data/script_*.sh /usr/local/goobi/scripts/
#ADD data/script_createDirUserHome.sh /usr/local/goobi/scripts/script_createDirUserHome.sh
#ADD data/script_createDirMeta.sh     /usr/local/goobi/scripts/script_createDirMeta.sh
#ADD data/script_createSymLink.sh     /usr/local/goobi/scripts/script_createSymLink.sh
#ADD data/script_deleteSymLink.sh     /usr/local/goobi/scripts/script_deleteSymLink.sh

RUN chmod +x /usr/local/goobi/scripts/*.sh

#ADD picaOpacImportClass.jar /usr/local/goobi/plugins/opac/picaOpacImportClass.jar
