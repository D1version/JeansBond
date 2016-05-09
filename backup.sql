-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: jeansbond
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `client_jn`
--

DROP TABLE IF EXISTS `client_jn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_jn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL,
  `ClientName` varchar(45) NOT NULL,
  `ClientSecondName` varchar(45) NOT NULL,
  `ClientBirthday` varchar(45) NOT NULL,
  `ClientReagistrationDate` varchar(45) NOT NULL,
  `CardNumber` varchar(45) NOT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  `Viber` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Counter` int(11) NOT NULL,
  `Operation` varchar(45) NOT NULL,
  `DateOperation` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_jn`
--

LOCK TABLES `client_jn` WRITE;
/*!40000 ALTER TABLE `client_jn` DISABLE KEYS */;
INSERT INTO `client_jn` VALUES (1,10,'Влад','Бондарь','16-10-1995','27-04-2016','1136','0990807978','-','@',123,3,'insert','2016-05-08 18:27:05'),(2,8,'Иван','Иванов','07-03-1998','20-04-2016','1118','0961154132','+','dsfhigbdghb@mail.ru',9850,1,'insert','2016-05-08 18:27:59'),(3,7,'Коля','петров','03-07-1991','20-04-2016','1117','0501911564','-','ldsjkfgnslkdglsdkgb@mail.ru',1000,1,'insert','2016-05-08 18:27:59'),(4,15,'A','A','16-10-1995','10-10-2010','4523','0987654321','+','a@a.sa',10,5,'delete','2016-05-08 18:40:19'),(5,15,'Владислав','ыфо','16-10-1995','27-04-2016','1138','0990807978','+','@@@',123,2,'insert','2016-05-08 18:43:32'),(6,15,'Владислав','ыфо','16-10-1995','27-04-2016','1138','0990807978','+','@@@',123,2,'update','2016-05-08 18:44:45'),(7,10,'Влад','Бондарь','16-10-1995','27-04-2016','1136','0990807978','-','@',1231,3,'update','2016-05-08 15:58:57'),(8,15,'Владислав','ыфо','16-10-1995','27-04-2016','1138','0990807978','+','@@@',12123,2,'delete','2016-05-08 19:04:51');
/*!40000 ALTER TABLE `client_jn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `SecondName` varchar(100) DEFAULT NULL,
  `Birthday` varchar(45) DEFAULT NULL,
  `RegistrationDate` varchar(45) DEFAULT NULL,
  `CardNumber` varchar(8) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `Viber` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Counter` int(11) DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'John','Vasiliev','14-02-2001','20-04-2016','1111','0990807978','+','bhahdkfb@mail.ru',10000,4),(6,'Гогги','Ниргов','01-01-2001','20-04-2016','1116','0631651964','+','dsfbvsdghjv@gmail.com',3636,3),(7,'Коля','петров','03-07-1991','20-04-2016','1117','0501911564','-','ldsjkfgnslkdglsdkgb@mail.ru',10100,1),(8,'Иван','Иванов','07-03-1998','20-04-2016','1118','0961154132','+','dsfhigbdghb@mail.ru',9750,1),(9,'Влад','Бондарь','16-10-1995','27-04-2016','1135','0507166332','-','clipsa@gmail.com',20503,2),(10,'Влад','Бондарь','16-10-1995','27-04-2016','1136','0990707978','-','@',1231,3),(11,'Владислав','Бондарь','16-10-1995','01-05-2016','2223','0990807978','+','@6ыв13ЫВАв51ыфва1',10505,66),(12,'Влад','Бондарь','10-10-2010','27-04-2016','1125','0990807978','+','@',123,2),(13,'Влад','Бондарь','16-10-1995','27-04-2016','1137','0990807978','-','@',123,2),(14,'Владислав','ыфо','16-10-1995','27-04-2016','1138','0990807978','+','@@@',123,2);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t_clientInsert before insert on clients
for each row begin
insert into client_jn set Operation = 'insert', DateOperation = NOW(),
ClientID = NEW.ID, ClientName = NEW.Name, ClientSecondName = NEW.SecondName,
ClientBirthday = NEW.Birthday, ClientReagistrationDate = NEW.RegistrationDate,
CardNumber = NEW.CardNumber, PhoneNumber = NEW.PhoneNumber, Viber = NEW.Viber,
Email = NEW.Email, Amount = NEW.Amount, Counter = NEW.Counter; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t_clientUpdate after update on clients
for each row begin
insert into client_jn set Operation = 'update', DateOperation = NOW(),
ClientID = OLD.ID, ClientName = OLD.Name, ClientSecondName = OLD.SecondName,
ClientBirthday = OLD.Birthday, ClientReagistrationDate = OLD.RegistrationDate,
CardNumber = OLD.CardNumber, PhoneNumber = OLD.PhoneNumber, Viber = OLD.Viber,
Email = OLD.Email, Amount = OLD.Amount, Counter = OLD.Counter; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t_clientDelete before delete on clients
for each row begin
insert into client_jn set Operation = 'delete', DateOperation = NOW(),
ClientID = OLD.ID, ClientName = OLD.Name, ClientSecondName = OLD.SecondName,
ClientBirthday = OLD.Birthday, ClientReagistrationDate = OLD.RegistrationDate,
CardNumber = OLD.CardNumber, PhoneNumber = OLD.PhoneNumber, Viber = OLD.Viber,
Email = OLD.Email, Amount = OLD.Amount, Counter = OLD.Counter; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CardNumber` varchar(45) NOT NULL,
  `DateOfSale` varchar(45) NOT NULL,
  `Amount` varchar(45) NOT NULL,
  `JeansNumber` varchar(45) NOT NULL,
  `JeansSize` varchar(45) NOT NULL,
  `Saler` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'1','10-10-2010','1000','710','32','Квадрат'),(2,'1','10-10-2010','2000','700','32','Триугольник'),(3,'6','10-10-2010','536','510','31','Центр'),(4,'1','10-10-2010','1200','500','32','Центр'),(5,'6','10-10-2010','2000','700','32','Центр'),(6,'6','10-10-2010','2000','500','31','Ромбик');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t_SaleInsert before insert on sales
