/*!40000 ALTER TABLE `benutzer` DISABLE KEYS */;
INSERT INTO `ldapgruppen` (
  `ldapgruppenID`, `titel`) VALUES
  (2, 'test'); /* id 2 has to be inserted to match users (benutzer)*/
/*!40000 ALTER TABLE `benutzer` ENABLE KEYS */;