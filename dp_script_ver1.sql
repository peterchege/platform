/*
Created: 30/07/2019
Modified: 31/07/2019
Model: MySQL 5.7
Database: MySQL 5.7
*/


-- Create tables section -------------------------------------------------

-- Table Product

CREATE TABLE `Product`
(
  `product_id` Int NOT NULL AUTO_INCREMENT,
  `product_name` Varchar(30) NOT NULL,
  PRIMARY KEY (`product_id`)
)
;

ALTER TABLE `Product` ADD UNIQUE `product_name` (`product_name`)
;

-- Table Customer

CREATE TABLE `Customer`
(
  `customer_id` Int NOT NULL AUTO_INCREMENT,
  `first_name` Varchar(35) NOT NULL,
  `surname` Varchar(35) NOT NULL,
  `other_names` Varchar(35),
  PRIMARY KEY (`customer_id`)
)
;

-- Table Billing

CREATE TABLE `Billing`
(
  `billing_id` Int NOT NULL AUTO_INCREMENT,
  `customer_id` Int NOT NULL,
  PRIMARY KEY (`billing_id`,`customer_id`)
)
;

-- Table Cover

CREATE TABLE `Cover`
(
  `cover_id` Int NOT NULL AUTO_INCREMENT,
  `start_date` Date NOT NULL,
  `end_date` Date NOT NULL,
  `cover` Double NOT NULL,
  `customer_id` Int NOT NULL,
  `category_id` Int NOT NULL,
  `product_id` Int NOT NULL,
  PRIMARY KEY (`cover_id`)
)
;

CREATE INDEX `IX_Relationship3` ON `Cover` (`customer_id`)
;

CREATE INDEX `IX_Relationship4` ON `Cover` (`category_id`,`product_id`)
;

-- Table Risk

CREATE TABLE `Risk`
(
  `customer_role` Set('Owner','Tenant') NOT NULL,
  `risk_id` Int NOT NULL,
  `section` Enum('building','content','all risk','servant') NOT NULL
)
;

ALTER TABLE `Risk` ADD PRIMARY KEY (`risk_id`,`customer_role`)
;

-- Table Building

