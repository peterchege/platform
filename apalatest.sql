/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100139
 Source Host           : localhost:3306
 Source Schema         : apa

 Target Server Type    : MariaDB
 Target Server Version : 100139
 File Encoding         : 65001

 Date: 04/11/2019 09:10:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apa_job_applicants
-- ----------------------------
DROP TABLE IF EXISTS `apa_job_applicants`;
CREATE TABLE `apa_job_applicants`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `applicant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `second_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirm_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profile_image_url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `social_media_platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password_reset` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of apa_job_applicants
-- ----------------------------
INSERT INTO `apa_job_applicants` VALUES (1, '7sD7LDAkco1BOHlmP1q', 'Peter', 'Chege', 'p@gmail.com', 'p@gmail.com', '', '', '', '2019-05-03 18:38:02.969581', '6jKJzpPIfUauDylLxuB0');
INSERT INTO `apa_job_applicants` VALUES (2, '1FKhO9lelYHZmRILF98', 'tony', 'tony', 'tony@gmail.com', '$2y$10$prs02ec0Rxp3SGty4BWwfuY/Jh8jN8LhVyPf5BJBN7g9ZwIe2y.Ve', '', 'normal', '', '2019-05-03 18:38:02.969581', NULL);
INSERT INTO `apa_job_applicants` VALUES (3, 'wMzpiGMGriWgULOTS3Ca', 'peter', 'chege', 'peterchege442@gmail.com', '$2y$10$3WCSm3hxcZn6YGhoPD.Rr.5v4oEK0XcKxG6PFvJIi4M6bLY8Hlrfy', '', '', '', '2019-05-03 18:38:02.969581', NULL);
INSERT INTO `apa_job_applicants` VALUES (4, '9wwgAyH04y3nElC6znso', 'Peter', 'Kinuthia', 'peterchege@gmail.com', '$2y$10$.n1fM478G0GjUStHaUXtm.YxMsqJyeWHzTK2netmcLHdARRDkQSjG', '', '', '', '2019-05-03 18:38:02.969581', NULL);
INSERT INTO `apa_job_applicants` VALUES (5, '1306824732', 'Anthony Baru', '', '', '', 'http://pbs.twimg.com/profile_images/378800000779527007/feedf127f96e32bb11aadad1769c8872_normal.jpeg', 'twitter', '', '2019-05-03 18:38:02.969581', '66671');
INSERT INTO `apa_job_applicants` VALUES (6, '109162585223646381268', 'Anthony Baru', '', 'anthonybarukaronji@gmail.com', '', 'https://lh4.googleusercontent.com/-u072XaHaVCE/AAAAAAAAAAI/AAAAAAAAABo/_07r1fsTJGM/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', NULL);
INSERT INTO `apa_job_applicants` VALUES (7, '101393073819430510008', 'Anthony Baru', '', 'anthonybaru@gmail.com', '$2y$10$CqfVEVTziEKF9acCwy8vQeh23Gm9yvSCvXCXXBCIGu8ELfEBFylSi', 'https://lh5.googleusercontent.com/-HWPcBgCdDyw/AAAAAAAAAAI/AAAAAAAAArU/3y9lGdudDxU/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', 'HkYFpTY27htf7UhMLcxv');
INSERT INTO `apa_job_applicants` VALUES (12, '1285994268216094', 'Tony Baru', '', 'anthonybarukaronji@yahoo.com', '', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1285994268216094&height=200&width=200&ext=1559402429&hash=AeTZs-a6_j3d_c-5', 'Facebook', '', '2019-05-03 18:38:02.969581', NULL);
INSERT INTO `apa_job_applicants` VALUES (13, '108937552463137459023', 'njoroge kangethu', '', 'kangethu2@gmail.com', '', 'https://lh3.googleusercontent.com/-xm7cl86Gw2k/AAAAAAAAAAI/AAAAAAAAAXM/wsaxC5cR4UM/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', '11601');
INSERT INTO `apa_job_applicants` VALUES (21, 'zeabRO5TFz', 'anthony baru', '', '', '', '', 'linkedin', '', '2019-05-03 19:05:52.788317', '66671');
INSERT INTO `apa_job_applicants` VALUES (22, 'z-qjDjqLBW', 'peter chege', '', '', '', 'https://media.licdn.com/dms/image/C5603AQGqi94U3MJ-hQ/profile-displayphoto-shrink_100_100/0?e=1562198400&v=beta&t=Q5g8LU0vFKBoXJVWq7PpKtMAiNOeA-YGppeKBc7iU1U', 'linkedin', '', '2019-05-03 19:07:34.784561', '66671');
INSERT INTO `apa_job_applicants` VALUES (23, 'CPAKoqis5gTk2jveevk3', 'new', 'new', 'new@gmail.com', '$2y$10$v39XkVHNTmQWAkqnjEGdAOJJnyxNtIf5ti1eSyJni3cyTUGFx/e4K', '', 'normal', '', '2019-06-06 15:36:54.360699', NULL);
INSERT INTO `apa_job_applicants` VALUES (24, '108131240922418171165', 'APA Insurance', '', 'apaapollo@gmail.com', '', 'https://lh5.googleusercontent.com/-aUqHf1tdbBU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdchfj6iIoXCApi--hNVpimu4E64g/mo/photo.jpg', 'google', '', '2019-06-11 10:17:14.465699', NULL);

-- ----------------------------
-- Table structure for apa_job_applicants_certification
-- ----------------------------
DROP TABLE IF EXISTS `apa_job_applicants_certification`;
CREATE TABLE `apa_job_applicants_certification`  (
  `id` int(11) NOT NULL,
  `certificate` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `issuing_organization` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `issuing_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `applicant_id` int(15) NOT NULL,
  `job_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `job_id fk`(`job_id`) USING BTREE,
  INDEX `applicant_id fk`(`applicant_id`) USING BTREE,
  CONSTRAINT `applicant_id fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_id fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for apa_job_applicants_education_qualification
-- ----------------------------
DROP TABLE IF EXISTS `apa_job_applicants_education_qualification`;
CREATE TABLE `apa_job_applicants_education_qualification`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `institution` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `program` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `education_level` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `graduation_date` date NOT NULL,
  `anticipated_graduation_date` date NOT NULL,
  `job_id` int(15) NOT NULL,
  `applicant_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `applicant id`(`applicant_id`) USING BTREE,
  INDEX `job id`(`job_id`) USING BTREE,
  CONSTRAINT `applicant id` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job id` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for apa_job_applicants_employment_history
-- ----------------------------
DROP TABLE IF EXISTS `apa_job_applicants_employment_history`;
CREATE TABLE `apa_job_applicants_employment_history`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `employer_company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `position` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `current_job` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `salary` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `notice_period` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `roles_performed` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `applicant_id` int(15) NOT NULL,
  `job_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `applicant id fk`(`applicant_id`) USING BTREE,
  INDEX `job id fk`(`job_id`) USING BTREE,
  CONSTRAINT `applicant id fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job id fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for apa_job_applicants_file_attachments
-- ----------------------------
DROP TABLE IF EXISTS `apa_job_applicants_file_attachments`;
CREATE TABLE `apa_job_applicants_file_attachments`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `job_id` int(15) NOT NULL,
  `applicant_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `applicant_id_fk`(`applicant_id`) USING BTREE,
  INDEX `apa_job_post_fk`(`job_id`) USING BTREE,
  CONSTRAINT `apa_job_post_fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `applicant_id_fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for apa_job_applicants_personal_info
-- ----------------------------
DROP TABLE IF EXISTS `apa_job_applicants_personal_info`;
CREATE TABLE `apa_job_applicants_personal_info`  (
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
  INDEX `apa_applicant fk`(`applicant_id`) USING BTREE,
  INDEX `apa_job_post fk`(`job_id`) USING BTREE,
  CONSTRAINT `apa_applicant fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `apa_job_post fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for apa_job_internship_applications
-- ----------------------------
DROP TABLE IF EXISTS `apa_job_internship_applications`;
CREATE TABLE `apa_job_internship_applications`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intern_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `file` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of apa_job_internship_applications
-- ----------------------------
INSERT INTO `apa_job_internship_applications` VALUES (1, 'QBsQZpUiF', 'John', 'Doe', 'p@gmail.com', '071223333', 'p@gmail.com-QBsQZpUiF-July 2016 issue.pdf');
INSERT INTO `apa_job_internship_applications` VALUES (2, 'BFKV1PNlpa', 'John', 'Doe', 'anthonbaru@gmail.com', '071223333', 'anthonbaru@gmail.com-BFKV1PNlpa-Apollo Unit Trust Investment Application Form.PDF');

-- ----------------------------
-- Table structure for apa_job_posts
-- ----------------------------
DROP TABLE IF EXISTS `apa_job_posts`;
CREATE TABLE `apa_job_posts`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_title` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `department` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `reports_to` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `employment_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `salary` int(15) NOT NULL,
  `job_short_description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `key_primary_responsibilities` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `academic_qualifications` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `professional_qualifications` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_skills_and_requirements` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `experience` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_added` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deadline` date NOT NULL,
  `added_by` int(11) NULL DEFAULT NULL,
  `edited_by` int(11) NULL DEFAULT NULL,
  `archive` int(15) NOT NULL DEFAULT 1,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `who added the post`(`added_by`) USING BTREE,
  INDEX `who edited this post`(`edited_by`) USING BTREE,
  CONSTRAINT `who added the post` FOREIGN KEY (`added_by`) REFERENCES `hr_jobs_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `who edited this post` FOREIGN KEY (`edited_by`) REFERENCES `hr_jobs_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of apa_job_posts
-- ----------------------------
INSERT INTO `apa_job_posts` VALUES (38, '9bhu3PaeaE', 'CREDIT CONTROL/RECONCILIATION ACCOUNTANT', 'Finance', 'Team Leaders &ndash; Credit Control', 'Head Office', 'APA Insurance', 'Permanent', 0, '&lt;p&gt;This role is responsible for reconciliation and distribution of customer statements, collection of premiums and payment of commissions.&lt;/p&gt;', '&lt;ul&gt;&lt;li&gt;Collecting outstanding premiums from agents, brokers and direct clients in line with the legislation.&lt;/li&gt;&lt;li&gt;Reconciling/reviewing broker and client&rsquo;s debtor accounts on a monthly basis by applying the 80 &ndash; 20 rule and exchange the details with the counter parties;&lt;/li&gt;&lt;li&gt;Ensure timely allocation of receipts with a maximum of 5 days of unallocated at any day&lt;/li&gt;&lt;li&gt;Managing intermediary accounts by ensuring proper records are maintained, agents&rsquo; commissions paid within 5 days of the following month and timely communication and release of debtor statements latest by 5th;&lt;/li&gt;&lt;li&gt;Updating, validating and presenting credit control reports to team leader as shall be requested;&lt;/li&gt;&lt;li&gt;Review the debtors ageing reports and taking appropriate action as per credit control policy;&lt;/li&gt;&lt;li&gt;Prepare a detailed (per intermediary) bad debts movement schedule reconciling the balances b/f, charges for the period, any write offs and balances at the end of the period&lt;/li&gt;&lt;li&gt;Managing any intermediary loans and charging the interests, recoveries, taxes etc. and maintaining accurate loan balances at all times&lt;/li&gt;&lt;li&gt;Computing, filing and requisitioning for monthly intermediaries&rsquo; taxes at least 3 days before the due dates;&lt;/li&gt;&lt;li&gt;Managing Unit managers&rsquo; monthly retainers which involves computation and disbursements;&lt;/li&gt;&lt;li&gt;Facilitating intermediary&rsquo;s annual IRA licenses and follow up ensuring only the licensed intermediaries are traded with&lt;/li&gt;&lt;li&gt;Providing confirmation details of receipting clients details for any electronic funds transfers and insurance premium finance remittances;&lt;/li&gt;&lt;li&gt;Creating new accounts for intermediaries in the general system.&lt;/li&gt;&lt;li&gt;Facilitating the processing and approval of IPFs and following up with respective financiers on payment of same.&lt;/li&gt;&lt;li&gt;Confirming premiums received before settlement of claims.&lt;/li&gt;&lt;li&gt;Visitation of intermediaries and branches on regular basis to resolve debtors accounts balances.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Bachelor&rsquo;s degree in Finance/Accounting/Business Administration or an equivalent&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;CPA Part 2&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Strong preference will be given to candidates with the above qualifications, skills and experience.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;At least 2 years&rsquo; relevant experience in credit control&lt;/li&gt;&lt;li&gt;Skills and Attributes&lt;/li&gt;&lt;li&gt;Analytical skills&lt;/li&gt;&lt;li&gt;Presentation skills&lt;/li&gt;&lt;li&gt;Communication and interpersonal skills&lt;/li&gt;&lt;/ul&gt;', '2019-09-30 11:31:21.308121', '2019-10-14 11:45:45.643226', '2019-10-10', 9, 9, 1, 'recruitment@apollo.co.ke');
INSERT INTO `apa_job_posts` VALUES (39, 'gL8F524Gzw', 'VENDOR MANAGER', 'Digital', '', 'Head Office', 'APA Insurance', 'Permanent', 0, '&lt;p&gt;As a Vendor Manager at APA, you will be responsible for executing the vendor/supplier relationships required to deliver, manage and implement, commercial procurement strategies across the organization to deliver optimal value for money to meet the internal business needs.&lt;/p&gt;', '&lt;ul&gt;&lt;li&gt;Manage sourcing strategy and define sourcing recommendations that support business goals, in collaboration with senior management and stakeholders.&lt;/li&gt;&lt;li&gt;Negotiate pricing, terms and conditions of goods, services and products with key suppliers, contractors and service providers.&lt;/li&gt;&lt;li&gt;Develop, establish, implement, and enforce vendor and outsourcer guidelines, obligations, and Service Level Agreements (SLAs) to the organization.&lt;/li&gt;&lt;li&gt;Monitor vendor contracts (incl. contract lifecycles) and ensure adherence to contractual agreements and comply with procurement policies and procedures.&lt;/li&gt;&lt;li&gt;Asset management for IT hardware, software, and equipment incl. where possible, standardize equipment to lower costs.&lt;/li&gt;&lt;li&gt;Leverage continuous improvement initiatives to create additional value over and above the contract requirements.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;4+ years of experience in IT and IT vendor management.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Procurement qualification or equivalent experience desired with knowledge and exposure in ICT environment.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Effective contract lifecycle management and negotiation skills incl. ability to build relationships with suppliers, and contractors who provide a broad spectrum of IT products and services.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Solid working knowledge of current IT technologies, total life cycle cost structures and pricing mechanisms.&lt;/li&gt;&lt;li&gt;Advanced skills in all procurement process disciplines across the procurement life cycle of demand management, fulfillment, sourcing and management.&lt;/li&gt;&lt;li&gt;Experience with Software development life cycle (Agile, Waterfall, etc.) and IT Infrastructure and technology.&lt;/li&gt;&lt;li&gt;An understanding of e-procurement processes and systems incl. P2P management software.&lt;/li&gt;&lt;li&gt;A team player, experienced in working with both senior management and operational teams.&lt;/li&gt;&lt;li&gt;Project Management will be a plus.&lt;/li&gt;&lt;/ul&gt;', '2019-09-30 11:52:54.421980', '2019-10-14 11:45:41.711643', '2020-09-30', 9, 16, 0, 'digital@apainsurance.org');
INSERT INTO `apa_job_posts` VALUES (40, 'Fd90toK2', 'BRANCH MANAGER MACHAKOS', 'Business Development', 'Head of Branches', 'Machakos', 'APA Insurance', 'Permanent', 0, '&lt;p&gt;This position is responsible for achieving business growth by meeting business targets. This involves managing and developing the branch networks through the regional teams with the aim of enforcing effective credit control, delivering of set loss ratio and building and maintaining customer relationships.&lt;/p&gt;', '&lt;ul&gt;&lt;li&gt;Building and strengthening business relationships with existing and prospective clients to achieve performance targets;&lt;/li&gt;&lt;li&gt;Developing and constantly updating underwriting service standards and manuals in line with the customer service charter;&lt;/li&gt;&lt;li&gt;Achieving departmental service standards in processing, approval and release of crucial documents within set Turn Around times;&lt;/li&gt;&lt;li&gt;Managing the business portfolio through prudent underwriting in order to achieve the targeted business mix and loss ratio;&lt;/li&gt;&lt;li&gt;Collecting outstanding premium within the credit control policy;&lt;/li&gt;&lt;li&gt;Managing the implementation of internal and external audit recommendations within the agreed timelines;&lt;/li&gt;&lt;li&gt;Exploring opportunities presented by the market and developing innovative products and solutions that meet customer needs;&lt;/li&gt;&lt;li&gt;Supervising unit managers (APA Life and APA Insurance) from the region;&lt;/li&gt;&lt;li&gt;Complying with statutory, regulatory and internal control processes at the business units including internal and external audit recommendations;&lt;/li&gt;&lt;li&gt;Developing departmental budget and business plans to achieve the set company targets;&lt;/li&gt;&lt;li&gt;Entrenching performance based appraisal of departmental staff in line with their set KPIs and departmental targets;&lt;/li&gt;&lt;li&gt;Participating in company CSR and brand building activities in liaison with other departments;&lt;/li&gt;&lt;li&gt;Training, coaching and mentoring staff in order to improve performance and cohesion within the department;&lt;/li&gt;&lt;li&gt;Implementing interdepartmental SLA in liaison with other departmental heads;&lt;/li&gt;&lt;li&gt;Participating in management meetings, projects and committees as assigned.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Bachelor degree in insurance or any business related field.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;ACII&lt;/li&gt;&lt;li&gt;Insurance Diploma (AIIK)&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Sales Skills&lt;/li&gt;&lt;li&gt;Entrepreneur Spirit&lt;/li&gt;&lt;li&gt;Market Awareness&lt;/li&gt;&lt;li&gt;Customer Focus&lt;/li&gt;&lt;li&gt;Continuous Innovation&lt;/li&gt;&lt;li&gt;Ownership &amp;amp; Commitment&lt;/li&gt;&lt;li&gt;Team Spirit&lt;/li&gt;&lt;li&gt;Honest, disciplined, ambitious and willing to learn.&lt;/li&gt;&lt;li&gt;Result oriented and able to work within agreed timelines&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;At least &lt;strong&gt;6 years&lt;/strong&gt; relevant experience with at least &lt;strong&gt;2 years&lt;/strong&gt; managerial experience&lt;/li&gt;&lt;/ul&gt;', '2019-09-30 11:59:56.959556', '2019-10-23 10:27:06.672201', '2019-10-06', 9, 35, 0, 'recruitment@apollo.co.ke');
INSERT INTO `apa_job_posts` VALUES (41, 'b9Xt4NKaqC', 'Business Developer', 'Business Development', 'Head of Business Development', 'Uganda', 'APA Insurance', 'Permanent', 0, '&lt;p&gt;The position is responsible for execution of efficient operational performance of the Business Development department in consistency with the Company&rsquo;s underwriting policies and practices.&lt;/p&gt;', '&lt;ul&gt;&lt;li&gt;Processing all new policies, renewals, endorsements and enquiries within set company standards and turnaround time.&lt;/li&gt;&lt;li&gt;Issuance of motor certificates.&lt;/li&gt;&lt;li&gt;Timely processing of debit notes and credit notes.&lt;/li&gt;&lt;li&gt;Ensure timely certificate declarations for all concerned intermediaries.&lt;/li&gt;&lt;li&gt;Ensure growth of business through soliciting of new business from intermediaries.&lt;/li&gt;&lt;li&gt;To give competitive quotations and ensure follow ups are done.&lt;/li&gt;&lt;li&gt;Ensure that renewal notices are processed and disbursed on time.&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;To facilitate and ensure timely collections of premiums as per the company&rsquo;s credit policy.&lt;/li&gt;&lt;li&gt;To make regular visits in order to maintain and enhance relationships with the intermediaries.&lt;/li&gt;&lt;li&gt;Assist in preparing loss ratios and risk reviews&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;To facilitate and ensure timely collections of premiums as per the company&rsquo;s credit policy.&lt;/li&gt;&lt;li&gt;To make regular visits in order to maintain and enhance relationships with the intermediaries.&lt;/li&gt;&lt;li&gt;Assist in preparing loss ratios and risk reviews&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Liaising with the finance to ensure that premium collections are upto-date&lt;/li&gt;&lt;li&gt;Liaising with the claims department for individual client&rsquo;s performance.&lt;/li&gt;&lt;li&gt;Liaising with ICT for development of user reports as may be required from time to time&lt;/li&gt;&lt;/ul&gt;', '&lt;ul&gt;&lt;li&gt;Ensuring that all enquiries by clients or prospective clients are responded to within the set turn around time.&lt;/li&gt;&lt;li&gt;Ensuring that, renewal invitation notices are dispatched to clients within the set time before renewal date.&lt;/li&gt;&lt;li&gt;Regular briefing to the Team Leader on individual activities and making consultations on matters pertaining to the department&lt;/li&gt;&lt;li&gt;Maintaining cordial relations with intermediaries and internal clients.&lt;/li&gt;&lt;/ul&gt;', '2019-10-14 12:04:32.110954', '2019-10-23 10:30:31.028427', '2019-10-31', 16, 35, 1, 'recruitment@apollo.co.ke');
INSERT INTO `apa_job_posts` VALUES (42, 'V5BXX8R6cK', 'BRANCH MANAGER MACHAKOS', 'Seremala Inc', 'Head of Finance', 'Nairobi', 'Apollo Group', 'Contract', 60000, '&lt;p&gt;r&lt;/p&gt;', '&lt;p&gt;r&lt;/p&gt;', '&lt;p&gt;r&lt;/p&gt;', '&lt;p&gt;r&lt;/p&gt;', '&lt;p&gt;r&lt;/p&gt;', '&lt;p&gt;r&lt;/p&gt;', '2019-10-23 10:04:20.060792', '2019-10-23 10:10:27.971433', '2019-10-26', 35, 35, 1, 'johndoe@gmail.com');

-- ----------------------------
-- Table structure for apollo_confrence_facilities
-- ----------------------------
DROP TABLE IF EXISTS `apollo_confrence_facilities`;
CREATE TABLE `apollo_confrence_facilities`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of apollo_confrence_facilities
-- ----------------------------
INSERT INTO `apollo_confrence_facilities` VALUES (1, 'Shimba Hills', '18', 'Boardroom');
INSERT INTO `apollo_confrence_facilities` VALUES (2, 'Taita Hills', '12', 'Boardroom');
INSERT INTO `apollo_confrence_facilities` VALUES (3, 'Ngong Hills', '8', 'Boardroom');
INSERT INTO `apollo_confrence_facilities` VALUES (4, 'Chyullu Hills', '40', 'Auditorium');
INSERT INTO `apollo_confrence_facilities` VALUES (5, 'Cherengani', '0', 'Training Room');
INSERT INTO `apollo_confrence_facilities` VALUES (6, 'Entertainment Area', '0', 'Entertainment');

-- ----------------------------
-- Table structure for apollo_confrence_facilities_bookings
-- ----------------------------
DROP TABLE IF EXISTS `apollo_confrence_facilities_bookings`;
CREATE TABLE `apollo_confrence_facilities_bookings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apollo_confrence_facilities_fk` int(15) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `more_information` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `booked facility fk`(`apollo_confrence_facilities_fk`) USING BTREE,
  CONSTRAINT `booked facility fk` FOREIGN KEY (`apollo_confrence_facilities_fk`) REFERENCES `apollo_confrence_facilities` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of apollo_confrence_facilities_bookings
-- ----------------------------
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (1, 2, '2019-06-03', '2019-06-04', '00:00:00.000000', '00:00:00.000000', '', '0', '', 0, '', '0000-00-00 00:00:00.000000');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (2, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, '', '0000-00-00 00:00:00.000000');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (3, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (4, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (5, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (6, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (7, 1, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'Time test.', '0000-00-00 00:00:00.000000');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (8, 1, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'Time test.', '2019-06-04 10:28:20.344848');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (9, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:33:32.632942');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (10, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:34:20.120771');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (11, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:35:50.706584');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (12, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:37:54.289840');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (13, 4, '2019-06-14', '2019-06-14', '00:00:08.000000', '00:00:12.000000', 'Oliver Towers', '12345678', 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 10:47:08.899204');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (14, 4, '2019-06-14', '2019-06-14', '00:00:08.000000', '00:00:12.000000', 'Oliver Towers', '12345678', 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 10:58:14.101518');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (15, 4, '2019-06-14', '2019-06-14', '00:00:03.000000', '00:00:12.000000', 'Oliver Towers', '12345678', 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 11:00:21.684754');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (16, 1, '2019-06-04', '2019-06-05', '00:00:03.000000', '00:00:09.000000', 'Gotham Corp.', '789302545', 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:02:20.043660');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (17, 1, '2019-06-04', '2019-06-05', '03:00:00.000000', '09:03:00.000000', 'Gotham Corp.', '789302545', 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:08:37.915117');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (18, 4, '2019-06-14', '2019-06-14', '03:00:00.000000', '12:30:00.000000', 'Oliver Towers', '12345678', 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 11:08:37.970083');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (19, 1, '2019-06-04', '2019-06-05', '08:16:00.000000', '09:03:00.000000', 'Gotham Corp.', '789302545', 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:09:23.380059');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (20, 6, '2019-06-04', '2019-06-05', '07:12:00.000000', '17:23:00.000000', 'Justice League Inc.', '719941992', 'info@justiceleague.com', 8, 'More information.', '2019-06-04 14:11:12.733482');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (21, 4, '2019-06-05', '2019-06-05', '08:00:00.000000', '14:00:00.000000', 'Peter', '0', 'peter@gmail.comm', 8, 'For my squad.', '2019-06-04 14:17:23.049482');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (22, 3, '2019-06-05', '2019-06-05', '08:00:00.000000', '14:00:00.000000', 'Peter', '0', 'peter@gmail.comm', 8, 'For my squad.', '2019-06-04 14:40:14.842970');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (23, 1, '2019-06-05', '2019-06-05', '03:00:08.000000', '14:00:00.000000', 'Peter', '0', 'peter@gmail.comm', 8, 'check start time format.', '2019-06-04 14:49:17.369431');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (24, 1, '2019-06-05', '2019-06-05', '03:00:00.000000', '14:00:00.000000', 'Peter', '0', 'peter@gmail.comm', 8, 'check start time format.', '2019-06-04 14:50:36.506817');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (25, 1, '2019-06-26', '2019-06-27', '07:07:00.000000', '06:06:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, '', '2019-06-26 11:54:34.942764');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (26, 1, '2019-06-26', '2019-06-27', '07:07:00.000000', '06:06:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, '', '2019-06-26 11:56:25.249636');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (27, 1, '2019-06-26', '2019-06-27', '08:00:00.000000', '10:00:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 7, '', '2019-06-26 12:03:58.844223');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (28, 5, '2019-06-26', '2019-06-27', '08:00:00.000000', '10:00:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 7, '', '2019-06-26 12:08:20.512825');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (29, 2, '2019-06-27', '2019-06-29', '01:57:00.000000', '02:57:00.000000', 'Gotham Corp.', '2147483647', 'p@gmail.com', 0, 'vola', '2019-06-27 12:36:40.101213');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (30, 3, '2019-06-27', '2019-06-28', '08:08:00.000000', '09:09:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 89, 'leo', '2019-06-27 12:39:12.753172');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (31, 3, '2019-06-27', '2019-06-28', '08:08:00.000000', '09:09:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'leo', '2019-06-27 12:41:15.435439');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (32, 3, '2019-06-27', '2019-06-28', '08:08:00.000000', '09:09:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.co', 6, 'leo', '2019-06-27 12:41:21.599271');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (33, 4, '2019-06-27', '2019-06-28', '09:09:00.000000', '04:45:00.000000', 'Oliver Towers', '2147483647', 'peterjethro@gmail.com', 78, 'tyki adfja', '2019-06-27 12:53:48.055551');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (34, 2, '2019-06-27', '2019-06-28', '08:06:00.000000', '07:08:00.000000', 'Gotham Corp.', '1869644846', 'p@gmail.com', 12, 'moue', '2019-06-27 12:56:30.758840');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (35, 3, '2019-06-28', '2019-06-28', '09:09:00.000000', '09:09:00.000000', 'Gotham Corp.', '454252', 'p@gmail.com', 7, 'make it possible.', '2019-06-27 14:31:12.361999');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (36, 2, '2019-06-27', '2019-06-28', '08:59:00.000000', '08:08:00.000000', 'nice', '52512', 't@gmail.com', 4, 'this is me.', '2019-06-27 14:46:14.706640');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (37, 1, '2019-06-27', '2019-06-28', '08:09:00.000000', '09:00:00.000000', 'Jubilee', '5282', 'p@gmail.com', 78, 'more infoadfjakf', '2019-06-27 16:18:33.279708');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (38, 1, '2019-06-27', '2019-06-28', '00:00:00.000000', '00:00:00.000000', '', '0', '', 0, '', '2019-06-27 16:46:03.088655');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (39, 1, '0000-00-00', '0000-00-00', '00:00:00.000000', '00:00:00.000000', '', '0', '', 0, '', '2019-06-27 17:13:07.859452');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (42, 4, '2019-06-27', '2019-06-28', '07:07:00.000000', '09:09:00.000000', 'Gotham Corp.', '654654', 'peterjethro@gmail.com', 7, 'more infor', '2019-06-27 17:30:04.668745');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (43, 5, '2019-06-28', '2019-06-29', '05:05:00.000000', '09:09:00.000000', 'Gotham Corp.', '654654561', 'peter@gmail.comm', 5, 'helllo', '2019-06-28 09:30:08.939919');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (44, 6, '2019-06-28', '2019-06-29', '09:09:00.000000', '06:06:00.000000', 'enta', '54125415', 'enta@gmail.com', 7, 'more infor', '2019-06-28 09:37:26.246616');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (45, 4, '2019-06-28', '2019-06-24', '07:00:00.000000', '09:00:00.000000', 'Peter Chege', '2147483647', 'peter@gmail.com', 6, 'more information', '2019-06-28 11:01:26.634183');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (46, 2, '2019-09-10', '2019-09-11', '08:00:00.000000', '10:00:00.000000', 'name', '711', 'p@gmail.com', 85, 'pliz', '2019-09-10 16:36:06.316943');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (47, 3, '2019-09-10', '2019-09-10', '06:00:00.000000', '06:00:00.000000', 'name', '700658856', 'p@gmail.com', 4, 'more info', '2019-09-10 16:46:12.826105');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (48, 3, '2019-09-11', '2019-09-12', '05:05:00.000000', '08:08:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 5, 'None', '2019-09-11 08:47:36.366224');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (50, 2, '2019-09-11', '2019-09-12', '03:03:00.000000', '05:05:00.000000', '712365478', '712345', 'janedoe@gmail.com', 55, 'po', '2019-09-11 09:03:56.721327');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (51, 2, '2019-09-11', '2019-09-12', '22:22:00.000000', '23:00:00.000000', 'jane doe inc', '123456', 'janedoe@gmail.com', 4, 'm', '2019-09-11 09:06:00.109153');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (52, 2, '2019-09-11', '2019-09-12', '08:05:00.000000', '09:09:00.000000', 'name', '070145', 'p@gmail.com', 5, '', '2019-09-11 09:21:22.500217');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (53, 3, '2019-10-30', '2019-10-24', '06:06:00.000000', '08:00:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-23 15:00:56.504437');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (54, 1, '2019-10-23', '2019-10-25', '05:05:00.000000', '06:06:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 9, '', '2019-10-23 15:03:01.958886');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (55, 5, '2019-10-23', '2019-10-24', '22:02:00.000000', '22:22:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 9, '', '2019-10-23 15:37:27.269081');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (56, 6, '2019-10-23', '2019-10-24', '08:08:00.000000', '08:08:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 5, '', '2019-10-23 15:46:27.764834');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (57, 4, '2019-10-23', '2019-10-25', '08:59:00.000000', '08:59:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-23 16:10:21.008948');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (58, 4, '2019-10-23', '2019-10-25', '08:59:00.000000', '08:59:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-23 16:12:19.634224');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (59, 4, '2019-10-23', '2019-10-25', '08:59:00.000000', '08:59:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-23 16:12:41.866380');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (60, 4, '2019-10-23', '2019-10-25', '08:08:00.000000', '08:08:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-23 16:18:42.907656');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (61, 4, '2019-10-23', '2019-10-24', '08:08:00.000000', '05:05:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 5, '', '2019-10-23 16:21:18.515067');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (62, 1, '2019-10-15', '2019-10-23', '08:08:00.000000', '08:08:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 25, '', '2019-10-23 16:42:00.370925');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (63, 1, '2019-10-23', '2019-10-24', '22:22:00.000000', '22:22:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 8, '', '2019-10-23 16:43:01.547066');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (64, 2, '2019-10-25', '2019-10-24', '08:08:00.000000', '09:09:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 5, '', '2019-10-25 08:38:22.659134');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (65, 4, '2019-10-25', '2019-10-29', '05:05:00.000000', '05:05:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 8, '', '2019-10-25 08:43:44.249864');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (66, 4, '2019-10-25', '2019-10-26', '08:59:00.000000', '08:08:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 8, '', '2019-10-25 08:44:18.467663');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (67, 4, '2019-10-17', '2019-10-26', '08:08:00.000000', '08:08:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-25 08:55:28.319606');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (68, 4, '2019-10-17', '2019-10-26', '08:08:00.000000', '08:08:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-25 08:55:29.486731');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (69, 4, '2019-10-25', '2019-10-30', '08:06:00.000000', '08:59:00.000000', 'Seremala Inc', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-25 08:56:28.827815');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (70, 4, '2019-10-25', '2019-10-31', '08:08:00.000000', '08:08:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 6, '', '2019-10-25 08:59:14.614676');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (71, 4, '2019-10-25', '2019-10-30', '08:08:00.000000', '09:09:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 6, '', '2019-10-25 08:59:55.966239');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (72, 4, '2019-10-25', '2019-10-26', '06:06:00.000000', '06:06:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 6, '', '2019-10-25 09:06:16.101758');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (73, 2, '2019-10-25', '2019-10-26', '08:08:00.000000', '09:09:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 6, '', '2019-10-25 09:08:57.461744');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (74, 2, '2019-10-25', '2019-10-30', '08:08:00.000000', '08:08:00.000000', '66', '0712345678', 'johndoe@gmail.com', 6, '', '2019-10-25 09:21:04.235047');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (75, 2, '2019-10-24', '2019-10-26', '06:06:00.000000', '06:06:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 6, '', '2019-10-25 09:23:50.547070');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (76, 2, '2019-10-25', '2019-10-26', '08:08:00.000000', '09:09:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 6, '', '2019-10-25 09:25:28.784631');
INSERT INTO `apollo_confrence_facilities_bookings` VALUES (77, 2, '2019-10-24', '2019-10-26', '06:59:00.000000', '06:06:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 5, '', '2019-10-25 14:56:41.938756');

-- ----------------------------
-- Table structure for claims_life
-- ----------------------------
DROP TABLE IF EXISTS `claims_life`;
CREATE TABLE `claims_life`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `claim_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `completed_form` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `national_id_passport` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `hospital_dishcharge_summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `hospital_invoice_receipt` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `original_burial_permit` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `medical_report` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `payslips` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `post_mortem_report` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `policy_document` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notification_letter` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `police_abstract` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `dosh_one_two` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `dosh_four` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `medical_bill` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `sick_off_sheets` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `witness_statement` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `death_certificate` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `loan_application_and_agreement` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `loan_repayment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of claims_life
-- ----------------------------
INSERT INTO `claims_life` VALUES (36, 'ZygLfUHTkD', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Partial Maturity Claim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----ZygLfUHTkD----policy document----Jamii_Plus _Brochure.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 12:23:15.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (37, '8NdRRTv7jR', 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Mombasa', 'Partial Maturity Claim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'janedoe@gmail.com-----8NdRRTv7jR----policy document----Jamii_Plus _Brochure.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 12:24:30.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (38, 't2kmX1bxag', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Partial Maturity Claim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----t2kmX1bxag----policy document----Jamii_Plus _Brochure.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 12:24:55.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (39, 'hA4co0JTG8', 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Mombasa', 'Death Claim', 'janedoe@gmail.com-----hA4co0JTG8----completed form----Jamii_Plus _Brochure.pdf', ' janedoe@gmail.com-----hA4co0JTG8----national_id----Jamii_Plus _Brochure.pdf', NULL, NULL, 'janedoe@gmail.com-----hA4co0JTG8----original burial permit----Jamii_Plus _Brochure.pdf', NULL, NULL, 'janedoe@gmail.com-----hA4co0JTG8----post mortem report----Jamii_Plus _Brochure.pdf', 'janedoe@gmail.com-----hA4co0JTG8----policy document----Jamii_Plus _Brochure.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 12:38:28.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (40, 'gzrvrPhio9', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Partial Maturity Claim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----gzrvrPhio9----policy document----Jamii_Plus _Brochure.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 12:39:15.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (41, 'SA56KrtQYM', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Partial Maturity Claim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----SA56KrtQYM----policy document----Jamii_Plus _Brochure.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 18:21:46.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (42, 'tMf1n8SEdb', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Group Last Expense Claim', 'johndoe@gmail.com-----tMf1n8SEdb----completed form----Jamii_Plus _Brochure.pdf', ' johndoe@gmail.com-----tMf1n8SEdb----national_id----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', NULL, NULL, 'johndoe@gmail.com-----tMf1n8SEdb----Original Burial Permit----Jamii_Plus _Brochure.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-16 10:29:13.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (43, 'mMAghBZ5mv', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Group Life Benefit Claim', 'johndoe@gmail.com-----mMAghBZ5mv----completed form----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', ' johndoe@gmail.com-----mMAghBZ5mv----national_id----APA Life Umbrella Retirement Fund Member Application Form.pdf', NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----mMAghBZ5mv----payslips----APA Life Umbrella Retirement Fund Member Application Form.pdf', 'johndoe@gmail.com-----mMAghBZ5mv----medical report----APA Life Umbrella Retirement Fund Member Application Form.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-16 11:14:10.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (44, 'MXy6htVUhQ', 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Mombasa', 'Group Critical Illness Claim', 'janedoe@gmail.com-----MXy6htVUhQ----completed form----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', ' janedoe@gmail.com-----MXy6htVUhQ----national_id----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', NULL, NULL, NULL, 'janedoe@gmail.com-----MXy6htVUhQ----medical report----APA Life Umbrella Retirement Fund Member Application Form.pdf', 'janedoe@gmail.com-----MXy6htVUhQ----payslips----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-16 11:43:49.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (45, 'E4dxaIAK2x', 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Mombasa', 'Group Hospital Cash Claim', 'janedoe@gmail.com-----E4dxaIAK2x----completed form----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', ' janedoe@gmail.com-----E4dxaIAK2x----national_id----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', 'janedoe@gmail.com-----E4dxaIAK2x----hospital discharge summary----APA Life Umbrella Retirement Fund Member Application Form.pdf', 'janedoe@gmail.com-----E4dxaIAK2x----invoice----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-16 11:51:45.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (46, 'asiURgipz1', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Notification Letter', NULL, ' johndoe@gmail.com-----asiURgipz1----national_id----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', NULL, NULL, NULL, 'johndoe@gmail.com-----asiURgipz1----medical examination report----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', 'johndoe@gmail.com-----asiURgipz1----payslips----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', NULL, NULL, 'johndoe@gmail.com-----asiURgipz1----completed form----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', 'johndoe@gmail.com-----asiURgipz1----police abstract----Apa Life Umbrella Retirement Fund Employer Application Form.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-16 12:15:11.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (47, '1dWcvXtW6Z', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Group Last Expense Claim', 'johndoe@gmail.com-----1dWcvXtW6Z----completed form----IPP Membership Withdrawal Notification Form July 2019.pdf', ' johndoe@gmail.com-----1dWcvXtW6Z----national id passport----IPP Membership Withdrawal Notification Form July 2019.pdf', NULL, NULL, 'johndoe@gmail.com-----1dWcvXtW6Z----Original Burial Permit----IPP Membership Withdrawal Notification Form July 2019.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-16 17:09:09.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (48, 'iPLkVtFOn9', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Occupational - PTD and TTD', NULL, ' johndoe@gmail.com-----iPLkVtFOn9----national id passport----IPP Membership Withdrawal Notification Form July 2019.pdf', NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----iPLkVtFOn9----payslips----IPP Membership Withdrawal Notification Form July 2019.pdf', NULL, NULL, NULL, 'johndoe@gmail.com-----iPLkVtFOn9----police abstract----IPP Membership Withdrawal Notification Form July 2019.pdf', 'johndoe@gmail.com-----iPLkVtFOn9----dosh part 1 and 2----IPP Membership Withdrawal Notification Form July 2019.pdf', 'johndoe@gmail.com-----iPLkVtFOn9----dosh 4----IPP Membership Withdrawal Notification Form July 2019.pdf', 'johndoe@gmail.com-----iPLkVtFOn9----medical bill----IPP Membership Withdrawal Notification Form July 2019.pdf', 'johndoe@gmail.com-----iPLkVtFOn9----sick off sheets----IPP Membership Withdrawal Notification Form July 2019.pdf', 'johndoe@gmail.com-----iPLkVtFOn9----witness statement----IPP Membership Withdrawal Notification Form July 2019.pdf', '2019-10-16 17:10:48.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (49, 'nzYDNrUwbo', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Occupational - PTD and TTD', NULL, ' johndoe@gmail.com-----nzYDNrUwbo----national id passport----sample.pdf', NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----nzYDNrUwbo----payslips----sample.pdf', NULL, NULL, NULL, 'johndoe@gmail.com-----nzYDNrUwbo----police abstract----sample.pdf', 'johndoe@gmail.com-----nzYDNrUwbo----dosh part 1 and 2----sample.pdf', 'johndoe@gmail.com-----nzYDNrUwbo----dosh 4----sample.pdf', 'johndoe@gmail.com-----nzYDNrUwbo----medical bill----sample.pdf', 'johndoe@gmail.com-----nzYDNrUwbo----sick off sheets----sample.pdf', 'johndoe@gmail.com-----nzYDNrUwbo----witness statement----sample.pdf', '2019-10-16 17:20:54.000000', NULL, NULL, NULL);
INSERT INTO `claims_life` VALUES (50, 'bPJPhbGY4U', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Group Credit Life', NULL, ' johndoe@gmail.com-----bPJPhbGY4U----national id passport----sample.pdf', NULL, NULL, 'johndoe@gmail.com-----bPJPhbGY4U----dosh 4----sample.pdf', NULL, NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----bPJPhbGY4U----police abstract----sample.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-16 18:27:31.000000', 'johndoe@gmail.com-----bPJPhbGY4U----dosh part 1 and 2----sample.pdf', 'johndoe@gmail.com-----bPJPhbGY4U----medical bill----sample.pdf', 'johndoe@gmail.com-----bPJPhbGY4U----loan_repayment----sample.pdf');

-- ----------------------------
-- Table structure for claims_motor_upload
-- ----------------------------
DROP TABLE IF EXISTS `claims_motor_upload`;
CREATE TABLE `claims_motor_upload`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `registration_number` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `product_category_id` int(11) NULL DEFAULT NULL,
  `motor_claim_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `completed_form` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `police_abstract` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `driving_license` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `log_book` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `detailed_statement` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of claims_motor_upload
-- ----------------------------
INSERT INTO `claims_motor_upload` VALUES (1, 'KORxghDMt8', 'John Doe', '0712345678', 'johndoe@gmail.com', NULL, NULL, NULL, 'Accident', '2019-10-28 19:16:05.000000', 'johndoe@gmail.com-----KORxghDMt8----completed form----sample.pdf', ' johndoe@gmail.com-----KORxghDMt8----police abstract----sample.pdf', 'johndoe@gmail.com-----KORxghDMt8----driving license----sample.pdf', 'johndoe@gmail.com-----KORxghDMt8----log_book----sample.pdf', NULL);
INSERT INTO `claims_motor_upload` VALUES (2, 'uOAqE4L9Qn', 'John Doe', '0712345678', 'johndoe@gmail.com', 'KBC 123J', 6, 14, 'Accident', '2019-10-28 19:32:29.000000', 'johndoe@gmail.com-----uOAqE4L9Qn----completed form----sample.pdf', ' johndoe@gmail.com-----uOAqE4L9Qn----police abstract----sample.pdf', 'johndoe@gmail.com-----uOAqE4L9Qn----driving license----sample.pdf', 'johndoe@gmail.com-----uOAqE4L9Qn----log_book----sample.pdf', NULL);
INSERT INTO `claims_motor_upload` VALUES (3, '9lvt0iYVqh', 'John Doe', '0712345678', 'johndoe@gmail.com', 'KBC 123J', 6, 14, 'Accident', '2019-10-28 19:33:12.000000', 'johndoe@gmail.com-----9lvt0iYVqh----completed form----sample.pdf', ' johndoe@gmail.com-----9lvt0iYVqh----police abstract----sample.pdf', 'johndoe@gmail.com-----9lvt0iYVqh----driving license----sample.pdf', 'johndoe@gmail.com-----9lvt0iYVqh----log_book----sample.pdf', NULL);
INSERT INTO `claims_motor_upload` VALUES (4, 'VVJ8mzWYDF', 'Jane Doe', '712365478', 'janedoe@gmail.com', 'KBC 123J', 6, 14, 'Accident', '2019-10-28 19:45:56.000000', 'janedoe@gmail.com-----VVJ8mzWYDF----completed form----sample.pdf', ' janedoe@gmail.com-----VVJ8mzWYDF----police abstract----sample.pdf', 'janedoe@gmail.com-----VVJ8mzWYDF----driving license----sample.pdf', 'janedoe@gmail.com-----VVJ8mzWYDF----log_book----sample.pdf', NULL);
INSERT INTO `claims_motor_upload` VALUES (5, '9LB1TlbihW', 'John Doe', '0712345678', 'johndoe@gmail.com', 'KBC 123T', 6, 14, 'Accident', '2019-10-28 19:48:16.000000', 'johndoe@gmail.com-----9LB1TlbihW----completed form----sample.pdf', ' johndoe@gmail.com-----9LB1TlbihW----police abstract----sample.pdf', 'johndoe@gmail.com-----9LB1TlbihW----driving license----sample.pdf', 'johndoe@gmail.com-----9LB1TlbihW----log_book----sample.pdf', NULL);
INSERT INTO `claims_motor_upload` VALUES (6, 'raOHXJe2Q', 'John Doe', '0712345678', 'johndoe@gmail.com', 'KBC 123J', 6, 14, 'Theft', '2019-10-28 20:11:39.000000', 'johndoe@gmail.com-----raOHXJe2Q----completed form----sample.pdf', ' johndoe@gmail.com-----raOHXJe2Q----police abstract----sample.pdf', 'johndoe@gmail.com-----raOHXJe2Q----driving license----sample.pdf', 'johndoe@gmail.com-----raOHXJe2Q----log_book----sample.pdf', NULL);
INSERT INTO `claims_motor_upload` VALUES (7, 'EjAriZ93TU', 'John Doe', '0712345678', 'johndoe@gmail.com', 'KBC 123J', 6, 14, 'Theft', '2019-10-28 20:18:50.000000', 'johndoe@gmail.com-----EjAriZ93TU----completed form----sample.pdf', ' johndoe@gmail.com-----EjAriZ93TU----police abstract----sample.pdf', 'johndoe@gmail.com-----EjAriZ93TU----driving license----sample.pdf', 'johndoe@gmail.com-----EjAriZ93TU----log_book----sample.pdf', 'johndoe@gmail.com-----EjAriZ93TU----detailed statement----sample.pdf');
INSERT INTO `claims_motor_upload` VALUES (8, 'RXVohKjhOl', 'John Doe', '0712345678', 'johndoe@gmail.com', 'KBC 123J', 6, 14, 'Windscreen', '2019-10-28 20:46:48.000000', 'johndoe@gmail.com-----RXVohKjhOl----completed form----sample.pdf', ' johndoe@gmail.com-----RXVohKjhOl----police abstract----sample.pdf', 'johndoe@gmail.com-----RXVohKjhOl----driving license----sample.pdf', 'johndoe@gmail.com-----RXVohKjhOl----log_book----sample.pdf', 'johndoe@gmail.com-----RXVohKjhOl----detailed statement----sample.pdf');

-- ----------------------------
-- Table structure for claims_personal_property_upload
-- ----------------------------
DROP TABLE IF EXISTS `claims_personal_property_upload`;
CREATE TABLE `claims_personal_property_upload`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `claim_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `completed_form` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `police_abstract` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `invoice` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `detailed_statement` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `dosh_one_two` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `dosh_four` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `post_mortem` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `vet_loss_certificate` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `dead_livestock_photo` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `national_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `payslips` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `sick_sheet` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `medical_bill` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `discharge_summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of claims_personal_property_upload
-- ----------------------------
INSERT INTO `claims_personal_property_upload` VALUES (1, '3RhpXFMspm', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Personal Property Damage', 'johndoe@gmail.com-----3RhpXFMspm----completed form----sample.pdf', ' johndoe@gmail.com-----3RhpXFMspm----police abstract----sample.pdf', 'johndoe@gmail.com-----3RhpXFMspm----proforma invoice----sample.pdf', 'johndoe@gmail.com-----3RhpXFMspm----detailed statement----sample.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-17 15:03:56.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (2, '5w0ZvcD6Cw', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Injuries - Wiba', NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----5w0ZvcD6Cw----completed form----sample.pdf', ' johndoe@gmail.com-----5w0ZvcD6Cw----police abstract----sample.pdf', NULL, NULL, NULL, '2019-10-17 15:55:08.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (3, 'i6sLbfYGFr', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Crop Claim', 'johndoe@gmail.com-----i6sLbfYGFr----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 16:04:25.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (4, 'lpYqENIBn', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Livestock Claim', 'johndoe@gmail.com-----lpYqENIBn----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, ' johndoe@gmail.com-----lpYqENIBn----post mortem report----sample.pdf', 'johndoe@gmail.com-----lpYqENIBn----vet loss certificate----sample.pdf', 'johndoe@gmail.com-----lpYqENIBn----dead livestock photo----sample.pdf', '2019-10-17 16:51:07.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (5, 'wZmUjYCQMX', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'Injuries - Wiba', NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----wZmUjYCQMX----dosh one and two completed form----sample.pdf', ' johndoe@gmail.com-----wZmUjYCQMX----dosh four----sample.pdf', NULL, NULL, NULL, '2019-10-17 17:12:59.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (6, 'F9g6BQEOec', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Personal Accident Claim', 'johndoe@gmail.com-----F9g6BQEOec----completed form----sample.pdf', 'johndoe@gmail.com-----F9g6BQEOec----police abstract----sample.pdf', NULL, ' johndoe@gmail.com-----F9g6BQEOec----detailed statement----sample.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-22 10:02:14.000000', 'johndoe@gmail.com-----F9g6BQEOec----national id----sample.pdf', 'johndoe@gmail.com-----F9g6BQEOec----payslip----sample.pdf', 'johndoe@gmail.com-----F9g6BQEOec----sick sheet----sample.pdf', 'johndoe@gmail.com-----F9g6BQEOec----medical bill----sample.pdf', 'johndoe@gmail.com-----F9g6BQEOec----discharge summary----sample.pdf');
INSERT INTO `claims_personal_property_upload` VALUES (7, 'y4hr6FNDlK', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----y4hr6FNDlK----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 11:50:27.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (8, 'lqhqHpgzQZ', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----lqhqHpgzQZ----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 11:51:40.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (9, 'oReC1wCCwt', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----oReC1wCCwt----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 11:52:37.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (10, 'bZbAcdlUHC', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----bZbAcdlUHC----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 11:53:35.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (11, 'YVsNTumQP2', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----YVsNTumQP2----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 11:54:24.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (12, 'ycIHkLVNZP', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----ycIHkLVNZP----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 11:54:53.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (13, 'LCeMVTnRyU', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----LCeMVTnRyU----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 11:57:21.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (14, 'KfwegyoAc7', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----KfwegyoAc7----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 12:00:16.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (15, 'GijsuWQs2I', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----GijsuWQs2I----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 12:17:01.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (16, 'jxeFP851J9', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----jxeFP851J9----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 12:19:18.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (17, 'DzwmENPgpB', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----DzwmENPgpB----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-24 12:20:42.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (18, 'tAtuzUg2U6', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Personal Property Damage', 'johndoe@gmail.com-----tAtuzUg2U6----completed form----sample.pdf', ' johndoe@gmail.com-----tAtuzUg2U6----police abstract----sample.pdf', 'johndoe@gmail.com-----tAtuzUg2U6----proforma invoice----sample.pdf', 'johndoe@gmail.com-----tAtuzUg2U6----detailed statement----sample.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-28 08:24:08.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (19, 'WReh9kJ9NA', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Personal Property Damage', 'johndoe@gmail.com-----WReh9kJ9NA----completed form----sample.pdf', ' johndoe@gmail.com-----WReh9kJ9NA----police abstract----sample.pdf', 'johndoe@gmail.com-----WReh9kJ9NA----proforma invoice----sample.pdf', 'johndoe@gmail.com-----WReh9kJ9NA----detailed statement----sample.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-28 12:02:19.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (20, 'U50kxg7TIH', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Personal Accident Claim', 'johndoe@gmail.com-----U50kxg7TIH----completed form----sample.pdf', 'johndoe@gmail.com-----U50kxg7TIH----police abstract----sample.pdf', NULL, ' johndoe@gmail.com-----U50kxg7TIH----detailed statement----sample.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-28 20:52:44.000000', 'johndoe@gmail.com-----U50kxg7TIH----national id----sample.pdf', 'johndoe@gmail.com-----U50kxg7TIH----payslip----sample.pdf', 'johndoe@gmail.com-----U50kxg7TIH----sick sheet----sample.pdf', 'johndoe@gmail.com-----U50kxg7TIH----medical bill----sample.pdf', 'johndoe@gmail.com-----U50kxg7TIH----discharge summary----sample.pdf');
INSERT INTO `claims_personal_property_upload` VALUES (21, 'CyZjyrGjoj', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Injuries - Wiba', NULL, NULL, NULL, NULL, 'johndoe@gmail.com-----CyZjyrGjoj----dosh one and two completed form----sample.pdf', ' johndoe@gmail.com-----CyZjyrGjoj----dosh four----sample.pdf', NULL, NULL, NULL, '2019-10-29 10:31:42.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (22, '7maOvrJigV', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Personal Property Damage', 'johndoe@gmail.com-----7maOvrJigV----completed form----sample.pdf', ' johndoe@gmail.com-----7maOvrJigV----police abstract----sample.pdf', 'johndoe@gmail.com-----7maOvrJigV----proforma invoice----sample.pdf', 'johndoe@gmail.com-----7maOvrJigV----detailed statement----sample.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-29 10:45:00.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (23, 'IG0pu928Y', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Nairobi', 'Livestock Claim', 'johndoe@gmail.com-----IG0pu928Y----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, ' johndoe@gmail.com-----IG0pu928Y----post mortem report----sample.pdf', 'johndoe@gmail.com-----IG0pu928Y----vet loss certificate----sample.pdf', 'johndoe@gmail.com-----IG0pu928Y----dead livestock photo----sample.pdf', '2019-10-29 16:29:14.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (24, 'IFxRjTa6P', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Livestock Claim', 'johndoe@gmail.com-----IFxRjTa6P----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, ' johndoe@gmail.com-----IFxRjTa6P----post mortem report----sample.pdf', 'johndoe@gmail.com-----IFxRjTa6P----vet loss certificate----sample.pdf', 'johndoe@gmail.com-----IFxRjTa6P----dead livestock photo----sample.pdf', '2019-10-29 16:32:21.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (25, 'BtZENrRJtb', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Crop Claim', 'johndoe@gmail.com-----BtZENrRJtb----completed form----sample.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-29 16:56:53.000000', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `claims_personal_property_upload` VALUES (26, 'yg9glzakUH', 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'Personal Accident Claim', 'johndoe@gmail.com-----yg9glzakUH----completed form----sample.pdf', 'johndoe@gmail.com-----yg9glzakUH----police abstract----sample.pdf', NULL, ' johndoe@gmail.com-----yg9glzakUH----detailed statement----sample.pdf', NULL, NULL, NULL, NULL, NULL, '2019-10-30 19:21:19.000000', 'johndoe@gmail.com-----yg9glzakUH----national id----sample.pdf', 'johndoe@gmail.com-----yg9glzakUH----payslip----sample.pdf', 'johndoe@gmail.com-----yg9glzakUH----sick sheet----sample.pdf', 'johndoe@gmail.com-----yg9glzakUH----medical bill----sample.pdf', 'johndoe@gmail.com-----yg9glzakUH----discharge summary----sample.pdf');

-- ----------------------------
-- Table structure for claims_reports
-- ----------------------------
DROP TABLE IF EXISTS `claims_reports`;
CREATE TABLE `claims_reports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `registration_number` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `claim_event` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `product_category_id` int(11) NULL DEFAULT NULL,
  `claim_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `claim product id`(`product_id`) USING BTREE,
  CONSTRAINT `claim product id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of claims_reports
-- ----------------------------
INSERT INTO `claims_reports` VALUES (32, '', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'fafd', 6, 14, 'accident', '2019-10-03 16:54:13.000000');
INSERT INTO `claims_reports` VALUES (33, '', '0712345678', 'johndoe@gmail.com', 'Nakuru', 'KBC 123J', 'jhjkh', 6, 14, 'accident', '2019-10-03 16:54:51.000000');
INSERT INTO `claims_reports` VALUES (34, 'p', '+254721656618', 'rkagotho8@gmail.com', 'b', 'kbq324', 'ghdgdgd', 6, 14, 'accident', '2019-10-07 16:34:19.000000');
INSERT INTO `claims_reports` VALUES (35, 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Mombasa', 'KBC 123J', 'Accident', 6, 14, 'windscreen', '2019-10-15 12:18:27.000000');
INSERT INTO `claims_reports` VALUES (36, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'k', 6, 14, 'accident', '2019-10-15 13:57:19.000000');
INSERT INTO `claims_reports` VALUES (37, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'i', 6, 14, 'accident', '2019-10-15 14:04:19.000000');
INSERT INTO `claims_reports` VALUES (38, 'John Doe', '0712345678', 'johndoe@gmail.com', 'nairobi', 'KBC 123J', 'ssd', 6, 14, 'accident', '2019-10-15 14:08:02.000000');
INSERT INTO `claims_reports` VALUES (39, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'bc', 6, 14, 'theft', '2019-10-15 14:09:36.000000');
INSERT INTO `claims_reports` VALUES (40, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Nairobi', 'KBC 123T', 'Nice', 6, 14, 'theft', '2019-10-15 14:11:34.000000');
INSERT INTO `claims_reports` VALUES (41, 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Mombasa', 'KBC 123J', 'fghjk', 6, 14, 'theft', '2019-10-15 14:12:47.000000');
INSERT INTO `claims_reports` VALUES (42, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'hj', 6, 14, 'theft', '2019-10-15 14:19:52.000000');
INSERT INTO `claims_reports` VALUES (43, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'fghkl;', 6, 14, 'theft', '2019-10-15 14:23:29.000000');
INSERT INTO `claims_reports` VALUES (44, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'ghjk', 6, 14, 'theft', '2019-10-15 14:33:20.000000');
INSERT INTO `claims_reports` VALUES (45, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'fghjk', 6, 14, 'windscreen', '2019-10-15 14:41:41.000000');
INSERT INTO `claims_reports` VALUES (46, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'fghk', 6, 14, 'windscreen', '2019-10-15 14:44:33.000000');
INSERT INTO `claims_reports` VALUES (47, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Nakuru', 'KBC 123J', 'sds', 6, 14, 'windscreen', '2019-10-15 14:46:18.000000');
INSERT INTO `claims_reports` VALUES (48, 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Nakuru', 'KBC 123J', 'fghjkl', 6, 14, 'accident', '2019-10-15 14:50:36.000000');
INSERT INTO `claims_reports` VALUES (49, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Nairobi', 'KBC 123J', 'uoi', 6, 14, 'windscreen', '2019-10-15 15:07:37.000000');
INSERT INTO `claims_reports` VALUES (50, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Nairobi', 'KBC 123J', 'lk', 6, 14, 'theft', '2019-10-15 15:22:04.000000');
INSERT INTO `claims_reports` VALUES (51, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'KBC 123J', 'ko', 6, 14, 'theft', '2019-10-15 15:56:00.000000');
INSERT INTO `claims_reports` VALUES (52, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'Hit and run', 6, 14, 'accident', '2019-10-23 10:36:17.000000');
INSERT INTO `claims_reports` VALUES (53, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'df', 6, 14, 'accident', '2019-10-23 10:41:00.000000');
INSERT INTO `claims_reports` VALUES (54, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'dfd', 6, 14, 'accident', '2019-10-23 10:41:38.000000');
INSERT INTO `claims_reports` VALUES (55, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'dfkjals', 6, 14, 'accident', '2019-10-23 10:43:24.000000');
INSERT INTO `claims_reports` VALUES (56, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'df', 6, 14, 'accident', '2019-10-23 10:43:45.000000');
INSERT INTO `claims_reports` VALUES (57, 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Machakos', 'KBC 123J', 'g', 6, 14, 'accident', '2019-10-26 18:00:53.000000');
INSERT INTO `claims_reports` VALUES (58, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', '2', 6, 14, 'accident', '2019-10-26 18:03:43.000000');
INSERT INTO `claims_reports` VALUES (59, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123T', 'l', 6, 14, 'accident', '2019-10-26 19:32:28.000000');
INSERT INTO `claims_reports` VALUES (60, 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Nairobi', 'KBC 123J', 'h', 6, 14, 'accident', '2019-10-26 20:27:06.000000');
INSERT INTO `claims_reports` VALUES (61, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'o', 6, 14, 'accident', '2019-10-28 10:02:17.000000');
INSERT INTO `claims_reports` VALUES (62, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'kl', 6, 14, 'windscreen', '2019-10-28 16:16:59.000000');
INSERT INTO `claims_reports` VALUES (63, 'John Doe', '0712345678', 'johndoe@gmail.com', '', '', '', 6, 14, '', '2019-10-28 17:29:02.000000');
INSERT INTO `claims_reports` VALUES (64, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'mh', 6, 14, 'accident', '2019-10-29 09:47:16.000000');
INSERT INTO `claims_reports` VALUES (65, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'mh', 6, 14, 'accident', '2019-10-29 09:49:14.000000');
INSERT INTO `claims_reports` VALUES (66, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'yuu', 6, 14, 'property damage', '2019-10-29 09:54:53.000000');
INSERT INTO `claims_reports` VALUES (67, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'ty', 6, 14, 'accident', '2019-10-29 10:14:27.000000');
INSERT INTO `claims_reports` VALUES (68, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Kabete', 'KBC 123J', 'p', 6, 14, 'accident', '2019-10-29 10:21:04.000000');
INSERT INTO `claims_reports` VALUES (69, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'io', 6, 14, 'property damage', '2019-10-29 10:29:43.000000');
INSERT INTO `claims_reports` VALUES (70, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Nairobi', '', 'po', 6, 14, 'wiba', '2019-10-29 10:31:20.000000');
INSERT INTO `claims_reports` VALUES (71, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', '78', 6, 14, 'crop', '2019-10-29 10:39:31.000000');
INSERT INTO `claims_reports` VALUES (72, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'property damage', '2019-10-29 10:44:24.000000');
INSERT INTO `claims_reports` VALUES (73, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', '7', 6, 14, 'property damage', '2019-10-29 10:45:16.000000');
INSERT INTO `claims_reports` VALUES (74, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'op', 6, 14, 'personal accident', '2019-10-29 11:43:22.000000');
INSERT INTO `claims_reports` VALUES (75, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'ty', 6, 14, 'accident', '2019-10-29 11:44:36.000000');
INSERT INTO `claims_reports` VALUES (76, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', '78', 6, 14, 'accident', '2019-10-29 11:55:13.000000');
INSERT INTO `claims_reports` VALUES (77, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'io', 6, 14, 'personal accident', '2019-10-29 11:56:01.000000');
INSERT INTO `claims_reports` VALUES (78, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'personal accident', '2019-10-29 11:58:55.000000');
INSERT INTO `claims_reports` VALUES (79, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'personal accident', '2019-10-29 12:04:52.000000');
INSERT INTO `claims_reports` VALUES (80, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'po', 6, 14, 'accident', '2019-10-29 12:05:40.000000');
INSERT INTO `claims_reports` VALUES (81, 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Machakos', 'KBC 123J', 'ty', 6, 14, 'accident', '2019-10-29 12:12:38.000000');
INSERT INTO `claims_reports` VALUES (82, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'yu', 6, 14, 'personal accident', '2019-10-29 12:13:14.000000');
INSERT INTO `claims_reports` VALUES (83, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 30, 14, 'wiba', '2019-10-29 12:17:23.000000');
INSERT INTO `claims_reports` VALUES (84, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'ty', 30, 14, 'wiba', '2019-10-29 12:25:54.000000');
INSERT INTO `claims_reports` VALUES (85, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'ty', 30, 14, 'wiba', '2019-10-29 12:26:47.000000');
INSERT INTO `claims_reports` VALUES (86, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'ty', 6, 14, 'accident', '2019-10-29 12:27:33.000000');
INSERT INTO `claims_reports` VALUES (87, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'y', 30, 14, 'wiba', '2019-10-29 12:28:41.000000');
INSERT INTO `claims_reports` VALUES (88, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Kabete', '', 'yo', 6, 14, 'property damage', '2019-10-29 14:45:28.000000');
INSERT INTO `claims_reports` VALUES (89, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'personal accident', '2019-10-29 15:33:01.000000');
INSERT INTO `claims_reports` VALUES (90, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'personal accident', '2019-10-29 15:36:19.000000');
INSERT INTO `claims_reports` VALUES (91, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'personal accident', '2019-10-29 15:38:15.000000');
INSERT INTO `claims_reports` VALUES (92, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'personal property accident', '2019-10-29 15:41:50.000000');
INSERT INTO `claims_reports` VALUES (93, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'po', 6, 14, 'motor accident', '2019-10-29 16:00:24.000000');
INSERT INTO `claims_reports` VALUES (94, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'io', 6, 14, 'motor accident', '2019-10-29 16:00:51.000000');
INSERT INTO `claims_reports` VALUES (95, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'po', 6, 14, 'motor accident', '2019-10-29 16:01:38.000000');
INSERT INTO `claims_reports` VALUES (96, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'ui', 6, 14, 'accident', '2019-10-29 16:02:20.000000');
INSERT INTO `claims_reports` VALUES (97, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'ty', 6, 14, 'accident', '2019-10-29 16:04:20.000000');
INSERT INTO `claims_reports` VALUES (98, 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Machakos', 'KBC 123J', 'rt', 6, 14, 'accident', '2019-10-29 16:05:01.000000');
INSERT INTO `claims_reports` VALUES (99, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC123J', 'ty', 6, 14, 'accident', '2019-10-29 16:06:04.000000');
INSERT INTO `claims_reports` VALUES (100, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'property damage', '2019-10-29 16:08:48.000000');
INSERT INTO `claims_reports` VALUES (101, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'personal accident', '2019-10-29 16:10:09.000000');
INSERT INTO `claims_reports` VALUES (102, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', '78', 43, 14, 'livestock', '2019-10-29 16:17:39.000000');
INSERT INTO `claims_reports` VALUES (103, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 43, 14, 'livestock', '2019-10-29 16:19:23.000000');
INSERT INTO `claims_reports` VALUES (104, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'ty', 42, 14, 'crop', '2019-10-29 16:28:09.000000');
INSERT INTO `claims_reports` VALUES (105, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', 'KBC 123J', 'po', 6, 14, 'accident', '2019-10-29 16:37:49.000000');
INSERT INTO `claims_reports` VALUES (106, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Nairobi', 'KBC 123J', 'poi', 6, 14, 'accident', '2019-10-29 16:38:43.000000');
INSERT INTO `claims_reports` VALUES (107, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'property damage', '2019-10-29 16:40:44.000000');
INSERT INTO `claims_reports` VALUES (108, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 30, 14, 'wiba', '2019-10-29 16:41:52.000000');
INSERT INTO `claims_reports` VALUES (109, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'po', 6, 14, 'personal accident', '2019-10-29 16:42:38.000000');
INSERT INTO `claims_reports` VALUES (110, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', '-o', 43, 14, 'livestock', '2019-10-29 16:43:25.000000');
INSERT INTO `claims_reports` VALUES (111, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'lk', 42, 14, 'crop', '2019-10-29 16:45:42.000000');
INSERT INTO `claims_reports` VALUES (112, 'Jane Doe', '712365478', 'janedoe@gmail.com', 'Machakos', '', 'you', 43, 14, 'livestock', '2019-10-30 16:56:23.000000');
INSERT INTO `claims_reports` VALUES (113, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Nairobi', 'KBC 123J', 'ty', 6, 14, 'windscreen', '2019-10-30 17:29:22.000000');
INSERT INTO `claims_reports` VALUES (114, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Machakos', '', 'hit and run', 6, 14, 'personal accident', '2019-10-30 19:20:06.000000');

-- ----------------------------
-- Table structure for hr_jobs_users
-- ----------------------------
DROP TABLE IF EXISTS `hr_jobs_users`;
CREATE TABLE `hr_jobs_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `invited_by` int(11) NULL DEFAULT NULL,
  `invite_token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password_reset_token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hr_jobs_users
-- ----------------------------
INSERT INTO `hr_jobs_users` VALUES (9, 'tony', 'tony', 'anthony@gmail.com', '$2y$10$41bKaflVtmX5uQff1xbpmO.CZTSrE99ldXsA4mKY1Jw/EDwsBTAMq', NULL, NULL, '5ba66107001c15480811b33027e88241f72e7d3567857d40fb1560d84f1d6c8e315d61d62a39fde0', NULL, '2019-09-30 12:19:08.534031');
INSERT INTO `hr_jobs_users` VALUES (10, 'chege', 'chege', 'chege@gmail.com', '$2y$10$IDEVyytSrpnUkFa1qXpU0Ou4IjRVVXE/8d8101niiUlMWbFN699nq', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `hr_jobs_users` VALUES (16, 'John', 'Doe', 'tony@gmail.com', '$2y$10$yZbInr5l3/k6.RGfHEPhd.WgZ/Z5XBPS50AztmdiH/ESPkWpUxbVi', NULL, NULL, '0fc14e79d23bfe1fc24e085b4a95ea6886fc4c39cc81c42810a9d738fe950bf412e0e04f945bea3b', NULL, '2019-09-28 15:59:48.440007');
INSERT INTO `hr_jobs_users` VALUES (17, 'Jane', 'Doe', 'peter@gmail.com', '$2y$10$8GYZYvl0oREWIbXCJGaiJuurRSAOvA8oof0RTOv2SDWJr0L6bSiVC', NULL, NULL, NULL, '2019-09-26 17:22:50.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (18, 'Jane', 'Doe', 'petpoer@gmail.com', '$2y$10$3NRBm3/hQyRCirfhmnZ7V.dZglOFt0ly8ZSO9QpB7WSnsl/BKZWE2', NULL, NULL, NULL, '2019-09-26 17:26:06.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (19, 'Jane', 'Doe', 'tonyadfafdfa@gmail.com', '$2y$10$pEmn7wROUEyYZ5pXIzbUg.QfO4PlL/dAruLCaBAf/6co7tviBM9Va', NULL, NULL, NULL, '2019-09-27 07:54:58.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (20, 'Jane', 'Doe', 'tonyaddfafdadafafdfa@gmail.com', '$2y$10$NKIXJiFwrjiPLAFGpPNTTuobLheF5Q2OQJa9jQhkfLjTy3zyBeVPm', NULL, NULL, NULL, '2019-09-27 07:55:16.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (21, 'peter', 'chege', 'peterchege4432@gmail.com', '$2y$10$adJVoy2h6I16omQbQwxZdu72IQ6gmp8nGZ1HqbMBi3SAlELr2Xul.', NULL, NULL, NULL, '2019-09-27 14:11:21.000000', '2019-10-22 16:27:34.824171');
INSERT INTO `hr_jobs_users` VALUES (22, '', '', 'p@gmail.com', '', 16, '5f4576b4747d20c5a3132e9171f655308c9903f152124bf31e8f48e083c638d2dfa3de430bc39ad0', NULL, '2019-10-22 12:56:24.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (25, '', '', 'pdfkljads@gmail.com', '', 16, '9e54c60cd4208e38ed6b92b1083a93ce3a9fa0704cc2687fb5cf396ef81f52b548b09008629f633b', NULL, '2019-10-22 12:59:14.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (27, '', '', 'anthonybaru@gmail.comt', '', 16, 'd9f7b860923c15a1294d2fbad76eb54767e1bab694e6b80d801ce5a6363e29342513f4515da9c2cc', NULL, '2019-10-22 13:56:32.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (28, '', '', 'anthonybaru@gmail.comtry', '', 16, 'b58663bb1b5594c7877096b9b96a1394a4a2e3a7bf0ce7d4327f9c00505f5fcdfe915dfd61fc8f12', NULL, '2019-10-22 14:01:08.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (29, '', '', 'alkdjfla@gm.cow', '', 16, 'd687f4c20a95b9e6fff371f0e291eaf3ca0b463aa289e92a3eb6a8519e353c4c5cc0cc8b277e2de3', NULL, '2019-10-22 14:26:18.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (30, '', '', 'alkdjfla@gm.cowy', '', 16, '509c52e35342244514717e80764d6ca8cfe05aec4362ccd92f3d379f1dbf03216c2c5a8d9adbc346', NULL, '2019-10-22 14:42:32.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (31, '', '', 'alkdjfla@gm.cowyfgh', '', 16, '85e9f2130fbecf2fbfe480cec97a5f9c3c67509e19a51e740562b6548726b1c0164ad0d957f46f3d', NULL, '2019-10-22 14:46:47.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (32, '', '', 'fakdfjkahakfjhaf@gmail.com', '', 16, '11923f5b38a69545e74877d5efa24ff67aec385ae3d1c118ab9c9f22cf8972be5a831072eb453e78', NULL, '2019-10-22 15:17:47.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (33, '', '', 'kafd@gm.co', '', 16, 'fe541a8293c310f8a55aeecd111f8a6944adc5594746a473716127ff5466b10f5de9f3dbe665b2de', NULL, '2019-10-22 15:19:56.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (34, '', '', 'akjdfha@gmai.co', '', 16, '6e6314a6dec12953a173c6b8d0ba7f2f68fe10763e2d8ecd368892a332ce587869ef5727dae7bf10', NULL, '2019-10-22 15:50:35.000000', NULL);
INSERT INTO `hr_jobs_users` VALUES (35, 'range', 'range', 'p@gmial.com', '$2y$10$6zqXysnyLzeewse21c7yIOon5LI3FzGeA75QiX41sxtyqYt6xNMUO', 16, 'Registred', NULL, '2019-10-22 17:34:35.000000', '2019-10-22 17:34:35.501333');
INSERT INTO `hr_jobs_users` VALUES (42, '', '', 'dman@gsh.co', '', 16, '013a9aa6ca1a56ef3ba35c306a0a99af536e62274a8e9e4908d942cbdfb6863ff6564c0211b6b2a2', NULL, '2019-10-23 11:38:40.000000', NULL);

-- ----------------------------
-- Table structure for media_centre_admin_registration
-- ----------------------------
DROP TABLE IF EXISTS `media_centre_admin_registration`;
CREATE TABLE `media_centre_admin_registration`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `added by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `invite_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of media_centre_admin_registration
-- ----------------------------
INSERT INTO `media_centre_admin_registration` VALUES (12, '18, June 2019 15:51:21', 'anthony', '$2y$10$z62EuuICa1N0AoLBLXIyu.wLcbGdOlq4sBrlLDh.wb/vWbY2mGq.W', 'tony@gmail.com', 'tony@gmail.com', NULL, '', '2019-06-20 13:00:09');
INSERT INTO `media_centre_admin_registration` VALUES (19, '20, June 2019 16:00:20', 'anthony baru', '$2y$10$nd2qnZXW6OU8wGl.R0B10OECRe0.ZFm3GI0XfNQM2x.uoJDM/6yIa', 'anthonybaru@gmail.com', 'anthony', NULL, '9e6f437264dbcd37999cfa257027c195f91c9cd1a62b05b44f396bb5f3ee4b4189080d061a274e1f', '2019-06-20 16:00:20');
INSERT INTO `media_centre_admin_registration` VALUES (21, '21, June 2019 15:56:24', '', '', 'kangethu2@gmail.com', 'anthony baru', NULL, '1e9504a53f52cbbe431c93a93c91ee2ab513989b0199b7f860d1e38db605a2d67046aeb2dd869f10', '2019-06-21 15:56:24');
INSERT INTO `media_centre_admin_registration` VALUES (22, '25, June 2019 09:58:11', '', '', 'anthony.baru@apollo.co.ke', 'anthony', NULL, '46c97c7155118403f3d5bc504e3645ffa567d24a2ced2ac3f81f222f8b2a3ecf67d7c55579133a78', '2019-06-25 09:58:11');
INSERT INTO `media_centre_admin_registration` VALUES (23, '26, September 2019 17:13:33', '', '', 'peterchege442@gmail.com', 'anthony', NULL, 'ae35b81798c5021b21a791fd7703901b0d00485100d75e2d5ba7becf128140825e5a2275b81470e7', '2019-09-26 17:13:33');

-- ----------------------------
-- Table structure for media_centre_categories
-- ----------------------------
DROP TABLE IF EXISTS `media_centre_categories`;
CREATE TABLE `media_centre_categories`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `creatorname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of media_centre_categories
-- ----------------------------
INSERT INTO `media_centre_categories` VALUES (25, '12,June 2019 09:46:59', 'Media Centre', 'tony', 'tony@gmail.com', '2019-06-24 16:36:37');
INSERT INTO `media_centre_categories` VALUES (26, '12,June 2019 10:01:42', 'CSR', 'tony', 'tony@gmail.com', '2019-06-24 16:36:37');

-- ----------------------------
-- Table structure for media_centre_posts
-- ----------------------------
DROP TABLE IF EXISTS `media_centre_posts`;
CREATE TABLE `media_centre_posts`  (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of media_centre_posts
-- ----------------------------
INSERT INTO `media_centre_posts` VALUES (2, '21,June 2019 09:42:44', '2019-06-17 11:03:34.959444', 'APA WINS AT AKI 2019 AWARDS', 'Media Centre', 'Anthony baru', 'images/posts/29eacc5ead5bd872ff681b9e2f2b28842.JPG', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 11 March 2019 &amp;ndash;&lt;/em&gt;&lt;/strong&gt;&amp;nbsp;Dr. Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up &amp;ndash; Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position &amp;ndash; Overall premium volume and Grace Akinyi Odhiambo took third position &amp;ndash; Agent of the year General insurance business.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (3, '20,June 2019 15:13:41', '2019-06-17 11:03:34.959444', 'AZURI AND APA INSURANCE INTRODUCE AFFORDABLE INCOME AND FUNERAL COVER FOR SOLAR CUSTOMERS', 'Media Centre', 'Anthony', 'images/posts/3ed9110eda1f593630b63632d96cc678a.jpg', '&lt;p&gt;&lt;strong&gt;9 November 2018, Nairobi, Kenya&lt;/strong&gt;&amp;nbsp;&amp;ndash; Azuri Technologies, a leading provider of pay-as-you-go-solar power in conjunction with APA Insurance, Kenya&amp;rsquo;s leading insurer, today announced the launch of HospiCash, a low-cost micro-insurance product for Azuri solar power customers across Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;By adding the optional HospiCash service to their pay-as-you-go home solar solution, Azuri customers benefit from the peace of mind with income cover when hospitalised, in addition to cover for funeral expenses.&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri HospiCash customers who are unable to work due to being hospitalised can claim up to KES 1,000 per day. &amp;nbsp;In addition, the policy also covers funeral expenses up to KES 10,000 upon death of the insured paid to a named beneficiary.&lt;/p&gt;\r\n\r\n&lt;p&gt;Speaking during the official launch of the HospiCash at the APA headquarters in Nairobi, Azuri CEO Simon Bransfield-Garth said: &amp;ldquo;We are delighted to be partnering with APA to further Azuri&amp;rsquo;s vision of providing consumers across Africa with products and services that have the power to truly change and improve lives.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Many off-grid consumers find it difficult to access modern financial products and so combining Azuri&amp;rsquo;s reach and APA&amp;rsquo;s affordable insurance allows customers to concentrate on making a full recovery rather than worrying about the loss of income from being hospitalised.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Apollo Group CEO, Mr. Ashok Shah said, &amp;ldquo;Off-grid consumers have been traditionally underserved by insurance providers because of the relative difficulty of access. The partnership with Azuri provides a means to open up a range of financial inclusion offerings to this important customer base.&amp;nbsp; APA Insurance is committed to providing insurance to all income groups in Kenya.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri&amp;rsquo;s HospiCash cover is being rolled out nationwide and will be available to all Azuri Quad and solar TV customers.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Azuri Quad solar home lighting system costs as little as KES49 per week and includes a 10W solar panel, four bright LED lights, USB port and connectors for mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;\r\n\r\n&lt;p&gt;AzuriTV, the first PayGo solar TV system of its kind to be launched in Africa, features a 24-inch super slim LED TV, over 100 satellite TV channels, four bright LED lights for use inside and outside the home, mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (5, '20,June 2019 10:25:40', '2019-06-17 11:03:34.959444', 'APOLLO FOUNDATION SPONSORS THE 2018 NDAKAINI MARATHON', 'Media Centre', 'Anthony', 'images/posts/5c5e12d1c3537ad1306d3314218a8fc0b.jpg', '&lt;p&gt;&lt;strong&gt;Nairobi, Kenya 21 Spetember 2018&amp;nbsp;&lt;/strong&gt;&amp;ndash; Catherine Karimi, Chief Executive Officer, APA Life Assurance (left) presents the APA Apollo Foundation&amp;rsquo;s sponsorship cheque to James Mukuna, Vice Chairman of the Ndakaini Marathon.&amp;nbsp; APA Apollo is proud to sponsor the half marathon, which is now in its 15th&amp;nbsp;year, as it enhances the foundations support for Environment and Water conservation. The marathon will take place on Saturday 6 October 2018, around the scenic fresh water dam in Murang&amp;rsquo;a County.&lt;/p&gt;\r\n\r\n&lt;p&gt;The annual marathon was started with the aim of increasing awareness particularly among Nairobi residents on the importance of conserving the capital&amp;rsquo;s main source of drinking water.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (6, '20,June 2019 09:56:29', '2019-06-20 09:56:29.079455', 'APA SUPPORTS THE MAU-EGERTON UNIVERSITY CROSS COUNTRY FOR THE SIXTH CONSECUTIVE YEAR', 'CSR', 'Anthony', 'images/posts/510d72ff6c6326d72174d1a324f514dd.jpg', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 1 February 2019 &amp;ndash;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;Egerton University Vice Chancellor, Prof. Rose A. Mwonya (left) receives a sponsorship cheque from Meena Shah, Nakuru Branch Manager, APA Insurance (centre) and Hillary Mbithi, APA Nakuru (right) for Ksh 300 000 for the 6th&amp;nbsp;Mau Egerton University Cross Country. &amp;nbsp;This is the sixth consecutive year the company has sponsored the Mau-Egerton University Cross Country, which will take place on Saturday 9 February 2019.&amp;nbsp; The Mau-Egerton University Cross country was created to raise funds for rehabilitation of Mau ecosystem and Njoro River.&lt;/p&gt;\r\n\r\n&lt;p&gt;Over the past five years APA APOLLO has also partnered with Egerton University to plant indigenous trees at the Ngongeri Park as part of restoration of the riparian forest vegetation along the middle section on Njoro River.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (7, '20,June 2019 10:10:18', '2019-06-20 10:10:18.428516', 'APA CONTUNIES TO INVEST IN EDUCATION FOR CHELETA PRIMARY SCHOOL STUDENTS', 'CSR', 'Anthony', 'images/posts/2f3efcb09e5f6373e23d625b5d290c4a.jpg', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya 11 January 2018 &amp;ndash;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;Stacy Kavere, Best Girl (left) and Amos Basweti, Best Boy (right) proudly receive their cheque from Catherine Karimi, Chief Executive Officer, APA Life for their 2018 school fees.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA APOLLO have &amp;nbsp;been sponsoring the top boy and girl students from the school since 2006 and this saw the school average performance improve from a mean grade of 141 marks to 308 marks, for their secondary education. &amp;nbsp;The bursary currently has ten students in various learning institutions around the country.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (8, '20,June 2019 10:21:47', '2019-06-20 10:12:13.799828', 'APA APOLLO FOUNDATION PROMOTES SPORTING ACTIVITIES BY SUPPORTING THE RUNDA YOUTH SPORTS ASSOCIATION (RYSA) FOOTBALL TEAM.', 'CSR', 'Anthony', 'images/posts/8a895c7194fbd11dff43fb66cf939fece.jpg', '&lt;p&gt;Football is the core sporting activity of RYSA. Through football, RYSA has been able to bring together over 800 young people from Githogoro and Huruma slums&lt;/p&gt;\r\n\r\n&lt;p&gt;The foundation sponsors the fees for RYSA to participate in various leagues and provides the football kits, logistics and team allowances.&lt;/p&gt;\r\n\r\n&lt;p&gt;Though the partnership RYSA has excelled in football, today RYSA participates annually in&amp;nbsp;&lt;strong&gt;Football Kenya Federation (FKF)&amp;nbsp;&lt;/strong&gt;leagues around Nairobi. As a result of excelling in football, RYSA participates annually in&amp;nbsp;&lt;strong&gt;Football Kenya Federation (FKF)&lt;/strong&gt;&amp;nbsp;leagues around Nairobi.&lt;/p&gt;\r\n\r\n&lt;p&gt;At the last edition (2015), RYSA Senior Team was ranked 5th&amp;nbsp;at the Nairobi County Branch of the Football Kenya Federation (FKF) rankings. They are now (2016) elevated and playing in the Nairobi Division One Super8/ Sportpesa League&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA/Apollo organises tournaments for the team in order to boost and continue to nurture the soccer talents and positively engage the youth in Mji wa Huruma and Githongoro villages.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (9, '21,June 2019 09:59:55', '2019-06-21 09:18:00.946371', 'THE APA APOLLO GROUP RESULTS REFLECT A SIGNIFICANT IMPROVEMENT IN OVERALL EARNINGS.', 'Media Centre', 'Anthony baru', 'images/posts/91fc249b136eec767eb86398ad0ee7a81.jpg', '&lt;p&gt;&lt;strong&gt;Financial Highlights&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;The Apollo Group, profit before tax, increased by 9% to Ksh 947 Million&lt;/li&gt;\r\n	&lt;li&gt;The Group grew its asset base to Ksh 24 Billion&lt;/li&gt;\r\n	&lt;li&gt;The Group&amp;rsquo;s premium income increased by 14% to Ksh 11 Billion&lt;/li&gt;\r\n	&lt;li&gt;The Group&amp;rsquo;s largest subsidiary, APA Insurance, recorded a strong performance with Gross Written Premiums (GWP) of Ksh 9.56 Billion&lt;/li&gt;\r\n	&lt;li&gt;Net Interest credited at 10.25% on Pension schemes with APA Life Assurance&lt;/li&gt;\r\n	&lt;li&gt;APA&amp;rsquo;s Capital Adequacy Ratio (CAR) at 212%&lt;/li&gt;\r\n	&lt;li&gt;APA&amp;rsquo;s Shareholders to receive Ksh 600 Million dividend (2017 Ksh1.5 billion).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;The Apollo Group, profit before tax, increased by 9% to Ksh 947 million, reflecting improved operational performance. The group registered a 14% increase in premiums from Ksh 9.6 billion to Ksh 11.0 billion and grew its asset base from Ksh 23 billion in 2017 to Ksh 24 billion in 2018. APA Insurance grew by 15% reporting significant growth in its Gross Written Premiums (GWP) in 2018 to Ksh 9.56 Billion from Ksh 8.30 billion in 2017. This is a 15% year on year growth against the insurance industry estimated growth of 4% and now makes APA the third largest General Insurer in Kenya. APA posted Ksh 677 million in profit before tax. The total claims settled by the APA Insurance during the year were KSh6.54 billion compared to Ksh 6.38 billion in 2017.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA Life Assurance has declared 10.25% to pension contributors which is one of the highest in the industry.&lt;/p&gt;\r\n\r\n&lt;p&gt;Commenting on the results, Apollo Group CEO Ashok Shah said: &amp;ldquo;In 2018 the Group has delivered concrete results against the backdrop of a difficult business environment. We have achieved a growth in premiums and in solid investment returns, when many of our peers have shown losses in both operational and investment returns&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mr. Shah added: &amp;ldquo;APA Insurance is still the flagship and continues to grow and provides healthy dividends to the group with very strong ratios. The Group will continue to focus on growing APA Life Assurance and expanding the APA Insurance&amp;rsquo;s general business in Uganda. This indeed is a testimony of our commitment over the long haul in this market. It is our vision to continue being at the forefront in insurance and investments in Kenya and other chosen markets. The Board and Management have agreed that the refreshed strategy of Insuring Happiness, with a greater focus on customer centricity, will position the company for further significant growth&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Following the impressive results, APA has declared a Ksh 600 million dividend to its shareholders.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (10, '21,June 2019 09:27:52', '2019-06-21 09:27:52.591329', 'APA SPREADS HAPPINESS TO SHOPPERS AT TWO RIVERS MALL ON WORLD HAPPIENSS DAY 2019', 'Media Centre', 'Anthony baru', 'images/posts/a9dda57107ad4519936291c07ff6af81.jpg', '&lt;p&gt;Ashok Shah, The Apollo Group CEO, (left) and the APA Insurance team spread happiness to shopper at Two Rivers Mall on World Happiness Day.&amp;nbsp; The Mall goers where surprised with random acts of kindness and received prizes including household goods, food vouchers, shopping vouchers and holiday trips.&lt;/p&gt;\r\n\r\n&lt;p&gt;Kenya ranked 121 on the 2019 World Happiness Report compared to 132 in 2018.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Let&amp;#39;s do whatever we can to spread more happiness to others today and every day,&amp;rdquo; said Ashok Shah, The Apollo Group CEO. &amp;ldquo;Because when we&amp;#39;re together everything&amp;#39;s better&amp;rdquo;.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (11, '28,June 2019 15:00:12', '2019-06-25 11:49:20.355867', 'MARY KIMOTHO Mâ€™MUKINDIA APPOINTED TO APA BOARDS', 'Media Centre', 'Anthony', 'images/posts/11a19e0944a795562881675405b3316c03.jpg', '&lt;p&gt;The Board of Directors of APA Insurance and APA Life is pleased to announce the appointment of Mary Kimotho M&amp;rsquo;Mukindia to&lt;strong&gt; &lt;/strong&gt;Board of Directors with effect from 1 March 2019.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Apollo Group CEO, Ashok Shah, stated, &amp;ldquo;I am extremely pleased to welcome Mary to the boards of APA Insurance and APA Life.&amp;nbsp; A highly respected and qualified Kenyan that I have learnt to know and appreciate over the years.&amp;nbsp; Her foresight, experience and competent leadership qualities will guide the Board at this very exciting time in our business.&amp;nbsp; I look forward to support her as the Group CEO and I wish her all the best in this endeavour.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;The new Board member, Mary Kimotho M&amp;rsquo;Mukindia added, &amp;quot;I am honoured and thrilled to join the boards of two of Kenya leading insurance companies which are part of the Apollo Group.&amp;nbsp; I look forward to working with this exceptional team to deliver the best results for our shareholders and clients.&amp;nbsp; I wish to thank Ashok for his distinguished service and leadership in getting the Group to this point, and look forward to his and the other board members continued guidance.&amp;rdquo;&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (12, '25,June 2019 11:52:18', '2019-06-25 11:52:18.807459', 'APA LIFE WINS AT AKI 2019 AWARDS', 'Media Centre', 'Anthony', 'images/posts/9eacc5ead5bd872ff681b9e2f2b28842.JPG', '&lt;p&gt;Dr Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life Assurance (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up - Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position - Overall premium volume and Grace Akinyi Odhiambo took third position - Agent of the year General insurance business.&lt;/p&gt;', 0);
INSERT INTO `media_centre_posts` VALUES (13, '30,June 2019 09:02:03', '2019-06-25 12:31:15.597123', 'COST BENEFITS A BIG ATTRACTION IN GENERIC ROUTE TO PRESCRIPTIONS VINOD BHARATAN, CHIEF EXECUTIVE OFFICER, APA INSURANCE.', 'Media Centre', 'Anthony', 'images/posts/1379ebf16d6a9ae0e860c8834db4735b24.jpg', '&lt;p&gt;Opting for a generic drug can give you the same benefits as branded medicines &amp;ndash; but at a considerably lower cost.&amp;nbsp;It is no secret that Kenyan consumers are paying over the odds for prescription drugs. Now people are increasingly turning to generics to try to reduce their monthly bill for medication. But what are they and do they suit everyone?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;What are generics?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;When a new drug is produced, it is protected by its patent for a certain number of years. Once this ceases, any drug manufacturer can produce their own equivalent, which is typically sold at a significantly lower price, given that this manufacturer hasn&amp;rsquo;t incurred all the costs associated with developing and creating the drug. These are known as generics.&lt;/p&gt;\r\n\r\n&lt;p&gt;Health financiers are now encouraging doctors and pharmacists to substitute a brand name drug for its generic equivalent, provided that it is included on a list published by the Ministry of Health.&lt;/p&gt;\r\n\r\n&lt;p&gt;So, for example, if you take a branded medication that has been approved for generic substitution, your doctor or pharmacist will automatically make the switch.&amp;nbsp; Doing so will reduce the cost to the patient.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, the only time a pharmacist can offer you a branded drug is if the doctor prescribing the medication writes &amp;ldquo;do not substitute&amp;rdquo; on the prescription.&lt;/p&gt;\r\n\r\n&lt;p&gt;The legislation is very clear that the prescribing doctor must write it in their own handwriting where it is deemed there is a clinical exemption.&amp;nbsp; This means that in certain circumstances &amp;ndash; such as those outlined below &amp;ndash; a patient can continue to use the branded medication under their existing scheme.&lt;/p&gt;\r\n\r\n&lt;p&gt;If, however, they opt to stick with the branded drug simply because they are familiar with it and fear change, they may have to pay the difference themselves.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;But are generics always equivalent?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Typically, there is no risk to a patient in switching from a brand name drug to its generic equivalent. However, there may be exceptions.&lt;/p&gt;\r\n\r\n&lt;p&gt;Although generic drugs have the same active ingredient as branded drugs, they are composed differently. This means that they may have different bioavailability from either the branded drug or, indeed, other generic drugs of the same class.&amp;nbsp; Typically, this won&amp;rsquo;t affect the patient in terms of efficacy and safety, but in drugs with a narrow therapeutic index, this could potentially lead to adverse effects.&lt;/p&gt;\r\n\r\n&lt;p&gt;It is therefore important to use generic drugs as substitutes only if they have been shown to have similar bioavailability to the branded drug and have been approved for use in Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Therapeutic efficacy&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Prescribers need to be cognisant of theoretical changes in therapeutic efficacy and monitor for any changes.&amp;nbsp; For example, the colour of the tablet may change which can lead to confusion and may lead to poor compliance.&lt;/p&gt;\r\n\r\n&lt;p&gt;Prescribers should again ensure patients are aware and understand the changes being made to their medication. In any case, if you&amp;rsquo;re in doubt about the suitability of generic medication, check with your GP or whoever prescribes your medication for reassurance, or call into your local pharmacist.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Looking for low-cost generics&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Generic alternatives too many drugs should be available in your local pharmacy so you can always ask for the generic substitution for any medication you may be taking.&lt;/p&gt;\r\n\r\n&lt;p&gt;If the drug is still under patent it won&amp;rsquo;t be available, or it may turn out to be unsuitable for your needs, but it&amp;rsquo;s still worth asking about.&lt;/p&gt;', 1);
INSERT INTO `media_centre_posts` VALUES (14, '30,June 2019 08:43:57', '2019-06-25 12:42:21.498131', 'GOVERNMENT OF KENYA PARTNERS WITH INSURERS TO MAKE RECORD CROP INSURANCE PAY-OUTS', 'Media Centre', 'Anthony', 'images/posts/1493335678cc6658fe268d5382396d7db8.jpg', '&lt;p&gt;Ksh 25.5 million on tap for 7,025 smallholder assorted crop farmers in 21 counties in Kenya. This is under the Kenya Agricultural Insurance Program (KAIP) where the government of Kenya through its State Department of Crop Development and a consortium of six insurance companies headed by APA insurance.&lt;/p&gt;\r\n\r\n&lt;p&gt;Climate change is a hard-hitting reality that has thrown Kenya smallholder farmers into anxiety mode. The weather patterns have drastically changed from the normal where there use to be a regular and predictable downpour. Planting periods have shifted and farmers are no longer sure of productivity. This jeopardises our food security and national planning.&lt;/p&gt;\r\n\r\n&lt;p&gt;To curb the challenges of production uncertainties, the Kenyan government through its state department of crop development partnered with six insurance companies led by APA Insurance to caution smallholder farmers against climate change related risk leading to reduced yields.&lt;/p&gt;\r\n\r\n&lt;p&gt;The consortium is composed of six insurance companies; APA, Jubilee, CIC, UAP, Kenya orient and AMACO. This program started in the year 2016 with three counties (Bungoma, Nakuru and Embu) under the support of the World Bank. The program has grown to 21 counties as summarised in the 2018 business below.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Government of Kenya Partners with Insurers to Make Record Crop Insurance Pay-outs &quot; src=&quot;http://localhost/cms/upload/91835652.png&quot; style=&quot;height:540px; width:609px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;25.5 million will be paid to 7,025 smallholder farmers beneficiaries across the 8 of 21 counties in Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA Insurance CEO, Vinod Bharatan lauded the government for supporting the program by providing subsidies for the premiums, adding that this will contribute towards safeguarding farmers&amp;rsquo; livelihoods that are often threatened by adverse climatic conditions.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Smallholder farmers are the backbone of our agricultural production. However, in recent years, they have had to bear huge risk that comes with effects of climate change. The weather is no longer predictable and natural disaster have become more frequent, leading to huge crop losses. We aim to address this challenge to livelihoods, our bread basket and our economy,&amp;rdquo; Mr Bharatan said.&lt;/p&gt;\r\n\r\n&lt;p&gt;The just concluded 2019 enrolment into the program has expanded to 27 counties with a focus of reaching the 33 active crop arable counties in 2020. The program is looking at insuring 1 million farmers by 2020.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Area Yield Index Insurance covers farmers based on the condition of harvest history of the unit area of insurance where the farm falls.&lt;/p&gt;', 1);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_09_02_105005_adding_timestamps_to_products_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_09_02_105708_adding_timestamp_columns_to_tables_without_timestamps', 2);

-- ----------------------------
-- Table structure for old_all_risk_item
-- ----------------------------
DROP TABLE IF EXISTS `old_all_risk_item`;
CREATE TABLE `old_all_risk_item`  (
  `all_risk_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `customer_role` set('Owner','Tenant') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` int(11) NULL DEFAULT NULL,
  `serial_no` int(65) NOT NULL,
  `item_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`) USING BTREE,
  INDEX `IX_Relationship29`(`item_id`) USING BTREE,
  INDEX `all_risk_id`(`all_risk_id`) USING BTREE,
  INDEX `section_id`(`section_id`) USING BTREE,
  INDEX `item_type`(`item_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('anthonbaru@gmail.com', '$2y$10$18w4QBe2aAcZeFT.dE5piuP.y3weetjJt.5ISoEqPoMHO7rI035vm', '2019-09-03 10:31:32');
INSERT INTO `password_resets` VALUES ('anthonybaru@gmail.com', '$2y$10$OgCbEI39kJHuQel8qRv1denaxRb4.gK7XV9CTWSIDCd9OSQKmw6Uq', '2019-09-03 12:51:54');

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE,
  UNIQUE INDEX `invoice_no`(`invoice_no`) USING BTREE,
  INDEX `Relationship2`(`user_id`) USING BTREE,
  CONSTRAINT `user id to payment relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pr_dp_allrisks
-- ----------------------------
DROP TABLE IF EXISTS `pr_dp_allrisks`;
CREATE TABLE `pr_dp_allrisks`  (
  `allrisk_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cover_id` int(11) NULL DEFAULT NULL,
  `serial_number` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `make_model` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `item_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` double(20, 0) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`allrisk_id`) USING BTREE,
  INDEX `cover_id`(`cover_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `pr_dp_all_risks to users relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pr_dp_allrisks
-- ----------------------------
INSERT INTO `pr_dp_allrisks` VALUES (1, 1665378265, NULL, '7899564', 'toshiba', 'laptop', 200000, '2019-09-04 12:01:10.000000', '2019-09-04 12:01:10.000000');
INSERT INTO `pr_dp_allrisks` VALUES (2, 1665378265, NULL, 'JCS8965', 'JVC', 'RADIO', 80000, '2019-09-13 10:32:45.000000', '2019-09-13 10:32:45.000000');
INSERT INTO `pr_dp_allrisks` VALUES (3, 1665378265, NULL, '4568', 'SONY', 'ITEM2', 20000, '2019-09-13 15:31:21.562876', '2019-09-13 15:31:21.562876');

-- ----------------------------
-- Table structure for pr_dp_calculator_customer_quotations
-- ----------------------------
DROP TABLE IF EXISTS `pr_dp_calculator_customer_quotations`;
CREATE TABLE `pr_dp_calculator_customer_quotations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `property` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `premises` bigint(20) NULL DEFAULT NULL,
  `contents` bigint(20) NULL DEFAULT NULL,
  `all_risk` bigint(20) NULL DEFAULT NULL,
  `domestic_employee` bigint(20) NULL DEFAULT NULL,
  `liability` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pr_dp_calculator_customer_quotations
-- ----------------------------
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (1, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'owner', 800000, NULL, NULL, NULL, NULL, '2019-09-05 16:37:13.000000', '2019-09-05 16:37:13.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (2, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'owner', 800000, NULL, NULL, NULL, NULL, '2019-09-05 16:37:44.000000', '2019-09-05 16:37:44.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (3, 'John Doe', '712345678', 'johndoe@gmail.com', 'Nairobi', 'tenant', NULL, 8000000, 8000000, NULL, NULL, '2019-09-05 16:53:09.000000', '2019-09-05 16:53:09.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (4, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'tenant', NULL, 750000, 15000, NULL, NULL, '2019-09-05 16:54:25.000000', '2019-09-05 16:54:25.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (5, 'John Doe', '712345678', 'johndoe@gmail.com', 'Nakus', 'tenant', NULL, 8000000, 89000, 800000, 900000, '2019-09-05 17:25:50.000000', '2019-09-05 17:25:50.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (6, 'John Doe', '712345678', 'johndoe@gmail.com', 'na', 'owner', 5100000, NULL, NULL, NULL, NULL, '2019-09-06 08:57:04.000000', '2019-09-06 08:57:04.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (7, 'John Doe', '712345678', 'johndoe@gmail.com', 'na', 'owner', 5100000, NULL, NULL, NULL, NULL, '2019-09-06 08:57:11.000000', '2019-09-06 08:57:11.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (8, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'tenant', NULL, 500000000, NULL, NULL, NULL, '2019-09-06 15:45:11.000000', '2019-09-06 15:45:11.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (9, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'tenant', NULL, 500000000, NULL, NULL, NULL, '2019-09-06 15:45:53.000000', '2019-09-06 15:45:53.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (10, 'GILBERT NJOROGE', '0700658856', 'P@gmail.cm', 'Nairobi', 'owner', 80000000, 95555, 5222, NULL, NULL, '2019-09-13 10:31:07.000000', '2019-09-13 10:31:07.000000');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (11, 'name', '7006588564', 'anthonybaru@gmail.com', 'Mombasa', 'tenant', NULL, 464651841, 50000, 56666, 65456, '2019-09-13 15:28:43.979475', '2019-09-13 15:28:43.979475');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (12, 'John Doe', '712345678', 'johndoe@gmail.com', 'nairobi', 'owner', 300000, NULL, NULL, 200000, NULL, '2019-09-16 09:29:18.188682', '2019-09-16 09:29:18.188682');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (13, 'name', '7006588564', 'p@gmail.com', 'Nairobi', 'owner', 20000000, NULL, NULL, 30000, NULL, '2019-09-17 14:46:31.130522', '2019-09-17 14:46:31.130522');
INSERT INTO `pr_dp_calculator_customer_quotations` VALUES (14, 'John Doe', '0712345678', 'johndoe@gmail.com', 'Mombasa', 'owner', 8000000, 250000, 200000, 5000000, NULL, '2019-09-24 11:52:54.638632', '2019-09-24 11:52:54.638632');

-- ----------------------------
-- Table structure for pr_dp_contents
-- ----------------------------
DROP TABLE IF EXISTS `pr_dp_contents`;
CREATE TABLE `pr_dp_contents`  (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `item_description` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `item_value` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`content_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pr_dp_contents
-- ----------------------------
INSERT INTO `pr_dp_contents` VALUES (1, NULL, 'laptop', 60000, '2019-09-04 09:52:50.000000', '2019-09-04 09:52:50.000000');
INSERT INTO `pr_dp_contents` VALUES (2, NULL, 'bed', 60000, '2019-09-04 09:52:50.000000', '2019-09-04 09:52:50.000000');
INSERT INTO `pr_dp_contents` VALUES (3, 1665378265, 'laptop', 80000, '2019-09-04 11:59:07.000000', '2019-09-04 11:59:07.000000');
INSERT INTO `pr_dp_contents` VALUES (4, 1665378265, 'furniture', 90000, '2019-09-04 11:59:07.000000', '2019-09-04 11:59:07.000000');
INSERT INTO `pr_dp_contents` VALUES (5, 1665378265, 'naem', 9555, '2019-09-04 11:59:07.000000', '2019-09-04 11:59:07.000000');
INSERT INTO `pr_dp_contents` VALUES (6, 1665378265, 'COUCH', 500000, '2019-09-13 10:32:28.000000', '2019-09-13 10:32:28.000000');
INSERT INTO `pr_dp_contents` VALUES (7, 1665378265, 'NAE', 80000, '2019-09-13 15:30:41.669629', '2019-09-13 15:30:41.669629');
INSERT INTO `pr_dp_contents` VALUES (8, 1665378265, 'NAME', 96522, '2019-09-13 15:30:41.768916', '2019-09-13 15:30:41.768916');

-- ----------------------------
-- Table structure for pr_dp_covers
-- ----------------------------
DROP TABLE IF EXISTS `pr_dp_covers`;
CREATE TABLE `pr_dp_covers`  (
  `cover_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cover` double NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User Foreign Key ',
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`cover_id`) USING BTREE,
  INDEX `IX_Relationship3`(`user_id`) USING BTREE,
  INDEX `IX_Relationship4`(`category_id`, `product_id`) USING BTREE,
  INDEX `cover_id`(`cover_id`, `user_id`) USING BTREE,
  INDEX `Cover must have a product`(`product_id`) USING BTREE,
  INDEX `end_date`(`end_date`) USING BTREE,
  INDEX `item_id`(`item_id`) USING BTREE,
  CONSTRAINT `Cover must have a product` FOREIGN KEY (`product_id`) REFERENCES `products_categories` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pr_dp_covers_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `pr_dp_premises` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pr_dp_covers_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `pr_dp_contents` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user id to cover relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pr_dp_domestics
-- ----------------------------
DROP TABLE IF EXISTS `pr_dp_domestics`;
CREATE TABLE `pr_dp_domestics`  (
  `domestic_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `employee_type` enum('Indoors Staff','Gardener','Stablemen','Chauffeurs','Watchmen') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number_of_employees` int(11) NOT NULL,
  `annual_salary` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`domestic_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `domestics to users relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pr_dp_general_informations
-- ----------------------------
DROP TABLE IF EXISTS `pr_dp_general_informations`;
CREATE TABLE `pr_dp_general_informations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `insurer_decline` tinyint(1) NOT NULL,
  `insurer_decline_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `special_terms` tinyint(1) NULL DEFAULT NULL,
  `special_terms_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cancelled_refused_cover` tinyint(1) NOT NULL,
  `cancelled_refused_cover_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `increased_premium` tinyint(1) NOT NULL,
  `increased_premium_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sustained_loss_from_mentioned_perils` tinyint(1) NOT NULL,
  `sustained_loss_from_mentioned_perils_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pr_dp_general_informations_ibfk_1`(`user_id`) USING BTREE,
  CONSTRAINT `user id to general info` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pr_dp_general_informations
-- ----------------------------
INSERT INTO `pr_dp_general_informations` VALUES (1, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-02 12:23:47.000000', '2019-09-02 12:23:47.000000');
INSERT INTO `pr_dp_general_informations` VALUES (2, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-02 12:30:10.000000', '2019-09-02 12:30:10.000000');
INSERT INTO `pr_dp_general_informations` VALUES (3, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-02 15:09:58.000000', '2019-09-02 15:09:58.000000');
INSERT INTO `pr_dp_general_informations` VALUES (4, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-04 12:24:09.000000', '2019-09-04 12:24:09.000000');
INSERT INTO `pr_dp_general_informations` VALUES (5, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-06 10:52:05.000000', '2019-09-06 10:52:05.000000');
INSERT INTO `pr_dp_general_informations` VALUES (6, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-13 10:33:08.000000', '2019-09-13 10:33:08.000000');
INSERT INTO `pr_dp_general_informations` VALUES (7, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-13 15:31:41.498289', '2019-09-13 15:31:41.498289');
INSERT INTO `pr_dp_general_informations` VALUES (8, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-16 09:52:35.334885', '2019-09-16 09:52:35.334885');

-- ----------------------------
-- Table structure for pr_dp_premises
-- ----------------------------
DROP TABLE IF EXISTS `pr_dp_premises`;
CREATE TABLE `pr_dp_premises`  (
  `premises_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_role` set('Owner','Tenant') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `user_id` int(255) NOT NULL,
  `location` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dwelling_wall` int(11) NOT NULL,
  `dwelling_roof` int(11) NULL DEFAULT NULL,
  `floors` int(11) NOT NULL,
  `outbuilding_wall` int(11) NULL DEFAULT NULL,
  `outbuilding_roof` int(11) NULL DEFAULT NULL,
  `business` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `business_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dwelling` enum('private','self-contained','room-not-self-contained') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sole_occupation` tinyint(1) NOT NULL,
  `for_hire` tinyint(1) NULL DEFAULT NULL,
  `thirty_day_inoccupancy` tinyint(1) NOT NULL,
  `thirty_day_inoccupancy_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `seven_day_inoccupancy` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `seven_day_inoccupancy_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `good_state_of_repair` tinyint(1) NOT NULL,
  `burglar_proof` tinyint(1) NOT NULL,
  `burglar_proof_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `other_sec_arrangement` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `premises_value` double NULL DEFAULT NULL,
  `cover_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`premises_id`) USING BTREE,
  INDEX `Relationship18`(`customer_role`) USING BTREE,
  INDEX `Relationship7`(`dwelling_wall`) USING BTREE,
  INDEX `outbuilding walll material`(`outbuilding_wall`) USING BTREE,
  INDEX `outbuilding roof`(`outbuilding_roof`) USING BTREE,
  INDEX `building_id`(`premises_id`, `customer_role`) USING BTREE,
  INDEX `cover_id`(`cover_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `dwelling_roo`(`dwelling_roof`) USING BTREE,
  CONSTRAINT `pr_dp_premises_ibfk_1` FOREIGN KEY (`dwelling_wall`) REFERENCES `ref_wall_materials` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pr_dp_premises_ibfk_2` FOREIGN KEY (`dwelling_roof`) REFERENCES `ref_roof_materials` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pr_dp_premises_ibfk_3` FOREIGN KEY (`outbuilding_roof`) REFERENCES `ref_outbuilding_roofs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pr_dp_premises_ibfk_4` FOREIGN KEY (`outbuilding_wall`) REFERENCES `ref_outbuilding_walls` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `premises to users relationship` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pr_dp_premises
-- ----------------------------
INSERT INTO `pr_dp_premises` VALUES (5, '', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, NAIROBI', 1, 1, 5, 2, 1, '1', 'Shops', 'self-contained', 1, NULL, 0, NULL, '0', NULL, 0, 0, NULL, 'Guards', 5000000, NULL, '2019-09-02 12:49:32.000000', '2019-09-02 12:49:32.000000');
INSERT INTO `pr_dp_premises` VALUES (6, '', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, NAks', 2, 1, 2, 1, 1, '1', 'Shops', 'self-contained', 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, 'Guards', 5000000, NULL, '2019-09-02 14:01:27.000000', '2019-09-02 14:01:27.000000');
INSERT INTO `pr_dp_premises` VALUES (7, '', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLAND Area', 2, 2, 8, 2, 2, '1', 'Saloon.', 'self-contained', 0, 0, 0, NULL, '0', NULL, 0, 0, NULL, 'Dogs', 5000000, NULL, '2019-09-02 14:04:00.000000', '2019-09-02 14:04:00.000000');
INSERT INTO `pr_dp_premises` VALUES (8, '', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLAND Nanyuki', 1, 1, 1, 1, 1, '1', 'Saloon.', 'self-contained', 0, 0, 0, NULL, NULL, '0', 0, 0, NULL, 'Dogs', 5000000, NULL, '2019-09-02 14:10:26.000000', '2019-09-02 14:10:26.000000');
INSERT INTO `pr_dp_premises` VALUES (9, 'Owner', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLAND Niavasha', 1, 1, 1, 1, 1, '1', 'Saloon.', 'self-contained', 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, 'Dogs', 5000000, NULL, '2019-09-02 14:24:39.000000', '2019-09-02 14:24:39.000000');
INSERT INTO `pr_dp_premises` VALUES (10, 'Owner', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, COAST', 1, 1, 6, 1, 2, '0', NULL, 'self-contained', 0, 0, 0, NULL, NULL, '0', 0, 0, NULL, NULL, 500000, NULL, '2019-09-04 11:58:31.000000', '2019-09-04 11:58:31.000000');
INSERT INTO `pr_dp_premises` VALUES (11, 'Owner', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLAN', 1, 2, 1, NULL, NULL, '0', NULL, 'room-not-self-contained', 0, 0, 0, NULL, '0', NULL, 0, 0, NULL, NULL, 300000, NULL, '2019-09-04 19:47:45.000000', '2019-09-04 19:47:45.000000');
INSERT INTO `pr_dp_premises` VALUES (12, 'Owner', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, Marsabit', 1, 2, 1, 2, 2, '0', NULL, 'room-not-self-contained', 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, 5100000, NULL, '2019-09-06 09:06:04.000000', '2019-09-06 09:06:04.000000');
INSERT INTO `pr_dp_premises` VALUES (13, 'Tenant', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, THIKA', 2, 1, 2, 1, NULL, '0', NULL, 'room-not-self-contained', 0, 0, 0, NULL, NULL, '0', 0, 0, NULL, NULL, 500000, NULL, '2019-09-13 15:30:20.220806', '2019-09-13 15:30:20.220806');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  UNIQUE INDEX `product_name`(`product_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (6, 'MOTOR PRIVATE', '2019-09-11 11:37:40', '2019-09-11 11:37:44');
INSERT INTO `products` VALUES (7, 'MOTOR CYCLE', '2019-09-11 11:38:07', '2019-09-11 11:38:11');
INSERT INTO `products` VALUES (8, 'PEDAL CYCLE', '2019-09-11 11:38:24', '2019-09-11 11:38:28');
INSERT INTO `products` VALUES (9, 'TRAVEL INSURANCE', '2019-09-11 11:38:55', '2019-09-11 11:38:58');
INSERT INTO `products` VALUES (10, 'HOME COVER/DOMESTIC PACKAGE', '2019-09-11 11:39:25', '2019-09-11 11:39:29');
INSERT INTO `products` VALUES (11, 'PET', '2019-09-11 11:39:52', '2019-09-11 11:39:54');
INSERT INTO `products` VALUES (12, 'PERSONAL ACCIDENT', '2019-09-11 11:40:19', '2019-09-11 11:40:22');
INSERT INTO `products` VALUES (13, 'GOLFERS', '2019-09-11 11:40:37', '2019-09-11 11:40:40');
INSERT INTO `products` VALUES (14, 'FAMILY HEALTH COVER/JAMII PLUS', '2019-09-11 11:41:10', '2019-09-11 11:41:13');
INSERT INTO `products` VALUES (15, 'FAMILY HEALTH COVER/AFYA NAFUU', '2019-09-11 11:41:31', '2019-09-11 11:41:34');
INSERT INTO `products` VALUES (16, 'CANCER CARE/FEMINA', '2019-09-11 11:42:13', '2019-09-11 11:42:17');
INSERT INTO `products` VALUES (17, 'ER CARD', '2019-09-11 11:42:29', '2019-09-11 11:42:33');
INSERT INTO `products` VALUES (18, 'FIXED SAVINGS PLAN/IMARIKA', '2019-09-11 11:44:47', '2019-09-11 11:44:50');
INSERT INTO `products` VALUES (19, 'ANTICIPATED SAVINGS/AKIBA HALISI', '2019-09-11 11:45:37', '2019-09-11 11:45:40');
INSERT INTO `products` VALUES (20, 'EDUCATION PLAN/ELIMU', '2019-09-11 11:46:14', '2019-09-11 11:46:18');
INSERT INTO `products` VALUES (21, 'HOSPITALISATION LOSS OF INCOME/HOSICARE', '2019-09-11 11:46:51', '2019-09-11 11:46:55');
INSERT INTO `products` VALUES (22, 'FUNERAL EXPENSE COVER/PUMZISHA', '2019-09-11 11:51:41', '2019-09-11 11:51:46');
INSERT INTO `products` VALUES (23, 'LIFE COVER/TERM ASSURANCE', '2019-09-11 11:52:56', '2019-09-11 11:53:00');
INSERT INTO `products` VALUES (24, 'INDIVUDUAL PENSION PLAN/IPP', '2019-09-11 11:53:03', '2019-09-11 11:53:15');
INSERT INTO `products` VALUES (25, 'MORTGAGE PROTECTION', '2019-09-11 11:53:22', '2019-09-11 11:53:24');
INSERT INTO `products` VALUES (26, 'MOTOR COMMERCIAL', '2019-09-11 11:59:08', '2019-09-11 11:59:10');
INSERT INTO `products` VALUES (27, 'MOTOR CYCLE/PSV', '2019-09-11 11:59:14', '2019-09-11 11:59:13');
INSERT INTO `products` VALUES (28, 'MOTOR TRADE', '2019-09-11 11:59:16', '2019-09-11 11:59:17');
INSERT INTO `products` VALUES (29, 'FIRE AND PERILS', '2019-09-11 11:59:20', '2019-09-11 11:59:19');
INSERT INTO `products` VALUES (30, 'WIBA', '2019-09-11 11:59:22', '2019-09-11 11:59:23');
INSERT INTO `products` VALUES (31, 'THEFT', '2019-09-11 11:59:29', '2019-09-11 11:59:28');
INSERT INTO `products` VALUES (32, 'ENGINEERING', '2019-09-11 11:59:31', '2019-09-11 11:59:32');
INSERT INTO `products` VALUES (33, 'LIABILITY', '2019-09-11 11:59:36', '2019-09-11 11:59:36');
INSERT INTO `products` VALUES (34, 'MARINE', '2019-09-11 11:59:38', '2019-09-11 11:59:39');
INSERT INTO `products` VALUES (35, 'AVIATION', '2019-09-11 11:59:41', '2019-09-11 11:59:43');
INSERT INTO `products` VALUES (36, 'SPECIAL PACKAGE COVERS', '2019-09-11 11:59:43', '2019-09-11 11:59:44');
INSERT INTO `products` VALUES (37, 'GOODS IN TRANSIT/GIT', '2019-09-11 11:59:48', '2019-09-11 11:59:47');
INSERT INTO `products` VALUES (38, 'BONDS', '2019-09-11 11:59:49', '2019-09-11 11:59:50');
INSERT INTO `products` VALUES (39, 'PLATE GLASS', '2019-09-11 11:59:52', '2019-09-11 11:59:51');
INSERT INTO `products` VALUES (40, 'HEALTH CORPORATE', '2019-09-11 11:59:53', '2019-09-11 11:59:54');
INSERT INTO `products` VALUES (41, 'COMMERCIAL LIFE', '2019-09-11 11:59:56', '2019-09-11 11:59:55');
INSERT INTO `products` VALUES (42, 'CROP COVER', '2019-09-11 11:59:57', '2019-09-11 11:59:58');
INSERT INTO `products` VALUES (43, 'LIVESTOCK COVER', '2019-09-11 12:00:01', '2019-09-11 12:00:41');
INSERT INTO `products` VALUES (44, 'MICRO PROPERTY', '2019-09-11 12:00:03', '2019-09-11 12:00:42');
INSERT INTO `products` VALUES (45, 'APOLLO BALANCED FUND', '2019-09-11 12:00:04', '2019-09-11 12:00:43');
INSERT INTO `products` VALUES (46, 'APOLLO EQUITY FUND', '2019-09-11 12:00:08', '2019-09-11 12:00:44');
INSERT INTO `products` VALUES (47, 'APOLLO MONEY MARKET FUND', '2019-09-11 12:00:09', '2019-09-11 12:00:45');
INSERT INTO `products` VALUES (50, 'NULL', '2019-09-11 18:58:14', '2019-09-11 18:58:16');
INSERT INTO `products` VALUES (51, 'ENHANCED PERSONAL ACCIDENT/FLEXPAX', '2019-09-17 08:30:20', '2019-09-17 08:30:23');
INSERT INTO `products` VALUES (52, 'GROUP LIFE', '2019-09-18 17:31:19', '2019-09-18 17:31:22');
INSERT INTO `products` VALUES (53, 'CONTACT US', '2019-09-30 18:59:33', '2019-09-30 18:59:36');
INSERT INTO `products` VALUES (54, 'CREDIT LIFE', '2019-10-29 23:17:10', '2019-10-29 23:17:14');

-- ----------------------------
-- Table structure for products_categories
-- ----------------------------
DROP TABLE IF EXISTS `products_categories`;
CREATE TABLE `products_categories`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE,
  INDEX `Reference Table`(`product_id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `products to categories relationships` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products_categories
-- ----------------------------
INSERT INTO `products_categories` VALUES (6, 'BUILDING', 10, '2019-09-11 17:09:47', '2019-09-11 17:09:50');
INSERT INTO `products_categories` VALUES (7, 'CONTENTS', 10, '2019-09-11 17:46:27', '2019-09-11 17:46:29');
INSERT INTO `products_categories` VALUES (10, 'ALL RISK', 10, '2019-09-11 17:47:58', '2019-09-11 17:48:01');
INSERT INTO `products_categories` VALUES (11, 'DOMESTIC', 10, '2019-09-11 17:48:47', '2019-09-11 17:48:49');
INSERT INTO `products_categories` VALUES (12, 'LIABILITY', 10, '2019-09-11 17:49:11', '2019-09-11 17:49:12');
INSERT INTO `products_categories` VALUES (14, 'NULL', 50, '2019-09-11 18:57:40', '2019-09-11 18:57:43');

-- ----------------------------
-- Table structure for products_leads
-- ----------------------------
DROP TABLE IF EXISTS `products_leads`;
CREATE TABLE `products_leads`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `leads_product_id` int(11) NULL DEFAULT NULL,
  `leads_product_category_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `make` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `yom` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `more_info` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `depature_date` date NULL DEFAULT NULL,
  `return_date` date NULL DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `property` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `covers` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `occupation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `number` int(10) NULL DEFAULT NULL,
  `population_staff` int(10) NULL DEFAULT NULL,
  `max_take_off_weight` double(20, 0) NULL DEFAULT NULL,
  `geographical_scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `pilot_details` bigint(20) NULL DEFAULT NULL,
  `period` float(255, 2) NULL DEFAULT NULL,
  `age` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `inpatient` int(255) NULL DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `company` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `leads_product_id`(`leads_product_id`) USING BTREE,
  INDEX `leads_product_category_id`(`leads_product_category_id`) USING BTREE,
  CONSTRAINT `products_leads_ibfk_1` FOREIGN KEY (`leads_product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_leads_ibfk_2` FOREIGN KEY (`leads_product_category_id`) REFERENCES `products_categories` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products_leads
-- ----------------------------
INSERT INTO `products_leads` VALUES (155, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 10, 0, 0, '', 0, 0.00, '65 - 69', 1000000, NULL, '2019-10-29 19:19:28.000000', NULL);
INSERT INTO `products_leads` VALUES (156, 22, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Nairobi', '3', '', '70000', '', '', '0000-00-00', '0000-00-00', '', '', '50 - 54', '', '', 0, 0, 0, '', 0, 0.00, '', 0, NULL, '2019-10-29 19:20:29.000000', NULL);
INSERT INTO `products_leads` VALUES (157, 14, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '0', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', 'Building', '', '', 0, 0, 0, '', 0, 0.00, '30 - 34', 0, NULL, '2019-10-29 19:45:39.000000', NULL);
INSERT INTO `products_leads` VALUES (158, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 0.00, '35 - 39', 1000000, NULL, '2019-10-29 20:32:37.000000', NULL);
INSERT INTO `products_leads` VALUES (159, 14, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 0.00, '30 - 34', 5000000, NULL, '2019-10-29 21:01:35.000000', NULL);
INSERT INTO `products_leads` VALUES (160, 14, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, NULL, '2019-10-29 21:02:42.000000', NULL);
INSERT INTO `products_leads` VALUES (161, 14, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, NULL, '2019-10-29 21:05:15.000000', NULL);
INSERT INTO `products_leads` VALUES (162, 14, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 21:13:45.000000', NULL);
INSERT INTO `products_leads` VALUES (163, 14, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, 'tyu', '2019-10-29 21:14:00.000000', NULL);
INSERT INTO `products_leads` VALUES (164, 42, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '78', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Area Yield Index', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 21:30:07.000000', NULL);
INSERT INTO `products_leads` VALUES (165, 42, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '5', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Index-based Weather', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 22:02:51.000000', NULL);
INSERT INTO `products_leads` VALUES (166, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Nairobi', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 2, 0, 0, '', 0, 0.00, '24 - 25', 500000, '', '2019-10-29 22:06:06.000000', NULL);
INSERT INTO `products_leads` VALUES (167, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 22:06:56.000000', NULL);
INSERT INTO `products_leads` VALUES (168, 22, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 22:11:36.000000', NULL);
INSERT INTO `products_leads` VALUES (169, 22, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '50000', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 20.00, '60 - 64', 0, '', '2019-10-29 22:16:18.000000', NULL);
INSERT INTO `products_leads` VALUES (170, 6, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 22:30:48.000000', NULL);
INSERT INTO `products_leads` VALUES (171, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 22:35:33.000000', NULL);
INSERT INTO `products_leads` VALUES (172, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 4, 0, 0, '', 0, 0.00, '24 - 25', 2000000, '', '2019-10-29 22:40:23.000000', NULL);
INSERT INTO `products_leads` VALUES (173, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 3, 0, 0, '', 0, 0.00, '18 - 23', 2000000, '', '2019-10-29 22:45:34.000000', NULL);
INSERT INTO `products_leads` VALUES (174, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, 'tyuu', '2019-10-29 22:45:57.000000', NULL);
INSERT INTO `products_leads` VALUES (175, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, 'tyuu', '2019-10-29 22:45:57.000000', NULL);
INSERT INTO `products_leads` VALUES (176, 16, 14, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, 'tyui', '2019-10-29 22:47:41.000000', NULL);
INSERT INTO `products_leads` VALUES (177, 16, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 0.00, '30 - 34', 0, '', '2019-10-29 22:47:53.000000', NULL);
INSERT INTO `products_leads` VALUES (178, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 22:51:04.000000', NULL);
INSERT INTO `products_leads` VALUES (179, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 22:53:11.000000', NULL);
INSERT INTO `products_leads` VALUES (180, 15, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 1, 0, 0, '', 0, 0.00, '65 - 69', 1000000, '', '2019-10-29 22:55:49.000000', NULL);
INSERT INTO `products_leads` VALUES (181, 40, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Seremala Inc', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 200, 0, '', 0, 0.00, '', 0, '', '2019-10-29 23:09:42.000000', NULL);
INSERT INTO `products_leads` VALUES (182, 33, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', 'owner', '', 'Clerk', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-29 23:22:42.000000', NULL);
INSERT INTO `products_leads` VALUES (183, 24, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, 'ty', '2019-10-30 09:47:01.000000', NULL);
INSERT INTO `products_leads` VALUES (184, 24, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Nairobi', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-30 09:47:51.000000', NULL);
INSERT INTO `products_leads` VALUES (185, 24, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Kabete', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-30 10:03:53.000000', NULL);
INSERT INTO `products_leads` VALUES (186, 24, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, 'ty', '2019-10-30 10:09:18.000000', NULL);
INSERT INTO `products_leads` VALUES (187, 24, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Nairobi', '', '', '8000000', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 12.00, '50 - 54', 0, '', '2019-10-30 10:11:59.000000', NULL);
INSERT INTO `products_leads` VALUES (188, 31, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', 'Clerk', '', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-30 14:43:44.000000', NULL);
INSERT INTO `products_leads` VALUES (189, 54, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Seremala Inc', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 200, 0, '', 0, 0.00, '', 0, '', '2019-10-30 14:53:35.000000', NULL);
INSERT INTO `products_leads` VALUES (190, 26, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Nairobi', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-30 14:53:53.000000', NULL);
INSERT INTO `products_leads` VALUES (191, 33, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', 'Clerk', '', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-30 19:37:02.000000', NULL);
INSERT INTO `products_leads` VALUES (192, 33, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', 'Clerk', '', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-30 19:38:47.000000', NULL);
INSERT INTO `products_leads` VALUES (193, 33, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', 'Clerk', '', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-30 19:48:16.000000', NULL);
INSERT INTO `products_leads` VALUES (194, 33, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Nairobi', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', 'Clerk', '', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-10-30 19:52:06.000000', NULL);
INSERT INTO `products_leads` VALUES (195, 35, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', '', 'honda', 'Royce', '8000000', '2015', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 800, 'cOMMERCIAL', 2000, 0.00, '', 0, '', '2019-10-30 20:04:06.000000', NULL);
INSERT INTO `products_leads` VALUES (196, 35, 14, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, 't', '2019-10-30 20:05:00.000000', NULL);
INSERT INTO `products_leads` VALUES (197, 35, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', '', 'honda', 'civic', '8000000', '2015', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 800, 'cOMMERCIAL', 2000, 0.00, '', 0, '', '2019-10-30 20:05:34.000000', NULL);
INSERT INTO `products_leads` VALUES (198, 35, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'request assistance', 0, 0, 0, '', 0, 0.00, '', 0, 'ty', '2019-10-31 11:26:01.000000', NULL);
INSERT INTO `products_leads` VALUES (199, 24, 14, 'John Doe', 'j@p.co', '0712345678', 'Kakamega', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-11-02 19:16:28.000000', '0');
INSERT INTO `products_leads` VALUES (200, 24, 14, 'John Doe', 'tony@gmail.com', '0712345678', 'Kakamega', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', 'Contact Us', 0, 0, 0, '', 0, 0.00, '', 0, '', '2019-11-02 19:32:00.000000', '0');
INSERT INTO `products_leads` VALUES (201, 24, 14, 'John Doe', 'tony@gmail.com', '0712345678', 'Kakamega', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', 0, 0, 0, '', 0, 0.00, '24 - 25', 0, '', '2019-11-02 19:32:23.000000', '0');
INSERT INTO `products_leads` VALUES (202, 14, 14, 'John Doe', 'johndoe@gmail.com', '0712345678', 'Machakos', '', '', '0', '', '', '0000-00-00', '0000-00-00', '', '', 'Building', '', '', 0, 0, 0, '', 0, 0.00, '55 - 59', 0, '', '2019-11-04 08:55:11.000000', '0');

-- ----------------------------
-- Table structure for ref_jobs
-- ----------------------------
DROP TABLE IF EXISTS `ref_jobs`;
CREATE TABLE `ref_jobs`  (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ref_outbuilding_roofs
-- ----------------------------
DROP TABLE IF EXISTS `ref_outbuilding_roofs`;
CREATE TABLE `ref_outbuilding_roofs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `primary key`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ref_outbuilding_roofs
-- ----------------------------
INSERT INTO `ref_outbuilding_roofs` VALUES (1, 'Stone', '2019-09-02 12:50:55.000000', '2019-09-02 12:51:00.000000');
INSERT INTO `ref_outbuilding_roofs` VALUES (2, 'Brick', '2019-09-02 14:08:12.000000', '2019-09-02 14:08:16.000000');

-- ----------------------------
-- Table structure for ref_outbuilding_walls
-- ----------------------------
DROP TABLE IF EXISTS `ref_outbuilding_walls`;
CREATE TABLE `ref_outbuilding_walls`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `primary key`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ref_outbuilding_walls
-- ----------------------------
INSERT INTO `ref_outbuilding_walls` VALUES (1, 'Stone', '2019-09-02 12:50:55', '2019-09-02 12:51:00');
INSERT INTO `ref_outbuilding_walls` VALUES (2, 'Brick', '2019-09-02 14:09:21', '2019-09-02 14:09:25');

-- ----------------------------
-- Table structure for ref_roof_materials
-- ----------------------------
DROP TABLE IF EXISTS `ref_roof_materials`;
CREATE TABLE `ref_roof_materials`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roof id index`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ref_roof_materials
-- ----------------------------
INSERT INTO `ref_roof_materials` VALUES (1, 'Stone', '2019-09-02 12:50:55.000000', '2019-09-02 12:51:00.000000');
INSERT INTO `ref_roof_materials` VALUES (2, 'Brick', '2019-09-02 14:05:11.000000', '2019-09-02 14:05:19.000000');

-- ----------------------------
-- Table structure for ref_wall_materials
-- ----------------------------
DROP TABLE IF EXISTS `ref_wall_materials`;
CREATE TABLE `ref_wall_materials`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `description`(`description`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ref_wall_materials
-- ----------------------------
INSERT INTO `ref_wall_materials` VALUES (1, 'Stone', '2019-09-02 12:50:55.000000', '2019-09-02 12:51:00.000000');
INSERT INTO `ref_wall_materials` VALUES (2, 'Brick', '2019-09-02 12:50:55.000000', '2019-09-02 12:51:00.000000');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `other_number` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `national_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kra` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `postal_address` int(11) NULL DEFAULT NULL,
  `city_town` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `post_code` int(11) NULL DEFAULT NULL,
  `county` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `unique customer_id`(`id`) USING BTREE,
  INDEX `IX_Relationship21`(`password`) USING BTREE,
  INDEX `phone`(`phone_number`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (5, 1665378265, 'ANTHONY', 'JOHN', 'DOE', 'anthonbaru@gmail.com', '$2y$10$X41jZU/in8MV3SMMHVR95OBJ7/RcUfu3HhJZQIO1H33iUavSCpEMC', '0700123456', '073654321', '12345678', 'A8528452568541P', 9577, 'Mombasa', 300, 'Mombasa', NULL, NULL, '2019-09-02 09:46:25.000000', '2019-09-13 10:40:51.778244');
INSERT INTO `users` VALUES (6, 26672089, 'John', NULL, 'Doe', 'anthonybaru@gmail.com', '$2y$10$1oEUMNy1Il27sgIE23tO/u6iz1R66.Dpcq9fnbvAxbr6.jG3/GfXO', '0712345678', NULL, '12345678', 'A8528452568541P', NULL, NULL, NULL, NULL, NULL, 'ZYUm536fgGqnZmLlLUzuX77AHdvslsaorbrjlDZdX4OsEcSk4nMtHLSlJuDT', '2019-09-03 10:33:38.000000', '2019-09-03 11:01:37.000000');
INSERT INTO `users` VALUES (8, 97772024, 'John', NULL, 'Doe', 'johndoe@gmail.com', '$2y$10$QwzhIVSCEtj/ZR9h5yS6C.KDVufxRRhgCrwWkmOfmx7fbU/tGCdeq', '0712345678', NULL, '12345622', 'A456982158I', NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-04 14:42:41.000000', '2019-09-04 14:42:41.000000');
INSERT INTO `users` VALUES (9, 1418331771, 'John', NULL, 'Doe', 'johndoe@gmial.com', '$2y$10$i/9Br7NeEiA8a7KE2KXqoOZQt4Y/39934Ix8v3IFm0cFle8uC51rC', '0700658856', NULL, '3456', 'kra1236544', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-08 11:52:38.537481', '2019-10-08 11:52:38.537481');

SET FOREIGN_KEY_CHECKS = 1;
