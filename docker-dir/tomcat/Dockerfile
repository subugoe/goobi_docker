FROM tomcat:7.0


WORKDIR /usr/local/tomcat/

RUN mkdir webapps/goobi/

ADD data/goobi.xml           /usr/local/tomcat/conf/Catalina/localhost/goobi.xml
ADD data/tomcat-users.xml    /usr/local/tomcat/conf/tomcat-users.xml

RUN mkdir -p    /opt/digiverso/goobi/config/
RUN chmod 777   /opt/digiverso/goobi/config/

RUN mkdir -p    /opt/digiverso/goobi/debug/
RUN chmod 777   /opt/digiverso/goobi/debug/

RUN mkdir -p    /opt/digiverso/goobi/import/
RUN chmod 777   /opt/digiverso/goobi/import/

RUN mkdir -p    /opt/digiverso/goobi/logs/
RUN chmod 777   /opt/digiverso/goobi/logs/

RUN mkdir -p    /opt/digiverso/goobi/messages/
RUN chmod 777   /opt/digiverso/goobi/messages/

RUN mkdir -p    /opt/digiverso/goobi/metadata/
RUN chmod 777   /opt/digiverso/goobi/metadata/

RUN mkdir -p    /opt/digiverso/goobi/plugins/
RUN chmod 777   /opt/digiverso/goobi/plugins/

RUN mkdir -p    /opt/digiverso/goobi/plugins/command/
RUN chmod 777   /opt/digiverso/goobi/plugins/command/

RUN mkdir -p    /opt/digiverso/goobi/plugins/import/
RUN chmod 777   /opt/digiverso/goobi/plugins/import/

RUN mkdir -p    /opt/digiverso/goobi/plugins/opac/
RUN chmod 777   /opt/digiverso/goobi/plugins/opac/

RUN mkdir -p    /opt/digiverso/goobi/plugins/step/
RUN chmod 777   /opt/digiverso/goobi/plugins/step/

RUN mkdir -p    /opt/digiverso/goobi/plugins/validation/
RUN chmod 777   /opt/digiverso/goobi/plugins/validation/

RUN mkdir -p    /opt/digiverso/goobi/rulesets/
RUN chmod 777   /opt/digiverso/goobi/rulesets/

RUN mkdir -p    /opt/digiverso/goobi/scripts/
RUN chmod 777   /opt/digiverso/goobi/scripts/

RUN mkdir -p    /opt/digiverso/goobi/swap/
RUN chmod 777   /opt/digiverso/goobi/swap/

RUN mkdir -p    /opt/digiverso/goobi/temp/
RUN chmod 777   /opt/digiverso/goobi/temp/

RUN mkdir -p    /opt/digiverso/goobi/users/
RUN chmod 777   /opt/digiverso/goobi/users/

RUN mkdir -p    /opt/digiverso/goobi/xslt/
RUN chmod 777   /opt/digiverso/goobi/xslt/


#ADD data/goobi_config.properties     /usr/local/tomcat/webapps/goobi/WEB-INF/classes/goobi_config.properties
#ADD goobi_meta_klein.jpg ???
#ADD goobi_meta_verlauf.jpg ???


#ADD statischTechnischerHintergrund.jsf ???

#COPY data/cacert.crt         /opt/digiverso/goobi/config/cacert.crt
#COPY data/pdc.crt            /opt/digiverso/goobi/config/pdc.crt
#COPY data/mykeystore.ks     /opt/digiverso/goobi/config/mykeystore.ks


#ADD data/log4j.properties   /usr/local/tomcat/webapps/goobi/WEB-INF/classes/log4j.properties


COPY data/goobi_*.xml    /opt/digiverso/goobi/config/
#ADD goobi_projects.xml              /opt/digiverso/goobi/config/goobi_projects.xml
#ADD goobi_metadataDisplayRules.xml  /opt/digiverso/goobi/config/goobi_metadataDisplayRules.xml
#ADD goobi_processProperties.xml     /opt/digiverso/goobi/config/goobi_processProperties.xml
#ADD goobi_digitalCollections.xml    /opt/digiverso/goobi/config/goobi_digitalCollections.xml


COPY data/modules.xml    /opt/digiverso/goobi/config/
COPY data/laufzettel/*.xsl     /opt/digiverso/goobi/xslt/
COPY data/regelsaetze/*.xml /opt/digiverso/goobi/rulesets/

#ADD: script_createDirUserHome.sh, script_createDirMeta.sh, script_createSymLink.sh, script_deleteSymLink.sh
COPY data/script_*.sh /opt/digiverso/goobi/scripts/

COPY data/tiffwriter.sh         /opt/digiverso/goobi/scripts/
COPY data/copyFilesintranda.sh  /opt/digiverso/goobi/scripts/
COPY data/iii.sh                /opt/digiverso/goobi/scripts/
COPY data/copyfiles.sh          /opt/digiverso/goobi/scripts/
COPY data/script_mountImageDir.sh   /opt/digiverso/goobi/scripts/
COPY data/script_umountImageDir.sh  /opt/digiverso/goobi/scripts/


COPY data/PicaOpacPlugin-5a6377c.jar /opt/digiverso/goobi/plugins/opac/
COPY data/goobi_opacUmlaut.txt /opt/digiverso/goobi/config/



RUN chmod +x /opt/digiverso/goobi/scripts/*.sh

#ADD picaOpacImportClass.jar /opt/digiverso/goobi/plugins/opac/picaOpacImportClass.jar
