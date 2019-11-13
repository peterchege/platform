-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 63.33.193.137    Database: apa_website
-- ------------------------------------------------------
-- Server version	5.7.27-30

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_internship_applications`
--

LOCK TABLES `apa_job_internship_applications` WRITE;
/*!40000 ALTER TABLE `apa_job_internship_applications` DISABLE KEYS */;
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
  `salary` int(15) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apa_job_posts`
--

LOCK TABLES `apa_job_posts` WRITE;
/*!40000 ALTER TABLE `apa_job_posts` DISABLE KEYS */;
INSERT INTO `apa_job_posts` VALUES (38,'9bhu3PaeaE','CREDIT CONTROL/RECONCILIATION ACCOUNTANT','Finance','Team Leaders &ndash; Credit Control','Head Office','APA Insurance','Permanent',0,'&lt;p&gt;This role is responsible for reconciliation and distribution of customer statements, collection of premiums and payment of commissions.&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;Collecting outstanding premiums from agents, brokers and direct clients in line with the legislation.&lt;/li&gt;&lt;li&gt;Reconciling/reviewing broker and client&rsquo;s debtor accounts on a monthly basis by applying the 80 &ndash; 20 rule and exchange the details with the counter parties;&lt;/li&gt;&lt;li&gt;Ensure timely allocation of receipts with a maximum of 5 days of unallocated at any day&lt;/li&gt;&lt;li&gt;Managing intermediary accounts by ensuring proper records are maintained, agents&rsquo; commissions paid within 5 days of the following month and timely communication and release of debtor statements latest by 5th;&lt;/li&gt;&lt;li&gt;Updating, validating and presenting credit control reports to team leader as shall be requested;&lt;/li&gt;&lt;li&gt;Review the debtors ageing reports and taking appropriate action as per credit control policy;&lt;/li&gt;&lt;li&gt;Prepare a detailed (per intermediary) bad debts movement schedule reconciling the balances b/f, charges for the period, any write offs and balances at the end of the period&lt;/li&gt;&lt;li&gt;Managing any intermediary loans and charging the interests, recoveries, taxes etc. and maintaining accurate loan balances at all times&lt;/li&gt;&lt;li&gt;Computing, filing and requisitioning for monthly intermediaries&rsquo; taxes at least 3 days before the due dates;&lt;/li&gt;&lt;li&gt;Managing Unit managers&rsquo; monthly retainers which involves computation and disbursements;&lt;/li&gt;&lt;li&gt;Facilitating intermediary&rsquo;s annual IRA licenses and follow up ensuring only the licensed intermediaries are traded with&lt;/li&gt;&lt;li&gt;Providing confirmation details of receipting clients details for any electronic funds transfers and insurance premium finance remittances;&lt;/li&gt;&lt;li&gt;Creating new accounts for intermediaries in the general system.&lt;/li&gt;&lt;li&gt;Facilitating the processing and approval of IPFs and following up with respective financiers on payment of same.&lt;/li&gt;&lt;li&gt;Confirming premiums received before settlement of claims.&lt;/li&gt;&lt;li&gt;Visitation of intermediaries and branches on regular basis to resolve debtors accounts balances.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Bachelor&rsquo;s degree in Finance/Accounting/Business Administration or an equivalent&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;CPA Part 2&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Strong preference will be given to candidates with the above qualifications, skills and experience.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;At least 2 years&rsquo; relevant experience in credit control&lt;/li&gt;&lt;li&gt;Skills and Attributes&lt;/li&gt;&lt;li&gt;Analytical skills&lt;/li&gt;&lt;li&gt;Presentation skills&lt;/li&gt;&lt;li&gt;Communication and interpersonal skills&lt;/li&gt;&lt;/ul&gt;','2019-09-30 08:31:21.308121','2019-10-14 08:45:45.643226','2019-10-10',9,9,1,'recruitment@apollo.co.ke'),(39,'gL8F524Gzw','VENDOR MANAGER','Digital','','Head Office','APA Insurance','Permanent',0,'&lt;p&gt;As a Vendor Manager at APA, you will be responsible for executing the vendor/supplier relationships required to deliver, manage and implement, commercial procurement strategies across the organization to deliver optimal value for money to meet the internal business needs.&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;Manage sourcing strategy and define sourcing recommendations that support business goals, in collaboration with senior management and stakeholders.&lt;/li&gt;&lt;li&gt;Negotiate pricing, terms and conditions of goods, services and products with key suppliers, contractors and service providers.&lt;/li&gt;&lt;li&gt;Develop, establish, implement, and enforce vendor and outsourcer guidelines, obligations, and Service Level Agreements (SLAs) to the organization.&lt;/li&gt;&lt;li&gt;Monitor vendor contracts (incl. contract lifecycles) and ensure adherence to contractual agreements and comply with procurement policies and procedures.&lt;/li&gt;&lt;li&gt;Asset management for IT hardware, software, and equipment incl. where possible, standardize equipment to lower costs.&lt;/li&gt;&lt;li&gt;Leverage continuous improvement initiatives to create additional value over and above the contract requirements.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;4+ years of experience in IT and IT vendor management.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Procurement qualification or equivalent experience desired with knowledge and exposure in ICT environment.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Effective contract lifecycle management and negotiation skills incl. ability to build relationships with suppliers, and contractors who provide a broad spectrum of IT products and services.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Solid working knowledge of current IT technologies, total life cycle cost structures and pricing mechanisms.&lt;/li&gt;&lt;li&gt;Advanced skills in all procurement process disciplines across the procurement life cycle of demand management, fulfillment, sourcing and management.&lt;/li&gt;&lt;li&gt;Experience with Software development life cycle (Agile, Waterfall, etc.) and IT Infrastructure and technology.&lt;/li&gt;&lt;li&gt;An understanding of e-procurement processes and systems incl. P2P management software.&lt;/li&gt;&lt;li&gt;A team player, experienced in working with both senior management and operational teams.&lt;/li&gt;&lt;li&gt;Project Management will be a plus.&lt;/li&gt;&lt;/ul&gt;','2019-09-30 08:52:54.421980','2019-11-07 15:32:14.982759','2019-10-30',9,16,1,'digital@apainsurance.org'),(40,'Fd90toK2','BRANCH MANAGER MACHAKOS','Business Development','Head of Branches','Machakos','APA Insurance','Permanent',0,'&lt;p&gt;This position is responsible for achieving business growth by meeting business targets. This involves managing and developing the branch networks through the regional teams with the aim of enforcing effective credit control, delivering of set loss ratio and building and maintaining customer relationships.&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;Building and strengthening business relationships with existing and prospective clients to achieve performance targets;&lt;/li&gt;&lt;li&gt;Developing and constantly updating underwriting service standards and manuals in line with the customer service charter;&lt;/li&gt;&lt;li&gt;Achieving departmental service standards in processing, approval and release of crucial documents within set Turn Around times;&lt;/li&gt;&lt;li&gt;Managing the business portfolio through prudent underwriting in order to achieve the targeted business mix and loss ratio;&lt;/li&gt;&lt;li&gt;Collecting outstanding premium within the credit control policy;&lt;/li&gt;&lt;li&gt;Managing the implementation of internal and external audit recommendations within the agreed timelines;&lt;/li&gt;&lt;li&gt;Exploring opportunities presented by the market and developing innovative products and solutions that meet customer needs;&lt;/li&gt;&lt;li&gt;Supervising unit managers (APA Life and APA Insurance) from the region;&lt;/li&gt;&lt;li&gt;Complying with statutory, regulatory and internal control processes at the business units including internal and external audit recommendations;&lt;/li&gt;&lt;li&gt;Developing departmental budget and business plans to achieve the set company targets;&lt;/li&gt;&lt;li&gt;Entrenching performance based appraisal of departmental staff in line with their set KPIs and departmental targets;&lt;/li&gt;&lt;li&gt;Participating in company CSR and brand building activities in liaison with other departments;&lt;/li&gt;&lt;li&gt;Training, coaching and mentoring staff in order to improve performance and cohesion within the department;&lt;/li&gt;&lt;li&gt;Implementing interdepartmental SLA in liaison with other departmental heads;&lt;/li&gt;&lt;li&gt;Participating in management meetings, projects and committees as assigned.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Bachelor degree in insurance or any business related field.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;ACII&lt;/li&gt;&lt;li&gt;Insurance Diploma (AIIK)&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Sales Skills&lt;/li&gt;&lt;li&gt;Entrepreneur Spirit&lt;/li&gt;&lt;li&gt;Market Awareness&lt;/li&gt;&lt;li&gt;Customer Focus&lt;/li&gt;&lt;li&gt;Continuous Innovation&lt;/li&gt;&lt;li&gt;Ownership &amp;amp; Commitment&lt;/li&gt;&lt;li&gt;Team Spirit&lt;/li&gt;&lt;li&gt;Honest, disciplined, ambitious and willing to learn.&lt;/li&gt;&lt;li&gt;Result oriented and able to work within agreed timelines&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;At least &lt;strong&gt;6 years&lt;/strong&gt; relevant experience with at least &lt;strong&gt;2 years&lt;/strong&gt; managerial experience&lt;/li&gt;&lt;/ul&gt;','2019-09-30 08:59:56.959556','2019-11-07 15:30:21.588962','2019-10-06',9,35,1,'recruitment@apollo.co.ke'),(41,'b9Xt4NKaqC','Business Developer','Business Development','Head of Business Development','Uganda','APA Insurance','Permanent',0,'&lt;p&gt;The position is responsible for execution of efficient operational performance of the Business Development department in consistency with the Company&rsquo;s underwriting policies and practices.&lt;/p&gt;','&lt;ul&gt;&lt;li&gt;Processing all new policies, renewals, endorsements and enquiries within set company standards and turnaround time.&lt;/li&gt;&lt;li&gt;Issuance of motor certificates.&lt;/li&gt;&lt;li&gt;Timely processing of debit notes and credit notes.&lt;/li&gt;&lt;li&gt;Ensure timely certificate declarations for all concerned intermediaries.&lt;/li&gt;&lt;li&gt;Ensure growth of business through soliciting of new business from intermediaries.&lt;/li&gt;&lt;li&gt;To give competitive quotations and ensure follow ups are done.&lt;/li&gt;&lt;li&gt;Ensure that renewal notices are processed and disbursed on time.&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;To facilitate and ensure timely collections of premiums as per the company&rsquo;s credit policy.&lt;/li&gt;&lt;li&gt;To make regular visits in order to maintain and enhance relationships with the intermediaries.&lt;/li&gt;&lt;li&gt;Assist in preparing loss ratios and risk reviews&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;To facilitate and ensure timely collections of premiums as per the company&rsquo;s credit policy.&lt;/li&gt;&lt;li&gt;To make regular visits in order to maintain and enhance relationships with the intermediaries.&lt;/li&gt;&lt;li&gt;Assist in preparing loss ratios and risk reviews&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Liaising with the finance to ensure that premium collections are upto-date&lt;/li&gt;&lt;li&gt;Liaising with the claims department for individual client&rsquo;s performance.&lt;/li&gt;&lt;li&gt;Liaising with ICT for development of user reports as may be required from time to time&lt;/li&gt;&lt;/ul&gt;','&lt;ul&gt;&lt;li&gt;Ensuring that all enquiries by clients or prospective clients are responded to within the set turn around time.&lt;/li&gt;&lt;li&gt;Ensuring that, renewal invitation notices are dispatched to clients within the set time before renewal date.&lt;/li&gt;&lt;li&gt;Regular briefing to the Team Leader on individual activities and making consultations on matters pertaining to the department&lt;/li&gt;&lt;li&gt;Maintaining cordial relations with intermediaries and internal clients.&lt;/li&gt;&lt;/ul&gt;','2019-10-14 09:04:32.110954','2019-10-23 07:30:31.028427','2019-10-31',16,35,1,'recruitment@apollo.co.ke'),(42,'V5BXX8R6cK','BRANCH MANAGER MACHAKOS','Seremala Inc','Head of Finance','Nairobi','Apollo Group','Contract',60000,'&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','&lt;p&gt;r&lt;/p&gt;','2019-10-23 07:04:20.060792','2019-10-23 07:10:27.971433','2019-10-26',35,35,1,'johndoe@gmail.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apollo_confrence_facilities_bookings`
--

LOCK TABLES `apollo_confrence_facilities_bookings` WRITE;
/*!40000 ALTER TABLE `apollo_confrence_facilities_bookings` DISABLE KEYS */;
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (26,1,'2019-06-26','2019-06-27','07:07:00.000000','06:06:00.000000','Gotham Corp.','700658856','anthonybaru@gmail.com',6,'','2019-06-26 11:56:25.249636'),(27,1,'2019-06-26','2019-06-27','08:00:00.000000','10:00:00.000000','Gotham Corp.','700658856','anthonybaru@gmail.com',7,'','2019-06-26 12:03:58.844223'),(28,5,'2019-06-26','2019-06-27','08:00:00.000000','10:00:00.000000','Gotham Corp.','700658856','anthonybaru@gmail.com',7,'','2019-06-26 12:08:20.512825'),(29,2,'2019-06-27','2019-06-29','01:57:00.000000','02:57:00.000000','Gotham Corp.','2147483647','p@gmail.com',0,'vola','2019-06-27 12:36:40.101213'),(30,3,'2019-06-27','2019-06-28','08:08:00.000000','09:09:00.000000','Gotham Corp.','700658856','anthonybaru@gmail.com',89,'leo','2019-06-27 12:39:12.753172'),(31,3,'2019-06-27','2019-06-28','08:08:00.000000','09:09:00.000000','Gotham Corp.','700658856','anthonybaru@gmail.com',6,'leo','2019-06-27 12:41:15.435439'),(32,3,'2019-06-27','2019-06-28','08:08:00.000000','09:09:00.000000','Gotham Corp.','700658856','anthonybaru@gmail.co',6,'leo','2019-06-27 12:41:21.599271'),(33,4,'2019-06-27','2019-06-28','09:09:00.000000','04:45:00.000000','Oliver Towers','2147483647','peterjethro@gmail.com',78,'tyki adfja','2019-06-27 12:53:48.055551'),(34,2,'2019-06-27','2019-06-28','08:06:00.000000','07:08:00.000000','Gotham Corp.','1869644846','p@gmail.com',12,'moue','2019-06-27 12:56:30.758840'),(35,3,'2019-06-28','2019-06-28','09:09:00.000000','09:09:00.000000','Gotham Corp.','454252','p@gmail.com',7,'make it possible.','2019-06-27 14:31:12.361999'),(36,2,'2019-06-27','2019-06-28','08:59:00.000000','08:08:00.000000','nice','52512','t@gmail.com',4,'this is me.','2019-06-27 14:46:14.706640'),(37,1,'2019-06-27','2019-06-28','08:09:00.000000','09:00:00.000000','Jubilee','5282','p@gmail.com',78,'more infoadfjakf','2019-06-27 16:18:33.279708'),(38,1,'2019-06-27','2019-06-28','00:00:00.000000','00:00:00.000000','','0','',0,'','2019-06-27 16:46:03.088655'),(39,1,'0000-00-00','0000-00-00','00:00:00.000000','00:00:00.000000','','0','',0,'','2019-06-27 17:13:07.859452'),(42,4,'2019-06-27','2019-06-28','07:07:00.000000','09:09:00.000000','Gotham Corp.','654654','peterjethro@gmail.com',7,'more infor','2019-06-27 17:30:04.668745'),(43,5,'2019-06-28','2019-06-29','05:05:00.000000','09:09:00.000000','Gotham Corp.','654654561','peter@gmail.comm',5,'helllo','2019-06-28 09:30:08.939919'),(44,6,'2019-06-28','2019-06-29','09:09:00.000000','06:06:00.000000','enta','54125415','enta@gmail.com',7,'more infor','2019-06-28 09:37:26.246616'),(45,4,'2019-06-28','2019-06-24','07:00:00.000000','09:00:00.000000','Peter Chege','2147483647','peter@gmail.com',6,'more information','2019-06-28 11:01:26.634183'),(46,2,'2019-09-10','2019-09-11','08:00:00.000000','10:00:00.000000','name','711','p@gmail.com',85,'pliz','2019-09-10 16:36:06.316943'),(47,3,'2019-09-10','2019-09-10','06:00:00.000000','06:00:00.000000','name','700658856','p@gmail.com',4,'more info','2019-09-10 16:46:12.826105'),(48,3,'2019-09-11','2019-09-12','05:05:00.000000','08:08:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',5,'None','2019-09-11 08:47:36.366224'),(50,2,'2019-09-11','2019-09-12','03:03:00.000000','05:05:00.000000','712365478','712345','janedoe@gmail.com',55,'po','2019-09-11 09:03:56.721327'),(51,2,'2019-09-11','2019-09-12','22:22:00.000000','23:00:00.000000','jane doe inc','123456','janedoe@gmail.com',4,'m','2019-09-11 09:06:00.109153'),(52,2,'2019-09-11','2019-09-12','08:05:00.000000','09:09:00.000000','name','070145','p@gmail.com',5,'','2019-09-11 09:21:22.500217'),(53,3,'2019-10-30','2019-10-24','06:06:00.000000','08:00:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',6,'','2019-10-23 15:00:56.504437'),(54,1,'2019-10-23','2019-10-25','05:05:00.000000','06:06:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',9,'','2019-10-23 15:03:01.958886'),(55,5,'2019-10-23','2019-10-24','22:02:00.000000','22:22:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',9,'','2019-10-23 15:37:27.269081'),(56,6,'2019-10-23','2019-10-24','08:08:00.000000','08:08:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',5,'','2019-10-23 15:46:27.764834'),(57,4,'2019-10-23','2019-10-25','08:59:00.000000','08:59:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',6,'','2019-10-23 16:10:21.008948'),(58,4,'2019-10-23','2019-10-25','08:59:00.000000','08:59:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',6,'','2019-10-23 16:12:19.634224'),(59,4,'2019-10-23','2019-10-25','08:59:00.000000','08:59:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',6,'','2019-10-23 16:12:41.866380'),(60,4,'2019-10-23','2019-10-25','08:08:00.000000','08:08:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',6,'','2019-10-23 16:18:42.907656'),(61,4,'2019-10-23','2019-10-24','08:08:00.000000','05:05:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',5,'','2019-10-23 16:21:18.515067'),(62,1,'2019-10-15','2019-10-23','08:08:00.000000','08:08:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',25,'','2019-10-23 16:42:00.370925'),(63,1,'2019-10-23','2019-10-24','22:22:00.000000','22:22:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',8,'','2019-10-23 16:43:01.547066'),(64,2,'2019-10-25','2019-10-24','08:08:00.000000','09:09:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',5,'','2019-10-25 08:38:22.659134'),(65,4,'2019-10-25','2019-10-29','05:05:00.000000','05:05:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',8,'','2019-10-25 08:43:44.249864'),(66,4,'2019-10-25','2019-10-26','08:59:00.000000','08:08:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',8,'','2019-10-25 08:44:18.467663'),(67,4,'2019-10-17','2019-10-26','08:08:00.000000','08:08:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',6,'','2019-10-25 08:55:28.319606'),(68,4,'2019-10-17','2019-10-26','08:08:00.000000','08:08:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',6,'','2019-10-25 08:55:29.486731'),(69,4,'2019-10-25','2019-10-30','08:06:00.000000','08:59:00.000000','Seremala Inc','0712345678','johndoe@gmail.com',6,'','2019-10-25 08:56:28.827815'),(70,4,'2019-10-25','2019-10-31','08:08:00.000000','08:08:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',6,'','2019-10-25 08:59:14.614676'),(71,4,'2019-10-25','2019-10-30','08:08:00.000000','09:09:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',6,'','2019-10-25 08:59:55.966239'),(72,4,'2019-10-25','2019-10-26','06:06:00.000000','06:06:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',6,'','2019-10-25 09:06:16.101758'),(73,2,'2019-10-25','2019-10-26','08:08:00.000000','09:09:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',6,'','2019-10-25 09:08:57.461744'),(74,2,'2019-10-25','2019-10-30','08:08:00.000000','08:08:00.000000','66','0712345678','johndoe@gmail.com',6,'','2019-10-25 09:21:04.235047'),(75,2,'2019-10-24','2019-10-26','06:06:00.000000','06:06:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',6,'','2019-10-25 09:23:50.547070'),(76,2,'2019-10-25','2019-10-26','08:08:00.000000','09:09:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',6,'','2019-10-25 09:25:28.784631'),(77,2,'2019-10-24','2019-10-26','06:59:00.000000','06:06:00.000000','JaneDoeInc','712365478','janedoe@gmail.com',5,'','2019-10-25 14:56:41.938756');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims_life`
--

LOCK TABLES `claims_life` WRITE;
/*!40000 ALTER TABLE `claims_life` DISABLE KEYS */;
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `claim product id` (`product_id`) USING BTREE,
  CONSTRAINT `claim product id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims_reports`
--

LOCK TABLES `claims_reports` WRITE;
/*!40000 ALTER TABLE `claims_reports` DISABLE KEYS */;
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
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` int(6) NOT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_centre_admin_registration`
--

LOCK TABLES `media_centre_admin_registration` WRITE;
/*!40000 ALTER TABLE `media_centre_admin_registration` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_centre_posts`
--

LOCK TABLES `media_centre_posts` WRITE;
/*!40000 ALTER TABLE `media_centre_posts` DISABLE KEYS */;
INSERT INTO `media_centre_posts` VALUES (2,'21,June 2019 09:42:44','2019-06-17 11:03:34.959444','APA WINS AT AKI 2019 AWARDS','Media Centre','Anthony baru','images/posts/29eacc5ead5bd872ff681b9e2f2b28842.JPG','&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 11 March 2019 &amp;ndash;&lt;/em&gt;&lt;/strong&gt;&amp;nbsp;Dr. Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up &amp;ndash; Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position &amp;ndash; Overall premium volume and Grace Akinyi Odhiambo took third position &amp;ndash; Agent of the year General insurance business.&lt;/p&gt;',1),(3,'20,June 2019 15:13:41','2019-06-17 11:03:34.959444','AZURI AND APA INSURANCE INTRODUCE AFFORDABLE INCOME AND FUNERAL COVER FOR SOLAR CUSTOMERS','Media Centre','Anthony','images/posts/3ed9110eda1f593630b63632d96cc678a.jpg','&lt;p&gt;&lt;strong&gt;9 November 2018, Nairobi, Kenya&lt;/strong&gt;&amp;nbsp;&amp;ndash; Azuri Technologies, a leading provider of pay-as-you-go-solar power in conjunction with APA Insurance, Kenya&amp;rsquo;s leading insurer, today announced the launch of HospiCash, a low-cost micro-insurance product for Azuri solar power customers across Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;By adding the optional HospiCash service to their pay-as-you-go home solar solution, Azuri customers benefit from the peace of mind with income cover when hospitalised, in addition to cover for funeral expenses.&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri HospiCash customers who are unable to work due to being hospitalised can claim up to KES 1,000 per day. &amp;nbsp;In addition, the policy also covers funeral expenses up to KES 10,000 upon death of the insured paid to a named beneficiary.&lt;/p&gt;\r\n\r\n&lt;p&gt;Speaking during the official launch of the HospiCash at the APA headquarters in Nairobi, Azuri CEO Simon Bransfield-Garth said: &amp;ldquo;We are delighted to be partnering with APA to further Azuri&amp;rsquo;s vision of providing consumers across Africa with products and services that have the power to truly change and improve lives.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Many off-grid consumers find it difficult to access modern financial products and so combining Azuri&amp;rsquo;s reach and APA&amp;rsquo;s affordable insurance allows customers to concentrate on making a full recovery rather than worrying about the loss of income from being hospitalised.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Apollo Group CEO, Mr. Ashok Shah said, &amp;ldquo;Off-grid consumers have been traditionally underserved by insurance providers because of the relative difficulty of access. The partnership with Azuri provides a means to open up a range of financial inclusion offerings to this important customer base.&amp;nbsp; APA Insurance is committed to providing insurance to all income groups in Kenya.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri&amp;rsquo;s HospiCash cover is being rolled out nationwide and will be available to all Azuri Quad and solar TV customers.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Azuri Quad solar home lighting system costs as little as KES49 per week and includes a 10W solar panel, four bright LED lights, USB port and connectors for mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;\r\n\r\n&lt;p&gt;AzuriTV, the first PayGo solar TV system of its kind to be launched in Africa, features a 24-inch super slim LED TV, over 100 satellite TV channels, four bright LED lights for use inside and outside the home, mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;',1),(5,'20,June 2019 10:25:40','2019-06-17 11:03:34.959444','APOLLO FOUNDATION SPONSORS THE 2018 NDAKAINI MARATHON','Media Centre','Anthony','images/posts/5c5e12d1c3537ad1306d3314218a8fc0b.jpg','&lt;p&gt;&lt;strong&gt;Nairobi, Kenya 21 Spetember 2018&amp;nbsp;&lt;/strong&gt;&amp;ndash; Catherine Karimi, Chief Executive Officer, APA Life Assurance (left) presents the APA Apollo Foundation&amp;rsquo;s sponsorship cheque to James Mukuna, Vice Chairman of the Ndakaini Marathon.&amp;nbsp; APA Apollo is proud to sponsor the half marathon, which is now in its 15th&amp;nbsp;year, as it enhances the foundations support for Environment and Water conservation. The marathon will take place on Saturday 6 October 2018, around the scenic fresh water dam in Murang&amp;rsquo;a County.&lt;/p&gt;\r\n\r\n&lt;p&gt;The annual marathon was started with the aim of increasing awareness particularly among Nairobi residents on the importance of conserving the capital&amp;rsquo;s main source of drinking water.&lt;/p&gt;',1),(6,'20,June 2019 09:56:29','2019-06-20 09:56:29.079455','APA SUPPORTS THE MAU-EGERTON UNIVERSITY CROSS COUNTRY FOR THE SIXTH CONSECUTIVE YEAR','CSR','Anthony','images/posts/510d72ff6c6326d72174d1a324f514dd.jpg','&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 1 February 2019 &amp;ndash;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;Egerton University Vice Chancellor, Prof. Rose A. Mwonya (left) receives a sponsorship cheque from Meena Shah, Nakuru Branch Manager, APA Insurance (centre) and Hillary Mbithi, APA Nakuru (right) for Ksh 300 000 for the 6th&amp;nbsp;Mau Egerton University Cross Country. &amp;nbsp;This is the sixth consecutive year the company has sponsored the Mau-Egerton University Cross Country, which will take place on Saturday 9 February 2019.&amp;nbsp; The Mau-Egerton University Cross country was created to raise funds for rehabilitation of Mau ecosystem and Njoro River.&lt;/p&gt;\r\n\r\n&lt;p&gt;Over the past five years APA APOLLO has also partnered with Egerton University to plant indigenous trees at the Ngongeri Park as part of restoration of the riparian forest vegetation along the middle section on Njoro River.&lt;/p&gt;',1),(7,'20,June 2019 10:10:18','2019-06-20 10:10:18.428516','APA CONTUNIES TO INVEST IN EDUCATION FOR CHELETA PRIMARY SCHOOL STUDENTS','CSR','Anthony','images/posts/2f3efcb09e5f6373e23d625b5d290c4a.jpg','&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya 11 January 2018 &amp;ndash;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;Stacy Kavere, Best Girl (left) and Amos Basweti, Best Boy (right) proudly receive their cheque from Catherine Karimi, Chief Executive Officer, APA Life for their 2018 school fees.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA APOLLO have &amp;nbsp;been sponsoring the top boy and girl students from the school since 2006 and this saw the school average performance improve from a mean grade of 141 marks to 308 marks, for their secondary education. &amp;nbsp;The bursary currently has ten students in various learning institutions around the country.&lt;/p&gt;',1),(8,'20,June 2019 10:21:47','2019-06-20 10:12:13.799828','APA APOLLO FOUNDATION PROMOTES SPORTING ACTIVITIES BY SUPPORTING THE RUNDA YOUTH SPORTS ASSOCIATION (RYSA) FOOTBALL TEAM.','CSR','Anthony','images/posts/8a895c7194fbd11dff43fb66cf939fece.jpg','&lt;p&gt;Football is the core sporting activity of RYSA. Through football, RYSA has been able to bring together over 800 young people from Githogoro and Huruma slums&lt;/p&gt;\r\n\r\n&lt;p&gt;The foundation sponsors the fees for RYSA to participate in various leagues and provides the football kits, logistics and team allowances.&lt;/p&gt;\r\n\r\n&lt;p&gt;Though the partnership RYSA has excelled in football, today RYSA participates annually in&amp;nbsp;&lt;strong&gt;Football Kenya Federation (FKF)&amp;nbsp;&lt;/strong&gt;leagues around Nairobi. As a result of excelling in football, RYSA participates annually in&amp;nbsp;&lt;strong&gt;Football Kenya Federation (FKF)&lt;/strong&gt;&amp;nbsp;leagues around Nairobi.&lt;/p&gt;\r\n\r\n&lt;p&gt;At the last edition (2015), RYSA Senior Team was ranked 5th&amp;nbsp;at the Nairobi County Branch of the Football Kenya Federation (FKF) rankings. They are now (2016) elevated and playing in the Nairobi Division One Super8/ Sportpesa League&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA/Apollo organises tournaments for the team in order to boost and continue to nurture the soccer talents and positively engage the youth in Mji wa Huruma and Githongoro villages.&lt;/p&gt;',1),(9,'21,June 2019 09:59:55','2019-06-21 09:18:00.946371','THE APA APOLLO GROUP RESULTS REFLECT A SIGNIFICANT IMPROVEMENT IN OVERALL EARNINGS.','Media Centre','Anthony baru','images/posts/91fc249b136eec767eb86398ad0ee7a81.jpg','&lt;p&gt;&lt;strong&gt;Financial Highlights&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;The Apollo Group, profit before tax, increased by 9% to Ksh 947 Million&lt;/li&gt;\r\n	&lt;li&gt;The Group grew its asset base to Ksh 24 Billion&lt;/li&gt;\r\n	&lt;li&gt;The Group&amp;rsquo;s premium income increased by 14% to Ksh 11 Billion&lt;/li&gt;\r\n	&lt;li&gt;The Group&amp;rsquo;s largest subsidiary, APA Insurance, recorded a strong performance with Gross Written Premiums (GWP) of Ksh 9.56 Billion&lt;/li&gt;\r\n	&lt;li&gt;Net Interest credited at 10.25% on Pension schemes with APA Life Assurance&lt;/li&gt;\r\n	&lt;li&gt;APA&amp;rsquo;s Capital Adequacy Ratio (CAR) at 212%&lt;/li&gt;\r\n	&lt;li&gt;APA&amp;rsquo;s Shareholders to receive Ksh 600 Million dividend (2017 Ksh1.5 billion).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;The Apollo Group, profit before tax, increased by 9% to Ksh 947 million, reflecting improved operational performance. The group registered a 14% increase in premiums from Ksh 9.6 billion to Ksh 11.0 billion and grew its asset base from Ksh 23 billion in 2017 to Ksh 24 billion in 2018. APA Insurance grew by 15% reporting significant growth in its Gross Written Premiums (GWP) in 2018 to Ksh 9.56 Billion from Ksh 8.30 billion in 2017. This is a 15% year on year growth against the insurance industry estimated growth of 4% and now makes APA the third largest General Insurer in Kenya. APA posted Ksh 677 million in profit before tax. The total claims settled by the APA Insurance during the year were KSh6.54 billion compared to Ksh 6.38 billion in 2017.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA Life Assurance has declared 10.25% to pension contributors which is one of the highest in the industry.&lt;/p&gt;\r\n\r\n&lt;p&gt;Commenting on the results, Apollo Group CEO Ashok Shah said: &amp;ldquo;In 2018 the Group has delivered concrete results against the backdrop of a difficult business environment. We have achieved a growth in premiums and in solid investment returns, when many of our peers have shown losses in both operational and investment returns&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mr. Shah added: &amp;ldquo;APA Insurance is still the flagship and continues to grow and provides healthy dividends to the group with very strong ratios. The Group will continue to focus on growing APA Life Assurance and expanding the APA Insurance&amp;rsquo;s general business in Uganda. This indeed is a testimony of our commitment over the long haul in this market. It is our vision to continue being at the forefront in insurance and investments in Kenya and other chosen markets. The Board and Management have agreed that the refreshed strategy of Insuring Happiness, with a greater focus on customer centricity, will position the company for further significant growth&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Following the impressive results, APA has declared a Ksh 600 million dividend to its shareholders.&lt;/p&gt;',1),(10,'21,June 2019 09:27:52','2019-06-21 09:27:52.591329','APA SPREADS HAPPINESS TO SHOPPERS AT TWO RIVERS MALL ON WORLD HAPPIENSS DAY 2019','Media Centre','Anthony baru','images/posts/a9dda57107ad4519936291c07ff6af81.jpg','&lt;p&gt;Ashok Shah, The Apollo Group CEO, (left) and the APA Insurance team spread happiness to shopper at Two Rivers Mall on World Happiness Day.&amp;nbsp; The Mall goers where surprised with random acts of kindness and received prizes including household goods, food vouchers, shopping vouchers and holiday trips.&lt;/p&gt;\r\n\r\n&lt;p&gt;Kenya ranked 121 on the 2019 World Happiness Report compared to 132 in 2018.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Let&amp;#39;s do whatever we can to spread more happiness to others today and every day,&amp;rdquo; said Ashok Shah, The Apollo Group CEO. &amp;ldquo;Because when we&amp;#39;re together everything&amp;#39;s better&amp;rdquo;.&lt;/p&gt;',1),(11,'28,June 2019 15:00:12','2019-06-25 11:49:20.355867','MARY KIMOTHO Mâ€™MUKINDIA APPOINTED TO APA BOARDS','Media Centre','Anthony','images/posts/11a19e0944a795562881675405b3316c03.jpg','&lt;p&gt;The Board of Directors of APA Insurance and APA Life is pleased to announce the appointment of Mary Kimotho M&amp;rsquo;Mukindia to&lt;strong&gt; &lt;/strong&gt;Board of Directors with effect from 1 March 2019.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Apollo Group CEO, Ashok Shah, stated, &amp;ldquo;I am extremely pleased to welcome Mary to the boards of APA Insurance and APA Life.&amp;nbsp; A highly respected and qualified Kenyan that I have learnt to know and appreciate over the years.&amp;nbsp; Her foresight, experience and competent leadership qualities will guide the Board at this very exciting time in our business.&amp;nbsp; I look forward to support her as the Group CEO and I wish her all the best in this endeavour.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;The new Board member, Mary Kimotho M&amp;rsquo;Mukindia added, &amp;quot;I am honoured and thrilled to join the boards of two of Kenya leading insurance companies which are part of the Apollo Group.&amp;nbsp; I look forward to working with this exceptional team to deliver the best results for our shareholders and clients.&amp;nbsp; I wish to thank Ashok for his distinguished service and leadership in getting the Group to this point, and look forward to his and the other board members continued guidance.&amp;rdquo;&lt;/p&gt;',1),(12,'25,June 2019 11:52:18','2019-06-25 11:52:18.807459','APA LIFE WINS AT AKI 2019 AWARDS','Media Centre','Anthony','images/posts/9eacc5ead5bd872ff681b9e2f2b28842.JPG','&lt;p&gt;Dr Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life Assurance (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up - Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position - Overall premium volume and Grace Akinyi Odhiambo took third position - Agent of the year General insurance business.&lt;/p&gt;',0),(13,'30,June 2019 09:02:03','2019-06-25 12:31:15.597123','COST BENEFITS A BIG ATTRACTION IN GENERIC ROUTE TO PRESCRIPTIONS VINOD BHARATAN, CHIEF EXECUTIVE OFFICER, APA INSURANCE.','Media Centre','Anthony','images/posts/1379ebf16d6a9ae0e860c8834db4735b24.jpg','&lt;p&gt;Opting for a generic drug can give you the same benefits as branded medicines &amp;ndash; but at a considerably lower cost.&amp;nbsp;It is no secret that Kenyan consumers are paying over the odds for prescription drugs. Now people are increasingly turning to generics to try to reduce their monthly bill for medication. But what are they and do they suit everyone?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;What are generics?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;When a new drug is produced, it is protected by its patent for a certain number of years. Once this ceases, any drug manufacturer can produce their own equivalent, which is typically sold at a significantly lower price, given that this manufacturer hasn&amp;rsquo;t incurred all the costs associated with developing and creating the drug. These are known as generics.&lt;/p&gt;\r\n\r\n&lt;p&gt;Health financiers are now encouraging doctors and pharmacists to substitute a brand name drug for its generic equivalent, provided that it is included on a list published by the Ministry of Health.&lt;/p&gt;\r\n\r\n&lt;p&gt;So, for example, if you take a branded medication that has been approved for generic substitution, your doctor or pharmacist will automatically make the switch.&amp;nbsp; Doing so will reduce the cost to the patient.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, the only time a pharmacist can offer you a branded drug is if the doctor prescribing the medication writes &amp;ldquo;do not substitute&amp;rdquo; on the prescription.&lt;/p&gt;\r\n\r\n&lt;p&gt;The legislation is very clear that the prescribing doctor must write it in their own handwriting where it is deemed there is a clinical exemption.&amp;nbsp; This means that in certain circumstances &amp;ndash; such as those outlined below &amp;ndash; a patient can continue to use the branded medication under their existing scheme.&lt;/p&gt;\r\n\r\n&lt;p&gt;If, however, they opt to stick with the branded drug simply because they are familiar with it and fear change, they may have to pay the difference themselves.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;But are generics always equivalent?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Typically, there is no risk to a patient in switching from a brand name drug to its generic equivalent. However, there may be exceptions.&lt;/p&gt;\r\n\r\n&lt;p&gt;Although generic drugs have the same active ingredient as branded drugs, they are composed differently. This means that they may have different bioavailability from either the branded drug or, indeed, other generic drugs of the same class.&amp;nbsp; Typically, this won&amp;rsquo;t affect the patient in terms of efficacy and safety, but in drugs with a narrow therapeutic index, this could potentially lead to adverse effects.&lt;/p&gt;\r\n\r\n&lt;p&gt;It is therefore important to use generic drugs as substitutes only if they have been shown to have similar bioavailability to the branded drug and have been approved for use in Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Therapeutic efficacy&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Prescribers need to be cognisant of theoretical changes in therapeutic efficacy and monitor for any changes.&amp;nbsp; For example, the colour of the tablet may change which can lead to confusion and may lead to poor compliance.&lt;/p&gt;\r\n\r\n&lt;p&gt;Prescribers should again ensure patients are aware and understand the changes being made to their medication. In any case, if you&amp;rsquo;re in doubt about the suitability of generic medication, check with your GP or whoever prescribes your medication for reassurance, or call into your local pharmacist.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Looking for low-cost generics&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Generic alternatives too many drugs should be available in your local pharmacy so you can always ask for the generic substitution for any medication you may be taking.&lt;/p&gt;\r\n\r\n&lt;p&gt;If the drug is still under patent it won&amp;rsquo;t be available, or it may turn out to be unsuitable for your needs, but it&amp;rsquo;s still worth asking about.&lt;/p&gt;',1),(14,'30,June 2019 08:43:57','2019-06-25 12:42:21.498131','GOVERNMENT OF KENYA PARTNERS WITH INSURERS TO MAKE RECORD CROP INSURANCE PAY-OUTS','Media Centre','Anthony','images/posts/1493335678cc6658fe268d5382396d7db8.jpg','&lt;p&gt;Ksh 25.5 million on tap for 7,025 smallholder assorted crop farmers in 21 counties in Kenya. This is under the Kenya Agricultural Insurance Program (KAIP) where the government of Kenya through its State Department of Crop Development and a consortium of six insurance companies headed by APA insurance.&lt;/p&gt;\r\n\r\n&lt;p&gt;Climate change is a hard-hitting reality that has thrown Kenya smallholder farmers into anxiety mode. The weather patterns have drastically changed from the normal where there use to be a regular and predictable downpour. Planting periods have shifted and farmers are no longer sure of productivity. This jeopardises our food security and national planning.&lt;/p&gt;\r\n\r\n&lt;p&gt;To curb the challenges of production uncertainties, the Kenyan government through its state department of crop development partnered with six insurance companies led by APA Insurance to caution smallholder farmers against climate change related risk leading to reduced yields.&lt;/p&gt;\r\n\r\n&lt;p&gt;The consortium is composed of six insurance companies; APA, Jubilee, CIC, UAP, Kenya orient and AMACO. This program started in the year 2016 with three counties (Bungoma, Nakuru and Embu) under the support of the World Bank. The program has grown to 21 counties as summarised in the 2018 business below.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Government of Kenya Partners with Insurers to Make Record Crop Insurance Pay-outs &quot; src=&quot;http://localhost/cms/upload/91835652.png&quot; style=&quot;height:540px; width:609px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;25.5 million will be paid to 7,025 smallholder farmers beneficiaries across the 8 of 21 counties in Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA Insurance CEO, Vinod Bharatan lauded the government for supporting the program by providing subsidies for the premiums, adding that this will contribute towards safeguarding farmers&amp;rsquo; livelihoods that are often threatened by adverse climatic conditions.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Smallholder farmers are the backbone of our agricultural production. However, in recent years, they have had to bear huge risk that comes with effects of climate change. The weather is no longer predictable and natural disaster have become more frequent, leading to huge crop losses. We aim to address this challenge to livelihoods, our bread basket and our economy,&amp;rdquo; Mr Bharatan said.&lt;/p&gt;\r\n\r\n&lt;p&gt;The just concluded 2019 enrolment into the program has expanded to 27 counties with a focus of reaching the 33 active crop arable counties in 2020. The program is looking at insuring 1 million farmers by 2020.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Area Yield Index Insurance covers farmers based on the condition of harvest history of the unit area of insurance where the farm falls.&lt;/p&gt;',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_dp_calculator_customer_quotations`
--

LOCK TABLES `pr_dp_calculator_customer_quotations` WRITE;
/*!40000 ALTER TABLE `pr_dp_calculator_customer_quotations` DISABLE KEYS */;
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (26,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',10000,0,0,0,200000,'2019-11-05 18:20:48.000000',NULL),(27,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',1000,0,0,0,200000,'2019-11-05 18:24:16.000000',NULL),(28,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,200000,0,0,200000,'2019-11-05 18:24:29.000000',NULL),(29,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',10000,10000,0,0,200000,'2019-11-05 18:24:50.000000',NULL),(30,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:33:24.000000',NULL),(31,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:33:49.000000',NULL),(32,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:35:06.000000',NULL),(33,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:35:11.000000',NULL),(34,'John Doe','0712345678','johndoe@gmail.com','Machakos','tenant',0,100000,0,0,0,'2019-11-05 18:36:38.000000',NULL),(35,'John Doe','0712345678','johndoe@gmail.com','Machakos','tenant',0,100000,0,0,0,'2019-11-05 18:36:49.000000',NULL),(36,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,700000,0,0,0,'2019-11-05 18:38:14.000000',NULL),(37,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,700000,0,0,0,'2019-11-05 18:39:32.000000',NULL),(38,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,700000,0,0,0,'2019-11-05 18:40:23.000000',NULL),(39,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',0,700000,0,0,0,'2019-11-05 18:40:30.000000',NULL),(40,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',20000,0,0,0,0,'2019-11-05 18:45:23.000000',NULL),(41,'John Doe','0712345678','johndoe@gmail.com','Machakos','owner',10000,0,0,0,0,'2019-11-05 18:49:40.000000',NULL),(42,'John Doe','0712345678','johndoe@gmail.com','Machakos','tenant',0,200000,0,0,0,'2019-11-06 09:04:44.000000',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,'MOTOR PRIVATE','2019-09-11 08:37:40','2019-09-11 08:37:44'),(7,'MOTOR CYCLE','2019-09-11 08:38:07','2019-09-11 08:38:11'),(8,'PEDAL CYCLE','2019-09-11 08:38:24','2019-09-11 08:38:28'),(9,'TRAVEL INSURANCE','2019-09-11 08:38:55','2019-09-11 08:38:58'),(10,'HOME COVER/DOMESTIC PACKAGE','2019-09-11 08:39:25','2019-09-11 08:39:29'),(11,'PET','2019-09-11 08:39:52','2019-09-11 08:39:54'),(12,'PERSONAL ACCIDENT','2019-09-11 08:40:19','2019-09-11 08:40:22'),(13,'GOLFERS','2019-09-11 08:40:37','2019-09-11 08:40:40'),(14,'FAMILY HEALTH COVER/JAMII PLUS','2019-09-11 08:41:10','2019-09-11 08:41:13'),(15,'FAMILY HEALTH COVER/AFYA NAFUU','2019-09-11 08:41:31','2019-09-11 08:41:34'),(16,'CANCER CARE/FEMINA','2019-09-11 08:42:13','2019-09-11 08:42:17'),(17,'ER CARD','2019-09-11 08:42:29','2019-09-11 08:42:33'),(18,'FIXED SAVINGS PLAN/IMARIKA','2019-09-11 08:44:47','2019-09-11 08:44:50'),(19,'ANTICIPATED SAVINGS/AKIBA HALISI','2019-09-11 08:45:37','2019-09-11 08:45:40'),(20,'EDUCATION PLAN/ELIMU','2019-09-11 08:46:14','2019-09-11 08:46:18'),(21,'HOSPITALISATION LOSS OF INCOME/HOSICARE','2019-09-11 08:46:51','2019-09-11 08:46:55'),(22,'FUNERAL EXPENSE COVER/PUMZISHA','2019-09-11 08:51:41','2019-09-11 08:51:46'),(23,'LIFE COVER/TERM ASSURANCE','2019-09-11 08:52:56','2019-09-11 08:53:00'),(24,'INDIVUDUAL PENSION PLAN/IPP','2019-09-11 08:53:03','2019-09-11 08:53:15'),(25,'MORTGAGE PROTECTION','2019-09-11 08:53:22','2019-09-11 08:53:24'),(26,'MOTOR COMMERCIAL','2019-09-11 08:59:08','2019-09-11 08:59:10'),(27,'MOTOR CYCLE/PSV','2019-09-11 08:59:14','2019-09-11 08:59:13'),(28,'MOTOR TRADE','2019-09-11 08:59:16','2019-09-11 08:59:17'),(29,'FIRE AND PERILS','2019-09-11 08:59:20','2019-09-11 08:59:19'),(30,'WIBA','2019-09-11 08:59:22','2019-09-11 08:59:23'),(31,'THEFT','2019-09-11 08:59:29','2019-09-11 08:59:28'),(32,'ENGINEERING','2019-09-11 08:59:31','2019-09-11 08:59:32'),(33,'LIABILITY','2019-09-11 08:59:36','2019-09-11 08:59:36'),(34,'MARINE','2019-09-11 08:59:38','2019-09-11 08:59:39'),(35,'AVIATION','2019-09-11 08:59:41','2019-09-11 08:59:43'),(36,'SPECIAL PACKAGE COVERS','2019-09-11 08:59:43','2019-09-11 08:59:44'),(37,'GOODS IN TRANSIT/GIT','2019-09-11 08:59:48','2019-09-11 08:59:47'),(38,'BONDS','2019-09-11 08:59:49','2019-09-11 08:59:50'),(39,'PLATE GLASS','2019-09-11 08:59:52','2019-09-11 08:59:51'),(40,'HEALTH CORPORATE','2019-09-11 08:59:53','2019-09-11 08:59:54'),(41,'COMMERCIAL LIFE','2019-09-11 08:59:56','2019-09-11 08:59:55'),(42,'CROP COVER','2019-09-11 08:59:57','2019-09-11 08:59:58'),(43,'LIVESTOCK COVER','2019-09-11 09:00:01','2019-09-11 09:00:41'),(44,'MICRO PROPERTY','2019-09-11 09:00:03','2019-09-11 09:00:42'),(45,'APOLLO BALANCED FUND','2019-09-11 09:00:04','2019-09-11 09:00:43'),(46,'APOLLO EQUITY FUND','2019-09-11 09:00:08','2019-09-11 09:00:44'),(47,'APOLLO MONEY MARKET FUND','2019-09-11 09:00:09','2019-09-11 09:00:45'),(50,'NULL','2019-09-11 15:58:14','2019-09-11 15:58:16'),(51,'ENHANCED PERSONAL ACCIDENT/FLEXPAX','2019-09-17 05:30:20','2019-09-17 05:30:23'),(52,'GROUP LIFE','2019-09-18 14:31:19','2019-09-18 14:31:22'),(53,'CONTACT US','2019-09-30 15:59:33','2019-09-30 15:59:36'),(54,'CREDIT LIFE','2019-10-29 20:17:10','2019-10-29 20:17:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_leads`
--

LOCK TABLES `products_leads` WRITE;
/*!40000 ALTER TABLE `products_leads` DISABLE KEYS */;
INSERT INTO `products_leads` VALUES (215,14,14,'Peter Chege Kinuthia','peterchege442@gmail.com','0701075090','nairobi','1','','0','','','','Contents','','',0,0,0,'',0,0.00,'24 - 25',0,'','2019-11-12 16:51:03.000000','0',NULL,NULL);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-13 14:44:46