CREATE TABLE `Building`
(
  `building_id` Int NOT NULL AUTO_INCREMENT,
  `location` Varchar(20) NOT NULL,
  `floors` Int NOT NULL,
  `business` Varchar(65),
  `sole_occupation` Bool NOT NULL,
  `dwelling` Set('Private','Self Contained',Room not Self Contained') NOT NULL,
  `for_hire` Bool NOT NULL,
  `seven_day_inoccupancy` Varchar(65),
  `thirty_day_inoccupancy` Bool NOT NULL,
  `burglar_proof` Bool NOT NULL,
  `good_state_of_repair` Bool NOT NULL,
  `other_sec_arrangement` Varchar(65),
  `value` Double,
  `material_id` Int NOT NULL,
  `roof_id` Int NOT NULL,
  `risk_id` Int NOT NULL,
  `customer_role` Set('Owner','Tenant') NOT NULL,
  PRIMARY KEY (`building_id`,`material_id`,`roof_id`,`risk_id`,`customer_role`)
)
;

-- Table Ref_Roof_Material

CREATE TABLE `Ref_Roof_Material`
(
  `roof_id` Int NOT NULL AUTO_INCREMENT,
  `description` Varchar(65) NOT NULL,
  PRIMARY KEY (`roof_id`)
)
;

ALTER TABLE `Ref_Roof_Material` ADD UNIQUE `description` (`description`)
;

-- Table Product_Category

CREATE TABLE `Product_Category`
(
  `category_id` Int NOT NULL AUTO_INCREMENT,
  `category` Varchar(20) NOT NULL,
  `product_id` Int NOT NULL,
  PRIMARY KEY (`category_id`,`product_id`)
)
;

-- Table Ref_Wall_Material

CREATE TABLE `Ref_Wall_Material`
(
  `material_id` Int NOT NULL AUTO_INCREMENT,
  `description` Varchar(20) NOT NULL,
  PRIMARY KEY (`material_id`)
)
;

ALTER TABLE `Ref_Wall_Material` ADD UNIQUE `description` (`description`)
;

-- Table Content

CREATE TABLE `Content`
(
  `content_id` Int NOT NULL AUTO_INCREMENT,
  `price` Double NOT NULL,
  `date_of_purchase` Date,
  `content_type_id` Int NOT NULL,
  `risk_id` Int NOT NULL,
  `customer_role` Set('Owner','Tenant') NOT NULL,
  PRIMARY KEY (`content_id`,`content_type_id`,`risk_id`,`customer_role`)
)
;

-- Table Ref_Content_Type

CREATE TABLE `Ref_Content_Type`
(
  `content_type_id` Int NOT NULL AUTO_INCREMENT,
  `type` Varchar(35) NOT NULL,
  PRIMARY KEY (`content_type_id`)
)
;

ALTER TABLE `Ref_Content_Type` ADD UNIQUE `type` (`type`)
;

-- Table Servant

CREATE TABLE `Servant`
(
  `head_count` Int NOT NULL,
  `annual_salary` Double NOT NULL,
  `job_id` Int NOT NULL,
  `risk_id` Int NOT NULL,
  `customer_role` Set('Owner','Tenant') NOT NULL
)
;

ALTER TABLE `Servant` ADD PRIMARY KEY (`job_id`,`risk_id`,`customer_role`)
;

-- Table Ref_Job

CREATE TABLE `Ref_Job`
(
  `job_id` Int NOT NULL AUTO_INCREMENT,
  `name` Varchar(25) NOT NULL,
  PRIMARY KEY (`job_id`)
)
;

ALTER TABLE `Ref_Job` ADD UNIQUE `name` (`name`)
;

-- Table All_Risk

CREATE TABLE `All_Risk`
(
  `all_risk_id` Int NOT NULL AUTO_INCREMENT,
  `risk_id` Int NOT NULL,
  `customer_role` Set('Owner','Tenant') NOT NULL,
  `item_id` Int NOT NULL,
  `value` Double NOT NULL,
  PRIMARY KEY (`all_risk_id`,`risk_id`,`customer_role`,`item_id`)
)
;

-- Table Ref_Item_Type

CREATE TABLE `Ref_Item_Type`
(
  `item_id` Int NOT NULL AUTO_INCREMENT,
  `description` Varchar(35) NOT NULL,
  PRIMARY KEY (`item_id`)
)
;

ALTER TABLE `Ref_Item_Type` ADD UNIQUE `description` (`description`)
;

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE `Product_Category` ADD CONSTRAINT `Relationship1` FOREIGN KEY (`product_id`) REFERENCES `Product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Billing` ADD CONSTRAINT `Relationship2` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Cover` ADD CONSTRAINT `Relationship3` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Cover` ADD CONSTRAINT `Relationship4` FOREIGN KEY (`category_id`, `product_id`) REFERENCES `Product_Category` (`category_id`, `product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Risk` ADD CONSTRAINT `Relationship5` FOREIGN KEY (`risk_id`) REFERENCES `Cover` (`cover_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Building` ADD CONSTRAINT `Relationship7` FOREIGN KEY (`material_id`) REFERENCES `Ref_Wall_Material` (`material_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Building` ADD CONSTRAINT `Relationship8` FOREIGN KEY (`roof_id`) REFERENCES `Ref_Roof_Material` (`roof_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Content` ADD CONSTRAINT `Relationship9` FOREIGN KEY (`content_type_id`) REFERENCES `Ref_Content_Type` (`content_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Servant` ADD CONSTRAINT `Relationship14` FOREIGN KEY (`job_id`) REFERENCES `Ref_Job` (`job_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Content` ADD CONSTRAINT `Relationship16` FOREIGN KEY (`risk_id`, `customer_role`) REFERENCES `Risk` (`risk_id`, `customer_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Servant` ADD CONSTRAINT `Relationship17` FOREIGN KEY (`risk_id`, `customer_role`) REFERENCES `Risk` (`risk_id`, `customer_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Building` ADD CONSTRAINT `Relationship18` FOREIGN KEY (`risk_id`, `customer_role`) REFERENCES `Risk` (`risk_id`, `customer_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `All_Risk` ADD CONSTRAINT `Relationship19` FOREIGN KEY (`risk_id`, `customer_role`) REFERENCES `Risk` (`risk_id`, `customer_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `All_Risk` ADD CONSTRAINT `Relationship20` FOREIGN KEY (`item_id`) REFERENCES `Ref_Item_Type` (`item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


