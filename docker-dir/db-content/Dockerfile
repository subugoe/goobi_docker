FROM mysql:5.5

COPY Goobi_setup_schema.sql /tmp/Goobi_setup_schema.sql

ADD Goobi_setup_ldapgruppen.sql /tmp/Goobi_setup_ldapgruppen.sql
ADD Goobi_setup_benutzer.sql /tmp/Goobi_setup_benutzer.sql
ADD Goobi_setup_benutzergruppen.sql /tmp/Goobi_setup_benutzergruppen.sql
ADD Goobi_setup_benutzergruppenmitgliedschaft.sql /tmp/Goobi_setup_benutzergruppenmitgliedschaft.sql

ADD Goobi_setup_regelsaetze.sql /tmp/Goobi_setup_regelsaetze.sql
ADD Goobi_setup_laufzettel.sql /tmp/Goobi_setup_laufzettel.sql

ADD Goobi_setup_datentypen.sql /tmp/Goobi_setup_datentypen.sql
ADD Goobi_setup_version.sql /tmp/Goobi_setup_version.sql

ADD VD18.sql /tmp/VD18.sql

COPY fill_db.sh /tmp/fill_db.sh

CMD /tmp/fill_db.sh
