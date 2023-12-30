-- MariaDB dump 10.19  Distrib 10.5.21-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: appdb
-- ------------------------------------------------------
-- Server version	5.6.51

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `appdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `appdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `appdb`;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `bidding_price` double NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sold` bit(1) NOT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdvd6ljes11r44igawmpm1mc5s` (`team_id`),
  CONSTRAINT `FKdvd6ljes11r44igawmpm1mc5s` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(2,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(3,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(4,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(5,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(6,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(7,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(8,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(9,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(10,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(11,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(12,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(13,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(14,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(15,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(16,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(17,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(18,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maximum_budget` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,15000,'Demo'),(2,15000,'Demo'),(3,15000,'Demo'),(4,15000,'Demo'),(5,15000,'Demo'),(6,15000,'Demo'),(7,15000,'Demo'),(8,15000,'Demo'),(9,15000,'Demo'),(10,15000,'Demo'),(11,15000,'Demo'),(12,15000,'Demo'),(13,15000,'Demo'),(14,15000,'Demo'),(15,15000,'Demo'),(16,15000,'Demo'),(17,15000,'Demo'),(18,15000,'Demo');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$oDDKhsAPvxIhwbsdNmM.fegvv1gTxHHSoigafuG4T/mRyvnIfNsKO','ADMIN','admin'),(2,'$2a$10$9fJfUosutiaI07gvmdq4X.X5360Q8C5/BAD0Xda/dgAHHgZwBbdii','ADMIN','admin'),(3,'$2a$10$V10EYb82OfZYBFCl6bgX2e5Cc7YchZTY9iqMeV0m7B2d5SE/BA62G','ADMIN','admin'),(4,'$2a$10$/xgN.cPICgJLFEB/8QuPh.ga7OKpQVkj4MrY7tSKocbbwwBxYI7OC','ADMIN','admin'),(5,'$2a$10$xgXoh5TiSa2O.ygeLcgp1ONa1Fy9Y3LI8WtJHJ45eMo3Thqx8iKty','ADMIN','admin'),(6,'$2a$10$CorSkxsodo1XB3W1pj6stuUj4WdqkrGv5EqB1nVCX77j0oHCYcdrW','ADMIN','admin'),(7,'$2a$10$s.f9gDFbR/mtUJoDLdCNJ.AqTrjWnJ2IP7C0.IZ3/7AjyY0LYiY1S','ADMIN','admin'),(8,'$2a$10$yDSBpptKFwuD9B93W5r04eg8bjkSFM3O2IDxbjK3QfQn4Ry/70HIy','ADMIN','admin'),(9,'$2a$10$i3RJ120.XeiLE5pG3g/MseD4ewNu55i7WbTGxMg8Cqs1AN5YNdwt6','ADMIN','admin'),(10,'$2a$10$XpvhhTuPsRMH8.s9g9iJBe5HDbwUupfwQP9SG5oqkYLJygxAUAe/.','ADMIN','admin'),(11,'$2a$10$D57YAp0UZRBI15jS8Wv4/e6s1MzZ8eCsUnQKdu4pZGdhupBDgCZT.','ADMIN','admin'),(12,'$2a$10$3TvDsyRH5.MsSrzRpZxWK.vov60TaCtoHESuBG6LREzuUGVxN90FW','ADMIN','admin'),(13,'$2a$10$bveuNiiCDU5P3UZN3gHFOOM2SiFweILvmOlxKO49LbIqRIAEhIMOS','ADMIN','admin'),(14,'$2a$10$aXTpXPtjzfSvYS5PCklaKeRl9cZNC9sMDMa9AFszRRYE/vcP0baKW','ADMIN','admin'),(15,'$2a$10$KFyPzWdf0yq8uqBAeIpDBOfBGS5f.f53VXSf08LdXwTBjXbJrq1k6','ADMIN','admin'),(16,'$2a$10$tjlT0IhFhXoNqLljb0G4fewcr/Oau6Oge1DL9laofIE9MVbB8R0o6','ADMIN','admin'),(17,'$2a$10$r5X4i6xZoZ9A3ESl69N9beSzfzewJHimw87/kpfrIn7MGFHlu3t/q','ADMIN','admin'),(18,'$2a$10$AMCIQDyd3sN.ACqJ87XJnuUg/pZFXYpfRLxaYE7rmK6nwi3R9TD2e','ADMIN','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-30 11:51:25
