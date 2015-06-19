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
-- Dumping data for table `projekte`
--
-- WHERE:  ProjekteID= 26

LOCK TABLES `projekte` WRITE;
/*!40000 ALTER TABLE `projekte` DISABLE KEYS */;
INSERT INTO `projekte` VALUES (26,'VD18',1,360000,'/san.gdz-srv1/gdz/mets_repository/hotfolder/','/san.gdz-srv1/gdz/mets_repository/hotfolder/','/san.gdz-srv1/gdz/mets_repository/success/','/san.gdz-srv1/gdz/mets_repository/error_mets/','\0',NULL,NULL,'Digitalisierungszentrum der Niedersächsischen Staats- und Universitätsbibliothek Göttingen','http://gdz.sub.uni-goettingen.de/logo_gdz_dfgv.png','http://gdz.sub.uni-goettingen.de','http://opac.sub.uni-goettingen.de/DB=1/PPN?PPN=$(meta.topstruct.CatalogIDDigital)$REGEXP(s/PPN=PPN/PPN=/)','http://resolver.sub.uni-goettingen.de/purl?$(meta.CatalogIDDigital)','Mets','Mets','http://gdz.sub.uni-goettingen.de/mets_export.php?PPN=$(meta.topstruct.CatalogIDDigital) ','http://gdz.sub.uni-goettingen.de/mets_export.php?PPN=$(meta.firstchild.CatalogIDDigital) ','http://opac.sub.uni-goettingen.de/DB=1/PPN?PPN=$(meta.topstruct.CatalogIDDigital)$REGEXP(s/PPN=PPN/PPN=/)','http://resolver.sub.uni-goettingen.de/purl?$(meta.topstruct.CatalogIDDigital)','','','','2009-11-01 00:00:00','2013-01-01 00:00:00',4000000,16000,'\0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `projekte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-18 18:46:32
