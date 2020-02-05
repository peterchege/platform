-- MySQL dump 10.13  Distrib 5.7.28-31, for Linux (x86_64)
--
-- Host: localhost    Database: apa_website
-- ------------------------------------------------------
-- Server version	5.7.28-31

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `apa_job_applicants`
--

DROP TABLE IF EXISTS `apa_job_applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apa_job_applicants` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `applicant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `second_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirm_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profile_image_url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `social_media_platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `password_reset` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_applicants`
--

LOCK TABLES `apa_job_applicants` WRITE;
/*!40000 ALTER TABLE `apa_job_applicants` DISABLE KEYS */;
/*!40000 ALTER TABLE `apa_job_applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apa_job_applicants_certification`
--

DROP TABLE IF EXISTS `apa_job_applicants_certification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apa_job_applicants_certification` (
  `id` int(11) NOT NULL,
  `certificate` varchar(50) NOT NULL,
  `issuing_organization` varchar(50) NOT NULL,
  `issuing_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `applicant_id` int(15) NOT NULL,
  `job_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `job_id fk` (`job_id`) USING BTREE,
  KEY `applicant_id fk` (`applicant_id`) USING BTREE,
  CONSTRAINT `applicant_id fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_id fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_applicants_certification`
--

LOCK TABLES `apa_job_applicants_certification` WRITE;
/*!40000 ALTER TABLE `apa_job_applicants_certification` DISABLE KEYS */;
/*!40000 ALTER TABLE `apa_job_applicants_certification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apa_job_applicants_education_qualification`
--

DROP TABLE IF EXISTS `apa_job_applicants_education_qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apa_job_applicants_education_qualification` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `institution` varchar(255) NOT NULL,
  `program` varchar(50) NOT NULL,
  `education_level` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `graduation_date` date NOT NULL,
  `anticipated_graduation_date` date NOT NULL,
  `job_id` int(15) NOT NULL,
  `applicant_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `applicant id` (`applicant_id`) USING BTREE,
  KEY `job id` (`job_id`) USING BTREE,
  CONSTRAINT `applicant id` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job id` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_applicants_education_qualification`
--

LOCK TABLES `apa_job_applicants_education_qualification` WRITE;
/*!40000 ALTER TABLE `apa_job_applicants_education_qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `apa_job_applicants_education_qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apa_job_applicants_employment_history`
--

DROP TABLE IF EXISTS `apa_job_applicants_employment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apa_job_applicants_employment_history` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `employer_company` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `current_job` varchar(255) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `notice_period` varchar(255) NOT NULL,
  `roles_performed` varchar(255) NOT NULL,
  `applicant_id` int(15) NOT NULL,
  `job_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `applicant id fk` (`applicant_id`) USING BTREE,
  KEY `job id fk` (`job_id`) USING BTREE,
  CONSTRAINT `applicant id fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job id fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_applicants_employment_history`
--

LOCK TABLES `apa_job_applicants_employment_history` WRITE;
/*!40000 ALTER TABLE `apa_job_applicants_employment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `apa_job_applicants_employment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apa_job_applicants_file_attachments`
--

DROP TABLE IF EXISTS `apa_job_applicants_file_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apa_job_applicants_file_attachments` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `job_id` int(15) NOT NULL,
  `applicant_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `applicant_id_fk` (`applicant_id`) USING BTREE,
  KEY `apa_job_post_fk` (`job_id`) USING BTREE,
  CONSTRAINT `apa_job_post_fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `applicant_id_fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_applicants_file_attachments`
--

LOCK TABLES `apa_job_applicants_file_attachments` WRITE;
/*!40000 ALTER TABLE `apa_job_applicants_file_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `apa_job_applicants_file_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apa_job_applicants_personal_info`
--

DROP TABLE IF EXISTS `apa_job_applicants_personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apa_job_applicants_personal_info` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `other_names` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `national_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `applicant_id` int(15) NOT NULL,
  `job_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `apa_applicant fk` (`applicant_id`) USING BTREE,
  KEY `apa_job_post fk` (`job_id`) USING BTREE,
  CONSTRAINT `apa_applicant fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `apa_job_post fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_applicants_personal_info`
--

LOCK TABLES `apa_job_applicants_personal_info` WRITE;
/*!40000 ALTER TABLE `apa_job_applicants_personal_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `apa_job_applicants_personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apa_job_internship_applications`
--

DROP TABLE IF EXISTS `apa_job_internship_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apa_job_internship_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intern_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_internship_applications`
--

LOCK TABLES `apa_job_internship_applications` WRITE;
/*!40000 ALTER TABLE `apa_job_internship_applications` DISABLE KEYS */;
INSERT INTO `apa_job_internship_applications` VALUES (1,'2QiDrszLFW','Jane','Doe','janedoe@gmail.com','0712365478','janedoe@gmail.com-2QiDrszLFW-sample.pdf'),(2,'QSKLUOPAC0','LEWIS','MWANGI','lewismwaura172@gmail.com','0714344697','lewismwaura172@gmail.com-QSKLUOPAC0-LEWIS MWAURA CV..pdf'),(3,'TvedX37HVy','Brian','Gumba','brianodhiambo79@gmail.com','0729009181','brianodhiambo79@gmail.com-TvedX37HVy-GUMBA ODHIAMBO BRIAN CV.edited (1).docx'),(4,'dnvdozyVEa','Trevor','Otieno','otienotrevor1@gmail.com','0702548401','otienotrevor1@gmail.com-dnvdozyVEa-Trevor Otieno -Curriculum vitae 3.docx'),(5,'HRpvHJIpI','Evaline','Sambai','chepngenoeve@gmail.com','0729047457','chepngenoeve@gmail.com-HRpvHJIpI-MS EVALINE CHEPNGENO SAMBAI CV.pdf'),(6,'lmdPVydjS','Evodia','Kijuu','wkijuu@gmail.com','0724201111','wkijuu@gmail.com-lmdPVydjS-Waithera Kijuu CV .pdf'),(7,'TGOPVusg7c','Jane','Gathendu','Jane.gathendu@strathmore.edu','0798940475','Jane.gathendu@strathmore.edu-TGOPVusg7c-Jane Joy Wairima Gathendu_CV.pdf'),(8,'IABztP32s','Langat','Vincent','vincentl@aims.ac.za','0712230453','vincentl@aims.ac.za-IABztP32s-KIPKEMOI-CV.pdf'),(9,'LhNd0cAMQ','GeriGerishGerishom','Manyengo','gerrymanyengo@gmail.com','0714076553','gerrymanyengo@gmail.com-LhNd0cAMQ-Gerishom resume.pdf'),(10,'jqWfLpsxbF','Cornelius','Muraya','corneliusmaraya26@gmail.com','0799787861','corneliusmaraya26@gmail.com-jqWfLpsxbF-CV Cornelius.docx'),(11,'dLmcCCDR2X','Amos','Nyamao','nyamaoamos@gmail.com','072987122','nyamaoamos@gmail.com-dLmcCCDR2X-AMOS NYAMAO CV  cuurrent (1).docx'),(12,'j5gFxxfcBH','Amos','Nyamao','nyamaoamos@gmail.com','0729878122','nyamaoamos@gmail.com-j5gFxxfcBH-Amos Nyamao (1).docx'),(13,'a90BKJeIjM','PAUL','KIMEU','pwambuakim@gmail.com','0710940100','pwambuakim@gmail.com-a90BKJeIjM-CV.doc'),(14,'GssnDvuf0Q','Peter','Kinuthia','peterchege442@gmail.com','0701075090','peterchege442@gmail.com-GssnDvuf0Q-Document5.docx'),(15,'X3jTNs3M4e','BELINDA','WAMUCII','belindawamucii@gmail.com','0719183156','belindawamucii@gmail.com-X3jTNs3M4e-Belinda Wamucii CV.docx'),(16,'R8RivL2SZ','Ian','Kariuki','ianmutokaa99@gmail.com','0724883858','ianmutokaa99@gmail.com-R8RivL2SZ-premium cv.pdf'),(17,'WwrGKxYLty','Nixon','TOO','nickkipko@gmail.com','0727259624','nickkipko@gmail.com-WwrGKxYLty-CV.pdf'),(18,'DXMBfpabQe','Shanice','Asoma','shaniceasoma@gmail.com','0711879769','shaniceasoma@gmail.com-DXMBfpabQe-latest cv Shanice Nov 2019.docx'),(19,'WeC0xzkgHX','GLENN','WASONGA','glennwasonga.gw@gmail.com','0712501108','glennwasonga.gw@gmail.com-WeC0xzkgHX-cv.pdf'),(20,'eo43ayVTzx','Peter','Kamau','kamaupeter343@gmail.com','0715 555 770','kamaupeter343@gmail.com-eo43ayVTzx-CV PETER KAMAU KUNGÃš.pdf'),(21,'fq4zHIYXKj','Wanjiru','Kinyanjui','wanjiru.kinyanjui@strathmore.edu','0734684730','wanjiru.kinyanjui@strathmore.edu-fq4zHIYXKj-Wanjiru Kinyanjui_CV.pdf'),(22,'qsQLZJI2gV','ALEX','WAITA','alexwaita12@gmail.com','0710742236','alexwaita12@gmail.com-qsQLZJI2gV-ALEX NDETEI C.V.pdf'),(23,'8GZRbN3sRj','Sadia','Dima','dimasadia02@gmail.com','0719631068','dimasadia02@gmail.com-8GZRbN3sRj-sadia_cv_2019.pdf'),(24,'PtjEBbfrw7','MICHAEL','KITHI','michael.jkithi@gmail.com','0741363375','michael.jkithi@gmail.com-PtjEBbfrw7-Michael Kithi Updated CV.pdf'),(25,'9UfvkQ5aTc','JANE','SYOMBUA','sjanekatangwa@yahoo.com','0740233429','sjanekatangwa@yahoo.com-9UfvkQ5aTc-CV- 3 (1) PDF.pdf'),(26,'4q9hbY0hX','Titus','Kimeu','tituskimeu2015@gmail.com','0701435240','tituskimeu2015@gmail.com-4q9hbY0hX-KISUA CV.docx'),(27,'0U01cfNJu0','Bii','Cherotich','Biicherotich47@gmail.com','0718808315','Biicherotich47@gmail.com-0U01cfNJu0-Cherotich Bii - Curriculum Vitae.pdf'),(28,'u9E5vOpBzQ','Victoria','Osindi','victoriaosindi289@gmail.com','0718526386','victoriaosindi289@gmail.com-u9E5vOpBzQ-victoria osindi.pdf'),(29,'dhW2f4C7qz','Ruth','Lucy','lruthkabura@gmail.com','+254719666880','lruthkabura@gmail.com-dhW2f4C7qz-Ms. Kabura CV.pdf'),(30,'a1Sh0GPgR1','ELLY','OKOTH','okothelly21@gmail.com','0711437203','okothelly21@gmail.com-a1Sh0GPgR1-ELLY_OKOTH_-_ (1).pdf'),(31,'RpurivvfA','Devis','Kimutai','deviski30@yahoo.com','0704251539','deviski30@yahoo.com-RpurivvfA-CURRICULUM VITA-WPS Office.doc'),(32,'4H7doroltb','Diana Rebecca','Nyaruai','nyaruaidiana@gmail.com','+ 254724549865','nyaruaidiana@gmail.com-4H7doroltb-CV  Diana Rebecca Nyaruai.docx'),(33,'rQ9tDqFHE','Geoffrey','Musiega','musiega.dgeoffrey@gmail.com','0791399449','musiega.dgeoffrey@gmail.com-rQ9tDqFHE-CV EDITED.docx'),(34,'XSCuPc6CS0','Lydia','Machoka','lydiamachoka956@gmail.com','0727698514','lydiamachoka956@gmail.com-XSCuPc6CS0-CV_2019-12-08-062348.pdf'),(35,'dA9k3UuLsA','daniel','kamau','dankinyanjui88@gmail.com','0714656925','dankinyanjui88@gmail.com-dA9k3UuLsA-DANIEL KINYANJUI KAMAU CV UP-TO-DATE 2.docx'),(36,'jjnicIN7v7','daniel','kamau','dankinyanjui88@gmail.com','0714656925','dankinyanjui88@gmail.com-jjnicIN7v7-DANIEL KINYANJUI KAMAU CV UP-TO-DATE 2.docx'),(37,'SdXTFTwve1','ELIJAH','OMBEO','ombeoelijah@gmail.com','0727021012','ombeoelijah@gmail.com-SdXTFTwve1-Resume2019.pdf'),(38,'ldzCrBqWzM','ELIJAH','OMBEO','ombeoelijah@gmail.com','0727021012','ombeoelijah@gmail.com-ldzCrBqWzM-Resume2019.pdf'),(39,'opqM1B6cL0','MUTUKU','NZYOKA','nzyokamutuku5@gmail.com','0791797379','nzyokamutuku5@gmail.com-opqM1B6cL0-MUTUKU.CV.pdf'),(40,'2c9xqcq7s','Cherotich','Rodha','cheroh97rodha@gmail.com','0796420974','cheroh97rodha@gmail.com-2c9xqcq7s-Curriculum vitae  cherotich rodha.docx'),(41,'i4R14HaaoX','George','Ngaruiya','ngaruiyageorge6@gmail.com','0732911209','ngaruiyageorge6@gmail.com-i4R14HaaoX-NgaruiyaNjuguna.pdf'),(42,'CJSKiBCBg7','Elizabeth','Mwangi','elizanims@gmail.com','0714593639','elizanims@gmail.com-CJSKiBCBg7-CURRICULUM VITAE elizanims(new).docx'),(43,'2y7Y82WgdA','Amon','Ng&#039;enda','ngendaamon0@gmail.com','0724402894','ngendaamon0@gmail.com-2y7Y82WgdA-Curriculum vitae.docx'),(44,'2bfLmNzZB','Teresa','Nyaata','tessnyaata@gmail.com','0741132087','tessnyaata@gmail.com-2bfLmNzZB-Teresa Kwamboka CV.pdf'),(45,'OZ234kKuQ','Teresa','Nyaata','tessnyaata@gmail.com','0741132087','tessnyaata@gmail.com-OZ234kKuQ-Teresa Kwamboka CV.pdf'),(46,'YTATMSwAES','Teresa','Nyaata','tessnyaata@gmail.com','0741132087','tessnyaata@gmail.com-YTATMSwAES-SKMBT_C22019113015010.pdf'),(47,'KynlSVdFch','Geofrey','Kiprotich','geofreykiprotich22.gk@gmail.com','0710919873','geofreykiprotich22.gk@gmail.com-KynlSVdFch-KIPROTICH GEOFREY.docx'),(48,'HDvnmb7i','Leslie','Agunda','leslie.akello@gmail.com','0724294487','leslie.akello@gmail.com-HDvnmb7i-LESLIE AKELLO C.V.docx'),(49,'e5xkIl2j88','Joseph','Manono','jondukom@gmail.com','0720283895','jondukom@gmail.com-e5xkIl2j88-resume final 1 (1).pdf'),(50,'LaiE07TLXg','ECLA','WANYAMA','eclawanyama2@gmail.com','0707245896','eclawanyama2@gmail.com-LaiE07TLXg-CURRICULUM (1) ecla(2).docx'),(51,'nvhgO8ax0x','WILFRED','MWANGI','wilfrednjugunamwangi@gmail.com','0710577433','wilfrednjugunamwangi@gmail.com-nvhgO8ax0x-RESUME-WILFRED NJUGUNA.docx'),(52,'IdbVPKhcA9','Purity','Bigisa','puritybigasa@gmail.com','0742379883','puritybigasa@gmail.com-IdbVPKhcA9-CV.pdf'),(53,'T1RoxhhvKT','DAVID','MWIRICHIA','DAVIEMAINGI@GMAIL.COM','0710266262','DAVIEMAINGI@GMAIL.COM-T1RoxhhvKT-DAVID CV latest.pdf'),(54,'YcjjZRx2bq','DAVID','MWIRICHIA','DAVIEMAINGI@GMAIL.COM','0710266262','DAVIEMAINGI@GMAIL.COM-YcjjZRx2bq-DAVID CV latest.pdf'),(55,'BOV2L7IRGx','JOHN','NAIVEST','onaivest@gmail.com','+254796377219','onaivest@gmail.com-BOV2L7IRGx-O.J RESUME.pdf'),(56,'hQTvBHSHa','Ann','Ndung&#039;u','annndungu2016@gmail.com','0702037636','annndungu2016@gmail.com-hQTvBHSHa-Ann Wanjiru New CV Insurance (1).docx'),(57,'ihgUcKp46E','Amos','Kilanya','amoskilanya@gmail.com','0714452174','amoskilanya@gmail.com-ihgUcKp46E-KILANYA Lite cv.doc'),(58,'N6bQ5a9Fpy','Peter','Kiptanui','peterngetich363@gmail.com','0713303431','peterngetich363@gmail.com-N6bQ5a9Fpy-Peter Cover letter for APA internship.docx'),(59,'gk46zO794','Aron','Sang','aronsaang1996@gmail.com','0714234635','aronsaang1996@gmail.com-gk46zO794-ARON SANG CV FINAL COPY.docx'),(60,'5lyBv6yAkF','Winnie','Kulei','wkulei@aims.edu.gh','0719709271','wkulei@aims.edu.gh-5lyBv6yAkF-Winnie Jepkonga Kulei_CV.pdf'),(61,'sYhasHDtZd','Aliya','parkar','aaliyaaj1@gmail.com','0741379332','aaliyaaj1@gmail.com-sYhasHDtZd-ALIYA PARKAR (2).pdf'),(62,'QYnerfEDiG','Racheal','Wanjiku','racheal2wanjiku@gmail.com','0795703801','racheal2wanjiku@gmail.com-QYnerfEDiG-C.V.pdf'),(63,'gZCxMtmB82','Stephen','Kihunyu','Stephenkihunyu46@gmail.com','0722378227','Stephenkihunyu46@gmail.com-gZCxMtmB82-STEPHEN   MWANGI CV new.pdf'),(64,'SqAwvIm8YG','Dalmas','Maritim','maritimdalmas@gmail.com','+254725856942','maritimdalmas@gmail.com-SqAwvIm8YG-DALMAS CV(Final).docx'),(65,'uQfsB7VYn9','Dalmas','Maritim','maritimdalmas@gmail.com','0725856942','maritimdalmas@gmail.com-uQfsB7VYn9-DALMAS CV(Final).docx'),(66,'sgo7EeGHrI','Derick','Isinga','derrickisinga@gmail.com','707830701','derrickisinga@gmail.com-sgo7EeGHrI-Derick cv(1).docx'),(67,'ycC6ZTLIaC','KEVIN','ODERO','odero.odi@gmail.com','0721266111','odero.odi@gmail.com-ycC6ZTLIaC-INDUSTRIAL ATTACHMENT-APA.docx'),(68,'n9BwZo1mBi','Winfred','Nason','wnahson69@gmail.com','0725382241','wnahson69@gmail.com-n9BwZo1mBi-Winfred Mwende_CV.pdf'),(69,'lgjz4sCqJv','Michael','Koech','kiprotichkoech34@gmail.com','+254729950488','kiprotichkoech34@gmail.com-lgjz4sCqJv-MIKE CURRICULUM VITAE.docx'),(70,'g1UNtd5Mbe','DAVID','MWIRICHIA','DAVIEMAINGI@GMAIL.COM','0710266262','DAVIEMAINGI@GMAIL.COM-g1UNtd5Mbe-DAVID CV (1).pdf'),(71,'42HZLfhYLF','Sandra','Mwendwa','sandramwendwa@gmail.com','0713 945581','sandramwendwa@gmail.com-42HZLfhYLF-Sandra Mwendwa CV.pdf'),(72,'KF4bDVzd4','Philip','Barasa','mukwanaphilip@gmail.com','0724990314','mukwanaphilip@gmail.com-KF4bDVzd4-CV-Philip Barasa.pdf'),(73,'4lsqXw4jqe','James','Harron.','harronjam3s@gmail.com','0727725996','harronjam3s@gmail.com-4lsqXw4jqe-CURRICULUM VITAE.pdf'),(74,'r1xLgBUkze','KIplagat','Robert Kosgey','robkiplagat@gmail.com','0728157843','robkiplagat@gmail.com-r1xLgBUkze-curriculum vitae.pdf'),(75,'yaXK9x8DLM','TIMOTHY','MWANGI','muhinditm@hotmail.com','0721145822','muhinditm@hotmail.com-yaXK9x8DLM-CURRICULUM VITAE.pdf'),(76,'kzCykU7AT','Kate','Mbugua','kate.mbugua@strathmore.edu','0705410489','kate.mbugua@strathmore.edu-kzCykU7AT-Resume Kate Mbugua.docx.pdf'),(77,'f1SWeFLIX','John','Ndungu','johnndungu8@gmail.com','0728132111','johnndungu8@gmail.com-f1SWeFLIX-Wathua John Ndungu resume...docx'),(78,'wvQCnVBOSp','Sharon','Kiprop','sharon.kiprop@strathmore.edu','0715702341','sharon.kiprop@strathmore.edu-wvQCnVBOSp-Sharon Kiprop.pdf'),(79,'AGX52ZwVZT','Hellen','Jaluha','tracyjay07@gmail.com','+254710921055','tracyjay07@gmail.com-AGX52ZwVZT-Tracy Resume.pdf'),(80,'mzecIFs1cw','Hellen','Jaluha','tracyjay07@gmail.com','+254710921055','tracyjay07@gmail.com-mzecIFs1cw-Tracy Resume.pdf'),(81,'55g2Zy8Le3','KELVIN','TOWETT','kelvintowett82@gmail.com','0706231202','kelvintowett82@gmail.com-55g2Zy8Le3-kevo updated cv-2.docx'),(82,'T6BHY09u5','Regina','Mulei','reginahmulei@gmail.com','+254 707 266 231','reginahmulei@gmail.com-T6BHY09u5-Regina Munee Mulei CV -v4.PDF.pdf'),(83,'HZ6Oe98PR','Zephaniah','Kimondo','Zephkimondo1995@gmail.com','0746806054','Zephkimondo1995@gmail.com-HZ6Oe98PR-Resume 2020.pdf'),(84,'Y08HTVLyrU','Tracy','Kanyiri','kanyiriwangu@gmail.com','0702619631','kanyiriwangu@gmail.com-Y08HTVLyrU-CV.docx'),(85,'OQOsVftGbL','Juliet','Mutai','julietcmutai@gmail.com','0708371480','julietcmutai@gmail.com-OQOsVftGbL-Mutai CV.pdf'),(86,'wvSvnW9TUY','Maryiddah','Wanjiru','maryiddahw@gmail.com','0714496225','maryiddahw@gmail.com-wvSvnW9TUY-Maryiddah Wanjiru - Student Actuary - VisualCV.pdf'),(87,'epG4Z0cyOe','JOSHUA','MOBISA','joshuamobisara@gmail.com','0704103937','joshuamobisara@gmail.com-epG4Z0cyOe-current cv.docx'),(88,'CcL8aIhX6','Maurine','Ndinda','nmollyw@gmail.com','0714540011','nmollyw@gmail.com-CcL8aIhX6-waita-1.docx'),(89,'tEyA2CPMoH','Jackson','Marwa','caligdemara@gmail.com','+254727891180','caligdemara@gmail.com-tEyA2CPMoH-JACKONMARWA CV.docx'),(90,'IsNm1x4hNT','Shanice','Asoma','shaniceasoma@gmail.com','0711879769','shaniceasoma@gmail.com-IsNm1x4hNT-latest cv Shanice 2020-converted.pdf'),(91,'RUdNtNXJC7','Kelly','Gitahi','gitahikelly5@gmail.com','0713403451','gitahikelly5@gmail.com-RUdNtNXJC7-CURRICULUM VITAE - KELLY.docx'),(92,'SzFi0kSiJN','Gregory','Otenyo','gregoryotenyo@gmail.com','0799055109','gregoryotenyo@gmail.com-SzFi0kSiJN-GREG CV UPDATED.pdf'),(93,'JQEK597Cx','Kennedy','Sila','musyosila@gmail.com','0716102293','musyosila@gmail.com-JQEK597Cx-Cv.pdf'),(94,'C6Kmr9bfUi','Neema','Nyakara','neeemaogega@gmail.com','0706551538','neeemaogega@gmail.com-C6Kmr9bfUi-NeemaupdatedResume.pdf'),(95,'QJNKQcMHHn','LORNA','MBAU','lorna.mbau@strathmore.edu','+254706164499','lorna.mbau@strathmore.edu-QJNKQcMHHn-RESUME.pdf'),(96,'6nc1ZyyANG','Christine','Gikunju','njerichristy@gmail.com','0790176005','njerichristy@gmail.com-6nc1ZyyANG-Christine Njeri Gikunju- C.V..pdf'),(97,'M86eTR6C5','Apphia','David','apphiamumbe@gmail.com','0714787469','apphiamumbe@gmail.com-M86eTR6C5-CV-APPHIA MUMBE.docx'),(98,'BYEtZs1kEg','Mercy','Mallel','mercymallel1@gmail.com','0705060807','mercymallel1@gmail.com-BYEtZs1kEg-Mercy C Mallel .pdf'),(99,'wFbHvmpcDa','Snowrrene','Musah','snowriandwa@gmail.com','0715677778','snowriandwa@gmail.com-wFbHvmpcDa-SNOWRRENE CURRICULUM VITAE 2020.doc'),(100,'3ADJu5OxKU','ZAPHANIA','KINUTHIA','ngugikinuthia00@gmail.com','0715673447','ngugikinuthia00@gmail.com-3ADJu5OxKU-ZEFF CV.docx'),(101,'SXZJ2CVNh','James','Guya','guyajames.01@gmail.com','0728591882','guyajames.01@gmail.com-SXZJ2CVNh-JAMES GUYA CV UPDATE.doc'),(102,'uPyABqJAiW','Tracy','Karimi','karimitracey@gmail.com','0718835275','karimitracey@gmail.com-uPyABqJAiW-TRACEY CV 2019 UPDATE.docx'),(103,'OFe38NnUM','NAOMI NYABOKE','OMWERI','omwerinyaboke@gmail.com','0700353952','omwerinyaboke@gmail.com-OFe38NnUM-NAOMI NYABOKE OMWERI CV 2019.docx'),(104,'Dam0Kn5HTz','Mwengea','Munee','heltonmunee861@gmail.com','0706187879','heltonmunee861@gmail.com-Dam0Kn5HTz-Curriculum vitae.docx'),(105,'Zj1IXihbcm','Aron','Kirui','aronkirui64@gmail.com','0728441900','aronkirui64@gmail.com-Zj1IXihbcm-0_ARON  CV uchumi & moe.docx'),(106,'S8lgE6H9Im','Kelvin','Njoroge','karanjakelvin534@gmail.com','0712306251','karanjakelvin534@gmail.com-S8lgE6H9Im-Current resume.pdf'),(107,'X7OcaOVZfr','Amos','Rotich','amosrotich95@gmail.com','0700007828','amosrotich95@gmail.com-X7OcaOVZfr-U resume.pdf'),(108,'qrQbtmwKcd','KEVIN','ODERO','odero.odi@gmail.com','0721266111','odero.odi@gmail.com-qrQbtmwKcd-APA INSURANCE.docx'),(109,'D2qjb2KkZi','LEWIS','MWANGI','lewismwaura172@gmail.com','0714344697','lewismwaura172@gmail.com-D2qjb2KkZi-LEWIS MWAURA CV. (1).docx'),(110,'qjCBuDSTP','Philip','Kiawa','philokiawa@gmail.com','+254712143164','philokiawa@gmail.com-qjCBuDSTP-Philip Kiawa CV.doc'),(111,'d1SOdFTL0','SSUSAN','N','suzzanechege@gmail.com','254 0792159810','suzzanechege@gmail.com-d1SOdFTL0-Susan Nyambura Chege  cv.docx'),(112,'ENU3qzRBHe','SYLVIA','MUIRURI','wanjikusylvia738@gmail.com','0718638763','wanjikusylvia738@gmail.com-ENU3qzRBHe-RESUME wanjiku.pdf'),(113,'HiV1TGFBil','Purity','Bigisa','puritybigasa@gmail.com','0742379883','puritybigasa@gmail.com-HiV1TGFBil-CV.pdf'),(114,'dITokB8R2O','fridah','kiumbe','fmukami30@gmail.com','0725461325','fmukami30@gmail.com-dITokB8R2O-CV - FRIDAH MUKAMI KIUMBE.docx'),(115,'nH9co9F4mG','JOYCE','WANGUI','joycewangui456@gmail.com','0711860061','joycewangui456@gmail.com-nH9co9F4mG-Joyce wangui Njaaga CV.pdf'),(116,'sSOUCiWtki','Lorraine','Okemo','okemolorraine@gmail.com','0716970404','okemolorraine@gmail.com-sSOUCiWtki-CV.pdf'),(117,'CC3fXLZL7U','Lawrence','Kisia','oderalawrence12@gmail.com','0704807837','oderalawrence12@gmail.com-CC3fXLZL7U-CURRICULUM_VITAE[1].docx'),(118,'0t1hpFzw6M','Fidelis','Ndanu','fiddyndanu@gmail.com','0723243935','fiddyndanu@gmail.com-0t1hpFzw6M-FIDDYYY-CV.doc'),(119,'4a2b0drUS3','Musyoki','Sammy','kelvinmusyoki30@gmail.com','0702083222','kelvinmusyoki30@gmail.com-4a2b0drUS3-1578994219337_CURRICULUM  VITAE.docx'),(120,'d62bcyE81N','Francis','Musyoki','francismusyoki24@gmail.com','0702868727','francismusyoki24@gmail.com-d62bcyE81N-Francis CV.pdf'),(121,'kDRbA0QFAm','Caroline','Kalumu','karolynkalumu@gmail.com','0726577954','karolynkalumu@gmail.com-kDRbA0QFAm-CURRICULUM VITAE . CAROLINE KALUMU (1).pdf'),(122,'TCNa4aiE99','Carolyne','Mutinda','carolynemrima@yahoo.com','0710462889','carolynemrima@yahoo.com-TCNa4aiE99-Carolyne Tabitha Mutinda CV.pdf'),(123,'xPtZG80Wqs','GASPER','OTIENO','markgasper13@gmail.com','0790271653','markgasper13@gmail.com-xPtZG80Wqs-OTIENO MARK  GASPER 2019  cv SOFT (1).pdf'),(124,'Jbfd3UJNen','Emmanuel','Gaga','phanuel930otieno@gmail.com','0716336967','phanuel930otieno@gmail.com-Jbfd3UJNen-Emmanuel  Cv4.pdf'),(125,'OH2h6WU1IG','Stephen','Oriedi','stephenooriedi@gmail.com','0705430853','stephenooriedi@gmail.com-OH2h6WU1IG-Stephen Oriedi CV 1.pdf'),(126,'HtRokAePJN','Stephen','Oriedi','stephenooriedi@gmail.com','0705430853','stephenooriedi@gmail.com-HtRokAePJN-LETTER OF COMPLETION..pdf'),(127,'mqABHGlgM','Leonida','Rotich','leorchell95@gmail.com','0790020317','leorchell95@gmail.com-mqABHGlgM-CV.docx'),(128,'ENE7gXtuv','Njathi','Kimani','Njathi.Kimani@outlook.com','0786815625','Njathi.Kimani@outlook.com-ENE7gXtuv-resume.pdf'),(129,'c7ZyEPVRf9','Halima','Mohamed','atienohalima@gmail.com','0704370504','atienohalima@gmail.com-c7ZyEPVRf9-CV.pdf'),(130,'mbdlG0Ii5','Grace','Mwai','graciewangechi@gmail.com','0738196807','graciewangechi@gmail.com-mbdlG0Ii5-Grace APA internship Resume.pdf'),(131,'XWWWNbQ6ZB','Grace','Mwai','graciewangechi@gmail.com','0738196807','graciewangechi@gmail.com-XWWWNbQ6ZB-Grace APA internship Resume.pdf'),(132,'CbUCmsQpYp','Linda','Marari','mararilinda17@gmail.com','0729782840','mararilinda17@gmail.com-CbUCmsQpYp-Resume.pdf'),(133,'kBqo7Msmih','Elsheba','Kibor','elshebakibor@gmail.com','0720572300','elshebakibor@gmail.com-kBqo7Msmih-Copy of ELSHEBA -C.V.pdf'),(134,'289afT7ggB','Simon','Mwangi','simonmwangi528@gmail.com','0707153602','simonmwangi528@gmail.com-289afT7ggB-SIMON MWANGI CURRICULUM VITAE.pdf'),(135,'5LbQQi8qu0','Kamaria','Hassan','kamaria1079@gmail.com','0708843125','kamaria1079@gmail.com-5LbQQi8qu0-Kamaria cv.docx'),(136,'SPtIu0luPY','ESTHER','PAUL','estherwpaul@gmail.com','0713531655','estherwpaul@gmail.com-SPtIu0luPY-ESTHER.docx'),(137,'UgdWJknZ1P','ann','kariuki','annkariuki500@gmail.com','0717797140','annkariuki500@gmail.com-UgdWJknZ1P-ann.docx'),(138,'xbuaIzbWIr','HOPE','LUMBASI','lumbasiht@gmail.com','0704128977','lumbasiht@gmail.com-xbuaIzbWIr-0_lumbasihoperesume.pdf'),(139,'xRvn84cNd','Stephen','Oriedi','stephenooriedi@gmail.com','0705430853','stephenooriedi@gmail.com-xRvn84cNd-Oriedi Stephen CV.pdf'),(140,'M8i4UnPVPh','Mesalimu','Mwashuruti','mmwashuruti@gmail.com','0705808337','mmwashuruti@gmail.com-M8i4UnPVPh-MESALIMU MWASHURUTI RESUME.docx'),(141,'97TE8q0kro','Franffffrfrranklranklikfrlyne','Morang&aacute;','franklelux57@gmail.com','0757902757','franklelux57@gmail.com-97TE8q0kro-frank cv.docx'),(142,'jABwzudSSN','Franklyne','Morang&aacute;','franklelux57@gmail.com','0757902757','franklelux57@gmail.com-jABwzudSSN-frank cv.docx'),(143,'aiUbEl4OyD','Philip','Mutola','itsmutola@gmail.com','0712426514','itsmutola@gmail.com-aiUbEl4OyD-CV CURRICULUM VITAE 2019-converted.pdf'),(144,'UumslOxNw','Enock','Suiyon','suyanenock@gmail.com','0725536708','suyanenock@gmail.com-UumslOxNw-CV.docx'),(145,'GtzvBCu4a6','Ephantus','Gachuhi','ephymwihaki@gmail.com','+254790534750','ephymwihaki@gmail.com-GtzvBCu4a6-EPHANTUS MWIHAKI CV-2 (1).pdf'),(146,'XIGaox0Ftw','Ephantus','Gachuhi','ephymwihaki@gmail.com','+254790534750','ephymwihaki@gmail.com-XIGaox0Ftw-EPHANTUS MWIHAKI CV-2 (1).pdf'),(147,'Z1oEvVd9iJ','Mulunzu','Ndanu','lidzndanu@gmail.com','0716498988','lidzndanu@gmail.com-Z1oEvVd9iJ-CURRICULUM VITAE.pdf'),(148,'u01MlDh6Cp','Kennedy','Ngugi Mungai','kennedyngugi118@gmail.com','0780495542','kennedyngugi118@gmail.com-u01MlDh6Cp-KENNEDY NGUGI-2019_CV (1).docx'),(149,'RjXoXYS1uc','Zeneth','Kiplangat','zenethk1@gmail.com','0711459593, 0778011001','zenethk1@gmail.com-RjXoXYS1uc-Z c. v.docx'),(150,'8sXTiRUhG5','Kelly','Gitahi','gitahikelly5@gmail.com','0713403451','gitahikelly5@gmail.com-8sXTiRUhG5-CURRICULUM VITAE - KELLY.docx'),(151,'riv3giSZ','Belinda','Ojiambo','belindaojiambo1994@gmail.com','0702403998','belindaojiambo1994@gmail.com-riv3giSZ-BELINDA CURRICULUM VITAE.pdf'),(152,'e43FeZPjFc','Aaron','Marira','aaron.gichanga17@gmail.com','072786065','aaron.gichanga17@gmail.com-e43FeZPjFc-Marira Aaron Resume(1).docx'),(153,'munwDgXaB0','Sharon','Mutegi','kawirasharon9@gmail.com','0718511044','kawirasharon9@gmail.com-munwDgXaB0-CURRICULUM   VITAE SHARON MUTEGI.docx'),(154,'tp417DCDqR','Sharon','Mutegi','kawirasharon9@gmail.com','0718511044','kawirasharon9@gmail.com-tp417DCDqR-CURRICULUM   VITAE SHARON MUTEGI.docx'),(155,'bAJF1rl1oV','Kelvin','Mwenda','mwendak2@gmail.com','0720880104','mwendak2@gmail.com-bAJF1rl1oV-kelvin mwenda cv.docx'),(156,'WClM46pqW','IRENE','BAKALA','irene.bakala@gmail.com','0713468812','irene.bakala@gmail.com-WClM46pqW-Resume Irene.docx'),(157,'SdJkz06uj','SLOAN','OMWENGA','sloan.omwenga@gmail.com','0776963974','sloan.omwenga@gmail.com-SdJkz06uj-CURRICULUM VITAE.pdf'),(158,'5lwndlZpQx','Serena','Rotich','rotichserena@gmail.com','0791307793','rotichserena@gmail.com-5lwndlZpQx-Serena Rotich CV.pdf'),(159,'1jGZwMJvld','JANET','KAGIA','njerry.janet@gmail.com','0717721595','njerry.janet@gmail.com-1jGZwMJvld-curriculum vitae.docx'),(160,'m9hPoO5rRz','Franklin','Muthomi','sominyagah@gmail.com','0711123165','sominyagah@gmail.com-m9hPoO5rRz-APA CV.docx'),(161,'EElg4mhQ','Ruth','Mwende','kyuleruth@gmail.com','0707047437','kyuleruth@gmail.com-EElg4mhQ-inbound8601679588022737611.pdf'),(162,'GvOx4QWL2U','Brenda','Makhakha','brendamakha@gmail.com','0729311332','brendamakha@gmail.com-GvOx4QWL2U-MAKHAKHA N BRENDA -RESUME.pdf'),(163,'9OfqYXHbV','Winnie','Kanana','Kanananjebiu@gmail.com','0716366967','Kanananjebiu@gmail.com-9OfqYXHbV-Winnie Njebiu CV Updated.pdf'),(164,'WAwnfSeH3c','Beatrice','Wambui','bettywambui18@gmail.com','0708279739','bettywambui18@gmail.com-WAwnfSeH3c-i.d.pdf'),(165,'YIAuBtoCBK','Beatrice','Wambui','bettywambui18@gmail.com','0708279739','bettywambui18@gmail.com-YIAuBtoCBK-Beatrice c.v.docx'),(166,'Wxhtg4Nyri','Isaiah','Junior','abusa254@gmail.com','0701183451','abusa254@gmail.com-Wxhtg4Nyri-Abusa Isaiah Junior Curriculum Vitae - Updated pdf.pdf'),(167,'tZhIaj6htv','Steven','Mwendia','chiuristeven@gmail.com','0711893945','chiuristeven@gmail.com-tZhIaj6htv-Chiuri C.v.(1)-converted.docx'),(168,'bFiORcpRx','Ricky','Ayiera','ayieraricky@gmail.com','+254790283675','ayieraricky@gmail.com-bFiORcpRx-Ricky_Ayiera_resume_4.1.5.pdf'),(169,'J1CMISXw5t','BONIFACE','GITONGA','bonniemugesh@gmail.com','0797266152','bonniemugesh@gmail.com-J1CMISXw5t-BMG CV.docx'),(170,'auJ4MYlXu9','Branton','Lemiso','blemiso3@gmail.com','0721261200','blemiso3@gmail.com-auJ4MYlXu9-Branton Lemiso CV..docx'),(171,'g7XAVzXSVz','ANTONY','GAKUNGU','antoneoleaks@gmail.com','0726140129','antoneoleaks@gmail.com-g7XAVzXSVz-CURRICULUM VITAE ANTONY.docx'),(172,'b74hlf2oDV','Dennis','Sigei','deniville52@gmail.com','0713915104','deniville52@gmail.com-b74hlf2oDV-dennis Resume.pdf'),(173,'SDjWaNpb9C','Stephen','Oriedi','stephenooriedi@gmail.com','0705430853','stephenooriedi@gmail.com-SDjWaNpb9C-ORIEDI STEPHEN-resume.pdf'),(174,'X22FzQwhze','ELLY','OKOTH','okothelly21@gmail.com','0711-437-203','okothelly21@gmail.com-X22FzQwhze-ELLY_OKOTH CV NEW.pdf'),(175,'BxyHYz4Pvc','Josphat','Kiplagat','kiplagatjosphat43@gmail.com','0710546722','kiplagatjosphat43@gmail.com-BxyHYz4Pvc-CV.docx'),(176,'f5EHxZguiT','Abdulmalik','Mohamed','abdulmaleekmo@gmail.com','0799608580','abdulmaleekmo@gmail.com-f5EHxZguiT-CV.docx'),(177,'IgOiDmOJb6','Fred','Nyaboga','frednyaboga10@gmail.com','0722520741','frednyaboga10@gmail.com-IgOiDmOJb6-FRED MONYANCHA NYABOGA cv.docx'),(178,'AQzg4Q4tFp','Starlight','Murigi','starlightnjeri@gmail.com','0717722127','starlightnjeri@gmail.com-AQzg4Q4tFp-Starlight.docx'),(179,'KiKD5d0v6q','Felistas','Muema','felistus79@gmail.com','+254716596878','felistus79@gmail.com-KiKD5d0v6q-muthoki f (2).docx'),(180,'CCNNum9VAM','GEORGE','GIKONYO','GEORGE.MWANGI.GIKONYO@GMAIL.COM','0797305919','GEORGE.MWANGI.GIKONYO@GMAIL.COM-CCNNum9VAM-GIKONYO.GEORGE.M.pdf'),(181,'Db7cnDLpIj','GEORGE','GIKONYO','GEORGE.MWANGI.GIKONYO@GMAIL.COM','0797305919','GEORGE.MWANGI.GIKONYO@GMAIL.COM-Db7cnDLpIj-GIKONYO.GEORGE.M.pdf'),(182,'JplWT9pYk','KENNETH','OUKO','jumakenneth809@gmail.com','0797225124','jumakenneth809@gmail.com-JplWT9pYk-RESUME.pdf'),(183,'F3d9T4BdBn','KENNETH','OUKO','jumakenneth809@gmail.com','0797225124','jumakenneth809@gmail.com-F3d9T4BdBn-RESUME.pdf'),(184,'I29GKwPPpk','Ivy','Kiguta','ikiguta@gmail.com','0712000066','ikiguta@gmail.com-I29GKwPPpk-Ivy Kiguta_CV January 2020.doc'),(185,'OpuaJHdhkh','Sylvester','Mose','sylvestermoce@gmail.com','0707604384','sylvestermoce@gmail.com-OpuaJHdhkh-Curriculum vitae- Sylvester Rioba Mose.pdf'),(186,'mEdqa8aDpD','Hildah','Azangalala','azangyhildah@gmail.com','0718954325','azangyhildah@gmail.com-mEdqa8aDpD-Azangalala CV..pdf'),(187,'XdgDnIwjN','Peter','Kanyi','kanyithefirst@gmail.com','0100376584','kanyithefirst@gmail.com-XdgDnIwjN-Kanyi PM.docx'),(188,'vTQcaxUOK','Melody','Nyarang&rsquo;o','amandamelody72@gmail.com','0727569614','amandamelody72@gmail.com-vTQcaxUOK-CURRICULUM VITAE.pdf'),(189,'D7aIDf1qZs','Ivy','Mathilda','mathildaivy95@gmail.com','0714573772','mathildaivy95@gmail.com-D7aIDf1qZs-AYIEKO.docx'),(190,'26V6gktl5y','John','Masai','johnlumbi37@gmail.com','0793592140','johnlumbi37@gmail.com-26V6gktl5y-documents.docx'),(191,'XdgoNfJesl','Annet','Ikwi','ikwiannet6@gmail.com','0741774228','ikwiannet6@gmail.com-XdgoNfJesl-resume_1579600455666.pdf'),(192,'iu1dBgBLsW','Dennis','Maina','dennismuraya.dm@gmail.com','0707068218','dennismuraya.dm@gmail.com-iu1dBgBLsW-CURRICULUM VITAE.docx'),(193,'L6R7qnkjGr','Dennis','Maina','dennismuraya.dm@gmail.com','0707068218','dennismuraya.dm@gmail.com-L6R7qnkjGr-CURRICULUM VITAE.docx'),(194,'DAIns4r5tW','Victor','Obuli','obulievic@gmail.com','0713490873','obulievic@gmail.com-DAIns4r5tW-COMPLETE CV.docx'),(195,'Sj3Fgo8CTW','Ruth','Munari','ruthmunari@gmail.com','0714054764','ruthmunari@gmail.com-Sj3Fgo8CTW-MUNARI RUTH CV.pdf'),(196,'sqrXzfBhRw','EFFIE','ATIENO','effieatieno8@gmail.com','0798372846','effieatieno8@gmail.com-sqrXzfBhRw-EFFIE NEW CV.docx'),(197,'PaYFmWW0fK','JOYCE','NJAAGA','joycewangui456@gmail.com','0711860061','joycewangui456@gmail.com-PaYFmWW0fK-Joyce wangui Njaaga CV.pdf'),(198,'Nuzph8LBOF','Lydia','Awuor','terrylydia997@gmail.com','0791087887','terrylydia997@gmail.com-Nuzph8LBOF-CV updated (1)-converted.pdf'),(199,'Ud0mkodfy','Stella','Sammy','ndssammy@gmail.com','0714352979','ndssammy@gmail.com-Ud0mkodfy-Ndunge CV.docx'),(200,'FdiB5ObaTQ','Duane','Wekesa','duane.wn@gmail.com','0700395331','duane.wn@gmail.com-FdiB5ObaTQ-duanewekesacv.docx'),(201,'JYQH6kWKkJ','KELVIN','TOWETT','kelvintowett82@gmail.com','0706231202','kelvintowett82@gmail.com-JYQH6kWKkJ-kevo updated cv-2.docx'),(202,'pCbA5z7MwH','CATHERINE','KAHIU','catekahiu17@gmail.com','0728466163','catekahiu17@gmail.com-pCbA5z7MwH-RESUME- CATHERINE.pdf'),(203,'npthSUh10w','Stephanie','Kibiego','stephaniekibiego@gmail.com','0712169565','stephaniekibiego@gmail.com-npthSUh10w-My CV.pdf'),(204,'ca3tKy2RNi','Victor','Wema','victorwema@gmail.com','0792198572','victorwema@gmail.com-ca3tKy2RNi-VICTOR WEMA CV.docx'),(205,'WN756AKQ20','ALLAN','KIPTOO','allansirma94.ak@gmail.com','0719163638','allansirma94.ak@gmail.com-WN756AKQ20-CV UPDATED.pdf'),(206,'XpNQSdE9Xu','ROBERT','MAKOKHA','robert11simiyu@gmail.com','0702359003','robert11simiyu@gmail.com-XpNQSdE9Xu-Roberts Cv.pdf'),(207,'R3Pw3ffgXK','Martin','Ngima','martinmaina15@gmail.com','0729322375','martinmaina15@gmail.com-R3Pw3ffgXK-CV marto.doc'),(208,'MpfL3XWkze','Robert','Mwongera','tweri21@gmail.com','0721109749','tweri21@gmail.com-MpfL3XWkze-resume robert mutwiri mwongera.pdf'),(209,'P9fjruIgcq','JOSHUA','MARUBE','joshuamarube6@gmail.com','+254716911067','joshuamarube6@gmail.com-P9fjruIgcq-JOSHUA CV.pdf'),(210,'qOkWTkccBm','MIKE','MUTICHILO','mikemutichilo@gmail.com','0794209480','mikemutichilo@gmail.com-qOkWTkccBm-Mutichilo mike.docx'),(211,'9vWYcahWKo','salome','ndoro','salomendoro@gmail.com','0798199444','salomendoro@gmail.com-9vWYcahWKo-SALOME ATIENO NDORO cv.docx'),(212,'UFCDCl1U7I','TERESIA','WANJERI','trose2047@gmail.com','0711166943','trose2047@gmail.com-UFCDCl1U7I-CURRICULUM VITAE.pdf'),(213,'ibgwI2X24A','Edith','Macharia','edithmimo@gmail.com','0719887700','edithmimo@gmail.com-ibgwI2X24A-EDITH WAIRIMU CURRICULUM VITAE 2.docx'),(214,'hKnE48QcUW','Naomi','Kefa','naomimoraak@gmail.com','0719361280','naomimoraak@gmail.com-hKnE48QcUW-CV KEFA.docx'),(215,'3oAgxncws','WINNIE','OYOSA','winnieoyosa@gmail.com','0792004380','winnieoyosa@gmail.com-3oAgxncws-wso cv.doc'),(216,'92AQs5Nz20','ANTONY','WAWERU','tonywaweru17@gmail.com','0724032855','tonywaweru17@gmail.com-92AQs5Nz20-Resume_2020.doc'),(217,'UFwl8dO6qk','Mercy','Wangari','wangari837@gmail.com','0719648373','wangari837@gmail.com-UFwl8dO6qk-CV.docx'),(218,'rtdNoXV8t3','Mercy','Wangari','wangari837@gmail.com','0719648373','wangari837@gmail.com-rtdNoXV8t3-CV.docx'),(219,'nLq5h1bUbA','David','Mwaniki','davidmwaniki88@yahoo.com','724956369','davidmwaniki88@yahoo.com-nLq5h1bUbA-C.V David Mwaniki (Robin)...doc'),(220,'qojhLOmNU4','KEVIN','LUSWETI','luswetik44@gmail.com','0724600080','luswetik44@gmail.com-qojhLOmNU4-CV -LUSWETI.pdf'),(221,'IwpWl4aST9','YASHIM','BUTENDE','YASHIMBUTENDE@GMAIL.COM','0704078644','YASHIMBUTENDE@GMAIL.COM-IwpWl4aST9-YASHIM RESUME.pdf'),(222,'qPOHsmo3vQ','YASHIM','BUTENDE','YASHIMBUTENDE@GMAIL.COM','0704078644','YASHIMBUTENDE@GMAIL.COM-qPOHsmo3vQ-YASHIM RESUME.pdf'),(223,'8bp1QOrQM','Diana','Chepkirui','chepkiruidianahkirui2@gmail.com','+254723587546','chepkiruidianahkirui2@gmail.com-8bp1QOrQM-dync[1].docx'),(224,'ExsGNzeoaw','Everlyne','Mbondo','mbondoeverlyne@gmail.com','0712387224','mbondoeverlyne@gmail.com-ExsGNzeoaw-Eve M CV 2019.docx'),(225,'dSEPAMV3Bn','Mitch','Ojwang','innism9@mail.com','+254725513844','innism9@mail.com-dSEPAMV3Bn- CV.pdf'),(226,'2D9KNeHJIv','Anne','Mfundi','annemfundi@gmail.com','0705209491','annemfundi@gmail.com-2D9KNeHJIv-Anne cv.pdf'),(227,'f8hbKlooth','Syprose','Nyansarora','Ombongisyprose@gmail.com','0724963096','Ombongisyprose@gmail.com-f8hbKlooth-revised CV.docx'),(228,'8Eca9PZKky','Susan','Njambi','nsuezern@gmail.com','0720307626','nsuezern@gmail.com-8Eca9PZKky-CURRICULUM VITAE.pdf'),(229,'RDVPbEo4pe','Carey','Barasa','barasacarey@gmail.com','0702636405','barasacarey@gmail.com-RDVPbEo4pe-Carey Barasa Nabangi Curriculum Vitae.pdf'),(230,'I3yHuMvZ3S','Lewis','Mwenda','mwendalewis6@gmail.com','0703136414','mwendalewis6@gmail.com-I3yHuMvZ3S-CURRICULUM VITAE lewis mwenda.docx'),(231,'gh2Garf0kU','Dianah','Nanjala','dnanjala85@gmail.com','+254704974133','dnanjala85@gmail.com-gh2Garf0kU-actuarial cv.docx'),(232,'Tg5SC7sMw','Cyril','Njagi','gcyril21@gmail.com','0700004311','gcyril21@gmail.com-Tg5SC7sMw-CYRIL KARIITHI NJAGI CV.docx'),(233,'L7p0tVUWgc','Salome','Ondieki','sallyondieki@gmail.com','0715378731','sallyondieki@gmail.com-L7p0tVUWgc-Salome gesare CV.pdf'),(234,'LmsBajyy20','Norah','Ndiege','norahndiege1@gmail.com','0723201152','norahndiege1@gmail.com-LmsBajyy20-CV - APA Insuracnce.docx'),(235,'jOdBEZT5K4','Joy','Mongare','joymongareh@gmail.com','0713884760','joymongareh@gmail.com-jOdBEZT5K4-JOY MONGARE CV.docx'),(236,'05McRphOWN','Britney','Wandero','sipilabritney@gmail.com','0715725166','sipilabritney@gmail.com-05McRphOWN-MY RESUME.docx'),(237,'Kgs5LqHLB','Ann','Mwangi','annmwangi536@gmail.com','0742048396','annmwangi536@gmail.com-Kgs5LqHLB-resume Ann.doc'),(238,'iKNIa5h2w2','Evans','Godwin','Ogodwinevanice@gmail.com','0705823372','Ogodwinevanice@gmail.com-iKNIa5h2w2-CV.docx'),(239,'TLh2eGrCHw','Pat Sharleen','Nyambura','patsharleen72@gmail.com','0727841455','patsharleen72@gmail.com-TLh2eGrCHw-Copy of PAT SHARLEEN NYAMBURA Resume1 3.pdf'),(240,'0mJtCXW3F','Cynthiah','Ayuma','cynthiahayuma@gmail.com','0727986407','cynthiahayuma@gmail.com-0mJtCXW3F-Cv .docx'),(241,'lk2Iy4eq4','Dorothy','Nyambura','nyashgaitho44@gmail.com','0704654699','nyashgaitho44@gmail.com-lk2Iy4eq4-DOROTHY CV.docx'),(242,'ruoYTPlRiu','DAVID','MWIRICHIA','DAVIEMAINGI@GMAIL.COM','0710266262','DAVIEMAINGI@GMAIL.COM-ruoYTPlRiu-DAVID CV latest.pdf'),(243,'eeD1pRdyGw','LYDIA','OLWENY','lydiaolweny@gmail.com','0723598850','lydiaolweny@gmail.com-eeD1pRdyGw-CURRICULUM VITAE (4).docx'),(244,'cktYGNMzzY','Ian','Ndegwa','wachirai@ymail.com','0714412720','wachirai@ymail.com-cktYGNMzzY-APA INSURANCE INTERNSHIP 2020.docx'),(245,'5cateNC4M','Michael','Oyaro','mcoyaro@gmail.com','0723244380','mcoyaro@gmail.com-5cateNC4M-CV.docx'),(246,'GWxEH4mq9n','JACINTA','GATHONI','jacintamuriithi@yahoo.com','0707973822','jacintamuriithi@yahoo.com-GWxEH4mq9n-CV.docx'),(247,'3DJxg2udo','ELIZABETH','WANYOIKE','wambuiwanyoike.ew@gmail.com','0728893831','wambuiwanyoike.ew@gmail.com-3DJxg2udo-Curriculum vitae,2020.docx'),(248,'pklmruXEVk','AMOS','OBADIAH','amosmogere55@gmail.com','0793021087','amosmogere55@gmail.com-pklmruXEVk-AMOS OBADIAH CURRICULUM VITAE.docx'),(249,'iUxXtixsLd','Brian','Okeyo','breezy.n@outlook.com','0792669391','breezy.n@outlook.com-iUxXtixsLd-B CV.docx'),(250,'WS9c4sWptW','Morris','Muthomi','muthomiwamutembei@gmail.com','0706768191','muthomiwamutembei@gmail.com-WS9c4sWptW-MORRIS MUTHOMI MUTEMBEI OFFICIAL.pdf'),(251,'W5urONoJT','VALENTINE','KARIUKI','valkariuki.vk@gmail.com','0711531170','valkariuki.vk@gmail.com-W5urONoJT-Curriculum Vitae- Valentine Kariuki.pdf'),(252,'6A1cDmT8D','ESBONA','INDA','esbona94@gmail.com','0703212980','esbona94@gmail.com-6A1cDmT8D-ESBONA CV FNL2020.docx'),(253,'I4P16ZMK06','Mumina','Muendo','gregmuendo14@gmail.com','0706498413','gregmuendo14@gmail.com-I4P16ZMK06-cv.pdf'),(254,'bzwePmTWg9','Beatrice','Ngunyi','shikungunyi@gmail.com','0729884619','shikungunyi@gmail.com-bzwePmTWg9-Beatrice - CV.pdf'),(255,'4eAv2aebGl','Elizabeth','Owuor','elizabethowuor1@gmail.com','0723130533','elizabethowuor1@gmail.com-4eAv2aebGl-CURRICULUM VITAE-Elizabeth.docx'),(256,'i69DYeUd5','Miraj','Vadvay','mirajvadvay@gmail.com','0708023038','mirajvadvay@gmail.com-i69DYeUd5-My CV..docx'),(257,'ESrPDhALz','PATRICK OKELLO','OGUTU','patrickogutu3@gmail.com','0701851295','patrickogutu3@gmail.com-ESrPDhALz-PATRICK OKELLO OGUTU - RESUME..pdf'),(258,'6aOOXPRnO7','SOPHIE','ANGERO','sophieangero@gmail.com','0791855774','sophieangero@gmail.com-6aOOXPRnO7-mnm.pdf'),(259,'Pgwrrt9ZW','Judith','Manthi','judithminoo99@gmail.com','0718596287','judithminoo99@gmail.com-Pgwrrt9ZW-Judith Minoo Manthi-Resume.pdf'),(260,'gAWb9nTgRO','Joseph','Mwangi','joehmwangi@outlook.com','0743743068','joehmwangi@outlook.com-gAWb9nTgRO-Resume for Joseph Mwangi(EP).pdf'),(261,'QYazUyUCt','Brian','Kamau','briankamaja@gmail.com','0715482834','briankamaja@gmail.com-QYazUyUCt-Brian Kamau CV.doc'),(262,'rCf1gf5Ia4','Bakhita','Ndung&#039;u','bnyamwathi@gmail.com','+254719277996','bnyamwathi@gmail.com-rCf1gf5Ia4-Bakhita Nyamwathi - CV.pdf'),(263,'xmEYXdgy8','EvanseE','rr','rono1979@yahoo.com','014962558','rono1979@yahoo.com-xmEYXdgy8-Resume  for Evans Rono 2017.pdf'),(264,'L8gUO8qN7f','Nancy','Kuria','nancykuria72@gmail.com','0791387497','nancykuria72@gmail.com-L8gUO8qN7f-NANCY_NJERI_CV[2].docx'),(265,'2HvCzSK1p1','Annastansia','Ochuku','annastacia78@gmail.com','0716337091','annastacia78@gmail.com-2HvCzSK1p1-AMO CV.pdf'),(266,'LBqrh6yKPS','James','Gisiora','jamesgisiora@gmail.com','+254706964927','jamesgisiora@gmail.com-LBqrh6yKPS-CV-Copy.pdf'),(267,'eK1YMkK1mO','Irene','Kung&#039;u','wanguikungu@gmail.com','0712454640','wanguikungu@gmail.com-eK1YMkK1mO-CV_IRENE KUNGU_LEGAL INTERN.pdf'),(268,'1LmNzXJV4i','NAOMI','GITHAE','naomigithae27@gmail.com','0717475308','naomigithae27@gmail.com-1LmNzXJV4i-CV.docx'),(269,'fBsSz2RNmw','NAOMI','GITHAE','naomigithae27@gmail.com','0717475308','naomigithae27@gmail.com-fBsSz2RNmw-CV.docx'),(270,'DFGDpug5Wb','Carrey','Adero','carreyojalla@gmail.com','0706502741','carreyojalla@gmail.com-DFGDpug5Wb-MY CURRICULUM VITAE.docx'),(271,'jM9qBn08O','Daniel','Wafula','danielwafula996@gmail.com','0743841207','danielwafula996@gmail.com-jM9qBn08O-wekesa CV.pdf'),(272,'81xKhyozcN','ANTONY','GATERE','antonygatere.ag@gmail.com','0708953761','antonygatere.ag@gmail.com-81xKhyozcN-0_ANTONY GATERE CHAGWI (CV) 1.docx'),(273,'xgyQKZc2M','Devis','Kimutai','deviski30@yahoo.com','0704251539','deviski30@yahoo.com-xgyQKZc2M-CURRICULUM VITA-WPS Office.doc'),(274,'45OlcHSOP','Simon','Kiboi','simonkiboi17@gmail.com','0748690147','simonkiboi17@gmail.com-45OlcHSOP-kiboi simon cv.docx'),(275,'vUF6GtyZXP','Paulyne','Okello','odembapaulyn@gmail.com','0733449500','odembapaulyn@gmail.com-vUF6GtyZXP-Paulyne Odemba CV.docx'),(276,'ruRU20hRUR','Steven','Waweru','steve4waweru.sw@gmail.com','0714263682','steve4waweru.sw@gmail.com-ruRU20hRUR-Waweru S. N. CV.pdf'),(277,'GalvHhYPcO','Zippie','Mucheke','muchekezippie@gmail.com','0706562733','muchekezippie@gmail.com-GalvHhYPcO-Resume- Zippie Mucheke.pdf'),(278,'clYLR2R6nQ','Phoebe','Achieng','agloryah@gmail.com','0706267285','agloryah@gmail.com-clYLR2R6nQ-cv revised latest.docx'),(279,'2o7qEY58g','edward','obewa','edwardobewa@gmail.com','0722233854','edwardobewa@gmail.com-2o7qEY58g-edward cv.pdf'),(280,'odGK51v2H','Joram','Mutunga','joramjames2@gmail.com','+254719767220','joramjames2@gmail.com-odGK51v2H-Mutunga_CV updated..docx'),(281,'0IzYJF1ee7','KIPKIRUI','FELIX','felket99@gmail.com','0720996477','felket99@gmail.com-0IzYJF1ee7-FELIX_CV[1].docx'),(282,'9dkXwNDA8z','VICTOR','WASONGA','vwasonga94@gmail.com','+254704311438','vwasonga94@gmail.com-9dkXwNDA8z-VICTOR WASONGA.docx'),(283,'TZA5FIbYmY','Serena','Rotich','rotichserena@gmail.com','0791307793','rotichserena@gmail.com-TZA5FIbYmY-Serena  Rotich CV.pdf'),(284,'Zz5j3Fn49k','Beatrice','Kasembi','kasembibeatrice@gmail.com','0791863939','kasembibeatrice@gmail.com-Zz5j3Fn49k-Beatrice Kasembi Resume.pdf'),(285,'pV1IRipLf','kelvin','towett','kelvintowett82@gmail.com','0706231202','kelvintowett82@gmail.com-pV1IRipLf-kevo updated cv-2.docx'),(286,'3fF7IjFK2Q','Eugene','ogongo','eugeneogongo@live.com','0700013935','eugeneogongo@live.com-3fF7IjFK2Q-Eugene Odera Resume -.pdf'),(287,'yphgyAFMxq','Mitul','Shah','mitulshah@live.com','0706258564','mitulshah@live.com-yphgyAFMxq-Mitul Shah, CV.docx'),(288,'VYF17os4u','Brenda','Cheptoo','beyckoskei@gmail.com','0712067615','beyckoskei@gmail.com-VYF17os4u-CV.pdf'),(289,'CMBjfqwlcx','Tanweera','Mohamed','tannualubeidy@gmail.com','0704529819','tannualubeidy@gmail.com-CMBjfqwlcx-TANWEERA CV 1.docx'),(290,'2DNUqUSlx','Joseph','Thoya','orlandoworks9@gmail.com','0711567350','orlandoworks9@gmail.com-2DNUqUSlx-CV.docx'),(291,'ewgtYHjjf6','Gloria','Adhiambo','gloriaomia@gmail.com','0723702522','gloriaomia@gmail.com-ewgtYHjjf6-_Gloria Omia CV updated.pdf'),(292,'RjK2VSdwHX','ANGELA','NDALIRA','ndaliraa1@gmail.com','0704116763','ndaliraa1@gmail.com-RjK2VSdwHX-ANGELA NDALIRA CV.docx'),(293,'kmRg7msxwE','Billy','Otieno','cpabill6@gmail.com','0797610265','cpabill6@gmail.com-kmRg7msxwE-BILLY OTIENO CV.pdf'),(294,'YqfIIF5F5O','Maureen','Nekesa','mnasiboye@gmail.com','0713286796','mnasiboye@gmail.com-YqfIIF5F5O-MAUREEN NASIBOYE RESUME.docx'),(295,'jr5tSutVAe','Alfonce','Kaloki','kalokimumo001@gmail.com','0723372712','kalokimumo001@gmail.com-jr5tSutVAe-RESUME-KALOKI MUMO (2)-converted (2).docx'),(296,'oBH7PC4XB','Peter','Ayimba','peterayimba@gmail.com','0711 439 234','peterayimba@gmail.com-oBH7PC4XB-CV.pdf'),(297,'l4VuQl5ezm','Manewa','Amisi','AMISIRAWLINGS@GMAIL.COM','0714872305','AMISIRAWLINGS@GMAIL.COM-l4VuQl5ezm-Amisi1 CV.pdf'),(298,'BYF96cMqY','Nancy','Ochenge','kemuntonancy87@gmail.com','0714077488','kemuntonancy87@gmail.com-BYF96cMqY-Resume - Nancy Kemunto Ochenge.pdf'),(299,'R7DcvGXqcE','Sandra','Njeri','ngugisandra@gmail.com','0792707252','ngugisandra@gmail.com-R7DcvGXqcE-njeri ngugi curriculum vitae xx.pdf'),(300,'YZKa93euwN','Margaret','Irungu','margaretshiku99@gmail.com','0700119025','margaretshiku99@gmail.com-YZKa93euwN-Margaret Irungu CV.docx'),(301,'SJVmtWxAG0','ANTHONY','KIMANI','kimanitonney@gmail.com','0705655144','kimanitonney@gmail.com-SJVmtWxAG0-Anthony CV.docx'),(302,'JT7YXwrEnG','Jane','Wangui','janekui94@gmail.com','0704590328','janekui94@gmail.com-JT7YXwrEnG-new jane cv.pdf'),(303,'BN1O6erH79','Audrey','Mugata','angehimugata@gmail.com','0729405253','angehimugata@gmail.com-BN1O6erH79-AudreyCV.pdf'),(304,'vaPjEF3za1','Wilfred','Ochieng&#039;','oochifred@gmail.com','0718007113','oochifred@gmail.com-vaPjEF3za1-Curriculum Vitae 17. 11. 2019.pdf'),(305,'TDdlD6Bws5','Kelvin','Maina','kevin.maina33@gmail.com','0704369312','kevin.maina33@gmail.com-TDdlD6Bws5-Kelvin Cv latest (1) - Copy.pdf'),(306,'eLdq5Yae4E','Eunice','Nderui','euniemukami@gmail.com','0790472428','euniemukami@gmail.com-eLdq5Yae4E-1580220361648_EUNICE MUKAMI NDERUI CV.docx'),(307,'QKpkr9EDY','HELLEN','MAINA','hellenmaina15@yahoo.com','0726495015','hellenmaina15@yahoo.com-QKpkr9EDY-cv hellen.docx'),(308,'uSyJJSMfts','LILIAN','MUCHORI','lilianmuchori95@gmail.com','0717875371','lilianmuchori95@gmail.com-uSyJJSMfts-CURRICULUM VITAE (2).docx'),(309,'KiB78rAdMY','Kelvin','Chweya','kevingchweya@gmail.com','0746644334','kevingchweya@gmail.com-KiB78rAdMY-UPDATE-CV.pdf'),(310,'58G9x61DG','Lucy','Muthoni','muthoniitimu@gmail.com','0712288330','muthoniitimu@gmail.com-58G9x61DG-cv 2.doc'),(311,'b9fwdNJtIo','Victor','Ayieko','vickyhazard1999@gmail.com','0790656045','vickyhazard1999@gmail.com-b9fwdNJtIo-my cv.docx'),(312,'lp3yVP907o','mark','gitahi','markmwangi30@gmail.com','0792635754','markmwangi30@gmail.com-lp3yVP907o-CURRICULUM VITAE MARK M.docx'),(313,'a6ATebpooY','TERESIA','WANJERI','trose2047@gmail.com','0711166943','trose2047@gmail.com-a6ATebpooY-CURRICULUM VITAE.pdf'),(314,'ECafMCzt97','WINNIE','KAMAU','gathonikamau55@gmail.com','0727768319','gathonikamau55@gmail.com-ECafMCzt97-c.v_winnie_kamau.docx'),(315,'UeFzwzdNKG','Kiplangat','Gideon','gideonmacks@gmail.com','0713130062','gideonmacks@gmail.com-UeFzwzdNKG-cv.pdf'),(316,'60rtuV5k','Movine','Omondi','mo199600@live.com','719464155','mo199600@live.com-60rtuV5k-Movine Resume1.docx'),(317,'xaISRWrijT','Ernest','Kibuthu','ernestshabbz@gmail.com','0721923230','ernestshabbz@gmail.com-xaISRWrijT-ERNEST CV.docx'),(318,'SiPqjNVOu2','Grace','Justus','gracemwende7@gmail.com','0724622055','gracemwende7@gmail.com-SiPqjNVOu2-GRACE MWENDE J CV.doc'),(319,'8uY8ed6QH6','Agnetta','Oyuchi','agnettahusnah@gmail.com','0723813859','agnettahusnah@gmail.com-8uY8ed6QH6-Agentta Malope CV 2019.pdf'),(320,'GjbPUca1qy','Ruth','Chepleting','ruthchepleting81@gmail.com','723899835','ruthchepleting81@gmail.com-GjbPUca1qy-0_0_RUTH CHEPLETING  CV.pdf'),(321,'vXfhkrk4I2','EDDAH','KARIUKI','wanguikeriuky@gmail.com','0705478625','wanguikeriuky@gmail.com-vXfhkrk4I2-Eddah cv.docx'),(322,'MAhMYlCxF3','EDDAH','KARIUKI','wanguikeriuky@gmail.com','0705478625','wanguikeriuky@gmail.com-MAhMYlCxF3-Eddah cv.docx'),(323,'tMntEIzbDn','roy','njogu','stephenmaina4166@gmail.com','072072284','stephenmaina4166@gmail.com-tMntEIzbDn-roy cv.docx'),(324,'Jd8sheRsQz','kelvin','kiprotich','kiprotichkelvin6@gmail.com','0708033385','kiprotichkelvin6@gmail.com-Jd8sheRsQz-recomendation.pdf'),(325,'UQIit1NXx1','Vivian','Ndiege','viviandiege@gmail.com','0700327556','viviandiege@gmail.com-UQIit1NXx1-MY CURRICULUM VITAE.pdf'),(326,'7rWKFVm5o','Vivian','Ndiege','viviandiege@gmail.com','0700327556','viviandiege@gmail.com-7rWKFVm5o-MY CURRICULUM VITAE.pdf'),(327,'vIzUvzLgmY','KEVIN','AUKA','aukakevin7@gmail.com','0756296043','aukakevin7@gmail.com-vIzUvzLgmY-CURRICULUM VITAE.docx'),(328,'oeQngV0Wf7','oscar','ngetich','ngetichkipngenooscar@gmail.com','0797838165','ngetichkipngenooscar@gmail.com-oeQngV0Wf7-oscar cv.docx'),(329,'jfjRKXoWj2','Vivian','Ndiege','viviandiege@gmail.com','0700327556','viviandiege@gmail.com-jfjRKXoWj2-MY CURRICULUM VITAE.pdf'),(330,'01YrClog9g','Jack','Mugo','mugojack@gmail.com','0718036284','mugojack@gmail.com-01YrClog9g-2020CV.docx'),(331,'iBaekloQPh','kelvin','kiprotich','kiprotichkelvin6@gmail.com','0708033385','kiprotichkelvin6@gmail.com-iBaekloQPh-CV.docx'),(332,'MVm8cvnTOY','Collins','Otieno','odongacollins2014@gmail.com','0738643709','odongacollins2014@gmail.com-MVm8cvnTOY-COLLINS__c vitae.docx'),(333,'zTNrA3qgI1','Lucy','gathoni','gathonilucyg@gmail.com','0714218264','gathonilucyg@gmail.com-zTNrA3qgI1-LUCY GATHONI CV 2020.doc'),(334,'FxxMPGm2t','Vallarie','Yiega','yiegavallarie@gmail.com','+254713455646','yiegavallarie@gmail.com-FxxMPGm2t-Vallarie Wendy Yiega Resume (2).pdf'),(335,'DOfMYoAh','zachary','njagi','zacknyaga@gmail.com','0710170617','zacknyaga@gmail.com-DOfMYoAh-ZACHARY NYAGA NJAGI CV.docx'),(336,'82tKyRycPp','Grace','Nyakio','gracieperps@gmail.com','0794842698','gracieperps@gmail.com-82tKyRycPp-Grace CV.pdf'),(337,'ECCKqqSTOo','ALEX','WAITA','alexwaita12@gmail.com','0710742236','alexwaita12@gmail.com-ECCKqqSTOo-CURRICULUM VITAE ;Alex Waita.pdf'),(338,'F7ryLqgHqL','Philip','Mutola','itsmutola@gmail.com','0712426514','itsmutola@gmail.com-F7ryLqgHqL-CV CURRICULUM VITAE 2019-converted.pdf'),(339,'WeJct2EPhS','Pat Sharleen','Nyambura','patsharleen72@gmail.com','0727841455','patsharleen72@gmail.com-WeJct2EPhS-PAT SHARLEEN NYAMBURA Resume1.pdf'),(340,'bKwxsloOgv','Grace','Mukiri / Wanjiku','wakanyi2223@gmail.com','0746306380','wakanyi2223@gmail.com-bKwxsloOgv-Grace Wakanyi  CV N.pdf'),(341,'hQwTbA1ecd','JOSEPH','MUTUNGA','mutungajoseph6@gmail.com','+254717371298','mutungajoseph6@gmail.com-hQwTbA1ecd-JOSEPH MATHEKA MUTUNGA  CV.docx'),(342,'5Vd7mSWgii','kelvin','towett','kelvintowett82@gmail.com','0706231202','kelvintowett82@gmail.com-5Vd7mSWgii-kevo updated cv-2.docx'),(343,'JUIKtp7Z','Augustine','Ashira','augustineashira02@gmail.com','0701555191','augustineashira02@gmail.com-JUIKtp7Z-Augustine-Ashira-Resume .pdf'),(344,'BwGu8GPcV5','Wendy','Nyaga','wendynyaga@yahoo.com','0710587802','wendynyaga@yahoo.com-BwGu8GPcV5-Wendy Nyaga- CV.doc.pdf'),(345,'AXjjoGq0y7','Muli','Tom','mulitom57@gmail.com','0742254084','mulitom57@gmail.com-AXjjoGq0y7-Muli Tom CV - Copy.pdf'),(346,'izoDnWzwt','Jonathan','Odhiambo','ianjonathan375@gmail.com','0706273263','ianjonathan375@gmail.com-izoDnWzwt-jonathan CV.pdf'),(347,'Gw8S5pJ6gs','peter','seremani','peterseremani@gmail.com','0726454876','peterseremani@gmail.com-Gw8S5pJ6gs-seremanipeter.docx'),(348,'lNXo13JTjz','Anthony','Kangogo','akangogo95@gmail.com','0717429640','akangogo95@gmail.com-lNXo13JTjz-Tony Resume.docx.pdf'),(349,'12q4scyfp9','Omae','Joseph','joeelectronics18@gmail.com','+254708139100','joeelectronics18@gmail.com-12q4scyfp9-Omae Joseph  +254708139100 - Copy.docx'),(350,'AaKcmaMN8W','Omae','Joseph','omaejoseph6623@gmail.com','+254708139100','omaejoseph6623@gmail.com-AaKcmaMN8W-Omae Joseph  +254708139100 - Copy.docx'),(351,'4VgiSgz2XM','Douglas','Omollo','douglasomollo205@gmail.com','0729881867','douglasomollo205@gmail.com-4VgiSgz2XM-DouglasCV.docx');
/*!40000 ALTER TABLE `apa_job_internship_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apa_job_posts`
--

DROP TABLE IF EXISTS `apa_job_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apa_job_posts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(255) NOT NULL,
  `job_title` longtext NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `reports_to` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `employment_type` varchar(255) NOT NULL,
  `salary` varchar(15) DEFAULT NULL,
  `job_short_description` longtext,
  `key_primary_responsibilities` longtext NOT NULL,
  `academic_qualifications` longtext NOT NULL,
  `professional_qualifications` longtext NOT NULL,
  `job_skills_and_requirements` longtext NOT NULL,
  `experience` longtext NOT NULL,
  `date_added` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `deadline` date NOT NULL,
  `added_by` int(11) DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  `archive` int(15) NOT NULL DEFAULT '1',
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `who added the post` (`added_by`) USING BTREE,
  KEY `who edited this post` (`edited_by`) USING BTREE,
  CONSTRAINT `who added the post` FOREIGN KEY (`added_by`) REFERENCES `hr_jobs_users` (`id`),
  CONSTRAINT `who edited this post` FOREIGN KEY (`edited_by`) REFERENCES `hr_jobs_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_posts`
--

LOCK TABLES `apa_job_posts` WRITE;
/*!40000 ALTER TABLE `apa_job_posts` DISABLE KEYS */;
INSERT INTO `apa_job_posts` VALUES (38,'9bhu3PaeaE','CREDIT CONTROL/RECONCILIATION ACCOUNTANT','Finance','Team Leaders &ndash; Credit Control','Head Office','APA Insurance','Permanent','0','&lt;p&gt;This role is responsible for reconciliation and distribution of customer statements, collection of premiums and payment of commissions.&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;Collecting outstanding premiums from agents, brokers and direct clients in line with the legislation.&lt;/li&gt;&lt;li&gt;Reconciling/reviewing broker and client&rsquo;s debtor accounts on a monthly basis by applying the 80 &ndash; 20 rule and exchange the details with the counter parties;&lt;/li&gt;&lt;li&gt;Ensure timely allocation of receipts with a maximum of 5 days of unallocated at any day&lt;/li&gt;&lt;li&gt;Managing intermediary accounts by ensuring proper records are maintained, agents&rsquo; commissions paid within 5 days of the following month and timely communication and release of debtor statements latest by 5th;&lt;/li&gt;&lt;li&gt;Updating, validating and presenting credit control reports to team leader as shall be requested;&lt;/li&gt;&lt;li&gt;Review the debtors ageing reports and taking appropriate action as per credit control policy;&lt;/li&gt;&lt;li&gt;Prepare a detailed (per intermediary) bad debts movement schedule reconciling the balances b/f, charges for the period, any write offs and balances at the end of the period&lt;/li&gt;&lt;li&gt;Managing any intermediary loans and charging the interests, recoveries, taxes etc. and maintaining accurate loan balances at all times&lt;/li&gt;&lt;li&gt;Computing, filing and requisitioning for monthly intermediaries&rsquo; taxes at least 3 days before the due dates;&lt;/li&gt;&lt;li&gt;Managing Unit managers&rsquo; monthly retainers which involves computation and disbursements;&lt;/li&gt;&lt;li&gt;Facilitating intermediary&rsquo;s annual IRA licenses and follow up ensuring only the licensed intermediaries are traded with&lt;/li&gt;&lt;li&gt;Providing confirmation details of receipting clients details for any electronic funds transfers and insurance premium finance remittances;&lt;/li&gt;&lt;li&gt;Creating new accounts for intermediaries in the general system.&lt;/li&gt;&lt;li&gt;Facilitating the processing and approval of IPFs and following up with respective financiers on payment of same.&lt;/li&gt;&lt;li&gt;Confirming premiums received before settlement of claims.&lt;/li&gt;&lt;li&gt;Visitation of intermediaries and branches on regular basis to resolve debtors accounts balances.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Bachelor&rsquo;s degree in Finance/Accounting/Business Administration or an equivalent&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;CPA Part 2&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Strong preference will be given to candidates with the above qualifications, skills and experience.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;At least 2 years&rsquo; relevant experience in credit control&lt;/li&gt;&lt;li&gt;Skills and Attributes&lt;/li&gt;&lt;li&gt;Analytical skills&lt;/li&gt;&lt;li&gt;Presentation skills&lt;/li&gt;&lt;li&gt;Communication and interpersonal skills&lt;/li&gt;&lt;/ul&gt;','2019-09-30 08:31:21.308121','2019-10-14 08:45:45.643226','2019-10-10',9,9,1,'recruitment@apollo.co.ke'),(39,'gL8F524Gzw','VENDOR MANAGER','Digital','','Head Office','APA Insurance','Permanent','0','&lt;p&gt;As a Vendor Manager at APA, you will be responsible for executing the vendor/supplier relationships required to deliver, manage and implement, commercial procurement strategies across the organization to deliver optimal value for money to meet the internal business needs.&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;Manage sourcing strategy and define sourcing recommendations that support business goals, in collaboration with senior management and stakeholders.&lt;/li&gt;&lt;li&gt;Negotiate pricing, terms and conditions of goods, services and products with key suppliers, contractors and service providers.&lt;/li&gt;&lt;li&gt;Develop, establish, implement, and enforce vendor and outsourcer guidelines, obligations, and Service Level Agreements (SLAs) to the organization.&lt;/li&gt;&lt;li&gt;Monitor vendor contracts (incl. contract lifecycles) and ensure adherence to contractual agreements and comply with procurement policies and procedures.&lt;/li&gt;&lt;li&gt;Asset management for IT hardware, software, and equipment incl. where possible, standardize equipment to lower costs.&lt;/li&gt;&lt;li&gt;Leverage continuous improvement initiatives to create additional value over and above the contract requirements.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;4+ years of experience in IT and IT vendor management.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Procurement qualification or equivalent experience desired with knowledge and exposure in ICT environment.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Effective contract lifecycle management and negotiation skills incl. ability to build relationships with suppliers, and contractors who provide a broad spectrum of IT products and services.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Solid working knowledge of current IT technologies, total life cycle cost structures and pricing mechanisms.&lt;/li&gt;&lt;li&gt;Advanced skills in all procurement process disciplines across the procurement life cycle of demand management, fulfillment, sourcing and management.&lt;/li&gt;&lt;li&gt;Experience with Software development life cycle (Agile, Waterfall, etc.) and IT Infrastructure and technology.&lt;/li&gt;&lt;li&gt;An understanding of e-procurement processes and systems incl. P2P management software.&lt;/li&gt;&lt;li&gt;A team player, experienced in working with both senior management and operational teams.&lt;/li&gt;&lt;li&gt;Project Management will be a plus.&lt;/li&gt;&lt;/ul&gt;','2019-09-30 08:52:54.421980','2019-11-07 15:32:14.982759','2019-10-30',9,16,1,'digital@apainsurance.org'),(40,'Fd90toK2','BRANCH MANAGER MACHAKOS','Business Development','Head of Branches','Machakos','APA Insurance','Permanent','0','&lt;p&gt;This position is responsible for achieving business growth by meeting business targets. This involves managing and developing the branch networks through the regional teams with the aim of enforcing effective credit control, delivering of set loss ratio and building and maintaining customer relationships.&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;Building and strengthening business relationships with existing and prospective clients to achieve performance targets;&lt;/li&gt;&lt;li&gt;Developing and constantly updating underwriting service standards and manuals in line with the customer service charter;&lt;/li&gt;&lt;li&gt;Achieving departmental service standards in processing, approval and release of crucial documents within set Turn Around times;&lt;/li&gt;&lt;li&gt;Managing the business portfolio through prudent underwriting in order to achieve the targeted business mix and loss ratio;&lt;/li&gt;&lt;li&gt;Collecting outstanding premium within the credit control policy;&lt;/li&gt;&lt;li&gt;Managing the implementation of internal and external audit recommendations within the agreed timelines;&lt;/li&gt;&lt;li&gt;Exploring opportunities presented by the market and developing innovative products and solutions that meet customer needs;&lt;/li&gt;&lt;li&gt;Supervising unit managers (APA Life and APA Insurance) from the region;&lt;/li&gt;&lt;li&gt;Complying with statutory, regulatory and internal control processes at the business units including internal and external audit recommendations;&lt;/li&gt;&lt;li&gt;Developing departmental budget and business plans to achieve the set company targets;&lt;/li&gt;&lt;li&gt;Entrenching performance based appraisal of departmental staff in line with their set KPIs and departmental targets;&lt;/li&gt;&lt;li&gt;Participating in company CSR and brand building activities in liaison with other departments;&lt;/li&gt;&lt;li&gt;Training, coaching and mentoring staff in order to improve performance and cohesion within the department;&lt;/li&gt;&lt;li&gt;Implementing interdepartmental SLA in liaison with other departmental heads;&lt;/li&gt;&lt;li&gt;Participating in management meetings, projects and committees as assigned.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Bachelor degree in insurance or any business related field.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;ACII&lt;/li&gt;&lt;li&gt;Insurance Diploma (AIIK)&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Sales Skills&lt;/li&gt;&lt;li&gt;Entrepreneur Spirit&lt;/li&gt;&lt;li&gt;Market Awareness&lt;/li&gt;&lt;li&gt;Customer Focus&lt;/li&gt;&lt;li&gt;Continuous Innovation&lt;/li&gt;&lt;li&gt;Ownership &amp;amp; Commitment&lt;/li&gt;&lt;li&gt;Team Spirit&lt;/li&gt;&lt;li&gt;Honest, disciplined, ambitious and willing to learn.&lt;/li&gt;&lt;li&gt;Result oriented and able to work within agreed timelines&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;At least &lt;strong&gt;6 years&lt;/strong&gt; relevant experience with at least &lt;strong&gt;2 years&lt;/strong&gt; managerial experience&lt;/li&gt;&lt;/ul&gt;','2019-09-30 08:59:56.959556','2019-11-07 15:30:21.588962','2019-10-06',9,35,1,'recruitment@apollo.co.ke'),(41,'b9Xt4NKaqC','Business Developer','Business Development','Head of Business Development','Uganda','APA Insurance','Permanent','0','&lt;p&gt;The position is responsible for execution of efficient operational performance of the Business Development department in consistency with the Company&rsquo;s underwriting policies and practices.&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;Processing all new policies, renewals, endorsements and enquiries within set company standards and turnaround time.&lt;/li&gt;&lt;li&gt;Issuance of motor certificates.&lt;/li&gt;&lt;li&gt;Timely processing of debit notes and credit notes.&lt;/li&gt;&lt;li&gt;Ensure timely certificate declarations for all concerned intermediaries.&lt;/li&gt;&lt;li&gt;Ensure growth of business through soliciting of new business from intermediaries.&lt;/li&gt;&lt;li&gt;To give competitive quotations and ensure follow ups are done.&lt;/li&gt;&lt;li&gt;Ensure that renewal notices are processed and disbursed on time.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;To facilitate and ensure timely collections of premiums as per the company&rsquo;s credit policy.&lt;/li&gt;&lt;li&gt;To make regular visits in order to maintain and enhance relationships with the intermediaries.&lt;/li&gt;&lt;li&gt;Assist in preparing loss ratios and risk reviews&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;To facilitate and ensure timely collections of premiums as per the company&rsquo;s credit policy.&lt;/li&gt;&lt;li&gt;To make regular visits in order to maintain and enhance relationships with the intermediaries.&lt;/li&gt;&lt;li&gt;Assist in preparing loss ratios and risk reviews&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Liaising with the finance to ensure that premium collections are upto-date&lt;/li&gt;&lt;li&gt;Liaising with the claims department for individual client&rsquo;s performance.&lt;/li&gt;&lt;li&gt;Liaising with ICT for development of user reports as may be required from time to time&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Ensuring that all enquiries by clients or prospective clients are responded to within the set turn around time.&lt;/li&gt;&lt;li&gt;Ensuring that, renewal invitation notices are dispatched to clients within the set time before renewal date.&lt;/li&gt;&lt;li&gt;Regular briefing to the Team Leader on individual activities and making consultations on matters pertaining to the department&lt;/li&gt;&lt;li&gt;Maintaining cordial relations with intermediaries and internal clients.&lt;/li&gt;&lt;/ul&gt;','2019-10-14 09:04:32.110954','2019-10-23 07:30:31.028427','2019-10-31',16,35,1,'recruitment@apollo.co.ke'),(42,'V5BXX8R6cK','BRANCH MANAGER MACHAKOS','Seremala Inc','Head of Finance','Nairobi','Apollo Group','Contract','60000','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','2019-10-23 07:04:20.060792','2019-10-23 07:10:27.971433','2019-10-26',35,35,1,'johndoe@gmail.com'),(43,'14QM2dvx9B','SALES TRAINING MANAGER','Finance','Head of Finance','Kenya','APA Life','Permanent','','&lt;p&gt;Do you live and breathe the sales DNA?&lt;strong&gt;&amp;nbsp; &lt;/strong&gt;Do you enjoy talking to people and understanding their challenges? Are you passionate about coaching people to discover their full potential?&lt;/p&gt;&lt;p&gt;We would like to have you in our team because we are hiring for the position of a &lt;strong&gt;Sales Training Manager&lt;/strong&gt;.&amp;nbsp; You will drive our brand values and philosophy through all training activities.Having demonstrated learning and development functional expertise, you will help propel the sales training agenda using various solutions and building capability and competencies across board with a pool of trainers.&lt;/p&gt;&lt;p&gt;We are seeking a self-starter who is able to manage multiple stakeholders, a strong communicator able to establish relationships, excellent planner, analytical who is able to train with sales training experience and a proven track record for results-driven training and effective delivery with the ability to see the &lsquo;big picture&rsquo;.&lt;/p&gt;','&lt;p&gt;&lt;strong&gt;Planning&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Consults with and influences key stakeholders in the business regarding the learning and development (L&amp;amp;D) plan for sales, including all L&amp;amp;D deliverables, relevancy and impact&lt;/li&gt;&lt;li&gt;Develops learning/training strategies and creates a curriculum to facilitate strategic sales training to support business needs&lt;/li&gt;&lt;li&gt;Identifies and assesses the training needs of the various sales teams through job analysis, career paths and consultation with managers and development of the individualized and group training programs that address the specific needs&lt;/li&gt;&lt;li&gt;Plans training calendar and ensures training coverage as per plan and training needs&lt;/li&gt;&lt;li&gt;Develops training manuals for the sales teams and documents appropriate processes that enhance efficiencies and drives business growth&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;Training&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Responsible for identifying the appropriate learning solutions, providing thought leadership based on current learning theories and principals, and influencing key stakeholders regarding practical and relevant solutions to meet the need(s)&lt;/li&gt;&lt;li&gt;Works with SMEs (subject matter experts) on the development or customization of content to support learning solutions and facilitate certain programs&lt;/li&gt;&lt;li&gt;Manages and designs learning to support new hires and intermediate/advanced learning for the business units ensuring that assessment and certifications are done across various levels in the business&lt;/li&gt;&lt;li&gt;Makes effective orientation schedules for new sales agents and financial planners and ensures continuous sales training across the business&lt;/li&gt;&lt;li&gt;Supports sales performance through training existing agents and sales managers and providing information on latest development and modifications in line with promoting a culture of excellence&lt;/li&gt;&lt;li&gt;Conducts training on various products to other channel partners that include banks. Independent agents and aggregators&lt;/li&gt;&lt;li&gt;Ensures right selling behaviour, sales ethics and right sales practices are embedded through joint field visits with sales managers providing feedback towards reinforcing company standards and regulations&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;Monitoring, Evaluation and Management&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Conducts learning needs assessment with key stakeholders across the business, drives follow-through and measures impact of learning using appropriate pre and post training tools&lt;/li&gt;&lt;li&gt;Leads monthly learning meetings to work with business heads to provide learning project updates, prioritize deliverables, and secure buy-in and support for future solutions&lt;/li&gt;&lt;li&gt;Defines measures of performance and uses consistent methods and metrics such as dashboards to measure the effectiveness of learning solutions provided and provides regular reports on the same&lt;/li&gt;&lt;li&gt;Post evaluates the training programs and implement learnings from evaluation towards planning better training programs in future to ensure that each stakeholder of training benefits from the training programs&lt;/li&gt;&lt;li&gt;Coordinates with 3rd party vendors/consultants on design and delivery requirement, where needed&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Bachelor&rsquo;s degree in social science or an equivalent&lt;/li&gt;&lt;/ul&gt;','&lt;p&gt;N/A&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;ACII/AIIK added advantage&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Ensuring that all enquiries by clients or prospective clients are responded to within the set turn around time.&lt;/li&gt;&lt;li&gt;Ensuring that, renewal invitation notices are dispatched to clients within the set time before renewal date.&lt;/li&gt;&lt;li&gt;Regular briefing to the Team Leader on individual activities and making consultations on matters pertaining to the department&lt;/li&gt;&lt;li&gt;Maintaining cordial relations with intermediaries and internal clients.&lt;/li&gt;&lt;/ul&gt;','2019-12-23 10:44:47.252135','2020-01-14 23:17:58.752381','2020-01-15',10,10,1,'hr@apollo.co.ke');
/*!40000 ALTER TABLE `apa_job_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apollo_confrence_facilities`
--

DROP TABLE IF EXISTS `apollo_confrence_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apollo_confrence_facilities` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apollo_confrence_facilities`
--

LOCK TABLES `apollo_confrence_facilities` WRITE;
/*!40000 ALTER TABLE `apollo_confrence_facilities` DISABLE KEYS */;
INSERT INTO `apollo_confrence_facilities` VALUES (1,'Shimba Hills','18','Boardroom'),(2,'Taita Hills','12','Boardroom'),(3,'Ngong Hills','8','Boardroom'),(4,'Chyullu Hills','40','Auditorium'),(5,'Cherengani','0','Training Room'),(6,'Entertainment Area','0','Entertainment');
/*!40000 ALTER TABLE `apollo_confrence_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apollo_confrence_facilities_bookings`
--

DROP TABLE IF EXISTS `apollo_confrence_facilities_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apollo_confrence_facilities_bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apollo_confrence_facilities_fk` int(15) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `more_information` longtext COLLATE utf8_unicode_ci,
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `booked facility fk` (`apollo_confrence_facilities_fk`) USING BTREE,
  CONSTRAINT `booked facility fk` FOREIGN KEY (`apollo_confrence_facilities_fk`) REFERENCES `apollo_confrence_facilities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apollo_confrence_facilities_bookings`
--

LOCK TABLES `apollo_confrence_facilities_bookings` WRITE;
/*!40000 ALTER TABLE `apollo_confrence_facilities_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `apollo_confrence_facilities_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claims_life`
--

DROP TABLE IF EXISTS `claims_life`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claims_life` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed_form` longtext COLLATE utf8_unicode_ci,
  `national_id_passport` longtext COLLATE utf8_unicode_ci,
  `hospital_dishcharge_summary` longtext COLLATE utf8_unicode_ci,
  `hospital_invoice_receipt` longtext COLLATE utf8_unicode_ci,
  `original_burial_permit` longtext COLLATE utf8_unicode_ci,
  `medical_report` longtext COLLATE utf8_unicode_ci,
  `payslips` longtext COLLATE utf8_unicode_ci,
  `post_mortem_report` longtext COLLATE utf8_unicode_ci,
  `policy_document` longtext COLLATE utf8_unicode_ci,
  `notification_letter` longtext COLLATE utf8_unicode_ci,
  `police_abstract` longtext COLLATE utf8_unicode_ci,
  `dosh_one_two` longtext COLLATE utf8_unicode_ci,
  `dosh_four` longtext COLLATE utf8_unicode_ci,
  `medical_bill` longtext COLLATE utf8_unicode_ci,
  `sick_off_sheets` longtext COLLATE utf8_unicode_ci,
  `witness_statement` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `death_certificate` longtext COLLATE utf8_unicode_ci,
  `loan_application_and_agreement` longtext COLLATE utf8_unicode_ci,
  `loan_repayment` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims_life`
--

LOCK TABLES `claims_life` WRITE;
/*!40000 ALTER TABLE `claims_life` DISABLE KEYS */;
INSERT INTO `claims_life` VALUES (1,'jd2jIngOHT','Peter Chege Kinuthia - test','0701075090','peterchege442@gmail.com','nairobi','Partial Maturity Claim',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'peterchege442@gmail.com----jd2jIngOHT----policy document----sample-file.pdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-01-17 13:17:17.000000',NULL,NULL,NULL);
/*!40000 ALTER TABLE `claims_life` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claims_motor_upload`
--

DROP TABLE IF EXISTS `claims_motor_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claims_motor_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `motor_claim_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `completed_form` longtext COLLATE utf8_unicode_ci,
  `police_abstract` longtext COLLATE utf8_unicode_ci,
  `driving_license` longtext COLLATE utf8_unicode_ci,
  `log_book` longtext COLLATE utf8_unicode_ci,
  `detailed_statement` longtext COLLATE utf8_unicode_ci,
  `date_of_loss` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims_motor_upload`
--

LOCK TABLES `claims_motor_upload` WRITE;
/*!40000 ALTER TABLE `claims_motor_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `claims_motor_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claims_personal_property_upload`
--

DROP TABLE IF EXISTS `claims_personal_property_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claims_personal_property_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed_form` longtext COLLATE utf8_unicode_ci,
  `police_abstract` longtext COLLATE utf8_unicode_ci,
  `invoice` longtext COLLATE utf8_unicode_ci,
  `detailed_statement` longtext COLLATE utf8_unicode_ci,
  `dosh_one_two` longtext COLLATE utf8_unicode_ci,
  `dosh_four` longtext COLLATE utf8_unicode_ci,
  `post_mortem` longtext COLLATE utf8_unicode_ci,
  `vet_loss_certificate` longtext COLLATE utf8_unicode_ci,
  `dead_livestock_photo` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `national_id` longtext COLLATE utf8_unicode_ci,
  `payslips` longtext COLLATE utf8_unicode_ci,
  `sick_sheet` longtext COLLATE utf8_unicode_ci,
  `medical_bill` longtext COLLATE utf8_unicode_ci,
  `discharge_summary` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims_personal_property_upload`
--

LOCK TABLES `claims_personal_property_upload` WRITE;
/*!40000 ALTER TABLE `claims_personal_property_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `claims_personal_property_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claims_reports`
--

DROP TABLE IF EXISTS `claims_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claims_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `claim_event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `claim_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `date_of_loss` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `claim product id` (`product_id`) USING BTREE,
  CONSTRAINT `claim product id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims_reports`
--

LOCK TABLES `claims_reports` WRITE;
/*!40000 ALTER TABLE `claims_reports` DISABLE KEYS */;
INSERT INTO `claims_reports` VALUES (116,'Eric Thimba','0701872069','thimba@mookh.africa','Nairobi','KCR318W','Someone hit my car while it was parked at night while visiting a friend. The person admitted liability and we recorded a statement with the police statement and obtained an abstract of them admitting liability.',6,14,'accident','2019-12-03 14:43:30.000000',NULL),(117,'Judy Teen','0720711972','jkerubo11@gmail.com','Nairobi','KBY 678A','Was in accident. what to do?',6,14,'accident','2019-12-04 12:30:30.000000',NULL),(118,'JB','0720123456','jkerubo11@gmail.com','Nairobi','KBY 765T','Accident test',6,14,'accident','2019-12-06 12:53:38.000000',NULL),(119,'JB','0720123456','jkerubo11@gmail.com','Nairobi','KBY 765T','Accident test',6,14,'accident','2019-12-06 12:53:56.000000',NULL),(120,'Judy kerry','0720123456','jkerubo11@gmail.com','Nairobi','KBY 765T','Accident test',6,14,'accident','2019-12-06 12:54:18.000000',NULL),(127,'Joseph Muigai','0718326864','josemuigai@gmail.com','Nairobi','KCT 730U','I was hit by a motor cycle and the vehicle incurred some damage',6,14,'accident','2019-12-13 06:32:52.000000',NULL),(128,'Victor Samuel Njenga','0728290524','vixa08@gmail.com','Nairobi','KCW 163P','I hit a boulder on the road on Mbagathi way',6,14,'accident','2019-12-13 08:41:20.000000',NULL),(129,'Victor Samuel Njenga','0728290524','vixa08@gmail.com','Nairobi','KCW 163P','Hit and run causing me to hit a barrier on the side of the road.',6,14,'accident','2019-12-13 12:14:21.000000',NULL),(130,'paul kimani','0727098756','paul@gmail.com','Nairobi','kca 239N','how',6,14,'accident','2019-12-13 13:05:20.000000',NULL),(131,'Robert Ogoti Mosiori','0726286196','robert.ogoti71@gmail.com','Nairobi','KBV 606S','Windscreen cracked by loose gravel on road on repair by an oncoming vehicle.',6,14,'windscreen','2019-12-19 08:45:12.000000',NULL),(132,'ROBERT OGOTI MOSIORI','0726286196','robert.ogoti71@gmail.com','NAIROBI','KBV606S','Windscreen cracked by loose gravel on the road',6,14,'windscreen','2019-12-19 10:47:51.000000',NULL),(133,'Bina Shah','0722515281','bina.shah@apollo.co.ke','Nairobi','KBJ222W','Hit from the back on Lower Kabete Road',6,14,'accident','2019-12-28 05:39:15.000000',NULL),(134,'Joseph Karanja Kamiti','254721281611','pentagon.insurance@yahoo.com','Banana Hill','KCV914J','Non-Injury Accident at about 12.30 am on 31st. Dec 2019 along Limuru Rd. near Two Rivers Mall. Involved insured&#039;s motor vehicle registration number KCV 914 J Toyota Ractis and an unknown Third Party motor vehicle.',6,14,'accident','2020-01-03 13:37:15.000000',NULL),(135,'James Nyakomitta','0722809419','james.nyakomitta@apollo.co.ke','Nairobi','KBU120W','Hit someone from behind',6,14,'accident','2020-01-08 12:32:18.000000',NULL),(136,'James','0722809419','james.nyakomitta@apollo.co.ke','Nairobi','KBY123W','Test Claim',6,14,'accident','2020-01-08 12:49:19.000000',NULL),(137,'James','0722809419','james.nyakomitta@apollo.co.ke','Nairobi','KBY123W','Test Claim',6,14,'accident','2020-01-08 12:51:23.000000',NULL),(222,'Peter Githaiga','254716779030','peterkangangi@gmail.com','Nairobi','KCM 866F','I have a broken windscreen. The windscreen broke after a small rock damaged it as I was driving on the highway.',6,14,'windscreen','2020-01-10 07:47:29.000000',NULL),(233,'Juddy Tonui','725420777','judytanui89@gmail.com','Nairobi','KCC143y','I got into an accident with a bus.',6,14,'accident','2020-01-15 09:44:21.000000','2020-01-15'),(234,'Gilbert Njoroge','0712345678','gilbert.njoroge@apollo.co.ke','Apollo Centre','KHT238R','Test',6,14,'accident','2020-01-16 07:42:10.000000','2020-01-08'),(235,'Gilbert Njoroge','0712345678','gilbert.njoroge@apollo.co.ke','Apollo Centre','KHT253R','Test',6,14,'accident','2020-01-16 07:44:33.000000','2020-01-09'),(236,'Gilbert Njoroge','0712345678','gilbert.njoroge@apollo.co.ke','Apollo Centre','KHT237R','Tes',6,14,'accident','2020-01-16 07:45:11.000000','2020-01-07'),(237,'Jackline Akinyi','0725478844','judytanui89@gmail.com','Nairobi','KBW 488J','Got hit by drunk driver',6,14,'windscreen','2020-01-24 08:58:43.000000','');
/*!40000 ALTER TABLE `claims_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` int(6) NOT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedback` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (23,'ig','0725555555',1255,'Nairobi','p@gmial.com','&lt;p&gt;jkhdkhdhd&amp;nbsp; snudhjkndxlncn fd,&lt;/p&gt;','2019-12-20 11:59:39.000000'),(24,'Jane Doe','0712365478',6588564,'Machakos','janedoe@gmail.com','&lt;p&gt;dfasf&lt;/p&gt;','2019-12-20 12:00:32.000000'),(25,'ojojioj','0755666885',2267,'Nairobi','gilbert.njoroge@apollo.co.ke','&lt;p&gt;Test test&lt;/p&gt;','2019-12-20 12:14:06.000000'),(26,'Saagar Khimasia','0735641615',2136,'Westlands','saagar.khimasia@apollo.co.ke','&lt;p&gt;Testing&lt;/p&gt;','2019-12-20 12:24:36.000000');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_jobs_users`
--

DROP TABLE IF EXISTS `hr_jobs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_jobs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `invited_by` int(11) DEFAULT NULL,
  `invite_token` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `email unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_jobs_users`
--

LOCK TABLES `hr_jobs_users` WRITE;
/*!40000 ALTER TABLE `hr_jobs_users` DISABLE KEYS */;
INSERT INTO `hr_jobs_users` VALUES (9,'tony','tony','anthony@gmail.com','$2y$10$41bKaflVtmX5uQff1xbpmO.CZTSrE99ldXsA4mKY1Jw/EDwsBTAMq',NULL,NULL,'5ba66107001c15480811b33027e88241f72e7d3567857d40fb1560d84f1d6c8e315d61d62a39fde0',NULL,'2019-09-30 09:19:08.534031'),(10,'chege','chege','chege@gmail.com','$2y$10$IDEVyytSrpnUkFa1qXpU0Ou4IjRVVXE/8d8101niiUlMWbFN699nq',NULL,NULL,NULL,NULL,NULL),(16,'John','Doe','tony@gmail.com','$2y$10$yZbInr5l3/k6.RGfHEPhd.WgZ/Z5XBPS50AztmdiH/ESPkWpUxbVi',NULL,NULL,'0fc14e79d23bfe1fc24e085b4a95ea6886fc4c39cc81c42810a9d738fe950bf412e0e04f945bea3b',NULL,'2019-09-28 12:59:48.440007'),(17,'Jane','Doe','peter@gmail.com','$2y$10$8GYZYvl0oREWIbXCJGaiJuurRSAOvA8oof0RTOv2SDWJr0L6bSiVC',NULL,NULL,NULL,'2019-09-26 14:22:50.000000',NULL),(18,'Jane','Doe','petpoer@gmail.com','$2y$10$3NRBm3/hQyRCirfhmnZ7V.dZglOFt0ly8ZSO9QpB7WSnsl/BKZWE2',NULL,NULL,NULL,'2019-09-26 14:26:06.000000',NULL),(19,'Jane','Doe','tonyadfafdfa@gmail.com','$2y$10$pEmn7wROUEyYZ5pXIzbUg.QfO4PlL/dAruLCaBAf/6co7tviBM9Va',NULL,NULL,NULL,'2019-09-27 04:54:58.000000',NULL),(20,'Jane','Doe','tonyaddfafdadafafdfa@gmail.com','$2y$10$NKIXJiFwrjiPLAFGpPNTTuobLheF5Q2OQJa9jQhkfLjTy3zyBeVPm',NULL,NULL,NULL,'2019-09-27 04:55:16.000000',NULL),(21,'peter','chege','peterchege4432@gmail.com','$2y$10$adJVoy2h6I16omQbQwxZdu72IQ6gmp8nGZ1HqbMBi3SAlELr2Xul.',NULL,NULL,NULL,'2019-09-27 11:11:21.000000','2019-10-22 13:27:34.824171'),(22,'','','p@gmail.com','',16,'5f4576b4747d20c5a3132e9171f655308c9903f152124bf31e8f48e083c638d2dfa3de430bc39ad0',NULL,'2019-10-22 09:56:24.000000',NULL),(25,'','','pdfkljads@gmail.com','',16,'9e54c60cd4208e38ed6b92b1083a93ce3a9fa0704cc2687fb5cf396ef81f52b548b09008629f633b',NULL,'2019-10-22 09:59:14.000000',NULL),(27,'','','anthonybaru@gmail.comt','',16,'d9f7b860923c15a1294d2fbad76eb54767e1bab694e6b80d801ce5a6363e29342513f4515da9c2cc',NULL,'2019-10-22 10:56:32.000000',NULL),(28,'','','anthonybaru@gmail.comtry','',16,'b58663bb1b5594c7877096b9b96a1394a4a2e3a7bf0ce7d4327f9c00505f5fcdfe915dfd61fc8f12',NULL,'2019-10-22 11:01:08.000000',NULL),(29,'','','alkdjfla@gm.cow','',16,'d687f4c20a95b9e6fff371f0e291eaf3ca0b463aa289e92a3eb6a8519e353c4c5cc0cc8b277e2de3',NULL,'2019-10-22 11:26:18.000000',NULL),(30,'','','alkdjfla@gm.cowy','',16,'509c52e35342244514717e80764d6ca8cfe05aec4362ccd92f3d379f1dbf03216c2c5a8d9adbc346',NULL,'2019-10-22 11:42:32.000000',NULL),(31,'','','alkdjfla@gm.cowyfgh','',16,'85e9f2130fbecf2fbfe480cec97a5f9c3c67509e19a51e740562b6548726b1c0164ad0d957f46f3d',NULL,'2019-10-22 11:46:47.000000',NULL),(32,'','','fakdfjkahakfjhaf@gmail.com','',16,'11923f5b38a69545e74877d5efa24ff67aec385ae3d1c118ab9c9f22cf8972be5a831072eb453e78',NULL,'2019-10-22 12:17:47.000000',NULL),(33,'','','kafd@gm.co','',16,'fe541a8293c310f8a55aeecd111f8a6944adc5594746a473716127ff5466b10f5de9f3dbe665b2de',NULL,'2019-10-22 12:19:56.000000',NULL),(34,'','','akjdfha@gmai.co','',16,'6e6314a6dec12953a173c6b8d0ba7f2f68fe10763e2d8ecd368892a332ce587869ef5727dae7bf10',NULL,'2019-10-22 12:50:35.000000',NULL),(35,'range','range','p@gmial.com','$2y$10$6zqXysnyLzeewse21c7yIOon5LI3FzGeA75QiX41sxtyqYt6xNMUO',16,'Registred',NULL,'2019-10-22 14:34:35.000000','2019-10-22 14:34:35.501333'),(42,'','','dman@gsh.co','',16,'013a9aa6ca1a56ef3ba35c306a0a99af536e62274a8e9e4908d942cbdfb6863ff6564c0211b6b2a2',NULL,'2019-10-23 08:38:40.000000',NULL);
/*!40000 ALTER TABLE `hr_jobs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_centre_admin_registration`
--

DROP TABLE IF EXISTS `media_centre_admin_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_centre_admin_registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invite_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_centre_admin_registration`
--

LOCK TABLES `media_centre_admin_registration` WRITE;
/*!40000 ALTER TABLE `media_centre_admin_registration` DISABLE KEYS */;
INSERT INTO `media_centre_admin_registration` VALUES (1,'1920 June 2019 16:00:20','anthony baru','$2y$10$nd2qnZXW6OU8wGl.R0B10OECRe0.ZFm3GI0XfNQM2x.uoJDM/6yIa','anthonybaru@gmail.com','anthony',NULL,'9e6f437264dbcd37999cfa257027c195f91c9cd1a62b05b44f396bb5f3ee4b4189080d061a274e1f','2019-06-20 13:00:20');
/*!40000 ALTER TABLE `media_centre_admin_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_centre_categories`
--

DROP TABLE IF EXISTS `media_centre_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_centre_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creatorname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_centre_categories`
--

LOCK TABLES `media_centre_categories` WRITE;
/*!40000 ALTER TABLE `media_centre_categories` DISABLE KEYS */;
INSERT INTO `media_centre_categories` VALUES (25,'12,June 2019 09:46:59','Media Centre','tony','tony@gmail.com','2019-06-24 16:36:37'),(26,'12,June 2019 10:01:42','CSR','tony','tony@gmail.com','2019-06-24 16:36:37');
/*!40000 ALTER TABLE `media_centre_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_centre_posts`
--

DROP TABLE IF EXISTS `media_centre_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_centre_posts` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `post` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_centre_posts`
--

LOCK TABLES `media_centre_posts` WRITE;
/*!40000 ALTER TABLE `media_centre_posts` DISABLE KEYS */;
INSERT INTO `media_centre_posts` VALUES (2,'21,June 2019 09:42:44','2019-06-17 11:03:34.959444','APA WINS AT AKI 2019 AWARDS','Media Centre','Anthony baru','images/posts/29eacc5ead5bd872ff681b9e2f2b28842.JPG','&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 11 March 2019 &amp;ndash;&lt;/em&gt;&lt;/strong&gt;&amp;nbsp;Dr. Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up &amp;ndash; Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position &amp;ndash; Overall premium volume and Grace Akinyi Odhiambo took third position &amp;ndash; Agent of the year General insurance business.&lt;/p&gt;',1),(3,'20,June 2019 15:13:41','2019-06-17 11:03:34.959444','AZURI AND APA INSURANCE INTRODUCE AFFORDABLE INCOME AND FUNERAL COVER FOR SOLAR CUSTOMERS','Media Centre','Anthony','images/posts/3ed9110eda1f593630b63632d96cc678a.jpg','&lt;p&gt;&lt;strong&gt;9 November 2018, Nairobi, Kenya&lt;/strong&gt;&amp;nbsp;&amp;ndash; Azuri Technologies, a leading provider of pay-as-you-go-solar power in conjunction with APA Insurance, Kenya&amp;rsquo;s leading insurer, today announced the launch of HospiCash, a low-cost micro-insurance product for Azuri solar power customers across Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;By adding the optional HospiCash service to their pay-as-you-go home solar solution, Azuri customers benefit from the peace of mind with income cover when hospitalised, in addition to cover for funeral expenses.&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri HospiCash customers who are unable to work due to being hospitalised can claim up to KES 1,000 per day. &amp;nbsp;In addition, the policy also covers funeral expenses up to KES 10,000 upon death of the insured paid to a named beneficiary.&lt;/p&gt;\r\n\r\n&lt;p&gt;Speaking during the official launch of the HospiCash at the APA headquarters in Nairobi, Azuri CEO Simon Bransfield-Garth said: &amp;ldquo;We are delighted to be partnering with APA to further Azuri&amp;rsquo;s vision of providing consumers across Africa with products and services that have the power to truly change and improve lives.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Many off-grid consumers find it difficult to access modern financial products and so combining Azuri&amp;rsquo;s reach and APA&amp;rsquo;s affordable insurance allows customers to concentrate on making a full recovery rather than worrying about the loss of income from being hospitalised.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Apollo Group CEO, Mr. Ashok Shah said, &amp;ldquo;Off-grid consumers have been traditionally underserved by insurance providers because of the relative difficulty of access. The partnership with Azuri provides a means to open up a range of financial inclusion offerings to this important customer base.&amp;nbsp; APA Insurance is committed to providing insurance to all income groups in Kenya.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri&amp;rsquo;s HospiCash cover is being rolled out nationwide and will be available to all Azuri Quad and solar TV customers.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Azuri Quad solar home lighting system costs as little as KES49 per week and includes a 10W solar panel, four bright LED lights, USB port and connectors for mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;\r\n\r\n&lt;p&gt;AzuriTV, the first PayGo solar TV system of its kind to be launched in Africa, features a 24-inch super slim LED TV, over 100 satellite TV channels, four bright LED lights for use inside and outside the home, mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;',1),(5,'20,June 2019 10:25:40','2019-06-17 11:03:34.959444','APOLLO FOUNDATION SPONSORS THE 2018 NDAKAINI MARATHON','Media Centre','Anthony','images/posts/5c5e12d1c3537ad1306d3314218a8fc0b.jpg','&lt;p&gt;&lt;strong&gt;Nairobi, Kenya 21 Spetember 2018&amp;nbsp;&lt;/strong&gt;&amp;ndash; Catherine Karimi, Chief Executive Officer, APA Life Assurance (left) presents the APA Apollo Foundation&amp;rsquo;s sponsorship cheque to James Mukuna, Vice Chairman of the Ndakaini Marathon.&amp;nbsp; APA Apollo is proud to sponsor the half marathon, which is now in its 15th&amp;nbsp;year, as it enhances the foundations support for Environment and Water conservation. The marathon will take place on Saturday 6 October 2018, around the scenic fresh water dam in Murang&amp;rsquo;a County.&lt;/p&gt;\r\n\r\n&lt;p&gt;The annual marathon was started with the aim of increasing awareness particularly among Nairobi residents on the importance of conserving the capital&amp;rsquo;s main source of drinking water.&lt;/p&gt;',1),(6,'20,June 2019 09:56:29','2019-06-20 09:56:29.079455','APA SUPPORTS THE MAU-EGERTON UNIVERSITY CROSS COUNTRY FOR THE SIXTH CONSECUTIVE YEAR','CSR','Anthony','images/posts/510d72ff6c6326d72174d1a324f514dd.jpg','&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 1 February 2019 &amp;ndash;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;Egerton University Vice Chancellor, Prof. Rose A. Mwonya (left) receives a sponsorship cheque from Meena Shah, Nakuru Branch Manager, APA Insurance (centre) and Hillary Mbithi, APA Nakuru (right) for Ksh 300 000 for the 6th&amp;nbsp;Mau Egerton University Cross Country. &amp;nbsp;This is the sixth consecutive year the company has sponsored the Mau-Egerton University Cross Country, which will take place on Saturday 9 February 2019.&amp;nbsp; The Mau-Egerton University Cross country was created to raise funds for rehabilitation of Mau ecosystem and Njoro River.&lt;/p&gt;\r\n\r\n&lt;p&gt;Over the past five years APA APOLLO has also partnered with Egerton University to plant indigenous trees at the Ngongeri Park as part of restoration of the riparian forest vegetation along the middle section on Njoro River.&lt;/p&gt;',1),(7,'20,June 2019 10:10:18','2019-06-20 10:10:18.428516','APA CONTINUES TO INVEST IN EDUCATION FOR CHELETA PRIMARY SCHOOL STUDENTS','CSR','Anthony','images/posts/2f3efcb09e5f6373e23d625b5d290c4a.jpg','&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya 11 January 2018 &amp;ndash;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;Stacy Kavere, Best Girl (left) and Amos Basweti, Best Boy (right) proudly receive their cheque from Catherine Karimi, Chief Executive Officer, APA Life for their 2018 school fees.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA APOLLO have &amp;nbsp;been sponsoring the top boy and girl students from the school since 2006 and this saw the school average performance improve from a mean grade of 141 marks to 308 marks, for their secondary education. &amp;nbsp;The bursary currently has ten students in various learning institutions around the country.&lt;/p&gt;',1),(8,'20,June 2019 10:21:47','2019-06-20 10:12:13.799828','APA APOLLO FOUNDATION PROMOTES SPORTING ACTIVITIES BY SUPPORTING THE RUNDA YOUTH SPORTS ASSOCIATION (RYSA) FOOTBALL TEAM.','CSR','Anthony','images/posts/8a895c7194fbd11dff43fb66cf939fece.jpg','&lt;p&gt;Football is the core sporting activity of RYSA. Through football, RYSA has been able to bring together over 800 young people from Githogoro and Huruma slums&lt;/p&gt;\r\n\r\n&lt;p&gt;The foundation sponsors the fees for RYSA to participate in various leagues and provides the football kits, logistics and team allowances.&lt;/p&gt;\r\n\r\n&lt;p&gt;Though the partnership RYSA has excelled in football, today RYSA participates annually in&amp;nbsp;&lt;strong&gt;Football Kenya Federation (FKF)&amp;nbsp;&lt;/strong&gt;leagues around Nairobi. As a result of excelling in football, RYSA participates annually in&amp;nbsp;&lt;strong&gt;Football Kenya Federation (FKF)&lt;/strong&gt;&amp;nbsp;leagues around Nairobi.&lt;/p&gt;\r\n\r\n&lt;p&gt;At the last edition (2015), RYSA Senior Team was ranked 5th&amp;nbsp;at the Nairobi County Branch of the Football Kenya Federation (FKF) rankings. They are now (2016) elevated and playing in the Nairobi Division One Super8/ Sportpesa League&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA/Apollo organises tournaments for the team in order to boost and continue to nurture the soccer talents and positively engage the youth in Mji wa Huruma and Githongoro villages.&lt;/p&gt;',1),(9,'21,June 2019 09:59:55','2019-06-21 09:18:00.946371','THE APA APOLLO GROUP RESULTS REFLECT A SIGNIFICANT IMPROVEMENT IN OVERALL EARNINGS.','Media Centre','Anthony baru','images/posts/91fc249b136eec767eb86398ad0ee7a81.jpg','&lt;p&gt;&lt;strong&gt;Financial Highlights&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;The Apollo Group, profit before tax, increased by 9% to Ksh 947 Million&lt;/li&gt;\r\n	&lt;li&gt;The Group grew its asset base to Ksh 24 Billion&lt;/li&gt;\r\n	&lt;li&gt;The Group&amp;rsquo;s premium income increased by 14% to Ksh 11 Billion&lt;/li&gt;\r\n	&lt;li&gt;The Group&amp;rsquo;s largest subsidiary, APA Insurance, recorded a strong performance with Gross Written Premiums (GWP) of Ksh 9.56 Billion&lt;/li&gt;\r\n	&lt;li&gt;Net Interest credited at 10.25% on Pension schemes with APA Life Assurance&lt;/li&gt;\r\n	&lt;li&gt;APA&amp;rsquo;s Capital Adequacy Ratio (CAR) at 212%&lt;/li&gt;\r\n	&lt;li&gt;APA&amp;rsquo;s Shareholders to receive Ksh 600 Million dividend (2017 Ksh1.5 billion).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;The Apollo Group, profit before tax, increased by 9% to Ksh 947 million, reflecting improved operational performance. The group registered a 14% increase in premiums from Ksh 9.6 billion to Ksh 11.0 billion and grew its asset base from Ksh 23 billion in 2017 to Ksh 24 billion in 2018. APA Insurance grew by 15% reporting significant growth in its Gross Written Premiums (GWP) in 2018 to Ksh 9.56 Billion from Ksh 8.30 billion in 2017. This is a 15% year on year growth against the insurance industry estimated growth of 4% and now makes APA the third largest General Insurer in Kenya. APA posted Ksh 677 million in profit before tax. The total claims settled by the APA Insurance during the year were KSh6.54 billion compared to Ksh 6.38 billion in 2017.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA Life Assurance has declared 10.25% to pension contributors which is one of the highest in the industry.&lt;/p&gt;\r\n\r\n&lt;p&gt;Commenting on the results, Apollo Group CEO Ashok Shah said: &amp;ldquo;In 2018 the Group has delivered concrete results against the backdrop of a difficult business environment. We have achieved a growth in premiums and in solid investment returns, when many of our peers have shown losses in both operational and investment returns&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mr. Shah added: &amp;ldquo;APA Insurance is still the flagship and continues to grow and provides healthy dividends to the group with very strong ratios. The Group will continue to focus on growing APA Life Assurance and expanding the APA Insurance&amp;rsquo;s general business in Uganda. This indeed is a testimony of our commitment over the long haul in this market. It is our vision to continue being at the forefront in insurance and investments in Kenya and other chosen markets. The Board and Management have agreed that the refreshed strategy of Insuring Happiness, with a greater focus on customer centricity, will position the company for further significant growth&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Following the impressive results, APA has declared a Ksh 600 million dividend to its shareholders.&lt;/p&gt;',1),(10,'21,June 2019 09:27:52','2019-06-21 09:27:52.591329','APA SPREADS HAPPINESS TO SHOPPERS AT TWO RIVERS MALL ON WORLD HAPPIENSS DAY 2019','Media Centre','Anthony baru','images/posts/a9dda57107ad4519936291c07ff6af81.jpg','&lt;p&gt;Ashok Shah, The Apollo Group CEO, (left) and the APA Insurance team spread happiness to shopper at Two Rivers Mall on World Happiness Day.&amp;nbsp; The Mall goers where surprised with random acts of kindness and received prizes including household goods, food vouchers, shopping vouchers and holiday trips.&lt;/p&gt;\r\n\r\n&lt;p&gt;Kenya ranked 121 on the 2019 World Happiness Report compared to 132 in 2018.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Let&amp;#39;s do whatever we can to spread more happiness to others today and every day,&amp;rdquo; said Ashok Shah, The Apollo Group CEO. &amp;ldquo;Because when we&amp;#39;re together everything&amp;#39;s better&amp;rdquo;.&lt;/p&gt;',1),(11,'28,June 2019 15:00:12','2019-06-25 11:49:20.355867','MARY KIMOTHO Mâ€™MUKINDIA APPOINTED TO APA BOARDS','Media Centre','Anthony','images/posts/11a19e0944a795562881675405b3316c03.jpg','&lt;p&gt;The Board of Directors of APA Insurance and APA Life is pleased to announce the appointment of Mary Kimotho M&amp;rsquo;Mukindia to&lt;strong&gt; &lt;/strong&gt;Board of Directors with effect from 1 March 2019.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Apollo Group CEO, Ashok Shah, stated, &amp;ldquo;I am extremely pleased to welcome Mary to the boards of APA Insurance and APA Life.&amp;nbsp; A highly respected and qualified Kenyan that I have learnt to know and appreciate over the years.&amp;nbsp; Her foresight, experience and competent leadership qualities will guide the Board at this very exciting time in our business.&amp;nbsp; I look forward to support her as the Group CEO and I wish her all the best in this endeavour.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;The new Board member, Mary Kimotho M&amp;rsquo;Mukindia added, &amp;quot;I am honoured and thrilled to join the boards of two of Kenya leading insurance companies which are part of the Apollo Group.&amp;nbsp; I look forward to working with this exceptional team to deliver the best results for our shareholders and clients.&amp;nbsp; I wish to thank Ashok for his distinguished service and leadership in getting the Group to this point, and look forward to his and the other board members continued guidance.&amp;rdquo;&lt;/p&gt;',1),(12,'25,June 2019 11:52:18','2019-06-25 11:52:18.807459','APA LIFE WINS AT AKI 2019 AWARDS','Media Centre','Anthony','images/posts/9eacc5ead5bd872ff681b9e2f2b28842.JPG','&lt;p&gt;Dr Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life Assurance (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up - Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position - Overall premium volume and Grace Akinyi Odhiambo took third position - Agent of the year General insurance business.&lt;/p&gt;',0),(13,'30,June 2019 09:02:03','2019-06-25 12:31:15.597123','COST BENEFITS A BIG ATTRACTION IN GENERIC ROUTE TO PRESCRIPTIONS VINOD BHARATAN, CHIEF EXECUTIVE OFFICER, APA INSURANCE.','Media Centre','Anthony','images/posts/1379ebf16d6a9ae0e860c8834db4735b24.jpg','&lt;p&gt;Opting for a generic drug can give you the same benefits as branded medicines &amp;ndash; but at a considerably lower cost.&amp;nbsp;It is no secret that Kenyan consumers are paying over the odds for prescription drugs. Now people are increasingly turning to generics to try to reduce their monthly bill for medication. But what are they and do they suit everyone?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;What are generics?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;When a new drug is produced, it is protected by its patent for a certain number of years. Once this ceases, any drug manufacturer can produce their own equivalent, which is typically sold at a significantly lower price, given that this manufacturer hasn&amp;rsquo;t incurred all the costs associated with developing and creating the drug. These are known as generics.&lt;/p&gt;\r\n\r\n&lt;p&gt;Health financiers are now encouraging doctors and pharmacists to substitute a brand name drug for its generic equivalent, provided that it is included on a list published by the Ministry of Health.&lt;/p&gt;\r\n\r\n&lt;p&gt;So, for example, if you take a branded medication that has been approved for generic substitution, your doctor or pharmacist will automatically make the switch.&amp;nbsp; Doing so will reduce the cost to the patient.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, the only time a pharmacist can offer you a branded drug is if the doctor prescribing the medication writes &amp;ldquo;do not substitute&amp;rdquo; on the prescription.&lt;/p&gt;\r\n\r\n&lt;p&gt;The legislation is very clear that the prescribing doctor must write it in their own handwriting where it is deemed there is a clinical exemption.&amp;nbsp; This means that in certain circumstances &amp;ndash; such as those outlined below &amp;ndash; a patient can continue to use the branded medication under their existing scheme.&lt;/p&gt;\r\n\r\n&lt;p&gt;If, however, they opt to stick with the branded drug simply because they are familiar with it and fear change, they may have to pay the difference themselves.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;But are generics always equivalent?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Typically, there is no risk to a patient in switching from a brand name drug to its generic equivalent. However, there may be exceptions.&lt;/p&gt;\r\n\r\n&lt;p&gt;Although generic drugs have the same active ingredient as branded drugs, they are composed differently. This means that they may have different bioavailability from either the branded drug or, indeed, other generic drugs of the same class.&amp;nbsp; Typically, this won&amp;rsquo;t affect the patient in terms of efficacy and safety, but in drugs with a narrow therapeutic index, this could potentially lead to adverse effects.&lt;/p&gt;\r\n\r\n&lt;p&gt;It is therefore important to use generic drugs as substitutes only if they have been shown to have similar bioavailability to the branded drug and have been approved for use in Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Therapeutic efficacy&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Prescribers need to be cognisant of theoretical changes in therapeutic efficacy and monitor for any changes.&amp;nbsp; For example, the colour of the tablet may change which can lead to confusion and may lead to poor compliance.&lt;/p&gt;\r\n\r\n&lt;p&gt;Prescribers should again ensure patients are aware and understand the changes being made to their medication. In any case, if you&amp;rsquo;re in doubt about the suitability of generic medication, check with your GP or whoever prescribes your medication for reassurance, or call into your local pharmacist.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Looking for low-cost generics&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Generic alternatives too many drugs should be available in your local pharmacy so you can always ask for the generic substitution for any medication you may be taking.&lt;/p&gt;\r\n\r\n&lt;p&gt;If the drug is still under patent it won&amp;rsquo;t be available, or it may turn out to be unsuitable for your needs, but it&amp;rsquo;s still worth asking about.&lt;/p&gt;',1),(14,'30,June 2019 08:43:57','2019-06-25 12:42:21.498131','GOVERNMENT OF KENYA PARTNERS WITH INSURERS TO MAKE RECORD CROP INSURANCE PAY-OUTS','Media Centre','Anthony','images/posts/1493335678cc6658fe268d5382396d7db8.jpg','&lt;p&gt;Ksh 25.5 million on tap for 7,025 smallholder assorted crop farmers in 21 counties in Kenya. This is under the Kenya Agricultural Insurance Program (KAIP) where the government of Kenya through its State Department of Crop Development and a consortium of six insurance companies headed by APA insurance.&lt;/p&gt;\r\n\r\n&lt;p&gt;Climate change is a hard-hitting reality that has thrown Kenya smallholder farmers into anxiety mode. The weather patterns have drastically changed from the normal where there use to be a regular and predictable downpour. Planting periods have shifted and farmers are no longer sure of productivity. This jeopardises our food security and national planning.&lt;/p&gt;\r\n\r\n&lt;p&gt;To curb the challenges of production uncertainties, the Kenyan government through its state department of crop development partnered with six insurance companies led by APA Insurance to caution smallholder farmers against climate change related risk leading to reduced yields.&lt;/p&gt;\r\n\r\n&lt;p&gt;The consortium is composed of six insurance companies; APA, Jubilee, CIC, UAP, Kenya orient and AMACO. This program started in the year 2016 with three counties (Bungoma, Nakuru and Embu) under the support of the World Bank. The program has grown to 21 counties as summarised in the 2018 business below.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Government of Kenya Partners with Insurers to Make Record Crop Insurance Pay-outs &quot; src=&quot;http://localhost/cms/upload/91835652.png&quot; style=&quot;height:540px; width:609px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;25.5 million will be paid to 7,025 smallholder farmers beneficiaries across the 8 of 21 counties in Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA Insurance CEO, Vinod Bharatan lauded the government for supporting the program by providing subsidies for the premiums, adding that this will contribute towards safeguarding farmers&amp;rsquo; livelihoods that are often threatened by adverse climatic conditions.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Smallholder farmers are the backbone of our agricultural production. However, in recent years, they have had to bear huge risk that comes with effects of climate change. The weather is no longer predictable and natural disaster have become more frequent, leading to huge crop losses. We aim to address this challenge to livelihoods, our bread basket and our economy,&amp;rdquo; Mr Bharatan said.&lt;/p&gt;\r\n\r\n&lt;p&gt;The just concluded 2019 enrolment into the program has expanded to 27 counties with a focus of reaching the 33 active crop arable counties in 2020. The program is looking at insuring 1 million farmers by 2020.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Area Yield Index Insurance covers farmers based on the condition of harvest history of the unit area of insurance where the farm falls.&lt;/p&gt;',1),(15,'11,December 2019 10:06:26','2019-12-11 10:06:26.615000','APA INSURANCE RECEIVES THE 10TH EUROPEAN MICROFINANCE AWARD IN RECOGNITION OF ITS RESPONSE TO â€œSTRENGTHENING RESILIENCE TO CLIMATE CHANGEâ€','Media Centre','Anthony baru','images/posts/58443c60de961186d54128def773d717.jpg','&lt;p&gt;&lt;strong&gt;&lt;em&gt;Luxembourg 25 November 2019&lt;/em&gt;&lt;/strong&gt; - At a ceremony held at the European Investment Bank in Luxembourg, Paulette Lenert, Luxembourg Minister for Cooperation and Humanitarian Affairs, (left) and Dr Hoyer, President of the European Investment Bank (right) present the 10th European Microfinance Award to Ashok Shah, Apollo Group CEO (centre).&lt;/p&gt;\n\n&lt;p&gt;Since 2006, Luxembourg Directorate for Development Cooperation and Humanitarian Affairs, the European Microfinance Platform and the Inclusive Finance Network Luxembourg have been awarding a EUR 100,000 (USD 110,000) prize to the winner and, starting two years ago, EUR 10,000 (USD 1,100) to the two finalists.&lt;/p&gt;\n\n&lt;p&gt;This year&amp;rsquo;s winner, APA Insurance Ltd, is a Kenyan insurance company that provides index-based agriculture insurance to cover yields and forage for livestock, thus providing farmers and pastoralists with a safety net. Index-based insurance is an innovative approach to insurance whereby payments are linked to easily measured environmental conditions known as an &amp;ldquo;index&amp;rdquo; (e.g. the level of rainfall, yields or vegetation levels as measured by satellite) directly connected to the loss of agricultural output. When the index exceeds a particular threshold, farmers automatically receive compensation. In Kenya, where over 75 per cent of farmers are smallholders, who are especially vulnerable to the economic impacts of climate change, APA Insurance Ltd currently covers more than 350,000 families whose livelihoods are largely based on agriculture.&lt;/p&gt;\n\n&lt;p&gt;This is the first time in ten years an insurance company has been awarded the prize.&lt;/p&gt;',1),(16,'11,December 2019 10:10:53','2019-12-11 10:10:53.646000','APA TRIUMPH ONCE AGAIN AT THE 2019 INSURANCE AWARDS','Media Centre','Anthony baru','images/posts/d33d23aecb520dd3450517bdaaa04ff9.jpg','&lt;p&gt;&lt;em&gt;Ashok Shah, &lt;/em&gt;&lt;em&gt;The Apollo Group CEO (centre right) and &lt;/em&gt;&lt;em&gt;Vinod Bharatan, CEO, APA Insurance (centre left) are accompanied by colleagues from The Apollo Group at this year&amp;rsquo;s Think Business Annual Insurance Awards 2019. &amp;nbsp;&amp;nbsp;The Group were awarded eleven top awards which included four overall winners awards and saw Vinod Bharatan received CEO of the Year.&lt;/em&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;APA Insurance wins an outstanding eleven&lt;/em&gt;&lt;/strong&gt;&lt;strong&gt;&lt;em&gt; top awards at the 2019 Insurance Awards&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 2 December 2019&lt;/em&gt;&lt;/strong&gt;&lt;em&gt; &lt;/em&gt;&amp;ndash; The 2019 Think Business Annual Insurance Awards saw APA Insurance win 11 top awards, scooping five overall winners&amp;rsquo; positions including Vinod Bharatan award for CEO of the Year, three 1st runners up positions and three 2nd runners up position.&lt;/p&gt;\n\n&lt;p&gt;&amp;ldquo;We are honoured to have won all these prestigious awards and I congratulate the entire APA team for continuing to make sure we are insuring our client&amp;rsquo;s happiness.&amp;nbsp; The awards validate our company&amp;#39;s focus on excellent service, marketing and being socially active,&amp;rdquo; said Ashok Shah, The Apollo Group CEO.&lt;/p&gt;\n\n&lt;p&gt;APA Insurance took the overall winner awards in four main categories including Best Insurance in Sustainable Corporate Social Responsibility, The Most Customer-Centric Underwriter (General), Best Insurance Company in Customer Satisfaction (Medical and General). &amp;nbsp;They also received the first runner up in Best Insurance Company in Product Distribution and Marketing, General Insurer of the Year and Medical Underwriter of the year (Group Medical).&lt;/p&gt;',1);
/*!40000 ALTER TABLE `media_centre_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `old_all_risk_item`
--

DROP TABLE IF EXISTS `old_all_risk_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `old_all_risk_item` (
  `all_risk_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `customer_role` set('Owner','Tenant') COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` int(11) DEFAULT NULL,
  `serial_no` int(65) NOT NULL,
  `item_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`) USING BTREE,
  KEY `IX_Relationship29` (`item_id`) USING BTREE,
  KEY `all_risk_id` (`all_risk_id`) USING BTREE,
  KEY `section_id` (`section_id`) USING BTREE,
  KEY `item_type` (`item_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `old_all_risk_item`
--

LOCK TABLES `old_all_risk_item` WRITE;
/*!40000 ALTER TABLE `old_all_risk_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `old_all_risk_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('anthonbaru@gmail.com','$2y$10$18w4QBe2aAcZeFT.dE5piuP.y3weetjJt.5ISoEqPoMHO7rI035vm','2019-09-03 07:31:32'),('anthonybaru@gmail.com','$2y$10$OgCbEI39kJHuQel8qRv1denaxRb4.gK7XV9CTWSIDCd9OSQKmw6Uq','2019-09-03 09:51:54');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE,
  UNIQUE KEY `invoice_no` (`invoice_no`) USING BTREE,
  KEY `Relationship2` (`user_id`) USING BTREE,
  CONSTRAINT `user id to payment relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_dp_allrisks`
--

DROP TABLE IF EXISTS `pr_dp_allrisks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_dp_allrisks` (
  `allrisk_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL,
  `serial_number` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `make_model` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `item_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(20,0) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`allrisk_id`) USING BTREE,
  KEY `cover_id` (`cover_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `pr_dp_all_risks to users relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_dp_allrisks`
--

LOCK TABLES `pr_dp_allrisks` WRITE;
/*!40000 ALTER TABLE `pr_dp_allrisks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_dp_allrisks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_dp_calculator_customer_quotations`
--

DROP TABLE IF EXISTS `pr_dp_calculator_customer_quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_dp_calculator_customer_quotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `premises` bigint(20) DEFAULT NULL,
  `contents` bigint(20) DEFAULT NULL,
  `all_risk` bigint(20) DEFAULT NULL,
  `domestic_employee` bigint(20) DEFAULT NULL,
  `liability` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_dp_calculator_customer_quotations`
--

LOCK TABLES `pr_dp_calculator_customer_quotations` WRITE;
/*!40000 ALTER TABLE `pr_dp_calculator_customer_quotations` DISABLE KEYS */;
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (26,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',10000,0,0,0,200000,'2019-11-05 18:20:48.000000',NULL),(27,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',1000,0,0,0,200000,'2019-11-05 18:24:16.000000',NULL),(28,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,200000,0,0,200000,'2019-11-05 18:24:29.000000',NULL),(29,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',10000,10000,0,0,200000,'2019-11-05 18:24:50.000000',NULL),(30,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:33:24.000000',NULL),(31,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:33:49.000000',NULL),(32,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:35:06.000000',NULL),(33,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:35:11.000000',NULL),(34,'John Doe','0712345678','johndoe@gmail.com','Machakos','tenant',0,100000,0,0,0,'2019-11-05 18:36:38.000000',NULL),(35,'John Doe','0712345678','johndoe@gmail.com','Machakos','tenant',0,100000,0,0,0,'2019-11-05 18:36:49.000000',NULL),(36,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,700000,0,0,0,'2019-11-05 18:38:14.000000',NULL),(37,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,700000,0,0,0,'2019-11-05 18:39:32.000000',NULL),(38,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,700000,0,0,0,'2019-11-05 18:40:23.000000',NULL),(39,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,700000,0,0,0,'2019-11-05 18:40:30.000000',NULL),(40,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:45:23.000000',NULL),(41,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',10000,0,0,0,0,'2019-11-05 18:49:40.000000',NULL),(42,'John Doe','0712345678','johndoe@gmail.com','Machakos','tenant',0,200000,0,0,0,'2019-11-06 09:04:44.000000',NULL),(43,'p','0731587030','churchilloele254@gmail.com','nairobi','owner',0,60000,500000,0,0,'2019-11-26 18:02:59.000000',NULL),(44,'Ken Wainaina','0727955779','wainainaken@gmail.com','Nairobi','tenant',0,150000,200000,0,0,'2019-12-09 15:20:19.000000',NULL),(45,'Ken Wainaina','0727955779','wainainaken@gmail.com','Nairobi','tenant',0,150000,250000,0,0,'2019-12-09 15:22:34.000000',NULL),(46,'Joseph Waireri','0720304042','joeausti@gmail.com','NAIROBI','owner',12850000,0,0,0,0,'2020-01-03 18:43:29.000000',NULL),(47,'Catherine Wabwire','0722754591','cwabwire@yahoo.co.uk','Migori','owner',6000000,1000000,0,72000,500000,'2020-01-06 11:22:44.000000',NULL);
/*!40000 ALTER TABLE `pr_dp_calculator_customer_quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_dp_contents`
--

DROP TABLE IF EXISTS `pr_dp_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_dp_contents` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `item_description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_value` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`content_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_dp_contents`
--

LOCK TABLES `pr_dp_contents` WRITE;
/*!40000 ALTER TABLE `pr_dp_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_dp_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_dp_covers`
--

DROP TABLE IF EXISTS `pr_dp_covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_dp_covers` (
  `cover_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cover` double NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User Foreign Key ',
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cover_id`) USING BTREE,
  KEY `IX_Relationship3` (`user_id`) USING BTREE,
  KEY `IX_Relationship4` (`category_id`,`product_id`) USING BTREE,
  KEY `cover_id` (`cover_id`,`user_id`) USING BTREE,
  KEY `Cover must have a product` (`product_id`) USING BTREE,
  KEY `end_date` (`end_date`) USING BTREE,
  KEY `item_id` (`item_id`) USING BTREE,
  CONSTRAINT `Cover must have a product` FOREIGN KEY (`product_id`) REFERENCES `products_categories` (`product_id`),
  CONSTRAINT `pr_dp_covers_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `pr_dp_premises` (`user_id`),
  CONSTRAINT `pr_dp_covers_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `pr_dp_contents` (`user_id`),
  CONSTRAINT `user id to cover relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_dp_covers`
--

LOCK TABLES `pr_dp_covers` WRITE;
/*!40000 ALTER TABLE `pr_dp_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_dp_covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_dp_domestics`
--

DROP TABLE IF EXISTS `pr_dp_domestics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_dp_domestics` (
  `domestic_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `employee_type` enum('Indoors Staff','Gardener','Stablemen','Chauffeurs','Watchmen') COLLATE utf8_unicode_ci NOT NULL,
  `number_of_employees` int(11) NOT NULL,
  `annual_salary` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`domestic_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `domestics to users relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_dp_domestics`
--

LOCK TABLES `pr_dp_domestics` WRITE;
/*!40000 ALTER TABLE `pr_dp_domestics` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_dp_domestics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_dp_general_informations`
--

DROP TABLE IF EXISTS `pr_dp_general_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_dp_general_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `insurer_decline` tinyint(1) NOT NULL,
  `insurer_decline_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_terms` tinyint(1) DEFAULT NULL,
  `special_terms_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancelled_refused_cover` tinyint(1) NOT NULL,
  `cancelled_refused_cover_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `increased_premium` tinyint(1) NOT NULL,
  `increased_premium_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sustained_loss_from_mentioned_perils` tinyint(1) NOT NULL,
  `sustained_loss_from_mentioned_perils_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pr_dp_general_informations_ibfk_1` (`user_id`) USING BTREE,
  CONSTRAINT `user id to general info` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_dp_general_informations`
--

LOCK TABLES `pr_dp_general_informations` WRITE;
/*!40000 ALTER TABLE `pr_dp_general_informations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_dp_general_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_dp_premises`
--

DROP TABLE IF EXISTS `pr_dp_premises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_dp_premises` (
  `premises_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_role` set('Owner','Tenant') COLLATE utf8_unicode_ci DEFAULT '',
  `user_id` int(255) NOT NULL,
  `location` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `dwelling_wall` int(11) NOT NULL,
  `dwelling_roof` int(11) DEFAULT NULL,
  `floors` int(11) NOT NULL,
  `outbuilding_wall` int(11) DEFAULT NULL,
  `outbuilding_roof` int(11) DEFAULT NULL,
  `business` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dwelling` enum('private','self-contained','room-not-self-contained') COLLATE utf8_unicode_ci NOT NULL,
  `sole_occupation` tinyint(1) NOT NULL,
  `for_hire` tinyint(1) DEFAULT NULL,
  `thirty_day_inoccupancy` tinyint(1) NOT NULL,
  `thirty_day_inoccupancy_details` longtext COLLATE utf8_unicode_ci,
  `seven_day_inoccupancy` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seven_day_inoccupancy_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `good_state_of_repair` tinyint(1) NOT NULL,
  `burglar_proof` tinyint(1) NOT NULL,
  `burglar_proof_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_sec_arrangement` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `premises_value` double DEFAULT NULL,
  `cover_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`premises_id`) USING BTREE,
  KEY `Relationship18` (`customer_role`) USING BTREE,
  KEY `Relationship7` (`dwelling_wall`) USING BTREE,
  KEY `outbuilding walll material` (`outbuilding_wall`) USING BTREE,
  KEY `outbuilding roof` (`outbuilding_roof`) USING BTREE,
  KEY `building_id` (`premises_id`,`customer_role`) USING BTREE,
  KEY `cover_id` (`cover_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `dwelling_roo` (`dwelling_roof`) USING BTREE,
  CONSTRAINT `pr_dp_premises_ibfk_1` FOREIGN KEY (`dwelling_wall`) REFERENCES `ref_wall_materials` (`id`),
  CONSTRAINT `pr_dp_premises_ibfk_2` FOREIGN KEY (`dwelling_roof`) REFERENCES `ref_roof_materials` (`id`),
  CONSTRAINT `pr_dp_premises_ibfk_3` FOREIGN KEY (`outbuilding_roof`) REFERENCES `ref_outbuilding_roofs` (`id`),
  CONSTRAINT `pr_dp_premises_ibfk_4` FOREIGN KEY (`outbuilding_wall`) REFERENCES `ref_outbuilding_walls` (`id`),
  CONSTRAINT `premises to users relationship` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_dp_premises`
--

LOCK TABLES `pr_dp_premises` WRITE;
/*!40000 ALTER TABLE `pr_dp_premises` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_dp_premises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  UNIQUE KEY `product_name` (`product_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,'MOTOR PRIVATE','2019-09-11 08:37:40','2019-09-11 08:37:44'),(7,'MOTOR CYCLE','2019-09-11 08:38:07','2019-09-11 08:38:11'),(8,'PEDAL CYCLE','2019-09-11 08:38:24','2019-09-11 08:38:28'),(9,'TRAVEL INSURANCE','2019-09-11 08:38:55','2019-09-11 08:38:58'),(10,'HOME COVER/DOMESTIC PACKAGE','2019-09-11 08:39:25','2019-09-11 08:39:29'),(11,'PET','2019-09-11 08:39:52','2019-09-11 08:39:54'),(12,'PERSONAL ACCIDENT','2019-09-11 08:40:19','2019-09-11 08:40:22'),(13,'GOLFERS','2019-09-11 08:40:37','2019-09-11 08:40:40'),(14,'FAMILY HEALTH COVER/JAMII PLUS','2019-09-11 08:41:10','2019-09-11 08:41:13'),(15,'FAMILY HEALTH COVER/AFYA NAFUU','2019-09-11 08:41:31','2019-09-11 08:41:34'),(16,'CANCER CARE/FEMINA','2019-09-11 08:42:13','2019-09-11 08:42:17'),(17,'ER CARD','2019-09-11 08:42:29','2019-09-11 08:42:33'),(18,'FIXED SAVINGS PLAN/IMARIKA','2019-09-11 08:44:47','2019-09-11 08:44:50'),(19,'ANTICIPATED SAVINGS/AKIBA HALISI','2019-09-11 08:45:37','2019-09-11 08:45:40'),(20,'EDUCATION PLAN/ELIMU','2019-09-11 08:46:14','2019-09-11 08:46:18'),(21,'HOSPITALISATION LOSS OF INCOME/HOSICARE','2019-09-11 08:46:51','2019-09-11 08:46:55'),(22,'FUNERAL EXPENSE COVER/PUMZISHA','2019-09-11 08:51:41','2019-09-11 08:51:46'),(23,'LIFE COVER/TERM ASSURANCE','2019-09-11 08:52:56','2019-09-11 08:53:00'),(24,'INDIVUDUAL PENSION PLAN/IPP','2019-09-11 08:53:03','2019-09-11 08:53:15'),(25,'MORTGAGE PROTECTION','2019-09-11 08:53:22','2019-09-11 08:53:24'),(26,'MOTOR COMMERCIAL','2019-09-11 08:59:08','2019-09-11 08:59:10'),(27,'MOTOR CYCLE/PSV','2019-09-11 08:59:14','2019-09-11 08:59:13'),(28,'MOTOR TRADE','2019-09-11 08:59:16','2019-09-11 08:59:17'),(29,'FIRE AND PERILS','2019-09-11 08:59:20','2019-09-11 08:59:19'),(30,'WIBA','2019-09-11 08:59:22','2019-09-11 08:59:23'),(31,'THEFT','2019-09-11 08:59:29','2019-09-11 08:59:28'),(32,'ENGINEERING','2019-09-11 08:59:31','2019-09-11 08:59:32'),(33,'LIABILITY','2019-09-11 08:59:36','2019-09-11 08:59:36'),(34,'MARINE','2019-09-11 08:59:38','2019-09-11 08:59:39'),(35,'AVIATION','2019-09-11 08:59:41','2019-09-11 08:59:43'),(36,'SPECIAL PACKAGE COVERS','2019-09-11 08:59:43','2019-09-11 08:59:44'),(37,'GOODS IN TRANSIT/GIT','2019-09-11 08:59:48','2019-09-11 08:59:47'),(38,'BONDS','2019-09-11 08:59:49','2019-09-11 08:59:50'),(39,'PLATE GLASS','2019-09-11 08:59:52','2019-09-11 08:59:51'),(40,'HEALTH CORPORATE','2019-09-11 08:59:53','2019-09-11 08:59:54'),(41,'COMMERCIAL LIFE','2019-09-11 08:59:56','2019-09-11 08:59:55'),(42,'CROP COVER','2019-09-11 08:59:57','2019-09-11 08:59:58'),(43,'LIVESTOCK COVER','2019-09-11 09:00:01','2019-09-11 09:00:41'),(44,'MICRO PROPERTY','2019-09-11 09:00:03','2019-09-11 09:00:42'),(45,'APOLLO BALANCED FUND','2019-09-11 09:00:04','2019-09-11 09:00:43'),(46,'APOLLO EQUITY FUND','2019-09-11 09:00:08','2019-09-11 09:00:44'),(47,'APOLLO MONEY MARKET FUND','2019-09-11 09:00:09','2019-09-11 09:00:45'),(50,'NULL','2019-09-11 15:58:14','2019-09-11 15:58:16'),(51,'ENHANCED PERSONAL ACCIDENT/FLEXPAX','2019-09-17 05:30:20','2019-09-17 05:30:23'),(52,'GROUP LIFE','2019-09-18 14:31:19','2019-09-18 14:31:22'),(53,'CONTACT US','2019-09-30 15:59:33','2019-09-30 15:59:36'),(54,'CREDIT LIFE','2019-10-29 20:17:10','2019-10-29 20:17:14'),(55,'GROUP LAST EXPENSE',NULL,NULL),(56,'GROUP DEPOSIT',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_categories`
--

DROP TABLE IF EXISTS `products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE,
  KEY `Reference Table` (`product_id`) USING BTREE,
  KEY `category_id` (`category_id`) USING BTREE,
  CONSTRAINT `products to categories relationships` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_categories`
--

LOCK TABLES `products_categories` WRITE;
/*!40000 ALTER TABLE `products_categories` DISABLE KEYS */;
INSERT INTO `products_categories` VALUES (6,'BUILDING',10,'2019-09-11 14:09:47','2019-09-11 14:09:50'),(7,'CONTENTS',10,'2019-09-11 14:46:27','2019-09-11 14:46:29'),(10,'ALL RISK',10,'2019-09-11 14:47:58','2019-09-11 14:48:01'),(11,'DOMESTIC',10,'2019-09-11 14:48:47','2019-09-11 14:48:49'),(12,'LIABILITY',10,'2019-09-11 14:49:11','2019-09-11 14:49:12'),(14,'NULL',50,'2019-09-11 15:57:40','2019-09-11 15:57:43');
/*!40000 ALTER TABLE `products_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_leads`
--

DROP TABLE IF EXISTS `products_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_leads` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `leads_product_id` int(11) DEFAULT NULL,
  `leads_product_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yom` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `more_info` longtext COLLATE utf8_unicode_ci,
  `property` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `covers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `population_staff` int(10) DEFAULT NULL,
  `max_take_off_weight` double(20,0) DEFAULT NULL,
  `geographical_scope` longtext COLLATE utf8_unicode_ci,
  `pilot_details` bigint(20) DEFAULT NULL,
  `period` float(255,2) DEFAULT NULL,
  `age` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inpatient` int(255) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `company` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `leads_product_id` (`leads_product_id`) USING BTREE,
  KEY `leads_product_category_id` (`leads_product_category_id`) USING BTREE,
  CONSTRAINT `products_leads_ibfk_1` FOREIGN KEY (`leads_product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `products_leads_ibfk_2` FOREIGN KEY (`leads_product_category_id`) REFERENCES `products_categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=692 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_leads`
--

LOCK TABLES `products_leads` WRITE;
/*!40000 ALTER TABLE `products_leads` DISABLE KEYS */;
INSERT INTO `products_leads` VALUES (215,14,14,'Peter Chege Kinuthia','peterchege442@gmail.com','0701075090','nairobi','1','','0','','','','Contents','','',0,0,0,'',0,0.00,'24 - 25',0,'','2019-11-12 16:51:03.000000','0',NULL,NULL),(216,14,14,'Daniel Mamui ','dmamui27@gmail.com','0729728042','Nairobi ','0','','0','','','','Domestic Employees','','',0,0,0,'',0,0.00,'30 - 34',0,'','2019-11-13 23:15:50.000000','0',NULL,NULL),(217,10,14,'Dorcus Akinyi','dorcasakinyi79@gmail.com','0715687499','Nairobi','','','10000','','','tenant','All Risk','','',0,0,0,'',0,0.00,'',0,'','2019-11-14 08:38:50.000000','0',NULL,NULL),(218,14,14,'Samantha','samanthajemimah@gmail.com','0704271571','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2019-11-14 11:57:02.000000','0',NULL,NULL),(220,14,14,'John Doe','johndoe@gmail.com','0712345678','Machakos','','','0','','','','','','',5,0,0,'',0,0.00,'18 - 23',5000000,'','2019-11-14 16:12:08.000000','0',NULL,NULL),(221,50,14,'John Doe','johndoe@gmail.com','0762345678','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-11-15 16:55:03.000000','0','2019-11-15','22:55:00'),(222,6,14,'John Doe','johndoe@gmail.com','0712345678','Machakos','honda','Royce','800000','2014','','','','','',0,0,0,'',0,0.00,'',0,'','2019-11-19 08:59:35.000000','0','1979-01-01','01:01:01'),(223,9,14,'John Doe','johndoe@gmail.com','0712345678','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-11-19 12:54:14.000000','0','1979-01-01','01:01:01'),(224,50,14,'Illa Kaveke','ikaveke@monarch.co.ke','0724365341','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-11-28 15:26:01.000000','0','2019-11-28','15:30:00'),(225,50,14,'Dennis Ogero Maranga','domaranga@gmail.com','0723846070','','','','0','','Hi,\r\n\r\nI used to work for Alpha Africa Asset Managers. I took a proportion of my benefits once I left their employ. I am in the process of consolidating any retirement benefits I have under my current pension plan with my current employer and as such I&#39;d like to request for a statement of my account (if there is any balance) and also the process for transferring any remaining benefits (if any) to my current pension plan.\r\n\r\nMy ID number is 25004362.\r\n\r\nRegards,\r\nDennis Maranga.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-11-29 11:24:12.000000','0','1979-01-01','01:01:01'),(226,14,14,'Pankaj kumar Agrawal','erpankaj200717@gmail.com','0771767823','Nakuru','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',1000000,'','2019-11-29 12:41:03.000000','0','1979-01-01','01:01:01'),(227,14,14,'Irene Mutio','mutionel74@gmail.com','0720600288','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hi..how much is one required to pay for the cover\r\nN/B:payment is done on individual basis and not paid via a company','2019-11-29 12:41:43.000000','0','1979-01-01','01:01:01'),(228,15,14,'REUBEN KYALO MUKULU','reubenkyalo31@gmail.com','0715044515','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I want a 1 month insurance cover','2019-11-29 15:25:18.000000','0','1979-01-01','01:01:01'),(229,51,14,'REUBEN KYALO MUKULU','reubenkyalo31@gmail.com','0715044515','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-11-29 15:33:15.000000','0','1979-01-01','01:01:01'),(230,51,14,'REUBEN KYALO MUKULU','reubenkyalo31@gmail.com','0715044515','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need a shortterm insurance how do i go about it','2019-11-29 15:38:33.000000','0','1979-01-01','01:01:01'),(231,14,14,'Eric Nganga','karau.en@gmail.com','0787200696','Thika','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',1000000,'','2019-11-29 16:25:27.000000','0','1979-01-01','01:01:01'),(232,15,14,'Ronald Luganji','rluganji@gmail.com','0727891751','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',2000000,'','2019-11-29 16:40:22.000000','0','1979-01-01','01:01:01'),(233,6,14,'fhjgjjkkg','olizen5050@gmail.com','0722669977','kisumu','toyota','opa','500000','2009','','','','','',0,0,0,'',0,0.00,'',0,'','2019-11-30 18:58:53.000000','0','1979-01-01','01:01:01'),(234,6,14,'GODLIZEN OWINO MISIANI','olizen5050@gmail.com','0722992166','KISUMU','TOYOTA','OPA','500000','2009','','','','','',0,0,0,'',0,0.00,'',0,'','2019-11-30 19:01:42.000000','0','1979-01-01','01:01:01'),(235,15,14,'Kipngetich Denis','dkipngetich507@gmail.com','0722106451','Mombasa','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hello APA,\r\nI was once using a corporate medical cover from you people.It was a nice one. Now, apart from my company cover which depletes the funds,tell me how much am i charged say monthly,or per annum? A family of 3, wife and a kid of say 5 years,though she is 4years and something months.\r\nWaiting,,,,,,,,,,,,,','2019-12-01 00:10:27.000000','0','1979-01-01','01:01:01'),(236,26,14,'Gabriel Onyango Chan','onyangochan@gmail.com','0726751601','Kisumu','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-01 03:35:05.000000','Jevenickshades','1979-01-01','01:01:01'),(237,12,14,'OLIVER JUMA MBAGAYA','mbagayaoliver@gmail.com','0708807064','KAJIADO','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-01 18:33:46.000000','0','1979-01-01','01:01:01'),(238,12,14,'OLIVER JUMA MBAGAYA','mbagayaoliver@gmail.com','0708807064','KAJIADO','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-01 18:34:55.000000','0','1979-01-01','01:01:01'),(239,38,14,'Joshua Sigunga','sigungajoshua@engineer.com','0700693397','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-01 19:09:36.000000','Wheel N Steel','1979-01-01','01:01:01'),(240,14,14,'Malkia Unda','malkiaunda@gmail.com','0710253886','Mombasa','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',500000,'','2019-12-02 04:23:25.000000','0','1979-01-01','01:01:01'),(241,15,14,'john','jmusila@gmail.com','0713275788','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'35 - 39',1000000,'','2019-12-02 09:03:14.000000','0','1979-01-01','01:01:01'),(242,15,14,'sheila Nyasimi','sheila.nyasimi@outlook.com','0712658383','nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',300000,'','2019-12-02 12:33:21.000000','0','1979-01-01','01:01:01'),(243,15,14,'Jevin Mulwa','mulwajevin@gmail.com','0742543536','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',1000000,'','2019-12-02 13:21:38.000000','0','1979-01-01','01:01:01'),(244,14,14,'Joy petrina Walker ','petrinawalker19@gmail.com','0727873474','Nairobi ','','','0','','','','','','',1,0,0,'',0,0.00,'18 - 23',500000,'','2019-12-02 20:44:49.000000','0','1979-01-01','01:01:01'),(245,6,14,'Antonio Joseph','josephantonio361@gmail.com','0707361372','Athi-River','Nissan','Teana','1300000','2018','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-03 08:24:52.000000','0','1979-01-01','01:01:01'),(246,20,14,'Joseph Antonio','josephantonio361@gmail.com','0707361372','Athiriver','','','1000000','','','','','','',0,0,0,'',0,5.00,'24 - 25',0,'','2019-12-03 08:30:52.000000','0','1979-01-01','01:01:01'),(247,50,14,'Spedag interfreight','anthony.mwangi@spedagintefreight.com','0722177360','','','','0','','Hello. Please return my call. Can&#39;t reach you on your official line ( +254 709 91277).\r\nI need some advise on best ENT facility in Mombasa.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-03 09:59:20.000000','0','1979-01-01','01:01:01'),(248,14,14,'Annsenia Mbaabu','anneshera@gmail.com','0701026375','Meru','','','0','','','','','','',2,0,0,'',0,0.00,'24 - 25',500000,'','2019-12-03 12:46:49.000000','0','1979-01-01','01:01:01'),(249,50,14,'Kanana Mugambi','jacklinek29@gmail.com','0723603901','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-03 14:17:29.000000','0','2019-12-03','14:16:00'),(250,6,14,'Nancy Wangu','wangumutitu@gmail.com','0731204078','Nairobi','Toyota','AURIS','800000','2013','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-03 14:37:35.000000','0','1979-01-01','01:01:01'),(251,15,14,'Kevin','wanekev@yahoo.com','0714987829','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',100000,'','2019-12-03 16:03:01.000000','0','1979-01-01','01:01:01'),(252,14,14,'angela naiyoma katangie','katangieable@yahoo.com','0722720069','NAIROBI ','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',10000000,'','2019-12-03 17:15:45.000000','0','1979-01-01','01:01:01'),(253,6,14,'Edwin Wafula Wekesa ','ewafulawekesa@yahoo.com','0716172240','Nairobi, ongata rongai  tuala area.','Toyota','Gaia ','400000','2009','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-03 20:58:10.000000','0','1979-01-01','01:01:01'),(254,6,14,'Edwin Wafula Wekesa ','ewafulawekesa@yahoo.com','0716172240','Rongai ','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'How much is it for, third party policy,?can it be delivered to me if I brought it online?','2019-12-03 21:02:13.000000','0','1979-01-01','01:01:01'),(255,40,14,'Joseph Ondieki Nyamweya','Joseph.Nyamweya@Fairmont.com','0711168410','Nanyuki','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I would kindly like to get in touch with a representative from your side one dealing with corporate medical Insurance Covers as soon as possible.','2019-12-04 10:51:42.000000','0','1979-01-01','01:01:01'),(256,15,14,'WYCLIFFE NYABADE','wycliffeguguni@gmail.com','0702986747','Kisumu','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Please share the list of hospitals in the country that accept your insurance.','2019-12-04 12:28:48.000000','0','1979-01-01','01:01:01'),(257,50,14,'JAne Towett','bogiehearts@yahoo.com','0720711972','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-04 15:17:36.000000','0','2019-12-04','16:00:00'),(258,15,14,'Ruth Alukhaba','WINNIEANDALA@GMAIL.COM','0714391493','Western,Kenya','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',500000,'','2019-12-04 22:18:15.000000','0','1979-01-01','01:01:01'),(259,14,14,'Ruth Alukhaba','WINNIEANDALA@GMAIL.COM','0714391493','Western,Kenya','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',500000,'','2019-12-04 22:23:58.000000','0','1979-01-01','01:01:01'),(260,14,14,'Amos Kimani','kimaniamos31@yahoo.com','0723366041','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',2000000,'','2019-12-05 09:19:24.000000','0','1979-01-01','01:01:01'),(261,15,14,'Dennis Wangari','dwangari3@gmail.com','0729956030','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2019-12-05 10:31:07.000000','0','1979-01-01','01:01:01'),(262,6,14,'John Doe','johndoe@gmail.com','0712345678','Machakos','Mercedez','S-CLASS','8000000','2011','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-05 12:20:57.000000','0','1979-01-01','01:01:01'),(263,14,14,'Antony Magondu','tony@seabourne.co.ke','0720200806','Nairobi','','','0','','','','','','',3,0,0,'',0,0.00,'30 - 34',5000000,'','2019-12-05 15:25:03.000000','0','1979-01-01','01:01:01'),(264,54,14,'David Mwiti','dmwiti@me.com','+254736050226','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'','2019-12-05 17:24:27.000000','Airtel Africa','1979-01-01','01:01:01'),(265,14,14,'Bilgram Kwendo','bilgramkwendo@gmail.com','0732691034','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2019-12-05 19:19:25.000000','0','1979-01-01','01:01:01'),(266,6,14,'Mumina Guyo Shibia','muminashibia@gmail.com','0722284303','Nairobi','Toyota','Probox','600000','2011','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-06 10:27:09.000000','0','1979-01-01','01:01:01'),(267,6,14,'Mumina Guyo Shibia','muminashibia@gmail.com','0722284303','Nairobi','Toyota','Probox','650000','2011','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-06 11:12:14.000000','0','1979-01-01','01:01:01'),(268,25,14,'eric nzioki nzioki','nahashoneric@gmail.com','0718764383','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-06 11:27:26.000000','0','1979-01-01','01:01:01'),(269,21,14,'Nelly Wambia','nellywambia@yahoo.com','0712874355','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'65 - 69',0,'','2019-12-06 14:21:55.000000','0','1979-01-01','01:01:01'),(270,19,14,'Michael Gichohi','michael.warui2012@gmail.com','0722353509','nairobi','','','500000','','','','','','',0,0,0,'',0,6.00,'24 - 25',0,'','2019-12-06 14:57:17.000000','0','1979-01-01','01:01:01'),(271,14,14,'Michelle Kuria','mwkuria@gmail.com','0716755986','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',2000000,'','2019-12-06 15:29:54.000000','0','1979-01-01','01:01:01'),(272,6,14,'Jacquelyne Sawo','jacquesawo@gmail.com','0712148198','Nairobi','BMW','116 I','1250000','2011','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-07 09:10:25.000000','0','1979-01-01','01:01:01'),(273,14,14,'fredrick kipruto amulavu','amulavu@yahoo.ca','0724840797','nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'40 - 44',500000,'','2019-12-07 21:02:42.000000','0','1979-01-01','01:01:01'),(274,15,14,'Bernard Wasike','bncwasike@gmail.com','0720342580','Nakuru','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',750000,'','2019-12-08 12:51:22.000000','0','1979-01-01','01:01:01'),(275,6,14,'Jackson mbuthia','jacksonmaigua1@gmail.com','0713243323','Embu','TOYOTA','Corolla','1600000','2013','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-09 10:23:57.000000','0','1979-01-01','01:01:01'),(276,50,14,'Martin','kinuthia.ikinu@gmail.com','731114532','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-09 11:10:55.000000','0','2019-12-09','11:10:00'),(277,14,14,'Hajara gift atta','hajaraatta@gmail.com','0703811837','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'20 - 24',500000,'','2019-12-09 11:21:36.000000','0','1979-01-01','01:01:01'),(278,14,14,'Polycarp oley odanga','odanga95@gmail.com','0725438202','Kakamega','','','0','','','','','','',3,0,0,'',0,0.00,'35 - 39',1000000,'','2019-12-09 14:19:38.000000','0','1979-01-01','01:01:01'),(279,50,14,'Robert Daniel Odula Ochieng&#39; ','robodula@gmail.com','0722945216','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-09 15:22:01.000000','0','2019-12-10','11:00:00'),(280,20,14,'John Doe','johndoe@gmail.com','0712345678','Machakos','','','3000000','','','','','','',0,0,0,'',0,5.00,'35 - 39',0,'','2019-12-09 16:45:02.000000','0','1979-01-01','01:01:01'),(281,12,14,'Abdirizak guyo','kombajattani@mail.com','0726727364','Moyale','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-09 22:47:01.000000','0','1979-01-01','01:01:01'),(282,50,14,'Felista Njuguna','rabunya@yahoo.com','072339126','','','','0','','Good morning.  I am writing to express disappointment because of  the service  I have been given. I had an accident which I reported to your office on 11th November, 2019.  I was given a choice of two garages and I took my car KCF 601V to autofit garage in Westlands on 12th November, 2019. An assessor was sent after one week on 18th November, 2019.  It took a whole week to authorize repairs which was done on 26th November, 2019. The autofit garage have not finished the repairs. I have called and gone there but to no avail. What should I do. A month later, I dont have my car. you can imagine my frustration. I do not have an agent to follow up because the agent I was given by APA - Brian Mulama told me he has relocated. what is next??','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-10 00:13:24.000000','0','1979-01-01','01:01:01'),(283,21,14,'Henry Murimi','henry.murimi@gmail.com','0728601750','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'35 - 39',0,'','2019-12-10 11:07:21.000000','0','1979-01-01','01:01:01'),(284,14,14,'Jay Ooko','jan.ooko@yahoo.com','0720930894','Nairobi','','','0','','','','','','',3,0,0,'',0,0.00,'40 - 44',2000000,'','2019-12-10 12:23:06.000000','0','1979-01-01','01:01:01'),(285,20,14,'Peter wambui','peterichugu@gmail.com','0742144004','Naivasha','','','5000000','','','','','','',0,0,0,'',0,20.00,'24 - 25',0,'','2019-12-10 13:21:03.000000','0','1979-01-01','01:01:01'),(286,14,14,'Brian mangala simiyu','brianmangala@gmail.com','0729450732','KisumU','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Need a health cover that is cheap,affordable and effective for me and my young family.how much would i spent to get this?','2019-12-10 13:39:13.000000','0','1979-01-01','01:01:01'),(287,14,14,'Maureen nganga','maureen2john@gmail.com','0711977226','Nairobi ','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',1000000,'','2019-12-10 13:48:44.000000','0','1979-01-01','01:01:01'),(288,6,14,'Douglas Macharia Mwangi','dankabui@gmail.com','0725683643','nairobi','Nissan','Wingroad','500000','2005','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-10 16:42:51.000000','0','1979-01-01','01:01:01'),(289,50,14,'Douglas Macharia Mwangi','dankabui@gmail.com','0725686643','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-10 16:45:30.000000','0','2019-12-11','10:30:00'),(290,50,14,'Moses ','sesnjuguna@yahoo.com','0723871127','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-10 16:55:00.000000','0','2019-12-10','16:54:00'),(291,14,14,'Kendi Micheni ','kendi.micheni@gmail.com','0790062904','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',5000000,'','2019-12-10 18:26:52.000000','0','1979-01-01','01:01:01'),(292,14,14,'Vishant Modasia','vish.modasia@gmail.com','0736995885','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',10000000,'','2019-12-10 18:40:14.000000','0','1979-01-01','01:01:01'),(293,50,14,'Mercy Nyokabi Kareithi','mercykareithi@gmail.com','0797360270','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-11 13:24:18.000000','0','2019-12-11','13:24:00'),(294,50,14,'Francis','mwangimugoto@gmail.com','0722268853','','','','0','','Extremely poor customer service. You sincerely need to improve. I had a minor accident that required fixing of the headlamp as recommended by your assessor. However, it has taken unnecessarily long leading to serious inconveniences. I register my dissatisfaction the way I&#39;m being tossed by your staff and Meads Garage. My deepest regrets for having taken cover with the company. I will raise the issue with ICPAK where the rates were negotiated. ','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-11 16:45:58.000000','0','1979-01-01','01:01:01'),(295,14,14,'Caroline muendo','carolmuendo45@gmail.com','0729362658','Nairobi','','','0','','','','','','',-2,0,0,'',0,0.00,'24 - 25',500000,'','2019-12-11 18:12:25.000000','0','1979-01-01','01:01:01'),(296,15,14,'HEZEKIAH GACHAU MAINA','gachaumaina@gmail.com','0723121729','Kiambu','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',500000,'','2019-12-11 18:39:26.000000','0','1979-01-01','01:01:01'),(297,50,14,'John Doe','johndoe@gmail.com','0712345678','','','','0','','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-11 18:58:07.000000','0','1979-01-01','01:01:01'),(298,14,14,'Lynnet Ooko','lynettooko@gmail.com','0712184081','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',1000000,'','2019-12-12 07:15:21.000000','0','1979-01-01','01:01:01'),(299,40,14,'Clinton Gaious','cgaious@gmail.com','0713837546','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Need a full details in regards to corporate health cover of an institution for example a school with 110 members covered for a whole year charges and benefit.','2019-12-12 13:31:35.000000','0','1979-01-01','01:01:01'),(300,12,14,'Dominic Masese Momanyi','momanyidominicmasese4@gmail.com','0705647983','Kisumu','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-12 15:55:19.000000','0','1979-01-01','01:01:01'),(301,14,14,'H Singh  ','kalsiharb@gmail.com','0722511500','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need details and prices for your health covers.','2019-12-12 22:11:55.000000','0','1979-01-01','01:01:01'),(302,6,14,'GEOFREY NYAMWAKA MERABA','bingeff@gmail.com','0727656294','NAIROBI','TOYOTA','IST','600000','2005','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-12 22:14:29.000000','0','1979-01-01','01:01:01'),(303,14,14,'Stanley  Kipchirchir Bungei ','stanleybungei2014@gmail.com','0724293546','Eldoret','','','0','','','','','','',3,0,0,'',0,0.00,'40 - 44',1000000,'','2019-12-13 03:06:02.000000','0','1979-01-01','01:01:01'),(304,50,14,' ','seo@schevchenko-alexey.com.ua','0664883263','','','','0','',', Seo   6+      Seo.  . +380660012209 Viber,Telegram','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-13 08:38:53.000000','0','1979-01-01','01:01:01'),(305,14,14,'Charles Ogada','charles.ogada@gmail.com','0721963011','Siaya','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Which are the medical facilities can I get services in and around Siaya.','2019-12-13 09:10:05.000000','0','1979-01-01','01:01:01'),(306,26,14,'peter','karimimorris@gmail.com','771639765','nai','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-13 11:53:05.000000','NAIROBI','1979-01-01','01:01:01'),(307,15,14,'Bosco Kavosi','bosmuthengi@gmail.com','0719395858','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',750000,'','2019-12-13 13:09:29.000000','0','1979-01-01','01:01:01'),(308,6,14,'STEPHEN TANUI','stanuik@gmail.com','0725395061','busia','boxer','bajaj','50000','2019','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-13 15:01:18.000000','0','1979-01-01','01:01:01'),(309,14,14,'Jackie Sawe','jackie.sawe@gmail.com','0723752732','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',1000000,'','2019-12-13 18:18:58.000000','0','1979-01-01','01:01:01'),(310,33,14,'JULLIET MAINA','julietmaina@yahoo.com','0723595054','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-13 19:31:09.000000','NGO','1979-01-01','01:01:01'),(311,14,14,'yvonne ngao','ngaoyvonne@gmail.com','0723768250','nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',500000,'','2019-12-14 12:24:34.000000','0','1979-01-01','01:01:01'),(312,14,14,'yvonne ngao','ngaoyvonne@gmail.com','0723768250','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'','2019-12-14 12:45:13.000000','0','1979-01-01','01:01:01'),(313,45,14,'Frank Serpico','yourwebsiteasked@gmail.com','+254778919123','Kampala','','','0','','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-14 13:12:02.000000','0','1979-01-01','01:01:01'),(314,9,14,'Moses Guku','mguku@yahoo.com','0731314200','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-14 13:35:24.000000','0','1979-01-01','01:01:01'),(315,50,14,'Vijay N Gandhi','vijay_n_gandhi@yahoo.com','737777784','','','','0','','Dear Sir/Madam,\r\nI have APA insurance through SNVM (membership #: 0204/B328/01). I need a medical procedure done and require the pre authorization form. Please could you email it to me. \r\n\r\nPlease let me know if I need to send any information.\r\n\r\nThank you.\r\n\r\nRegards\r\nVijay Gandhi','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-14 19:50:12.000000','0','1979-01-01','01:01:01'),(316,6,14,'Martin','wachiramartin12@gmail.com','0725871310','Nairobi','Honda','Insight','800000','2011','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-15 12:24:15.000000','0','1979-01-01','01:01:01'),(317,50,14,'James kamau ','kimanijim@gmail.com','0717407261','','','','0','','Hi.my name is James kamaui have a car that is unsured by you KCN 377Z though the process  was done via my financing bank NIC i would  like to renew it since its expiring  soon  how much is it for 6 months and for 12 months','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-15 18:19:29.000000','0','1979-01-01','01:01:01'),(318,6,14,'joan nduku mutua','joanmutua89@gmail.com','0712852709','nairobi','mazda','demio','700000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-16 08:30:03.000000','0','1979-01-01','01:01:01'),(319,14,14,'Shellmith Gichuki','shelcera20@gmail.com','0713988364','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Helo,i already have the Jamii plus membership cover with you.Kindly provide me with the list of accredited hospitals and specialists i can visit under your cover. Also a dermatologist . ','2019-12-16 11:04:21.000000','0','1979-01-01','01:01:01'),(320,7,14,'Paul Mwitugi Macharia','paulmwitugi@gmail.com','0714379346','Naivasha','TOPRICH','TF175-11A','110000','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-16 11:16:04.000000','0','1979-01-01','01:01:01'),(321,6,14,'Marja van Doorn ','marjavandoorn37@gmail.com','0701379760','Nairobi','Toyota ','Rav4','550000','1999','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-16 12:10:43.000000','0','1979-01-01','01:01:01'),(322,15,14,'Brian Musili','bmusili@yahoo.com','0727755465','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',500000,'','2019-12-16 15:04:03.000000','0','1979-01-01','01:01:01'),(323,14,14,'Valarie Odera','valarieodera@gmail.com','0720709432','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'35 - 39',2000000,'','2019-12-16 16:19:15.000000','0','1979-01-01','01:01:01'),(324,15,14,'Michael Ngari','ngarimmoja@gmail.com','0737495698','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I want health insurance. M+0','2019-12-16 16:23:25.000000','0','1979-01-01','01:01:01'),(325,26,14,'Haraldur Hubertsson','hubertssonharaldur@gmail.com','0768557331','Lucky Summer','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'We are looking for a comprehensive PSV car insurance for our Nissan Note, 2013, 1190 CC. An insurance that covers damage on the vehicle and passengers. What is the price, what information&#39;s are required?','2019-12-16 18:17:30.000000','0','1979-01-01','01:01:01'),(326,30,14,'Vincent Muhando','emvih@yahoo.com','0702894285','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-16 19:18:10.000000','Skytech Solutions','1979-01-01','01:01:01'),(327,12,14,'Samwel Fedha','fedhasam@hotmail.com','0722671308','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Can someone get in touch with me regarding the available health cover for individual and family?','2019-12-16 19:31:26.000000','0','1979-01-01','01:01:01'),(328,45,14,'Lorin mwiti','lorenmwiti@gmail.con','0706055115','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'How does this type of an investment work and the interest that you give out','2019-12-16 19:46:21.000000','0','1979-01-01','01:01:01'),(329,14,14,'KELVIN IDAMBO','idambokelvin@gmail.com','0720900416','Nairobi ','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',1000000,'','2019-12-16 22:41:53.000000','0','1979-01-01','01:01:01'),(330,14,14,'Jonathan Nganga','ajnganga@gmail.com','0720831671','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',5000000,'','2019-12-17 08:34:50.000000','0','1979-01-01','01:01:01'),(331,50,14,'Yuly G','ygros1@gmail.com','0716503455','','','','0','','Travel insurance ','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-17 11:22:32.000000','0','1979-01-01','01:01:01'),(332,14,14,'HELLEN NYABOKE NYASANI','nyabokelyn@gmail.com','0707362808','Meru','','','0','','','','','','',1,0,0,'',0,0.00,'35 - 39',500000,'','2019-12-17 12:47:23.000000','0','1979-01-01','01:01:01'),(333,50,14,'lydia kamau','kamaumukami@gmail.com','0721710721','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-17 13:37:28.000000','0','2019-12-17','13:37:00'),(334,12,14,'Fred','odegifred@gmail.com','0723159932','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-17 13:58:17.000000','0','1979-01-01','01:01:01'),(335,14,14,'John Doe','john@apa.com','0722123456','Mombasa','','','0','','','','','','',0,0,0,'',0,0.00,'70 - 75',1000000,'','2019-12-17 14:14:57.000000','0','1979-01-01','01:01:01'),(336,50,14,'Jean d&#39;Amour Maniriho Nshuti','jmanirihonshuti@ymail.com','+32466426922','','','','0','','Dear Sir/Madam,\r\n\r\nMy name is Jean d&#39;Amour, a master student of European Microfinance at the Universit Libre de Bruxelles, Belgium.\r\n\r\nI am asking you if there is a possibility of getting an internship at APA because this will enable me to conduct my master thesis under the following topic:  \r\n\r\nAs per the attached letter, in the program framework, all students must conduct an internship of 3 months.\r\n\r\n&#34;Providing Agricultural Insurance Through Microfinance Networks in Rural Areas in Kenya. Case study of APA&#34;. \r\n\r\nWhile waiting for your positive response, I thank you.\r\n\r\nJean d&#39;Amour\r\nEuropean Master of Microfinance\r\nUniversit Libre de Bruxelles\r\n+32466426922\r\n\r\n','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-17 17:08:54.000000','0','1979-01-01','01:01:01'),(337,6,14,'Mirriam Mutungi','mumbuamirriam@gmail.com','0703697795','Mombasa','Nissan','Note','650000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-17 21:34:54.000000','0','1979-01-01','01:01:01'),(338,14,14,'Laban','labanjacobs@gmail.com','0723697584','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',1000000,'','2019-12-17 21:51:17.000000','0','1979-01-01','01:01:01'),(339,22,14,'Furaha Wanjiru ','furaha.mutegeki@gmail.com','0716540352','Moshi','','','500000','','','','','','',0,0,0,'',0,5.00,'Above 70',0,'','2019-12-18 05:39:02.000000','0','1979-01-01','01:01:01'),(340,20,14,'hellen makokha','hellenmkasia@gmail.com','0729302643','Nairobi','','','1000000','','','','','','',0,0,0,'',0,5.00,'24 - 25',0,'','2019-12-18 07:52:34.000000','0','1979-01-01','01:01:01'),(341,14,14,'Patriciah Wangari','kandechu@gmail.com','0725346557','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',2000000,'','2019-12-18 12:24:43.000000','0','1979-01-01','01:01:01'),(342,50,14,'Stuwe Were','stuwewere@gmail.com','0705972227','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-18 15:02:19.000000','0','2019-12-18','15:22:00'),(343,14,14,'kenneth muguna','kennethmuguna@gmail.com','0703177214','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Medical Cover quote with premiums','2019-12-18 20:45:17.000000','0','1979-01-01','01:01:01'),(344,14,14,'Mulky Salat ','mulkynuh@gmail.com','0722861769','Nairobi ','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',500000,'','2019-12-18 23:15:29.000000','0','1979-01-01','01:01:01'),(345,14,14,'Yonis','yonismc@gmail.com','0713462176','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',2000000,'','2019-12-18 23:16:51.000000','0','1979-01-01','01:01:01'),(346,50,14,'Jewell Ngayu','jngayu@identigate.co.ke','254706588565','','','','0','','Greetings,\r\n\r\nI am looking for a quote for a WIBA policy for 2 employees who are technical support field officers at Identigate Integrated  Solutions. We provide visitor management software. Please supply different options (low medium and high tier) across a salary range of 25,000ksh to 60,000 ksh.\r\n\r\nRegards.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-19 09:35:15.000000','0','1979-01-01','01:01:01'),(347,14,14,'miriam Wangeci Mureithi','keshmiriam@gmail.com','0726516133','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',500000,'','2019-12-19 11:03:55.000000','0','1979-01-01','01:01:01'),(348,14,14,'Gladys odhiambo','Gpayne@kenton.ac.ke','0718612534','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'40 - 44',1000000,'','2019-12-19 11:33:20.000000','0','1979-01-01','01:01:01'),(349,6,14,'Saagar Khimasia','saagar.khimasia@apollo.co.ke','0735641615','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hello','2019-12-19 12:36:18.000000','0','1979-01-01','01:01:01'),(350,14,14,'Brian Kiama','bj.kiama@gmail.com','0721301586','eldoret','','','0','','','','','','',2,0,0,'',0,0.00,'24 - 25',500000,'','2019-12-19 13:11:48.000000','0','1979-01-01','01:01:01'),(351,50,14,'Gordon','gura1ganira2@gmail.com','0717190907','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2019-12-19 20:39:57.000000','0','2019-12-19','20:39:00'),(352,14,14,'Harleen Tathi','hthati@gmail.com','0721836867','nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'35 - 39',10000000,'','2019-12-20 08:19:28.000000','0','1979-01-01','01:01:01'),(353,6,14,'Acentrus Abongo','mzala286@gmail.com','0725814113','Nairobi','Toyota','Hilux','1500000','2006','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-20 09:37:46.000000','0','1979-01-01','01:01:01'),(354,6,14,'Jairo Fredrick songa ','fredricksonga@gmail.com','0722940641','Kakamega ','Nissan ','Nissan Nevara pickup ','1200000','2004','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-20 11:41:41.000000','0','1979-01-01','01:01:01'),(355,22,14,'Evans Mwakera','evans.mwakera@gmail.com','0728419687','MALINDI','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need finer details on this last expense cover','2019-12-20 21:38:57.000000','0','1979-01-01','01:01:01'),(356,14,14,'Makena Lydiah','lydiamakena254@gmail.com','0714335279','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',1000000,'','2019-12-21 09:26:41.000000','0','1979-01-01','01:01:01'),(357,15,14,'STELLA','mackenastella@gmail.com','0715617895','NAIROBI','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2019-12-21 10:50:41.000000','0','1979-01-01','01:01:01'),(358,6,14,'Stephen Okello','okumu.sokello@gmail.com','0702517507','Nairobi','Nissan','March','300000','2003','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-21 11:34:05.000000','0','1979-01-01','01:01:01'),(359,14,14,'Emily Towett ','emilykoech25@yahoo.com','0724951726','Kericho ','','','0','','','','','','',0,0,0,'',0,0.00,'45 - 49',500000,'','2019-12-21 13:15:23.000000','0','1979-01-01','01:01:01'),(360,15,14,'Jonathan  Orenge','jmagangi@gmail.com','0706816736','Nairobi','','','0','','','','','','',3,0,0,'',0,0.00,'35 - 39',500000,'','2019-12-21 15:15:35.000000','0','1979-01-01','01:01:01'),(361,24,14,'Roy Ayonga','roymuturi@yahoo.com','0703610581','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'35 - 39',0,'','2019-12-21 16:11:08.000000','0','1979-01-01','01:01:01'),(362,6,14,'SAERYB ','MNUTHU@YAHOO.COM','+254711766494','NAKURU','TOYOTA','CROWN','1800000','2015','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-22 09:03:21.000000','0','1979-01-01','01:01:01'),(363,14,14,'Laurine Makhungu','imisalaurine69@gmail.com','0721937485','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Happy holidays to you.how do I check my balance or package when am registered with you?','2019-12-22 10:03:23.000000','0','1979-01-01','01:01:01'),(364,14,14,'Park Seoyeon ','seo98754@gmail.com','0708725233','Kilimani','','','0','','','','','','',0,0,0,'',0,0.00,'50 - 54',10000000,'','2019-12-22 13:40:02.000000','0','1979-01-01','01:01:01'),(365,12,14,'Simon Muchoki','muchokisimon30@gmail.com','0701137446','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'How much do you charge for a personal accident insurance cover for a period of 6 months internship?','2019-12-22 16:40:39.000000','0','1979-01-01','01:01:01'),(366,14,14,'Victoria nyambare osindi','victoriaosindi289@gmail.com','0718526386','Thika','','','0','','','','','','',0,0,0,'',0,0.00,'20 - 24',2000000,'','2019-12-23 12:11:35.000000','0','1979-01-01','01:01:01'),(367,6,14,'Geraldine Njomo','geralnjomo@gmail.com','0721939956','NAIROBI','NISSAN','SERENA','800000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-23 12:19:07.000000','0','1979-01-01','01:01:01'),(368,6,14,'Geraldine Njomo','geralnjomo@gmail.com','0721939956','NAIROBI','NISSAN','SERENA','900000','2010','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-23 12:26:37.000000','0','1979-01-01','01:01:01'),(369,15,14,'ateeq khan','ateeq101@gmail.com','0731102097','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Good day i wanted to apply for maternity cover for my spouse, we are currently both on the jamii plus cover i think (my membership n.o is 1439957-01). i spoke to one of your reps and he told me that the waiting period for maternity is 10 months from the point of payment. so please send me an email with all the things your maternity covers, your specific premiums for each package and what exactly needs to be written on the cheque  . thank you','2019-12-23 13:26:23.000000','0','1979-01-01','01:01:01'),(370,6,14,'Mary','mariamwaura@gmail.com','0722824668','Nairobi ','Toyota ','Harrier ','1070000','2006','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-23 14:29:06.000000','0','1979-01-01','01:01:01'),(371,14,14,'Laura Shiare','Ishiare@yahoo.com','0711667219','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'40 - 44',500000,'','2019-12-23 14:59:44.000000','0','1979-01-01','01:01:01'),(372,11,14,'John McDoe','john.doe@gmail.com','0707122133','Nairobi','','','30000','','','','','','Dog',1,0,0,'',0,0.00,'',0,'','2019-12-24 09:38:41.000000','0','1979-01-01','01:01:01'),(373,45,14,'Charles Kyalo','kyaloch@gmail.com','0705803297','MACHAKOS','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'How much will I get if I invest Kes100,000?','2019-12-24 11:41:43.000000','0','1979-01-01','01:01:01'),(374,35,14,'Richard Bell','richard@bell.co.ke','0727617186','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need a quote to insure my GA plane:\r\nHull Value US$ 75,000\r\nPilot Experience 850 hours (700 on type\r\nAircraft Cessna 182\r\nYear 1974\r\nRegistration 5Y ASK\r\nPrivate Use\r\n','2019-12-24 12:55:54.000000','0','1979-01-01','01:01:01'),(375,23,14,'Joachim Njagi Wandaka','joachim.njagi@gmail.com','0724725457','Nairobi','','','100000000','','','','','','',0,0,0,'',0,20.00,'30 - 34',0,'','2019-12-24 14:42:10.000000','0','1979-01-01','01:01:01'),(376,12,14,'Peris Wanjiru Wangechi','periskarige@gmail.com','0721349690','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-24 15:49:22.000000','0','1979-01-01','01:01:01'),(377,15,14,'BENARD OMONDI ONYANGO','benoonyango@gmail.com','0724481087','Kisumu','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',500000,'','2019-12-24 16:24:58.000000','0','1979-01-01','01:01:01'),(378,6,14,'NGETICH KIPLANGAT PASCAL','Kiplangatpascal@gmail.com','0723017470','KAPENGURIA ','TOYOTA','AXIO','800000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-25 13:00:01.000000','0','1979-01-01','01:01:01'),(379,20,14,'churchill','churchilloele254@gmail.com','0731587030','nairobi','','','3000000','','','','','','',0,0,0,'',0,10.00,'24 - 25',0,'','2019-12-25 17:59:32.000000','0','1979-01-01','01:01:01'),(380,14,14,'Joseph Munyiri','Munyeri2007@gmail.com','0713799172','Nakuru ','','','0','','','','','','',1,0,0,'',0,0.00,'45 - 49',1000000,'','2019-12-25 18:59:10.000000','0','1979-01-01','01:01:01'),(381,15,14,'Mercy Ronoh','mercy.ronoh@yahoo.com','0710657807','nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',300000,'','2019-12-26 07:15:54.000000','0','1979-01-01','01:01:01'),(382,6,14,'Masinde Dennis','masindedenniss@gmail.com','0702073800','Nairobi ','Toyota ','Fielder ','580000','2007','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-26 10:22:12.000000','0','1979-01-01','01:01:01'),(383,20,14,'Denis Okwalo','okwalo@yahoo.com','0723137274','Nairobi','','','500009','','','','','','',0,0,0,'',0,6.00,'30 - 34',0,'','2019-12-26 17:56:20.000000','0','1979-01-01','01:01:01'),(384,14,14,'FRANCIS LEPOLO MATANTA','matanta@yahoo.com','0712027980','KItengela ','','','0','','','','','','',0,0,0,'',0,0.00,'45 - 49',2000000,'','2019-12-26 18:58:45.000000','0','1979-01-01','01:01:01'),(385,14,14,'James nga&#39;ang&#39;a mburu','ngangajames674@gmail.com','0707642132','Kirinyaga','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'','2019-12-26 20:20:18.000000','0','1979-01-01','01:01:01'),(386,50,14,'Sylvester Nyakundi Ogachi','Sylvesterogachi124@gmail.com','0725231546','','','','0','','I&#39;w like to stop my premium package of education due unable to meet other needs.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-26 23:23:15.000000','0','1979-01-01','01:01:01'),(387,14,14,'Mercy Nampoi','nampoimercy5@gmail.com','0704464334','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2019-12-27 08:49:37.000000','0','1979-01-01','01:01:01'),(388,15,14,'Eve','eshuma@gmail.com','0732400829','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'45 - 49',1000000,'','2019-12-27 11:47:06.000000','0','1979-01-01','01:01:01'),(389,6,14,'Peter K Ngeny','pkngeny@gmail.com','0724553006','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I am in need of a comprehensive insurance cover for my car. Give me more details about your product. Find me at The Nairobi Hospital. I need it before 31st December. Do you also do valuation ofthe car?','2019-12-28 10:25:14.000000','0','1979-01-01','01:01:01'),(390,6,14,'Raymond wanyoike','info@moranik9.com','0721590470','Nakuru','Toyota','Probox','700000','2012','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-28 10:45:38.000000','0','1979-01-01','01:01:01'),(391,14,14,'Mubarak Andangu Elkindy','melkindy@gmail.com','0721390387','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',2000000,'','2019-12-28 10:45:48.000000','0','1979-01-01','01:01:01'),(392,50,14,'BROLL KENYA LIMITED ','alfredalfy100@gmail.com','0728788313','','','','0','','Kindly update this card number 1323/A10023/02 for outpatient services \r\nMember Name is Mishel Luvandwa','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-28 11:15:37.000000','0','1979-01-01','01:01:01'),(393,15,14,'john dee','veekamami@gmail.com','0712345678','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'55 - 59',2000000,'','2019-12-29 00:55:27.000000','0','1979-01-01','01:01:01'),(394,14,14,'Kennedy Mutia','kennedy.mutia@gmail.com','0703939611','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'35 - 39',500000,'','2019-12-29 12:39:59.000000','0','1979-01-01','01:01:01'),(395,26,14,'ameer','amrhussein_88@yahoo.com','0723147040','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'hi do you sale salvage cars ','2019-12-29 13:32:39.000000','0','1979-01-01','01:01:01'),(396,12,14,'Adam ','vistal12@aol.com','0701719206','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2019-12-29 15:54:55.000000','0','1979-01-01','01:01:01'),(397,14,14,'GEOFFREY KAMANDA','geoffreybasweti@yahoo.com','0719123558','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'24 - 25',5000000,'','2019-12-30 10:43:38.000000','0','1979-01-01','01:01:01'),(398,14,14,'GEOFFREY KAMANDA','geoffreybasweti@yahoo.com','0719123558','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',5000000,'','2019-12-30 10:49:47.000000','0','1979-01-01','01:01:01'),(399,14,14,'GEOFFREY KAMANDA','geoffreybasweti@yahoo.com','0719123558','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Please get all medical cover premiums so that i choose one for family cover\r\n','2019-12-30 10:53:56.000000','0','1979-01-01','01:01:01'),(400,15,14,'Ian Rotich','ianrotich@gmail.com','0721834273','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',1000000,'','2019-12-30 11:10:52.000000','0','1979-01-01','01:01:01'),(401,15,14,'Ian Rotich','ianrotich@gmail.com','0721834273','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I am interested in purcahsing an individual medical cover for my family.Kindly get intouch so that we can discuss further on it.\r\n\r\nMany Thanks','2019-12-30 11:12:05.000000','0','1979-01-01','01:01:01'),(402,6,14,'Joel Muinde','joelmuinde@yahoo.com','0724505876','Nairobi','Mazda','Atenza','1160000','2011','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-30 13:36:02.000000','0','1979-01-01','01:01:01'),(403,15,14,'Charity Chepkemei','charity.chepkemei1@gmail.com','+254705481312','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2019-12-30 14:49:42.000000','0','1979-01-01','01:01:01'),(404,14,14,'Catherine Wabwire','cwabwire@yahoo.co.uk','0722754591','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'70 - 75',5000000,'','2019-12-30 17:57:10.000000','0','1979-01-01','01:01:01'),(405,20,14,'Richard Mwendia','RichardMwendia2015@gmail.com','0726787058','Thika','','','3000000','','','','','','',0,0,0,'',0,20.00,'35 - 39',0,'','2019-12-31 07:37:16.000000','0','1979-01-01','01:01:01'),(406,24,14,'Samira Nekesa Matofu','nekesa.s.m@gmail.com','0715952694','Loitokitok','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',0,'','2019-12-31 11:20:11.000000','0','1979-01-01','01:01:01'),(407,50,14,'Ignatius Kahiu ','igkahiu@gmail.com','0711385078','','','','0','','I wish to renew the cover for Subaru KBT 800E and  pay with 4 installments ','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-31 12:46:23.000000','0','1979-01-01','01:01:01'),(408,15,14,'catherine','catemwangi12@gmail.com','0713403037','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',100000,'','2019-12-31 12:59:03.000000','0','1979-01-01','01:01:01'),(409,6,14,'simon gitahi','gitsigi@gmail.com','0726363618','Kitui','Mercedes Benz','C class','2400000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2019-12-31 13:52:18.000000','0','1979-01-01','01:01:01'),(410,15,14,'Wambui Rika','wambuimachariac@gmail.com','0722766781','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'40 - 44',750000,'','2019-12-31 18:30:35.000000','0','1979-01-01','01:01:01'),(411,22,14,'PETER MAYALA','peterwmatala@gmail.com','0722568388','BUNGOMA','','','500000','','','','','','',0,0,0,'',0,10.00,'Above 70',0,'','2019-12-31 22:19:21.000000','0','1979-01-01','01:01:01'),(412,14,14,'Immaculate Nthiwa','immahnduku@gmail.com','0720643996','Kisumu ','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',500000,'','2019-12-31 22:22:46.000000','0','1979-01-01','01:01:01'),(413,14,14,'Alice Njagi','alicenjagi82@gmail.com','0720833873','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'35 - 39',1000000,'','2019-12-31 23:18:54.000000','0','1979-01-01','01:01:01'),(414,50,14,'Sitati Blaged Liveha','sitatiblagden@gmail.com','0710845005','','','','0','','Hi,  am Sitati Blagden. Am an undergraduate student at Maseno university taking a degree in actuarial science with IT.  I kind request for a chance in your company to do my attachment from 1st may 2020 to 31st july 2020. Kindly consider me, ','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-01 11:29:41.000000','0','1979-01-01','01:01:01'),(415,14,14,'Audrey Eddah ','audrey1998.ao@gmail.com','0799039995','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I would like to know what hospitals accept the APA health insurance cover.','2020-01-01 16:53:12.000000','0','1979-01-01','01:01:01'),(416,15,14,'Jack Mutange','derrickmutange01@gmail.com','0733913948','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'50 - 54',100000,'','2020-01-01 22:13:07.000000','0','1979-01-01','01:01:01'),(417,12,14,'STEPHEN BARASA FWAMBA','stepfwamba1@gmail.com','0703846084','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-02 09:43:01.000000','0','1979-01-01','01:01:01'),(418,6,14,'Anne','anneg@gmail.com','0726355269','Nairobi','Mazda','Demio','460000','2008','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-02 11:58:06.000000','0','1979-01-01','01:01:01'),(419,14,14,'Emmanuel Nyankabaria','emmanuel.nyankabaria@gmail.com','0727242330','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',5000000,'','2020-01-02 15:21:15.000000','0','1979-01-01','01:01:01'),(420,14,14,'Emmanuel Nyankabaria','emmanuel.nyankabaria@gmail.com','0727242330','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',5000000,'','2020-01-02 15:24:25.000000','0','1979-01-01','01:01:01'),(421,15,14,'Hirji','heeren.vaghani@gmail.com','0706374274','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',1000000,'','2020-01-02 15:42:42.000000','0','1979-01-01','01:01:01'),(422,8,14,'Joseph Nderitu','jgnderitu@gmail.com','0721238441','Kitengela','BMC','TeamMachine','150000','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-02 19:27:52.000000','0','1979-01-01','01:01:01'),(423,14,14,'Patrick Anam','songianam@gmail.com','+254720756343','Nairobi ','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Kindly let me have  your options for medical cover.','2020-01-02 21:26:10.000000','0','1979-01-01','01:01:01'),(424,20,14,'Collins Akivazi','akivazicollins@gmail.com','0711777632','Nairobi','','','3000000','','','','','','',0,0,0,'',0,5.00,'30 - 34',0,'','2020-01-02 22:07:00.000000','0','1979-01-01','01:01:01'),(425,6,14,'Kelvin opiyo ','kelvinopiyo@yahoo.ca','0799847941','Eldoret ','Toyota ','RAV4 ','1050000','2006','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-03 07:33:20.000000','0','1979-01-01','01:01:01'),(426,14,14,'JOSEPH MUKOKO','jcsmukoko@gmail.com','0726568464','KANGEMI','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',5000000,'','2020-01-03 09:05:20.000000','0','1979-01-01','01:01:01'),(427,14,14,'Newton Muya','nmnjoroge@gmail.com','+254700427966','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',1000000,'','2020-01-03 09:11:37.000000','0','1979-01-01','01:01:01'),(428,14,14,'Secheli pius','piussecheli@gmail.com','0791746449','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',1000000,'','2020-01-03 10:33:51.000000','0','1979-01-01','01:01:01'),(429,6,14,'Paul Kagunda','pkagunda09@gmail.com','254724721809','Mombasa','Toyota','ISIS','1070000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-03 12:20:21.000000','0','1979-01-01','01:01:01'),(430,6,14,'Melissa Hof','missy0079@hotmail.com','0743162571','Thika','Mazda','CX5','1900000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-03 13:08:03.000000','0','1979-01-01','01:01:01'),(431,14,14,'Beatrice Atieno Odol','nyanamb@gmail.com','0722565040','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Kindly assist with personal medical insurance cover rates','2020-01-03 13:19:45.000000','0','1979-01-01','01:01:01'),(432,43,14,'james papa','jamespapa02@gmail.com','0727250628','','','','200000','','','','','','Single Animal Cover',2,0,0,'',0,0.00,'',0,'','2020-01-03 14:11:26.000000','0','1979-01-01','01:01:01'),(433,6,14,'Christopher','christopherotiende15@gmail.com','0727388395','Kenya','Toyota','Fielder','1200000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-03 15:59:22.000000','0','1979-01-01','01:01:01'),(434,14,14,'Joseph','mmkaranga@gmail.com','0724407536','Nairobi ','','','0','','','','','','',1,0,0,'',0,0.00,'35 - 39',2000000,'','2020-01-03 18:18:13.000000','0','1979-01-01','01:01:01'),(435,14,14,'Patrick Hoho Njoroge','phnjoroge@gmail.com','0710186870','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Can I get a quote for medical cover for inpatient and outpatient services','2020-01-03 18:31:01.000000','0','1979-01-01','01:01:01'),(436,14,14,'Towett K Alfred','oletoet@gmail.com','0725253335','Kitengela','','','0','','','','','','',3,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-03 20:08:40.000000','0','1979-01-01','01:01:01'),(437,6,14,'John salubrious ','Johnsalubrios@mailinator.com','0785654235','Nyeri','Mitsubishi','Pajero','2000000','2008','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-03 21:29:17.000000','0','1979-01-01','01:01:01'),(438,26,14,'Mwangi','crimtech0@gmail.com','0764179223','Nyahururu','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-03 21:30:22.000000','PRIVATE','1979-01-01','01:01:01'),(439,14,14,'Cornelius Muhul Ooko','cmuhul@gmail.com','0720727277','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',500000,'','2020-01-03 23:54:57.000000','0','1979-01-01','01:01:01'),(440,6,14,'Jasmeet Kaur','jasmeetjagde@gmail.com','0711671155','Nairobi ','Nissan','Note','600000','2004','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-04 08:24:38.000000','0','1979-01-01','01:01:01'),(441,14,14,'stephen tanui','araptanui@gmail.com','0736206618','NAIROBI','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'JUST WANT TO KNOW IF I CAN INSURE A PERSON WHO AS JUST BEEN TOLD TO BE HAVING STAGE 2 CERVICAL CANCER. YET TO BEGIN MEDICATION','2020-01-04 12:56:34.000000','0','1979-01-01','01:01:01'),(442,15,14,'Stephen Akello','agwanda2@gmail.com','+254720434196','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',750000,'','2020-01-04 18:14:20.000000','0','1979-01-01','01:01:01'),(443,9,14,'stephan ','stephan.meyer-buenau@andela.com','0723758015','Kenya','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I am trying to buy travel insurance but the website is not loading','2020-01-04 18:18:12.000000','0','1979-01-01','01:01:01'),(444,14,14,'Manoah dishon','dishonmanoah@gmail.com','0718147442','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',1000000,'','2020-01-04 20:58:15.000000','0','1979-01-01','01:01:01'),(445,14,14,'Jack Kisero ngutu','jackngu9@gmail.com','0707396697','Ngumo','','','0','','','','','','',0,0,0,'',0,0.00,'35 - 39',500000,'','2020-01-04 22:57:13.000000','0','1979-01-01','01:01:01'),(446,14,14,'Ayieta','ayietadorcas18@gmail.com','0721943071','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Can&#39;t really find how payment is done as in what amount because I need this personal & family insurance cover,kindly assist','2020-01-05 10:47:37.000000','0','1979-01-01','01:01:01'),(447,14,14,'Victoria nyambare Osindi ','victoriaosindi289@gmail.com','0718526386','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'20 - 24',5000000,'','2020-01-05 12:50:24.000000','0','1979-01-01','01:01:01'),(448,14,14,'Elizabeth Wamaitha','lizwamaitha100@gmail.com','0708212698','Mombasa','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-05 18:20:36.000000','0','1979-01-01','01:01:01'),(449,15,14,'Sarah Ngure','wangure61@gmail.com','0791579223','Limuru ','','','0','','','','','','',0,0,0,'',0,0.00,'55 - 59',2000000,'','2020-01-05 19:12:45.000000','0','1979-01-01','01:01:01'),(450,14,14,'Mohamed','asmo14@hotmail.com','0722824390','Mombasa','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'','2020-01-06 08:21:29.000000','0','1979-01-01','01:01:01'),(451,6,14,'Fredrick Obat Onyango','fredson.mech@gmail.com','0724058931','Nairobi','Nissan serena','C26','800000','2010','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-06 09:27:03.000000','0','1979-01-01','01:01:01'),(452,15,14,'Ruth','mutukumwende@gmail.com','0724828421','Athi River','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',300000,'','2020-01-06 11:58:51.000000','0','1979-01-01','01:01:01'),(453,14,14,'Fatuma Mohamed ','fatumasheikh83@gmail.com','0732868470','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'','2020-01-06 12:14:15.000000','0','1979-01-01','01:01:01'),(454,15,14,'janerose wanjala','jentywanjala@gmail.com','0712773715','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'i need to know more about this cover and the amount to contribute monthly','2020-01-06 14:04:29.000000','0','1979-01-01','01:01:01'),(455,15,14,'Stephen Akello','agwanda2@gmail.com','+254720434196','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',1000000,'','2020-01-06 14:57:57.000000','0','1979-01-01','01:01:01'),(456,22,14,'Stephen Akello','agwanda2@gmail.com','+254720434196','Nairobi','','','200000','','','','','','',0,0,0,'',0,5.00,'60 - 64',0,'','2020-01-06 15:02:48.000000','0','1979-01-01','01:01:01'),(457,14,14,'Sadia Salim','sadiasalim10@gmail.com','0706274487','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-06 16:18:06.000000','0','1979-01-01','01:01:01'),(458,50,14,'Olga Joan Dinda','dindaza@yahoo.com','0722372819','','','','0','','Can you let me  know about premium for inpatient medical cover age 59 and 67 please','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-06 17:25:53.000000','0','1979-01-01','01:01:01'),(459,6,14,'Kelvin Opiyo','kelvinopiyo@yahoo.ca','0799847941','Eldoret ','Toyota ','Rav4','1300000','2006','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-06 18:06:31.000000','0','1979-01-01','01:01:01'),(460,50,14,'Frasiah Mwangi','frasiahmwangi04@gmail.com','0722698974','','','','0','','How do I register with you?\r\n','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-06 18:38:20.000000','0','1979-01-01','01:01:01'),(461,50,14,'Frasiah Mwangi','frasiahmwangi04@gmail.com','0722698974','','','','0','','How do i register with you?','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-06 18:44:35.000000','0','1979-01-01','01:01:01'),(462,22,14,'Kelvin Odero','thekelvinodero@gmail.com','0742505372','Nairobi, Embakasi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hi, \r\nI will like to know more about Pumzisha and your Health covers.\r\n \r\nRegards,\r\nArvinne ','2020-01-07 05:38:30.000000','0','1979-01-01','01:01:01'),(463,14,14,'Amran Naisiae Sikawa','amransikawa@gmail.com','0712016318','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-07 09:17:09.000000','0','1979-01-01','01:01:01'),(464,15,14,'cuspers obanda','obanda56@gmail.com','0771053372','nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-07 09:45:58.000000','0','1979-01-01','01:01:01'),(465,15,14,'Charles Ndegwa','mumbi.sarah@gmail.com','0722968813','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'70 - 75',500000,'','2020-01-07 13:12:43.000000','0','1979-01-01','01:01:01'),(466,6,14,'PERIS CHEPLETING','perukeino@yahoo.com','0722299192','nairobi','nissan','juke','1000000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-07 14:30:13.000000','0','1979-01-01','01:01:01'),(467,15,14,'SERAH WANJIKU','serahwanjiku14@yahoo.com','0706625825','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-07 15:25:48.000000','0','1979-01-01','01:01:01'),(468,50,14,'Peter','pmoiben@gmail.com','0720981181','','','','0','','Still waiting for your feedback on my patient Jacklyne chepkorir Too at Siloam Hospital, Kericho pliz','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-07 15:30:44.000000','0','1979-01-01','01:01:01'),(469,14,14,'Japhan moris omache','alvinmandela201@gmail.com','0711501373','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-07 22:04:34.000000','0','1979-01-01','01:01:01'),(470,45,14,'Rose Ngari','nyawirarellah@gmail.com','0720086351','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Please send me the information on investing ','2020-01-08 08:17:04.000000','0','1979-01-01','01:01:01'),(471,9,14,'John Doe','johndoe@gmail.com','0712345678','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-08 10:09:02.000000','0','1979-01-01','01:01:01'),(472,9,14,'john','john@gmail.com','0712999999','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-08 13:23:41.000000','0','1979-01-01','01:01:01'),(473,12,14,'Samuel Wambugu Kamau','wamsam77@gmail.com','+254729587103','Nakuru','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-08 13:49:10.000000','0','1979-01-01','01:01:01'),(474,9,14,'Wawira','wawira@food4education.org','0723551342','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-08 15:34:03.000000','0','1979-01-01','01:01:01'),(475,50,14,'Eddy Makoyo','eddymakoyo@gmail.com','0711437982','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2020-01-08 15:39:30.000000','0','0008-01-20','04:00:00'),(476,12,14,'MARYANNE AWITI OCHIENG&#39;','ochiengmaryanne@gmail.com','0727672961','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-08 15:41:28.000000','0','1979-01-01','01:01:01'),(477,15,14,'Ronoh Kennedy ','ronohkennedy88@gmail.com','0722808712','Eldoret ','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',300000,'','2020-01-08 16:06:32.000000','0','1979-01-01','01:01:01'),(478,14,14,'Nixcy Murage','muragenixcy100@gmail.com','0719110619','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'20 - 24',500000,'','2020-01-08 16:39:05.000000','0','1979-01-01','01:01:01'),(479,50,14,'Joseph Wainaina Kiongo ','kiongo2002@yahoo.com','0721339077','','','','0','','Acquired a car comprehensive from Mombasa. did a partial payment. I  would wish to pay the next installment. and am in Nairobi. \r\nHow do I go about it ','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-08 18:43:25.000000','0','1979-01-01','01:01:01'),(480,14,14,'DAVID MUNENE','davenahu25@gmail.com','0763420672','NAIROBI','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-08 20:48:17.000000','0','1979-01-01','01:01:01'),(481,14,14,'David Ochola','davidocholla316@gmail.com','0722442924','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',1000000,'','2020-01-09 08:32:34.000000','0','1979-01-01','01:01:01'),(482,40,14,'Serah','snzuxs@gmail.com','0750838091','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-09 10:59:24.000000','self','1979-01-01','01:01:01'),(483,15,14,'David Mwihuri','davidwihuri@gmail.com','0724211533','Kikuyu','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',1000000,'','2020-01-09 11:46:54.000000','0','1979-01-01','01:01:01'),(484,26,14,'Joseph Kariuki ','josephka02@icloud.com','0722803540','Nairobi ','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'At what percent can i insure my Honda Fit which will be used as psv for Uber ','2020-01-09 13:23:57.000000','0','1979-01-01','01:01:01'),(485,14,14,'Rosemarion Ndirangu','marionndirangu2@gmail.com','0703478331','Naivasha','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',1000000,'','2020-01-09 15:29:43.000000','0','1979-01-01','01:01:01'),(486,14,14,'faith boisabi','faithboisabi23@gmail.com','0707736772','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'20 - 24',2000000,'','2020-01-09 15:37:25.000000','0','1979-01-01','01:01:01'),(487,20,14,'Lucas Omondi Aol','aoloyola.lucas@gmail.com','0720918725','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Premium statement','2020-01-09 17:06:13.000000','0','1979-01-01','01:01:01'),(488,14,14,'Juliet Kanjukia','kanjukiajuliet@gmail.com','0726220863','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',2000000,'','2020-01-09 17:25:29.000000','0','1979-01-01','01:01:01'),(489,14,14,'Felishina wambui','suziewambui18@gmail.com','0723287259','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',1000000,'','2020-01-09 17:54:00.000000','0','1979-01-01','01:01:01'),(490,50,14,'GETRUDE mushlati','getrude@bussynetgroup.com','0114369225','','','','0','','WE ARE INVITING APA INSURANCE TO THE INSURANCE TECHNOLOGIES CONFERENCE SET FOR 23 & 24 APRIL 2020 AT EMPERORS PALACE, JOHANNESBURG.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-09 17:59:24.000000','0','1979-01-01','01:01:01'),(491,14,14,'Amina Ahmed','aa.feiruz@gmail.com','0706647547','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-09 19:12:29.000000','0','1979-01-01','01:01:01'),(492,15,14,'Mulu Muia','mulumuia@hotmail.com','0721239342','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'50 - 54',2000000,'','2020-01-09 19:39:23.000000','0','1979-01-01','01:01:01'),(493,9,14,'Evelynn ','gevelynn@gmail.com','0721359606','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-10 08:49:06.000000','0','1979-01-01','01:01:01'),(494,14,14,'kevin','kevinongechi94@gmail.com','0710542177','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',1000000,'','2020-01-10 09:19:45.000000','0','1979-01-01','01:01:01'),(495,6,14,'Charles Matondane','charles@nefrids.com','705638062','Nairobi','Toyota','Vista','1200000','2007','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-10 10:50:38.000000','0','1979-01-01','01:01:01'),(496,6,14,'Eric Kinuthia','erick@gmail.com','0724898430','Nairobi','Honda','Fitz','800000','2009','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-10 10:55:05.000000','0','1979-01-01','01:01:01'),(497,6,14,'Gordon Ochieng','gordonpassy@gmail.com','0702915715','Nairobi','Mercedes','c class','1200000','2010','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-10 10:55:59.000000','0','1979-01-01','01:01:01'),(498,50,14,'Ken Maina','stephanoken010@gmail.com','0759064521','','','','0','','Hello, I would like to the cost per month of the family health cover. Kindly send me the payment structure.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-10 12:52:02.000000','0','1979-01-01','01:01:01'),(499,47,14,'Nicholas Mulwa','nicolswambua@gmail.com','0721497569','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-10 13:06:04.000000','0','1979-01-01','01:01:01'),(500,14,14,'Maureen Okemwa','mbokemwa@gmail.com','0707808432','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-10 13:29:44.000000','0','1979-01-01','01:01:01'),(501,14,14,'EVELYN MWIKALI','evelynmwikali92@gmail.com','0716886767',' komarock nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I will travel to Australia in march together with my spouse for work,using a work 482 visa,do you offer travel and overseas medical insurances?','2020-01-10 13:59:43.000000','0','1979-01-01','01:01:01'),(502,14,14,'Siddy Maru ','genelite92@gmail.com','0714832990','Eldoret ','','','0','','','','','','',0,0,0,'',0,0.00,'55 - 59',2000000,'','2020-01-10 14:25:15.000000','0','1979-01-01','01:01:01'),(503,9,14,'Fortune Waweru','natlily0911@gmail.com','0712653654','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-10 15:46:26.000000','0','1979-01-01','01:01:01'),(504,6,14,'agg','bhh@yahoo.com','0777299300','nairobi','toyota','runx','500000','2003','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-10 16:28:44.000000','0','1979-01-01','01:01:01'),(505,26,14,'mmmmmmmmmm jjjjjjjj','jasper01@gmail.com','0700768586','mwihoko','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-10 20:44:31.000000','vfghiuhgfcv bn','1979-01-01','01:01:01'),(506,14,14,'Doreen Kathambi ','deedeekk77@gmail.com','+254701801181','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',2000000,'','2020-01-10 20:48:25.000000','0','1979-01-01','01:01:01'),(507,14,14,'Mohamed Hussein Mwinyi','mohammadhussein86@yahoo.com','0728861753','Mombasa / malindi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',2000000,'','2020-01-11 02:39:58.000000','0','1979-01-01','01:01:01'),(508,42,14,'Andrew Mumo','mumoandrew9@gmail.com','0723509800','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Is it possible to get the contribution percentages between the insurance and me as the farmer towards crop risk for the various insurance products  ','2020-01-11 10:36:08.000000','0','1979-01-01','01:01:01'),(509,6,14,'Carol karwitha','robsgambi12@gmail.com','0720878755','Nanyuki','Toyota','Auris','1250000','2013','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-11 14:38:17.000000','0','1979-01-01','01:01:01'),(510,14,14,'Carren Sagini','ckwambs@gmail.com','+254720798757','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',1000000,'','2020-01-11 20:37:08.000000','0','1979-01-01','01:01:01'),(511,14,14,'Merita Kwatukha Wanjala','meritawanja@gmail.com','0721998072','Kakamega','','','0','','','','','','',0,0,0,'',0,0.00,'50 - 54',2000000,'','2020-01-11 20:54:56.000000','0','1979-01-01','01:01:01'),(512,14,14,'Tiffany Meg Nyawambi ','tiffmeg.tiff@gmail.com','0795406417','Nairobi ','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hi, I lost my medical card, what is the replacement procedure? ','2020-01-11 21:01:53.000000','0','1979-01-01','01:01:01'),(513,14,14,'Ali Bashir abdi','alitoto3432567@gmail.com','0742019462','Turkana kenya','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',10000000,'','2020-01-12 00:40:26.000000','0','1979-01-01','01:01:01'),(514,19,14,'John Mogige','Johnmogige200@gmail.com','0797771682','Nairobi','','','500000','','','','','','',0,0,0,'',0,6.00,'24 - 25',0,'','2020-01-12 02:43:17.000000','0','1979-01-01','01:01:01'),(515,14,14,'David munene','davidmunene15@gmail.com','0719126771','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',500000,'','2020-01-12 13:23:41.000000','0','1979-01-01','01:01:01'),(516,14,14,'Rehema Said ','rahma2807@gmail.com','0726995958','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',2000000,'','2020-01-12 13:53:22.000000','0','1979-01-01','01:01:01'),(517,14,14,'Benard Juma','onyachbenard@gmail.com','0753562331','Nairobi','','','0','','','','','','',4,0,0,'',0,0.00,'30 - 34',2000000,'','2020-01-12 21:48:40.000000','0','1979-01-01','01:01:01'),(518,50,14,'Tropiflora Ltd.','hr.tfl@btfgroup.com','+254720613802','','','','0','','Contact details of PENSION DEPT. of APA','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-13 08:32:23.000000','0','1979-01-01','01:01:01'),(519,50,14,'arfan amirali hussein','arfan1969@hotmail.com','0722809722','','','','0','','kindly send me your banking details as i want to bank a cheque for mortgage insurance','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-13 08:48:57.000000','0','1979-01-01','01:01:01'),(520,15,14,'Susan Ratta','sueratta@gmail.com','0726725427','Nairobi','','','0','','','','','','',-3,0,0,'',0,0.00,'24 - 25',1000000,'','2020-01-13 09:47:46.000000','0','1979-01-01','01:01:01'),(521,12,14,'samuel maina','msammy.maina@gmail.com','0725672593','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-13 09:59:32.000000','0','1979-01-01','01:01:01'),(522,12,14,'samuel maina','msammy.maina@gmail.com','0725672593','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'whats the cost on personal accident cover for an internship?','2020-01-13 10:26:42.000000','0','1979-01-01','01:01:01'),(523,15,14,'Joseph Karanja Wainaina','jkaranja@boracapital.com','0700521633','nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'35 - 39',100000,'','2020-01-13 12:18:45.000000','0','1979-01-01','01:01:01'),(524,37,14,'Leshan Sancha','sanchaleshan@gmail.com','0722131473','Narok','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-13 12:25:24.000000','Leshan Sancha','1979-01-01','01:01:01'),(525,15,14,'Leshan Sancha','sanchaleshan@gmail.com','0722131473','Kilgoris','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',500000,'','2020-01-13 12:32:09.000000','0','1979-01-01','01:01:01'),(526,14,14,'Amos Mwangi','amos2007.k@gmail.com','0729262626','Eldoret','','','0','','','','','','',2,0,0,'',0,0.00,'45 - 49',1000000,'','2020-01-13 12:54:26.000000','0','1979-01-01','01:01:01'),(527,14,14,'Denis Muange Ngui','paperdenis98@gmail.com','0797253933','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'20 - 24',500000,'','2020-01-13 13:13:28.000000','0','1979-01-01','01:01:01'),(528,15,14,'Vivian Mbeche','mbecheviv@gmail.com','0725657868','Eldoret','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'what are your health packages or premiums and how much does it cost per year','2020-01-13 14:42:42.000000','0','1979-01-01','01:01:01'),(529,14,14,'ELLEN','ellenmicheni@gmail.com','0729406099','Nairobi ','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',2000000,'','2020-01-13 19:26:33.000000','0','1979-01-01','01:01:01'),(530,50,14,'ERIC MUNENE','muneneeric732@gmail.com','0729396628','','','','0','','I am writing to kindly offer myself as a volunteer to your companies.I am still a student on my 3rd year of study,pursuing a degree in actuarial science.Kindly consider my move.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-13 21:03:30.000000','0','1979-01-01','01:01:01'),(531,15,14,'JOHN DOE','JOHNDOE@YAHOO.COM','0722222222','NAIROBI','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',2000000,'','2020-01-13 23:16:30.000000','0','1979-01-01','01:01:01'),(532,9,14,'Mary njeri','njemary@yahoo.com','0714697137','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-14 00:05:33.000000','0','1979-01-01','01:01:01'),(533,9,14,'Mary njeri','njemary@yahoo.com','0714697137','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-14 00:05:52.000000','0','1979-01-01','01:01:01'),(534,9,14,'Mary njeri','njemary@yahoo.com','0714697137','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need feedback on travel insurance package','2020-01-14 00:08:35.000000','0','1979-01-01','01:01:01'),(535,15,14,'Anthony Njagi','anthonynjagi097@gmail.com','0726108827','Embu','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',100000,'','2020-01-14 10:14:33.000000','0','1979-01-01','01:01:01'),(536,19,14,'MEHUL JOTANGIA','mehuljotangia@gmail.com','0721484497','NAIROBI','','','250000','','','','','','',0,0,0,'',0,9.00,'35 - 39',0,'','2020-01-14 11:20:11.000000','0','1979-01-01','01:01:01'),(537,19,14,'MEHUL JOTANGIA','mehuljotangia@gmail.com','0721484497','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need a quotation','2020-01-14 11:35:58.000000','0','1979-01-01','01:01:01'),(538,14,14,'James Kamau','jameskamak@gmail.com','0720701868','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'40 - 44',2000000,'','2020-01-14 12:46:01.000000','0','1979-01-01','01:01:01'),(539,14,14,'Jane macharia','wangumacharia@gmail.com','+254720127645','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',5000000,'','2020-01-14 13:46:02.000000','0','1979-01-01','01:01:01'),(540,14,14,'Mike','mykley@yahoo.com','0776744134','Nairobi','','','0','','','','','','',3,0,0,'',0,0.00,'40 - 44',1000000,'','2020-01-14 13:58:10.000000','0','1979-01-01','01:01:01'),(541,50,14,'Onyango kevin Okoth','kelvinokoth6@gmail.com','0713132423','','','','0','','Lost my APA card how do i go about card renewal process\r\nRegistered with shining hope for communities','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-14 18:49:20.000000','0','1979-01-01','01:01:01'),(542,9,14,'Chiti Chombo','chitichombo@gmail.com','0725656027','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-15 05:29:11.000000','0','1979-01-01','01:01:01'),(543,15,14,'Kenneth','gitau.cya4insure@gmail.com','0723162727','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'65 - 69',1000000,'','2020-01-15 08:41:50.000000','0','1979-01-01','01:01:01'),(544,15,14,'Kenneth','gitau.cya4insure@gmail.com','0723162727','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',750000,'','2020-01-15 08:42:52.000000','0','1979-01-01','01:01:01'),(545,7,14,'Francis kyuli mutisya','mutisyafrancis298@gmail.com','0714192720','Nairobi','ranger ','sanya','102000','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-15 11:21:16.000000','0','1979-01-01','01:01:01'),(546,14,14,'Abdifatah Ahmed Mohamud','sentiyaago@gmail.com','+254721219550','NAIROBI ','','','0','','','','','','',5,0,0,'',0,0.00,'30 - 34',10000000,'','2020-01-15 11:23:36.000000','0','1979-01-01','01:01:01'),(547,6,14,'Margaret Wangui','margaretkui@gmail.com','0702620156','nairobi','Honda','fit','600000','2011','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-15 11:50:07.000000','0','1979-01-01','01:01:01'),(548,6,14,'Margaret Wangui','margaretkui96@gmail.com','0701946430','nairobi','Honda','fit','600000','2011','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-15 11:51:07.000000','0','1979-01-01','01:01:01'),(549,9,14,'Mukuhi Thuo','ppearlx1@gmail.com','0712522531','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-15 13:24:31.000000','0','1979-01-01','01:01:01'),(550,14,14,'Judy Luyo','ljudyluyo@gmail.com','0724439777','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'40 - 44',5000000,'','2020-01-15 15:53:58.000000','0','1979-01-01','01:01:01'),(551,18,14,'FREDRICK OBURU','oburu.fredrick14@gmail.com','0720326635','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I NEED MORE INFORMATION ON THE IMARIKA PRODUCT','2020-01-15 16:40:47.000000','0','1979-01-01','01:01:01'),(552,45,14,'Tonny Ngala','tonnyngala205@gmail.com','0720290661','Eldoret','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-15 21:43:02.000000','0','1979-01-01','01:01:01'),(553,14,14,'Kisilu','kisilumutua2@gmail.com','0733974447','Kakamega','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',500000,'','2020-01-15 22:46:07.000000','0','1979-01-01','01:01:01'),(554,50,14,'maureen orlale','maureenorlale@gmail.com','7147702501','','','','0','','Can you please get in touch with me.    I live in California.  I would want to insure my family in Kenya. can you get in touch with me.  My phone is \r\n+ 1 714 770 2501','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-16 01:34:51.000000','0','1979-01-01','01:01:01'),(555,14,14,'Elinah Ayuma ','ayuma6@outlook.com','0706001204','Nakuru ','','','0','','','','','','',2,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-16 05:14:49.000000','0','1979-01-01','01:01:01'),(556,12,14,'Geoffrey kilonzo','geoffreykil@yahoo.com','0748000129','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-16 05:24:55.000000','0','1979-01-01','01:01:01'),(557,14,14,'Geoffrey kilonzo','geoffreykil@yahoo.com','0748000129','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',500000,'','2020-01-16 05:26:12.000000','0','1979-01-01','01:01:01'),(558,15,14,'ROBERT LANGAT ','rolakgen@gmail.com','0721877042','BOMET ','','','0','','','','','','',3,0,0,'',0,0.00,'45 - 49',300000,'','2020-01-16 10:22:34.000000','0','1979-01-01','01:01:01'),(559,14,14,'Andrew Katua','andrewkatua@gmail.com','+254711797776','Makueni','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',500000,'','2020-01-17 00:59:20.000000','0','1979-01-01','01:01:01'),(560,14,14,'HUSSEIN BULE AHMED','buuletrading@gmail.com','0715565149','NAIROBI','','','0','','','','','','',10,0,0,'',0,0.00,'40 - 44',1000000,'','2020-01-17 09:45:05.000000','0','1979-01-01','01:01:01'),(561,50,14,'Triptime Associates Ltd','info@triptime.co.ke','0720729200','','','','0','','We want a travel insurance quote for 21 persons who will be travelling from Mogadishu to Nairobi and back and will stay in Nairobi for seven days.\r\n7 of them will travel from Kismayo to Mogadishu and another 7 From Baidoa to Mogadishu to join 7 others who reside in Mogadishu.\r\nAll 21 persons will travel from Mogadishu to Nairobi probably on 31st Jan 2020.\r\nThey will stay in Nairobi probably up to 6th February, where they will be attending a seminar.\r\nThey will all travel back to Mogadishu probably on 6th February, and the 14 who came from Kismayo and Baidoa will travel back to their local destinations from Mogadishu airport.\r\nAll travel is by air.\r\nThe travel insurance cover must cover personal accident, personal liability, cancellation, or curtailment of the journey, baggage cover, emergency medical services and repatriation a minimum.\r\n\r\nWith Regards,\r\n\r\nRobert I. Kamau\r\n\r\n','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-17 10:31:06.000000','0','1979-01-01','01:01:01'),(562,21,14,'Alex Mutinda','mutinda.alex77@gmail.com','0728349030','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hey am looking for family medical cover policy\r\n','2020-01-17 11:05:20.000000','0','1979-01-01','01:01:01'),(563,15,14,'Lilian','lwmaina23@gmail.com','0712238715','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hi,\r\n\r\nKindly advise if the medical cover has any waiting periods.\r\n\r\nalso does it cater for cancer treatment?','2020-01-17 11:58:43.000000','0','1979-01-01','01:01:01'),(564,14,14,'Alex Mutinda','mutinda.alex77@gmail.com','0728349030','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-17 13:05:54.000000','0','1979-01-01','01:01:01'),(565,14,14,'Muhammad Maddy','muhammad.bbkr@hotmail.com','0700472304','Mombasa','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hello,\r\n\r\ni would like a quote for Jamii Plus medical Insurance for myself and two dependants (parents).\r\n\r\nI am turning 29 this year, parents are 71 and 63 years.\r\n\r\nInpatient limit 2,000,0000 and outpatient 50,000.\r\n\r\nThanks\r\n\r\nKind regards,\r\n\r\nMuhammad Maddy','2020-01-17 13:28:15.000000','0','1979-01-01','01:01:01'),(566,6,14,'Emmanuel Kiprono Davidson','kipronofb@gmail.com','0700935984','Kenya','BMW','Crown','14000000','2019','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-17 13:40:44.000000','0','1979-01-01','01:01:01'),(567,9,14,'Dorothy Maingi','maingidorothy89@gmail.com','0727657444','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-17 16:08:00.000000','0','1979-01-01','01:01:01'),(568,20,14,'Michael ','mwangim36@gmail.com','0724104432','Gatundu','','','500000','','','','','','',0,0,0,'',0,10.00,'24 - 25',0,'','2020-01-17 21:43:33.000000','0','1979-01-01','01:01:01'),(569,45,14,'Bonface Atitwa','bonfaceatitwa@gmail.com','0700636370','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need some clarification about this cover ','2020-01-18 07:51:51.000000','0','1979-01-01','01:01:01'),(570,14,14,'Georgina Musia','georginamusia@gmail.com','0731348347','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-18 11:50:21.000000','0','1979-01-01','01:01:01'),(571,14,14,'Francis murugo kinuthia','kinuthiaf82@gmail.com','0718084354','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-18 12:31:27.000000','0','1979-01-01','01:01:01'),(572,14,14,'Kungu Eugene Otieno','eeukonkey@gmail.com','0719474334','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-18 14:20:00.000000','0','1979-01-01','01:01:01'),(573,15,14,'Stephanie Mutoka','s.r.mutoka@gmail.com','0713148508','N','','','0','','','','','','',0,0,0,'',0,0.00,'55 - 59',500000,'','2020-01-18 16:37:49.000000','0','1979-01-01','01:01:01'),(574,15,14,'Caleb Kimutai Ng&#39;eno','counselkim95@gmail.com','0713930593','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',100000,'','2020-01-18 19:01:50.000000','0','1979-01-01','01:01:01'),(575,15,14,'Halliet Wangui','Wanguingugi7@gmail.com','0735109920','NAIROBI ','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',2000000,'','2020-01-18 22:14:59.000000','0','1979-01-01','01:01:01'),(576,14,14,'Carolyne Karimi','carokarimi3@gmail.com','0726501618','Nairobi ','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',5000000,'','2020-01-19 08:51:59.000000','0','1979-01-01','01:01:01'),(577,50,14,'Oloo Idda Adhiambo','iddaadhiambo@gmail.com','0715058343','','','','0','','Hi,I am an undergraduate from MKU with a bachelors degree in Actuarial Science. I&#39;m looking for a job at your Thika branch can you help me?','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-19 17:57:05.000000','0','1979-01-01','01:01:01'),(578,14,14,'Mats Johansson','mg.johansson58@gmail.com','0746526892','Ongata Rongai','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',10000000,'','2020-01-20 07:05:56.000000','0','1979-01-01','01:01:01'),(579,14,14,'samuel gikonyo','samkimonye@gmail.com','0792821710','githurai','','','0','','','','','','',1,0,0,'',0,0.00,'18 - 23',500000,'','2020-01-20 11:12:44.000000','0','1979-01-01','01:01:01'),(580,6,14,'ken','kenswels@yahoo.com','0727540620','nairobi','Toyota','corolla','500000','1997','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-20 14:27:52.000000','0','1979-01-01','01:01:01'),(581,6,14,'blasio achieng','billyblasio@yahoo.com','0724973065','Nairobi','toyota','land cruiser prado','1300000','2003','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-20 14:29:48.000000','0','1979-01-01','01:01:01'),(582,15,14,'Edward Wamagata Gaitho','edace592003@gmail.com','0720469776','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Kindly send me a quote for AFYA NAFUU','2020-01-20 16:37:53.000000','0','1979-01-01','01:01:01'),(583,14,14,'Edward Wamagata Gaitho','edace592003@gmail.com','0720469776','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Kindly share with me a quote on this','2020-01-20 16:40:19.000000','0','1979-01-01','01:01:01'),(584,15,14,'Madalina Wangeci','madanjeri@gmail.com','0740477123','Nanyuki','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',1000000,'','2020-01-20 18:29:45.000000','0','1979-01-01','01:01:01'),(585,15,14,'G','m@s.com','0734984984','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'35 - 39',2000000,'','2020-01-20 22:54:53.000000','0','1979-01-01','01:01:01'),(586,9,14,'Erick Anguzu','asifiweb45@gmail.com','0772488440','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-20 23:16:50.000000','0','1979-01-01','01:01:01'),(587,9,14,'Erick Anguzu','beeliza95@gmail.com','+256783595568','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-20 23:18:16.000000','0','1979-01-01','01:01:01'),(588,14,14,'Dennis Munyoki','babaviz.munyoki499@gmail.com','+254712509826','Kitengela','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',10000000,'','2020-01-21 09:16:45.000000','0','1979-01-01','01:01:01'),(589,50,14,'Dr kunal','toothdoctornyali@gmail.com','','','','','0','','i would like to add my new dental clinic to your panel of approved clinics. kindly advise the process. thanking you','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-21 12:31:57.000000','0','1979-01-01','01:01:01'),(590,15,14,'Rachel','kathokimwende@gmail.com','0722319890','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'50 - 54',500000,'','2020-01-21 13:03:35.000000','0','1979-01-01','01:01:01'),(591,15,14,'Knightly Frankie','knightlyfrankie@gmail.com','0701548843','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',300000,'','2020-01-21 16:11:05.000000','0','1979-01-01','01:01:01'),(592,6,14,'John Doe','johndoe@gmail.com','0712345678','Machakos','Mercedez','Royce','8000000','2019','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-21 16:28:40.000000','0','1979-01-01','01:01:01'),(593,6,14,'Gilbert Njoroge','gilbert.njoroge@apollo.co.ke','0712345678','Apollo Centre','Toyota','Crown','1800000','2018','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-21 16:34:07.000000','0','1979-01-01','01:01:01'),(594,50,14,'Ndungu','geoffrey.mbau@gmail.com','0721176652','','','','0','','send me a claim for a personnel car accident','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-21 17:51:04.000000','0','1979-01-01','01:01:01'),(595,14,14,'Eugene Okech ','eujohokech@gmail.com','0798065031','Utawala','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-21 17:58:16.000000','0','1979-01-01','01:01:01'),(596,14,14,'Jeniffer Ndanu Mutua ','janemutua73@gmail.com','0716063472','Nairobi ','','','0','','','','','','',2,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-21 20:00:27.000000','0','1979-01-01','01:01:01'),(597,14,14,'Lucy Nyakundi','lucyn94@gmail.com','0720314602','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',2000000,'','2020-01-22 11:50:40.000000','0','1979-01-01','01:01:01'),(598,15,14,'kelvin murithi','kelvinmurithi463@gmail.com','0706669774','Thika','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',1000000,'','2020-01-22 14:34:36.000000','0','1979-01-01','01:01:01'),(599,14,14,'Rashid Maiko Barasa','rashid.baraza@gmail.com','0711829633','Mombasa','','','0','','','','','','',2,0,0,'',0,0.00,'45 - 49',500000,'','2020-01-22 14:38:06.000000','0','1979-01-01','01:01:01'),(600,15,14,'Kennedy ben','kowese@hotmail.com','0721581438','Mombasa','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',300000,'','2020-01-22 17:49:50.000000','0','1979-01-01','01:01:01'),(601,31,14,'jackson kagwe','jackkagwe@gmail.com','0708117748','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hello, i am a photographer and i recently purchased a camera, kindly assist me on how to insure it. how do i go with it?','2020-01-22 18:45:18.000000','0','1979-01-01','01:01:01'),(602,50,14,'Zakayo kengere Masai ','Kengeremzack@gmail.com','+254714046164','','','','0','','Plz I took an insurance  cover but I haven&#39;t been paid  my yearly premiums ','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-22 19:01:49.000000','0','1979-01-01','01:01:01'),(603,14,14,'Benedettee Njeri','benedetteew@gmail.com','0714330404','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',1000000,'','2020-01-22 19:18:55.000000','0','1979-01-01','01:01:01'),(604,50,14,'Anne Waichigo','annewaichigo@gmail.com','0722462230','','','','0','','I am interested in your individual medical cover packages. ','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-22 20:58:42.000000','0','1979-01-01','01:01:01'),(605,14,14,'AMOS CANTOH','amoscantoh@gmail.com','0729517699','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'70 - 75',5000000,'','2020-01-23 07:31:54.000000','0','1979-01-01','01:01:01'),(606,14,14,'Amos','amoscantoh@gmail.com','0729517699','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'76 - 80',5000000,'','2020-01-23 07:32:34.000000','0','1979-01-01','01:01:01'),(607,14,14,'Kushag Shah','kushag777@gmail.com','0736394908','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I would like to know the health insurance packages for individuals.\r\nThe costs and does it Include In India Also','2020-01-23 11:28:06.000000','0','1979-01-01','01:01:01'),(608,14,14,'Joseph Waireri','joeausti@gmail.com','0735610578','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',500000,'','2020-01-23 13:55:46.000000','0','1979-01-01','01:01:01'),(609,50,14,'Juliana Nganatha ','info@tscapitalkenya.com','0713259239','','','','0','','I am in town at Comet House, would like to visit one of the closest branches to me. Which one is closer?\r\n','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-23 14:27:13.000000','0','1979-01-01','01:01:01'),(610,50,14,'Yahya','dollardollar2002@yahoo.com','+256772353977','','','','0','','I need a medical insurance for me family there','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-24 01:13:30.000000','0','1979-01-01','01:01:01'),(611,6,14,'Johnson ','john.doe@yahoo.com','0708323232','Thika','Toyota ','Duet','600000','2010','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-24 10:55:50.000000','0','1979-01-01','01:01:01'),(612,15,14,'OPIYO PINTO ODUOR','pintooduor@gmail.com','0799517171','NAIROBI','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need a medical cover for my daughter, wife, and I. How much do I pay monthly. I am interested in the monthly payments. ','2020-01-24 11:20:55.000000','0','1979-01-01','01:01:01'),(613,14,14,'Sophie Kinyua','Sophie@therivercafekenya.com','0722706272','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'45 - 49',10000000,'','2020-01-24 12:00:20.000000','0','1979-01-01','01:01:01'),(614,14,14,'Judyth','wema34@yahoo.com','0722758179','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'45 - 49',5000000,'','2020-01-24 12:22:38.000000','0','1979-01-01','01:01:01'),(615,14,14,'Victoria','toriamule@gmail.com','0721864867','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-24 16:54:57.000000','0','1979-01-01','01:01:01'),(616,6,14,'Peter macharia','petermacharia866@gmail.com','0715867297','Ngong','Honda','Fit','720000','2012','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-24 21:18:53.000000','0','1979-01-01','01:01:01'),(617,15,14,'Zainabu Zaitun','zaynab08@ymail.com','0712508141','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',1000000,'','2020-01-25 06:05:19.000000','0','1979-01-01','01:01:01'),(618,6,14,'Francis Kioko kimeu','kimeufrancis01@gmail.com','0729437624','Utawala','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Please send me your rates for comprehensive motor vehicle cover. Toyota rush. Year 2006.Value between 600,000 -650,000. Also include the requirements and the procedure for getting the cover. ','2020-01-25 08:46:13.000000','0','1979-01-01','01:01:01'),(619,6,14,'Joseph Kamau ','Joseph.kamau@gmail.com','0710123525','Embu','Toyota','Vitz','12000','2012','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-25 09:13:14.000000','0','1979-01-01','01:01:01'),(620,15,14,'Sabina Mutua','mutuasabina21@gmail.com','0717088154','Nairobi ','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',1000000,'','2020-01-25 11:52:02.000000','0','1979-01-01','01:01:01'),(621,51,14,'NAMPIINA SHARON','nampiinasharon0@gmail.com','0779958003','uganda','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-25 12:09:26.000000','0','1979-01-01','01:01:01'),(622,14,14,'Lilian ','liliankuria@yahoo.com','0721345867','Sabaki. Mombasa Road','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',2000000,'','2020-01-25 13:08:44.000000','0','1979-01-01','01:01:01'),(623,15,14,'Christine Mayi','kristinkez@gmail.com','0723120560','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'30 - 34',1000000,'','2020-01-26 03:46:51.000000','0','1979-01-01','01:01:01'),(624,15,14,'Joseph Wechuli','jomawi2012@gmail.com','0721573832','Bungoma','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hello\r\nI would like to have a medical cover for an outpatient limit of 100k and inpatient of 500k for my mother aged 56 \r\nKindly provide me with the premium per annum . Is the cover immediate also? Thanks ','2020-01-26 07:05:12.000000','0','1979-01-01','01:01:01'),(625,12,14,'Edwin onwonga','ededdneddy2030@gmail.com','0715738570','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hi \r\nI would like to b explained more about your cover n which can help me as well','2020-01-26 09:23:18.000000','0','1979-01-01','01:01:01'),(626,14,14,'Anthony Mutuku','ceo@rockwill.co.ke','+254704080347','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',1000000,'','2020-01-26 14:45:49.000000','0','1979-01-01','01:01:01'),(627,14,14,'Michel iland wanjugu','ilandmichel@gmail.com','0717239408','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'20 - 24',500000,'','2020-01-27 05:43:16.000000','0','1979-01-01','01:01:01'),(628,40,14,'Mercy Nampoi','nampoimercy5@gmail.com','0704464334','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-27 08:32:27.000000','Self employed','1979-01-01','01:01:01'),(629,15,14,'Joel Kibet','joekibet@gmail.com','0738880169','Nairobi','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',500000,'','2020-01-27 11:48:08.000000','0','1979-01-01','01:01:01'),(630,50,14,'Brigitte ','brigitte.muthoni@gmail.com','0722660577','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2020-01-27 12:52:29.000000','0','2020-01-27','01:10:00'),(631,15,14,'Prisca Jerobon','k.allantuwei@gmail.com','0716593455','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'18 - 23',500000,'','2020-01-27 13:05:53.000000','0','1979-01-01','01:01:01'),(632,15,14,'Collins Okello','omondiokelloh@gmail.com','0721926733','Kisumu','','','0','','','','','','',2,0,0,'',0,0.00,'35 - 39',300000,'','2020-01-27 14:39:29.000000','0','1979-01-01','01:01:01'),(633,15,14,'FAHIMA ISSA AHMED','imakanyi@yahoo.com','0721883945','MOMBASA','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'am 54 years and would like a suitable medical quote inclusive of dental/optical for both out/inpatient','2020-01-27 14:51:56.000000','0','1979-01-01','01:01:01'),(634,15,14,'Brian R','brianochiz@gmail.com','0727579008','Nairobi ','','','0','','','','','','',3,0,0,'',0,0.00,'24 - 25',100000,'','2020-01-27 14:54:51.000000','0','1979-01-01','01:01:01'),(635,15,14,'Diana Okado','diana.okado@revolution-analytics.co.ke','0724615355','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I would like to get health insurance cover for myself and my employees','2020-01-27 17:26:04.000000','0','1979-01-01','01:01:01'),(636,14,14,'John Doe','johndoe@gmail.com','0721123456','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',5000000,'','2020-01-27 18:10:07.000000','0','1979-01-01','01:01:01'),(637,24,14,'Ruth Waiganjo','ruthnwaiganjo@gmail.com','0727584378','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',0,'','2020-01-27 20:53:06.000000','0','1979-01-01','01:01:01'),(638,15,14,'Paul','paulkimotho@gmail.com','0722338629','Nairobi','','','0','','','','','','',3,0,0,'',0,0.00,'45 - 49',1000000,'','2020-01-27 22:31:19.000000','0','1979-01-01','01:01:01'),(639,50,14,'Kevin','Kevinayenza62@gmail.com','0707953355','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2020-01-28 08:45:38.000000','0','2020-01-28','08:45:00'),(640,15,14,'ERIC OMONDI','erickomondia@gmail.com','0705391813','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need more information on your medical cover for a family of 4. What are the premiums like?','2020-01-28 09:05:19.000000','0','1979-01-01','01:01:01'),(641,50,14,'deepak haria','haria.deepak@gmail.com','+256772820100','','','','0','','kindly forward me the email of your director mr. ashok shah.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-28 09:21:04.000000','0','1979-01-01','01:01:01'),(642,14,14,'Martha Njeri Gichanga','njeri061@gmail.com','0722800691','Nairobi','','','0','','','','','','',1,0,0,'',0,0.00,'40 - 44',500000,'','2020-01-28 12:46:27.000000','0','1979-01-01','01:01:01'),(643,6,14,'Allan Odongo','allanodongo@gmail.com','0726522749','Nairobi','Toyota','Crown','1000000','2008','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-28 13:58:04.000000','0','1979-01-01','01:01:01'),(644,6,14,'Solomon Mwangi Irungu','soloirungu@gmail.com','0718872673','thika','subaru','legacy','1600000','2013','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-28 14:55:05.000000','0','1979-01-01','01:01:01'),(645,6,14,'Benjamin Graeub','benigraub@gmail.com','0728587805','Nairobi','Suzuki','Escudo','950000','2014','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-28 15:48:42.000000','0','1979-01-01','01:01:01'),(646,50,14,'Tracie Muraya ','tracymuraya.tm@gmail.com','0721817048','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2020-01-28 23:34:31.000000','0','2020-01-29','08:30:00'),(647,50,14,'Hirana patel','Patelhirna@yahoo.com','0705772233','','','','0','','Will like to know more about medical insurance','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-29 08:28:04.000000','0','1979-01-01','01:01:01'),(648,15,14,'Sarah Ashley','seashley.uc@gmail.com','0717521026','Kilimani','','','0','','','','','','',0,0,0,'',0,0.00,'30 - 34',300000,'','2020-01-29 08:55:47.000000','0','1979-01-01','01:01:01'),(649,11,14,'Veronica Mutwiri','veronica.mutwiri@minet.co.ke','0723688841','Nairobi','','','100000','','','','','','Dog',1,0,0,'',0,0.00,'',0,'','2020-01-29 10:41:11.000000','0','1979-01-01','01:01:01'),(650,43,14,'Joseph Mwai','jrmwai@gmail.com','0724812832','Nairobi','','','100000','','','','','','Single Animal Cover',1,0,0,'',0,0.00,'',0,'','2020-01-29 10:43:51.000000','0','1979-01-01','01:01:01'),(651,43,14,'Joseph Mwai','jrmwai@gmail.com','0724812832','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Do you offer pet insurance? For a domestic dog? ','2020-01-29 10:45:00.000000','0','1979-01-01','01:01:01'),(652,11,14,'Joseph Mwai','jrmwai@gmail.com','0724812832','Nairobi','','','100000','','','','','','Dog',1,0,0,'',0,0.00,'',0,'','2020-01-29 10:50:06.000000','0','1979-01-01','01:01:01'),(653,50,14,'Hirana patel','Patelhirna@yahoo.com','0705772233','','','','0','','Medical insurance','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-29 12:09:34.000000','0','1979-01-01','01:01:01'),(654,14,14,'Tracie Muraya','tracymuraya.tm@gmail.com','+254721817048','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I am interested in the Jamii Plus cover. Principal - myself (40) and 1 dependent 9 years. How much would the premium be?','2020-01-29 13:45:05.000000','0','1979-01-01','01:01:01'),(655,24,14,'Dennis Kadenge','kadenge254@gmail.com','0712295813','Nairobi','','','0','','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'What&#39;s the minimum premium one can contribute to the individual retirement plan package.','2020-01-29 13:47:47.000000','0','1979-01-01','01:01:01'),(656,50,14,'Mejja John ','njengahjohn89@gmail.com','0723233728','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2020-01-29 15:45:57.000000','0','2020-01-30','15:45:00'),(657,50,14,'Erick Rono','erono@sianroses.co.ke','0720978757','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2020-01-29 16:20:29.000000','0','2020-01-29','16:20:00'),(658,20,14,'Nathaniel Muchiri','muchirinathaniel@gmail.com','0736307385','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'Hi,\r\nPlease advise, I (28yrs) need an education policy for my son (4yrs) the period is 8yrs and monthly installments of 3k. Please do a quote for me. I intend on starting 1st of Feb.\r\nThank you.','2020-01-29 18:27:45.000000','0','1979-01-01','01:01:01'),(659,12,14,'John muia muinduko ','johnmuia97@yahoo.com','0725009214','Nairobi ','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-29 19:36:01.000000','0','1979-01-01','01:01:01'),(660,6,14,'Evans muhoro','muhorogac@gmail.com','0732740995','Nyeri','Toyota','Fielder','600009','2010','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-29 20:08:59.000000','0','1979-01-01','01:01:01'),(661,14,14,'Fridah Gakii ','gakii29@gmail.com','0727202411','Nairobi ','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-29 21:51:15.000000','0','1979-01-01','01:01:01'),(662,50,14,'ZAHIR HEALTH CARE','alimbiti97@gmail.com','0704831279','','','','0','','Would like to be connected to the Mombasa branch','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-30 10:39:29.000000','0','1979-01-01','01:01:01'),(663,12,14,'Zacharia Njenga','zacharynjenga380@gmail.com','0796723162','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-30 11:10:09.000000','0','1979-01-01','01:01:01'),(664,50,14,'Miriti Mutembei Denis','miritichabs@gmail.com','0710264105','','','','0','','I have been working at St Anne Mission hospital Igoji since May 2016 to December 2019. How do I get to know my policy number and how to get my benefits? Please help','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-30 11:23:45.000000','0','1979-01-01','01:01:01'),(665,50,14,'Caroline Wairimu','provisions@verabeautycollege.com','0725705660','','','','0','','Can I get a recommendation on liability coverage,student acccident  coverage and staff health insurance options for a school in Nairobi CBD. ','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-30 11:37:46.000000','0','1979-01-01','01:01:01'),(666,50,14,'phelix joseph ','phelixonyando200@gmail.com','0745531133','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2020-01-30 12:46:01.000000','0','2020-01-31','12:43:00'),(667,14,14,'Dolphine Anyanga','dolphinesellah@gmail.com','0717980957','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I need more details on payment plans, legibility etc','2020-01-30 16:00:48.000000','0','1979-01-01','01:01:01'),(668,6,14,'Tanui Lucas','tanui.lucas100@gmail.com','0711701667','Nairobi-Westlands','Toyota','Allion','780000','2007','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-30 17:35:59.000000','0','1979-01-01','01:01:01'),(669,24,14,'Mercy Nyawira','nyaweh06@gmail.com','0703144217','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',0,'','2020-01-30 19:31:09.000000','0','1979-01-01','01:01:01'),(670,50,14,'Stanley Mwanzia Katiti','stanleymwanzia4@gmail.com','0799992151','','','','0','','Hi ,kindly please let me know if you offer Internship positions','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-30 19:59:52.000000','0','1979-01-01','01:01:01'),(671,14,14,'Maurine Aomo','aomomaurine3030@gmail.com','0710710668','Maai-mahiu','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',500000,'','2020-01-30 21:40:43.000000','0','1979-01-01','01:01:01'),(672,50,14,'Ayub Ndua Kanyeria','ayubndua@gmail.com','0748861330','','','','0','','Searching for an Actuarial industrial attachment','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-01-30 22:32:09.000000','0','1979-01-01','01:01:01'),(673,14,14,'Reenah esendi','reenahesendi2@gmail.com','0704370313','Nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'I would want to know the payment plan for the family cover and the people it covers . I am interested ','2020-01-31 11:49:17.000000','0','1979-01-01','01:01:01'),(674,50,14,'Sharlene Wangari','mwangisharlene@gmail.com','0707375075','','','','0','','','','','','callback',0,0,0,'',0,0.00,'',0,'','2020-01-31 12:02:49.000000','0','2020-01-31','12:05:00'),(675,15,14,'Muthoni Wanjohi','paulinewanjohi94@gmail.com','0715320311','nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',1000000,'','2020-01-31 13:05:53.000000','0','1979-01-01','01:01:01'),(676,40,14,'Evalyne Wambui ','evalyne@solami.co.ke','0715766162','Parklands, Nairobi Kenya','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-01-31 15:28:31.000000','Solami Limited ','1979-01-01','01:01:01'),(677,15,14,'Pristone Onanda ','pri.stone6@gmail.com','0712602495','Homa bay ','','','0','','','','','','',0,0,0,'',0,0.00,'24 - 25',100000,'','2020-02-01 09:10:48.000000','0','1979-01-01','01:01:01'),(678,6,14,'Gabriel Chan','onyangochan@gmail.com','0726751601','Kisumu','Mitsubishi','Canter','2500000','2011','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-02-01 11:54:44.000000','0','1979-01-01','01:01:01'),(679,15,14,'Samuel mureithi ','samuelwambugumureithi@gmail.com','0724120739','Nairobi ','','','0','','','','','','',2,0,0,'',0,0.00,'30 - 34',100000,'','2020-02-03 10:02:10.000000','0','1979-01-01','01:01:01'),(680,50,14,'brian','brayoz@rocketmail.com','0727599114','','','','0','','Hi, kindly share with me individual medical cover plans and payments options. Thank you.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-02-03 11:04:17.000000','0','1979-01-01','01:01:01'),(681,50,14,'Francis Kinyanjui','kinyanjui676.fk@gmail.com','0721562190','','','','0','','Kindly help me, my car was taken to a garage in Kericho after I unfortunately got an accident. Assessment was done and it has been waiting for your authority to do the repairs for the last one week. My work and movement has been significantly affected. Please help.','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-02-03 11:43:56.000000','0','1979-01-01','01:01:01'),(682,9,14,'Truphine alivitsa','truphinealivitsa@gmail.com','0715653169','','','','0','','','','','','',0,0,0,'',0,0.00,'',0,'','2020-02-03 12:33:28.000000','0','1979-01-01','01:01:01'),(683,6,14,'Monica','monicagathima@yahoo.com','0714206232','Nairobi','Nissan','Vanette ','1000000','2013','','','','','Contact Us',0,0,0,'',0,0.00,'',0,'','2020-02-03 13:42:07.000000','0','1979-01-01','01:01:01'),(684,14,14,'Efua','efua.muthoni@gmail.com','0745127839','Nairobi','','','0','','','','','','',0,0,0,'',0,0.00,'60 - 64',2000000,'','2020-02-03 14:25:00.000000','0','1979-01-01','01:01:01'),(685,18,14,'Nelson Ngari','nelsonngari04@gmail.com','0716700452','Mukurweini','','','150000','','','','','','',0,0,0,'',0,5.00,'24 - 25',0,'','2020-02-03 15:24:03.000000','0','1979-01-01','01:01:01'),(686,18,14,'Nelson','nelsonngari04@gmail.com','0716700452','Nyeri','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'How to have the highest sum assured ','2020-02-03 15:26:03.000000','0','1979-01-01','01:01:01'),(687,15,14,'Sheilah Bachu ','s.sheillah59@gmail.com','+254727823591','Mavoko','','','0','','','','','','',1,0,0,'',0,0.00,'24 - 25',1000000,'','2020-02-03 15:57:24.000000','0','1979-01-01','01:01:01'),(688,14,14,'PHILOMENAH MWALALU','dmwalalu2007@yahoo.com','+254723709555','MOMBASA','','','0','','','','','','',0,0,0,'',0,0.00,'20 - 24',1000000,'','2020-02-03 16:04:51.000000','0','1979-01-01','01:01:01'),(689,15,14,'PHILOMENA MWALALU','dmwalalu2007@yahoo.com','+254723709555','mombasa','','','0','','','','','','',0,0,0,'',0,0.00,'20 - 24',1000000,'','2020-02-03 16:06:49.000000','0','1979-01-01','01:01:01'),(690,45,14,'faith maina','faithmaina02@gmail.com','0743156607','nairobi','','','0','','','','','','request assistance',0,0,0,'',0,0.00,'',0,'kindly assist me with your accounts details','2020-02-03 16:29:01.000000','0','1979-01-01','01:01:01'),(691,22,14,'Charles Ombonya','reincharles@gmail.com','0726724399','Kisumu','','','500000','','','','','','',0,0,0,'',0,5.00,'35 - 39',0,'','2020-02-03 16:57:07.000000','0','1979-01-01','01:01:01');
/*!40000 ALTER TABLE `products_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_jobs`
--

DROP TABLE IF EXISTS `ref_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_jobs`
--

LOCK TABLES `ref_jobs` WRITE;
/*!40000 ALTER TABLE `ref_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_outbuilding_roofs`
--

DROP TABLE IF EXISTS `ref_outbuilding_roofs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_outbuilding_roofs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `primary key` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_outbuilding_roofs`
--

LOCK TABLES `ref_outbuilding_roofs` WRITE;
/*!40000 ALTER TABLE `ref_outbuilding_roofs` DISABLE KEYS */;
INSERT INTO `ref_outbuilding_roofs` VALUES (1,'Stone','2019-09-02 09:50:55.000000','2019-09-02 09:51:00.000000'),(2,'Brick','2019-09-02 11:08:12.000000','2019-09-02 11:08:16.000000');
/*!40000 ALTER TABLE `ref_outbuilding_roofs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_outbuilding_walls`
--

DROP TABLE IF EXISTS `ref_outbuilding_walls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_outbuilding_walls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `primary key` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_outbuilding_walls`
--

LOCK TABLES `ref_outbuilding_walls` WRITE;
/*!40000 ALTER TABLE `ref_outbuilding_walls` DISABLE KEYS */;
INSERT INTO `ref_outbuilding_walls` VALUES (1,'Stone','2019-09-02 09:50:55','2019-09-02 09:51:00'),(2,'Brick','2019-09-02 11:09:21','2019-09-02 11:09:25');
/*!40000 ALTER TABLE `ref_outbuilding_walls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_roof_materials`
--

DROP TABLE IF EXISTS `ref_roof_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_roof_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `roof id index` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_roof_materials`
--

LOCK TABLES `ref_roof_materials` WRITE;
/*!40000 ALTER TABLE `ref_roof_materials` DISABLE KEYS */;
INSERT INTO `ref_roof_materials` VALUES (1,'Stone','2019-09-02 09:50:55.000000','2019-09-02 09:51:00.000000'),(2,'Brick','2019-09-02 11:05:11.000000','2019-09-02 11:05:19.000000');
/*!40000 ALTER TABLE `ref_roof_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_wall_materials`
--

DROP TABLE IF EXISTS `ref_wall_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_wall_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `description` (`description`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_wall_materials`
--

LOCK TABLES `ref_wall_materials` WRITE;
/*!40000 ALTER TABLE `ref_wall_materials` DISABLE KEYS */;
INSERT INTO `ref_wall_materials` VALUES (1,'Stone','2019-09-02 09:50:55.000000','2019-09-02 12:51:00.000000'),(2,'Brick','2019-09-02 09:50:55.000000','2019-09-02 12:51:00.000000');
/*!40000 ALTER TABLE `ref_wall_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `other_number` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `kra` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_address` int(11) DEFAULT NULL,
  `city_town` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `county` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `unique customer_id` (`id`) USING BTREE,
  KEY `IX_Relationship21` (`password`) USING BTREE,
  KEY `phone` (`phone_number`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,1665378265,'ANTHONY','JOHN','DOE','anthonbaru@gmail.com','$2y$10$X41jZU/in8MV3SMMHVR95OBJ7/RcUfu3HhJZQIO1H33iUavSCpEMC','0700123456','073654321','12345678','A8528452568541P',9577,'Mombasa',300,'Mombasa',NULL,NULL,'2019-09-02 06:46:25.000000','2019-09-13 07:40:51.778244'),(6,26672089,'John',NULL,'Doe','anthonybaru@gmail.com','$2y$10$1oEUMNy1Il27sgIE23tO/u6iz1R66.Dpcq9fnbvAxbr6.jG3/GfXO','0712345678',NULL,'12345678','A8528452568541P',NULL,NULL,NULL,NULL,NULL,'ZYUm536fgGqnZmLlLUzuX77AHdvslsaorbrjlDZdX4OsEcSk4nMtHLSlJuDT','2019-09-03 07:33:38.000000','2019-09-03 08:01:37.000000'),(8,97772024,'John',NULL,'Doe','johndoe@gmail.com','$2y$10$QwzhIVSCEtj/ZR9h5yS6C.KDVufxRRhgCrwWkmOfmx7fbU/tGCdeq','0712345678',NULL,'12345622','A456982158I',NULL,NULL,NULL,NULL,NULL,NULL,'2019-09-04 11:42:41.000000','2019-09-04 11:42:41.000000'),(9,1418331771,'John',NULL,'Doe','johndoe@gmial.com','$2y$10$i/9Br7NeEiA8a7KE2KXqoOZQt4Y/39934Ix8v3IFm0cFle8uC51rC','0700658856',NULL,'3456','kra1236544',NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-08 08:52:38.537481','2019-10-08 08:52:38.537481');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-03 17:13:58