for each row begin
insert into sales_jn set Operation = 'insert', DateOperation = NOW(),
SaleID = NEW.ID, CardNumber = NEW.CardNumber, DateOfSale = NEW.DateOfSale,
Amount = NEW.Amount, JeansNumber = NEW.JeansNumber,
JeansSize = NEW.JeansSize, Saler = NEW.Saler;
 END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t_SaleUpdate after update on sales
for each row begin
insert into sales_jn set Operation = 'update', DateOperation = NOW(),
SaleID = OLD.ID, CardNumber = OLD.CardNumber, DateOfSale = OLD.DateOfSale,
Amount = OLD.Amount, JeansNumber = OLD.JeansNumber,
JeansSize = OLD.JeansSize, Saler = OLD.Saler;
 END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t_SaleDelete before delete on sales
for each row begin
insert into sales_jn set Operation = 'delete', DateOperation = NOW(),
SaleID = OLD.ID, CardNumber = OLD.CardNumber, DateOfSale = OLD.DateOfSale,
Amount = OLD.Amount, JeansNumber = OLD.JeansNumber,
JeansSize = OLD.JeansSize, Saler = OLD.Saler;
 END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sales_jn`
--

DROP TABLE IF EXISTS `sales_jn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_jn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SaleID` int(11) NOT NULL,
  `CardNumber` varchar(45) NOT NULL,
  `DateOfSale` varchar(45) NOT NULL,
  `Amount` varchar(45) NOT NULL,
  `JeansNumber` varchar(45) NOT NULL,
  `JeansSize` varchar(45) NOT NULL,
  `Saler` varchar(45) NOT NULL,
  `Operation` varchar(45) NOT NULL,
  `DateOperation` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_jn`
--

LOCK TABLES `sales_jn` WRITE;
/*!40000 ALTER TABLE `sales_jn` DISABLE KEYS */;
INSERT INTO `sales_jn` VALUES (1,0,'6','10-10-2010','2000','500','31','Ромбик','insert','2016-05-08 16:14:47');
/*!40000 ALTER TABLE `sales_jn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-08 19:45:49
