-- MySQL dump 10.13  Distrib 5.5.43, for Linux (x86_64)
--
-- Host: localhost    Database: goobi_produktion_1
-- ------------------------------------------------------
-- Server version	5.5.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `benutzer`
--

DROP TABLE IF EXISTS `benutzer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzer` (
  `BenutzerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Login` varchar(45) DEFAULT NULL,
  `Passwort` varchar(45) DEFAULT NULL,
  `Vorname` varchar(255) DEFAULT NULL,
  `Nachname` varchar(255) DEFAULT NULL,
  `IstAktiv` tinyint(1) DEFAULT NULL,
  `Standort` varchar(255) DEFAULT NULL,
  `mitMassendownload` tinyint(1) DEFAULT NULL,
  `Tabellengroesse` int(11) DEFAULT NULL,
  `zugriffSamba` tinyint(1) DEFAULT NULL,
  `zugriffWebdav` tinyint(1) DEFAULT NULL,
  `ldapgruppenID` int(11) DEFAULT NULL,
  `metadatensprache` varchar(255) DEFAULT NULL,
  `displayProcessDateColumn` tinyint(1) DEFAULT '0',
  `sessiontimeout` int(11) DEFAULT NULL,
  `css` varchar(255) DEFAULT NULL,
  `isVisible` varchar(255) DEFAULT NULL,
  `ldaplogin` varchar(255) DEFAULT NULL,
  `displayDeactivatedProjects` tinyint(1) DEFAULT '0',
  `displayFinishedProcesses` tinyint(1) DEFAULT '0',
  `displaySelectBoxes` tinyint(1) DEFAULT '0',
  `displayIdColumn` tinyint(1) DEFAULT '0',
  `displayBatchColumn` tinyint(1) DEFAULT '0',
  `displayLocksColumn` tinyint(1) DEFAULT '0',
  `displaySwappingColumn` tinyint(1) DEFAULT '0',
  `displayAutomaticTasks` tinyint(1) DEFAULT '0',
  `hideCorrectionTasks` tinyint(1) DEFAULT '0',
  `displayOnlySelectedTasks` tinyint(1) DEFAULT '0',
  `displayOnlyOpenTasks` tinyint(1) DEFAULT '0',
  `displayModulesColumn` tinyint(1) DEFAULT '0',
  `confVorgangsdatumAnzeigen` bit(1) DEFAULT NULL,
  PRIMARY KEY (`BenutzerID`),
  KEY `FK6564F1FD126095B4` (`ldapgruppenID`),
  KEY `FK6564F1FD78EC6B0F` (`ldapgruppenID`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benutzereigenschaften`
--

DROP TABLE IF EXISTS `benutzereigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzereigenschaften` (
  `benutzereigenschaftenID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `Wert` varchar(255) DEFAULT NULL,
  `IstObligatorisch` bit(1) DEFAULT NULL,
  `DatentypenID` int(11) DEFAULT NULL,
  `Auswahl` varchar(255) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `BenutzerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`benutzereigenschaftenID`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benutzergruppen`
--

DROP TABLE IF EXISTS `benutzergruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzergruppen` (
  `BenutzerGruppenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Titel` varchar(45) DEFAULT NULL,
  `Berechtigung` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`BenutzerGruppenID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benutzergruppenmitgliedschaft`
--

DROP TABLE IF EXISTS `benutzergruppenmitgliedschaft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzergruppenmitgliedschaft` (
  `BenutzerGruppenMitgliedschaftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BenutzerID` int(10) unsigned DEFAULT NULL,
  `BenutzerGruppenID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`BenutzerGruppenMitgliedschaftID`),
  KEY `BenutzerID` (`BenutzerID`),
  KEY `BenutzerGruppenID` (`BenutzerGruppenID`),
  KEY `FK45CBE57830A77454` (`BenutzerGruppenID`),
  KEY `FK45CBE57815EED760` (`BenutzerID`),
  KEY `FK45CBE5781843242F` (`BenutzerGruppenID`),
  KEY `FK45CBE5788896477B` (`BenutzerID`)
) ENGINE=InnoDB AUTO_INCREMENT=1366 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `databaseversion`
--

DROP TABLE IF EXISTS `databaseversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databaseversion` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datentypen`
--

DROP TABLE IF EXISTS `datentypen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datentypen` (
  `DatentypenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DatentypenID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dockets`
--

DROP TABLE IF EXISTS `dockets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dockets` (
  `docketID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`docketID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `historyid` int(11) NOT NULL AUTO_INCREMENT,
  `numericvalue` double DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `processID` int(11) DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `FK373FE4946640305C` (`processID`)
) ENGINE=InnoDB AUTO_INCREMENT=2645011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ldapgruppen`
--

DROP TABLE IF EXISTS `ldapgruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldapgruppen` (
  `ldapgruppenID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) DEFAULT NULL,
  `usesShell` tinyint(1) DEFAULT NULL,
  `homeDir` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `homeDirectory` varchar(255) DEFAULT NULL,
  `gidNumber` varchar(255) DEFAULT NULL,
  `userDN` varchar(255) DEFAULT NULL,
  `objectClasses` varchar(255) DEFAULT NULL,
  `sambaSID` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `gecos` varchar(255) DEFAULT NULL,
  `loginShell` varchar(255) DEFAULT NULL,
  `sambaAcctFlags` varchar(255) DEFAULT NULL,
  `sambaLogonScript` varchar(255) DEFAULT NULL,
  `sambaPrimaryGroupSID` varchar(255) DEFAULT NULL,
  `sambaPwdMustChange` varchar(255) DEFAULT NULL,
  `sambaPasswordHistory` varchar(255) DEFAULT NULL,
  `sambaLogonHours` varchar(255) DEFAULT NULL,
  `sambaKickoffTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ldapgruppenID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata` (
  `processid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  KEY `id` (`processid`),
  KEY `metadataname` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metadatenkonfigurationen`
--

DROP TABLE IF EXISTS `metadatenkonfigurationen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatenkonfigurationen` (
  `MetadatenKonfigurationID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `Datei` varchar(255) DEFAULT NULL,
  `orderMetadataByRuleset` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MetadatenKonfigurationID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectfilegroups`
--

DROP TABLE IF EXISTS `projectfilegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectfilegroups` (
  `ProjectFileGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `ProjekteID` int(11) DEFAULT NULL,
  `folder` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProjectFileGroupID`),
  KEY `FK51AAC229327F143A` (`ProjekteID`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projektbenutzer`
--

DROP TABLE IF EXISTS `projektbenutzer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projektbenutzer` (
  `BenutzerID` int(11) NOT NULL DEFAULT '0',
  `ProjekteID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`BenutzerID`,`ProjekteID`),
  KEY `FKEC749D0E479273B5` (`ProjekteID`),
  KEY `FKEC749D0E15EED760` (`BenutzerID`),
  KEY `FKEC749D0E327F143A` (`ProjekteID`),
  KEY `FKEC749D0E8896477B` (`BenutzerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projekte`
--

DROP TABLE IF EXISTS `projekte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte` (
  `ProjekteID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `useDmsImport` tinyint(1) DEFAULT NULL,
  `dmsImportTimeOut` int(11) DEFAULT NULL,
  `dmsImportRootPath` varchar(255) DEFAULT NULL,
  `dmsImportImagesPath` varchar(255) DEFAULT NULL,
  `dmsImportSuccessPath` varchar(255) DEFAULT NULL,
  `dmsImportErrorPath` varchar(255) DEFAULT NULL,
  `dmsImportCreateProcessFolder` bit(1) DEFAULT NULL,
  `metsFormatDmsExport` bit(1) DEFAULT NULL,
  `metsFormatInternal` bit(1) DEFAULT NULL,
  `metsRightsOwner` varchar(255) DEFAULT NULL,
  `metsRightsOwnerLogo` varchar(255) DEFAULT NULL,
  `metsRightsOwnerSite` varchar(255) DEFAULT NULL,
  `metsDigiprovReference` varchar(255) DEFAULT NULL,
  `metsDigiprovPresentation` varchar(255) DEFAULT NULL,
  `fileFormatInternal` varchar(255) DEFAULT NULL,
  `fileFormatDmsExport` varchar(255) DEFAULT NULL,
  `metsPointerPath` varchar(255) DEFAULT NULL,
  `metsPointerPathAnchor` varchar(255) DEFAULT NULL,
  `metsDigiprovReferenceAnchor` varchar(255) DEFAULT NULL,
  `metsDigiprovPresentationAnchor` varchar(255) DEFAULT NULL,
  `metsPurl` varchar(255) DEFAULT NULL,
  `metsContentIDs` varchar(255) DEFAULT NULL,
  `metsRightsOwnerMail` varchar(255) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `numberOfPages` int(11) DEFAULT NULL,
  `numberOfVolumes` int(11) DEFAULT NULL,
  `projectIsArchived` bit(1) DEFAULT b'0',
  `metsRightsSponsor` varchar(255) DEFAULT NULL,
  `metsRightsSponsorLogo` varchar(255) DEFAULT NULL,
  `metsRightsSponsorSiteURL` varchar(255) DEFAULT NULL,
  `metsRightsLicense` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProjekteID`),
  KEY `FKC8539A94479273B5` (`ProjekteID`),
  KEY `FKC8539A94327F143A` (`ProjekteID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `propertyid` int(11) NOT NULL AUTO_INCREMENT,
  `propertyname` varchar(255) DEFAULT NULL,
  `storeidentifier` varchar(255) DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` longtext,
  `required` bit(1) DEFAULT NULL,
  `searchable` bit(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `mdate` datetime DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  PRIMARY KEY (`propertyid`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prozesse`
--

DROP TABLE IF EXISTS `prozesse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prozesse` (
  `ProzesseID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `IstTemplate` int(10) unsigned DEFAULT NULL,
  `EigenschaftenID` int(10) unsigned DEFAULT NULL,
  `ProjekteID` int(11) DEFAULT NULL,
  `sortHelperStatus` varchar(255) DEFAULT NULL,
  `sortHelperImages` int(11) DEFAULT NULL,
  `sortHelperArticles` int(11) DEFAULT NULL,
  `MetadatenKonfigurationID` int(11) DEFAULT NULL,
  `inAuswahllisteAnzeigen` tinyint(1) DEFAULT NULL,
  `erstellungsdatum` datetime DEFAULT NULL,
  `ausgabename` varchar(255) DEFAULT NULL,
  `swappedOut` bit(1) DEFAULT NULL,
  `sortHelperDocstructs` int(11) DEFAULT NULL,
  `sortHelperMetadata` int(11) DEFAULT NULL,
  `wikifield` text,
  `batchID` int(11) DEFAULT NULL,
  `docketID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProzesseID`),
  KEY `EigenschaftenID` (`EigenschaftenID`),
  KEY `FKC55ACC6D479273B5` (`ProjekteID`),
  KEY `FKC55ACC6D48ABBD0C` (`MetadatenKonfigurationID`),
  KEY `FKC55ACC6D327F143A` (`ProjekteID`),
  KEY `FKC55ACC6D3B361E7` (`MetadatenKonfigurationID`),
  KEY `FKC55ACC6DACAFE8C7` (`MetadatenKonfigurationID`),
  KEY `docket` (`docketID`),
  KEY `batch` (`batchID`)
) ENGINE=InnoDB AUTO_INCREMENT=62106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prozesseeigenschaften`
--

DROP TABLE IF EXISTS `prozesseeigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prozesseeigenschaften` (
  `prozesseeigenschaftenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prozesseID` int(10) unsigned NOT NULL DEFAULT '0',
  `Titel` varchar(255) DEFAULT NULL,
  `Wert` text,
  `IstObligatorisch` int(10) unsigned DEFAULT NULL,
  `DatentypenID` int(10) unsigned DEFAULT NULL,
  `Auswahl` blob,
  `creationDate` datetime DEFAULT NULL,
  `container` int(11) DEFAULT NULL,
  PRIMARY KEY (`prozesseeigenschaftenID`),
  KEY `DatentypenID` (`DatentypenID`),
  KEY `FK3B22499F966DB655` (`prozesseID`),
  KEY `FK3B22499F815A56DA` (`prozesseID`)
) ENGINE=InnoDB AUTO_INCREMENT=617292 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schritte`
--

DROP TABLE IF EXISTS `schritte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schritte` (
  `SchritteID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `EigenschaftenID` int(10) unsigned DEFAULT NULL,
  `Prioritaet` int(10) unsigned DEFAULT '0',
  `Reihenfolge` int(10) unsigned DEFAULT NULL,
  `ProzesseID` int(10) unsigned DEFAULT NULL,
  `Bearbeitungsstatus` int(10) unsigned DEFAULT '0',
  `BearbeitungsZeitpunkt` datetime DEFAULT NULL,
  `BearbeitungsBenutzerID` int(11) DEFAULT NULL,
  `BearbeitungsBeginn` datetime DEFAULT NULL,
  `Typ` int(11) DEFAULT '1',
  `beimAnnehmenModul` smallint(1) DEFAULT '0',
  `beimAnnehmenAbschliessen` smallint(1) DEFAULT '0',
  `beimAnnehmenModulUndAbschliessen` smallint(1) DEFAULT '0',
  `homeverzeichnisNutzen` smallint(6) DEFAULT '0',
  `BearbeitungsEnde` datetime DEFAULT NULL,
  `typMetadaten` tinyint(1) DEFAULT '0',
  `typAutomatisch` tinyint(1) DEFAULT '0',
  `typImportFileUpload` tinyint(1) DEFAULT '0',
  `typExportRus` tinyint(1) DEFAULT '0',
  `typImagesLesen` tinyint(1) DEFAULT '0',
  `typImagesSchreiben` tinyint(1) DEFAULT '0',
  `typExportDMS` tinyint(1) DEFAULT '0',
  `typBeimAnnehmenModul` tinyint(1) DEFAULT '0',
  `typBeimAnnehmenAbschliessen` tinyint(1) DEFAULT '0',
  `typBeimAnnehmenModulUndAbschliessen` tinyint(1) DEFAULT '0',
  `typAutomatischScriptpfad` varchar(255) DEFAULT NULL,
  `typBeimAbschliessenVerifizieren` tinyint(1) DEFAULT '0',
  `typModulName` varchar(255) DEFAULT NULL,
  `edittype` int(11) DEFAULT NULL,
  `scriptName1` varchar(255) DEFAULT NULL,
  `scriptName2` varchar(255) DEFAULT NULL,
  `typAutomatischScriptpfad2` varchar(255) DEFAULT NULL,
  `scriptName3` varchar(255) DEFAULT NULL,
  `typAutomatischScriptpfad3` varchar(255) DEFAULT NULL,
  `scriptName4` varchar(255) DEFAULT NULL,
  `typAutomatischScriptpfad4` varchar(255) DEFAULT NULL,
  `scriptName5` varchar(255) DEFAULT NULL,
  `typAutomatischScriptpfad5` varchar(255) DEFAULT NULL,
  `typScriptStep` bit(1) DEFAULT b'0',
  `batchStep` bit(1) DEFAULT b'0',
  `stepPlugin` varchar(255) DEFAULT NULL,
  `validationPlugin` varchar(255) DEFAULT NULL,
  `delayStep` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`SchritteID`),
  KEY `EigenschaftenID` (`EigenschaftenID`),
  KEY `ProzesseID` (`ProzesseID`),
  KEY `BearbeitungsBenutzerID` (`BearbeitungsBenutzerID`),
  KEY `FKD7200736966DB655` (`ProzesseID`),
  KEY `FKD7200736E8A7F947` (`BearbeitungsBenutzerID`),
  KEY `Index_7` (`Prioritaet`,`Reihenfolge`,`Bearbeitungsstatus`),
  KEY `FKD7200736815A56DA` (`ProzesseID`),
  KEY `FKD72007365B4F6962` (`BearbeitungsBenutzerID`)
) ENGINE=InnoDB AUTO_INCREMENT=529368 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schritteberechtigtebenutzer`
--

DROP TABLE IF EXISTS `schritteberechtigtebenutzer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schritteberechtigtebenutzer` (
  `schritteberechtigtebenutzerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schritteID` int(10) unsigned NOT NULL DEFAULT '0',
  `BenutzerID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`schritteberechtigtebenutzerID`),
  KEY `schritteID` (`schritteID`),
  KEY `BenutzerID` (`BenutzerID`),
  KEY `FK4BB889CF15EED760` (`BenutzerID`),
  KEY `FK4BB889CFD0832AF5` (`schritteID`),
  KEY `FK4BB889CF8896477B` (`BenutzerID`),
  KEY `FK4BB889CFBB6FCB7A` (`schritteID`)
) ENGINE=InnoDB AUTO_INCREMENT=22824 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schritteberechtigtegruppen`
--

DROP TABLE IF EXISTS `schritteberechtigtegruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schritteberechtigtegruppen` (
  `schritteberechtigtegruppenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schritteID` int(10) unsigned NOT NULL DEFAULT '0',
  `BenutzerGruppenID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`schritteberechtigtegruppenID`),
  KEY `schritteID` (`schritteID`),
  KEY `BenutzerGruppenID` (`BenutzerGruppenID`),
  KEY `FKA5A0CC8130A77454` (`BenutzerGruppenID`),
  KEY `FKA5A0CC81D0832AF5` (`schritteID`),
  KEY `FKA5A0CC811843242F` (`BenutzerGruppenID`),
  KEY `FKA5A0CC81BB6FCB7A` (`schritteID`)
) ENGINE=InnoDB AUTO_INCREMENT=511024 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schritteeigenschaften`
--

DROP TABLE IF EXISTS `schritteeigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schritteeigenschaften` (
  `schritteeigenschaftenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schritteID` int(10) unsigned NOT NULL DEFAULT '0',
  `Titel` varchar(255) DEFAULT NULL,
  `Wert` text,
  `IstObligatorisch` int(10) unsigned DEFAULT NULL,
  `DatentypenID` int(10) unsigned DEFAULT NULL,
  `Auswahl` blob,
  `creationDate` datetime DEFAULT NULL,
  `container` int(11) DEFAULT NULL,
  PRIMARY KEY (`schritteeigenschaftenID`),
  KEY `DatentypenID` (`DatentypenID`),
  KEY `FK884E9D76D0832AF5` (`schritteID`),
  KEY `FK884E9D76BB6FCB7A` (`schritteID`)
) ENGINE=InnoDB AUTO_INCREMENT=456644 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vorlagen`
--

DROP TABLE IF EXISTS `vorlagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vorlagen` (
  `VorlagenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProzesseID` int(10) unsigned DEFAULT NULL,
  `Herkunft` varchar(255) DEFAULT NULL,
  `EigenschaftenID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`VorlagenID`),
  KEY `ProzesseID` (`ProzesseID`),
  KEY `EigenschaftenID` (`EigenschaftenID`),
  KEY `FK9A466882966DB655` (`ProzesseID`),
  KEY `FK9A466882815A56DA` (`ProzesseID`)
) ENGINE=InnoDB AUTO_INCREMENT=61969 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vorlageneigenschaften`
--

DROP TABLE IF EXISTS `vorlageneigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vorlageneigenschaften` (
  `vorlageneigenschaftenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vorlagenID` int(10) unsigned NOT NULL DEFAULT '0',
  `Titel` varchar(255) DEFAULT NULL,
  `Wert` text,
  `IstObligatorisch` int(10) unsigned DEFAULT NULL,
  `DatentypenID` int(10) unsigned DEFAULT NULL,
  `Auswahl` blob,
  `creationDate` datetime DEFAULT NULL,
  `container` int(11) DEFAULT NULL,
  PRIMARY KEY (`vorlageneigenschaftenID`),
  KEY `DatentypenID` (`DatentypenID`),
  KEY `FKAA25B7AA174D539E` (`vorlagenID`),
  KEY `FKAA25B7AA239F423` (`vorlagenID`)
) ENGINE=InnoDB AUTO_INCREMENT=637392 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `werkstuecke`
--

DROP TABLE IF EXISTS `werkstuecke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `werkstuecke` (
  `WerkstueckeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProzesseID` int(10) unsigned DEFAULT NULL,
  `EigenschaftenID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`WerkstueckeID`),
  KEY `ProzesseID` (`ProzesseID`),
  KEY `EigenschaftenID` (`EigenschaftenID`),
  KEY `FK98DED745966DB655` (`ProzesseID`),
  KEY `FK98DED745815A56DA` (`ProzesseID`)
) ENGINE=InnoDB AUTO_INCREMENT=62028 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `werkstueckeeigenschaften`
--

DROP TABLE IF EXISTS `werkstueckeeigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `werkstueckeeigenschaften` (
  `werkstueckeeigenschaftenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `werkstueckeID` int(10) unsigned NOT NULL DEFAULT '0',
  `Titel` varchar(255) DEFAULT NULL,
  `Wert` text,
  `IstObligatorisch` int(10) unsigned DEFAULT NULL,
  `DatentypenID` int(10) unsigned DEFAULT NULL,
  `Auswahl` blob,
  `creationDate` datetime DEFAULT NULL,
  `container` int(11) DEFAULT NULL,
  PRIMARY KEY (`werkstueckeeigenschaftenID`),
  KEY `DatentypenID` (`DatentypenID`),
  KEY `FK7B209DC763042F0B` (`werkstueckeID`),
  KEY `FK7B209DC7C9900466` (`werkstueckeID`)
) ENGINE=InnoDB AUTO_INCREMENT=578312 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-09 14:34:02
