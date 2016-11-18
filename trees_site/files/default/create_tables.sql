-- MySQL dump 10.13  Distrib 5.7.13, for osx10.11 (x86_64)
--
-- Host: localhost    Database: pasha_asp
-- ------------------------------------------------------
-- Server version	5.7.13

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
-- Table structure for table `alloted_reqs_for_events`
--

DROP TABLE IF EXISTS `alloted_reqs_for_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alloted_reqs_for_events` (
  `Eventid` int(9) DEFAULT NULL,
  `reqID` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alloted_reqs_for_events`
--

LOCK TABLES `alloted_reqs_for_events` WRITE;
/*!40000 ALTER TABLE `alloted_reqs_for_events` DISABLE KEYS */;
INSERT INTO `alloted_reqs_for_events` VALUES (60,'RQ170944ZD'),(59,'RQ547508MC'),(59,'RQ416076IP'),(73,'RQ556697ML'),(72,'RQ756161WJ'),(58,'RQ477874XW'),(58,'RQ551428TK'),(14,'RQ962754AU');
/*!40000 ALTER TABLE `alloted_reqs_for_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alloted_trees_for_events`
--

DROP TABLE IF EXISTS `alloted_trees_for_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alloted_trees_for_events` (
  `Eventid` int(9) DEFAULT NULL,
  `Identifier` varchar(32) NOT NULL,
  `status` varchar(16) DEFAULT NULL,
  UNIQUE KEY `Identifier` (`Identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alloted_trees_for_events`
--

LOCK TABLES `alloted_trees_for_events` WRITE;
/*!40000 ALTER TABLE `alloted_trees_for_events` DISABLE KEYS */;
INSERT INTO `alloted_trees_for_events` VALUES (1,'RM-434368','completed'),(66,'CT-898058','completed'),(66,'RM-198012','completed'),(66,'RB-323013','completed'),(66,'RB-910113','completed'),(68,'RB-802827','pending'),(68,'SM-432587','pending'),(69,'RB-245276','pending'),(69,'CT-713293','pending'),(70,'SM-433876','pending'),(70,'SM-290557','pending'),(71,'CT-207363','pending'),(71,'RB-948566','pending'),(72,'SM-521632','completed'),(72,'RB-792113','completed'),(73,'CT-761712','completed'),(73,'RB-855928','completed');
/*!40000 ALTER TABLE `alloted_trees_for_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `creditcard` bigint(16) NOT NULL,
  `address` varchar(120) NOT NULL,
  `zip` int(9) NOT NULL,
  `name` varchar(32) NOT NULL,
  `cvv` int(5) NOT NULL,
  PRIMARY KEY (`creditcard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (4833120063098132,'1202 E 116TH Ter',64131,'Lal Pasha Shaik',533);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completed_events`
--

DROP TABLE IF EXISTS `completed_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completed_events` (
  `EventID` int(9) DEFAULT NULL,
  `EventName` varchar(120) DEFAULT NULL,
  `EventDate` date DEFAULT NULL,
  `EventTime` varchar(9) DEFAULT NULL,
  `Location` varchar(128) DEFAULT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `lead` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed_events`
--

LOCK TABLES `completed_events` WRITE;
/*!40000 ALTER TABLE `completed_events` DISABLE KEYS */;
INSERT INTO `completed_events` VALUES (1,'UCMO Campus Tree Planting','2016-07-30','11am','Warensburg,MO','planting trees in the UCM warensburg campus',NULL),(2,'Environment Awareness Program at Lee\'s Summit Campus','2016-06-22','12pm','Chimpan Road,Kansas City,MO','Lecture on nature awareness and activities',NULL),(3,'Future events discussion','2016-06-30','9am','Kauffman Center, Down Town, Kansas City,MO','Planning on upcoming events and assigning responsibilities',NULL),(4,'Volunteer Awards-2016','2016-07-09','4pm','Ball Conference Room, Kansas City, MO','Distribution of awards to the best volunteers.',NULL),(5,'President Visit to Warrensburg Campus','2016-07-18','7pm','Elliot Union, Warrenburg Campus, Warrensburg, MO','Inauguration of New Website of Planet Tree Organization',NULL),(66,'plo2','2016-07-27','1pm','waegaeg','awegaeg;o','BatMan'),(67,'plo2','2016-07-27','1pm','waegaeg','awegaeg;o','BatMan'),(66,'plo2','2016-07-27','1pm','waegaeg','awegaeg;o','BatMan'),(61,'saoshigaeg;oh','2016-07-20','1pm','waegaeg','awegaeg;o','BatMan'),(60,'testingevt','2016-07-06','4pm','waefawgwaegwagwag','wfawewagwgjogn','BatMan'),(59,'testingevt','2016-07-06','4pm','waefawgwaegwagwag','wfawewagwgjogn','BatMan'),(73,'Library Event Tue','2016-07-26','3pm','Avila Univ Road2','','BatMan'),(72,'Library Event Mon','2016-07-26','1pm','Avila Univ Road1','','BatMan'),(58,'pashab','2016-07-19','1pm','uuio','','BatMan'),(14,'tesc','2016-07-04','1pm','wea','ewefwaf','BatMan');
/*!40000 ALTER TABLE `completed_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donations` (
  `Name` varchar(32) NOT NULL,
  `Address` varchar(128) NOT NULL,
  `TransactionDate` date NOT NULL,
  `Card` int(4) NOT NULL,
  `Amount` int(9) NOT NULL,
  `TranscationID` varchar(32) NOT NULL,
  PRIMARY KEY (`TranscationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES ('Microsoft ','1202 E 116Th ter \n64131','2016-07-17',8132,1575,'4NN2ZQ'),('Lal Pasha Shaik ','1202 E 116th Ter \n64131','2016-06-14',8132,240,'NYI54I'),('Lal Pasha Shaik ','1202 E 116th Ter \n64131','2016-06-14',8132,180,'O9JKOJ'),('Aqib ','1202 E 116th Ter \n64131','2016-07-19',8132,1440,'WE1WXV'),('batman ','1202 E 116th Ter \n64131','2016-07-16',8132,180,'ZZ7K7W');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_tree_req`
--

DROP TABLE IF EXISTS `plant_tree_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plant_tree_req` (
  `reqID` varchar(16) NOT NULL,
  `reqUID` int(9) NOT NULL,
  `reqDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Location` varchar(150) NOT NULL,
  `species` varchar(32) NOT NULL,
  `quantity` int(9) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'unscheduled',
  PRIMARY KEY (`reqID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_tree_req`
--

LOCK TABLES `plant_tree_req` WRITE;
/*!40000 ALTER TABLE `plant_tree_req` DISABLE KEYS */;
INSERT INTO `plant_tree_req` VALUES ('RQ170944ZD',1,'2016-06-18 14:55:46','ewege','Sugar Maple',1,'rgdrsgdh','completed'),('RQ416076IP',5,'2016-06-18 15:44:43','Overland Park, Kansas','River Birch',1,'protect trees','completed'),('RQ477874XW',2,'2016-06-18 13:17:29','afa','Red Maple',2,'efasf','completed'),('RQ547508MC',16,'2016-07-16 16:04:39','Mars2','River Birch',2,'UAT','completed'),('RQ551428TK',2,'2016-06-18 13:22:58','sgd','Red Maple',1,'efg','completed'),('RQ556697ML',2,'2016-07-18 18:39:31','Avila Library Lane in Wornal','Sugar Maple',2,'Its really nice to have more trees near Library','completed'),('RQ570242LT',5,'2016-06-18 15:44:19','Warrensburg,MO','Sugar Maple',2,'protect trees','unscheduled'),('RQ575828YW',16,'2016-07-16 16:04:04','Mars','Catalpa',3,'UAT','unscheduled'),('RQ670437OL',2,'2016-06-18 13:13:29','qwefds','Sugar Maple',1,'sfsdv','pending'),('RQ730065TJ',2,'2016-06-18 13:06:51','sdfs','Red Maple',1,'sfasg','pending'),('RQ756161WJ',2,'2016-07-18 18:46:06','Library Avila','Sugar Maple',1,'Near Avila Univ main Lib','completed'),('RQ770358PB',5,'2016-06-18 15:43:40','kansas city,MO','Red Maple',1,'plant tree','unscheduled'),('RQ882705DV',16,'2016-07-16 16:04:45','Mars2','Sugar Maple',2,'UAT','unscheduled'),('RQ899255ZJ',2,'2016-06-18 14:44:52','warens','Red Maple',2,'feff','pending'),('RQ918041BM',1,'2016-06-18 14:55:40','aefae','Red Maple',1,'sfasg','pending'),('RQ962754AU',2,'2016-07-20 01:33:19','Lee Summit center , CIS bloack','Sugar Maple',2,'Final Test','completed'),('RQ982421GD',2,'2016-06-18 13:14:11','wefewf','Sugar Maple',2,'sgs','pending');
/*!40000 ALTER TABLE `plant_tree_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treeids`
--

DROP TABLE IF EXISTS `treeids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treeids` (
  `TranscationID` varchar(32) NOT NULL,
  `TreeName` varchar(32) NOT NULL,
  `Identifier` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treeids`
--

LOCK TABLES `treeids` WRITE;
/*!40000 ALTER TABLE `treeids` DISABLE KEYS */;
INSERT INTO `treeids` VALUES ('NYI54I','Red Maple','RM-434368'),('NYI54I','River Birch','RB-463400'),('NYI54I','River Birch','RB-126258'),('NYI54I','Catalpa','CT-207363'),('NYI54I','Catalpa','CT-483918'),('NYI54I','Catalpa','CT-745421'),('NYI54I','Catalpa','CT-322586'),('O9JKOJ','Red Maple','RM-880358'),('O9JKOJ','Sugar Maple','SM-504434'),('O9JKOJ','Sugar Maple','SM-464582'),('ZZ7K7W','Sugar Maple','SM-839862'),('ZZ7K7W','Sugar Maple','SM-290557'),('ZZ7K7W','River Birch','RB-569511'),('ZZ7K7W','River Birch','RB-802827'),('4NN2ZQ','Red Maple','RM-667646'),('4NN2ZQ','Red Maple','RM-863651'),('4NN2ZQ','Red Maple','RM-691305'),('4NN2ZQ','Red Maple','RM-564334'),('4NN2ZQ','Red Maple','RM-363228'),('4NN2ZQ','Red Maple','RM-198012'),('4NN2ZQ','Red Maple','RM-321473'),('4NN2ZQ','Red Maple','RM-239020'),('4NN2ZQ','Red Maple','RM-324087'),('4NN2ZQ','Sugar Maple','SM-236516'),('4NN2ZQ','Sugar Maple','SM-706083'),('4NN2ZQ','Sugar Maple','SM-399694'),('4NN2ZQ','Sugar Maple','SM-432587'),('4NN2ZQ','Sugar Maple','SM-521632'),('4NN2ZQ','Sugar Maple','SM-722540'),('4NN2ZQ','Sugar Maple','SM-433876'),('4NN2ZQ','Sugar Maple','SM-349664'),('4NN2ZQ','Sugar Maple','SM-384633'),('4NN2ZQ','River Birch','RB-792113'),('4NN2ZQ','River Birch','RB-245276'),('4NN2ZQ','River Birch','RB-948566'),('4NN2ZQ','River Birch','RB-327541'),('4NN2ZQ','River Birch','RB-855928'),('4NN2ZQ','River Birch','RB-323013'),('4NN2ZQ','River Birch','RB-919809'),('4NN2ZQ','River Birch','RB-974400'),('4NN2ZQ','River Birch','RB-910113'),('4NN2ZQ','Catalpa','CT-616147'),('4NN2ZQ','Catalpa','CT-145644'),('4NN2ZQ','Catalpa','CT-898058'),('4NN2ZQ','Catalpa','CT-372790'),('4NN2ZQ','Catalpa','CT-713293'),('4NN2ZQ','Catalpa','CT-761712'),('4NN2ZQ','Catalpa','CT-964097'),('4NN2ZQ','Catalpa','CT-277627'),('4NN2ZQ','Catalpa','CT-124940'),('WE1WXV','Red Maple','RM-265137'),('WE1WXV','Red Maple','RM-248566'),('WE1WXV','Red Maple','RM-960901'),('WE1WXV','Red Maple','RM-860149'),('WE1WXV','Red Maple','RM-375489'),('WE1WXV','Red Maple','RM-883455'),('WE1WXV','Red Maple','RM-577240'),('WE1WXV','Red Maple','RM-963389'),('WE1WXV','Red Maple','RM-898904'),('WE1WXV','Red Maple','RM-657201'),('WE1WXV','Red Maple','RM-716708'),('WE1WXV','Red Maple','RM-318178'),('WE1WXV','Red Maple','RM-270460'),('WE1WXV','Red Maple','RM-374520'),('WE1WXV','Sugar Maple','SM-276450'),('WE1WXV','Sugar Maple','SM-706119'),('WE1WXV','River Birch','RB-495418'),('WE1WXV','River Birch','RB-440190'),('WE1WXV','Catalpa','CT-495647'),('WE1WXV','Catalpa','CT-351869'),('WE1WXV','Catalpa','CT-540422'),('WE1WXV','Catalpa','CT-818997'),('WE1WXV','Catalpa','CT-368380'),('WE1WXV','Catalpa','CT-328942'),('WE1WXV','Catalpa','CT-462322'),('WE1WXV','Catalpa','CT-271291'),('WE1WXV','Catalpa','CT-687349'),('WE1WXV','Catalpa','CT-502676'),('WE1WXV','Catalpa','CT-191445'),('WE1WXV','Catalpa','CT-627801'),('WE1WXV','Catalpa','CT-396814'),('WE1WXV','Catalpa','CT-356585'),('WE1WXV','Catalpa','CT-776370'),('WE1WXV','Catalpa','CT-357716');
/*!40000 ALTER TABLE `treeids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upcoming_events`
--

DROP TABLE IF EXISTS `upcoming_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upcoming_events` (
  `EventID` int(9) NOT NULL AUTO_INCREMENT,
  `EventName` varchar(120) NOT NULL,
  `EventDate` date NOT NULL,
  `EventTime` varchar(9) NOT NULL,
  `Location` varchar(128) NOT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `lead` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upcoming_events`
--

LOCK TABLES `upcoming_events` WRITE;
/*!40000 ALTER TABLE `upcoming_events` DISABLE KEYS */;
INSERT INTO `upcoming_events` VALUES (1,'UCMO Campus Tree Planting','2016-07-30','11am','Warensburg,MO','planting trees in the UCM warensburg campus',NULL),(2,'Environment Awareness Program at Lee\'s Summit Campus','2016-06-22','12pm','Chimpan Road,Kansas City,MO','Lecture on nature awareness and activities',NULL),(3,'Future events discussion','2016-06-30','9am','Kauffman Center, Down Town, Kansas City,MO','Planning on upcoming events and assigning responsibilities',NULL),(4,'Volunteer Awards-2016','2016-07-09','4pm','Ball Conference Room, Kansas City, MO','Distribution of awards to the best volunteers.',NULL),(5,'President Visit to Warrensburg Campus','2016-07-18','7pm','Elliot Union, Warrenburg Campus, Warrensburg, MO','Inauguration of New Website of Planet Tree Organization',NULL),(6,'test','2016-07-17','9pm','hyd','don',NULL),(7,'Test2','2016-07-18','8pm','Khammam','',NULL),(8,'test3','2016-07-26','10am','minor ridge back side','hahah',NULL),(9,'sarpa raju ','2016-07-19','1:20 pm','lease ofce','kill them',NULL),(10,'Plant Event July16','2016-07-26','8am','Kansas City, Mo','Minor golf court ',NULL),(11,'testa','2016-07-27','1pm','afa','gasg',NULL),(12,'testb','2016-07-26','8pm','kcmo ','near home',''),(13,'testb','2016-07-26','8pm','kcmo ','near home',''),(15,'afefa','2016-07-04','1pm','sgag','wefawf','lalpasha'),(16,'labevent1','2016-07-26','1pm','sfafefajfoa;gn;','aw;oesghas;gag;','admin1'),(17,'mevent1','2016-07-25','2m','near bp','roads ','BatMan'),(52,'treeuat1','2016-07-18','12pm','hyd','','BatMan'),(54,'treeuat2','2016-07-18','1pm','ucm','','BatMan'),(55,'treeuat2','2016-07-18','1pm','ucm','','BatMan'),(56,'treeuat3','2016-07-19','1pm','sa','sg','BatMan'),(57,'pasha1','2016-07-20','1pm','ucmco','agae','BatMan'),(68,'testevent9','2016-09-09','8am','UCMO Leesumit','near orion','lalpasha'),(69,'Lib Event1','2016-07-29','2pm','Avila Univ','Near Lan2','lalpasha'),(70,'Lib Event3','2016-07-29','2pm','Avila lab3','Lane3','lalpasha'),(71,'Lib Event4','2016-07-29','4pm','Avila chem lab','Lan8','lalpasha');
/*!40000 ALTER TABLE `upcoming_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upcoming_events_reg`
--

DROP TABLE IF EXISTS `upcoming_events_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upcoming_events_reg` (
  `ID` int(9) NOT NULL AUTO_INCREMENT,
  `UserID` int(9) NOT NULL,
  `EventID` int(9) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upcoming_events_reg`
--

LOCK TABLES `upcoming_events_reg` WRITE;
/*!40000 ALTER TABLE `upcoming_events_reg` DISABLE KEYS */;
INSERT INTO `upcoming_events_reg` VALUES (1,2,1),(2,5,1),(3,5,2),(4,5,3),(5,5,4),(6,5,5),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,1,1),(12,1,3),(13,1,4),(14,8,1),(15,16,1),(16,16,2),(17,2,14),(18,2,71),(19,2,52);
/*!40000 ALTER TABLE `upcoming_events_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` int(9) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(32) NOT NULL,
  `Password` varchar(128) NOT NULL,
  `FullName` varchar(32) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `Phone` varchar(16) DEFAULT NULL,
  `Address` varchar(256) DEFAULT NULL,
  `UserRole` varchar(16) DEFAULT NULL,
  `Type` varchar(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'BatMan','40be4e59b9a2a2b5dffb918c0e86b3d7','I AM BATMAN','batman@mrv.com','9247148388','WarenBurg, CA','lead','0'),(3,'lalpasha','lalpasha','Lal Pasha Shaik','testmail','9247148388','9-1-34/30/12\r\nBapunagar,Langerhouse','lead','0'),(7,'admin1','0192023a7bbd73250516f069df18b500',NULL,NULL,NULL,NULL,'lead','Admin'),(8,'admin','40be4e59b9a2a2b5dffb918c0e86b3d7','Site Admin','admin@ptree.com','9848032919','UCMO , Warensburg','Admin','Admin'),(16,'uatlab12','40be4e59b9a2a2b5dffb918c0e86b3d7','UAT LAB USER','uatlab12@pltree.com','12349086','Katie Street in Mars',NULL,'0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-20  1:50:59

