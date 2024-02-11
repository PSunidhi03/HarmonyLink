-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: harmonylink
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carehomes`
--

DROP TABLE IF EXISTS `carehomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carehomes` (
  `c_id` int DEFAULT NULL,
  `c_name` text,
  `c_location` text,
  `c_contact` bigint DEFAULT NULL,
  `c_count` int DEFAULT NULL,
  `c_type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carehomes`
--

LOCK TABLES `carehomes` WRITE;
/*!40000 ALTER TABLE `carehomes` DISABLE KEYS */;
INSERT INTO `carehomes` VALUES (1,'Abhayadhama (Home for Street Boys) (Estd1979)','Human Development Centre, WhitefieldPost, Bengaluru 560 066',9012345678,258,'orphanage'),(2,'Bala Yesu Bhavan (Estd 1992)','SOS Post, Kalena Agrahara, Bannerghatta Road, Bengaluru 560076',9087654321,267,'orphanage'),(3,'Calabrain Children Home (Estd 2005)','SH KRIPA,No. 63, Harohalli Road, Huskuru Post, Bengaluru560 099,',7856341290,278,'orphanage'),(4,'Good Shepherd Home for the Children','MuseumRoad, Bengaluru 560 025',9845672103,59,'orphanage'),(5,'Makkala Jeevodaya (Estd 2007)','Maruthinagara, 1st Main, 1st Cross, Madivala,Bengaluru 560 068',8765430192,206,'orphanage'),(6,'Namma Kutumbashrama (Home for AbondonedWomen & Children)','No. 31/60, ShaktiNagara, Bengaluru 560 016',7890123456,110,'orphanage'),(7,'Nirmala Shishu Bhavan (Estd 1970)','No. 4, HennuruMain Road, Lingarajapuram, Bengaluru 560 084',9823456701,90,'orphanage'),(8,'OLPS Childrenâ€™s Home','C/o OLPS Convent, Harobale,Via Sathanuru, Kanakapura Tq., Ramanagara Dist.,562 126',8907856341,277,'orphanage'),(9,'Our Lady of Lourdes Childrenâ€™s Home (Estd 1980)','Kunigal Post, Tumakuru Dist., 572 130',7654321098,91,'orphanage'),(10,'Semeria Bhavan (Estd 2015)','Kamma Sandra, NearHarrohalli Gate, Husukuru Post, Bengaluru 560 099',9045678123,97,'orphanage'),(11,'Sevasadhan Orphanage (Estd 1969)','Post Box No.3417, 3rd Block, 8th Main, Koramangala, Bengaluru560 034',8765432190,133,'orphanage'),(12,'St. Anneâ€™s Orphanage & Boarding for Girls','GokuntePost, Mulabagilu Tq., Kolara 563 131',8901234569,210,'orphanage'),(13,'St. Charles Convent (Estd 1945)','Hennur Main Road,Lingarajapuram, St Thomas Town Post, Bengaluru560 084',9801234567,51,'orphanage'),(14,'St. Francis De Sales Convent Orphange andBoarding for Girls','Begur Post, Bengaluru560 068',7856341290,144,'orphanage'),(15,'St. Josephâ€™s Convent RTC Girls Orphanage','No. 49, Promenade Road, Fraser Town, Bengaluru 560005',9765432109,52,'orphanage'),(16,'Our Lady of Providence Childrensâ€™ Home (Estd1972)','Our Lady of Providence Convent, ChurchRoad, Kanakapura, Ramanagara Dist., 562117',8901234567,206,'orphanage'),(17,'St. Maryâ€™s Boarding','Gandhinagara, Tumakuru,572 102',9045678123,138,'orphanage'),(18,'St. Maryâ€™s Children Home (Estd 1956)','Chamarajapete, Bengaluru 560 018',765430192,107,'orphanage'),(19,'St. Maryâ€™s Orphanage (Estd 1959)','No. 8, 2nd Cross,Daâ€™Costa Layout, St Thomas Town Post, Bengalur560 084',7654321098,139,'orphanage'),(20,'St. Patrickâ€™s Orphanage (For Boys), (Estd 1970),','No. 15K, Brigade Road, Bengaluru 560 025',9801234567,216,'orphanage'),(21,'KASHIKA SEVA TRUST','133, 4th floor, Bank of baroda, building, Bannerghatta Rd, behind Adishwar electronics, Vijayashri Layout, Syndicate Bank Colony, Bengaluru, Karnataka 560076',8907856341,299,'oldagehome'),(22,'Athulya Assisted Living','S.V. Towers, #99/1, Old No. 45, Parappana Agrahara Kasavanahalli, Hosa Rd, Bengaluru, Karnataka 560100',7890123456,101,'oldagehome'),(23,'Lavalavike Old Age Home and Rehabilitation Centre','673, Giri Nilaya, 6th Main, 2nd Cross Rd, near Manasa Hospital, Hoshalli Extension, Stage 1, Vijayanagar, Bengaluru, Karnataka 560040',9801234567,291,'oldagehome'),(24,'Nature Health Care','south, taluk, 55, Tharalu Village, Uttarahalli Hobli, Bengaluru, Karnataka 560116',8907856341,245,'oldagehome'),(25,'Sudhama Old Age Home','#25, Sy No.66/2, Reddy Farm,, Giridhama Layout, BEML Layout, Rajarajeshwari Nagar, Bengaluru, Karnataka 560098',7890123456,203,'oldagehome'),(26,'Manidweepa Trust','#118/2, Doctors Layout, Kembathalli Main Road, Bannerghatta Main Rd, Gottigere, Bengaluru, Karnataka 560083',9823456701,101,'oldagehome'),(27,'Asha nandana','ideal home circle, #1A, guruprerana, Shankarappa Layout, Rajarajeshwari Nagar, Bengaluru, Karnataka 560098',8765432190,83,'oldagehome'),(28,'Vathsalya Old Age Home - Your Second Home for Everyone','2397/43, 10th Main Rd, Kumaraswamy Layout II Stage, 2nd Stage, Kumaraswamy Layout, Bengaluru, Karnataka 560078',9045678123,71,'oldagehome'),(29,'Akshara Seva Trust(R)','No:64, 1, 1st Cross Rd, Vivekananda Colony, Umarbagh Layout, Banashankari Temple Ward, Bengaluru, Karnataka 560078',8765430192,288,'oldagehome'),(30,'Sri Chaithanya Old Age Home','5th Phase, 267, 17th Cross Rd, 5th Phase, KR Layout, J. P. Nagar, Bengaluru, Karnataka 560078, India',7654321098,202,'oldagehome'),(31,'Sudhama Old Age Home','#25, Sy No.66/2, Reddy Farm,, Giridhama Layout, BEML Layout, Rajarajeshwari Nagar, Bengaluru, Karnataka 560098, India',9801234567,292,'oldagehome'),(32,'Sumukha Old Age Home','747, 47th Cross Road, 1st Main Rd, 8th Block, Jayanagar, Bengaluru, Karnataka 560070, India',8901234567,300,'oldagehome'),(33,'Shri Mahalakshmi Old Age Home','No.240, 2nd D Cross, 6th Main Rd, 3rd Stage 4th Block, Near, Basaveshwar Nagar, Bengaluru, Karnataka 560079, India',8907856341,187,'oldagehome'),(34,'Sumukha Luxury Old Age Home','No5, Vaderahalli, Off, Kanakapura Rd, Agara Village, Panchayat, Kengeri Hobli, Bengaluru, Badamanavarathekaval, Karnataka 560082, India',7890123456,225,'oldagehome'),(35,'Sri Chaithanya Old Age Home','5th Phase, 267, 17th Cross Rd, 5th Phase, KR Layout, J. P. Nagar, Bengaluru, Karnataka 560078, India',9823456701,77,'oldagehome'),(36,'Sumukha Luxury Old Age Home In Bangalore','No5, Vaderahalli, Off, Kanakapura Rd, Agara Village, Panchayat, Kengeri Hobli, Bengaluru, Badamanavarathekaval, Karnataka 560082, India',8765432190,83,'oldagehome'),(37,'Sudhama Old Age Home','#25, Sy No.66/2, Reddy Farm,, Giridhama Layout, BEML Layout, Rajarajeshwari Nagar, Bengaluru, Karnataka 560098, India',7654321098,64,'oldagehome'),(38,'Sai kuteera Old Age Home','1329/L 19th main 1st cross, 51RTO office, 19th Main Rd, near KA, behind car oark, BDA Layout BTM 4th Stage, Bengaluru, Karnataka 560076, India',9801234567,190,'oldagehome'),(39,'KASHIKA SEVA TRUST','133, 4th floor, Bank of baroda, building, Bannerghatta Rd, behind Adishwar electronics, Vijayashri Layout, Syndicate Bank Colony, Omkar Nagar, Hulimavu, Bengaluru, Karnataka 560076, India',8901234567,95,'oldagehome'),(40,'Ashraya Old Age Home','18th Main Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038, India',7856341290,255,'oldagehome'),(41,'Vrundavan Old Age Home','27, 2nd Cross Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038, India',9765432109,65,'oldagehome'),(42,'Nirmala Old Age Home','18th Main Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038, India',8901234567,242,'oldagehome'),(43,'Sri Krishna Kripa Old Age Home','22nd Main Rd, Banaswadi, Bengaluru, Karnataka 560043, India',9045678123,295,'oldagehome'),(44,'Prarthana Old Age Home','30, 18th Main Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038, India',8765430192,199,'oldagehome'),(45,'Ank Senior Citizen & Healthcare Home','35, HAL Airport Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038',7654321098,66,'oldagehome'),(46,'Sree Nilaya Senior Citizen Home','160/2, 5th Main Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038',9801234567,215,'oldagehome'),(47,'ElderSpring Care','88, Doddakanneli Rd, off Sarjapur Main Rd, Bellandur, Bengaluru, Karnataka 560032',8901234567,83,'oldagehome'),(48,'Spandana Free Orphanage & Charitable Trust','121, 46th Main Rd, BTM Layout 2nd Stage, Bengaluru, Karnataka 560076',9801234567,188,'oldagehome'),(49,'Sneha Care Home','55, 3rd Cross Rd, Sanjaynagar, Bengaluru, Karnataka 560070',8907856341,290,'oldagehome'),(50,'Jeeva Jyothi Children\'s Home','107, 5th Main Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038',8765432101,111,'orphanage'),(51,'Karunya Mission for Children','183, 2nd Main Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038',8901234567,236,'orphanage'),(52,'Hope Foundation India','65, 8th Main Rd, Koramangala 4th Block, Bengaluru, Karnataka 560034',9876543210,259,'orphanage'),(53,'ChildFund India','18, Cunningham Rd, Vasanthnagar, Bengaluru, Karnataka 560053',8907654321,139,'orphanage'),(54,'Shanti Sadan Old Age Home','27, 2nd Cross Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038',8765432109,132,'oldagehome'),(55,'Akshay Old Age Home','22nd Main Rd, Banaswadi, Bengaluru, Karnataka 560043',8901234567,158,'oldagehome'),(56,'Dayananda Sagar Senior Citizen Care Home','18th Main Rd, Banaswadi, Bengaluru, Karnataka 560043',8765432108,139,'oldagehome'),(57,'Mahaveer Jain Old Age Home','27th Main, 17th Cross, J. P. Nagar 7th Phase, Bengaluru, Karnataka 560078',9012345678,203,'oldagehome'),(58,'Vimalalaya Old Age Home','83/4, 8th Main Road, Jayanagar 4th Block, Bengaluru, Karnataka 560069',8901234567,238,'oldagehome');
/*!40000 ALTER TABLE `carehomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monetary_donations`
--

DROP TABLE IF EXISTS `monetary_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monetary_donations` (
  `username` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `dat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monetary_donations`
--

LOCK TABLES `monetary_donations` WRITE;
/*!40000 ALTER TABLE `monetary_donations` DISABLE KEYS */;
INSERT INTO `monetary_donations` VALUES ('sunn',10.00,'2024-01-31'),('vish',10.00,'2024-01-31'),('vish',20.00,'2024-01-31'),('sunn',50.00,'2024-01-31'),('vish',10.00,'2024-01-31'),('vish',10.00,'2024-01-31'),('sunn',10.00,'2024-01-31'),('sunn',10.00,'2024-01-31'),('sunn',20.00,'2024-02-09'),('sunn',20.00,'2024-02-09'),('sunn',20.00,'2024-02-09'),('sunn',10.00,'2024-02-09'),('sunn',20.00,'2024-02-09');
/*!40000 ALTER TABLE `monetary_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(60) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('sunn','sunn@gamilc.com','ss','moon','111'),('vish','vish@gmail.com','vv','moon\'s harth','222');
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

-- Dump completed on 2024-02-11 16:11:47
