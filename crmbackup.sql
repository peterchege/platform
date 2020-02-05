-- MySQL dump 10.13  Distrib 5.7.28-31, for Linux (x86_64)
--
-- Host: localhost    Database: prod_crm
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('2a103d61-1013-8f4a-6feb-5dfb764712b2','Test','2019-12-19 13:09:46','2019-12-19 13:09:46','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','',0,'a98007d2-dbdc-3dba-9261-5defb35a4621','','Insurance','','','','','','','',NULL,'0722556688',NULL,'http://',NULL,'',NULL,'','','','','','',NULL,''),('e103583e-d24d-cad3-c6a3-5df889eadc10','Judy Test','2019-12-17 07:51:33','2019-12-17 07:51:33','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941','Interested in Jamii Plus',0,'42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,NULL,NULL,'','','Nairobi','','','kenya',NULL,'0720123456',NULL,'http://',NULL,NULL,NULL,'','','','','',NULL,NULL,''),('efe014a5-6e8f-8811-7399-5df22671cb64','Gilbert Njoroge','2019-12-12 11:35:31','2019-12-12 11:35:31','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','',0,'a98007d2-dbdc-3dba-9261-5defb35a4621','','','','','','','','','',NULL,'',NULL,'http://',NULL,'',NULL,'','','','','','',NULL,'');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
INSERT INTO `accounts_contacts` VALUES ('e130e711-e5f7-67e7-9119-5df889bd706f','e0f6d79a-930d-3e67-ad67-5df889f7d086','e103583e-d24d-cad3-c6a3-5df889eadc10','2020-01-23 07:35:18',1);
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES ('2a103d61-1013-8f4a-6feb-5dfb764712b2',0.00000000,0.00000000,NULL,NULL),('e103583e-d24d-cad3-c6a3-5df889eadc10',0.00000000,0.00000000,'',''),('efe014a5-6e8f-8811-7399-5df22671cb64',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
INSERT INTO `accounts_opportunities` VALUES ('1424351a-f2c8-da9f-1ddf-5df889ac49aa','e35fabc5-a8a8-55c7-f1a3-5df8897737a5','e103583e-d24d-cad3-c6a3-5df889eadc10','2019-12-17 07:51:33',0);
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('10b84907-7999-6f23-211c-5defb05ea969','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','jjwg_Address_Cache','module',90,0),('11490050-e4d9-858e-c3e0-5defb0d18f9a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','ProspectLists','module',90,0),('1151efb4-7d67-f397-5fe3-5defb01a5fe6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Calls','module',90,0),('11e74fd4-1649-07d7-b5ac-5defb0b54b55','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','SurveyQuestionOptions','module',90,0),('12582267-91db-8a4d-2319-5defb0957512','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOD_IndexEvent','module',90,0),('125d8496-4424-876c-e8f7-5defb0557404','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOS_Product_Categories','module',89,0),('13300158-7d3e-1656-c873-5defb0468d4a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Calls','module',90,0),('133a2af3-3630-0a2d-ed84-5defb053686c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','ProspectLists','module',90,0),('13b3821c-9048-d510-bb1c-5defb0385337','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','SurveyQuestionOptions','module',90,0),('141d5710-fe5f-aa82-8ece-5defb09c4032','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOS_Product_Categories','module',90,0),('144f05d1-ff59-917a-70ee-5defb0cc4037','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOD_IndexEvent','module',90,0),('145d44ed-fc58-11b4-8550-5defb0448513','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','jjwg_Address_Cache','module',90,0),('15304e10-b83a-64e3-f270-5defb06bd0fc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','ProspectLists','module',90,0),('15377680-5570-0078-2edb-5defb0c39cb2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Calls','module',90,0),('15971c53-a272-f981-4fdf-5defb098ebbd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','SurveyQuestionOptions','module',90,0),('15bd2b9d-a181-6622-14b4-5defb0e85716','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOS_Product_Categories','module',90,0),('16659f61-0b12-7287-8ed3-5defb0279868','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOD_IndexEvent','module',90,0),('167008a5-3203-9081-cfc9-5defb090923d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOS_PDF_Templates','module',90,0),('17260669-0eee-8583-802e-5defb0012e33','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Calls','module',90,0),('176b80ea-ab99-cd7b-8673-5defb0abab5f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOS_Product_Categories','module',90,0),('178f313b-6aff-40a2-8750-5defb0599b52','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','jjwg_Address_Cache','module',90,0),('17ac486b-e14d-8985-7ed9-5defb007db00','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','SurveyQuestionOptions','module',90,0),('187968a5-7626-3124-2906-5defb0f75d1e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOD_IndexEvent','module',90,0),('1900a90e-b9c9-213e-0364-5defb0f403e6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Calls','module',90,0),('199e089a-c3c8-3647-1f14-5defb0c583e9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOS_Product_Categories','module',90,0),('1a59dbeb-bd1d-1552-c9b0-5defb045ea2c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOD_IndexEvent','module',90,0),('1acb6ca9-38ae-cd5f-ac47-5defb0c8cdd4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Calls','module',90,0),('1af10584-f7d9-83ab-1ac1-5defb0447e73','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','jjwg_Address_Cache','module',90,0),('1c242a8c-b24c-7cfc-46a1-5defb023d9af','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOS_Product_Categories','module',90,0),('1c2db588-982e-51fa-5837-5defb0e23d0f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOD_IndexEvent','module',90,0),('1c990b9a-4d46-4056-b20b-5defb0e4cf54','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','jjwg_Areas','module',90,0),('1def23bf-cda5-8770-18c4-5defb0f461ca','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOS_Product_Categories','module',90,0),('1dfc60fa-230b-600f-fcb9-5defb064926b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOD_IndexEvent','module',90,0),('1e45f18e-76e7-3378-041f-5defb0dfc826','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','jjwg_Address_Cache','module',90,0),('1efb0d63-1cb8-7c15-bb79-5defb0086a5a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOS_PDF_Templates','module',90,0),('1f3b3a44-7c57-03d3-b0d9-5defb0a3c2f3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','EAPM','module',89,0),('1fe73a11-397a-b95d-5eea-5defb0a37f95','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOS_Product_Categories','module',90,0),('201d4db7-43d1-842c-1d8f-5defb03acadc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','jjwg_Address_Cache','module',90,0),('203e5b4d-6cd2-33cc-3dba-5defb001d7d4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Prospects','module',89,0),('211231fb-1342-489e-18f3-5defb0ddf577','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','EAPM','module',90,0),('2204f252-d7d1-3f0a-ca9f-5defb039f4a5','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','jjwg_Address_Cache','module',90,0),('2220dc53-0d8a-5e78-bbb4-5defb0b62cc2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Prospects','module',90,0),('22c4d05f-3306-da2e-9e6b-5defb037cbc9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','EAPM','module',90,0),('23f4eb37-66af-7e89-cfe2-5defb0c6bf86','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Prospects','module',90,0),('2493d064-18ba-40f1-bcf5-5defb0b500f1','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','EAPM','module',90,0),('25b3c142-4bbd-d71b-4eee-5defb0563cae','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Prospects','module',90,0),('26807305-88f9-abeb-6ef7-5defb0417aec','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','EAPM','module',90,0),('277d9c34-3765-810c-fc43-5defb034d1c3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Prospects','module',90,0),('285d78fa-d0f1-92af-be2b-5defb0b58f92','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','EAPM','module',90,0),('28be28c4-6f33-6093-2fa0-5defb0138b0a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Emails','module',89,0),('29533fb8-8e0c-751b-ad86-5defb0e2f105','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Prospects','module',90,0),('2a4661ce-e3b8-5c93-1bd1-5defb036f572','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','EAPM','module',90,0),('2aca0a25-57f2-e6a5-2e8a-5defb0fc7f1e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Emails','module',90,0),('2acd2529-f4a1-c49b-c0f2-5defb00f1488','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','access','Employees','module',89,0),('2b0c51a5-004f-bdae-e6f3-5defb0ab8a53','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOD_Index','module',89,0),('2b126540-d95a-a6e4-daf0-5defb0fe6645','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Prospects','module',90,0),('2c0a4ecc-add5-b3d4-45e3-5defb0ca72bb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','EAPM','module',90,0),('2c8bedb7-9a7c-ab35-0d00-5defb06a6916','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Emails','module',90,0),('2cd45063-89f1-48e7-f126-5defb0e55e66','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Prospects','module',90,0),('2cea2d48-c73e-d012-6ea5-5defb012732d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOD_Index','module',90,0),('2cf67562-12cb-67bb-003f-5defb0d728e7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','view','Employees','module',90,0),('2d2a17e1-bab6-24f8-47da-5defb0fad176','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOS_Products','module',89,0),('2e6a2bb4-e520-a49c-d441-5defb068bb25','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Emails','module',90,0),('2e940ece-d467-25ab-c423-5defb053ced2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Spots','module',90,0),('2eb30f13-3551-eab2-b26d-5defb06e0793','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','list','Employees','module',90,0),('2ee3d14c-eb0b-7e64-d359-5defb073048b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOD_Index','module',90,0),('2f13c999-8ee3-c057-9dfa-5defb062b326','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOS_Products','module',90,0),('30183f45-85cc-204a-5423-5defb02c876f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Calls_Reschedule','module',89,0),('302bcbd8-3546-c947-fa43-5defb07ef9a0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Emails','module',90,0),('307aa8b0-9fd8-b93a-659a-5defb004c495','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','edit','Employees','module',90,0),('30d6352a-4214-fbc3-dc00-5defb08c16d3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOD_Index','module',90,0),('30fbbfd2-4013-2702-2a68-5defb07df22f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOS_Products','module',90,0),('31f8ff3a-a203-8ed2-1b84-5defb0d3bd5e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Emails','module',90,0),('321f0527-c850-dfa2-2904-5defb06f796d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Leads','module',89,0),('32443b5f-4871-d4f9-7b44-5defb098a308','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','delete','Employees','module',90,0),('32bff30e-0f9c-6652-bd82-5defb09b49b6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOD_Index','module',90,0),('32d4ee11-236b-e529-ecef-5defb07dfdbd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Calls_Reschedule','module',90,0),('33004252-3517-5f86-9ecb-5defb031c553','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOS_Products','module',90,0),('33dd538e-8a3c-c0cc-d36a-5defb0641bcd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Emails','module',90,0),('340f15e7-0069-1e95-3f3b-5defb07e8327','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Leads','module',90,0),('3416fb59-9b55-5c4d-8698-5defb0d158bd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','import','Employees','module',90,0),('348fca0c-22d3-b5fb-6282-5defb09737bf','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOD_Index','module',90,0),('34906ad3-613e-1701-8305-5defb02b0b6c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Calls_Reschedule','module',90,0),('35075a4b-2e16-0757-05df-5defb0f99520','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOS_Products','module',90,0),('35c4689e-2940-5789-18d2-5defb0e8a967','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','export','Employees','module',90,0),('35d819c7-ae9e-9a22-bac3-5defb0baae45','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Emails','module',90,0),('3640ddcd-cd77-08b9-5afb-5defb0ecbc98','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Calls_Reschedule','module',90,0),('3652385a-f8e1-d09d-a6b8-5defb0f74fe3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Leads','module',90,0),('3667ae36-c60f-4b58-c077-5defb0769ddd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOD_Index','module',90,0),('36e6bcb2-2d3f-c40f-ce67-5defb02a01f2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOS_Products','module',90,0),('379a75d7-db6a-7448-867c-5defb066877b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','massupdate','Employees','module',90,0),('37f201fb-b03a-42ed-248a-5defb006dd5c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Calls_Reschedule','module',90,0),('37fea5ff-4561-044d-d148-5defb0278fcf','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Leads','module',90,0),('384813c4-9ce3-4064-6236-5defb0567c8a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOD_Index','module',90,0),('38a8cce3-7cfd-be11-d014-5defb0379ed6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','EmailMarketing','module',89,0),('38c75569-f326-160d-4972-5defb0166472','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOS_Products','module',90,0),('39b8f6f1-f372-7d06-44ba-5defb0da9d54','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Leads','module',90,0),('3a56a23e-a650-7800-64ab-5defb008f6e2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Calls_Reschedule','module',90,0),('3a60ed9e-0220-052c-4638-5defb004be95','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','EmailMarketing','module',90,0),('3a7f0756-4559-6e8b-3951-5defb085cc29','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOS_PDF_Templates','module',90,0),('3acdc573-737f-ae6f-d1db-5defb003d36e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOS_Products','module',90,0),('3b62d416-838a-8a60-f8de-5defb0ab0292','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Leads','module',90,0),('3bf957a7-f9b5-456b-dc18-5defb074137d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','EmailMarketing','module',90,0),('3c0af95d-b758-418b-95c4-5defb05180d7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Calls_Reschedule','module',90,0),('3d2359d0-7586-3167-f93c-5defb03af32a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Leads','module',90,0),('3db6733f-a829-8d86-8d21-5defb0d715f5','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Calls_Reschedule','module',90,0),('3e5f72fd-fd97-58ba-88f7-5defb0699d4b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','EmailMarketing','module',90,0),('3eea6172-832a-4bde-76f5-5defb04eab4f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Leads','module',90,0),('4025d197-3d71-8383-d70d-5defb0f00f80','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','EmailMarketing','module',90,0),('41d3c4b7-b99e-5e44-210d-5defb0318008','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AM_ProjectTemplates','module',89,0),('4209f368-168f-6cc4-f28c-5defb0de5058','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','EmailMarketing','module',90,0),('43a156d1-fd07-d16c-191c-5defb047fb33','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AM_ProjectTemplates','module',90,0),('441ca63c-813a-37d4-16cf-5defb0f44db6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Meetings','module',89,0),('448cfb74-88e2-218c-cca1-5defb0152b10','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOP_Case_Events','module',89,0),('44c476bd-3dc7-fe27-da8d-5defb08e7967','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','EmailMarketing','module',90,0),('4556175c-6ba0-c48a-f890-5defb0f0e74b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AM_ProjectTemplates','module',90,0),('461ed3ed-cbd8-b34a-8768-5defb0b0d82f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Meetings','module',90,0),('46580ad0-3a6d-e7b8-f352-5defb0b92a60','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOP_Case_Events','module',90,0),('4694ab1c-be84-6d45-1ccb-5defb01f9adc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','EmailMarketing','module',90,0),('47394bc4-44f3-b324-4ed6-5defb0a25642','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AM_ProjectTemplates','module',90,0),('481e9bf7-7ec1-5bbe-4729-5defb0aa6a80','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOP_Case_Events','module',90,0),('4861715e-1734-be9a-48b0-5defb02a10c3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Meetings','module',90,0),('48f89032-224d-60ca-cb89-5defb0493b43','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AM_ProjectTemplates','module',90,0),('495f0be5-e4e2-cca1-1aec-5defb09d0fa9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','SecurityGroups','module',89,0),('4a0bc15c-9cba-f875-1eca-5defb05f4c67','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOP_Case_Events','module',90,0),('4a624acf-6eef-6ea3-e080-5defb0d013b4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Meetings','module',90,0),('4aa865ae-f160-bc1e-fd3d-5defb068b113','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AM_ProjectTemplates','module',90,0),('4b0ddd9d-7b48-a46d-8244-5defb055060c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','SecurityGroups','module',90,0),('4c079a17-541d-3bd3-756d-5defb06becea','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOP_Case_Events','module',90,0),('4c5ce81a-6d1a-cde6-fa29-5defb04c7342','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Meetings','module',90,0),('4c6ba287-f553-8602-7f06-5defb0e29d28','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AM_ProjectTemplates','module',90,0),('4cb5ebe6-69d8-4e5d-8458-5defb0c75c76','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','SecurityGroups','module',90,0),('4d020ed0-a666-87cb-df23-5defb0a57928','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Spots','module',90,0),('4e1639ba-fd61-6b89-3606-5defb02c38a6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOP_Case_Events','module',90,0),('4e4ef7ec-820e-f5ba-df13-5defb0d5c699','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Meetings','module',90,0),('4e721262-c6b6-b93a-7076-5defb0b6cbea','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','SecurityGroups','module',90,0),('4ea1578c-dd78-e1a5-e6e1-5defb05e177b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AM_ProjectTemplates','module',90,0),('4ff08444-f340-df19-7492-5defb045f866','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOP_Case_Events','module',90,0),('502774cb-cd9a-7983-20d6-5defb0d35af2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Meetings','module',90,0),('503065c0-cfe6-202f-097a-5defb0b1254c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','SecurityGroups','module',90,0),('51c1bcc6-e898-dd88-34af-5defb09d6ad8','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Cases','module',89,0),('51d9c8c7-7ce8-07a5-76fb-5defb0e6ecd9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOP_Case_Events','module',90,0),('51f474ea-f208-1467-84f2-5defb0f54f0a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','SecurityGroups','module',90,0),('52112cbb-1481-f7f6-de08-5defb0c35a4a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Meetings','module',90,0),('53b60e87-de24-c1ce-2c56-5defb0aab6ee','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','SecurityGroups','module',90,0),('53fe82c8-3c26-bff0-deb0-5defb0f88846','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Cases','module',90,0),('5564275c-e73b-aee8-b3a5-5defb0e0269f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','SecurityGroups','module',90,0),('556c0517-cedb-20c2-2004-5defb0d44d42','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOS_PDF_Templates','module',90,0),('55c248d7-a195-ac91-4f35-5defb01402ab','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Cases','module',90,0),('57a55d89-46ca-d0dd-c4b1-5defb0e51c70','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Cases','module',90,0),('597280e4-a20a-0287-283a-5defb0e6ca72','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Cases','module',90,0),('5b01a976-295c-e142-3246-5defb01203ca','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AM_TaskTemplates','module',89,0),('5b352c64-cf55-4af1-12b1-5defb0608781','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Cases','module',90,0),('5ce3ffae-b0c1-26b1-7ae0-5defb0c04ac8','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Cases','module',90,0),('5d8129d2-0d6f-fd52-347f-5defb08241ef','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AM_TaskTemplates','module',90,0),('5e2d9c00-70de-ec54-8bca-5defb018f64b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOP_Case_Updates','module',89,0),('5ea2f1ab-ad9e-24ea-53e1-5defb0df8845','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Cases','module',90,0),('5f017e57-fa10-cfdd-d37b-5defb06bfb70','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Tasks','module',89,0),('5f44c950-b743-02db-8539-5defb04754f2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AM_TaskTemplates','module',90,0),('5ffc238e-98f3-a800-0b1d-5defb0115231','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','OutboundEmailAccounts','module',89,0),('601011a1-9786-71c8-57d0-5defb069ed30','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOP_Case_Updates','module',90,0),('60f60d9e-8f2b-970d-9b14-5defb03f4338','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Tasks','module',90,0),('611e6677-ba82-539e-ca27-5defb09e5368','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AM_TaskTemplates','module',90,0),('61c8114e-69fc-d0b4-bda8-5defb0beb82c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','OutboundEmailAccounts','module',90,0),('61e843e8-787a-d7e8-844e-5defb077f71f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOP_Case_Updates','module',90,0),('62d4307c-a42e-43f9-6cd0-5defb0f2b62c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Tasks','module',90,0),('62df9681-d309-5816-1b90-5defb01f9915','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOS_Quotes','module',89,0),('62fe84c2-a24a-375b-2227-5defb05481b4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AM_TaskTemplates','module',90,0),('6383d8c4-e0ba-235d-34a5-5defb0eae567','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','OutboundEmailAccounts','module',90,0),('6426c4c4-a867-4803-81aa-5defb01b3938','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOP_Case_Updates','module',90,0),('64a82cbb-41bd-363d-893f-5defb033d58d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOS_Quotes','module',90,0),('64e43dd4-c4fb-51ad-9e4a-5defb04dedfb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Tasks','module',90,0),('6552dff1-0776-4d1d-fffc-5defb0b6e460','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','OutboundEmailAccounts','module',90,0),('659d5047-bbd9-debb-0bcc-5defb0d3917f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AM_TaskTemplates','module',90,0),('6636ee6e-e2c6-890d-f193-5defb05392ae','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOP_Case_Updates','module',90,0),('6656247a-bb12-5f7c-3284-5defb0b4bd16','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOS_Quotes','module',90,0),('66c0d58b-1776-305b-00af-5defb08ce129','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Tasks','module',90,0),('66feb3b2-4423-4bee-5cd8-5defb067fdf9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','OutboundEmailAccounts','module',90,0),('67a25e1c-ed6e-6f88-f22b-5defb03d53f9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AM_TaskTemplates','module',90,0),('6822f878-7983-1c38-be3d-5defb04e883d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOS_Quotes','module',90,0),('6836ceef-09cb-6477-4bb0-5defb0aa1e08','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOP_Case_Updates','module',90,0),('68bd5e81-afd6-61e8-3eb2-5defb0ede530','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Tasks','module',90,0),('69410327-0e35-28d0-b0aa-5defb0457df2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Spots','module',90,0),('694a45c1-4a94-e4db-ff45-5defb0899507','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','OutboundEmailAccounts','module',90,0),('69779e5f-0044-75eb-f10e-5defb094a1b1','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AM_TaskTemplates','module',90,0),('69d70e9c-21b4-a8f5-298e-5defb05e894a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOS_Quotes','module',90,0),('69fc9802-b0d6-711b-94c1-5defb0e5aa2a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOP_Case_Updates','module',90,0),('6aa6ce50-391b-421a-ba77-5defb0678cb6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Tasks','module',90,0),('6afac351-cc88-61ae-678b-5defb0fd892c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','OutboundEmailAccounts','module',90,0),('6b87b919-674d-5e73-5a7d-5defb0bec0b7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOS_Quotes','module',90,0),('6be4d05b-e677-2113-7fec-5defb0773c35','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOP_Case_Updates','module',90,0),('6c856c85-eb1b-c236-43df-5defb03fceae','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Tasks','module',90,0),('6ca6ebba-01bc-9244-b4d2-5defb05b8c0c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','OutboundEmailAccounts','module',90,0),('6d50c969-3c01-f65d-debd-5defb0a5485f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOS_Quotes','module',90,0),('6f11e437-4f56-ed6b-cde3-5defb0fe1e74','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOS_Quotes','module',90,0),('70444fde-2e0c-15da-d3bc-5defb0eef788','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Bugs','module',89,0),('71676aae-f27e-1e7c-868a-5defb0b33034','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Contacts','module',89,0),('7210f837-97a5-d125-00d8-5defb04be766','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Bugs','module',90,0),('737c8487-e076-8c6f-f0b0-5defb0a69fab','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Contacts','module',90,0),('7499f372-ba1e-8842-d9be-5defb0b6c6d0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Bugs','module',90,0),('753dbe2d-430d-b312-3b69-5defb0f93418','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Contacts','module',90,0),('763a9e98-9e7f-dee5-7a63-5defb0dc32ee','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Bugs','module',90,0),('7701d3fb-4e84-c39d-30c5-5defb06243dd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Contacts','module',90,0),('77e6dd08-96c4-a078-43d7-5defb0cb9ea0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Bugs','module',90,0),('77f62303-cf08-b468-5253-5defb0d28221','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','TemplateSectionLine','module',89,0),('78d75fb8-3195-3d34-05c6-5defb02ef964','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Contacts','module',90,0),('798e31cc-8d90-b785-d29a-5defb0275a4b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Bugs','module',90,0),('79a65718-6075-45a1-9204-5defb0267e48','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','TemplateSectionLine','module',90,0),('7a7b003a-fc07-554a-d1a4-5defb0d8bf98','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOR_Reports','module',89,0),('7aaef61f-3653-ac88-f767-5defb0b339fa','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Contacts','module',90,0),('7b35b05c-5ed9-c799-0876-5defb0e46a77','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Bugs','module',90,0),('7b5a3d81-34a8-db3e-4c8e-5defb0a3a338','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','TemplateSectionLine','module',90,0),('7c2c9424-f89e-ce1a-7473-5defb0fefcbb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('7c751f74-f89c-48bf-a01d-5defb04fcf7b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Contacts','module',90,0),('7ce91d04-a9eb-b2a5-1dd3-5defb00b2cc9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Bugs','module',90,0),('7d037420-e14e-5bc4-7bc9-5defb05de482','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOR_Reports','module',90,0),('7d09e086-dc08-75b0-cef0-5defb0efb6a7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','TemplateSectionLine','module',90,0),('7d640c0c-94c9-189e-7291-5defb03f4944','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','ProspectLists','module',89,0),('7dfe89d9-5ba5-3b89-96f2-5defb0ef56a4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('7e630c6d-4e64-8405-9096-5defb0d47c1a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Contacts','module',90,0),('7edc3d5c-3b30-7c40-5917-5defb0c5f55c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOR_Reports','module',90,0),('7ee36e81-2d31-9959-cfa0-5defb08fb600','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','TemplateSectionLine','module',90,0),('80032ba1-24d7-d751-eb6d-5defb0fe2bab','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('80a7679a-f2c0-c88e-acac-5defb03f449e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','TemplateSectionLine','module',90,0),('80aa4d16-da22-33b6-90b9-5defb08727a4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOR_Reports','module',90,0),('81ecb0ca-e76d-a4e1-31d7-5defb0dc1f5d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOW_WorkFlow','module',89,0),('81f88c78-feb9-fc50-ce6d-5defb0c1d562','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('82622186-e2a2-1200-4ae6-5defb0d0f7e2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOR_Reports','module',90,0),('8303b0fd-fa14-7673-0deb-5defb09d3ff4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','TemplateSectionLine','module',90,0),('83988822-34d3-ebb6-ea54-5defb079ca0e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOW_WorkFlow','module',90,0),('83d1cc78-742e-a7cf-52a2-5defb02687d7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('842027a0-1d39-344c-8eee-5defb01d1ad9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOR_Reports','module',90,0),('84c4a367-d4f3-04a1-73e8-5defb0e73f43','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','TemplateSectionLine','module',90,0),('85341f31-944e-859c-6bb5-5defb064760d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOW_WorkFlow','module',90,0),('859f4808-a4af-c5d5-d63c-5defb07ff96b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('85ecc0f6-933f-ae3a-4b1f-5defb0eb746a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOR_Reports','module',90,0),('86e80ce1-43d4-3297-df5f-5defb09a10c0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOW_WorkFlow','module',90,0),('87511bdf-f9ca-0b28-17d2-5defb09d975d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('87b261ee-0035-ef96-f4b8-5defb026876a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOR_Reports','module',90,0),('88ac1659-6c00-a158-96e5-5defb0c76d6b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOW_WorkFlow','module',90,0),('891e02fd-8dcd-3508-2066-5defb0f77687','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('8a744beb-50be-861b-2b68-5defb0fbbafe','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOW_WorkFlow','module',90,0),('8c1e1167-7b5e-f3bb-bc57-5defb022e706','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOW_WorkFlow','module',90,0),('8cb838db-4ddd-2684-4c28-5defb020cbe2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Users','module',89,0),('8cfa0a12-d37e-11c3-4509-5defb0d4a942','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Spots','module',90,0),('8e89de8c-7278-c8cf-8e33-5defb0451d65','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOW_WorkFlow','module',90,0),('8e95582f-8d1e-b1f3-c730-5defb095a4df','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Users','module',90,0),('904c5051-baa0-7427-2f7e-5defb05e0a5e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Users','module',90,0),('922bbadf-f39f-8634-5aa2-5defb0340086','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Users','module',90,0),('93d52452-53f2-ae10-1868-5defb06359d4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Accounts','module',89,0),('93eead5b-6b9c-1da0-11dc-5defb0cc2efa','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Users','module',90,0),('95569b54-299b-6f19-118e-5defb062a42f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOK_KnowledgeBase','module',89,0),('9583904b-9050-9ee8-332d-5defb02530a2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Accounts','module',90,0),('96079837-ae38-9846-b13c-5defb0426b43','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Users','module',90,0),('97179916-978f-46bb-5eec-5defb0d4fce4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOK_KnowledgeBase','module',90,0),('9733f145-e163-5353-c806-5defb03f1f96','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Accounts','module',90,0),('9761c89a-592e-f572-80cb-5defb08ea505','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','SurveyResponses','module',89,0),('97ea97e5-d4d4-e554-a194-5defb0108294','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Users','module',90,0),('98ce98f2-22f1-d099-b01d-5defb01b4df6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOK_KnowledgeBase','module',90,0),('98eaa17b-8c42-f53e-b675-5defb0966160','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Accounts','module',90,0),('99396ea2-1f69-dd6a-983e-5defb037f5bd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Alerts','module',89,0),('994341e3-1c16-a0b8-56d5-5defb0503d7b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','SurveyResponses','module',90,0),('99da87fb-dbfc-8f95-69d3-5defb0a80772','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Users','module',90,0),('9a9f93f6-0a42-c115-137a-5defb096d533','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOK_KnowledgeBase','module',90,0),('9aa91a64-1847-b08b-28b7-5defb00a30bd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Accounts','module',90,0),('9b1945d9-87f3-414f-9224-5defb0beaa5e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','SurveyResponses','module',90,0),('9b3227bd-2cee-062a-e653-5defb0065651','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Alerts','module',90,0),('9c0d015d-99e4-7729-3b90-5defb064c5fc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','ProspectLists','module',90,0),('9c56f3b5-a1e7-ae23-9824-5defb0b91983','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Accounts','module',90,0),('9c7da80e-dcdd-59ae-88d6-5defb09ffafe','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOW_Processed','module',89,0),('9cce6cc3-eb8e-ebb7-104c-5defb03a7375','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','SurveyResponses','module',90,0),('9ce241e8-0804-e5fb-0542-5defb049f9d4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOK_KnowledgeBase','module',90,0),('9d40346c-bd77-c3fc-1bcd-5defb0d89694','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Alerts','module',90,0),('9e1c972e-c011-1938-a754-5defb03f83cd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Accounts','module',90,0),('9e3c35ac-6969-a450-bc01-5defb0174ead','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOW_Processed','module',90,0),('9ea5404e-84ca-04eb-fc01-5defb02fcfe0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','SurveyResponses','module',90,0),('9ef0e3f0-d1fe-e4dc-fa0f-5defb0ee49bd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOK_KnowledgeBase','module',90,0),('9f41065f-202a-518c-cc6d-5defb04d6156','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Alerts','module',90,0),('9fe2e211-6f06-1a8f-e4bc-5defb01f3de3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Accounts','module',90,0),('a00ba3a0-4486-ae8e-a085-5defb0636a3f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOW_Processed','module',90,0),('a0595f0f-ebf1-c7d2-47ad-5defb047b03e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','SurveyResponses','module',90,0),('a060057f-ae99-a2ab-1600-5defb067346b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','SurveyQuestionOptions','module',89,0),('a0e61eb0-319f-8a38-6d8d-5defb066ee96','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOK_KnowledgeBase','module',90,0),('a147d02d-2567-aa22-9cb9-5defb09443f4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Alerts','module',90,0),('a1c19795-07fa-93a1-01e5-5defb0c7e05f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOW_Processed','module',90,0),('a22d0327-8a90-ee69-0c4b-5defb0b2412e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','SurveyResponses','module',90,0),('a2d7589c-dbda-023d-102a-5defb0b75f40','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOK_KnowledgeBase','module',90,0),('a34e7ff8-91c2-0928-bcfe-5defb09de056','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Alerts','module',90,0),('a384e750-ac0d-effc-f767-5defb082fd15','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOW_Processed','module',90,0),('a3f3cb35-de58-53b6-d71d-5defb0966071','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','SurveyResponses','module',90,0),('a52e1379-7cea-c9a0-a280-5defb07ca87b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOW_Processed','module',90,0),('a541cfb6-6467-5305-435a-5defb0f983fb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Alerts','module',90,0),('a5f6d462-af49-65b8-02f1-5defb0b41745','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOR_Scheduled_Reports','module',89,0),('a7140bb4-750b-b097-5d6b-5defb043f05b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOW_Processed','module',90,0),('a71ee1b0-3973-6348-c61a-5defb0e32387','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Alerts','module',90,0),('a7dc9e25-2a52-d8d2-99fe-5defb0a87427','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOR_Scheduled_Reports','module',90,0),('a8cbeeb6-b21a-493f-d289-5defb09e3b2a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOW_Processed','module',90,0),('a991892b-c8d8-5edb-d147-5defb0163c2c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOR_Scheduled_Reports','module',90,0),('a9fc0791-e201-07ac-5404-5defb0b2feb9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Spots','module',90,0),('aad4e11f-4b27-ee6f-5f33-5defb05df55b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Project','module',89,0),('ab459a6b-9319-efc5-84f2-5defb094be3d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOR_Scheduled_Reports','module',90,0),('acbd1875-9709-2ad8-6c4f-5defb0e26266','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Project','module',90,0),('acf9166f-67b8-347a-6492-5defb02232ea','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOR_Scheduled_Reports','module',90,0),('ae7d13e8-02f1-af13-b3c4-5defb094fa38','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Project','module',90,0),('aea8f87f-3773-7857-e895-5defb0a1fb13','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOR_Scheduled_Reports','module',90,0),('b029310c-9f35-f816-9879-5defb0cbfb5e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Project','module',90,0),('b0663e71-ae3e-7dab-402f-5defb01420e0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOR_Scheduled_Reports','module',90,0),('b0cd6030-c9c2-df35-ea3c-5defb0a99ead','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Surveys','module',89,0),('b2266d64-9782-6383-6c8c-5defb046a074','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Project','module',90,0),('b2509f7b-7113-66ca-a14b-5defb0a54b7f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('b2b580ed-9d47-c042-a888-5defb0009ae5','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Surveys','module',90,0),('b2df7a91-cf61-eaf9-d7e9-5defb09e9d1e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Opportunities','module',89,0),('b4099cfd-3d38-a533-6bfb-5defb05d63ce','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Documents','module',89,0),('b448d988-a96f-aa80-0edc-5defb0e37ff3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Project','module',90,0),('b486d64e-6473-a5f0-7980-5defb0310547','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Opportunities','module',90,0),('b48d6e79-c720-5b7c-ca1c-5defb0f1e5c3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Surveys','module',90,0),('b5df8666-29b9-68d3-0bd5-5defb07a96c1','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','jjwg_Maps','module',89,0),('b5e81258-f3b9-7fd9-4647-5defb0b586ad','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Documents','module',90,0),('b619dbda-c64f-e673-91a9-5defb0821957','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Project','module',90,0),('b62043ed-abf8-c14b-3628-5defb002e416','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Opportunities','module',90,0),('b645a859-5d53-d9b1-0610-5defb04785a8','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Surveys','module',90,0),('b7ab861d-bd31-47fb-2162-5defb0560cac','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','jjwg_Maps','module',90,0),('b7beecd4-5159-c9a9-9476-5defb01eb7d7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Opportunities','module',90,0),('b7d054ab-696f-f36e-0c07-5defb04a2745','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Documents','module',90,0),('b7d70a84-c07b-7fb2-82d7-5defb0e4b03b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Project','module',90,0),('b81d6de0-6763-8dd2-e0fb-5defb0a76db8','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Surveys','module',90,0),('b96a122b-02af-35ff-9ab3-5defb0c73b27','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Opportunities','module',90,0),('b972ae70-323f-9e43-0e80-5defb0c5c2a8','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','jjwg_Maps','module',90,0),('b9b05ce8-7fc7-da6d-0bf2-5defb0d8ac2a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Documents','module',90,0),('b9d08659-0191-676b-23a1-5defb08975d4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOS_Contracts','module',89,0),('b9f084f0-10ff-de27-74a3-5defb0673eeb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Surveys','module',90,0),('ba6e09e8-6ca2-30ca-7e74-5defb0e2b79e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','ProspectLists','module',90,0),('bb15fe6e-17dd-28df-5c74-5defb0155261','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','jjwg_Maps','module',90,0),('bb1e8192-d5cb-eae2-4d28-5defb08ff994','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Opportunities','module',90,0),('bb7bdc19-ea56-628e-4410-5defb0d83c97','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Documents','module',90,0),('bbae7aca-8b4b-8b2c-e6a7-5defb04acb2b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOS_Contracts','module',90,0),('bbcbb409-0ec9-506c-3032-5defb01d4462','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Surveys','module',90,0),('bcd841cb-96c0-e63c-4de9-5defb0a0e925','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','jjwg_Maps','module',90,0),('bcea1fe2-9490-d0ec-b34a-5defb087cd5d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Opportunities','module',90,0),('bd496c49-baea-1019-c122-5defb0a074c0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Documents','module',90,0),('bd7cc519-f987-eacc-c015-5defb0b80499','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOS_Contracts','module',90,0),('bdacc8dc-f7cd-4ab3-2c9a-5defb0e4a054','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Surveys','module',90,0),('be9693a3-7107-9049-3bf8-5defb04cf4cf','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','jjwg_Maps','module',90,0),('beaeb7f2-67ce-9e0c-bd3b-5defb08583da','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Opportunities','module',90,0),('bf341afb-20ae-fcac-2725-5defb0da6a2a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Documents','module',90,0),('bf6065ed-8232-fa99-334e-5defb024fd80','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOS_Contracts','module',90,0),('c0210a9c-5428-e03a-ee0c-5defb0dba60b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','SurveyQuestionOptions','module',90,0),('c04c5902-dca5-fe33-cd8e-5defb098d56d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','jjwg_Maps','module',90,0),('c11dd86b-3619-e0d5-f665-5defb056e922','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Documents','module',90,0),('c149fdfa-f3b5-7a8a-f952-5defb0a1ddd8','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOS_Contracts','module',90,0),('c1e3dddf-3904-7165-12c6-5defb06ab182','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','jjwg_Maps','module',90,0),('c2aa7a9d-117a-2f68-b9fb-5defb025647c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','ProjectTask','module',89,0),('c3b60646-b733-c484-2f24-5defb03af1fc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOS_Contracts','module',90,0),('c463c277-df7b-5830-64b3-5defb0bdf065','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','ProjectTask','module',90,0),('c5819c9e-c564-19f4-fd28-5defb015d016','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOS_Contracts','module',90,0),('c6108745-498b-e098-7d92-5defb0fad5bc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','ProjectTask','module',90,0),('c74bc590-a503-3cd8-9fa8-5defb0c196bb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOS_Contracts','module',90,0),('c7d8b51f-1b86-ed76-a47a-5defb0d4bff5','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','ProjectTask','module',90,0),('c8c40845-c4a4-012f-9342-5defb0540bcd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Calls','module',89,0),('c988940f-0fc6-680a-6056-5defb07127e1','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','ProjectTask','module',90,0),('cae33ec0-641f-741b-c0e5-5defb009d9e3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','SurveyQuestionResponses','module',89,0),('cb26511b-b206-d356-384b-5defb072005b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','ProjectTask','module',90,0),('ccc89a53-ab79-17ef-bd28-5defb01d7c21','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','ProjectTask','module',90,0),('ccfce306-4e7f-6632-7722-5defb03775c1','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','FP_events','module',89,0),('cd0d5dac-0b52-98ad-0b59-5defb0f15b66','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','SurveyQuestionResponses','module',90,0),('ce77838c-9d9b-7b28-b99f-5defb03baa72','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','ProjectTask','module',90,0),('cedb6cdc-050e-23a4-f984-5defb021c95f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','SurveyQuestionResponses','module',90,0),('cedf72e7-d000-af9f-2277-5defb0b4283c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','FP_events','module',90,0),('cfc675ba-0333-11a4-4c03-5defb013b036','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','EmailTemplates','module',89,0),('d03809f0-7851-c709-6a86-5defb0c1d259','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','jjwg_Markers','module',89,0),('d0a0a61b-a754-be47-192d-5defb07e30f5','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','SurveyQuestionResponses','module',90,0),('d0bb526a-712a-1908-d931-5defb0172e9c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','FP_events','module',90,0),('d18d1563-e564-07f1-1d38-5defb023c280','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','EmailTemplates','module',90,0),('d208d0c3-e6ff-59a9-3a49-5defb0770911','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','jjwg_Markers','module',90,0),('d257a1f3-57a8-3252-594c-5defb0d8cb9e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','SurveyQuestionResponses','module',90,0),('d28aa42d-a27a-3f31-62bd-5defb09d5eb5','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','FP_events','module',90,0),('d3588818-654b-3258-1d0d-5defb0778af3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','EmailTemplates','module',90,0),('d3c43dc1-2bba-3fbf-c0b7-5defb0b561c8','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','jjwg_Markers','module',90,0),('d3f37a6f-fd6e-bc41-9073-5defb08d5b8f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','SurveyQuestionResponses','module',90,0),('d46265a3-9f1f-ff3b-2efe-5defb0176efc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','FP_events','module',90,0),('d4fb76f6-5a2c-9d9d-1590-5defb042e412','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','EmailTemplates','module',90,0),('d515e0e4-68eb-3eb5-b4d0-5defb0ff15bd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOS_Invoices','module',89,0),('d572110e-e5ef-b13c-4e23-5defb06db19c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','jjwg_Markers','module',90,0),('d5a06b0c-72df-409f-ebde-5defb0983a50','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','SurveyQuestionResponses','module',90,0),('d616bc88-358d-8279-99fd-5defb09c67f9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','FP_events','module',90,0),('d6aa49b1-d0e2-2823-5d1b-5defb0f74ebd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','EmailTemplates','module',90,0),('d6f5b10c-5bca-364f-e3d8-5defb0d59149','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOS_Invoices','module',90,0),('d71e0715-a795-4e52-f416-5defb0dad960','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','jjwg_Markers','module',90,0),('d74447f3-6e64-47f6-ae51-5defb0417bcc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','SurveyQuestionResponses','module',90,0),('d7e808b4-5455-d999-84dd-5defb0f46519','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','ProspectLists','module',90,0),('d7f79930-da46-613a-e559-5defb07a0a70','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','FP_events','module',90,0),('d86bcd99-77fa-0510-aec2-5defb0593d20','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','EmailTemplates','module',90,0),('d8b08be8-12b8-5bdc-1648-5defb0a18bcc','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOS_Invoices','module',90,0),('d8d68fdc-7db2-7ac2-fe49-5defb06b66a4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','jjwg_Markers','module',90,0),('d9f55ad1-af16-2f16-1fa2-5defb0b97b23','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','FP_events','module',90,0),('da2d3986-6f4b-ef31-caf5-5defb0b27702','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','EmailTemplates','module',90,0),('da615c3e-e077-f8bf-910d-5defb025b1f7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOS_Invoices','module',90,0),('da83a0bb-a247-7503-09fc-5defb087bc74','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','jjwg_Markers','module',90,0),('dc0414c1-82e5-2903-bf76-5defb0e6397d','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','EmailTemplates','module',90,0),('dc0a0daa-0340-579e-cbc8-5defb05572d3','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','jjwg_Address_Cache','module',89,0),('dc204df5-3f34-4168-eb7e-5defb0d9221c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','AOS_Invoices','module',90,0),('dc3885e6-3cce-a96a-0f39-5defb015a2ca','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','jjwg_Markers','module',90,0),('ddccd3ab-1718-dd63-aafb-5defb0a85dcf','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','AOS_Invoices','module',90,0),('ded312e2-d4f1-177c-95af-5defb057f65c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Campaigns','module',89,0),('df8f39a6-50eb-e2e7-63ba-5defb0bf1526','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','AOS_Invoices','module',90,0),('e0901e0d-b225-efa4-4f6b-5defb09f2b16','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Campaigns','module',90,0),('e12abdfa-6483-8bec-6893-5defb039b1f9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','AOS_Invoices','module',90,0),('e24baf29-fc14-4fff-0aff-5defb04657ec','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Campaigns','module',90,0),('e287065d-7348-8dbd-d5c9-5defb03c7584','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','SurveyQuestionOptions','module',90,0),('e3c8ff5e-4831-52c7-270e-5defb01c21d6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','SurveyQuestions','module',89,0),('e3d564e7-1aa4-fa78-05de-5defb0ccc4cf','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Campaigns','module',90,0),('e5d1f26b-3cee-6760-cdb8-5defb0755753','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','FP_Event_Locations','module',89,0),('e5e1d63f-ccdc-30c2-3310-5defb03173f9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Campaigns','module',90,0),('e5faae26-e78d-ea3f-2ff0-5defb08e0bf2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Notes','module',89,0),('e643b7d7-62f1-c7be-1f43-5defb05036de','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','SurveyQuestions','module',90,0),('e7b350e6-b1fa-e093-553f-5defb0efc92e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Campaigns','module',90,0),('e7d12ef9-b0bb-89ed-6895-5defb035dec2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','FP_Event_Locations','module',90,0),('e7d3688b-6843-55d0-413b-5defb022315b','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Notes','module',90,0),('e7ed1269-3f6a-0700-3657-5defb08e2256','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','SurveyQuestions','module',90,0),('e87d3c5f-bffc-def5-db3f-5defb02b9d6f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','jjwg_Areas','module',89,0),('e966405e-0aec-1d5e-6abe-5defb0cf9aae','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Campaigns','module',90,0),('e98d76cc-7f97-d0d6-c0a1-5defb09c69a9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','FP_Event_Locations','module',90,0),('e990b6b8-aaf9-1908-9c1e-5defb0e1b694','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Notes','module',90,0),('ea6319ca-75fb-7e19-7aad-5defb0e2a0a0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','jjwg_Areas','module',90,0),('ea739ba9-5090-e5d5-1aa9-5defb0412f41','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','SurveyQuestions','module',90,0),('eb32fb2a-b094-b95b-bfb6-5defb0028698','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Campaigns','module',90,0),('eb4b4bec-ef5c-71ae-edab-5defb0b04528','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','FP_Event_Locations','module',90,0),('eb75fb75-2ac0-2bc3-3016-5defb07599ab','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','Notes','module',90,0),('ec0ad0d4-a886-ed2f-2e03-5defb0350f32','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','jjwg_Areas','module',90,0),('ec374b37-cdd7-fe6a-e14c-5defb03c19f9','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','SurveyQuestions','module',90,0),('ed23acdf-ac0b-6bf3-1b61-5defb07f0fe5','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','FP_Event_Locations','module',90,0),('ed536400-c97d-7f53-4a3d-5defb0d32243','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','Notes','module',90,0),('ed79e3d0-7abe-56ea-2e16-5defb0a621e4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOS_PDF_Templates','module',89,0),('edc45486-8834-6763-5e0c-5defb01f7feb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','jjwg_Areas','module',90,0),('ee038e56-e546-7605-8e8a-5defb008fcbb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','SurveyQuestions','module',90,0),('ee160760-a84b-6dfe-9d5d-5defb0ce1f00','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','AOD_IndexEvent','module',89,0),('ef03df0d-4773-36a7-9371-5defb0185415','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','FP_Event_Locations','module',90,0),('ef35b297-ab47-46d9-be68-5defb00b7d19','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','AOS_PDF_Templates','module',90,0),('ef3922cd-fcf5-b710-a53a-5defb06e6932','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','Notes','module',90,0),('ef8df2f8-63e2-3e10-1195-5defb030ec78','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','jjwg_Areas','module',90,0),('efd3415e-6885-1dd1-daba-5defb02ba9e1','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','SurveyQuestions','module',90,0),('f0cd2d1c-a734-1a14-e508-5defb09b81f0','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','FP_Event_Locations','module',90,0),('f0dc0279-8b41-1045-cee2-5defb008e115','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','AOS_PDF_Templates','module',90,0),('f10f2fa9-f330-d314-9a82-5defb0baf8f7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','Notes','module',90,0),('f172d159-4695-05ff-b60b-5defb037a0d6','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','import','jjwg_Areas','module',90,0),('f17fe2c8-97bb-58b9-ba98-5defb0086ba2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','access','Spots','module',89,0),('f19a262a-ff0f-2c45-69c1-5defb06a4edd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','SurveyQuestions','module',90,0),('f28d6045-40bb-26aa-b262-5defb07b7210','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','AOS_PDF_Templates','module',90,0),('f2af4dfb-1c77-228b-fadb-5defb0720939','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','FP_Event_Locations','module',90,0),('f300a5c8-223d-78b6-faac-5defb0e44535','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','massupdate','Notes','module',90,0),('f356f043-2b82-3895-ef53-5defb003ad06','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Spots','module',90,0),('f4014697-3312-a8ca-4449-5defb0d5d27f','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','export','jjwg_Areas','module',90,0),('f587094a-ca00-c8a1-dcc3-5defb067456c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','delete','ProspectLists','module',90,0),('f6a70759-3716-f60c-a141-5defb0c18f83','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','view','Calls','module',90,0),('f9800135-b9d6-1528-10db-5defb0076bb7','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','list','Spots','module',90,0),('ff7707b9-8a26-5efc-8773-5defb04ff6b2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','','edit','SurveyQuestionOptions','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2019-12-10 14:52:35','2019-12-10 14:52:35','1','1',NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
INSERT INTO `aod_indexevent` VALUES ('10acddb2-7b4e-56b9-6e7a-5df8898376d2','Judy Test','2019-12-17 07:51:34','2019-12-17 07:51:34','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,NULL,NULL,1,'e103583e-d24d-cad3-c6a3-5df889eadc10','Accounts'),('10ce3af2-ec5a-c636-a55c-5e19c1ee7566','Type changed from  to Life.','2020-01-11 12:38:41','2020-01-11 12:38:41','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'c5d6075c-0e7e-341e-b8db-5e19c13bbb24','AOP_Case_Events'),('116cd0af-3f10-6fdf-b324-5e26c20658cc','Status changed from  to Open_New.','2020-01-21 09:22:50','2020-01-21 09:22:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'df6b260a-78e6-8fb5-d8b5-5e26c2dc9aae','AOP_Case_Events'),('131e7fc0-d7fb-9d96-9478-5e26f37ffac1','Status changed from  to Closed_Closed.','2020-01-21 12:51:46','2020-01-21 12:51:46','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92',NULL,0,NULL,NULL,1,'f6980917-f9ad-8a67-1b15-5e26f3e87941','AOP_Case_Events'),('1679ff74-50df-a615-3076-5e26c288cf56','Assigned User changed from  to tabitha.kimani@apainsurance.org.','2020-01-21 09:22:51','2020-01-21 09:22:51','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'138efc85-44df-bf69-cd19-5e26c2ee3dec','AOP_Case_Events'),('16dfdc95-3410-4bd3-c933-5e22d497784d','KBU 444B','2020-01-18 09:50:55','2020-01-18 09:52:16','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,'',NULL,1,'c299e2e1-630f-47a4-401d-5e22d4cde170','Cases'),('171fe567-0fa5-f385-1e77-5e26f3a4a432','INQUIRY ON HER VEHICLE AFTER AN ACCIDENT','2020-01-21 12:48:35','2020-01-21 12:48:35','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d',NULL,0,NULL,NULL,1,'e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e','Cases'),('18a5c3c2-e397-d23b-2084-5e19c1378ce7','Test','2020-01-11 12:38:41','2020-01-11 12:38:41','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'da6ca215-c81f-9928-82cd-5e19c1280d75','Cases'),('1b59fda8-3c72-47dd-8ac0-5e26c29a3c36','Type changed from  to Health.','2020-01-21 09:22:51','2020-01-21 09:22:51','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'183cb472-108b-e899-e81f-5e26c2e61278','AOP_Case_Events'),('1d1e225f-a4f5-db04-9dc8-5e1c0b646652','Priority changed from  to P1.','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'11c25595-85b5-95fe-74f0-5e1c0b247d2c','AOP_Case_Events'),('1d3e4c73-4127-806d-8010-5df8897b9ecd','Jamii Plus','2019-12-17 07:51:34','2019-12-17 07:51:34','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,NULL,NULL,1,'e35fabc5-a8a8-55c7-f1a3-5df8897737a5','Opportunities'),('1ddcad27-5788-9a5f-62e2-5e2764d00dfe','Target list test','2020-01-21 20:52:39','2020-01-28 07:16:10','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'',NULL,1,'156caf33-42c6-e37c-ef3e-5e27649abeb4','ProspectLists'),('2223d545-3f4a-d37f-9d80-5e26f32bbc3f','Assigned User changed from  to Linda.walucho@apainsurance.org.','2020-01-21 12:51:46','2020-01-21 12:51:46','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92',NULL,0,NULL,NULL,1,'14f8c044-4a1e-3d78-5922-5e26f3a91ebb','AOP_Case_Events'),('229c6dd7-5682-66af-0846-5e26c2f07384','MEDICAL CARD','2020-01-21 09:22:51','2020-01-21 09:22:51','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'c714dc90-a380-33c2-7b51-5e26c22b6946','Cases'),('234836cc-ddb4-93ac-7a0e-5e26f325c37d','Miss  Kimani','2020-01-21 12:50:44','2020-01-21 12:50:44','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'cbc204d7-3f9b-33b0-fa2f-5e26f3eff98c','Leads'),('23f20d7b-12e7-40d1-31b6-5e1c0be0f741','Status changed from  to Open_New.','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'1f282bac-8cde-699f-2d42-5e1c0b2eb300','AOP_Case_Events'),('274a1752-990c-8803-cbaa-5e26f3503568','Type changed from  to Health.','2020-01-21 12:51:46','2020-01-21 12:51:46','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92',NULL,0,NULL,NULL,1,'2472fe07-c819-9fc9-75f5-5e26f3bb2e59','AOP_Case_Events'),('2a9562d5-9fe4-6810-820d-5e1c0beea638','Assigned User changed from  to Gilbert Njoroge.','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'25dc888d-5218-c6f7-6415-5e1c0b2df314','AOP_Case_Events'),('2c4d035d-5e06-63c3-e75c-5e26f32dbae8','Status changed from  to Open_New.','2020-01-21 12:48:35','2020-01-21 12:48:35','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d',NULL,0,NULL,NULL,1,'f2d796c0-5e37-4875-9f11-5e26f3969168','AOP_Case_Events'),('315d647e-7bd6-339d-deac-5e1c0ba869df','Type changed from  to Life.','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'2c83921b-1546-d560-1f54-5e1c0b912faf','AOP_Case_Events'),('316edba3-9d06-c683-bf76-5e26f36d2e79','DELAYED APPROVAL','2020-01-21 12:51:46','2020-01-21 12:51:46','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92',NULL,0,NULL,NULL,1,'15f4036a-578d-7f8c-4f53-5e26f3dc5aab','Cases'),('38b20337-b36a-796b-516b-5e22d4e16508','Type changed from  to Motor.','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'ef42eab3-499e-8f71-8484-5e22d4269311','AOP_Case_Events'),('39c6f47a-f3db-3492-7aef-5e1c26f532c9','Priority changed from  to P1.','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'2e9798bf-bcd6-82b7-ae2a-5e1c2673689d','AOP_Case_Events'),('3afa0bd7-4363-8379-16b2-5e2166e63f44','Priority changed from  to P1.','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,NULL,NULL,1,'29469d17-345f-af4c-ce63-5e2166c89eb1','AOP_Case_Events'),('3b23a7d3-eaaf-455d-a40b-5dfb76baac49','Test','2019-12-19 13:09:46','2019-12-19 13:09:46','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'2a103d61-1013-8f4a-6feb-5dfb764712b2','Accounts'),('3c740e5d-c418-f790-3ca6-5e19c102803f','Status changed from  to Open_New.','2020-01-11 12:38:41','2020-01-11 12:38:41','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'f1939fc6-7b0c-c86d-5332-5e19c1d1a190','AOP_Case_Events'),('3c75c52a-8a05-d856-e58c-5e1c0b3a85db','Test 2','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb','Cases'),('40e814c8-a760-2795-ba0b-5e144aad4f6b','marketing','2020-01-07 09:07:04','2020-01-07 09:07:04','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'334e0f2c-07e3-d1f4-4868-5e144ad27152','Meetings'),('415057e7-3b46-d18e-3028-5e1c26da8b80','Status changed from  to Open_New.','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'3baefb0a-0867-8265-acd5-5e1c26a8c4e2','AOP_Case_Events'),('432b173c-445f-23f9-b2ea-5e2166a9e1de','Status changed from  to Open_New.','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,NULL,NULL,1,'3cd38d3d-ee70-26e7-6f5c-5e2166d172be','AOP_Case_Events'),('4b966bf8-d8ad-e6bc-5adb-5e2166ed1034','Assigned User changed from  to juddy.tonui@apollo.co.ke.','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,NULL,NULL,1,'453e5d0d-3413-8be2-2031-5e216679176d','AOP_Case_Events'),('4d10fc14-2de6-c4b8-e504-5e1c265c50dd','Assigned User changed from  to Gilbert Njoroge.','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'4327c0f4-3d7d-3758-b3da-5e1c26cd03f6','AOP_Case_Events'),('4f72d0ca-8ba5-67bb-4d44-5e2fcf6b5609','Priority changed from  to P1.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'4464424e-a758-8e40-6f85-5e2fcf67138b','AOP_Case_Events'),('50930c73-bca5-7d26-a237-5e2fcffac92f','Status changed from Open_Assigned to Closed_Closed.','2020-01-28 06:07:29','2020-01-28 06:07:29','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'ebc89b63-0bcf-b604-2c43-5e2fcf50b607','AOP_Case_Events'),('53a82490-4f99-88d0-1be3-5e21669d8c6e','Type changed from  to Motor.','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,NULL,NULL,1,'4d696aa4-0520-fcde-3cf9-5e2166c377a8','AOP_Case_Events'),('548e0a5b-26bc-bebf-bfbf-5df889bdbb6f','Ms. Doris Sabaya','2019-12-17 07:51:34','2020-01-23 07:35:18','13632602-529c-6bd5-770d-5e1c35bc5171','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,'',NULL,1,'e0f6d79a-930d-3e67-ad67-5df889f7d086','Contacts'),('54e421f6-2a86-e111-fa67-5e1c26a03b02','Type changed from  to Life.','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'4f256484-05d0-9774-dd16-5e1c26b490e5','AOP_Case_Events'),('55696f09-881b-72c1-8fad-5e2fcf3abdc4','Status changed from  to Open_Assigned.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'5152b5e9-c311-b8cc-545d-5e2fcf81b3ea','AOP_Case_Events'),('5bc5ddbf-ffa6-29a0-36f0-5e2fcfb4e578','Assigned User changed from  to Charity.Kibiku@apainsurance.org.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'5774653f-1a93-ec43-7010-5e2fcf68d203','AOP_Case_Events'),('5e3898c8-111a-a800-6a56-5e21669441c6','KCK 667Y','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,NULL,NULL,1,'2306a4e8-3bb1-12ab-3817-5e2166607f9e','Cases'),('5e6b289d-3a54-ea42-41cd-5e1c266e8ad8','Juddy Tonui','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'287c7969-15eb-cf56-511f-5e1c2670fa63','Cases'),('6202f851-5ef0-002a-14e1-5e2fcfb36013','Type changed from  to Motor.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'5dadb6c6-3280-ea3f-15b8-5e2fcf5e5a36','AOP_Case_Events'),('673e177d-699b-a1cc-c053-5e26f1825888','Ms. Margaret upperhill','2020-01-21 12:41:52','2020-01-21 12:41:52','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f',NULL,0,NULL,NULL,1,'243ce368-5d75-fedc-0e21-5e26f15afa90','Leads'),('6aacff2a-179c-9c1a-1c8d-5e2fcf4b62ef','KCT 647D','2020-01-28 06:06:15','2020-01-28 06:07:30','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,'',NULL,1,'3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a','Cases'),('743214d5-4d96-6fd1-99fe-5e2ffe89c59e','Priority changed from  to P1.','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'680b5109-55c6-8050-16ee-5e2ffe410d0e','AOP_Case_Events'),('7b69d90a-68e5-ab30-7a2a-5e2ffe5e5deb','Status changed from  to Open_New.','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'765e08d3-3c4a-e2a0-fa7d-5e2ffefa2870','AOP_Case_Events'),('7bfe4f13-4ca6-3e1e-ed7c-5e1c10cfd6f0','Mr. Joseph Mbatia','2020-01-13 06:37:12','2020-01-21 22:08:45','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'',NULL,1,'63fc1379-a665-1678-603e-5e1c10618d24','Leads'),('7de04918-a476-4f35-42c3-5df883d088e3','Ms. Judy Test','2019-12-17 07:28:37','2019-12-19 12:52:33','a98007d2-dbdc-3dba-9261-5defb35a4621','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,'',NULL,1,'672c93d7-4675-ad33-535e-5df883a54ed3','Leads'),('7fd574ee-7b25-7eb3-987e-5e26f6accc25','Priority changed from  to P1.','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f',NULL,0,NULL,NULL,1,'79edc359-700b-d48d-9609-5e26f649d22f','AOP_Case_Events'),('80467877-36ed-0322-d717-5e2772531b2b','Work flow test','2020-01-21 21:51:21','2020-01-21 21:51:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'780b391d-38d2-4cb4-5c94-5e277291f1ad','AOW_WorkFlow'),('82550631-aa19-1fe7-3651-5e2ffe04ad17','Assigned User changed from  to tabitha.kimani@apainsurance.org.','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'7d276030-f85a-91f4-50f2-5e2ffe8cf5db','AOP_Case_Events'),('8514aff2-1b53-0e2f-2ea5-5e26f63fd69e','Status changed from  to Closed_Closed.','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f',NULL,0,NULL,NULL,1,'81bf4da3-6dd7-bf57-84cf-5e26f60dbc8c','AOP_Case_Events'),('855dfe7f-bdfd-5450-cb5f-5e25a95369ac','Priority changed from  to P1.','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'73c1d844-a35c-76d4-4b6e-5e25a9e721a1','AOP_Case_Events'),('896817ec-c971-518c-cf9e-5e2ffe7f3938','Type changed from  to Life.','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'84392c9b-2cba-5190-732f-5e2ffefcdfd8','AOP_Case_Events'),('89966b5c-d000-2c2b-e63c-5e26f4e8c534','Mr. TITUS KIARIE','2020-01-21 12:55:02','2020-01-21 12:55:02','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d',NULL,0,NULL,NULL,1,'73afd741-3bc8-138b-09bf-5e26f433f468','Leads'),('8a33a8a3-ad0f-6cbc-f0ff-5e26f6b5c133','Assigned User changed from  to cynthia.katembo@apollo.co.ke.','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f',NULL,0,NULL,NULL,1,'86ebbc9b-a465-3dcc-f997-5e26f642b4ba','AOP_Case_Events'),('8f679abd-3423-288c-dc01-5e26f647f441','Type changed from  to Motor.','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f',NULL,0,NULL,NULL,1,'8bf6eb82-204e-58e6-6b2b-5e26f6386ee9','AOP_Case_Events'),('8f7b4761-4fd6-0c61-f127-5e26f520b123','Mr. Ronald Luganji','2020-01-21 13:00:38','2020-01-21 13:00:38','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92',NULL,0,NULL,NULL,1,'7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1','Leads'),('8f8b0ca2-bf65-5136-c8c8-5e26f37eca82','Assigned User changed from  to esther.njoroge@apainsurance.org.','2020-01-21 12:48:35','2020-01-21 12:48:35','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d',NULL,0,NULL,NULL,1,'51ff0be3-a626-4315-c492-5e26f3288cd7','AOP_Case_Events'),('9144377e-9562-9880-9edf-5e25a90f2d96','Status changed from  to Open_New.','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'877df1d1-3948-b062-04e4-5e25a93146e4','AOP_Case_Events'),('92fbe9f3-73e7-bfb1-098c-5e2ffea7a1e8','WRONG STATEMENT  SENT','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'6204f758-d586-6591-e8fc-5e2ffe6999bd','Cases'),('99b06f1f-37b7-beba-81ce-5e2571efed65','jh','2020-01-20 09:23:03','2020-01-20 09:23:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'882be71e-dab3-a792-231d-5e25714bee37','ProspectLists'),('9a3998cf-8e31-7f85-2b5d-5e26f6bda06f','RELEASE LETTER DELAY','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f',NULL,0,NULL,NULL,1,'7459318f-c227-c666-08e7-5e26f6d6f817','Cases'),('9cdba901-fee5-3622-7506-5e25a9fde1ed','Assigned User changed from  to Charity.Kibiku@apainsurance.org.','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'9319f984-8410-35fc-17b5-5e25a93753b2','AOP_Case_Events'),('a16e7063-5e67-b175-ca65-5e2571898727','Hey','2020-01-20 09:22:44','2020-01-20 09:22:44','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'9042171d-c913-91fa-671c-5e257177210e','Campaigns'),('a27e0bf4-9a67-5590-e1e5-5e19c1f2861f','Assigned User changed from  to Gilbert Njoroge.','2020-01-11 12:38:41','2020-01-11 12:38:41','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'5a1a0e45-e9a0-3822-2daa-5e19c161c9dd','AOP_Case_Events'),('a46bb095-1051-fc10-8771-5e1448f85d28','discuss quotation price','2020-01-07 09:01:15','2020-01-07 09:02:16','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'',NULL,1,'979d2a55-7cb2-2fc1-f228-5e14485b3499','Meetings'),('a693f406-afef-4fa4-eaf0-5e25715b2150','Hey Unsubscription List','2020-01-20 09:23:03','2020-01-20 09:23:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'9cd0db38-2a20-0ddc-3093-5e25714277b5','ProspectLists'),('a6c0f702-2753-99f9-5da1-5e26c1931232','Ms. Janet Kamau','2020-01-21 09:16:02','2020-01-21 09:16:02','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,NULL,NULL,1,'76847f17-89c8-a001-235c-5e26c15074d3','Leads'),('a8ee77c5-504b-bccc-d03b-5e25a91373fe','Type changed from  to Asset.','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'9ecc1b22-ed60-8f7e-15b4-5e25a9ffee1f','AOP_Case_Events'),('b267314d-ae0a-4e31-ecc4-5e2571c908ef','Hey Test List','2020-01-20 09:23:03','2020-01-20 09:23:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'a8d4decc-d040-4312-42fe-5e257118972f','ProspectLists'),('b79aaa56-1f96-082b-67af-5e25a9049185','STATEMENT','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'6daa9167-1c4e-b30d-f78e-5e25a9004e5f','Cases'),('b975832b-9c7e-d838-6539-5e2fdcb6e6cd','Mr. Gilbert Njoroge','2020-01-28 07:02:29','2020-01-28 07:04:43','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'',NULL,1,'a0cc0301-7c98-e01c-6fa7-5e2fdc3b7ffa','Leads'),('bac32a27-da14-54f7-8dc4-5e1446ffbb46','Quotation','2020-01-07 08:52:40','2020-01-07 08:53:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'',NULL,1,'ad029c99-eda0-9649-d6ec-5e1446de9415','Meetings'),('bbb0d02c-839a-a0f6-5f3a-5dfb7d8f65d3','Email Attachment: download.jpg','2019-12-19 13:41:12','2019-12-19 13:41:12','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'b68e09b5-94b9-8f0a-6722-5dfb7d536bcb','Notes'),('c1ec29d8-384e-5eb8-7350-5e21739c0dd9','Priority changed from  to P1.','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190',NULL,0,NULL,NULL,1,'afc8871a-babd-2de6-f155-5e21739acecf','AOP_Case_Events'),('c7e5923a-12f8-dfa9-1bd2-5df885fa60c6','Judy Test Call','2019-12-17 07:35:30','2019-12-17 07:35:30','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,NULL,NULL,1,'c0654a2c-6c31-410e-0860-5df885a274ff','Calls'),('ca8ebbf9-377f-6306-f9fe-5e217329631f','Status changed from  to Open_New.','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190',NULL,0,NULL,NULL,1,'c3c14d00-6db9-f12e-c6e7-5e2173c2ef47','AOP_Case_Events'),('d17407ec-5d80-f6b5-7cd7-5df22600ff42','Gilbert Njoroge','2019-12-12 11:35:32','2019-12-12 11:35:32','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'efe014a5-6e8f-8811-7399-5df22671cb64','Accounts'),('d36ad410-9cf0-70d1-4390-5e2173df09e5','Assigned User changed from  to Irene Akubania.','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190',NULL,0,NULL,NULL,1,'ccb9dcc8-a176-eb37-d41b-5e2173d721ee','AOP_Case_Events'),('d9220135-4aa2-6224-e29d-5e26f3fb244b','Priority changed from  to P1.','2020-01-21 12:51:46','2020-01-21 12:51:46','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92',NULL,0,NULL,NULL,1,'74160ce3-5860-a586-1cb0-5e26f3015c2e','AOP_Case_Events'),('d9be6974-79a8-7d82-ae43-5e22d488ae93','Priority changed from  to P1.','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'c7f660dd-09b0-d24b-499a-5e22d4d01445','AOP_Case_Events'),('dc79a566-ee34-339b-e05b-5e21733270c8','Type changed from  to Motor.','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190',NULL,0,NULL,NULL,1,'d5560823-58ec-9653-aa37-5e2173767445','AOP_Case_Events'),('dd772cf3-bfe4-d93a-1641-5e26c2507ad5','Priority changed from  to P1.','2020-01-21 09:22:50','2020-01-21 09:22:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,NULL,NULL,1,'cca4f620-b824-c0db-250f-5e26c244372f','AOP_Case_Events'),('e36ce870-48d9-3ca7-40f9-5e22d4edb644','Status changed from  to Closed_Closed.','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'db801a65-5ddd-d955-ebb1-5e22d423e7ed','AOP_Case_Events'),('e851f1b6-3132-7ef2-b134-5e2173724e00','KBW 277X','2020-01-17 08:43:19','2020-01-17 09:20:01','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190',NULL,0,'',NULL,1,'a99e2744-ff6b-740f-adcd-5e217355daf7','Cases'),('ec5e0cc8-853e-3973-d50e-5e26f3dbba3a','Type changed from  to Motor.','2020-01-21 12:48:35','2020-01-21 12:48:35','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d',NULL,0,NULL,NULL,1,'b0e30f60-b2d3-49d4-7b05-5e26f305d589','AOP_Case_Events'),('ed6f74b5-fc24-cec4-1d1f-5e22d4c44660','Assigned User changed from  to Charity.Kibiku@apainsurance.org.','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,NULL,NULL,1,'e576044f-c14c-7e07-35c8-5e22d4738ca9','AOP_Case_Events'),('efc3bae0-358b-a97c-a385-5e19c1b0a27a','Priority changed from  to P1.','2020-01-11 12:38:40','2020-01-11 12:38:40','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,NULL,NULL,1,'e54d3645-0909-5d04-8bce-5e19c1e2a8bf','AOP_Case_Events'),('f06446be-1f86-3ed1-21b3-5e26f342acac','Priority changed from  to P1.','2020-01-21 12:48:34','2020-01-21 12:48:34','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d',NULL,0,NULL,NULL,1,'ea138c20-02bf-6328-fab3-5e26f3dda1cd','AOP_Case_Events');
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
INSERT INTO `aop_case_events` VALUES ('11c25595-85b5-95fe-74f0-5e1c0b247d2c','Priority changed from  to P1.','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Priority changed from  to P1.',0,NULL,'bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb'),('138efc85-44df-bf69-cd19-5e26c2ee3dec','Assigned User changed from  to tabitha.kimani@apainsurance.org.','2020-01-21 09:22:50','2020-01-21 09:22:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Assigned User changed from  to tabitha.kimani@apainsurance.org.',0,NULL,'c714dc90-a380-33c2-7b51-5e26c22b6946'),('14f8c044-4a1e-3d78-5922-5e26f3a91ebb','Assigned User changed from  to Linda.walucho@apainsurance.org.','2020-01-21 12:51:45','2020-01-21 12:51:45','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92','Assigned User changed from  to Linda.walucho@apainsurance.org.',0,NULL,'15f4036a-578d-7f8c-4f53-5e26f3dc5aab'),('183cb472-108b-e899-e81f-5e26c2e61278','Type changed from  to Health.','2020-01-21 09:22:50','2020-01-21 09:22:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Type changed from  to Health.',0,NULL,'c714dc90-a380-33c2-7b51-5e26c22b6946'),('1f282bac-8cde-699f-2d42-5e1c0b2eb300','Status changed from  to Open_New.','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Status changed from  to Open_New.',0,NULL,'bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb'),('2472fe07-c819-9fc9-75f5-5e26f3bb2e59','Type changed from  to Health.','2020-01-21 12:51:45','2020-01-21 12:51:45','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92','Type changed from  to Health.',0,NULL,'15f4036a-578d-7f8c-4f53-5e26f3dc5aab'),('25dc888d-5218-c6f7-6415-5e1c0b2df314','Assigned User changed from  to Gilbert Njoroge.','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Assigned User changed from  to Gilbert Njoroge.',0,NULL,'bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb'),('29469d17-345f-af4c-ce63-5e2166c89eb1','Priority changed from  to P1.','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3','Priority changed from  to P1.',0,NULL,'2306a4e8-3bb1-12ab-3817-5e2166607f9e'),('2c83921b-1546-d560-1f54-5e1c0b912faf','Type changed from  to Life.','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Type changed from  to Life.',0,NULL,'bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb'),('2e9798bf-bcd6-82b7-ae2a-5e1c2673689d','Priority changed from  to P1.','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Priority changed from  to P1.',0,NULL,'287c7969-15eb-cf56-511f-5e1c2670fa63'),('3baefb0a-0867-8265-acd5-5e1c26a8c4e2','Status changed from  to Open_New.','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Status changed from  to Open_New.',0,NULL,'287c7969-15eb-cf56-511f-5e1c2670fa63'),('3cd38d3d-ee70-26e7-6f5c-5e2166d172be','Status changed from  to Open_New.','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3','Status changed from  to Open_New.',0,NULL,'2306a4e8-3bb1-12ab-3817-5e2166607f9e'),('4327c0f4-3d7d-3758-b3da-5e1c26cd03f6','Assigned User changed from  to Gilbert Njoroge.','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Assigned User changed from  to Gilbert Njoroge.',0,NULL,'287c7969-15eb-cf56-511f-5e1c2670fa63'),('4464424e-a758-8e40-6f85-5e2fcf67138b','Priority changed from  to P1.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Priority changed from  to P1.',0,NULL,'3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a'),('453e5d0d-3413-8be2-2031-5e216679176d','Assigned User changed from  to juddy.tonui@apollo.co.ke.','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3','Assigned User changed from  to juddy.tonui@apollo.co.ke.',0,NULL,'2306a4e8-3bb1-12ab-3817-5e2166607f9e'),('4d696aa4-0520-fcde-3cf9-5e2166c377a8','Type changed from  to Motor.','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3','Type changed from  to Motor.',0,NULL,'2306a4e8-3bb1-12ab-3817-5e2166607f9e'),('4f256484-05d0-9774-dd16-5e1c26b490e5','Type changed from  to Life.','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Type changed from  to Life.',0,NULL,'287c7969-15eb-cf56-511f-5e1c2670fa63'),('5152b5e9-c311-b8cc-545d-5e2fcf81b3ea','Status changed from  to Open_Assigned.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Status changed from  to Open_Assigned.',0,NULL,'3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a'),('51ff0be3-a626-4315-c492-5e26f3288cd7','Assigned User changed from  to esther.njoroge@apainsurance.org.','2020-01-21 12:48:34','2020-01-21 12:48:34','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d','Assigned User changed from  to esther.njoroge@apainsurance.org.',0,NULL,'e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e'),('5774653f-1a93-ec43-7010-5e2fcf68d203','Assigned User changed from  to Charity.Kibiku@apainsurance.org.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Assigned User changed from  to Charity.Kibiku@apainsurance.org.',0,NULL,'3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a'),('5a1a0e45-e9a0-3822-2daa-5e19c161c9dd','Assigned User changed from  to Gilbert Njoroge.','2020-01-11 12:38:40','2020-01-11 12:38:40','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Assigned User changed from  to Gilbert Njoroge.',0,NULL,'da6ca215-c81f-9928-82cd-5e19c1280d75'),('5dadb6c6-3280-ea3f-15b8-5e2fcf5e5a36','Type changed from  to Motor.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Type changed from  to Motor.',0,NULL,'3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a'),('680b5109-55c6-8050-16ee-5e2ffe410d0e','Priority changed from  to P1.','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Priority changed from  to P1.',0,NULL,'6204f758-d586-6591-e8fc-5e2ffe6999bd'),('73c1d844-a35c-76d4-4b6e-5e25a9e721a1','Priority changed from  to P1.','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Priority changed from  to P1.',0,NULL,'6daa9167-1c4e-b30d-f78e-5e25a9004e5f'),('74160ce3-5860-a586-1cb0-5e26f3015c2e','Priority changed from  to P1.','2020-01-21 12:51:45','2020-01-21 12:51:45','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92','Priority changed from  to P1.',0,NULL,'15f4036a-578d-7f8c-4f53-5e26f3dc5aab'),('765e08d3-3c4a-e2a0-fa7d-5e2ffefa2870','Status changed from  to Open_New.','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Status changed from  to Open_New.',0,NULL,'6204f758-d586-6591-e8fc-5e2ffe6999bd'),('79edc359-700b-d48d-9609-5e26f649d22f','Priority changed from  to P1.','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f','Priority changed from  to P1.',0,NULL,'7459318f-c227-c666-08e7-5e26f6d6f817'),('7d276030-f85a-91f4-50f2-5e2ffe8cf5db','Assigned User changed from  to tabitha.kimani@apainsurance.org.','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Assigned User changed from  to tabitha.kimani@apainsurance.org.',0,NULL,'6204f758-d586-6591-e8fc-5e2ffe6999bd'),('81bf4da3-6dd7-bf57-84cf-5e26f60dbc8c','Status changed from  to Closed_Closed.','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f','Status changed from  to Closed_Closed.',0,NULL,'7459318f-c227-c666-08e7-5e26f6d6f817'),('84392c9b-2cba-5190-732f-5e2ffefcdfd8','Type changed from  to Life.','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Type changed from  to Life.',0,NULL,'6204f758-d586-6591-e8fc-5e2ffe6999bd'),('86ebbc9b-a465-3dcc-f997-5e26f642b4ba','Assigned User changed from  to cynthia.katembo@apollo.co.ke.','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f','Assigned User changed from  to cynthia.katembo@apollo.co.ke.',0,NULL,'7459318f-c227-c666-08e7-5e26f6d6f817'),('877df1d1-3948-b062-04e4-5e25a93146e4','Status changed from  to Open_New.','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Status changed from  to Open_New.',0,NULL,'6daa9167-1c4e-b30d-f78e-5e25a9004e5f'),('8bf6eb82-204e-58e6-6b2b-5e26f6386ee9','Type changed from  to Motor.','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f','Type changed from  to Motor.',0,NULL,'7459318f-c227-c666-08e7-5e26f6d6f817'),('9319f984-8410-35fc-17b5-5e25a93753b2','Assigned User changed from  to Charity.Kibiku@apainsurance.org.','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Assigned User changed from  to Charity.Kibiku@apainsurance.org.',0,NULL,'6daa9167-1c4e-b30d-f78e-5e25a9004e5f'),('9ecc1b22-ed60-8f7e-15b4-5e25a9ffee1f','Type changed from  to Asset.','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Type changed from  to Asset.',0,NULL,'6daa9167-1c4e-b30d-f78e-5e25a9004e5f'),('afc8871a-babd-2de6-f155-5e21739acecf','Priority changed from  to P1.','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190','Priority changed from  to P1.',0,NULL,'a99e2744-ff6b-740f-adcd-5e217355daf7'),('b0e30f60-b2d3-49d4-7b05-5e26f305d589','Type changed from  to Motor.','2020-01-21 12:48:34','2020-01-21 12:48:34','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d','Type changed from  to Motor.',0,NULL,'e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e'),('c3c14d00-6db9-f12e-c6e7-5e2173c2ef47','Status changed from  to Open_New.','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190','Status changed from  to Open_New.',0,NULL,'a99e2744-ff6b-740f-adcd-5e217355daf7'),('c5d6075c-0e7e-341e-b8db-5e19c13bbb24','Type changed from  to Life.','2020-01-11 12:38:40','2020-01-11 12:38:40','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Type changed from  to Life.',0,NULL,'da6ca215-c81f-9928-82cd-5e19c1280d75'),('c7f660dd-09b0-d24b-499a-5e22d4d01445','Priority changed from  to P1.','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Priority changed from  to P1.',0,NULL,'c299e2e1-630f-47a4-401d-5e22d4cde170'),('cca4f620-b824-c0db-250f-5e26c244372f','Priority changed from  to P1.','2020-01-21 09:22:50','2020-01-21 09:22:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Priority changed from  to P1.',0,NULL,'c714dc90-a380-33c2-7b51-5e26c22b6946'),('ccb9dcc8-a176-eb37-d41b-5e2173d721ee','Assigned User changed from  to Irene Akubania.','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190','Assigned User changed from  to Irene Akubania.',0,NULL,'a99e2744-ff6b-740f-adcd-5e217355daf7'),('d5560823-58ec-9653-aa37-5e2173767445','Type changed from  to Motor.','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190','Type changed from  to Motor.',0,NULL,'a99e2744-ff6b-740f-adcd-5e217355daf7'),('db801a65-5ddd-d955-ebb1-5e22d423e7ed','Status changed from  to Closed_Closed.','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Status changed from  to Closed_Closed.',0,NULL,'c299e2e1-630f-47a4-401d-5e22d4cde170'),('df6b260a-78e6-8fb5-d8b5-5e26c2dc9aae','Status changed from  to Open_New.','2020-01-21 09:22:50','2020-01-21 09:22:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Status changed from  to Open_New.',0,NULL,'c714dc90-a380-33c2-7b51-5e26c22b6946'),('e54d3645-0909-5d04-8bce-5e19c1e2a8bf','Priority changed from  to P1.','2020-01-11 12:38:40','2020-01-11 12:38:40','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Priority changed from  to P1.',0,NULL,'da6ca215-c81f-9928-82cd-5e19c1280d75'),('e576044f-c14c-7e07-35c8-5e22d4738ca9','Assigned User changed from  to Charity.Kibiku@apainsurance.org.','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Assigned User changed from  to Charity.Kibiku@apainsurance.org.',0,NULL,'c299e2e1-630f-47a4-401d-5e22d4cde170'),('ea138c20-02bf-6328-fab3-5e26f3dda1cd','Priority changed from  to P1.','2020-01-21 12:48:34','2020-01-21 12:48:34','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d','Priority changed from  to P1.',0,NULL,'e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e'),('ebc89b63-0bcf-b604-2c43-5e2fcf50b607','Status changed from Open_Assigned to Closed_Closed.','2020-01-28 06:07:29','2020-01-28 06:07:29','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Status changed from Open_Assigned to Closed_Closed.',0,NULL,'3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a'),('ef42eab3-499e-8f71-8484-5e22d4269311','Type changed from  to Motor.','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Type changed from  to Motor.',0,NULL,'c299e2e1-630f-47a4-401d-5e22d4cde170'),('f1939fc6-7b0c-c86d-5332-5e19c1d1a190','Status changed from  to Open_New.','2020-01-11 12:38:40','2020-01-11 12:38:40','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Status changed from  to Open_New.',0,NULL,'da6ca215-c81f-9928-82cd-5e19c1280d75'),('f2d796c0-5e37-4875-9f11-5e26f3969168','Status changed from  to Open_New.','2020-01-21 12:48:34','2020-01-21 12:48:34','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d','Status changed from  to Open_New.',0,NULL,'e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e'),('f6980917-f9ad-8a67-1b15-5e26f3e87941','Status changed from  to Closed_Closed.','2020-01-21 12:51:45','2020-01-21 12:51:45','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92','Status changed from  to Closed_Closed.',0,NULL,'15f4036a-578d-7f8c-4f53-5e26f3dc5aab');
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
INSERT INTO `aow_actions` VALUES ('8b138929-a986-b478-f55f-5e2772e1457d','Send test emails from lead template','2020-01-21 21:51:21','2020-01-21 21:51:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'780b391d-38d2-4cb4-5c94-5e277291f1ad',1,'SendEmail','YTo1OntzOjE2OiJpbmRpdmlkdWFsX2VtYWlsIjtzOjE6IjAiO3M6MTQ6ImVtYWlsX3RlbXBsYXRlIjtzOjM2OiIxNGVmZjg2Ny05NWZmLWY1MzItMGQ2MC01ZTI3NWY3ZjJlODAiO3M6MTM6ImVtYWlsX3RvX3R5cGUiO2E6Mjp7aTowO3M6MjoidG8iO2k6MTtzOjI6ImNjIjt9czoxNzoiZW1haWxfdGFyZ2V0X3R5cGUiO2E6Mjp7aTowO3M6MTI6IlJlY29yZCBFbWFpbCI7aToxO3M6MTM6IkVtYWlsIEFkZHJlc3MiO31zOjU6ImVtYWlsIjthOjE6e2k6MTtzOjI4OiJnaWxiZXJ0Lm5qb3JvZ2VAYXBvbGxvLmNvLmtlIjt9fQ=='),('8dd0f887-1fff-a051-e4ca-5e27720355d4','Schedule a call test','2020-01-21 21:51:21','2020-01-21 21:51:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'780b391d-38d2-4cb4-5c94-5e277291f1ad',2,'CreateRecord','YTo5OntzOjExOiJyZWNvcmRfdHlwZSI7czo1OiJDYWxscyI7czoxODoicmVsYXRlX3RvX3dvcmtmbG93IjtzOjE6IjEiO3M6MjA6ImNvcHlfZW1haWxfYWRkcmVzc2VzIjtzOjE6IjAiO3M6NToiZmllbGQiO2E6Mjp7aTowO3M6NDoibmFtZSI7aToxO3M6MTA6ImRhdGVfc3RhcnQiO31zOjEwOiJ2YWx1ZV90eXBlIjthOjI6e2k6MDtzOjU6IlZhbHVlIjtpOjE7czo0OiJEYXRlIjt9czo1OiJ2YWx1ZSI7YToyOntpOjA7czoxNDoiTGVhZCBmb2xsb3cgdXAiO2k6MTthOjQ6e2k6MDtzOjM6Im5vdyI7aToxO3M6NDoicGx1cyI7aToyO3M6MToiNSI7aTozO3M6NjoibWludXRlIjt9fXM6MzoicmVsIjthOjI6e2k6MDtzOjU6ImxlYWRzIjtpOjE7czo1OiJ1c2VycyI7fXM6MTQ6InJlbF92YWx1ZV90eXBlIjthOjI6e2k6MDtzOjU6IkZpZWxkIjtpOjE7czo1OiJGaWVsZCI7fXM6OToicmVsX3ZhbHVlIjthOjI6e2k6MDtzOjI6ImlkIjtpOjE7czoxNToiY3JlYXRlZF9ieV9uYW1lIjt9fQ=='),('9081fb81-674d-c2f6-24c4-5e27720810f7','Create record','2020-01-21 21:51:21','2020-01-21 21:51:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'780b391d-38d2-4cb4-5c94-5e277291f1ad',3,'CreateRecord','YTo2OntzOjExOiJyZWNvcmRfdHlwZSI7czo5OiJQcm9zcGVjdHMiO3M6MTg6InJlbGF0ZV90b193b3JrZmxvdyI7czoxOiIxIjtzOjIwOiJjb3B5X2VtYWlsX2FkZHJlc3NlcyI7czoxOiIwIjtzOjM6InJlbCI7YToxOntpOjA7czoxNDoicHJvc3BlY3RfbGlzdHMiO31zOjE0OiJyZWxfdmFsdWVfdHlwZSI7YToxOntpOjA7czo1OiJWYWx1ZSI7fXM6OToicmVsX3ZhbHVlIjthOjE6e2k6MDtzOjM2OiIxNTZjYWYzMy00MmM2LWUzN2MtZWYzZS01ZTI3NjQ5YWJlYjQiO319');
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
INSERT INTO `aow_conditions` VALUES ('83dcff86-9b32-b7ae-ea44-5e2772b5022e','','2020-01-21 21:51:21','2020-01-21 21:51:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'780b391d-38d2-4cb4-5c94-5e277291f1ad',1,'YToxOntpOjA7czo1OiJMZWFkcyI7fQ==','created_by_name','Equal_To','Value','1'),('8618b043-16aa-356a-8d21-5e277230b77c','','2020-01-21 21:51:21','2020-01-21 21:51:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'780b391d-38d2-4cb4-5c94-5e277291f1ad',2,'YToxOntpOjA7czo1OiJMZWFkcyI7fQ==','date_entered','Greater_Than','Value','');
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
INSERT INTO `aow_workflow` VALUES ('780b391d-38d2-4cb4-5c94-5e277291f1ad','Work flow test','2020-01-21 21:51:21','2020-01-21 21:51:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Work flow on leads also schedule to send email.',0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','All_Records','Active','In_Scheduler',0);
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES ('c0654a2c-6c31-410e-0860-5df885a274ff','Judy Test Call','2019-12-17 07:35:30','2019-12-17 07:35:30','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941','Explained product. Sent email. To call back after one week',0,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,15,'2019-12-17 10:30:00','2019-12-17 10:30:00','Leads','Planned','Inbound','672c93d7-4675-ad33-535e-5df883a54ed3',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
INSERT INTO `calls_leads` VALUES ('c1401364-ed10-bcb2-02bc-5df88501c878','c0654a2c-6c31-410e-0860-5df885a274ff','672c93d7-4675-ad33-535e-5df883a54ed3','1','none','2020-01-13 06:42:16',1);
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
INSERT INTO `calls_users` VALUES ('d1feeb1f-a0c8-f249-19ac-5df8854292a7','c0654a2c-6c31-410e-0860-5df885a274ff','42d64a84-e6a3-a628-20fd-5df354b5c941','1','accept','2019-12-17 07:35:30',0);
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`),
  KEY `idx_survey_id` (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES ('9042171d-c913-91fa-671c-5e257177210e','Hey','2020-01-20 09:22:44','2020-01-20 09:30:58','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',1,'a98007d2-dbdc-3dba-9261-5defb35a4621',1,0,'http://',NULL,NULL,NULL,'Planning',0,'-99',50000,50000,50000,50000,'NewsLetter','Objectives test','Test',NULL,NULL);
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES ('15f4036a-578d-7f8c-4f53-5e26f3dc5aab','DELAYED APPROVAL','2020-01-21 12:51:45','2020-01-21 12:51:45','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92','<p>Client complained that her approval for dental took rather too long</p>',0,'e222fa06-97a4-d615-919e-5e1c35eeca92',10,'Health','Closed_Closed','P1','care team sorted it out',NULL,NULL,'Closed',NULL),('2306a4e8-3bb1-12ab-3817-5e2166607f9e','KCK 667Y','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3','<p>Test</p>',0,'41afbc38-3a08-d92d-15a6-5df740edd6f3',4,'Motor','Open_New','P1','test',NULL,NULL,'Open',NULL),('287c7969-15eb-cf56-511f-5e1c2670fa63','Juddy Tonui','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<p>Test</p>',0,'a98007d2-dbdc-3dba-9261-5defb35a4621',3,'Life','Open_New','P1','Test',NULL,NULL,'Open',NULL),('3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a','KCT 647D','2020-01-28 06:06:15','2020-01-28 06:07:29','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','<p>Following up on towing payment invoice received on 10/12/2019.</p>',0,'f40795e1-c5c1-b225-b71a-5e1c3561b7ee',12,'Motor','Closed_Closed','P1','Sheila Musiega already paid the towing.',NULL,NULL,'Closed',''),('6204f758-d586-6591-e8fc-5e2ffe6999bd','WRONG STATEMENT  SENT','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','<p>The client has been receiving the wrong statement for his pension over and over again.</p>\n<p>He has requested for the right copy, over a month but he has not been asssited.</p>',0,'cf87deda-842f-518a-6af9-5e1c35a1a2d7',13,'Life','Open_New','P1','',NULL,NULL,'Open',NULL),('6daa9167-1c4e-b30d-f78e-5e25a9004e5f','STATEMENT','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','<p>Last month you deducted 51 shillings this month you have deducted 208 shillings on the income.What is the reason of this huge difference in a period of one month.</p>',0,'f40795e1-c5c1-b225-b71a-5e1c3561b7ee',7,'Asset','Open_New','P1','',NULL,NULL,'Open',NULL),('7459318f-c227-c666-08e7-5e26f6d6f817','RELEASE LETTER DELAY','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f','<p>Release letter delay</p>',0,'c0128425-ade0-5c59-6b2c-5e1c359af34f',11,'Motor','Closed_Closed','P1','Client sorted',NULL,NULL,'Closed',NULL),('a99e2744-ff6b-740f-adcd-5e217355daf7','KBW 277X','2020-01-17 08:43:19','2020-01-17 09:20:01','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190','<p>Car at Solex, the client claims the garage tempered with his gear box. Antony M. our internal assessor is dealing with the same</p>',0,'7607045c-582f-799f-b814-5df3650d9190',5,'Motor','Open_New','P1',NULL,NULL,NULL,'Open',''),('bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb','Test 2','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<p>New case</p>',0,'a98007d2-dbdc-3dba-9261-5defb35a4621',2,'Life','Open_New','P1','',NULL,NULL,'Open',NULL),('c299e2e1-630f-47a4-401d-5e22d4cde170','KBU 444B','2020-01-18 09:50:54','2020-01-18 09:52:16','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','<p>The client complained that it is taking too long to get instructions from our branch offices.  </p>',0,'f40795e1-c5c1-b225-b71a-5e1c3561b7ee',6,'Motor','Closed_Closed','P1','His cover had expired in February last year and as such was advised by Ernest to fill another proposal form.',NULL,NULL,'Closed',''),('c714dc90-a380-33c2-7b51-5e26c22b6946','MEDICAL CARD','2020-01-21 09:22:50','2020-01-21 09:22:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','<p>The medical card is not working.</p>',0,'cf87deda-842f-518a-6af9-5e1c35a1a2d7',8,'Health','Open_New','P1','',NULL,NULL,'Open',NULL),('da6ca215-c81f-9928-82cd-5e19c1280d75','Test','2020-01-11 12:38:40','2020-01-11 12:38:40','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<p>test</p>',0,'a98007d2-dbdc-3dba-9261-5defb35a4621',1,'Life','Open_New','P1','',NULL,'2a103d61-1013-8f4a-6feb-5dfb764712b2','Open',NULL),('e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e','INQUIRY ON HER VEHICLE AFTER AN ACCIDENT','2020-01-21 12:48:34','2020-01-21 12:48:34','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d','<p>Client was on social medialcomplaining that her vehicle was involved in an accident but repair authority was yet to be approved</p>',0,'d86b2737-2757-8261-b46c-5e1c35dd162d',9,'Motor','Open_New','P1','',NULL,NULL,'Open',NULL);
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
INSERT INTO `cases_audit` VALUES ('1a544b0c-e3fa-9137-43fb-5e2fcf908470','3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a','2020-01-28 06:07:29','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','status','dynamicenum','Open_Assigned','Closed_Closed',NULL,NULL),('1aec5e76-ff92-416c-7dc8-5e2fcfc2c971','3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a','2020-01-28 06:07:29','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','state','enum','Open','Closed',NULL,NULL);
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `email_c` varchar(255) DEFAULT NULL,
  `client_name_c` varchar(255) DEFAULT NULL,
  `phone_1_c` varchar(255) DEFAULT NULL,
  `phone_2_c` varchar(255) DEFAULT NULL,
  `complaint_source_c` varchar(255) DEFAULT NULL,
  `complainsources_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
INSERT INTO `cases_cstm` VALUES ('15f4036a-578d-7f8c-4f53-5e26f3dc5aab',0.00000000,0.00000000,NULL,NULL,'','Muriuki Catherine','','','Word of mouth',NULL),('2306a4e8-3bb1-12ab-3817-5e2166607f9e',0.00000000,0.00000000,NULL,NULL,'j@apa.cm','john isaji','0725420777','','website',NULL),('287c7969-15eb-cf56-511f-5e1c2670fa63',0.00000000,0.00000000,NULL,NULL,'judytanui89@gmail.com',NULL,NULL,NULL,NULL,NULL),('3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a',0.00000000,0.00000000,'','','','RAY OTIENO','0700018180','','','WalkIn'),('6204f758-d586-6591-e8fc-5e2ffe6999bd',0.00000000,0.00000000,NULL,NULL,'','Kennedy','0722776402','','','Existing Customer'),('6daa9167-1c4e-b30d-f78e-5e25a9004e5f',0.00000000,0.00000000,NULL,NULL,'rosahwangui@gmail.com','ROSALIND MUTHONI','','','EMAIL',NULL),('7459318f-c227-c666-08e7-5e26f6d6f817',0.00000000,0.00000000,NULL,NULL,'','Cynthia Katembo','','','Walk In ',NULL),('a99e2744-ff6b-740f-adcd-5e217355daf7',0.00000000,0.00000000,'','','','Mr. Masese','0722326522','','Telephone',NULL),('bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb',0.00000000,0.00000000,NULL,NULL,'gilbert.njoroge@apollo.co.ke',NULL,NULL,NULL,NULL,NULL),('c299e2e1-630f-47a4-401d-5e22d4cde170',0.00000000,0.00000000,'','','charity.kibiku@apainsurance.org','JAMES MWANGI','','','CLIENT VISITED OUR OFFICES',NULL),('c714dc90-a380-33c2-7b51-5e26c22b6946',0.00000000,0.00000000,NULL,NULL,'tabitha.kimani@apainsurance','0702627142','0702627142','0709912777','Telephone',NULL),('da6ca215-c81f-9928-82cd-5e19c1280d75',0.00000000,0.00000000,NULL,NULL,'gilbert.njoroge@apollo.co.ke',NULL,NULL,NULL,NULL,NULL),('e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e',0.00000000,0.00000000,NULL,NULL,'','Wilfred Ndirangu Kariuki','','','Facebook',NULL);
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','c.rm@apainsurance.org'),('notify','fromname','APA CRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.25'),('MySettings','tab','YTozODp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6MTY6IkFNX1Rhc2tUZW1wbGF0ZXMiO2k6MjM7czo5OiJGUF9ldmVudHMiO2k6MjQ7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI3O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI4O3M6OToiamp3Z19NYXBzIjtpOjI5O3M6MTI6Impqd2dfTWFya2VycyI7aTozMDtzOjEwOiJqandnX0FyZWFzIjtpOjMxO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7aTozMjtzOjExOiJBT1JfUmVwb3J0cyI7aTozMztzOjEyOiJBT1dfV29ya0Zsb3ciO2k6MzQ7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO2k6MzU7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO2k6MzY7czoxNDoiRW1haWxUZW1wbGF0ZXMiO2k6Mzc7czo3OiJTdXJ2ZXlzIjt9'),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Cases','1'),('Update','CheckUpdates','manual'),('system','name','APA CRM'),('system','adminwizard','1'),('notify','allow_default_outbound','0');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('e0f6d79a-930d-3e67-ad67-5df889f7d086','2019-12-17 07:51:33','2020-01-23 07:35:18','13632602-529c-6bd5-770d-5e1c35bc5171','42d64a84-e6a3-a628-20fd-5df354b5c941','Interested in Jamii Plus',0,'42d64a84-e6a3-a628-20fd-5df354b5c941','Ms.','Doris','Sabaya','Personal Assistant',NULL,NULL,0,NULL,'0722780396',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nairobi',NULL,NULL,'kenya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cold Call','',NULL,'',NULL,0,'Single');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
INSERT INTO `contacts_cstm` VALUES ('e0f6d79a-930d-3e67-ad67-5df889f7d086',0.00000000,0.00000000,'','');
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('15570565-fa82-cf60-2b7d-5defb3e98228','19200191-82f7-eb2a-b641-5defb3f39a5e','a98007d2-dbdc-3dba-9261-5defb35a4621','Users',1,0,'2019-12-10 15:02:50','2019-12-10 15:02:50',0),('1a485fbe-a3d8-35a1-73de-5e1c37c52581','1a81ebcc-5bfc-8c1b-e967-5e1c37d0ac08','eb21bb65-2ba7-46fa-5536-5e1c35688062','Users',1,0,'2020-01-13 09:24:35','2020-01-13 09:24:35',0),('2a209630-c32d-fa7c-c0ce-5dfb7667dfb2','2a578ff2-38a3-cd4f-9499-5dfb7693427e','2a103d61-1013-8f4a-6feb-5dfb764712b2','Accounts',1,0,'2019-12-19 13:09:46','2019-12-19 13:09:46',0),('3499fb72-7e96-6d24-ce0e-5e1c3649d81e','34d54320-892f-bb73-3f74-5e1c3641dac0','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Users',1,0,'2020-01-13 09:22:46','2020-01-13 09:22:46',0),('35b98a9e-0270-20e7-8cc8-5e1c361fdf4f','35f5ee0b-fbf2-091e-dcdd-5e1c3690b230','c0128425-ade0-5c59-6b2c-5e1c359af34f','Users',1,0,'2020-01-13 09:21:48','2020-01-13 09:21:48',0),('3e49b76f-15e2-638c-d5d5-5e2fddc88ae4','19200191-82f7-eb2a-b641-5defb3f39a5e','a0cc0301-7c98-e01c-6fa7-5e2fdc3b7ffa','Leads',1,0,'2020-01-28 07:04:43','2020-01-28 07:04:43',0),('424341af-e0d2-08a2-40d3-5df740cbe3f9','42871028-7d6f-89a6-4beb-5df7408f0749','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users',1,0,'2019-12-16 08:31:04','2019-12-16 08:31:04',0),('436696e7-695e-3a39-8805-5df354e57293','43a20fe3-6f8c-fc20-5ed3-5df354c94aca','42d64a84-e6a3-a628-20fd-5df354b5c941','Users',1,0,'2019-12-13 09:04:45','2019-12-13 09:04:45',0),('51e1fb00-47ce-e19e-1acb-5e1c37c8fd07','5218b1a4-03f3-c657-2d48-5e1c37842127','e222fa06-97a4-d615-919e-5e1c35eeca92','Users',1,0,'2020-01-13 09:23:57','2020-01-13 09:23:57',0),('69077f43-3ef2-cf1e-cb09-5df883bb8af9','6945619e-3e40-b331-8c91-5df883d765af','672c93d7-4675-ad33-535e-5df883a54ed3','Leads',1,0,'2019-12-17 07:28:37','2020-01-13 06:42:16',1),('6a1b25fc-7e4c-16a1-adab-5e1c37cc498b','6a549bc9-b72c-b458-c088-5e1c37adf31b','d86b2737-2757-8261-b46c-5e1c35dd162d','Users',1,0,'2020-01-13 09:23:17','2020-01-13 09:23:17',0),('6b470dd6-b952-da21-6ee4-5df889b44356','6945619e-3e40-b331-8c91-5df883d765af','e103583e-d24d-cad3-c6a3-5df889eadc10','Accounts',1,0,'2019-12-17 07:51:33','2019-12-17 07:51:33',0),('6ced9050-0ce3-8650-9743-5df742332ca7','6d23e0e2-3562-c85a-1926-5df742cb677e','6c725b5f-7b1a-6575-72e3-5df742004330','Users',1,0,'2019-12-16 08:38:21','2019-12-16 10:17:13',1),('748f2408-9f77-4ab5-cf02-5e26f42fdef8','74c9a9cb-2c4d-eb90-0b30-5e26f470afae','73afd741-3bc8-138b-09bf-5e26f433f468','Leads',1,0,'2020-01-21 12:55:02','2020-01-21 21:53:21',1),('769dd73b-720a-8670-57c5-5df365ca9661','76dbb455-e9cc-46ec-a418-5df3656a4993','7607045c-582f-799f-b814-5df3650d9190','Users',1,0,'2019-12-13 10:20:28','2019-12-13 10:20:28',0),('7a3ac955-58c5-5343-d1dc-5e26f5fcff14','7a75cfa6-10b2-fd9e-a9ff-5e26f5ec64ca','7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1','Leads',1,0,'2020-01-21 13:00:38','2020-01-21 21:53:21',1),('80ceca39-8b99-e00f-ac2f-5e294c3385cd','811b65c4-085f-cc7a-f669-5e294c5d1c77','e0f6d79a-930d-3e67-ad67-5df889f7d086','Contacts',1,0,'2020-01-23 07:35:18','2020-01-23 07:35:18',0),('842fda33-73d5-fd1f-cd5d-5df75a8e3bc5','6d23e0e2-3562-c85a-1926-5df742cb677e','83991747-41d9-a084-4b4d-5df75aec4b03','Users',1,0,'2019-12-16 10:19:47','2019-12-16 10:19:47',0),('8bb16b2c-45e8-97d6-d045-5e1c11717e99','8bef52d5-f2bc-6fd8-88eb-5e1c11f71bae','63fc1379-a665-1678-603e-5e1c10618d24','Leads',1,0,'2020-01-13 06:43:17','2020-01-13 06:43:17',0),('a3b2f485-00bc-c606-f1f9-5e1c3642f96a','a3eebcf0-3aff-e7c3-b133-5e1c36a51dbc','a4aa0876-1e37-ab95-f13a-5e1c354931ef','Users',1,0,'2020-01-13 09:20:52','2020-01-13 09:20:52',0),('ba31bbf4-6ac6-dc87-4a74-5e1c374f51ab','ba698e0f-3cbf-0063-a80b-5e1c37ab2c12','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Users',1,0,'2020-01-13 09:25:30','2020-01-13 09:25:30',0),('c31dad0a-75c6-ba8b-17b0-5e1c3615480b','8bef52d5-f2bc-6fd8-88eb-5e1c11f71bae','13632602-529c-6bd5-770d-5e1c35bc5171','Users',1,0,'2020-01-13 09:20:12','2020-01-13 09:20:12',0),('d96209d9-15af-9715-49b1-5e26f30eea30','dd8b0e15-0cb0-9ede-74f5-5e26f333d9f5','cbc204d7-3f9b-33b0-fa2f-5e26f3eff98c','Leads',1,0,'2020-01-21 12:50:44','2020-01-21 12:50:44',0),('e79cfcf2-f8bb-b07a-c8cf-5df889fd5e2f','6945619e-3e40-b331-8c91-5df883d765af','e0f6d79a-930d-3e67-ad67-5df889f7d086','Contacts',1,0,'2019-12-17 07:51:33','2019-12-17 07:51:33',1),('eff0e171-f96c-daa8-ad53-5df226273144','f03161ef-cfb5-40e0-ee03-5df2267f8a52','efe014a5-6e8f-8811-7399-5df22671cb64','Accounts',1,0,'2019-12-12 11:35:31','2019-12-12 11:35:31',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('19200191-82f7-eb2a-b641-5defb3f39a5e','gilbert.njoroge@apollo.co.ke','GILBERT.NJOROGE@APOLLO.CO.KE',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2019-12-10 15:02:00','2020-01-29 12:03:13',0),('1a81ebcc-5bfc-8c1b-e967-5e1c37d0ac08','Beryl.digo@apollo.co.ke','BERYL.DIGO@APOLLO.CO.KE',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-13 09:24:00','2020-01-27 08:31:02',0),('2a578ff2-38a3-cd4f-9499-5dfb7693427e','Test@Test.Test','TEST@TEST.TEST',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2019-12-19 13:09:00','2020-01-29 12:03:13',0),('34d54320-892f-bb73-3f74-5e1c3641dac0','tabitha.kimani@apainsurance.org','TABITHA.KIMANI@APAINSURANCE.ORG',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-13 09:22:00','2020-01-27 08:31:02',0),('35f5ee0b-fbf2-091e-dcdd-5e1c3690b230','cynthia.katembo@apollo.co.ke','CYNTHIA.KATEMBO@APOLLO.CO.KE',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-13 09:21:00','2020-01-27 08:31:02',0),('42871028-7d6f-89a6-4beb-5df7408f0749','juddy.tonui@apollo.co.ke','JUDDY.TONUI@APOLLO.CO.KE',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2019-12-16 08:31:00','2020-01-27 08:31:02',0),('43a20fe3-6f8c-fc20-5ed3-5df354c94aca','judith.bogonko@apollo.co.ke','JUDITH.BOGONKO@APOLLO.CO.KE',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2019-12-13 09:04:00','2020-01-27 08:31:02',0),('5218b1a4-03f3-c657-2d48-5e1c37842127','Linda.walucho@apainsurance.org','LINDA.WALUCHO@APAINSURANCE.ORG',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-13 09:23:00','2020-01-27 08:31:02',0),('6945619e-3e40-b331-8c91-5df883d765af','test@gmail.com','TEST@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2019-12-17 07:28:00','2020-01-27 13:15:59',0),('6a549bc9-b72c-b458-c088-5e1c37adf31b','esther.njoroge@apainsurance.org','ESTHER.NJOROGE@APAINSURANCE.ORG',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-13 09:23:00','2020-01-27 08:31:02',0),('6d23e0e2-3562-c85a-1926-5df742cb677e','saagar.khimasia@apollo.co.ke','SAAGAR.KHIMASIA@APOLLO.CO.KE',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2019-12-16 08:38:00','2020-01-27 08:31:02',0),('74c9a9cb-2c4d-eb90-0b30-5e26f470afae','titus.kiarie3@gmail.com','TITUS.KIARIE3@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-21 12:55:00','2020-01-21 21:52:32',0),('76dbb455-e9cc-46ec-a418-5df3656a4993','irene.akubania@apainsurance.org','IRENE.AKUBANIA@APAINSURANCE.ORG',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2019-12-13 10:20:00','2020-01-27 08:32:07',0),('7a75cfa6-10b2-fd9e-a9ff-5e26f5ec64ca','rluganji@gmail.com','RLUGANJI@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-21 13:00:00','2020-01-21 21:52:32',0),('811b65c4-085f-cc7a-f669-5e294c5d1c77','doris.sabaya@ntsa.go.ke','DORIS.SABAYA@NTSA.GO.KE',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-23 07:35:00','2020-01-23 11:36:18',0),('8bef52d5-f2bc-6fd8-88eb-5e1c11f71bae','Joseph.Mbatia@apainsurance.org','JOSEPH.MBATIA@APAINSURANCE.ORG',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-13 06:43:00','2020-01-29 12:03:13',0),('a3eebcf0-3aff-e7c3-b133-5e1c36a51dbc','susan.eboso@apainsurance.org','SUSAN.EBOSO@APAINSURANCE.ORG',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-13 09:20:00','2020-01-27 08:31:02',0),('ba698e0f-3cbf-0063-a80b-5e1c37ab2c12','Charity.Kibiku@apainsurance.org','CHARITY.KIBIKU@APAINSURANCE.ORG',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-13 09:25:00','2020-01-27 08:31:02',0),('c4f1de1b-a40d-1b76-670f-5df7407a316a','c.rm@apainsurance.org','C.RM@APAINSURANCE.ORG',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2019-12-16 08:31:04','2019-12-16 08:31:04',0),('dd8b0e15-0cb0-9ede-74f5-5e26f333d9f5','tabbykimani87@gmail.com','TABBYKIMANI87@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2020-01-21 12:50:00','2020-01-28 14:02:23',0),('f03161ef-cfb5-40e0-ee03-5df2267f8a52','kangethu2@gmail.com','KANGETHU2@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2019-12-12 11:35:00','2020-01-29 12:03:13',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses_audit`
--

DROP TABLE IF EXISTS `email_addresses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_email_addresses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses_audit`
--

LOCK TABLES `email_addresses_audit` WRITE;
/*!40000 ALTER TABLE `email_addresses_audit` DISABLE KEYS */;
INSERT INTO `email_addresses_audit` VALUES ('13a16d66-c220-a580-9ff3-5df73e6d649d','76dbb455-e9cc-46ec-a418-5df3656a4993','2019-12-16 08:22:03','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('1b7143ad-6edd-cb70-6a90-5e1c118b92a8','8bef52d5-f2bc-6fd8-88eb-5e1c11f71bae','2020-01-13 06:43:17','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('1f913f73-22ec-be0a-242a-5e26f4052278','74c9a9cb-2c4d-eb90-0b30-5e26f470afae','2020-01-21 12:55:03','d86b2737-2757-8261-b46c-5e1c35dd162d','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('22e7a25a-746b-315c-5578-5e1c36e41417','a3eebcf0-3aff-e7c3-b133-5e1c36a51dbc','2020-01-13 09:20:53','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('2316461f-793c-cfa1-0615-5e26f57f041a','7a75cfa6-10b2-fd9e-a9ff-5e26f5ec64ca','2020-01-21 13:00:39','e222fa06-97a4-d615-919e-5e1c35eeca92','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('2db511db-97dd-d98f-4db9-5e294c062fc2','811b65c4-085f-cc7a-f669-5e294c5d1c77','2020-01-23 07:35:19','13632602-529c-6bd5-770d-5e1c35bc5171','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('399c153a-debf-4b98-2f74-5e1c3722585c','ba698e0f-3cbf-0063-a80b-5e1c37ab2c12','2020-01-13 09:25:31','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('70ca5334-8788-a9c0-6eb0-5df740c779c9','42871028-7d6f-89a6-4beb-5df7408f0749','2019-12-16 08:31:14','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('778a1841-bfd8-f188-79de-5df226d89988','f03161ef-cfb5-40e0-ee03-5df2267f8a52','2019-12-12 11:35:32','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('7a22ee17-7316-9971-9aa3-5defb38efa2e','19200191-82f7-eb2a-b641-5defb3f39a5e','2019-12-10 15:02:52','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('89a3541a-a4d3-2322-1328-5df354471745','43a20fe3-6f8c-fc20-5ed3-5df354c94aca','2019-12-13 09:04:46','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('8ef661e3-3bee-7ef0-7c7a-5e1c3722377b','1a81ebcc-5bfc-8c1b-e967-5e1c37d0ac08','2020-01-13 09:24:35','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('a151f053-899b-eb25-8b32-5dfb7674bbc8','2a578ff2-38a3-cd4f-9499-5dfb7693427e','2019-12-19 13:09:46','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('a658f3e9-d677-6d3a-6576-5e1c366b4446','35f5ee0b-fbf2-091e-dcdd-5e1c3690b230','2020-01-13 09:21:48','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('a8900a77-d809-d652-d3c5-5e1c36cc1165','34d54320-892f-bb73-3f74-5e1c3641dac0','2020-01-13 09:22:46','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('a89a9306-9e9c-de33-7cbd-5e26f3411f3d','dd8b0e15-0cb0-9ede-74f5-5e26f333d9f5','2020-01-21 12:50:44','cf87deda-842f-518a-6af9-5e1c35a1a2d7','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('bdd14c8f-a070-8a8c-324f-5df7568e7463','6d23e0e2-3562-c85a-1926-5df742cb677e','2019-12-16 10:01:48','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('d1cd1d2a-3e23-6445-269a-5e1c376408b2','5218b1a4-03f3-c657-2d48-5e1c37842127','2020-01-13 09:23:57','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('dc725bda-1111-7fb2-0c25-5e1c379188a1','6a549bc9-b72c-b458-c088-5e1c37adf31b','2020-01-13 09:23:17','a98007d2-dbdc-3dba-9261-5defb35a4621','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('e3b106c4-c7d8-ce71-ab5f-5df883819ef2','6945619e-3e40-b331-8c91-5df883d765af','2019-12-17 07:28:37','42d64a84-e6a3-a628-20fd-5df354b5c941','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL);
/*!40000 ALTER TABLE `email_addresses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
INSERT INTO `email_marketing` VALUES ('7856306a-df4b-4021-3011-5e25712a4ece',0,'2020-01-20 09:25:07','2020-01-20 09:29:14','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','gilbert.njoroge@apollo.co.ke','APA CRM','c.rm@apainsurance.org',NULL,NULL,NULL,'2020-01-20 08:00:00','36bf0996-b5ee-e394-b2b1-5defb08feba6','active','9042171d-c913-91fa-671c-5e257177210e','d8e1e965-7039-5841-42f0-5defb0f64f6b',1);
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('131b7be7-f34d-aac9-a9b4-5defb0481f9a','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('14eff867-95ff-f532-0d60-5e275f7f2e80','2020-01-21 20:28:49','2020-01-21 20:28:49','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','off','Test Emai Temp','Test email template','Test email template and work flow','','<div class=\"mozaik-inner\" style=\"max-width:600px;margin:0px auto;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;width:526px;background-color:rgb(250,250,250);\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:#444444;padding:0px;margin:0px;\">Hey $contact_first_name,</h2><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">This email is a follow up in regards to the leads you submitted on our site.<br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Thank you!<br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:#444444;padding:0px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</p><div class=\"mozaik-clear\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:#444444;padding:0px;margin:0px;height:0px;\"> </div></div>',0,'a98007d2-dbdc-3dba-9261-5defb35a4621',0,'email'),('16895b60-9eb8-b8a3-6947-5defb0f68d6c','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('19ceb778-af71-ffa5-356b-5defb013f82e','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','off','Two Factor Authentication email','This template is used to send a user a code for Two Factor Authentication.','Two Factor Authentication Code','Two Factor Authentication code is $code.','<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('2f5775c3-598d-95db-b867-5defb0df8acd','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,'system'),('32c9ab6b-0c74-dfe8-44b9-5defb0375f48','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,'system'),('36bf0996-b5ee-e394-b2b1-5defb08feba6','2019-12-10 14:51:02','2020-01-20 09:25:07','a98007d2-dbdc-3dba-9261-5defb35a4621','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<div class=\"mozaik-inner\" style=\"max-width:600px;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px auto;width:600px;background-color:rgb(250,250,250);\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"> Hi $contact_first_name $contact_last_name,</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p><table border=\"0\" class=\"mce-item-table\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px 163.889px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Status</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$acase_status</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Reference</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$acase_case_number</td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Description</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$acase_description</td></tr></tbody></table></div>',0,'',0,'system'),('3b116403-1e38-99fb-6853-5defb0daa2f2','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),('3edf5ecc-0f9c-cf1e-469f-5defb07f86f4','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),('44cd1dca-71f4-42a1-733b-5defb07229e4','2013-05-24 14:31:45','2019-12-10 14:51:02','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'system'),('ae25d73b-009f-1358-66a6-5dfb7dda1835','2019-12-19 13:41:12','2019-12-19 13:41:12','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','off','Test','TestHealth','Test','','<div class=\"mozaik-inner\" style=\"max-width:600px;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px auto;width:600px;background-color:rgb(250,250,250);\"><h1 style=\"font-family:Arial, Helvetica, sans-serif;font-size:24px;line-height:38.4px;color:#444444;padding:0px;margin:0px;\">Add your headline here..</h1></div><div class=\"mozaik-inner\" style=\"max-width:600px;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px auto;width:600px;background-color:rgb(250,250,250);\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px 3px 3px 0px;margin:0px;\" class=\"mce-item-table\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"max-width:600px;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px auto;width:600px;background-color:rgb(250,250,250);\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px 3px 3px 0px;margin:0px;\" class=\"mce-item-table\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"max-width:600px;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px auto;width:600px;background-color:rgb(250,250,250);\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px 3px 3px 0px;margin:0px;\" class=\"mce-item-table\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2></td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table></div><div class=\"mozaik-inner\" style=\"max-width:600px;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px auto;width:600px;background-color:rgb(250,250,250);\"><table style=\"width:100%;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px 3px 3px 0px;margin:0px;\" class=\"mce-item-table\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><img src=\"http://63.33.193.137/crm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></td><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><h2 style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;line-height:28.8px;color:rgb(68,68,68);padding:0px;margin:0px;\">Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table></div>',0,'a98007d2-dbdc-3dba-9261-5defb35a4621',0,''),('bb3fae47-bffc-f6a4-c855-5defb01fcefb','2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','off','Confirmed Opt In','Email template to send to a contact to confirm they have opted in.','Confirm Opt In','Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address','<p>Hi $contact_first_name $contact_last_name,</p>\n             <p>\n                Please confirm that you have opted in by selecting the following link:\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\n             </p>',0,NULL,NULL,'system');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_cat` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES ('b750c7d9-635c-fda2-44da-5df75ab74962','New account information','2019-12-16 10:19:47','2019-12-16 10:19:47','1','1',0,'1',NULL,NULL,'2019-12-16 10:19:47',NULL,'archived','sent',NULL,NULL,'pick',NULL,'User',NULL,NULL,NULL),('c338da76-bac8-1861-78d6-5df740e666bb','New account information','2019-12-16 08:31:04','2019-12-16 08:31:04','1','1',0,'1',NULL,NULL,'2019-12-16 08:31:04',NULL,'archived','sent',NULL,NULL,'pick',NULL,'User',NULL,NULL,NULL);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
INSERT INTO `emails_email_addr_rel` VALUES ('b983a861-446c-d8e6-a42e-5df75aedc6f8','b750c7d9-635c-fda2-44da-5df75ab74962','from','c4f1de1b-a40d-1b76-670f-5df7407a316a',0),('c5e5dca3-5954-bad1-8027-5df740370441','c338da76-bac8-1861-78d6-5df740e666bb','from','c4f1de1b-a40d-1b76-670f-5df7407a316a',0);
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
INSERT INTO `emails_text` VALUES ('b750c7d9-635c-fda2-44da-5df75ab74962','','','','','','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\'en_us\'>\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n<title>New account information</title>\n</head>\n<body><div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : saagar.khimasia@apollo.co.ke </p><p>Password : h96JOH </p><br /><p>https://www.apainsurance.org/crm</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div></body></html>','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : saagar.khimasia@apollo.co.ke </p><p>Password : h96JOH </p><br /><p>https://www.apainsurance.org/crm</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>','',0),('c338da76-bac8-1861-78d6-5df740e666bb','','','','','','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\'en_us\'>\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n<title>New account information</title>\n</head>\n<body><div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : juddy.tonui@apollo.co.ke </p><p>Password : SNJpwV </p><br /><p>https://www.apainsurance.org/crm</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div></body></html>','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : juddy.tonui@apollo.co.ke </p><p>Password : SNJpwV </p><br /><p>https://www.apainsurance.org/crm</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>','',0);
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES ('f2bd4b3f-baa4-f08a-6c14-5e2776bf9434','Leads 63fc1379-a665-1678-603e-5e1c10618d24 a98007d2-dbdc-3dba-9261-5defb35a4621','2020-01-21 22:09:55','2020-01-21 22:09:59','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,1,'a98007d2-dbdc-3dba-9261-5defb35a4621','63fc1379-a665-1678-603e-5e1c10618d24','Leads');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Casesclient_name_c','client_name_c','LBL_CLIENT_NAME','','','Cases','varchar',255,0,'','2020-01-13 08:31:43',0,1,0,0,1,'true','','','',''),('Casescomplainsources_c','complainsources_c','LBL_COMPLAINSOURCES','Source of the claim','Source of the claim','Cases','enum',100,0,NULL,'2020-01-27 08:44:08',0,1,0,0,1,'true','lead_source_dom','','',''),('Casescomplaint_source_c','complaint_source_c','LBL_COMPLAINT_SOURCE','','','Cases','varchar',255,0,'','2020-01-13 08:36:10',0,1,0,0,1,'true','','','',''),('Casesemail_c','email_c','LBL_EMAIL','','email','Cases','varchar',255,0,'','2020-01-07 19:06:45',0,0,0,0,1,'true','','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Casesphone_1_c','phone_1_c','LBL_PHONE_1','','','Cases','varchar',255,0,'','2020-01-13 08:34:57',0,1,0,0,1,'true','','','',''),('Casesphone_2_c','phone_2_c','LBL_PHONE_2','','','Cases','varchar',255,0,'','2020-01-13 08:35:25',0,1,0,0,1,'true','','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2019-12-10 14:51:02',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2019-12-10 14:51:02',0,0,0,0,1,'true','8','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES ('243ce368-5d75-fedc-0e21-5e26f15afa90','2020-01-21 12:41:33','2020-01-21 21:53:21','a98007d2-dbdc-3dba-9261-5defb35a4621','c0128425-ade0-5c59-6b2c-5e1c359af34f','Client engaged. \nLead converted',1,'c0128425-ade0-5c59-6b2c-5e1c359af34f','Ms.','Margaret','upperhill','',NULL,'',0,NULL,'0716606362',NULL,'','',NULL,NULL,NULL,'','','','','','','','','','',NULL,NULL,0,'','Existing Customer','','Converted','',NULL,NULL,NULL,'','','',NULL,'','',NULL,NULL,NULL,'http://'),('63fc1379-a665-1678-603e-5e1c10618d24','2020-01-13 06:37:12','2020-01-21 22:08:45','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Mr.','Joseph','Mbatia','Developer',NULL,NULL,0,NULL,'0722555555',NULL,'0722444444',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Web Site',NULL,'In Process',NULL,'',NULL,NULL,'','','',NULL,'85,162','',NULL,NULL,NULL,'http://'),('672c93d7-4675-ad33-535e-5df883a54ed3','2019-12-17 07:28:37','2020-01-13 06:42:16','a98007d2-dbdc-3dba-9261-5defb35a4621','42d64a84-e6a3-a628-20fd-5df354b5c941','Interested in Jamii Plus',1,'42d64a84-e6a3-a628-20fd-5df354b5c941','Ms.','Judy','Test',NULL,NULL,NULL,0,NULL,NULL,'0769552288',NULL,NULL,NULL,NULL,NULL,NULL,'Nairobi',NULL,NULL,'kenya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'Campaign',NULL,'Converted','To engage','','Judy Test',NULL,'e0f6d79a-930d-3e67-ad67-5df889f7d086','e103583e-d24d-cad3-c6a3-5df889eadc10','e35fabc5-a8a8-55c7-f1a3-5df8897737a5','Jamii Plus','200000','',NULL,NULL,NULL,'http://'),('73afd741-3bc8-138b-09bf-5e26f433f468','2020-01-21 12:55:02','2020-01-21 21:53:21','a98007d2-dbdc-3dba-9261-5defb35a4621','d86b2737-2757-8261-b46c-5e1c35dd162d','Enquiry on  Travel Insurace',1,'d86b2737-2757-8261-b46c-5e1c35dd162d','Mr.','TITUS','KIARIE','',NULL,'',0,NULL,'0732063135',NULL,'','',NULL,NULL,NULL,'','','','','','','','','','',NULL,NULL,0,'','Cold Call','','In Process','client contacted and write up sent to the client',NULL,NULL,NULL,'','','',NULL,'','',NULL,NULL,NULL,'TRAVEL INSURANCE'),('76847f17-89c8-a001-235c-5e26c15074d3','2020-01-21 09:16:00','2020-01-21 21:53:21','a98007d2-dbdc-3dba-9261-5defb35a4621','41afbc38-3a08-d92d-15a6-5df740edd6f3','',1,'7607045c-582f-799f-b814-5df3650d9190','Ms.','Janet','Kamau','',NULL,'',0,NULL,'0754123654',NULL,'','',NULL,NULL,NULL,'11253 -00100','Nairobi','','','','','','','00100','',NULL,NULL,0,'','Email','','New','',NULL,NULL,NULL,'','','',NULL,'56000','',NULL,NULL,NULL,'http://'),('7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1','2020-01-21 13:00:38','2020-01-21 21:53:21','a98007d2-dbdc-3dba-9261-5defb35a4621','e222fa06-97a4-d615-919e-5e1c35eeca92','client was busy but asked to be sent a mail',1,'e222fa06-97a4-d615-919e-5e1c35eeca92','Mr.','Ronald','Luganji','',NULL,'',0,NULL,'727891751',NULL,'','',NULL,NULL,NULL,'','NAIROBI','','00100','KENYA','','','','','',NULL,NULL,0,'','','','New','CLIENT PROMISED TO GET BACK',NULL,NULL,NULL,'','','',NULL,'','',NULL,NULL,NULL,'http://FACEBOOK'),('a0cc0301-7c98-e01c-6fa7-5e2fdc3b7ffa','2020-01-28 07:02:29','2020-01-28 07:04:43','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','100 $ bill.',0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Mr.','Gilbert','Njoroge','Me',NULL,'Digital',0,NULL,'0722555555',NULL,'0722444444',NULL,NULL,NULL,NULL,NULL,'Nairobi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'New',NULL,'',NULL,NULL,'','','',NULL,NULL,'',NULL,NULL,NULL,'http://'),('cbc204d7-3f9b-33b0-fa2f-5e26f3eff98c','2020-01-21 12:50:44','2020-01-21 12:50:44','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Motor vehicle insurance',0,'cf87deda-842f-518a-6af9-5e1c35a1a2d7','Miss','','Kimani','',NULL,'Customer Service',0,NULL,'',NULL,'','',NULL,NULL,NULL,'471','Nairobi','Central','0100','Kenya','','','','','',NULL,NULL,0,'','WalkIn','','New','',NULL,NULL,NULL,'','','',NULL,'','',NULL,NULL,NULL,'http://');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
INSERT INTO `leads_audit` VALUES ('2bf2ffc3-581a-dc4b-be18-5df88971827b','672c93d7-4675-ad33-535e-5df883a54ed3','2019-12-17 07:51:33','42d64a84-e6a3-a628-20fd-5df354b5c941','status','enum','Assigned','Converted',NULL,NULL),('7dc949b4-fee6-4f56-c8db-5dfb728d0f1e','672c93d7-4675-ad33-535e-5df883a54ed3','2019-12-19 12:52:33','a98007d2-dbdc-3dba-9261-5defb35a4621','phone_work','phone',NULL,'0769552288',NULL,NULL),('d0646d95-c621-0088-a5a4-5e2776a3b6a8','63fc1379-a665-1678-603e-5e1c10618d24','2020-01-21 22:08:45','a98007d2-dbdc-3dba-9261-5defb35a4621','status','enum','Converted','In Process',NULL,NULL),('d403da0e-861f-d229-0238-5e21b80212fc','63fc1379-a665-1678-603e-5e1c10618d24','2020-01-17 13:35:52','41afbc38-3a08-d92d-15a6-5df740edd6f3','status','enum','New','Converted',NULL,NULL);
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
INSERT INTO `leads_cstm` VALUES ('243ce368-5d75-fedc-0e21-5e26f15afa90',0.00000000,0.00000000,NULL,NULL),('63fc1379-a665-1678-603e-5e1c10618d24',0.00000000,0.00000000,'',''),('672c93d7-4675-ad33-535e-5df883a54ed3',0.00000000,0.00000000,'',''),('73afd741-3bc8-138b-09bf-5e26f433f468',0.00000000,0.00000000,NULL,NULL),('76847f17-89c8-a001-235c-5e26c15074d3',0.00000000,0.00000000,NULL,NULL),('7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1',0.00000000,0.00000000,NULL,NULL),('a0cc0301-7c98-e01c-6fa7-5e2fdc3b7ffa',0.00000000,0.00000000,'',''),('cbc204d7-3f9b-33b0-fa2f-5e26f3eff98c',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES ('334e0f2c-07e3-d1f4-4868-5e144ad27152','marketing','2020-01-07 09:07:04','2020-01-07 09:07:04','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','the mormmonitor',0,'a98007d2-dbdc-3dba-9261-5defb35a4621','',NULL,'','',NULL,'','',0,15,'2020-01-07 09:15:00','2020-01-07 09:30:00','AOS_Products','Planned','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('979d2a55-7cb2-2fc1-f228-5e14485b3499','discuss quotation price','2020-01-07 09:01:15','2020-01-07 09:02:16','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','to  discuss quotation variation',0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Apollo Centre',NULL,NULL,NULL,NULL,NULL,NULL,0,15,'2020-01-07 09:00:00','2020-01-07 09:15:00','AOS_Quotes','Held','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL),('ad029c99-eda0-9649-d6ec-5e1446de9415','Quotation','2020-01-07 08:52:40','2020-01-07 08:53:21','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','To get business',0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Apollo Centre',NULL,NULL,NULL,NULL,NULL,NULL,0,15,'2020-01-07 09:00:00','2020-01-07 09:15:00','AOS_Quotes','Not Held','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
INSERT INTO `meetings_cstm` VALUES ('334e0f2c-07e3-d1f4-4868-5e144ad27152',0.00000000,0.00000000,NULL,NULL),('979d2a55-7cb2-2fc1-f228-5e14485b3499',0.00000000,0.00000000,'',''),('ad029c99-eda0-9649-d6ec-5e1446de9415',0.00000000,0.00000000,'','');
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
INSERT INTO `meetings_users` VALUES ('4454be94-6f0c-7a24-9afc-5e144af32a75','334e0f2c-07e3-d1f4-4868-5e144ad27152','a98007d2-dbdc-3dba-9261-5defb35a4621','1','accept','2020-01-07 09:07:04',0),('a79b624c-af81-5255-d015-5e14483e45ae','979d2a55-7cb2-2fc1-f228-5e14485b3499','a98007d2-dbdc-3dba-9261-5defb35a4621','1','accept','2020-01-07 09:01:15',0),('bdd54810-ad7b-b178-d8f9-5e1446a3877d','ad029c99-eda0-9649-d6ec-5e1446de9415','a98007d2-dbdc-3dba-9261-5defb35a4621','1','accept','2020-01-07 08:52:40',0);
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES ('a98007d2-dbdc-3dba-9261-5defb35a4621','b68e09b5-94b9-8f0a-6722-5dfb7d536bcb','2019-12-19 13:41:12','2019-12-19 13:41:12','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','Email Attachment: download.jpg','image/jpeg','download.jpg','Emails','ae25d73b-009f-1358-66a6-5dfb7dda1835',NULL,0,0,NULL,0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2clients`
--

DROP TABLE IF EXISTS `oauth2clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2clients`
--

LOCK TABLES `oauth2clients` WRITE;
/*!40000 ALTER TABLE `oauth2clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2tokens`
--

DROP TABLE IF EXISTS `oauth2tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2tokens`
--

LOCK TABLES `oauth2tokens` WRITE;
/*!40000 ALTER TABLE `oauth2tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
INSERT INTO `opportunities` VALUES ('e35fabc5-a8a8-55c7-f1a3-5df8897737a5','Jamii Plus','2019-12-17 07:51:33','2019-12-17 07:51:33','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941','Interested in Jamii Plus',0,'42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,'','Campaign',220000,220000,'-99','2019-12-17',NULL,'Closed Won',100);
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
INSERT INTO `opportunities_contacts` VALUES ('e386f2b0-6a7d-6e01-c470-5df889bcac79','e0f6d79a-930d-3e67-ad67-5df889f7d086','e35fabc5-a8a8-55c7-f1a3-5df8897737a5',NULL,'2019-12-17 07:51:33',0);
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
INSERT INTO `opportunities_cstm` VALUES ('e35fabc5-a8a8-55c7-f1a3-5df8897737a5',0.00000000,0.00000000,'','');
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('d8e1e965-7039-5841-42f0-5defb0f64f6b','system','system','1','APA CRM','c.rm@apainsurance.org','SMTP','other','mail.apainsurance.ke','25','c.rm@apainsurance.org','zOTdMsijyQuv7v0hw0g3xahqpfOrXaBy',0,'0',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
INSERT INTO `prospect_lists` VALUES ('a98007d2-dbdc-3dba-9261-5defb35a4621','156caf33-42c6-e37c-ef3e-5e27649abeb4','Target list test','default','2020-01-21 20:52:39','2020-01-28 07:16:10','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',0,'Target list for email test',NULL),('a98007d2-dbdc-3dba-9261-5defb35a4621','882be71e-dab3-a792-231d-5e25714bee37','jh','default','2020-01-20 09:23:03','2020-01-20 09:23:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',0,NULL,NULL),('a98007d2-dbdc-3dba-9261-5defb35a4621','9cd0db38-2a20-0ddc-3093-5e25714277b5','Hey Unsubscription List','exempt','2020-01-20 09:23:03','2020-01-20 09:23:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',0,NULL,NULL),('a98007d2-dbdc-3dba-9261-5defb35a4621','a8d4decc-d040-4312-42fe-5e257118972f','Hey Test List','test','2020-01-20 09:23:03','2020-01-20 09:23:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',0,NULL,NULL);
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('10023182-5c1c-414f-815a-5e2ea20a68a4','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('10050285-ab15-6126-a33c-5e2ea2c762c0','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1032d35f-fe4e-575c-219a-5e2ea2e1090d','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('10655e9f-013b-65d4-3187-5e2ea217d3f8','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('109646f5-c26a-6e11-92d8-5e2ea2300f74','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11ce001b-4378-cc2f-23b8-5e2ea248df3b','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('124e3401-f568-3770-2e4c-5e2ea272df9c','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12840038-7c96-030c-bed8-5e2ea244dbef','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12f404d3-0b7a-ea08-bbc1-5e2ea2fad3d3','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('1329e63a-50ef-67b5-ad15-5e2ea23a8a0a','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('135c8cfb-bb3a-3192-5b96-5e2ea2f1909a','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('138a84d3-9ff0-1389-ef39-5e2ea2ff79df','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13fa4160-4e8d-632a-903a-5e2ea27c71c9','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('142952e0-b145-e6bb-8be3-5e2ea2dcbf59','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('145ab6fd-d36d-4f23-56e2-5e2ea2ae5fe0','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1493f339-9fa3-2689-e00e-5e2ea239a37e','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1503f00f-98d7-fd9c-56be-5e2ea272ba1f','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1533bebb-400e-88f8-6dc6-5e2ea25a1fc2','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('156588b0-3f1f-d9f4-115e-5e2ea294a42f','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('15e134dc-e63e-24a0-5098-5e2ea289b903','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('16a9ee53-d87e-5c98-0358-5e2ea27df3fb','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1735380e-2beb-bfa3-c1d0-5e2ea2aac032','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('182d0bef-59b6-f8ba-2629-5e2ea2e1a3cc','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1863ffb6-074e-6d3e-b0f1-5e2ea23aaeee','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18e7f833-9b83-9520-f873-5e2ea29702f6','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('191913d2-101f-680a-3908-5e2ea2707e6f','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('194a0448-34a9-6e7b-20d3-5e2ea207038b','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('19c0e57f-16fd-471c-27c2-5e2ea2d004b8','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('19f22316-4b7c-ce69-8ff5-5e2ea21bd81e','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('1a2407dd-2c7c-5838-ea22-5e2ea2d351fc','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('1a5645f4-6526-f373-ccff-5e2ea2981d4a','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('1ac5cdad-39a6-7b67-9278-5e2ea2643dc1','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('1afa8cb5-8ff4-e60c-4438-5e2ea23ddd86','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('1b2c17cf-51ce-a657-458f-5e2ea28c8204','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('1b5e4d21-d346-bb81-b403-5e2ea24a068d','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('1b9801b9-8eba-9c75-fd2c-5e2ea21d54bf','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('1cca1a1c-9ae0-9bc2-fbeb-5e2ea24072fe','securitygroups_emailmarketing','SecurityGroups','securitygroups','id','EmailMarketing','email_marketing','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailMarketing',0,0),('1d5f50f8-9df4-81e1-6a36-5e2ea251bca1','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e296c60-9808-5025-fe72-5e2ea252c5a1','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ea205e0-5b81-5c2b-d447-5e2ea20b873d','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('2084e3c4-e370-ff1e-afc7-5e2ea2a64cba','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('21144fcb-4727-05ba-179f-5e2ea2f1925a','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('218cf8f5-0109-67a7-ec5a-5e2ea2465358','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('21d52b02-5249-9152-cf6e-5e2ea2d20a19','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2371ae33-b44c-adfb-01a1-5e2ea2de5d1e','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2406b2bc-634a-271f-7934-5e2ea2083baf','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('248362f9-61ce-0359-09ff-5e2ea2e3cb8b','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24c51e35-dd1f-fab0-a970-5e2ea2a23d31','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('24fa12da-52ae-0907-217d-5e2ea27b31c5','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('25805038-4bb7-3371-32b0-5e2ea2978e5a','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('25bbf516-db07-5d0b-4c37-5e2ea294c8a6','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('25f0e5fe-c153-1ab8-ec7c-5e2ea2d65cfc','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('265f0d01-c4b3-d6ff-2772-5e2ea29627de','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('2660d734-4ae6-1c9f-ca29-5e2ea2d85fb5','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2694ddbc-1676-234a-af3d-5e2ea2ae744f','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26c515ac-197b-3e92-bc2b-5e2ea292694e','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('26f73b26-04df-814a-ab09-5e2ea27713a4','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('276b3912-2e35-2ff5-e623-5e2ea2021c9f','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('279eb3cb-fbf6-c046-cc0b-5e2ea250d346','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27d0e97c-566f-4507-353e-5e2ea207615d','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27fffe36-4b8c-e604-95b0-5e2ea21d7ed7','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2874d37f-adb6-686b-540d-5e2ea280f11b','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a7ac503-2899-b9f9-9ff0-5e2ea2b8b50f','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b0b03e5-81f9-a961-1735-5e2ea2a1c171','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b92ebb9-3801-3ab8-e6e8-5e2ea264c99b','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bc210be-c238-f843-b29e-5e2ea2a3ea7e','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('2bfa814d-bbac-2593-a72c-5e2ea2e78d82','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('2c70f264-c5cf-d4ab-87e9-5e2ea2644215','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('2ca8d930-e1ca-0d79-58a6-5e2ea275bfe1','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2cde7e18-4f9b-340b-16c9-5e2ea25674d3','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d58640a-4869-17d1-4459-5e2ea266906a','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2d8c824b-6439-8afe-0789-5e2ea2593a67','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2dc2f8c0-bf13-e447-627b-5e2ea20e62b1','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2e38f47d-30bf-b46c-5919-5e2ea230a7de','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2e6c7376-04a0-371f-df35-5e2ea2c8e9cc','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2ea65203-c362-c892-ea37-5e2ea2fde231','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2edbdd86-bf16-8760-0a7b-5e2ea2b990de','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('2f5406e2-82bf-56a8-0192-5e2ea2865dc3','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f860452-fb77-35f9-2b82-5e2ea2ccbcfa','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2fb7f262-6979-ff00-a0ae-5e2ea28cff10','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31cf4dca-3ebc-8ec3-7ee5-5e2ea215474e','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32586dd0-6286-88ed-1f30-5e2ea247fa5b','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('328c44c7-1e7f-0977-6a58-5e2ea26a2d2b','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32bc9213-2b0d-1ea8-2d5b-5e2ea2e02eea','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('332f423e-d10a-3cd9-34b3-5e2ea2c9d308','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('336a684d-0465-8206-a254-5e2ea29ed7ff','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('339da161-f282-2893-1d0a-5e2ea2a49a4e','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('340be36a-ee72-bd74-6948-5e2ea29a0cee','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('343fe6d7-2b27-fd40-88ee-5e2ea26fbd5e','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('34739b16-53cb-605d-b1c8-5e2ea23ede3e','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34a88a8e-1c33-c5d9-d249-5e2ea2a5076b','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35238cd1-df68-5efe-6581-5e2ea2ed84e7','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3561ee52-6261-ba25-7285-5e2ea2bfa281','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('359dde2f-e647-7f07-741d-5e2ea23fb40f','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37464363-0ee5-8c8a-40ab-5e2ea241d882','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('37d21046-c87c-53a0-f56b-5e2ea23da50b','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('394aa452-efb6-8d7d-3b7c-5e2ea2dc3696','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39dca169-67ec-c85f-38c6-5e2ea2c1e36a','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('3a5528da-8989-5161-1ab8-5e2ea2252897','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a88d8b6-d973-12bb-5b7a-5e2ea21fe188','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3beb363f-848a-9637-0a1a-5e2ea2a0d66d','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c79ed98-61f0-8052-5ee9-5e2ea255d5bc','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3cf6e3cb-bf0a-a6c2-4023-5e2ea2bc78f8','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d28864c-56f6-8112-b4c2-5e2ea2ae97d1','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('3d5d981e-407e-4063-c5a3-5e2ea2c72dec','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('3d90c531-ffb3-9a34-4c5f-5e2ea2971fa0','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('412c568a-ba46-9ce5-c288-5e2ea2f3280e','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('41c97205-f79b-d433-650d-5e2ea2cc89b0','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('423d3f32-5702-6676-3c06-5e2ea24028ff','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('426dc417-01a0-7ab7-b6b4-5e2ea2c92f09','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('42f4e17a-fce2-4a04-bb06-5e2ea23736a6','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('432e3f7f-9bd0-a1c7-ed9c-5e2ea25ae19f','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('43648c7b-228f-4022-c23a-5e2ea2a20a2b','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('43eb5bcf-504c-1879-1564-5e2ea254c42f','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('442316ca-6f67-1681-9c01-5e2ea2d6e7c8','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('44569537-4d52-ffdf-22cd-5e2ea263e95c','emails_meetings_rel','Emails','emails','id','Meetings','meetings','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Meetings',0,0),('45ef9ffc-934b-27a5-2744-5e2ea21b49ad','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('467dfe3c-3d00-93cc-2abc-5e2ea2e20b62','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('46ce0817-2605-a69d-d8a9-5e2ea2ae8f57','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('46eed3c8-9eac-013e-a6aa-5e2ea2dbc7c5','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('47258aed-5bf8-2444-3f37-5e2ea25ba964','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('47ad61b9-af9d-8bc4-549a-5e2ea23ccf28','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('48c788d7-31e4-1b44-2c7b-5e2ea2998b6e','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('495e911a-1ddf-93cd-82c2-5e2ea27201f0','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49ef1423-4946-a2db-2388-5e2ea24dcb8d','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a27fe4f-4e6a-22f1-cb94-5e2ea2ccf6e4','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('4a9a10f9-8c30-b17d-c80e-5e2ea2d45480','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d8af9f4-a101-2f43-578c-5e2ea2f401b6','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e20c3f1-4c79-425b-480c-5e2ea2912c05','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e9cb619-e3e6-3e24-a90b-5e2ea2c3568f','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f290cb8-e4ec-6cba-9ef8-5e2ea269292f','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('4fdc27d1-dc4a-fba1-13b6-5e2ea249bec1','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50626c27-5164-b79e-fa16-5e2ea2d7e674','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50d16c55-d8b5-13fd-4a86-5e2ea2ec631c','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5104e84d-2546-b5b3-2f0f-5e2ea2a1bc21','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('51791b7f-c8a2-68fa-0daf-5e2ea20efd2d','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5209a517-0bd3-a0c8-f70a-5e2ea23ac34d','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55d5ba1c-c1b9-7352-bc15-5e2ea20b4d5c','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('56541a0d-4acd-a6fb-64bc-5e2ea29d02f7','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('56a900df-a618-58a0-21cc-5e2ea2966a37','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('56c00a68-39f9-5b5c-cb27-5e2ea22015d9','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56fd9c52-27c9-58a5-8ede-5e2ea24fd235','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58718806-3250-caae-0456-5e2ea21a998d','spots_modified_user','Users','users','id','Spots','spots','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58f37396-2891-c94e-8b21-5e2ea263af88','spots_created_by','Users','users','id','Spots','spots','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('59646889-e66e-d0df-ab1c-5e2ea2a931ba','spots_assigned_user','Users','users','id','Spots','spots','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5993686f-cac9-66eb-f813-5e2ea28cdfd3','securitygroups_spots','SecurityGroups','securitygroups','id','Spots','spots','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Spots',0,0),('5996074f-c70a-4f29-47a1-5e2ea24d9f71','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a379702-80db-2d26-ec34-5e2ea2a2cb55','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ad6115d-e259-b016-a4cc-5e2ea2a879be','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5becd9fb-4aee-b9c2-1f59-5e2ea2109842','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c7c5ef9-ddcc-594e-3926-5e2ea202a690','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c980bd2-3895-817c-39b3-5e2ea2283fd1','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5cb4a7df-5427-14da-7bb0-5e2ea258a6a8','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5dc7f211-af70-e215-b2d7-5e2ea242e763','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e617428-6072-44de-23fb-5e2ea2b4269e','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e9226b0-0910-1e37-4626-5e2ea2b144be','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5f241c0b-b988-b520-6598-5e2ea2585ca5','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5fb55419-e737-e5d1-4789-5e2ea287349a','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('602bbe43-245b-d48d-7fa0-5e2ea2372c95','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60b6f40e-fd98-eb9f-d092-5e2ea21d2b88','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6141aa07-d8cf-27c2-62c5-5e2ea2f47993','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('61f72ce7-9660-3727-c4d9-5e2ea27f97a8','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6285b408-3648-4783-2db2-5e2ea22ff0b5','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62fecf66-11e2-669d-6a14-5e2ea2e94156','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('63c2605c-4165-7fe7-71b1-5e2ea2cb8828','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('644f8dc3-a7c0-5d06-8508-5e2ea2dfe680','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64858478-793b-2da7-f43f-5e2ea2c73c68','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('655c5e9c-58f3-0b54-a12b-5e2ea297eac0','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('658edba7-43be-3674-b664-5e2ea2964159','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6623842a-69a2-cb23-9f4f-5e2ea2c3f872','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('66c91ce5-9bb1-0e48-0139-5e2ea27ecb4f','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('674f0ac6-a73b-e251-12a0-5e2ea28567c2','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67819d0c-fa51-22f5-7943-5e2ea2234912','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67a20011-6d81-0a4e-46b7-5e2ea267395e','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68805c0d-b2da-8d21-429f-5e2ea2b8e508','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('690da6bb-4f25-e072-f79b-5e2ea21d94bf','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('693ef621-7cd7-dc7d-107b-5e2ea27fc48c','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69707974-3329-b145-22f0-5e2ea25503b3','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('6a9083c0-e158-86c0-5ec2-5e2ea2aa9078','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6aeb0263-c23c-a991-bf8f-5e2ea2c7ad58','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('6b13e097-8809-07a7-11d3-5e2ea2e6c462','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b4a28d8-c296-9a4e-d4d7-5e2ea2dc7f8b','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c26c340-9722-5c7e-8d9f-5e2ea2d54fac','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c582b84-a0f6-9206-5d97-5e2ea2bdb120','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6cd424fd-7abc-ef81-0bd7-5e2ea25338b0','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6d9ddba8-682a-c3aa-7c14-5e2ea2af7491','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e287f6c-b03c-373e-f61a-5e2ea2bd76a1','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e61fd41-51a1-5985-0926-5e2ea251f084','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ed65901-a631-fd61-e82d-5e2ea253f03d','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),('6f88a2d1-afef-a317-9d55-5e2ea24c70eb','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('700c06c8-8bea-7b61-c362-5e2ea2fe2c93','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('704643a1-5adb-08d9-f49c-5e2ea226345e','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70b4af83-c1e6-da72-dc2c-5e2ea2ead421','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('70e7067b-5f32-18b8-f53f-5e2ea23c13c5','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('71193190-2ec6-5141-c13e-5e2ea2aadb6a','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('71bbd6ff-7923-8f15-ca94-5e2ea29a329b','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72388249-39d4-1faf-a801-5e2ea23499a5','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72730017-a898-22d2-d227-5e2ea2760e3b','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('72b222a5-ea37-cf37-4ffa-5e2ea273e023','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72fe0d11-fddd-efb8-56e5-5e2ea24e0fe9','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('73494574-7020-baa9-533b-5e2ea2e4dc25','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('73c4d025-321c-c98b-2ab1-5e2ea2fe8e63','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7466cf37-af1c-2b21-4b8e-5e2ea2968dac','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74edb9e5-e4e3-fa16-4df2-5e2ea20aad18','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('751fa078-9249-5cf0-8f83-5e2ea27b4d8a','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75b6eeac-9d1e-ddd2-42b7-5e2ea26d227d','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7682d316-eb12-5e8f-4676-5e2ea254fc8c','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77029ded-4674-3189-fa84-5e2ea20e4130','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7777bdad-c653-ce1a-e90c-5e2ea22bf748','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77ad8675-9025-23e3-29b2-5e2ea2090c70','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7869996e-6a6b-1a87-ec84-5e2ea23731c1','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('7a34d80b-ad31-47d0-683b-5e2ea239e6d9','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ac90af2-47ec-3860-a53b-5e2ea2641c38','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7afd6099-1656-6770-28bb-5e2ea2d619a2','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b7385d6-0e5c-441a-a642-5e2ea218bda5','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('7ba50c13-6cc4-fa73-b2fa-5e2ea27ec1ba','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7beda2e9-a767-5e89-ea7e-5e2ea21d1f8d','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7bf70242-bfae-dd39-a98c-5e2ea2908eb6','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c58f754-7edd-b367-2161-5e2ea2c8b84b','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d13c5ed-8938-d84a-a7ac-5e2ea2c3b313','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d98566f-5db6-161e-507c-5e2ea2375b1c','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e6be87c-f665-eda2-5e7a-5e2ea25e6d14','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f25c77b-50a0-41d2-20ad-5e2ea2494915','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f9fd3c6-0e29-811c-fafd-5e2ea2f10d26','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('804550ce-f196-0e3b-7359-5e2ea29980e4','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80e6c8e1-2013-5938-1f1d-5e2ea2e6dd56','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('822384a4-218b-5aec-3056-5e2ea213d098','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82a0fafc-391a-5c09-4a04-5e2ea2892111','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82d20ab4-169a-1e7b-1984-5e2ea2dbba55','securitygroups_aor_scheduled_reports','SecurityGroups','securitygroups','id','AOR_Scheduled_Reports','aor_scheduled_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Scheduled_Reports',0,0),('84180154-9ebf-53c5-5bb0-5e2ea290c4bc','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('842c7054-fe90-45ba-e3e1-5e2ea24534cb','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84ab9f8d-3d94-1556-583c-5e2ea25e3848','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85286074-43f6-5560-df5e-5e2ea27798c9','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('855c07e2-1e1c-bc99-dfe5-5e2ea26b8a98','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('86032a78-98b6-343e-6a4f-5e2ea236b23d','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('86784fea-971d-ee94-4090-5e2ea2a98f2d','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('86aaf7c9-f3aa-9536-496e-5e2ea2a1f992','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('87160259-1c96-86a4-a54d-5e2ea208571f','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8721b5b0-7c99-c8f2-c45b-5e2ea246daf7','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('87529a30-1d23-b02a-9b22-5e2ea28ef1a1','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('878988de-25b3-ff9a-97bc-5e2ea2948b9f','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('88925986-8d89-8035-b5db-5e2ea26117ed','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89236b1e-a4f2-8fbb-f8ac-5e2ea2b9c039','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8959bbda-1cf4-d36f-2478-5e2ea2e4061d','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('898d557e-d6c7-6979-6b7a-5e2ea228d8a2','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('8a0179b8-fa79-b7fb-23d8-5e2ea2a9b9e7','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a3767aa-06d0-f804-c19c-5e2ea2d24e39','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a6f0610-63da-b8cc-92f9-5e2ea2133f69','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b000adf-238a-352a-02ad-5e2ea29129fa','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b89ed05-6b46-5655-47a6-5e2ea2b303aa','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c0025eb-7ba4-43d6-09a3-5e2ea2270fb1','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c34b7fd-58cc-2a38-d6d2-5e2ea228cd70','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('8ce7933e-613c-c6d1-ee87-5e2ea2de2a86','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d7ce0f7-0a85-60eb-32e2-5e2ea287491d','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8df3bc05-690a-3454-9391-5e2ea2677f9a','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e27d5ff-8379-5c94-71aa-5e2ea2da29cd','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('8e6d4ac4-18a2-4c49-5aa7-5e2ea2b42d1e','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f38c3e8-a911-629e-621e-5e2ea2e12e9c','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8fbfeecf-d71a-5a36-e833-5e2ea2d7e180','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9038c0e6-04f1-ee79-2c5a-5e2ea2e60a24','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('906fa9e7-a483-c733-571b-5e2ea26ed256','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('90e4b677-c1bd-d60b-dd13-5e2ea2817381','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('918405ae-4d40-046e-cd0c-5e2ea2290774','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('91d338f1-04a2-b13a-6537-5e2ea201d782','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92629e41-ae60-ea06-c029-5e2ea2686809','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92d61adc-eee4-e3aa-bd17-5e2ea24570f5','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('930e98a2-df93-1752-4006-5e2ea26515ef','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('93d7dd62-eb73-fa32-66e8-5e2ea24bf823','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9468142b-5b78-25c9-64b0-5e2ea2f5872d','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94da3421-2c9b-3fe5-4301-5e2ea266034b','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('95113c51-d98f-29d7-de6b-5e2ea2c5e511','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96269def-42e2-ae7d-0908-5e2ea253b4a0','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96b3c630-c162-90f2-046b-5e2ea295a89f','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9731d3f0-4f73-4e6f-49ad-5e2ea20c5f6c','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97693ee2-9e21-f7ac-6835-5e2ea21ac315','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('97e2e3da-3eb3-c710-469c-5e2ea2c943bb','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('981e458a-c7dd-fece-7267-5e2ea2b4a9bc','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98bf1538-2d64-e8fc-09ec-5e2ea2dc72fe','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99408568-bd92-a413-d252-5e2ea2c37c05','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99d889a2-d035-4146-6dd3-5e2ea20a0838','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a14d70a-0611-54c0-f6b9-5e2ea2ece64a','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a459322-501a-0e69-a22d-5e2ea2e2ac0a','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9ac04a8f-5fd6-0eae-a3a5-5e2ea2f691dc','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('9b0647b4-7acb-40c3-668a-5e2ea29639fc','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9b3cff81-1853-057e-fd17-5e2ea228ad06','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9bcd13c1-bd54-6683-6318-5e2ea25665ee','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9c6e4af5-55f4-0fd4-6cdb-5e2ea22289c6','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9cfb5c38-9a94-adc3-ccec-5e2ea2c892cb','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d992556-0fa2-eeed-438f-5e2ea20f9421','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e228d0f-481e-29a8-bf4e-5e2ea2b766fc','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a0220928-eaa4-6a98-d095-5e2ea2a63400','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('a0a2a8c4-5689-220c-9687-5e2ea26ea650','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a131a8bb-5421-fbc0-26d6-5e2ea29cf923','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1a71b45-80fa-e098-ee76-5e2ea2a521a0','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1dd6fb1-e871-48c2-57f4-5e2ea254cd42','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('a2135c54-8659-fa62-98c1-5e2ea2c72ee3','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('a280c8a5-9e51-c51e-3f18-5e2ea24d0bfc','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('a2b1f055-667f-2828-ed0a-5e2ea2a5ad91','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a2e04cc6-ddd7-650a-90b8-5e2ea241e4e4','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('a319a1d5-c9c8-fda6-a8a7-5e2ea2e6b43d','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a39672ed-3ade-e75f-61a7-5e2ea298a9fe','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('a3cf0457-4abb-4d28-b209-5e2ea2f42312','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('a406cd66-8e77-753c-e0e1-5e2ea2ee0ca2','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('a5a72b91-d2e2-86f3-feeb-5e2ea24ae919','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a62e18d4-e481-2502-fec7-5e2ea2be2283','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a6b276f1-565c-79ed-b305-5e2ea2a1dd6b','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a6ec884b-d7a0-4568-52ea-5e2ea2f8906f','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('a898e45a-253a-630b-18d3-5e2ea2264f49','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a8e000c4-d39d-09bd-de00-5e2ea2723bbf','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('a926c63c-1291-de83-c5f6-5e2ea249fce4','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa061946-002f-3270-a9e3-5e2ea2fcdda1','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa8d22cf-2eaf-3659-b157-5e2ea2ba5167','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('abe2187e-34a2-6331-dd65-5e2ea2dda697','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac360d58-3e60-2a1f-cbcb-5e2ea243d7b1','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('ac7cb3a4-c10c-a348-ce44-5e2ea2da9da9','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('acb342d3-27b1-df10-335d-5e2ea2366f37','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('adad7b5d-eaa1-89ca-e90e-5e2ea2af00cc','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae32aa7e-3abe-8013-80ac-5e2ea220c1be','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae6bce13-c2db-49ad-af32-5e2ea2f3d832','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af051ffb-8b9d-4486-76f6-5e2ea2c497fb','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('afa00fbf-da99-5486-f520-5e2ea26167ef','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b018ffdc-0cdd-d3d0-0a1e-5e2ea262f149','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b0d02226-37d2-a475-9b1f-5e2ea25585bc','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b155fd4f-b304-d9d0-13a5-5e2ea2158b95','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b18b11d0-e004-fee7-78b5-5e2ea2318689','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b21bca28-077e-9eef-f1ab-5e2ea2ac8358','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2a1d3a1-6dd2-7133-af40-5e2ea2c6360e','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b36507f7-126f-b4e5-5a59-5e2ea2b02bb0','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b388bd94-42e4-b97b-1713-5e2ea22fb60f','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3bbe850-b1a7-8e39-fd73-5e2ea26decd1','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4412ef8-1a05-5579-ea25-5e2ea25aa043','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4e58081-89f1-0f69-4894-5e2ea2145fa5','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b5796915-4132-a825-a5e1-5e2ea2da8dd8','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b5aba47b-f16a-5969-f2df-5e2ea240014c','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6209a61-acde-098c-4956-5e2ea23d45b3','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6590270-7d11-609d-0f1b-5e2ea2099e9d','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b6e2e7a0-c210-c516-23a8-5e2ea219eee9','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b76eb7e9-afd0-95ad-692e-5e2ea28bec03','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7a30b67-6d9f-f5ad-3c20-5e2ea2caa57e','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b814158a-3fe3-0f74-7533-5e2ea2a1726f','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),('b8475821-7195-47bd-47de-5e2ea282f79c','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9024afa-cd39-8d96-c6ca-5e2ea27f1f1d','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b95d03c9-2da5-1c7a-e112-5e2ea2a485f6','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b9a84b52-72c8-0764-fd72-5e2ea2a6f71c','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bba8e8fe-2745-ede5-4ff8-5e2ea2c3c053','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bcd06055-b4cd-e184-f7d9-5e2ea23edda0','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),('bd4a6924-bec6-c817-6f77-5e2ea2562613','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd9c6c00-7451-d9c1-35c8-5e2ea2e88140','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be1448cb-6c69-8065-6e3a-5e2ea2d130ff','surveys_campaigns','Surveys','surveys','id','Campaigns','campaigns','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bed452a7-a65a-8701-59d7-5e2ea233b12a','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bf6213f9-5027-2762-816c-5e2ea298fc62','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bfd59cb6-1d10-fc3f-846f-5e2ea2bf386c','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c007d808-1cc8-73b8-c7a2-5e2ea2f71b65','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),('c02409a7-93d5-fa87-3f52-5e2ea2d65a50','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0c44e92-5bde-6cd2-f3c6-5e2ea2ef3020','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c1626bc3-f648-4f11-89e1-5e2ea2eb3fd2','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c20b5ef4-ae0c-ccbb-de72-5e2ea2425ea8','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c245b78e-8cb6-4c8a-a0fe-5e2ea2022018','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),('c2c72121-a70f-c9f3-a22b-5e2ea24b0e28','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3340644-7082-0a99-d531-5e2ea25cf070','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3858545-1c95-ad51-993f-5e2ea2c3fec1','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c412e4e8-b056-b2f0-d168-5e2ea2f561eb','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c449535d-554d-5908-fdaf-5e2ea282e8bb','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4c751e2-4489-b1ce-9ffe-5e2ea281d683','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),('c6200639-962d-7dd5-cc1e-5e2ea20b1848','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6645dbf-ab07-4522-3cab-5e2ea255b0c7','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('c6e139cb-ac4d-4a41-a892-5e2ea28ff612','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('c7162b71-8a73-53c0-53b1-5e2ea2212878','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('c79889dc-9af0-1816-2c6c-5e2ea2d5ab35','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('c7d6e7d1-187f-d096-87e9-5e2ea29a0dd7','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('c80f638c-41c2-9b16-1089-5e2ea2421867','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('c888d63e-20f0-487f-575a-5e2ea20c5b2d','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('c8cc9a24-3a3a-4bb1-3510-5e2ea2249b6f','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('c9071d8c-76c4-9118-e159-5e2ea2161373','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('c91a028e-0968-3df3-a30c-5e2ea2ed8204','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c97ca82a-a124-d447-7d0d-5e2ea26abc75','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('c9bfe155-3079-474a-4802-5e2ea2996a1e','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('c9f76e2b-f2e8-0a4f-8819-5e2ea21191c1','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('ca40c9ee-d713-ef7a-916d-5e2ea27cf6e9','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('cabfc01f-a635-1568-ab69-5e2ea208ae41','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('caf8263c-f7bf-48f6-968a-5e2ea2412355','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('cb2f2f22-b32f-a2cd-3632-5e2ea2aa1647','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('cbadd744-edfb-4d00-3402-5e2ea2d8c8ec','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('cbe89411-2b43-cc5c-1618-5e2ea2a0106a','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('cc22c5ad-249c-62ef-b4c2-5e2ea2a40789','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('cca612c6-fa47-bdb9-bd8e-5e2ea2dc1b68','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('ccddafe6-2f12-c0e3-c3bf-5e2ea268981b','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('cd1859e5-737d-ba61-d962-5e2ea2f044a6','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('cd870faa-a442-e130-89e8-5e2ea207c1a9','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('cdbde2a0-2846-2efb-8f7e-5e2ea2606f49','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('cdedcf1e-b2ff-c49e-e70c-5e2ea256fe04','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('ce63b533-2e8b-7776-cfec-5e2ea29fd446','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('ce958390-4bad-f66a-333d-5e2ea2dab464','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('ced04e2f-f7ba-1726-baff-5e2ea29085a1','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('cf07b729-d261-59f2-2eeb-5e2ea26e978e','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('cf787aff-27cd-2603-2381-5e2ea296c0ae','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('cfac6ac9-925e-08f1-cd80-5e2ea2b6e46d','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('cfe35e4f-5d57-6abb-0c64-5e2ea2b37cd1','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('d057c6eb-5a11-933a-faa1-5e2ea2806ac3','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('d08e6319-75c7-4ec3-735f-5e2ea2d6850e','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('d0bebf17-a0a8-6bbd-24c0-5e2ea2936553','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('d0f16ffe-3025-d946-cc50-5e2ea2eb036f','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('d1654913-b02f-08d8-89f3-5e2ea23917d5','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('d19f7059-da03-2094-3311-5e2ea2a0fc83','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('d1d6b9cb-ae86-21c0-5e5d-5e2ea2f50a99','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('d24ee712-4fb6-699d-0696-5e2ea26ea2a5','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('d2843cda-2238-72b0-1577-5e2ea2fe8790','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('d2bac4f5-857f-087b-12a9-5e2ea238765e','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('d2efb995-fae5-12ad-9450-5e2ea2f46cf4','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('d37003aa-cf74-09e0-b511-5e2ea276407e','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('d3a33493-ad81-5651-9e81-5e2ea2da3d2b','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('d3d59b83-99b1-e04c-ce8a-5e2ea27354b6','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('d44fdf8c-5db9-b504-0ea1-5e2ea2b5ee1f','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('d486f12f-556c-0f0f-95b1-5e2ea2b623c6','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('d4c37351-7708-0b60-5539-5e2ea2e72c80','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('d53edd41-4399-567f-5b3d-5e2ea2fe521e','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('d574f53f-b229-6204-1b32-5e2ea2cdf59a','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('d5ab7db4-49a5-5e29-492b-5e2ea2ee5cc2','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('d5dd8a1d-605a-a85f-c245-5e2ea2f059fb','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('d64b8f05-563e-08a4-33d8-5e2ea2b8174f','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('d684611b-3536-df4a-7c41-5e2ea24e8ead','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('d6beca39-984a-277d-2920-5e2ea2af2475','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('d7365ac6-a7e7-9fef-f9b8-5e2ea2c4e8d4','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('d76de9d0-9bc9-f026-1e1d-5e2ea27612f3','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('d7a427be-1195-5146-0ddd-5e2ea26efc2b','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('d7e056c9-05a6-7970-643c-5e2ea24e5797','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('d856d7ec-fa79-8db2-02c4-5e2ea2dbb708','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('d88bac7a-9f47-7280-bbc2-5e2ea243b8f6','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('d8cb0b75-1568-3bec-30ff-5e2ea215b909','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('d9d939ac-2c2a-8e9f-c3fd-5e2ea21ab6ce','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('da511a53-c1cf-954c-a6ad-5e2ea2a1011d','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('da9a0a32-4d16-c631-7b7a-5e2ea2f86826','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('db10c8b8-3bc1-4ff5-1dad-5e2ea2615a4d','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),('e25409ca-3513-75d0-6d5b-5e2ea26a36c2','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('e8ff1c3e-7c95-e3ed-9634-5e2ea26c2158','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ea2551ff-0fae-5b68-1d67-5e2ea29f507c','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ea6e00a8-7820-f2ea-2796-5e2ea2ebd7da','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('eaa98a80-cd60-7976-a05a-5e2ea2ad62f8','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eb225743-0084-1d51-885c-5e2ea29a225c','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('eb59dbcf-30ec-590e-507e-5e2ea243deb1','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('ebd89835-47ba-d9b2-601b-5e2ea23d4241','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('ec0d28eb-c08f-3d40-6d65-5e2ea20a1809','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec9d1903-8b0e-8879-44a0-5e2ea2369624','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('ed11f9c4-e265-c2bf-4bdd-5e2ea26b3029','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('ed456049-5706-dfa1-8928-5e2ea206c5bd','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('edced7d6-7886-6012-7f11-5e2ea25f2965','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('ee0498d0-a566-32c6-3ea9-5e2ea21670c8','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('ee3d3a21-807c-9156-ef31-5e2ea25a1ec7','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('efb3005b-c031-de73-9e83-5e2ea27856e6','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f038954b-4619-956d-2bd4-5e2ea275432f','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0b51cf3-54a4-9d4d-aa98-5e2ea24bf84f','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0ea7ed3-8ca5-48a8-f4c8-5e2ea22af793','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('f11ce725-c03a-078d-cf48-5e2ea2d041a4','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('f1951a51-b725-13a1-2ac3-5e2ea28e95c1','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('f1b300b2-b514-5934-987a-5e2ea22c13ad','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('f1cb52e2-9f0e-b16c-51ec-5e2ea2c5bd2d','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('f1fdf479-32ae-f89e-6fce-5e2ea27f6638','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('f2310c44-ee39-21af-3dda-5e2ea2297b85','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('f2fd3cf7-02b9-454c-7c2e-5e2ea28ae444','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f57d0bb3-988a-5acc-2758-5e2ea2a35db4','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('f88b0f06-4c1c-ae93-caa3-5e2ea246aa35','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
INSERT INTO `reminders` VALUES ('cbde1b67-9408-d0d3-517b-5df885ff041e','','2019-12-17 07:35:30','2019-12-17 07:35:31','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,'',1,0,0,'1800','3600','Calls','c0654a2c-6c31-410e-0860-5df885a274ff',1576589400,0);
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
INSERT INTO `reminders_invitees` VALUES ('cd96b4ef-98aa-dc78-d4c9-5df885943e1c','','2019-12-17 07:35:30','2019-12-17 07:35:30','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,NULL,'cbde1b67-9408-d0d3-517b-5df885ff041e','Users','42d64a84-e6a3-a628-20fd-5df354b5c941'),('cf271a0c-7f1c-d7b8-11b4-5df88552a745','','2019-12-17 07:35:30','2019-12-17 07:35:30','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,NULL,'cbde1b67-9408-d0d3-517b-5df885ff041e','Leads','672c93d7-4675-ad33-535e-5df883a54ed3');
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('2cd70623-8961-a9bd-d4d3-5defb0a54d56',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 17:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('4d7b089b-185d-8550-5aaa-5defb0920c19',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 08:15:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('6ee409b3-d572-f49f-0cf2-5defb059940f',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 09:15:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('915c0257-94eb-eeb7-2ec3-5defb027d771',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 18:45:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('aa700eeb-28ed-9f34-1c59-5defb0dfe1e8',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Optimise AOD Index','function::aodOptimiseIndex','2015-01-01 14:15:01',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',0),('b4f50378-5f0d-2a62-fd13-5defb04b601d',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Google Calendar Sync','function::syncGoogleCalendar','2015-01-01 11:15:01',NULL,'*/15::*::*::*::*',NULL,NULL,NULL,'Active',0),('e33f3d46-15b7-a93d-6b46-5defb01a20d3',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 07:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('e59042af-0555-d77a-db0f-5defb057abdd',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 16:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('e7f1368e-e39c-dd52-a6d9-5defb0d31e7c',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 17:30:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('ea0234cf-472a-ef4b-6e45-5defb09f167b',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 15:30:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('ec27afc2-6524-418b-0ebb-5defb0954946',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 10:30:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('ee6007a4-563a-dc8c-b90d-5defb0bee708',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 19:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('f08cd524-a796-f367-fe1f-5defb0681e0f',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 15:45:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('f2b39459-2ef5-2192-88d9-5defb0b56f05',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','1','Perform Lucene Index','function::aodIndexUnindexed','2015-01-01 18:30:01',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',0);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('16a22cdd-c1f3-93f2-55ca-5df8892c27db','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:e35fabc5-a8a8-55c7-f1a3-5df8897737a5:Jamii Plus] {SugarFeed.WITH} [Accounts:e103583e-d24d-cad3-c6a3-5df889eadc10:Judy Test] {SugarFeed.FOR_AMOUNT} KES220,000.00','2019-12-17 07:51:33','2019-12-17 07:51:33','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,'42d64a84-e6a3-a628-20fd-5df354b5c941','Opportunities','e35fabc5-a8a8-55c7-f1a3-5df8897737a5',NULL,NULL),('16b72fcf-a252-4848-0006-5e26f3763f7f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:cbc204d7-3f9b-33b0-fa2f-5e26f3eff98c:Kimani]','2020-01-21 12:50:44','2020-01-21 12:50:44','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,'cf87deda-842f-518a-6af9-5e1c35a1a2d7','Leads','cbc204d7-3f9b-33b0-fa2f-5e26f3eff98c',NULL,NULL),('22c2d2a4-2fb7-641d-c7cc-5df8898fc715','<b>{this.CREATED_BY}</b> {SugarFeed.CONVERTED_LEAD} [Leads:672c93d7-4675-ad33-535e-5df883a54ed3:Judy Test]','2019-12-17 07:51:33','2019-12-17 07:51:33','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,'42d64a84-e6a3-a628-20fd-5df354b5c941','Leads','672c93d7-4675-ad33-535e-5df883a54ed3',NULL,NULL),('240aaaf9-0820-a757-43c6-5e2166653087','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:2306a4e8-3bb1-12ab-3817-5e2166607f9e:KCK 667Y] {SugarFeed.FOR} [Accounts::]: Test','2020-01-17 07:49:00','2020-01-17 07:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,'41afbc38-3a08-d92d-15a6-5df740edd6f3','Cases','2306a4e8-3bb1-12ab-3817-5e2166607f9e',NULL,NULL),('25dd0326-f5e0-f2f4-5813-5e26f3dfba14','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:15f4036a-578d-7f8c-4f53-5e26f3dc5aab:DELAYED APPROVAL] {SugarFeed.FOR} [Accounts::]: Client complained that her approval for dental took rather too long','2020-01-21 12:51:45','2020-01-21 12:51:45','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92',NULL,0,'e222fa06-97a4-d615-919e-5e1c35eeca92','Cases','15f4036a-578d-7f8c-4f53-5e26f3dc5aab',NULL,NULL),('296c5ac6-09bd-e4c6-b7fc-5e1c26fdc581','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:287c7969-15eb-cf56-511f-5e1c2670fa63:Juddy Tonui] {SugarFeed.FOR} [Accounts::]: Test','2020-01-13 08:12:03','2020-01-13 08:12:03','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Cases','287c7969-15eb-cf56-511f-5e1c2670fa63',NULL,NULL),('3f732bad-e243-a29a-400f-5e2fcf580268','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a:KCT 647D] {SugarFeed.FOR} [Accounts::]: Following up on towing payment invoice received on 10/12/2019.','2020-01-28 06:06:15','2020-01-28 06:06:15','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,'f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Cases','3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a',NULL,NULL),('5b543ee2-c497-ca9b-7bbd-5e26f105e0df','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:243ce368-5d75-fedc-0e21-5e26f15afa90:Margaret upperhill]','2020-01-21 12:41:33','2020-01-21 12:41:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f',NULL,0,'c0128425-ade0-5c59-6b2c-5e1c359af34f','Leads','243ce368-5d75-fedc-0e21-5e26f15afa90',NULL,NULL),('63497041-06a5-07db-a5be-5e2ffe8b7a99','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:6204f758-d586-6591-e8fc-5e2ffe6999bd:WRONG STATEMENT  SENT] {SugarFeed.FOR} [Accounts::]: The client has been receiving the wrong statement for his pension over and over again.\nHe has requested for ','2020-01-28 09:27:29','2020-01-28 09:27:29','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7','the right copy, over a month but he has not been asssited.',0,'cf87deda-842f-518a-6af9-5e1c35a1a2d7','Cases','6204f758-d586-6591-e8fc-5e2ffe6999bd',NULL,NULL),('6aa2dd42-20ac-961c-b81d-5e1c101c01b2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:63fc1379-a665-1678-603e-5e1c10618d24:Joseph Mbatia]','2020-01-13 06:37:12','2020-01-13 06:37:12','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','63fc1379-a665-1678-603e-5e1c10618d24',NULL,NULL),('6ee0fad2-844c-a927-54b3-5e25a9295a7e','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:6daa9167-1c4e-b30d-f78e-5e25a9004e5f:STATEMENT] {SugarFeed.FOR} [Accounts::]: Last month you deducted 51 shillings this month you have deducted 208 shillings on the income.What is the reason of this','2020-01-20 13:20:40','2020-01-20 13:20:40','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',' huge difference in a period of one month.',0,'f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Cases','6daa9167-1c4e-b30d-f78e-5e25a9004e5f',NULL,NULL),('7285f0db-82a0-e8a6-4327-5df883a92150','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:672c93d7-4675-ad33-535e-5df883a54ed3:Judy Test]','2019-12-17 07:28:37','2019-12-17 07:28:37','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,'42d64a84-e6a3-a628-20fd-5df354b5c941','Leads','672c93d7-4675-ad33-535e-5df883a54ed3',NULL,NULL),('75443796-6e97-8a34-a816-5e26f603eabf','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:7459318f-c227-c666-08e7-5e26f6d6f817:RELEASE LETTER DELAY] {SugarFeed.FOR} [Accounts::]: Release letter delay','2020-01-21 13:03:33','2020-01-21 13:03:33','c0128425-ade0-5c59-6b2c-5e1c359af34f','c0128425-ade0-5c59-6b2c-5e1c359af34f',NULL,0,'c0128425-ade0-5c59-6b2c-5e1c359af34f','Cases','7459318f-c227-c666-08e7-5e26f6d6f817',NULL,NULL),('7d131372-8028-03bb-6a3f-5e26f42ba317','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:73afd741-3bc8-138b-09bf-5e26f433f468:TITUS KIARIE]','2020-01-21 12:55:02','2020-01-21 12:55:02','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d',NULL,0,'d86b2737-2757-8261-b46c-5e1c35dd162d','Leads','73afd741-3bc8-138b-09bf-5e26f433f468',NULL,NULL),('7e4185fc-740b-3d5a-6fa1-5e26c1a63f47','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:76847f17-89c8-a001-235c-5e26c15074d3:Janet Kamau]','2020-01-21 09:16:00','2020-01-21 09:16:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,'7607045c-582f-799f-b814-5df3650d9190','Leads','76847f17-89c8-a001-235c-5e26c15074d3',NULL,NULL),('82e88be7-313f-dc62-69d0-5e26f53d9142','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1:Ronald Luganji]','2020-01-21 13:00:38','2020-01-21 13:00:38','e222fa06-97a4-d615-919e-5e1c35eeca92','e222fa06-97a4-d615-919e-5e1c35eeca92',NULL,0,'e222fa06-97a4-d615-919e-5e1c35eeca92','Leads','7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1',NULL,NULL),('877c8ce3-a105-4055-d1cc-5e277735168f','<b>{this.CREATED_BY}</b> Test','2020-01-21 22:11:51','2020-01-21 22:11:51','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','UserFeed','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL),('a0559716-d935-a7cd-12b5-5e2777f487d9','<b>{this.CREATED_BY}</b> test 2','2020-01-21 22:12:46','2020-01-21 22:12:46','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','SugarFeed','877c8ce3-a105-4055-d1cc-5e277735168f',NULL,NULL),('a858eaf7-8cec-ca2f-0cf1-5e2fdc84e6a7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:a0cc0301-7c98-e01c-6fa7-5e2fdc3b7ffa:Gilbert Njoroge]','2020-01-28 07:02:29','2020-01-28 07:02:29','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','a0cc0301-7c98-e01c-6fa7-5e2fdc3b7ffa',NULL,NULL),('aae70146-eca6-98a1-3693-5e2173904aa7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:a99e2744-ff6b-740f-adcd-5e217355daf7:KBW 277X] {SugarFeed.FOR} [Accounts::]: Car at Solex, the client claims the garage tempered with his gear box. Antony M. our internal assessor is dealing with th','2020-01-17 08:43:19','2020-01-17 08:43:19','7607045c-582f-799f-b814-5df3650d9190','7607045c-582f-799f-b814-5df3650d9190','e same',0,'7607045c-582f-799f-b814-5df3650d9190','Cases','a99e2744-ff6b-740f-adcd-5e217355daf7',NULL,NULL),('b9f7ca71-cb13-1a87-9bd0-5e21b8d56021','<b>{this.CREATED_BY}</b> {SugarFeed.CONVERTED_LEAD} [Leads:63fc1379-a665-1678-603e-5e1c10618d24:Joseph Mbatia]','2020-01-17 13:35:52','2020-01-17 13:35:52','41afbc38-3a08-d92d-15a6-5df740edd6f3','41afbc38-3a08-d92d-15a6-5df740edd6f3',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','63fc1379-a665-1678-603e-5e1c10618d24',NULL,NULL),('c3816e5a-2940-8986-6f55-5e22d473230f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:c299e2e1-630f-47a4-401d-5e22d4cde170:KBU 444B] {SugarFeed.FOR} [Accounts::]: The client complained that it is taking too long to get instructions from our branch offices.  ','2020-01-18 09:50:54','2020-01-18 09:50:54','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,'f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Cases','c299e2e1-630f-47a4-401d-5e22d4cde170',NULL,NULL),('c80b3edb-0a92-cb1d-a624-5e26c2646ec4','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:c714dc90-a380-33c2-7b51-5e26c22b6946:MEDICAL CARD] {SugarFeed.FOR} [Accounts::]: The medical card is not working.','2020-01-21 09:22:50','2020-01-21 09:22:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','cf87deda-842f-518a-6af9-5e1c35a1a2d7',NULL,0,'cf87deda-842f-518a-6af9-5e1c35a1a2d7','Cases','c714dc90-a380-33c2-7b51-5e26c22b6946',NULL,NULL),('cb230234-f128-df86-4206-5e1c0bec586c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb:Test 2] {SugarFeed.FOR} [Accounts::]: New case','2020-01-13 06:16:08','2020-01-13 06:16:08','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Cases','bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb',NULL,NULL),('cbf20b71-73f2-afe7-ca4f-5e2777a870d9','<b>{this.CREATED_BY}</b> test 2','2020-01-21 22:12:27','2020-01-21 22:12:35','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,1,'a98007d2-dbdc-3dba-9261-5defb35a4621','SugarFeed','75443796-6e97-8a34-a816-5e26f603eabf',NULL,NULL),('e099b80e-19ce-ff16-c23d-5e19c1c7bec3','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:da6ca215-c81f-9928-82cd-5e19c1280d75:Test] {SugarFeed.FOR} [Accounts:2a103d61-1013-8f4a-6feb-5dfb764712b2:Test]: test','2020-01-11 12:38:40','2020-01-11 12:38:40','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,0,'a98007d2-dbdc-3dba-9261-5defb35a4621','Cases','da6ca215-c81f-9928-82cd-5e19c1280d75',NULL,NULL),('e4dc557b-c3d5-8e60-98db-5e26f344b96a','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e:INQUIRY ON HER VEHICLE AFTER AN ACCIDENT] {SugarFeed.FOR} [Accounts::]: Client was on social medialcomplaining that her vehicle was involved in an accident but r','2020-01-21 12:48:34','2020-01-21 12:48:34','d86b2737-2757-8261-b46c-5e1c35dd162d','d86b2737-2757-8261-b46c-5e1c35dd162d','epair authority was yet to be approved',0,'d86b2737-2757-8261-b46c-5e1c35dd162d','Cases','e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e',NULL,NULL),('e6e5738d-24e9-51f6-6d5d-5e2fcf5745a3','<b>{this.CREATED_BY}</b> {SugarFeed.CLOSED_CASE} [Cases:3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a:KCT 647D] {SugarFeed.FOR} [Accounts::]','2020-01-28 06:07:29','2020-01-28 06:07:29','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',NULL,0,'f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Cases','3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a',NULL,NULL),('ef19e761-9826-220e-44e9-5df8895b0f82','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e0f6d79a-930d-3e67-ad67-5df889f7d086:Judy Test]','2019-12-17 07:51:33','2019-12-17 07:51:33','42d64a84-e6a3-a628-20fd-5df354b5c941','42d64a84-e6a3-a628-20fd-5df354b5c941',NULL,0,'42d64a84-e6a3-a628-20fd-5df354b5c941','Contacts','e0f6d79a-930d-3e67-ad67-5df889f7d086',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions`
--

DROP TABLE IF EXISTS `surveyquestionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions`
--

LOCK TABLES `surveyquestionoptions` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_audit`
--

DROP TABLE IF EXISTS `surveyquestionoptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionoptions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_audit`
--

LOCK TABLES `surveyquestionoptions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionoptions_surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_surveyquestionresponses`
--

LOCK TABLES `surveyquestionoptions_surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses`
--

LOCK TABLES `surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses_audit`
--

DROP TABLE IF EXISTS `surveyquestionresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses_audit`
--

LOCK TABLES `surveyquestionresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions_audit`
--

DROP TABLE IF EXISTS `surveyquestions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions_audit`
--

LOCK TABLES `surveyquestions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses`
--

DROP TABLE IF EXISTS `surveyresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses`
--

LOCK TABLES `surveyresponses` WRITE;
/*!40000 ALTER TABLE `surveyresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses_audit`
--

DROP TABLE IF EXISTS `surveyresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses_audit`
--

LOCK TABLES `surveyresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_audit`
--

DROP TABLE IF EXISTS `surveys_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveys_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_audit`
--

LOCK TABLES `surveys_audit` WRITE;
/*!40000 ALTER TABLE `surveys_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
INSERT INTO `templatesectionline` VALUES ('10799541-8984-c70c-8a3a-5dfb7cac18ed','Content with three columns','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/content3.png',NULL,4),('133c9b68-f4fe-ef7c-5d16-5dfb7c3186a8','Content with left image','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://63.33.193.137/crm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image1left.png',NULL,5),('15645094-dda4-b5a2-3834-5dfb7c69edcf','Content with right image','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://63.33.193.137/crm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image1right.png',NULL,6),('17827d58-6ba9-bfcc-d712-5dfb7ce17969','Content with two image','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://63.33.193.137/crm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://63.33.193.137/crm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image2.png',NULL,7),('19b0acc1-440a-45ca-915c-5dfb7c4928c6','Content with three image','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://63.33.193.137/crm/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://63.33.193.137/crm/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://63.33.193.137/crm/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td></tr><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image3.png',NULL,8),('1baf14fe-c425-c95f-97f4-5dfb7c2d6e0e','Footer','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<p class=\"footer\">Take your footer contents and information here..</p>',0,'include/javascript/mozaik/tpls/default/thumbs/footer.png',NULL,9),('53620e29-9b46-fb43-a906-5dfb7c9cd8a6','Headline','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<h1>Add your headline here..</h1>',0,'include/javascript/mozaik/tpls/default/thumbs/headline.png',NULL,1),('8a2a0ed8-a038-0273-ed24-5dfb7c5ed003','Content','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<h2>Title</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</p>',0,'include/javascript/mozaik/tpls/default/thumbs/content1.png',NULL,2),('e3da08e1-3a91-fa7e-c87c-5dfb7c6674ab','Content with two columns','2019-12-19 13:34:06','2019-12-19 13:34:06','a98007d2-dbdc-3dba-9261-5defb35a4621','a98007d2-dbdc-3dba-9261-5defb35a4621','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/content2.png',NULL,3);
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (1,'6a741726-d286-fca9-6a6e-5defb3eee141','1','Users','a98007d2-dbdc-3dba-9261-5defb35a4621','Gilbert Njoroge','2019-12-10 15:02:52','detailview','fsaltp6cfqr0i8c69i05t6ddc2',1,0),(2,'65e1d859-4e84-98e2-e9ca-5df226533ef7','a98007d2-dbdc-3dba-9261-5defb35a4621','Accounts','efe014a5-6e8f-8811-7399-5df22671cb64','Gilbert Njoroge','2019-12-12 11:35:32','detailview','727fd5018o3j4dr2q6faa055go',1,0),(3,'794c6d95-3244-fd83-a851-5df354b8ac44','1','Users','42d64a84-e6a3-a628-20fd-5df354b5c941','Judith Bogonko','2019-12-13 09:04:46','detailview','7kbogdpis7s357e84iapk2ecgh',1,0),(5,'80b81380-97e9-f3be-8568-5df74088f428','1','Users','7607045c-582f-799f-b814-5df3650d9190','Irene Akubania','2019-12-16 08:29:42','detailview','n4acavlsa7kgsvauureeahrlvi',1,0),(6,'614d2186-d62a-374b-bab3-5df740b079de','1','Users','41afbc38-3a08-d92d-15a6-5df740edd6f3','Juddy Tonui','2019-12-16 08:31:14','detailview','n4acavlsa7kgsvauureeahrlvi',1,0),(14,'9c484f87-1ca8-3a65-77fd-5df759b57e58','1','Users','6c725b5f-7b1a-6575-72e3-5df742004330','Saagar Khimasia','2019-12-16 10:15:23','detailview','5qaoprmjf0ijr45hr6nl75roet',0,0),(15,'98266f13-06de-6d52-8508-5df75a3d282a','1','Users','83991747-41d9-a084-4b4d-5df75aec4b03','Saagar Khimasia','2019-12-16 10:19:52','detailview','5qaoprmjf0ijr45hr6nl75roet',1,0),(19,'259cbaa8-5abc-61aa-07ef-5df888490da3','42d64a84-e6a3-a628-20fd-5df354b5c941','Leads','672c93d7-4675-ad33-535e-5df883a54ed3','Ms. Judy Test','2019-12-17 07:49:32','detailview','srkhrs3jmbqugmjfeobofrf5up',0,0),(29,'4afc1e60-e26d-b2e1-9561-5dfb793f4b58','a98007d2-dbdc-3dba-9261-5defb35a4621','Accounts','e103583e-d24d-cad3-c6a3-5df889eadc10','Judy Test','2019-12-19 13:23:13','detailview','60h58p4feng3tiacjcsl4jp3oa',1,0),(31,'48a16d96-2748-121a-84a3-5dfb7a1037ce','a98007d2-dbdc-3dba-9261-5defb35a4621','Opportunities','e35fabc5-a8a8-55c7-f1a3-5df8897737a5','Jamii Plus','2019-12-19 13:25:54','editview','60h58p4feng3tiacjcsl4jp3oa',1,0),(32,'c4c8d5cd-f133-5c00-bc3e-5dfb7bcfa875','a98007d2-dbdc-3dba-9261-5defb35a4621','Contacts','e0f6d79a-930d-3e67-ad67-5df889f7d086','Ms. Judy Test','2019-12-19 13:31:16','detailview','60h58p4feng3tiacjcsl4jp3oa',1,0),(33,'bef788ce-79de-0512-769b-5dfb7cb965cd','a98007d2-dbdc-3dba-9261-5defb35a4621','TemplateSectionLine','1baf14fe-c425-c95f-97f4-5dfb7c2d6e0e','Footer','2019-12-19 13:34:06','save','60h58p4feng3tiacjcsl4jp3oa',1,0),(34,'ca137a4d-959c-e7cb-2e7d-5dfb7d961aca','a98007d2-dbdc-3dba-9261-5defb35a4621','EmailTemplates','ae25d73b-009f-1358-66a6-5dfb7dda1835','Test','2019-12-19 13:41:13','detailview','60h58p4feng3tiacjcsl4jp3oa',1,0),(41,'3c810981-0d29-6a25-a212-5e1447528ebf','a98007d2-dbdc-3dba-9261-5defb35a4621','Meetings','ad029c99-eda0-9649-d6ec-5e1446de9415','Quotation','2020-01-07 08:56:22','detailview','odjmq45ksjcjb9epkmscdigjub',1,0),(44,'c98a5d08-6ed9-be69-63f7-5e1449935125','a98007d2-dbdc-3dba-9261-5defb35a4621','Meetings','979d2a55-7cb2-2fc1-f228-5e14485b3499','discuss quotation price','2020-01-07 09:02:16','detailview','odjmq45ksjcjb9epkmscdigjub',1,0),(45,'a399fc00-90eb-0e85-95d0-5e144a534dbf','a98007d2-dbdc-3dba-9261-5defb35a4621','Meetings','334e0f2c-07e3-d1f4-4868-5e144ad27152','marketing','2020-01-07 09:07:04','detailview','odjmq45ksjcjb9epkmscdigjub',1,0),(72,'6bfca62d-8c31-c300-4a58-5e1c06998dd2','a98007d2-dbdc-3dba-9261-5defb35a4621','Accounts','2a103d61-1013-8f4a-6feb-5dfb764712b2','Test','2020-01-13 05:57:47','detailview','qaj01jmhr4togl4eqc7nrqn4ve',1,0),(74,'444ea32c-c50b-9229-15b2-5e1c0a721d48','a98007d2-dbdc-3dba-9261-5defb35a4621','Cases','da6ca215-c81f-9928-82cd-5e19c1280d75','Test','2020-01-13 06:15:22','detailview','qaj01jmhr4togl4eqc7nrqn4ve',1,0),(79,'b1cc6bd6-8185-84e0-a4fd-5e1c0cb400e2','a98007d2-dbdc-3dba-9261-5defb35a4621','Cases','bb4d0ed7-a59b-f13c-e87b-5e1c0b2f51bb','Test 2','2020-01-13 06:20:09','detailview','qaj01jmhr4togl4eqc7nrqn4ve',1,0),(82,'3eccf79a-e937-d33c-8ce3-5e1c0f780a0a','a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','672c93d7-4675-ad33-535e-5df883a54ed3','Ms. Judy Test','2020-01-13 06:35:48','detailview','qaj01jmhr4togl4eqc7nrqn4ve',0,0),(99,'dd8180a8-774b-bb46-8c55-5e1c318e698d','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','a98007d2-dbdc-3dba-9261-5defb35a4621','Gilbert Njoroge','2020-01-13 09:01:24','editview','qaj01jmhr4togl4eqc7nrqn4ve',1,0),(103,'f7e90ce4-fb83-7b3f-4a28-5e1c36291f88','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','a4aa0876-1e37-ab95-f13a-5e1c354931ef','Susan Eboso','2020-01-13 09:20:53','detailview','4a2nu5003v0dhcraigi5gnhlqh',1,0),(108,'9893909b-34cb-2c5e-01fb-5e1c365ce8de','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Tabitha Kimani','2020-01-13 09:22:46','detailview','4a2nu5003v0dhcraigi5gnhlqh',1,0),(110,'cc0c6c2d-3f45-7ebe-a007-5e1c372c9b70','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','d86b2737-2757-8261-b46c-5e1c35dd162d','Esther Njoroge','2020-01-13 09:23:17','detailview','4a2nu5003v0dhcraigi5gnhlqh',1,0),(113,'c0f53f3b-91e1-e5d9-aff6-5e1c376c06bd','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','e222fa06-97a4-d615-919e-5e1c35eeca92','Linda Walucho','2020-01-13 09:23:57','detailview','4a2nu5003v0dhcraigi5gnhlqh',1,0),(115,'7f37d98f-5017-f00f-fbb1-5e1c373410c4','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','eb21bb65-2ba7-46fa-5536-5e1c35688062','Beryl Digo','2020-01-13 09:24:35','detailview','4a2nu5003v0dhcraigi5gnhlqh',1,0),(117,'29eb79cf-52a3-2031-02e9-5e1c374dc73f','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Charity Kibiku','2020-01-13 09:25:31','detailview','4a2nu5003v0dhcraigi5gnhlqh',1,0),(123,'ba2edff1-d732-c6c1-3497-5e1c39824fff','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','41afbc38-3a08-d92d-15a6-5df740edd6f3','Juddy Tonui','2020-01-13 09:35:29','editview','4a2nu5003v0dhcraigi5gnhlqh',1,0),(124,'d092d4bb-f340-2acb-ee94-5e1c40f6daad','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','13632602-529c-6bd5-770d-5e1c35bc5171','Joseph Mbatia','2020-01-13 10:03:02','editview','4a2nu5003v0dhcraigi5gnhlqh',1,0),(127,'4b66bdfc-d1ff-f5a1-a591-5e1cd6101843','a98007d2-dbdc-3dba-9261-5defb35a4621','Cases','287c7969-15eb-cf56-511f-5e1c2670fa63','Juddy Tonui','2020-01-13 20:45:51','editview','ctpf2s3mboaa6ho3k7olnn3hks',1,0),(129,'e2fb0c1e-835f-5342-5553-5e2167a49025','41afbc38-3a08-d92d-15a6-5df740edd6f3','Cases','2306a4e8-3bb1-12ab-3817-5e2166607f9e','KCK 667Y','2020-01-17 07:52:26','detailview','m99fm5271kvudg9el6mdoedph9',1,0),(132,'a7ea65cf-852f-8735-36bf-5e216dc0f82b','7607045c-582f-799f-b814-5df3650d9190','Users','7607045c-582f-799f-b814-5df3650d9190','Irene Akubania','2020-01-17 08:17:04','detailview','3l0sk5t6i7s9ntb9l9hssat33s',1,0),(137,'6dee3b86-5355-58e1-3a3a-5e217cc0cfed','7607045c-582f-799f-b814-5df3650d9190','Cases','a99e2744-ff6b-740f-adcd-5e217355daf7','KBW 277X','2020-01-17 09:20:06','detailview','3l0sk5t6i7s9ntb9l9hssat33s',1,0),(139,'27e8df6d-5dbe-ccb0-1988-5e21b6a5074f','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','e222fa06-97a4-d615-919e-5e1c35eeca92','Linda Walucho','2020-01-17 13:28:00','detailview','k5a707qoaes5frtkjrll6s012v',1,0),(143,'e9626a75-ec45-507a-8c0a-5e21b8e3df38','41afbc38-3a08-d92d-15a6-5df740edd6f3','Leads','63fc1379-a665-1678-603e-5e1c10618d24','Joseph Mbatia','2020-01-17 13:36:29','editview','k5a707qoaes5frtkjrll6s012v',1,0),(145,'ee4e1f06-45db-1e22-e8a5-5e21b924fa07','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','13632602-529c-6bd5-770d-5e1c35bc5171','Joseph Mbatia','2020-01-17 13:42:01','detailview','k5a707qoaes5frtkjrll6s012v',1,0),(147,'d2820732-c7e6-e1c3-78ca-5e21b9217e9b','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','a4aa0876-1e37-ab95-f13a-5e1c354931ef','Susan Eboso','2020-01-17 13:42:37','detailview','k5a707qoaes5frtkjrll6s012v',1,0),(149,'41d15f05-caa1-912b-76d0-5e21bb4ffd9a','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','c0128425-ade0-5c59-6b2c-5e1c359af34f','Cynthia Katembo','2020-01-17 13:48:31','detailview','k5a707qoaes5frtkjrll6s012v',1,0),(151,'c44693fb-3ca8-edbf-d671-5e21bbf20fa0','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Tabitha Kimani','2020-01-17 13:49:00','detailview','k5a707qoaes5frtkjrll6s012v',1,0),(153,'9438eebc-6b20-82d6-fff3-5e21bbf633bb','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','d86b2737-2757-8261-b46c-5e1c35dd162d','Esther Njoroge','2020-01-17 13:49:29','detailview','k5a707qoaes5frtkjrll6s012v',1,0),(155,'3f880e79-4ba4-c3d8-5257-5e21bbf2205a','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','eb21bb65-2ba7-46fa-5536-5e1c35688062','Beryl Digo','2020-01-17 13:51:44','detailview','k5a707qoaes5frtkjrll6s012v',1,0),(157,'42e4dca9-bcb0-2986-b131-5e21bc34c080','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Charity Kibiku','2020-01-17 13:52:04','detailview','k5a707qoaes5frtkjrll6s012v',1,0),(163,'baacd3c4-a902-be7d-2ad4-5e22d5843992','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Cases','c299e2e1-630f-47a4-401d-5e22d4cde170','KBU 444B','2020-01-18 09:52:16','detailview','45h3t2q673omo52d19rqf2rjsa',1,0),(164,'1c1680e8-e507-f672-9943-5e255218ce6a','a98007d2-dbdc-3dba-9261-5defb35a4621','Cases','c299e2e1-630f-47a4-401d-5e22d4cde170','KBU 444B','2020-01-20 07:11:50','detailview','gn6imbrerbmpgnp92l6lv2c9t4',1,0),(165,'947195ee-5aa6-8e5f-e95a-5e2573195aec','a98007d2-dbdc-3dba-9261-5defb35a4621','Campaigns','9042171d-c913-91fa-671c-5e257177210e','Hey','2020-01-20 09:30:06','detailview','gn6imbrerbmpgnp92l6lv2c9t4',0,0),(166,'20248bcf-ba26-4579-63b0-5e25a9d05712','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Cases','6daa9167-1c4e-b30d-f78e-5e25a9004e5f','STATEMENT','2020-01-20 13:20:41','detailview','n8lae2l8u1k8ptleujqhvv65sm',1,0),(167,'b570a304-1d3e-bfc8-a459-5e2689c4670d','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Cases','6daa9167-1c4e-b30d-f78e-5e25a9004e5f','STATEMENT','2020-01-21 05:18:15','editview','g3s69q2scnt8gvlmi049o60sg2',1,0),(168,'85900c9f-cf1e-1f74-f6c0-5e26c180e2fd','41afbc38-3a08-d92d-15a6-5df740edd6f3','Leads','76847f17-89c8-a001-235c-5e26c15074d3','Ms. Janet Kamau','2020-01-21 09:16:03','detailview','3gl2t39ahl60bjv88a32mec9bf',0,0),(170,'df920a86-2d5c-7339-44cf-5e26f12e514b','c0128425-ade0-5c59-6b2c-5e1c359af34f','Leads','243ce368-5d75-fedc-0e21-5e26f15afa90','Ms. Margaret upperhill','2020-01-21 12:41:52','detailview','ds2ioc1u0r209tu8k2kfhfteb2',0,0),(171,'2127ed41-7402-f4b5-56ba-5e26f24e4060','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Cases','c714dc90-a380-33c2-7b51-5e26c22b6946','MEDICAL CARD','2020-01-21 12:46:18','detailview','2jgomusdoe04os8i08i49r2ikm',1,0),(172,'8dd8e669-735b-b793-6ed5-5e26f344ad08','d86b2737-2757-8261-b46c-5e1c35dd162d','Cases','e39a5b82-fb22-cdbc-a6d9-5e26f3cbb55e','INQUIRY ON HER VEHICLE AFTER AN ACCIDENT','2020-01-21 12:48:35','detailview','3qln163p95sv3agdl9nbch9gk8',1,0),(175,'a882308f-b616-dd1b-c034-5e26f323ef02','e222fa06-97a4-d615-919e-5e1c35eeca92','Cases','15f4036a-578d-7f8c-4f53-5e26f3dc5aab','DELAYED APPROVAL','2020-01-21 12:51:46','detailview','h9rn6k9kb40d8h36rkll85jagr',1,0),(177,'b0a5bbd0-fd47-d3b2-ae4a-5e26f5bcf9e3','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Leads','cbc204d7-3f9b-33b0-fa2f-5e26f3eff98c','Miss  Kimani','2020-01-21 12:56:44','detailview','2jgomusdoe04os8i08i49r2ikm',1,0),(179,'22048709-4720-b43f-f13b-5e26f67c233b','c0128425-ade0-5c59-6b2c-5e1c359af34f','Cases','7459318f-c227-c666-08e7-5e26f6d6f817','RELEASE LETTER DELAY','2020-01-21 13:03:34','detailview','ds2ioc1u0r209tu8k2kfhfteb2',1,0),(181,'c8e508f2-929b-a0fb-6f6d-5e26f8d95691','41afbc38-3a08-d92d-15a6-5df740edd6f3','Users','7607045c-582f-799f-b814-5df3650d9190','Irene Akubania','2020-01-21 13:11:39','detailview','olntn0p1c25s5ju54bv6dda89e',1,0),(183,'1470261c-2c0d-fb90-c062-5e26f866cd9f','41afbc38-3a08-d92d-15a6-5df740edd6f3','Leads','7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1','Mr. Ronald Luganji','2020-01-21 13:13:28','detailview','olntn0p1c25s5ju54bv6dda89e',0,0),(184,'3d3ea499-98f4-70a0-d680-5e26ff8aafba','7607045c-582f-799f-b814-5df3650d9190','Cases','7459318f-c227-c666-08e7-5e26f6d6f817','RELEASE LETTER DELAY','2020-01-21 13:42:19','detailview','v56a6ipkb008lr4sdbdki793nl',1,0),(185,'6ccfb0b6-4a39-85ff-e6b1-5e26ffeeb9c1','d86b2737-2757-8261-b46c-5e1c35dd162d','Leads','73afd741-3bc8-138b-09bf-5e26f433f468','Mr. TITUS KIARIE','2020-01-21 13:43:00','detailview','3qln163p95sv3agdl9nbch9gk8',0,0),(186,'2774cb6d-6011-1192-d092-5e270219882e','e222fa06-97a4-d615-919e-5e1c35eeca92','Leads','7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1','Mr. Ronald Luganji','2020-01-21 13:55:44','detailview','h9rn6k9kb40d8h36rkll85jagr',0,0),(187,'181465a4-a040-29f4-39e1-5e270459cae6','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','c0128425-ade0-5c59-6b2c-5e1c359af34f','Cynthia Katembo','2020-01-21 14:03:56','editview','dt70voa67ecrogdbavgcn58u8h',1,0),(189,'34ca5584-13d3-b984-1581-5e275fb87075','a98007d2-dbdc-3dba-9261-5defb35a4621','EmailTemplates','131b7be7-f34d-aac9-a9b4-5defb0481f9a','System-generated password email','2020-01-21 20:30:04','detailview','1122ibfr9rr14nq20875n9c0it',1,0),(194,'43270f3a-d8ad-161f-c3f2-5e2772af49ac','a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','7963f3de-2d3f-1d87-e9d9-5e26f5dd34b1','Mr. Ronald Luganji','2020-01-21 21:52:16','editview','1122ibfr9rr14nq20875n9c0it',0,0),(200,'2557becf-fc10-f14b-cdf2-5e2776e223cc','a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','63fc1379-a665-1678-603e-5e1c10618d24','Mr. Joseph Mbatia','2020-01-21 22:08:46','detailview','1122ibfr9rr14nq20875n9c0it',1,0),(201,'16a6d16e-de80-94df-8891-5e2777e20ea9','a98007d2-dbdc-3dba-9261-5defb35a4621','AOW_WorkFlow','780b391d-38d2-4cb4-5c94-5e277291f1ad','Work flow test','2020-01-21 22:14:24','detailview','1122ibfr9rr14nq20875n9c0it',1,0),(203,'1d26ddca-fbb1-851d-75b7-5e294c20aa73','13632602-529c-6bd5-770d-5e1c35bc5171','Contacts','e0f6d79a-930d-3e67-ad67-5df889f7d086','Ms. Doris Sabaya','2020-01-23 07:35:19','detailview','71lgfl165le80tcagiggsksgdo',1,0),(205,'c2b514e0-6d0c-c06f-0e6f-5e296bc562b3','13632602-529c-6bd5-770d-5e1c35bc5171','Leads','63fc1379-a665-1678-603e-5e1c10618d24','Mr. Joseph Mbatia','2020-01-23 09:44:41','detailview','71lgfl165le80tcagiggsksgdo',1,0),(206,'20126477-dd18-6319-62c2-5e298517576d','a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','cbc204d7-3f9b-33b0-fa2f-5e26f3eff98c','Miss  Kimani','2020-01-23 11:36:52','detailview','mm0o0vr3gfb7bmkmih8sqtm2sr',1,0),(209,'345c92b9-895e-ee14-5696-5e2ea0c6a24b','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','7607045c-582f-799f-b814-5df3650d9190','Irene Akubania','2020-01-27 08:32:07','detailview','ndj2cbb432j5pk68316io7ofsd',1,0),(211,'c4a1e356-eb11-8e98-5a92-5e2ea4508066','a98007d2-dbdc-3dba-9261-5defb35a4621','Cases','7459318f-c227-c666-08e7-5e26f6d6f817','RELEASE LETTER DELAY','2020-01-27 08:49:53','editview','ndj2cbb432j5pk68316io7ofsd',1,0),(216,'9e9dfd08-a2e0-c6bc-868b-5e2fcfb4bb1c','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Cases','3e8311e7-a402-2760-bfb5-5e2fcfa3ef3a','KCT 647D','2020-01-28 06:07:30','detailview','i78dndrcib7j5h9h34ejfi03ce',1,0),(220,'d6e59486-c8b8-abb0-c720-5e2fdd9e27fd','a98007d2-dbdc-3dba-9261-5defb35a4621','Leads','a0cc0301-7c98-e01c-6fa7-5e2fdc3b7ffa','Mr. Gilbert Njoroge','2020-01-28 07:04:43','detailview','6ms3am02ph3uv0c53mr72t5o0l',1,0),(224,'19a1a2cb-dbe6-b8c8-5443-5e2fdf275e30','a98007d2-dbdc-3dba-9261-5defb35a4621','ProspectLists','9cd0db38-2a20-0ddc-3093-5e25714277b5','Hey Unsubscription List','2020-01-28 07:14:37','detailview','6ms3am02ph3uv0c53mr72t5o0l',1,0),(228,'e784bc55-5287-9d91-5eb6-5e2fdf3ae51b','a98007d2-dbdc-3dba-9261-5defb35a4621','ProspectLists','882be71e-dab3-a792-231d-5e25714bee37','jh','2020-01-28 07:16:16','editview','6ms3am02ph3uv0c53mr72t5o0l',1,0),(230,'8c2fbc28-fbe1-981c-2bfc-5e2fdf655ee8','a98007d2-dbdc-3dba-9261-5defb35a4621','EmailTemplates','14eff867-95ff-f532-0d60-5e275f7f2e80','Test Emai Temp','2020-01-28 07:16:49','detailview','6ms3am02ph3uv0c53mr72t5o0l',1,0),(231,'70f46cb5-ac37-fb01-a099-5e2fe002124c','a98007d2-dbdc-3dba-9261-5defb35a4621','ProspectLists','156caf33-42c6-e37c-ef3e-5e27649abeb4','Target list test','2020-01-28 07:17:23','detailview','6ms3am02ph3uv0c53mr72t5o0l',1,0),(233,'2d2aa74e-c585-fc9e-fd8d-5e2ffec1d0d5','cf87deda-842f-518a-6af9-5e1c35a1a2d7','Cases','6204f758-d586-6591-e8fc-5e2ffe6999bd','WRONG STATEMENT  SENT','2020-01-28 09:27:49','detailview','dll7q3h5rpjq3s2o37df89gm01',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('10110d96-9b28-1c81-1251-5e1c3510b89b','GoogleSync',0,'2020-01-13 09:16:24','2020-01-17 13:42:36','a4aa0876-1e37-ab95-f13a-5e1c354931ef','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('132495b9-95bd-e35f-fbb2-5df756c09484','Emails',1,'2019-12-16 10:02:10','2019-12-16 10:02:51','6c725b5f-7b1a-6575-72e3-5df742004330','YTowOnt9'),('13c733a5-f1c9-4e7c-f0ca-5e27031ef23e','Documents2_DOCUMENT',0,'2020-01-21 13:59:40','2020-01-21 13:59:40','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('176d7d3d-3a1d-8c1e-7088-5e1c35bb0193','global',0,'2020-01-13 09:16:24','2020-01-23 07:25:27','13632602-529c-6bd5-770d-5e1c35bc5171','YTo0Mzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjE2YTBmOGE0LTIyOWItMGY5Yi1hNTFhLTVlMWMzNWNkMGViNSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('1928d9e0-b675-9a05-39f5-5e1c35683af7','GoogleSync',0,'2020-01-13 09:16:24','2020-01-17 13:42:01','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('198c1b73-e261-a9b5-aeec-5e2702609148','Calls2_CALL',0,'2020-01-21 13:55:08','2020-01-21 13:55:08','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('19de16f6-5430-a309-0993-5e216b46bf35','Emails',0,'2020-01-17 08:10:02','2020-01-17 13:27:59','e222fa06-97a4-d615-919e-5e1c35eeca92','YTowOnt9'),('1bbe9d83-2c89-ea20-0ce5-5e21be912e4d','Cases2_CASE',0,'2020-01-17 14:01:00','2020-01-17 14:01:00','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1d78f175-0120-58b6-507f-5e21c4867f8a','Leads2_LEAD',0,'2020-01-17 14:30:03','2020-01-17 14:30:03','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1e2a7e20-1eda-a948-aa61-5e21bbc110f5','Emails',0,'2020-01-17 13:51:54','2020-01-17 13:52:03','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YTowOnt9'),('20be2cdb-8962-7dee-6364-5e25776192cc','FP_Event_Locations2_FP_EVENT_LOCATIONS',0,'2020-01-20 09:47:19','2020-01-20 09:47:19','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('20ff122f-fd78-894b-5525-5df74084a7a4','Emails',0,'2019-12-16 08:29:42','2020-01-27 08:32:06','7607045c-582f-799f-b814-5df3650d9190','YTowOnt9'),('2368611d-eb5c-9438-e71d-5df73e914067','Users2_USER',0,'2019-12-16 08:22:03','2019-12-16 08:22:03','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('23aab5b9-9128-5a7a-6d98-5e2576456c98','jjwg_Areas2_JJWG_AREAS',0,'2020-01-20 09:45:09','2020-01-20 09:45:09','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('25d626c5-2b2f-ec34-85b5-5e2689f82074','Cases2_CASE',0,'2020-01-21 05:17:50','2020-01-21 05:17:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('26f95895-75bb-d2f5-1f3c-5e1c360721a9','Emails',0,'2020-01-13 09:20:32','2020-01-17 13:42:36','a4aa0876-1e37-ab95-f13a-5e1c354931ef','YTowOnt9'),('2b03ab4b-a371-6e5e-8bcf-5df225ab4ef1','Home2_LEAD_25c50c6a-35f1-d18a-c1e3-5df2253e8f1a',0,'2019-12-12 11:32:21','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2e429ca1-d426-11be-919e-5e21bc225b93','Home2_LEAD_b31d061c-6cf9-f442-3d6c-5e21bc8e8765',0,'2020-01-17 13:54:42','2020-01-17 13:54:42','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('308d9f5f-0564-4e3f-582d-5e1c360fedef','Emails',0,'2020-01-13 09:21:29','2020-01-21 14:04:03','c0128425-ade0-5c59-6b2c-5e1c359af34f','YTowOnt9'),('34bc3df9-e008-c20c-09b3-5dfb7c2aa5ca','Campaigns2_CAMPAIGN',0,'2019-12-19 13:33:59','2019-12-19 13:33:59','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('355d57cc-0d5a-7631-088a-5df35954a057','Leads2_LEAD',0,'2019-12-13 09:29:18','2019-12-13 09:29:18','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('38d27c41-4c22-dcc2-3a66-5df225441d9d','Home',0,'2019-12-12 11:32:18','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjI0MTc0YjcxLTMzODAtY2I5YS02NmRjLTVkZjIyNWFmNjZkYyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjI0Nzc1MjA2LThiOWEtMjliNi02NTliLTVkZjIyNTYxZTY0NiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjI0ZGQ0OTA4LWVmYTItNDJkZS05YTQ0LTVkZjIyNWIwYWIyMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjI1MWNkN2UwLTgxNjEtYjhlMS1jZWE2LTVkZjIyNTBiOTliOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjU2YWJhZmUtYzRjNy02NjE5LWM0YmItNWRmMjI1NmZhY2JmIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjVjNTBjNmEtMzVmMS1kMThhLWMxZTMtNWRmMjI1M2U4ZjFhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIyNDc3NTIwNi04YjlhLTI5YjYtNjU5Yi01ZGYyMjU2MWU2NDYiO2k6MTtzOjM2OiIyNGRkNDkwOC1lZmEyLTQyZGUtOWE0NC01ZGYyMjViMGFiMjEiO2k6MjtzOjM2OiIyNTFjZDdlMC04MTYxLWI4ZTEtY2VhNi01ZGYyMjUwYjk5YjkiO2k6MztzOjM2OiIyNTZhYmFmZS1jNGM3LTY2MTktYzRiYi01ZGYyMjU2ZmFjYmYiO2k6NDtzOjM2OiIyNWM1MGM2YS0zNWYxLWQxOGEtYzFlMy01ZGYyMjUzZThmMWEiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjI0MTc0YjcxLTMzODAtY2I5YS02NmRjLTVkZjIyNWFmNjZkYyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('3cf46274-876a-4a35-124e-5df2256687dd','Home2_CALL',0,'2019-12-12 11:32:18','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3ec5a1f8-e9b7-91bb-77f1-5df22597c49c','Home2_MEETING',0,'2019-12-12 11:32:18','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3f424346-0551-18ae-54ae-5e216b7b7a96','Users2_USER',0,'2020-01-17 08:09:33','2020-01-17 08:09:33','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3f8aa549-10af-a0db-d94e-5e21c46126fa','Home',0,'2020-01-17 14:28:06','2020-01-17 14:28:06','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjIzZjA1MWMyLTIzN2QtZTljZC0wMGVmLTVlMjFjNDRjZjAzYiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjIzZjk0ZjVmLWVhOWEtMWYzNS1jMjhmLTVlMjFjNGQ3MWNkZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjI0MDBmM2ViLTM1MWQtYjc4Yy04MjYzLTVlMjFjNGFhNzE5NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjI0MDc0M2UzLTEyYzMtODUxZi02NTU3LTVlMjFjNGFkZWY3NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjQwZmNlMjQtYjFjOC1hMjViLTQ2MDItNWUyMWM0YWJlNWI2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjQxNzEwYTEtZDY5YS1hMjQ0LTZiOGMtNWUyMWM0MTRlOWM5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIyM2Y5NGY1Zi1lYTlhLTFmMzUtYzI4Zi01ZTIxYzRkNzFjZGYiO2k6MTtzOjM2OiIyNDAwZjNlYi0zNTFkLWI3OGMtODI2My01ZTIxYzRhYTcxOTciO2k6MjtzOjM2OiIyNDA3NDNlMy0xMmMzLTg1MWYtNjU1Ny01ZTIxYzRhZGVmNzciO2k6MztzOjM2OiIyNDBmY2UyNC1iMWM4LWEyNWItNDYwMi01ZTIxYzRhYmU1YjYiO2k6NDtzOjM2OiIyNDE3MTBhMS1kNjlhLWEyNDQtNmI4Yy01ZTIxYzQxNGU5YzkiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjIzZjA1MWMyLTIzN2QtZTljZC0wMGVmLTVlMjFjNDRjZjAzYiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('40e53194-ae4a-a23f-d3bb-5df22508becb','Home2_OPPORTUNITY',0,'2019-12-12 11:32:18','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('415c4e19-4e74-cd66-15ba-5e21c4531f54','Home2_CALL',0,'2020-01-17 14:28:06','2020-01-17 14:28:06','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('42ad0b87-8c83-3d88-d6c2-5df225c85236','Home2_ACCOUNT',0,'2019-12-12 11:32:18','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('430921a9-d09f-48fc-b1c7-5e21c40f5369','Home2_MEETING',0,'2020-01-17 14:28:06','2020-01-17 14:28:06','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('44077263-98cb-f730-4e14-5df36a812b04','global',0,'2019-12-13 10:20:28','2020-01-27 08:33:27','7607045c-582f-799f-b814-5df3650d9190','YTo0Mzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTQ6IkFmcmljYS9OYWlyb2JpIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6NjoiQ2FzZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiTWVldGluZ3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkNhbXBhaWduc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9fQ=='),('441f409d-520b-a1f2-a071-5e14459843b8','Meetings2_MEETING',0,'2020-01-07 08:48:41','2020-01-07 08:48:41','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('447222c2-f45e-58da-ed4f-5df225726951','Home2_LEAD',0,'2019-12-12 11:32:18','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('44adfda2-709d-ac1f-db5a-5e21c4cd50e9','Home2_OPPORTUNITY',0,'2020-01-17 14:28:06','2020-01-17 14:28:06','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('455fa7e4-1465-c3b4-e2e9-5defb1b5a9dc','Home2_LEAD_ada9e433-66c4-6341-5b8d-5defb11dcb46',0,'2019-12-10 14:52:39','2019-12-10 14:52:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('458c0f9b-27ad-7cc4-b3ac-5e1c35e4d4a7','global',0,'2020-01-13 09:16:24','2020-01-28 05:51:33','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YTo0Mzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjM2ZjEwOGYzLTE3MzItMTRlZS1jNTEyLTVlMWMzNWUyN2I1YiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiQ2FzZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('464031b3-a733-afdc-ec0d-5df36ab8ab73','GoogleSync',0,'2019-12-13 10:20:28','2020-01-27 08:32:06','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('465a4273-f9e3-4d9c-53dd-5df2255eb149','Home2_SUGARFEED',0,'2019-12-12 11:32:18','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('465c7157-2b52-e718-8d02-5e21c49cb8b3','Home2_ACCOUNT',0,'2020-01-17 14:28:06','2020-01-17 14:28:06','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('480cc072-846d-0195-d7bc-5e21c4ea55e5','Home2_LEAD',0,'2020-01-17 14:28:06','2020-01-17 14:28:06','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('486d19e5-42a5-c213-f71b-5e21bca9b085','Home',0,'2020-01-17 13:53:51','2020-01-17 13:53:51','d86b2737-2757-8261-b46c-5e1c35dd162d','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjJjZmQwMTczLTI0MjQtNzczMi1mNzQxLTVlMjFiYzg0YTE5NyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjJkMDU5NDk0LWM2ZTYtNmIwMC03ZTc1LTVlMjFiYzMzMTQ4ZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjJkMGQwYzBmLTI4ZmItZGE1Ni00YTc0LTVlMjFiY2Y2ZjFjZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjJkMTE1NTg0LTQwZmUtNDQ1Ni1kMmZmLTVlMjFiYzQ1ZjI3ZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMmQxOWU5ODItNDU1YS0xOWY2LTA2OGItNWUyMWJjZDg4ZTBlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMmQyMTJmM2UtYTUzMy01OTQyLWI5MTUtNWUyMWJjMjJmYzU3IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIyZDA1OTQ5NC1jNmU2LTZiMDAtN2U3NS01ZTIxYmMzMzE0OGUiO2k6MTtzOjM2OiIyZDBkMGMwZi0yOGZiLWRhNTYtNGE3NC01ZTIxYmNmNmYxY2QiO2k6MjtzOjM2OiIyZDExNTU4NC00MGZlLTQ0NTYtZDJmZi01ZTIxYmM0NWYyN2YiO2k6MztzOjM2OiIyZDE5ZTk4Mi00NTVhLTE5ZjYtMDY4Yi01ZTIxYmNkODhlMGUiO2k6NDtzOjM2OiIyZDIxMmYzZS1hNTMzLTU5NDItYjkxNS01ZTIxYmMyMmZjNTciO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjJjZmQwMTczLTI0MjQtNzczMi1mNzQxLTVlMjFiYzg0YTE5NyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('49783b42-9852-7a2f-c38e-5e294ae71b8e','Contacts2_CONTACT',0,'2020-01-23 07:25:27','2020-01-23 07:26:26','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo5OiJsYXN0X25hbWUiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),('49c78d9e-4fdd-b14c-59e0-5e21c4d4d2bf','Home2_SUGARFEED',0,'2020-01-17 14:28:06','2020-01-17 14:28:06','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4aa3f0a0-bb35-efa4-de38-5e21bc2772ba','Home2_CALL',0,'2020-01-17 13:53:51','2020-01-17 13:53:51','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4c4f1f5e-1950-ef3b-aba7-5e21bcde14b4','Home2_MEETING',0,'2020-01-17 13:53:51','2020-01-17 13:53:51','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4deff619-609a-4cf3-6f8e-5e21bc7aa8fd','Home2_OPPORTUNITY',0,'2020-01-17 13:53:51','2020-01-17 13:53:51','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4e157dd2-a03f-abc1-516c-5df8df3b46fc','Home',0,'2019-12-17 13:58:42','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjM3MTU1YmNkLTAxNGUtMjY0OS00NWFkLTVkZjhkZmQ2NmVmYyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjM3Njg3MWMwLWExZDAtNmRlZC04NDFhLTVkZjhkZjBlZDU4MyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjM3Y2I4YWRkLWYzMzAtNzA5YS1hMjIxLTVkZjhkZmUxMmZlMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjM4MDczN2Q0LWMxZDEtYTU1Yy03MWE1LTVkZjhkZjlkNzg2MiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMzg1MmFlMmUtZTQ1OC02OTYzLTQ1N2MtNWRmOGRmMzVhZWYwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMzhhYzUyNWMtMmI4NC03YmJhLTFmZDItNWRmOGRmNGM4MjEzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIzNzY4NzFjMC1hMWQwLTZkZWQtODQxYS01ZGY4ZGYwZWQ1ODMiO2k6MTtzOjM2OiIzN2NiOGFkZC1mMzMwLTcwOWEtYTIyMS01ZGY4ZGZlMTJmZTEiO2k6MjtzOjM2OiIzODA3MzdkNC1jMWQxLWE1NWMtNzFhNS01ZGY4ZGY5ZDc4NjIiO2k6MztzOjM2OiIzODUyYWUyZS1lNDU4LTY5NjMtNDU3Yy01ZGY4ZGYzNWFlZjAiO2k6NDtzOjM2OiIzOGFjNTI1Yy0yYjg0LTdiYmEtMWZkMi01ZGY4ZGY0YzgyMTMiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjM3MTU1YmNkLTAxNGUtMjY0OS00NWFkLTVkZjhkZmQ2NmVmYyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('4e1d4d26-2ffd-526b-af86-5e21c85178ed','import',0,'2020-01-17 14:47:03','2020-01-17 14:47:03','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEyOiJmaWVsZF92YWx1ZXMiO3M6NDA2OiJ7ImN1c3RvbV9kZWxpbWl0ZXIiOiIsIiwiY3VzdG9tX2VuY2xvc3VyZSI6IiZxdW90OyIsImltcG9ydF90eXBlIjoiaW1wb3J0Iiwic291cmNlIjoiY3N2Iiwic291cmNlX2lkIjoiIiwiaW1wb3J0X21vZHVsZSI6IkxlYWRzIiwiaW1wb3J0bG9jYWxlX2NoYXJzZXQiOiJJU08tODg1OS0xIiwiaW1wb3J0bG9jYWxlX2RhdGVmb3JtYXQiOiJtXC9kXC9ZIiwiaW1wb3J0bG9jYWxlX3RpbWVmb3JtYXQiOiJIOmkiLCJpbXBvcnRsb2NhbGVfdGltZXpvbmUiOiJVVEMiLCJpbXBvcnRsb2NhbGVfY3VycmVuY3kiOiItOTkiLCJpbXBvcnRsb2NhbGVfZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiOiIyIiwiaW1wb3J0bG9jYWxlX251bV9ncnBfc2VwIjoiLCIsImltcG9ydGxvY2FsZV9kZWNfc2VwIjoiLiJ9Ijt9'),('4f8e3da3-a785-0d25-422e-5df34a8f5061','OutboundEmailAccounts2_OUTBOUNDEMAILACCOUNTS',0,'2019-12-13 08:22:14','2019-12-13 08:22:14','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4f970d3e-f761-20b3-205a-5e21bc5ad20f','Leads2_LEAD',0,'2020-01-17 13:55:32','2020-01-17 13:55:32','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('50254ef2-51a6-d1c4-472f-5e21bc5adec9','Home2_ACCOUNT',0,'2020-01-17 13:53:51','2020-01-17 13:53:51','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('51de2a1d-af9e-d1a1-3a14-5e21bc09440c','Home2_LEAD',0,'2020-01-17 13:53:51','2020-01-17 13:53:51','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('52423fa3-337f-07ce-8094-5df8df76bba1','Home2_CALL',0,'2019-12-17 13:58:42','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5393e0a1-0a86-5890-b03b-5e21bcc0a8da','Home2_SUGARFEED',0,'2020-01-17 13:53:51','2020-01-17 13:53:51','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('53f0c4e9-15d4-7e07-3675-5e252df217d6','Home',0,'2020-01-20 04:31:02','2020-01-20 04:31:02','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjM2MjQwZjk3LWVlMjgtNzMwMy05MGM3LTVlMjUyZDFlNGExMyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjM2MmVjNmJjLTAwY2YtZTE3ZS1jMTk0LTVlMjUyZGNkOGViYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjM2MzY3ZWMxLTA1NjQtOGRhNi0yYzMzLTVlMjUyZGYwMTEyNiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjM2M2FjYmFiLTY3MjktZTllOS0yMmZkLTVlMjUyZDAyMGU4NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMzY0M2RmMjUtOTgwZi1iMjQwLWI0YjMtNWUyNTJkODEwYTVlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMzY0YjUxMjEtNmY5Yi0zNGViLTRlYWUtNWUyNTJkNzZiYmM5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIzNjJlYzZiYy0wMGNmLWUxN2UtYzE5NC01ZTI1MmRjZDhlYmIiO2k6MTtzOjM2OiIzNjM2N2VjMS0wNTY0LThkYTYtMmMzMy01ZTI1MmRmMDExMjYiO2k6MjtzOjM2OiIzNjNhY2JhYi02NzI5LWU5ZTktMjJmZC01ZTI1MmQwMjBlODciO2k6MztzOjM2OiIzNjQzZGYyNS05ODBmLWIyNDAtYjRiMy01ZTI1MmQ4MTBhNWUiO2k6NDtzOjM2OiIzNjRiNTEyMS02ZjliLTM0ZWItNGVhZS01ZTI1MmQ3NmJiYzkiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjM2MjQwZjk3LWVlMjgtNzMwMy05MGM3LTVlMjUyZDFlNGExMyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('5400af30-7310-f7c1-e8bc-5df8df910e75','Home2_MEETING',0,'2019-12-17 13:58:42','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('55ab8215-7b38-fc3c-c07e-5df8df64f8a1','Home2_OPPORTUNITY',0,'2019-12-17 13:58:42','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('55c70439-3813-65b3-b0f6-5e252d82ab55','Home2_CALL',0,'2020-01-20 04:31:02','2020-01-20 04:31:02','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5758d2d0-2866-d1e6-e5d2-5e1c3a0ffa16','SecurityGroups2_SECURITYGROUP',0,'2020-01-13 09:38:13','2020-01-13 09:38:13','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('575bd9c5-3ef3-8e00-2d7e-5df8dfa51dc1','Home2_ACCOUNT',0,'2019-12-17 13:58:42','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('579544fa-af76-ffc5-de8f-5e252d0d9e01','Home2_MEETING',0,'2020-01-20 04:31:02','2020-01-20 04:31:02','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('587b09c6-e16d-da80-7064-5df74166ebce','Emails',0,'2019-12-16 08:32:54','2020-01-13 09:33:46','41afbc38-3a08-d92d-15a6-5df740edd6f3','YTowOnt9'),('58fb343b-5f1b-1f60-2c9f-5dfb6fa13c3c','Leads2_LEAD',0,'2019-12-19 12:39:22','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('590b82db-e567-9d23-8c37-5df0e9303839','Project2_PROJECT',0,'2019-12-11 13:05:14','2019-12-11 13:05:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('59115303-3139-52b9-4d7c-5df8df59cc52','Home2_LEAD',0,'2019-12-17 13:58:42','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('594f657b-4cdb-4045-7d79-5e252d9f1c5a','Home2_OPPORTUNITY',0,'2020-01-20 04:31:02','2020-01-20 04:31:02','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5a2c1a38-981d-d072-4b8b-5e2765d8a20c','AOW_WorkFlow2_AOW_WORKFLOW',0,'2020-01-21 20:57:39','2020-01-21 20:57:39','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5ac4d360-a85c-ba6d-4115-5df8df634f39','Home2_SUGARFEED',0,'2019-12-17 13:58:42','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5b1fd9df-b4be-60fc-db13-5e252d2c5931','Home2_ACCOUNT',0,'2020-01-20 04:31:02','2020-01-20 04:31:02','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5d8ae55d-4bc0-91b6-fa3d-5e252d5cfe70','Home2_LEAD',0,'2020-01-20 04:31:02','2020-01-20 04:31:02','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5e5bc121-1d0e-ac7f-bbaa-5e21bcbd74f1','Home2_LEAD_2d212f3e-a533-5942-b915-5e21bc22fc57',0,'2020-01-17 13:53:56','2020-01-17 13:53:56','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5fd7cd0f-fa49-072c-fee4-5e252d904fd2','Home2_SUGARFEED',0,'2020-01-20 04:31:02','2020-01-20 04:31:02','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('61f938f0-7f50-8c8f-bfc3-5df757c0e419','GoogleSync',0,'2019-12-16 10:07:00','2019-12-16 10:17:13','6c725b5f-7b1a-6575-72e3-5df742004330','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('62aaa6c1-71e4-e980-9313-5dfb79a019fe','Contacts2_CONTACT',0,'2019-12-19 13:22:20','2019-12-19 13:22:20','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('62ea91cf-1f96-97ba-5c4e-5e21c493159a','Home2_LEAD_241710a1-d69a-a244-6b8c-5e21c414e9c9',0,'2020-01-17 14:28:18','2020-01-17 14:28:18','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('630d3c4e-f381-8d15-ea9d-5e21bbe2cb72','Emails',0,'2020-01-17 13:49:00','2020-01-17 13:49:00','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YTowOnt9'),('63fb1822-73e5-dee7-87a0-5df757eb58a6','Emails',0,'2019-12-16 10:07:00','2019-12-16 10:15:11','6c725b5f-7b1a-6575-72e3-5df742004330','YTowOnt9'),('66cb0e4e-ef62-8d3e-2c9d-5e1c35f49262','GoogleSync',0,'2020-01-13 09:16:24','2020-01-17 13:52:03','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('71d1e227-bba7-bc9a-58f9-5e26ef730ef6','Leads2_LEAD',0,'2020-01-21 12:32:51','2020-01-21 12:32:51','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('76603f92-b384-f792-3003-5e21c801c7b6','Accounts2_ACCOUNT',0,'2020-01-17 14:45:07','2020-01-17 14:45:07','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7aa7bb01-ef76-764c-492f-5e2ae1e29351','Accounts2_ACCOUNT',0,'2020-01-24 12:21:03','2020-01-24 12:21:03','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7b5fd07c-1ee9-3802-3854-5e26a4e8dde7','Opportunities2_OPPORTUNITY',0,'2020-01-21 07:11:26','2020-01-21 07:11:26','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7e4a6067-2371-a081-167b-5e26f1147985','Cases2_CASE',0,'2020-01-21 12:42:23','2020-01-21 12:42:23','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8562b061-802a-e65c-a72d-5df881936bb4','Cases2_CASE',0,'2019-12-17 07:20:47','2019-12-17 07:20:47','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('88e473e8-e33a-0539-582a-5e1c317d0a83','Assistant',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('8a4a3d2b-ec1c-befa-c700-5df354c700b4','SecurityGroups2_SECURITYGROUP',0,'2019-12-13 09:06:04','2019-12-13 09:06:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8aa08036-a13c-8b01-87a4-5e1c31d06b41','ETag',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('8c6e4a95-fa0b-23b0-a90b-5e1c311e270e','Cases',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('8db85a47-55d9-7d85-16b6-5e1c36f76e2e','Emails',0,'2020-01-13 09:23:01','2020-01-17 13:49:29','d86b2737-2757-8261-b46c-5e1c35dd162d','YTowOnt9'),('8e28578d-2a29-4290-a843-5e1c31075e37','Cases:Sales',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('8ec2ff76-481f-57d6-272d-5dfb7806307b','Accounts2_ACCOUNT',0,'2019-12-19 13:17:36','2019-12-19 13:17:36','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8f545271-af1f-ea4e-5059-5e26effe2ada','Home2_LEAD_b01b29f6-3d25-66b9-b678-5e26ef43c1d0',0,'2020-01-21 12:32:12','2020-01-21 12:32:12','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8fd0babb-c350-6062-0c4f-5e1c31f22932','Cases:Marketing',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('916c1060-d02f-922b-0894-5e1c31388cdc','Cases:Support',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('92c1f5b8-4e28-4fba-b5f3-5df8dfa3e367','Home2_LEAD_38ac525c-2b84-7bba-1fd2-5df8df4c8213',0,'2019-12-17 13:58:45','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9307d857-d3e0-0c9d-91d9-5e1c31d1f007','Cases:Collaboration',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('94b5edca-a025-953a-b966-5e1c311abc0e','Cases:Other',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('958ccaf9-f5b1-e836-852c-5e27041a31d0','AOR_Reports2_AOR_REPORT',0,'2020-01-21 14:03:01','2020-01-21 14:03:01','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9594403e-522b-549a-a77e-5df7432f1304','global',1,'2019-12-16 08:38:21','2019-12-16 10:02:51','6c725b5f-7b1a-6575-72e3-5df742004330','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('96fcd658-66fd-9188-f9c5-5e1c31e8b996','ModuleBuilder',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('98002fb4-ca51-7fc5-fb65-5df743b5f601','GoogleSync',1,'2019-12-16 08:38:21','2019-12-16 10:02:51','6c725b5f-7b1a-6575-72e3-5df742004330','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('9a6a7cab-967d-ddb6-d57e-5e1c316e3981','Dashboard',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('9d200556-ab79-5faa-3e2c-5df8897aa55a','Opportunities2_OPPORTUNITY',0,'2019-12-17 07:51:47','2019-12-17 07:51:47','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a1d680da-cf86-a5f9-ed79-5df87e6e419f','Campaigns2_CAMPAIGN',0,'2019-12-17 07:07:17','2019-12-17 07:07:17','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a30e06d9-1a58-e044-9e4f-5e1c31a85e8f','Emails',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('a4d618d3-cef8-4409-acd2-5e14464518bb','AOS_Quotes2_AOS_QUOTES',0,'2020-01-07 08:50:54','2020-01-07 08:50:54','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a5125565-9113-dd83-153c-5e252d912f07','Home2_LEAD_364b5121-6f9b-34eb-4eae-5e252d76bbc9',0,'2020-01-20 04:31:07','2020-01-20 04:31:07','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a64049a2-5fb1-70c2-e0e0-5e257692bf19','jjwg_Maps2_JJWG_MAPS',0,'2020-01-20 09:44:40','2020-01-20 09:44:40','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a7d386aa-dff1-1b91-18c3-5e275fc9aafe','ProspectLists2_PROSPECTLIST',0,'2020-01-21 20:31:20','2020-01-21 20:31:20','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a7dbda77-905b-495f-2ca2-5dfb74bcfcc7','Cases2_CASE',0,'2019-12-19 12:59:17','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a8e89de8-f3e1-d46e-3afe-5e21bc8bfa78','Home',0,'2020-01-17 13:55:34','2020-01-17 13:55:34','e222fa06-97a4-d615-919e-5e1c35eeca92','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjhlMzk3ODQzLWFhZTQtYmQ0ZC03OTMzLTVlMjFiYzc2N2FhZiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjhlNDFmMzQyLWUzNDAtZjc1Zi0xNmE1LTVlMjFiYzIwNzgzMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjhlNDlhNjM1LTZhMzQtYTdiMS1iMGE3LTVlMjFiY2E2NjY0YyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjhlNGRhODMxLTkwNDQtZjRkYi04YTIxLTVlMjFiYzkwNDdlMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOGU1NjE4ZDUtZjE2Yy03MzIzLWVjMGItNWUyMWJjYTY4NWJmIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOGU1Y2ZkYjItNzZkNy0wMjViLWU5ZDUtNWUyMWJjMjIwZThiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI4ZTQxZjM0Mi1lMzQwLWY3NWYtMTZhNS01ZTIxYmMyMDc4MzEiO2k6MTtzOjM2OiI4ZTQ5YTYzNS02YTM0LWE3YjEtYjBhNy01ZTIxYmNhNjY2NGMiO2k6MjtzOjM2OiI4ZTRkYTgzMS05MDQ0LWY0ZGItOGEyMS01ZTIxYmM5MDQ3ZTIiO2k6MztzOjM2OiI4ZTU2MThkNS1mMTZjLTczMjMtZWMwYi01ZTIxYmNhNjg1YmYiO2k6NDtzOjM2OiI4ZTVjZmRiMi03NmQ3LTAyNWItZTlkNS01ZTIxYmMyMjBlOGIiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjhlMzk3ODQzLWFhZTQtYmQ0ZC03OTMzLTVlMjFiYzc2N2FhZiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('a9b83050-dfaa-e162-9830-5e1c319f9460','Accounts',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('aaa4dc1c-2f9c-f27c-e0a7-5e21bc6108fc','Home2_CALL',0,'2020-01-17 13:55:34','2020-01-17 13:55:34','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ab5d0fb5-a0c8-b4cb-2129-5e1c35b97d5a','Import2_USER',0,'2020-01-13 09:16:46','2020-01-13 09:16:46','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ab5d95c5-49d1-abeb-6f9a-5e1c315bc2e5','Accounts:Sales',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('ac60bda8-ea03-28b4-9901-5e21bc35c881','Home2_MEETING',0,'2020-01-17 13:55:34','2020-01-17 13:55:34','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('acb873a4-30f9-2452-2a33-5e21c9c7c620','Contacts2_CONTACT',0,'2020-01-17 14:50:56','2020-01-17 14:50:56','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ad15aa4c-e1fc-140d-3c11-5e1c318e60ee','Accounts:Marketing',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('ae203287-34fc-584f-02e1-5e21bcb92f7b','Home2_OPPORTUNITY',0,'2020-01-17 13:55:34','2020-01-17 13:55:34','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aed1deab-0a44-8b62-45a5-5e1c314a0142','Accounts:Support',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('af16f238-a6a5-587d-e8df-5e2162d9bb3d','Home',0,'2020-01-17 07:32:04','2020-01-17 07:32:04','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjkwZDA1YTFkLWY5Y2ItYzFjOS1mMzM1LTVlMjE2MjIyYzg5ZSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjkxMjY1ZWZlLWRkMmQtMjcwOS03YjMzLTVlMjE2MjdlNDRmNiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjkxOGViZDkxLTMwMGMtMDM2ZS1lNjhkLTVlMjE2MjViYmFmYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjkxY2Q4YTlhLTdkMTItYTE1YS1hNjBmLTVlMjE2MjAzZjBiOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOTIxYzVmODYtM2E0My04ZTQ2LWUzZDAtNWUyMTYyOTRiNzQyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOTI3ODk3ZGQtM2UzNS00NTQxLWUwMjUtNWUyMTYyNjRkOTVlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI5MTI2NWVmZS1kZDJkLTI3MDktN2IzMy01ZTIxNjI3ZTQ0ZjYiO2k6MTtzOjM2OiI5MThlYmQ5MS0zMDBjLTAzNmUtZTY4ZC01ZTIxNjI1YmJhZmMiO2k6MjtzOjM2OiI5MWNkOGE5YS03ZDEyLWExNWEtYTYwZi01ZTIxNjIwM2YwYjkiO2k6MztzOjM2OiI5MjFjNWY4Ni0zYTQzLThlNDYtZTNkMC01ZTIxNjI5NGI3NDIiO2k6NDtzOjM2OiI5Mjc4OTdkZC0zZTM1LTQ1NDEtZTAyNS01ZTIxNjI2NGQ5NWUiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjkwZDA1YTFkLWY5Y2ItYzFjOS1mMzM1LTVlMjE2MjIyYzg5ZSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('afdd752c-c443-93c6-1708-5e21bc007262','Home2_ACCOUNT',0,'2020-01-17 13:55:34','2020-01-17 13:55:34','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b08b6e04-a5a6-520f-ff93-5e1c31f216c5','Accounts:Collaboration',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('b0a16343-59d4-b5db-8e9c-5e26bd116767','Meetings2_MEETING',0,'2020-01-21 08:58:26','2020-01-21 08:58:26','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b0e17053-b376-8764-c8f2-5e2162e79814','Home2_CALL',0,'2020-01-17 07:32:04','2020-01-17 07:32:04','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b18aa3d6-a8a6-9ef1-aeec-5e21bc9cf447','Home2_LEAD',0,'2020-01-17 13:55:34','2020-01-17 13:55:34','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b2b4c8d3-427e-1760-1e05-5e21628a530c','Home2_MEETING',0,'2020-01-17 07:32:04','2020-01-17 07:32:04','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b2fd221f-466d-9086-80df-5e1c315545cd','Accounts:Other',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('b36e4c34-5666-239d-5b15-5e21bca8ad2d','Home2_SUGARFEED',0,'2020-01-17 13:55:34','2020-01-17 13:55:34','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b3ec0ed4-4af7-312b-5d06-5e21bcef0266','Contacts2_CONTACT',0,'2020-01-17 13:55:04','2020-01-17 13:55:04','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b5aac9f7-92e9-bdfe-c258-5e2162c7affe','Home2_OPPORTUNITY',0,'2020-01-17 07:32:04','2020-01-17 07:32:04','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b66921a0-d157-f4c1-ea7f-5e1c31d01d79','Leads',0,'2020-01-13 09:01:31','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YTowOnt9'),('b7b4c187-fbe8-f036-4eb5-5e216208f792','Home2_ACCOUNT',0,'2020-01-17 07:32:04','2020-01-17 07:32:04','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b9afdc6a-3df7-95ac-a58a-5e2162f6cc0d','Home2_LEAD',0,'2020-01-17 07:32:04','2020-01-17 07:32:04','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bb915cfc-bfc5-2968-0716-5e21626fd600','Home2_SUGARFEED',0,'2020-01-17 07:32:04','2020-01-17 07:32:04','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bbf2b7a8-63da-b7d7-41bd-5df740825e8f','Emails',0,'2019-12-16 08:29:19','2019-12-16 08:29:19','1','YToxOntzOjExOiJmb2N1c0ZvbGRlciI7czo2MjoiYToyOntzOjQ6ImllSWQiO3M6OToidW5kZWZpbmVkIjtzOjY6ImZvbGRlciI7czo5OiJ1bmRlZmluZWQiO30iO30='),('bbfb03b9-8fae-b592-4248-5e216383c34e','Cases2_CASE',0,'2020-01-17 07:32:41','2020-01-17 07:32:41','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bc317962-1f69-2d67-de37-5defb202400b','Users2_USER',0,'2019-12-10 14:57:48','2019-12-10 14:57:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c01a4485-5fd8-28bb-fede-5df3553455c8','Home',0,'2019-12-13 09:10:35','2019-12-13 09:10:35','42d64a84-e6a3-a628-20fd-5df354b5c941','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImFkODA2MDRiLWE1NWEtNjE3Yy02N2NlLTVkZjM1NWI3MzlhOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImFkZDYwMjcwLTlhNDUtNzdiMC1hOTA0LTVkZjM1NWJiOGZmNCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFlM2E1ZDYyLWFhZDAtYzQ3YS05Mzk1LTVkZjM1NTliMmU0NiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFlNzZjZWNlLTYzNWItZWFmYy1jNmQ1LTVkZjM1NTgwOTAxMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYWVjNmQyYzktNTM0Ny03Zjk3LTljNzEtNWRmMzU1ZTAxMGUyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYWYyNDBlMGMtMjkyMi0wZWVkLWQ2ZGMtNWRmMzU1MWE5OTc4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJhZGQ2MDI3MC05YTQ1LTc3YjAtYTkwNC01ZGYzNTViYjhmZjQiO2k6MTtzOjM2OiJhZTNhNWQ2Mi1hYWQwLWM0N2EtOTM5NS01ZGYzNTU5YjJlNDYiO2k6MjtzOjM2OiJhZTc2Y2VjZS02MzViLWVhZmMtYzZkNS01ZGYzNTU4MDkwMTMiO2k6MztzOjM2OiJhZWM2ZDJjOS01MzQ3LTdmOTctOWM3MS01ZGYzNTVlMDEwZTIiO2k6NDtzOjM2OiJhZjI0MGUwYy0yOTIyLTBlZWQtZDZkYy01ZGYzNTUxYTk5NzgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImFkODA2MDRiLWE1NWEtNjE3Yy02N2NlLTVkZjM1NWI3MzlhOCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('c01ea258-1453-05a7-6e2f-5e1c354dec8f','import',0,'2020-01-13 09:15:12','2020-01-13 09:15:12','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEyOiJmaWVsZF92YWx1ZXMiO3M6NDMwOiJ7ImN1c3RvbV9kZWxpbWl0ZXIiOiIsIiwiY3VzdG9tX2VuY2xvc3VyZSI6IiZxdW90OyIsImltcG9ydF90eXBlIjoiaW1wb3J0Iiwic291cmNlIjoiY3N2Iiwic291cmNlX2lkIjoiIiwiaW1wb3J0X21vZHVsZSI6IlVzZXJzIiwiaGFzX2hlYWRlciI6Im9uIiwiaW1wb3J0bG9jYWxlX2NoYXJzZXQiOiJVVEYtOCIsImltcG9ydGxvY2FsZV9kYXRlZm9ybWF0IjoiZFwvbVwvWSIsImltcG9ydGxvY2FsZV90aW1lZm9ybWF0IjoiSDppIiwiaW1wb3J0bG9jYWxlX3RpbWV6b25lIjoiRXVyb3BlXC9Nb3Njb3ciLCJpbXBvcnRsb2NhbGVfY3VycmVuY3kiOiItOTkiLCJpbXBvcnRsb2NhbGVfZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiOiIyIiwiaW1wb3J0bG9jYWxlX251bV9ncnBfc2VwIjoiLCIsImltcG9ydGxvY2FsZV9kZWNfc2VwIjoiLiJ9Ijt9'),('c41b2f0a-9388-ed55-902e-5df355bf44a6','Home2_CALL',0,'2019-12-13 09:10:35','2019-12-13 09:10:35','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c5ebe8a7-8f71-755a-8637-5df35582c1f6','Home2_MEETING',0,'2019-12-13 09:10:35','2019-12-13 09:10:35','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c78808d0-8f90-be1a-46be-5e21bd04fb8d','Leads2_LEAD',0,'2020-01-17 13:56:19','2020-01-17 13:56:19','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c87e963b-5473-56fd-d33a-5df35538b688','Home2_OPPORTUNITY',0,'2019-12-13 09:10:35','2019-12-13 09:10:35','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ca411c75-9b7e-749d-c409-5e1c350c4ee8','global',0,'2020-01-13 09:16:24','2020-01-21 14:04:03','c0128425-ade0-5c59-6b2c-5e1c359af34f','YTo0Mjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImM5MGM0MTZiLWEzZTAtNzUzNC0yNzI2LTVlMWMzNTk4Njg5YyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiQ2FzZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('ca511da1-50ac-437e-293a-5df355153c1a','Home2_ACCOUNT',0,'2019-12-13 09:10:35','2019-12-13 09:10:35','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ca5ca4ad-f272-6b14-f039-5e21bc22981d','Home2_LEAD_8e5cfdb2-76d7-025b-e9d5-5e21bc220e8b',0,'2020-01-17 13:55:39','2020-01-17 13:55:39','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cab5480e-d8d0-43cc-6e7b-5e21bb727447','Emails',0,'2020-01-17 13:51:31','2020-01-17 13:51:43','eb21bb65-2ba7-46fa-5536-5e1c35688062','YTowOnt9'),('cbee5b12-f819-7604-e69a-5e1c35b57425','GoogleSync',0,'2020-01-13 09:16:24','2020-01-21 14:04:03','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('cc6346e5-fd93-0293-1c2e-5df355d0584c','Home2_LEAD',0,'2019-12-13 09:10:35','2019-12-13 09:10:35','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cd01ac92-28af-dd4f-b2a7-5e2746a2d209','EmailTemplates2_EMAILTEMPLATE',0,'2020-01-21 18:44:02','2020-01-21 18:44:02','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cd64433c-2077-ca88-8a97-5defb1277ded','Home',0,'2019-12-10 14:52:35','2019-12-10 14:52:35','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImFjNjgxYWY3LTM4ZWQtMmM2NS1mMWZmLTVkZWZiMWY1ZTY5NiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImFjYmJkNGJiLWY0MzItNjhkOS1mOWIyLTVkZWZiMWY3NzI4ZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFkMTNmNzE0LWJiOTYtN2JkZS0xZTcxLTVkZWZiMTQxODBiYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFkM2NkZmQyLTYxZTQtZDJkZi1hZDRhLTVkZWZiMTBlYzIwYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYWQ3MzM5N2EtOTQxMC1kODNjLWY4ZjctNWRlZmIxYTEzZjkzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYWRhOWU0MzMtNjZjNC02MzQxLTViOGQtNWRlZmIxMWRjYjQ2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJhY2JiZDRiYi1mNDMyLTY4ZDktZjliMi01ZGVmYjFmNzcyOGUiO2k6MTtzOjM2OiJhZDEzZjcxNC1iYjk2LTdiZGUtMWU3MS01ZGVmYjE0MTgwYmIiO2k6MjtzOjM2OiJhZDNjZGZkMi02MWU0LWQyZGYtYWQ0YS01ZGVmYjEwZWMyMGMiO2k6MztzOjM2OiJhZDczMzk3YS05NDEwLWQ4M2MtZjhmNy01ZGVmYjFhMTNmOTMiO2k6NDtzOjM2OiJhZGE5ZTQzMy02NmM0LTYzNDEtNWI4ZC01ZGVmYjExZGNiNDYiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImFjNjgxYWY3LTM4ZWQtMmM2NS1mMWZmLTVkZWZiMWY1ZTY5NiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('cdb92c56-81d2-3b97-66a6-5e21bc068c17','Home',0,'2020-01-17 13:54:37','2020-01-23 07:24:42','13632602-529c-6bd5-770d-5e1c35bc5171','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImIyZjdmZjdiLTIwNTgtNjM5Mi0zOGI0LTVlMjFiYzlmNTEyNyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImIzMDExNzgxLTcyOTYtM2RmYS1kOWQ3LTVlMjFiY2VhZDI1NyI7YTo2OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoic29ydF9vcHRpb25zIjthOjI6e3M6OToic29ydE9yZGVyIjtzOjQ6ImRlc2MiO3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjt9fXM6MzY6ImIzMDhiMmMwLWIyZDYtMjBlMy1lMDBlLTVlMjFiY2U3OGNjNyI7YTo2OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoic29ydF9vcHRpb25zIjthOjI6e3M6OToic29ydE9yZGVyIjtzOjM6ImFzYyI7czo3OiJvcmRlckJ5IjtzOjQ6Im5hbWUiO319czozNjoiYjMwZDA1ZTItYTdjNi01YWIzLTFmZDQtNWUyMWJjYzdkMmU3IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJiMzE2Mzc0ZC0wNjMzLTFhMTItZjExZS01ZTIxYmMzNmZlOTQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJiMzFkMDYxYy02Y2Y5LWY0NDItM2Q2Yy01ZTIxYmM4ZTg3NjUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6NTp7aTowO3M6MzY6ImIzMDExNzgxLTcyOTYtM2RmYS1kOWQ3LTVlMjFiY2VhZDI1NyI7aToxO3M6MzY6ImIzMDhiMmMwLWIyZDYtMjBlMy1lMDBlLTVlMjFiY2U3OGNjNyI7aToyO3M6MzY6ImIzMGQwNWUyLWE3YzYtNWFiMy0xZmQ0LTVlMjFiY2M3ZDJlNyI7aTozO3M6MzY6ImIzMTYzNzRkLTA2MzMtMWExMi1mMTFlLTVlMjFiYzM2ZmU5NCI7aTo0O3M6MzY6ImIzMWQwNjFjLTZjZjktZjQ0Mi0zZDZjLTVlMjFiYzhlODc2NSI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiYjJmN2ZmN2ItMjA1OC02MzkyLTM4YjQtNWUyMWJjOWY1MTI3Ijt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),('ce203bbc-faa4-341f-fb27-5df3551165a4','Home2_SUGARFEED',0,'2019-12-13 09:10:35','2019-12-13 09:10:35','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ced4f1af-0523-230c-7460-5e26ef10b9a0','Home',0,'2020-01-21 12:32:00','2020-01-21 12:32:00','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImFmZjRjM2U4LTA0NWMtYWVjNy05NmZiLTVlMjZlZjIxODRhMSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImFmZmViOTY5LTUzYjktMTQ3MS0xNzBhLTVlMjZlZmRlMmQ2OCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImIwMDY1ODk2LTgwYzYtNzQyZC0zZGRiLTVlMjZlZjc5YzdlYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImIwMGFlNmRlLWRjNTktYzMxNC0zMDRiLTVlMjZlZmViYjAwMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjAxNDRmYjctZTRjZi1kYTlkLTVhMGMtNWUyNmVmYTM4YTY2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjAxYjI5ZjYtM2QyNS02NmI5LWI2NzgtNWUyNmVmNDNjMWQwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJhZmZlYjk2OS01M2I5LTE0NzEtMTcwYS01ZTI2ZWZkZTJkNjgiO2k6MTtzOjM2OiJiMDA2NTg5Ni04MGM2LTc0MmQtM2RkYi01ZTI2ZWY3OWM3ZWIiO2k6MjtzOjM2OiJiMDBhZTZkZS1kYzU5LWMzMTQtMzA0Yi01ZTI2ZWZlYmIwMDAiO2k6MztzOjM2OiJiMDE0NGZiNy1lNGNmLWRhOWQtNWEwYy01ZTI2ZWZhMzhhNjYiO2k6NDtzOjM2OiJiMDFiMjlmNi0zZDI1LTY2YjktYjY3OC01ZTI2ZWY0M2MxZDAiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImFmZjRjM2U4LTA0NWMtYWVjNy05NmZiLTVlMjZlZjIxODRhMSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('cf4f789f-9513-8f62-1705-5defb17236a7','Home2_CALL',0,'2019-12-10 14:52:35','2019-12-10 14:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d00c3ac3-1e2b-c915-c0c1-5df75ac5efbd','global',0,'2019-12-16 10:19:47','2019-12-16 10:19:47','83991747-41d9-a084-4b4d-5df75aec4b03','YTozODp7czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6MjoidXQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czowOiIiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('d05027bf-9689-8faa-bfcf-5df7567db6ee','global',0,'2019-12-16 10:03:06','2019-12-16 10:17:13','6c725b5f-7b1a-6575-72e3-5df742004330','YToxODp7czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6MjoidXQiO3M6MToiMSI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO30='),('d06f7847-e810-4e21-df23-5e21bc946016','Home2_CALL',0,'2020-01-17 13:54:37','2020-01-23 07:24:33','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d0971c57-07db-072e-9179-5e216d5476e4','Dashboard',0,'2020-01-17 08:16:26','2020-01-17 08:17:04','7607045c-582f-799f-b814-5df3650d9190','YTowOnt9'),('d14175e2-d76b-285d-3007-5e26ef8403b1','Home2_CALL',0,'2020-01-21 12:32:00','2020-01-21 12:32:00','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d223b9fd-8d2c-f780-d34f-5e21bcb5dbd5','Home2_MEETING',0,'2020-01-17 13:54:37','2020-01-23 07:24:42','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),('d26fa24d-a587-879b-dc93-5defb1d23694','Home2_MEETING',0,'2019-12-10 14:52:35','2019-12-10 14:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d370705f-1cac-67bf-92d8-5e1c35001da0','global',0,'2020-01-13 09:16:24','2020-01-21 05:17:50','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YTo0Mjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImQyYjI4ZmU0LTEyNDMtZmFmYS1hYjU5LTVlMWMzNWNmZDA0ZSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiQ2FzZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('d3fd31d5-0e35-57c3-c2c9-5e21bc732539','Home2_OPPORTUNITY',0,'2020-01-17 13:54:37','2020-01-17 13:54:37','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d4151c5e-0fa1-5b4b-6982-5e26ef6ef176','Home2_MEETING',0,'2020-01-21 12:32:00','2020-01-21 12:32:00','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d4420ce0-0129-38e1-0789-5defb1df9080','Home2_OPPORTUNITY',0,'2019-12-10 14:52:35','2019-12-10 14:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d45baf8c-3438-07a4-bffb-5df8df3e7687','Cases2_CASE',0,'2019-12-17 13:58:56','2019-12-17 13:58:56','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d4d241c9-a242-9292-5151-5e216b899e2e','Leads2_LEAD',0,'2020-01-17 08:07:37','2020-01-17 08:07:37','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d4d727db-78bc-fab4-827b-5df75670dbaf','Reports',0,'2019-12-16 10:03:06','2019-12-16 10:15:11','6c725b5f-7b1a-6575-72e3-5df742004330','YToxOntzOjk6ImZhdm9yaXRlcyI7Tjt9'),('d50c16d2-c42f-835b-1ea4-5e1c357325b6','GoogleSync',0,'2020-01-13 09:16:24','2020-01-17 13:49:00','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('d5dacab3-65a1-4520-27a9-5e21bc2b78a4','Home2_ACCOUNT',0,'2020-01-17 13:54:37','2020-01-17 13:54:37','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d61d61dc-6009-2870-c618-5defb16d4648','Home2_ACCOUNT',0,'2019-12-10 14:52:35','2019-12-10 14:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d6a189b5-9749-20a7-6f62-5df7569ae35a','home',0,'2019-12-16 10:03:06','2019-12-16 10:15:11','6c725b5f-7b1a-6575-72e3-5df742004330','YToyOntzOjU6InBhZ2VzIjtOO3M6ODoiZGFzaGxldHMiO047fQ=='),('d763e450-9fcc-27a5-5b65-5e26ef1f009e','Home2_OPPORTUNITY',0,'2020-01-21 12:32:00','2020-01-21 12:32:00','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d7b61316-9d8d-7509-6acc-5e21bc565d72','Home2_LEAD',0,'2020-01-17 13:54:37','2020-01-17 13:54:37','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d806731a-8b0b-efe4-d0a7-5defb174dc75','Home2_LEAD',0,'2019-12-10 14:52:35','2019-12-10 14:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d92b0a4a-432c-361f-77ca-5df3546d7e88','global',0,'2019-12-13 09:04:45','2019-12-17 07:56:06','42d64a84-e6a3-a628-20fd-5df354b5c941','YTo0Nzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjE0OiJBZnJpY2EvTmFpcm9iaSI7czoyOiJ1dCI7aToxO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkNhbXBhaWduc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJDYXNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJNZWV0aW5nc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo3OiJFbWFpbHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('d938ec5f-6239-221a-bf15-5e26ef7c6527','Home2_ACCOUNT',0,'2020-01-21 12:32:00','2020-01-21 12:32:00','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d9956cc1-5cb6-4f00-212c-5e21bc8a36c7','Home2_SUGARFEED',0,'2020-01-17 13:54:37','2020-01-17 13:54:37','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d9db052b-783a-dd8f-39c8-5defb113f7b3','Home2_SUGARFEED',0,'2019-12-10 14:52:35','2019-12-10 14:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('dad7f7aa-f904-8cb1-bc84-5df88981d510','Accounts2_ACCOUNT',0,'2019-12-17 07:53:13','2019-12-17 07:53:13','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('db220c91-d50f-3370-dfdf-5e21c86c51b8','Leads2_LEAD',0,'2020-01-17 14:45:28','2020-01-17 14:45:28','13632602-529c-6bd5-770d-5e1c35bc5171','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('db363c47-6674-c51f-dcb5-5e26efc8a0fc','Home2_LEAD',0,'2020-01-21 12:32:00','2020-01-21 12:32:00','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('db6f61a0-3e40-69f9-70b3-5e2ea087cf18','Campaigns2_CAMPAIGN',0,'2020-01-27 08:33:27','2020-01-27 08:33:27','7607045c-582f-799f-b814-5df3650d9190','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('dc8ed65f-0dc5-42d3-59be-5df7402a1cb2','global',0,'2019-12-16 08:31:04','2020-01-24 12:21:03','41afbc38-3a08-d92d-15a6-5df740edd6f3','YTo0Nzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjE0OiJBZnJpY2EvTmFpcm9iaSI7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxMToiZWRpdG9yX3R5cGUiO3M6NjoibW96YWlrIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czo2OiJDYXNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJMZWFkc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJVc2Vyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJNZWV0aW5nc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo3OiJFbWFpbHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('dc915625-87ce-ea9c-cdc7-5e1c35898100','global',0,'2020-01-13 09:16:24','2020-01-17 14:01:35','d86b2737-2757-8261-b46c-5e1c35dd162d','YTo0Mzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImRiZDE1NzY3LTE4NTQtOTQ2MC0zMzMzLTVlMWMzNTdkYWUwNyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiQ2FzZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('dd0c6af3-4c55-244f-5c3c-5e26ef69846d','Home2_SUGARFEED',0,'2020-01-21 12:32:00','2020-01-21 12:32:00','c0128425-ade0-5c59-6b2c-5e1c359af34f','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('dd3a7585-4657-85cb-b069-5e2162e3307d','Home2_LEAD_927897dd-3e35-4541-e025-5e216264d95e',0,'2020-01-17 07:32:13','2020-01-17 07:32:13','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('de566dd7-2ede-1e91-ff61-5df740cf2aea','GoogleSync',0,'2019-12-16 08:31:04','2020-01-13 09:33:46','41afbc38-3a08-d92d-15a6-5df740edd6f3','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('ded928a8-b4d6-197c-8401-5e1c355bf90f','GoogleSync',0,'2020-01-13 09:16:24','2020-01-17 13:49:29','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('df2036c9-7806-c92a-f90b-5defb0f4a458','global',0,'2019-12-10 14:51:02','2019-12-16 10:03:07','1','YToyOTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImRkZjk2YjdhLWNiNjctYzNhYS0yZDViLTVkZWZiMGY3YmQ1MyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTQ6IkFmcmljYS9OYWlyb2JpIjtzOjI6InV0IjtzOjE6IjEiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czoyMDoibWFpbC5hcGFpbnN1cmFuY2Uua2UiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MzoiOTkzIjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjIxOiJjLnJtQGFwYWluc3VyYW5jZS5vcmciO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MjA6ImplZ3hhei1wb3B4eVota2Fza2E0IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjE6IjEiO3M6MTI6Im1haWxfc210cHNzbCI7aToxO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjY6IlVzZXJzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjY6IkNhc2VzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjg6IlByb2plY3RRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiTWVldGluZ3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTU6IlNlY3VyaXR5R3JvdXBzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO319'),('df841554-8fad-eb3e-7368-5defb3546549','global',0,'2019-12-10 15:02:50','2020-01-28 07:50:02','a98007d2-dbdc-3dba-9261-5defb35a4621','YTo2Mzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjI6InV0IjtpOjE7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxMToiZWRpdG9yX3R5cGUiO3M6NjoibW96YWlrIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czo3OiJFbWFpbHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MjI6Ik91dGJvdW5kRW1haWxBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJVc2Vyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo2OiJMZWFkc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo2OiJDYXNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJDb250YWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMDoiQ2FtcGFpZ25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjk6Ik1lZXRpbmdzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjExOiJBT1NfUXVvdGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE1OiJTZWN1cml0eUdyb3Vwc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxODoiQU9LX0tub3dsZWRnZUJhc2VRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6Impqd2dfTWFwc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToiamp3Z19BcmVhc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxOToiRlBfRXZlbnRfTG9jYXRpb25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjY6IkNhbGxzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEwOiJEb2N1bWVudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTI6IkFPUl9SZXBvcnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE1OiJFbWFpbFRlbXBsYXRlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiUHJvc3BlY3RMaXN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxMzoiQU9XX1dvcmtGbG93USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEwOiJQcm9zcGVjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('e0044d4f-3e96-d67d-3745-5e2fe795d9be','Prospects2_PROSPECT',0,'2020-01-28 07:50:02','2020-01-28 07:50:02','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e0a124ee-9660-5f6b-6dce-5e257343cfff','AOK_KnowledgeBase2_AOK_KNOWLEDGEBASE',0,'2020-01-20 09:31:25','2020-01-20 09:31:25','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e0cd1248-a1da-7b79-4273-5defb0363466','GoogleSync',0,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('e0edf13c-8d2a-6752-0a20-5e21c483b6d8','Cases2_CASE',0,'2020-01-17 14:30:17','2020-01-18 09:37:16','f40795e1-c5c1-b225-b71a-5e1c3561b7ee','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),('e15cbe72-8cb8-a60c-5863-5df355908929','Home2_LEAD_af240e0c-2922-0eed-d6dc-5df3551a9978',0,'2019-12-13 09:10:39','2019-12-13 09:10:39','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e198742d-73ca-d8f0-8223-5defb3301ae3','GoogleSync',0,'2019-12-10 15:02:50','2020-01-13 09:01:32','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('e2d9cd4c-6711-219c-f947-5df0e97faf9d','Cases2_CASE',0,'2019-12-11 13:03:51','2019-12-11 13:03:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e31c5876-d94b-2d7c-bef3-5dfb79c2ab16','Opportunities2_OPPORTUNITY',0,'2019-12-19 13:22:41','2019-12-19 13:22:41','a98007d2-dbdc-3dba-9261-5defb35a4621','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e61727b9-8374-7c53-b03f-5e1c3535b329','global',0,'2020-01-13 09:16:24','2020-01-21 12:45:33','e222fa06-97a4-d615-919e-5e1c35eeca92','YTo0Mjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImU1NTc1MDRjLWVmNWQtYTViOC05OGNkLTVlMWMzNTM0NGE5NCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiQ2FzZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('e61c0fee-0272-965f-500f-5e1c355313c5','global',0,'2020-01-13 09:16:24','2020-01-17 13:42:36','a4aa0876-1e37-ab95-f13a-5e1c354931ef','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImQ5MzgwMmFiLTM4ZjktYTcyNi1hMmFmLTVlMWMzNWFkMzBhMCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('e7cd8dfe-a2d2-6e39-e02c-5e1c35f54d8d','GoogleSync',0,'2020-01-13 09:16:24','2020-01-17 13:27:59','e222fa06-97a4-d615-919e-5e1c35eeca92','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('e9063920-2af7-9e96-9c6d-5df0e9549f03','Meetings2_MEETING',0,'2019-12-11 13:05:37','2019-12-11 13:05:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('eb103cb4-6855-cd09-8dd5-5e2689c50dce','Leads2_LEAD',0,'2020-01-21 05:15:58','2020-01-21 05:15:58','cf87deda-842f-518a-6af9-5e1c35a1a2d7','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ecc88bf8-aaff-986c-8647-5e21becface0','Cases2_CASE',0,'2020-01-17 14:01:35','2020-01-17 14:01:35','d86b2737-2757-8261-b46c-5e1c35dd162d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ef0a3ede-9571-77fd-e963-5e1c35aa2770','global',0,'2020-01-13 09:16:24','2020-01-17 13:51:43','eb21bb65-2ba7-46fa-5536-5e1c35688062','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImVlNTA1M2E4LTQzYjItNDVhMS1lZDY5LTVlMWMzNWM4NjNiYyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('f0b63ec8-1ed2-6f7b-cfaa-5e1c3550cef0','GoogleSync',0,'2020-01-13 09:16:24','2020-01-17 13:51:43','eb21bb65-2ba7-46fa-5536-5e1c35688062','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('fa860c97-f181-d635-b160-5df3545a120c','GoogleSync',0,'2019-12-13 09:04:45','2019-12-13 09:04:45','42d64a84-e6a3-a628-20fd-5df354b5c941','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('fb260d86-0d29-ca47-9bcc-5e1c408528f6','Emails',0,'2020-01-13 10:03:05','2020-01-17 13:42:01','13632602-529c-6bd5-770d-5e1c35bc5171','YTowOnt9');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$2y$10$MfxaHgNBxqsjvgXM3FM3F.1NMfETynpDpiVWAJFSeT3RqaivrJD6q',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2019-12-10 14:51:02','2019-12-10 14:51:02','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,NULL,0,NULL,NULL),('13632602-529c-6bd5-770d-5e1c35bc5171','Joseph.Mbatia@apainsurance.org','$2y$10$Wa9UcXfFhS.AMdMa.6lSC.Rusp8ndTpzvwIZ.cmyTQy.qUDmc2yQ6',0,'2020-01-17 13:42:01',NULL,1,'Joseph','Mbatia',0,0,1,NULL,'2020-01-13 09:16:24','2020-01-17 13:42:01','41afbc38-3a08-d92d-15a6-5df740edd6f3','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('1fb9305f-a9b5-245d-ced3-5df759a136d2','',NULL,0,NULL,NULL,1,NULL,'',0,0,1,NULL,'2019-12-16 10:17:16','2019-12-16 10:17:16','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Inactive',NULL,NULL,NULL,NULL,NULL,1,0,1,'Terminated',NULL,NULL,NULL,0,NULL,NULL),('41afbc38-3a08-d92d-15a6-5df740edd6f3','juddy.tonui@apollo.co.ke','$2y$10$wxqarbavseCy1eWDcwhEQOV4KryFDuZWluIETARi.6gUvQW1ssDUy',0,'2020-01-13 09:33:46',NULL,1,'Juddy','Tonui',1,0,1,NULL,'2019-12-16 08:31:04','2020-01-13 09:33:46','a98007d2-dbdc-3dba-9261-5defb35a4621','1','Team Leader',NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('42d64a84-e6a3-a628-20fd-5df354b5c941','judith.bogonko@apollo.co.ke','$2y$10$9mkvy8oYHOkRqVsUHbq6oOdVvFVbfSw9yMXga/fJvmnZHz/mVsmGy',0,'2019-12-13 09:04:45',NULL,1,'Judith','Bogonko',1,0,1,'','2019-12-13 09:04:45','2019-12-13 09:04:45','1','1','Head of Customer Experience & Innovation','','Customer Experience','','','','','','Active','','','','','',0,0,1,'Active','','','',0,0,NULL),('6c725b5f-7b1a-6575-72e3-5df742004330','saagar.khimasia@apollo.co.ke','$2y$10$fcWrd4Ewfu76Ao7ZcZfUg.ohsoCtD3WAyNWiMwTT5nGW4/4DMBTIe',0,'2019-12-16 08:38:00',NULL,1,'Saagar','Khimasia',1,0,1,NULL,'2019-12-16 08:38:21','2019-12-16 10:17:13','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Inactive',NULL,NULL,NULL,NULL,NULL,1,0,1,'Terminated',NULL,NULL,'',0,0,NULL),('7607045c-582f-799f-b814-5df3650d9190','irene.akubania@apainsurance.org','$2y$10$H5f8WYi7iNYkPpBu4yBZ5unGE2yxgMpzFKztOepODLn7FLp5A.a5K',0,'2020-01-27 08:32:06',NULL,1,'Irene','Akubania',1,0,1,NULL,'2019-12-13 10:20:28','2020-01-27 08:32:06','a98007d2-dbdc-3dba-9261-5defb35a4621','1',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('83991747-41d9-a084-4b4d-5df75aec4b03','saagar.khimasia@apollo.co.ke','$2y$10$edCZhgEpech7zEXvp3D59e39LDfNauAC629mImravsgRv8PI0gc66',0,'2019-12-16 10:19:47',NULL,1,'Saagar','Khimasia',1,0,1,'','2019-12-16 10:19:47','2019-12-16 10:19:47','1','1','','','','','','','','','Active','','','','','',0,0,1,'Active','','','',0,0,NULL),('a4aa0876-1e37-ab95-f13a-5e1c354931ef','susan.eboso@apainsurance.org','$2y$10$vkKsRbPgnMwkT1.T6ool9OOtRapagGk4n1/8suqmu1nwregyD3Zme',0,'2020-01-17 13:42:36',NULL,1,'Susan','Eboso',0,0,1,NULL,'2020-01-13 09:16:24','2020-01-17 13:42:36','41afbc38-3a08-d92d-15a6-5df740edd6f3','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('a98007d2-dbdc-3dba-9261-5defb35a4621','gilbert.njoroge@apollo.co.ke','$2y$10$Mo0hqFfDCHfH8QPTZHQI.uBluS3AxrbnvlJiLVd6DLNh6ZCfKAtUe',0,'2019-12-10 15:02:50',NULL,1,'Gilbert','Njoroge',1,0,1,'','2019-12-10 15:02:50','2019-12-10 15:02:50','1','1','Developer','','ICT','','','','','','Active','','','','','',0,0,1,'Active','','','1',0,0,NULL),('c0128425-ade0-5c59-6b2c-5e1c359af34f','cynthia.katembo@apollo.co.ke','$2y$10$VRt.lQPPeKvGhyc2MnmogO2kmG7H9a1gtkGmMyxyxTFm3vOAssc0e',0,'2020-01-17 13:48:30',NULL,1,'Cynthia','Katembo',0,0,1,NULL,'2020-01-13 09:16:24','2020-01-17 13:48:30','41afbc38-3a08-d92d-15a6-5df740edd6f3','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('cf87deda-842f-518a-6af9-5e1c35a1a2d7','tabitha.kimani@apainsurance.org','$2y$10$1OJ/bHefM.ki1IstPB.dEuhaxGTS0cs3Ji3w503K3D4NTqQ7ycosG',0,'2020-01-17 13:49:00',NULL,1,'Tabitha','Kimani',0,0,1,NULL,'2020-01-13 09:16:24','2020-01-17 13:49:00','41afbc38-3a08-d92d-15a6-5df740edd6f3','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('d86b2737-2757-8261-b46c-5e1c35dd162d','esther.njoroge@apainsurance.org','$2y$10$4eRHGsjW8tYM7vagSLN2xOGczP/R55cjfjdqtaUKT6okOrPOqLQ4e',0,'2020-01-17 13:49:29',NULL,1,'Esther','Njoroge',0,0,1,NULL,'2020-01-13 09:16:24','2020-01-17 13:49:29','41afbc38-3a08-d92d-15a6-5df740edd6f3','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('e222fa06-97a4-d615-919e-5e1c35eeca92','Linda.walucho@apainsurance.org','$2y$10$D79CKATuCD/e8alSWF0OHuPSe5kPb2iGmVTUss85OTFLDKotF8SZG',0,'2020-01-17 13:27:59',NULL,1,'Linda','Walucho',0,0,1,NULL,'2020-01-13 09:16:24','2020-01-17 13:27:59','41afbc38-3a08-d92d-15a6-5df740edd6f3','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('eb21bb65-2ba7-46fa-5536-5e1c35688062','Beryl.digo@apollo.co.ke','$2y$10$z58Bz8qSvQV9sQ0U3whPbunbPPKla6lXRb/oqHCv3DM5657xkf7WK',0,'2020-01-17 13:51:43',NULL,1,'Beryl','Digo',0,0,1,NULL,'2020-01-13 09:16:24','2020-01-17 13:51:43','41afbc38-3a08-d92d-15a6-5df740edd6f3','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL),('f40795e1-c5c1-b225-b71a-5e1c3561b7ee','Charity.Kibiku@apainsurance.org','$2y$10$VKgRDTX7erK4eRGZLCHuZ.ZFNngVNOHTWUEHytGPrCSP/VqAUA.3q',0,'2020-01-17 13:52:03',NULL,1,'Charity','Kibiku',0,0,1,NULL,'2020-01-13 09:16:24','2020-01-17 13:52:03','41afbc38-3a08-d92d-15a6-5df740edd6f3','a98007d2-dbdc-3dba-9261-5defb35a4621',NULL,NULL,'Customer Experience',NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'42d64a84-e6a3-a628-20fd-5df354b5c941',0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
INSERT INTO `users_last_import` VALUES ('1204da94-a88b-760f-7346-5e1c3553a8b0','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','User','a4aa0876-1e37-ab95-f13a-5e1c354931ef',0),('1b216e75-c2fa-37e7-f075-5e1c359bf6e5','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','User','13632602-529c-6bd5-770d-5e1c35bc5171',0),('8c0c086e-49ea-fd63-2841-5e1c355e63f9','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','User','f40795e1-c5c1-b225-b71a-5e1c3561b7ee',0),('ce15fa48-cfee-07bf-24dd-5e1c35cbac99','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','User','c0128425-ade0-5c59-6b2c-5e1c359af34f',0),('d6d66d09-3c3a-cd14-2086-5e1c354560c6','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','User','cf87deda-842f-518a-6af9-5e1c35a1a2d7',0),('e0bbf580-4e23-a940-615f-5e1c356f24a1','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','User','d86b2737-2757-8261-b46c-5e1c35dd162d',0),('e9b09870-45fa-276f-8588-5e1c35ee782e','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','User','e222fa06-97a4-d615-919e-5e1c35eeca92',0),('f2a10e8c-bda6-5398-6a9d-5e1c35389803','a98007d2-dbdc-3dba-9261-5defb35a4621','Users','User','eb21bb65-2ba7-46fa-5536-5e1c35688062',0);
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
INSERT INTO `vcals` VALUES ('c0ed3175-1f00-ae20-546f-5e1446b18266',0,'2020-01-07 08:52:40','2020-01-07 09:07:04','a98007d2-dbdc-3dba-9261-5defb35a4621','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN=Gilbert Njoroge:VFREEBUSY\nDTSTART:2020-01-05 21:00:00\nDTEND:2020-03-05 21:00:00\nFREEBUSY:20200107T091500Z/20200107T093000Z\nX-FREEBUSY-ID:334e0f2c-07e3-d1f4-4868-5e144ad27152\nX-FREEBUSY-TYPE:Meeting\nFREEBUSY:20200107T090000Z/20200107T091500Z\nX-FREEBUSY-ID:979d2a55-7cb2-2fc1-f228-5e14485b3499\nX-FREEBUSY-TYPE:Meeting\nFREEBUSY:20200107T090000Z/20200107T091500Z\nX-FREEBUSY-ID:ad029c99-eda0-9649-d6ec-5e1446de9415\nX-FREEBUSY-TYPE:Meeting\nDTSTAMP:2020-01-07 09:07:04\nEND:VFREEBUSY\nEND:VCALENDAR\n'),('d5ab06f9-18a2-bbb3-dcdc-5df88559e926',0,'2019-12-17 07:35:30','2019-12-17 07:35:30','42d64a84-e6a3-a628-20fd-5df354b5c941','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN=Judith Bogonko:VFREEBUSY\nDTSTART:2019-12-15 21:00:00\nDTEND:2020-02-15 21:00:00\nFREEBUSY:20191217T103000Z/20191217T104500Z\nX-FREEBUSY-ID:c0654a2c-6c31-410e-0860-5df885a274ff\nX-FREEBUSY-TYPE:Call\nDTSTAMP:2019-12-17 07:35:30\nEND:VFREEBUSY\nEND:VCALENDAR\n');
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
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

-- Dump completed on 2020-01-29 15:13:41
