FROM mysql:5.5

COPY Goobi_setup_schema.sql /tmp/Goobi_setup_schema.sql
COPY Goobi_setup_default.sql /tmp/Goobi_setup_default.sql
COPY fill_db.sh /tmp/fill_db.sh


CMD /tmp/fill_db.sh
