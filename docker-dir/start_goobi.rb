#!/usr/bin/env ruby


puts "\nStop running containers (docker-compose stop)"
`docker-compose stop`

puts "\nRemove the containers (docker-compose rm ...)"
`docker-compose rm --force`

puts "\nRemove old images (docker-compose rmi ...)"
`docker rmi dockerdir_goobitomcat dockerdir_goobi dockerdir_dbtables dockerdir_dbcontent`

puts "\nBuild the containers (docker-compose build ...)"
`docker-compose build  --no-cache`

puts "\nStart the containers (docker-compose up -d)"
`docker-compose up -d`


# continue = true
# while (continue)
#
#   lines = `docker-compose ps`
#   lines.each_line { |line|
#     if line.include?("dockerdir_goobitomcat_1" && "Up")
#       continue = false
#       break
#     end
#   }
#   sleep 3 # seconds
# end

sleep 60

#1
puts "\nCreate database schema"
`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_schema.sql'`

##2
#puts "\nImport initial data to the database"
#`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_default.sql'`

#2
puts "\nImport Laufzettel"
`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_laufzettel.sql'`

#3
puts "\nImport Regelsätze"
`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_regelsaetze.sql'`


#4
puts "\nImport Benutzer"
`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_benutzer.sql'`

#5
puts "\nImport Benutzergruppen"
`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_benutzergruppen.sql'`

#6
puts "\nImport Benutzergruppenmitgliedschaft"
`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_benutzergruppenmitgliedschaft.sql'`

#7
puts "\nImport LDAP Gruppen"
`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_ldapgruppen.sql'`

#8
puts "\nImport Datentypen"
`docker exec -it dockerdir_goobi_1 sh -c 'exec mysql -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" < /tmp/Goobi_setup_datentypen.sql'`
