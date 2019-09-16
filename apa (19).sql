-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 01:21 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apa`
--

-- --------------------------------------------------------

--
-- Table structure for table `apa_job_applicants`
--

CREATE TABLE `apa_job_applicants` (
  `id` int(15) NOT NULL,
  `applicant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `second_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirm_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profile_image_url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `social_media_platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `password_reset` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apa_job_applicants`
--

INSERT INTO `apa_job_applicants` (`id`, `applicant_id`, `first_name`, `second_name`, `email`, `confirm_password`, `profile_image_url`, `social_media_platform`, `gender`, `date_created`, `password_reset`) VALUES
(1, '7sD7LDAkco1BOHlmP1q', 'Peter', 'Chege', 'p@gmail.com', 'p@gmail.com', '', '', '', '2019-05-03 18:38:02.969581', '6jKJzpPIfUauDylLxuB0'),
(2, '1FKhO9lelYHZmRILF98', 'tony', 'tony', 'tony@gmail.com', '$2y$10$prs02ec0Rxp3SGty4BWwfuY/Jh8jN8LhVyPf5BJBN7g9ZwIe2y.Ve', '', 'normal', '', '2019-05-03 18:38:02.969581', NULL),
(3, 'wMzpiGMGriWgULOTS3Ca', 'peter', 'chege', 'peterchege442@gmail.com', '$2y$10$3WCSm3hxcZn6YGhoPD.Rr.5v4oEK0XcKxG6PFvJIi4M6bLY8Hlrfy', '', '', '', '2019-05-03 18:38:02.969581', NULL),
(4, '9wwgAyH04y3nElC6znso', 'Peter', 'Kinuthia', 'peterchege@gmail.com', '$2y$10$.n1fM478G0GjUStHaUXtm.YxMsqJyeWHzTK2netmcLHdARRDkQSjG', '', '', '', '2019-05-03 18:38:02.969581', NULL),
(5, '1306824732', 'Anthony Baru', '', '', '', 'http://pbs.twimg.com/profile_images/378800000779527007/feedf127f96e32bb11aadad1769c8872_normal.jpeg', 'twitter', '', '2019-05-03 18:38:02.969581', '66671'),
(6, '109162585223646381268', 'Anthony Baru', '', 'anthonybarukaronji@gmail.com', '', 'https://lh4.googleusercontent.com/-u072XaHaVCE/AAAAAAAAAAI/AAAAAAAAABo/_07r1fsTJGM/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', NULL),
(7, '101393073819430510008', 'Anthony Baru', '', 'anthonybaru@gmail.com', '$2y$10$CqfVEVTziEKF9acCwy8vQeh23Gm9yvSCvXCXXBCIGu8ELfEBFylSi', 'https://lh5.googleusercontent.com/-HWPcBgCdDyw/AAAAAAAAAAI/AAAAAAAAArU/3y9lGdudDxU/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', 'HkYFpTY27htf7UhMLcxv'),
(12, '1285994268216094', 'Tony Baru', '', 'anthonybarukaronji@yahoo.com', '', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1285994268216094&height=200&width=200&ext=1559402429&hash=AeTZs-a6_j3d_c-5', 'Facebook', '', '2019-05-03 18:38:02.969581', NULL),
(13, '108937552463137459023', 'njoroge kangethu', '', 'kangethu2@gmail.com', '', 'https://lh3.googleusercontent.com/-xm7cl86Gw2k/AAAAAAAAAAI/AAAAAAAAAXM/wsaxC5cR4UM/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', '11601'),
(21, 'zeabRO5TFz', 'anthony baru', '', '', '', '', 'linkedin', '', '2019-05-03 19:05:52.788317', '66671'),
(22, 'z-qjDjqLBW', 'peter chege', '', '', '', 'https://media.licdn.com/dms/image/C5603AQGqi94U3MJ-hQ/profile-displayphoto-shrink_100_100/0?e=1562198400&v=beta&t=Q5g8LU0vFKBoXJVWq7PpKtMAiNOeA-YGppeKBc7iU1U', 'linkedin', '', '2019-05-03 19:07:34.784561', '66671'),
(23, 'CPAKoqis5gTk2jveevk3', 'new', 'new', 'new@gmail.com', '$2y$10$v39XkVHNTmQWAkqnjEGdAOJJnyxNtIf5ti1eSyJni3cyTUGFx/e4K', '', 'normal', '', '2019-06-06 15:36:54.360699', NULL),
(24, '108131240922418171165', 'APA Insurance', '', 'apaapollo@gmail.com', '', 'https://lh5.googleusercontent.com/-aUqHf1tdbBU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdchfj6iIoXCApi--hNVpimu4E64g/mo/photo.jpg', 'google', '', '2019-06-11 10:17:14.465699', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apa_job_applicants_certification`
--

CREATE TABLE `apa_job_applicants_certification` (
  `id` int(11) NOT NULL,
  `certificate` varchar(50) NOT NULL,
  `issuing_organization` varchar(50) NOT NULL,
  `issuing_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `applicant_id` int(15) NOT NULL,
  `job_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apa_job_applicants_education_qualification`
--

CREATE TABLE `apa_job_applicants_education_qualification` (
  `id` int(15) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `program` varchar(50) NOT NULL,
  `education_level` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `graduation_date` date NOT NULL,
  `anticipated_graduation_date` date NOT NULL,
  `job_id` int(15) NOT NULL,
  `applicant_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apa_job_applicants_employment_history`
--

CREATE TABLE `apa_job_applicants_employment_history` (
  `id` int(15) NOT NULL,
  `employer_company` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `current_job` varchar(255) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `notice_period` varchar(255) NOT NULL,
  `roles_performed` varchar(255) NOT NULL,
  `applicant_id` int(15) NOT NULL,
  `job_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apa_job_applicants_file_attachments`
--

CREATE TABLE `apa_job_applicants_file_attachments` (
  `id` int(15) NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `job_id` int(15) NOT NULL,
  `applicant_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apa_job_applicants_personal_info`
--

CREATE TABLE `apa_job_applicants_personal_info` (
  `id` int(15) NOT NULL,
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
  `job_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apa_job_posts`
--

CREATE TABLE `apa_job_posts` (
  `id` int(10) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_short_description` longtext NOT NULL,
  `country` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `employment_type` varchar(255) NOT NULL,
  `salary` int(15) NOT NULL,
  `key_primary_responsibilities` longtext NOT NULL,
  `academic_qualifications` longtext NOT NULL,
  `professional_qualifications` longtext NOT NULL,
  `job_skills_and_requirements` longtext NOT NULL,
  `experience` longtext NOT NULL,
  `date_added` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deadline` date NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `archive` int(15) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apa_job_posts`
--

INSERT INTO `apa_job_posts` (`id`, `job_id`, `job_title`, `job_short_description`, `country`, `county`, `company`, `employment_type`, `salary`, `key_primary_responsibilities`, `academic_qualifications`, `professional_qualifications`, `job_skills_and_requirements`, `experience`, `date_added`, `deadline`, `added_by`, `archive`) VALUES
(11, 'J152JU7yE', 'BUSINESS INTELLIGENCE OFFICER', '&lt;p&gt;Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding valu&lt;strong&gt;e to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.&lt;/strong&gt;&lt;/p&gt;', 'KENYA', 'NAIROBI', 'APA LIFE', 'FULL-TIME', 45000, '&lt;h3&gt;1) Business requirements &amp;amp; analysis&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements&lt;/li&gt;\r\n	&lt;li&gt;Interprets business requirements and determines optimum BI solutions to meet business needs.&lt;/li&gt;\r\n	&lt;li&gt;Advises executives on how BI (processes, practices and technologies) play a critical role in improving business management and optimization&lt;/li&gt;\r\n	&lt;li&gt;Researches business problems and creates models that help analyse these business problems.&lt;/li&gt;\r\n	&lt;li&gt;Collaborating with end users to identify needs and opportunities for improved data management and analysis.&lt;/li&gt;\r\n	&lt;li&gt;Developing, packaging and delivering new service offerings related to business intelligence, encompassing clearly defined value propositions and creating realistic profitability models&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2) Data visualization&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals&lt;/li&gt;\r\n	&lt;li&gt;Develop business intelligence reports &amp;ndash; including interactive business intelligence reports, strategic management reports and ad hoc reports &amp;ndash; on a prioritised basis&lt;/li&gt;\r\n	&lt;li&gt;coordinating the ongoing development and operations of a business intelligence architecture that enables fact-based decision-making, ad hoc analysis and insight generation&lt;/li&gt;\r\n	&lt;li&gt;To advise generally on the potential for data use across the business, and also to make colleagues aware of any opportunities presented by the datasets for cross selling.&lt;/li&gt;\r\n	&lt;li&gt;Providing regular analysis and interpretation of data and trends to support decision making by the management team, including text, graphics and other statistical representations&lt;/li&gt;\r\n	&lt;li&gt;Creation of dashboards for presentation of accurate information to Management at different levels and locations&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3) Information quality assurance&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Overseeing development of an enterprise data warehouse as part of Group wide digital transformation strategy&lt;/li&gt;\r\n	&lt;li&gt;Improving and streamlining processes regarding data flow and data quality to improve information confidentiality, integrity and availability&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage&lt;/li&gt;\r\n	&lt;li&gt;Proficiency in SQL&lt;/li&gt;\r\n	&lt;li&gt;Technical Skills: use of BI tools to mine data sources and look for trends&lt;/li&gt;\r\n	&lt;li&gt;Strong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial&lt;/li&gt;\r\n	&lt;li&gt;Communication Skills: Communicate their findings to the company and/or managers&lt;/li&gt;\r\n	&lt;li&gt;Problem-solving: Recommend solutions for creating more revenue and reducing loss&lt;/li&gt;\r\n	&lt;li&gt;Time Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A Business intelligence experience with 4 years working experience in a similar role at a similar level.&lt;/li&gt;\r\n	&lt;li&gt;Track record of substantial success in a similar role at a similar level. With experience of current best practice and up-to-date ideas on the maintenance and presentation of &amp;lsquo;mission critical&amp;rsquo; business information for executive teams&lt;/li&gt;\r\n	&lt;li&gt;Significant experience of numerical, financial or other analysis and interpretative techniques&lt;/li&gt;\r\n	&lt;li&gt;Experience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information&lt;/li&gt;\r\n&lt;/ul&gt;', '2019-04-20 08:34:36.142463', '2020-01-01', 'tony', 1),
(12, 'iAGDAycL82', 'BUSINESS INTELLIGENCE OFFICER', '&lt;p&gt;Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.&lt;/p&gt;', 'Uganda', 'nairobi', 'apa life uganda', 'Full Time', 0, '&lt;h3&gt;1) Business requirements &amp;amp; analysis&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements&lt;/li&gt;\r\n	&lt;li&gt;Interprets business requirements and determines optimum BI solutions to meet business needs.&lt;/li&gt;\r\n	&lt;li&gt;Advises executives on how BI (processes, practices and technologies) play a critical role in improving business management and optimization&lt;/li&gt;\r\n	&lt;li&gt;Researches business problems and creates models that help analyse these business problems.&lt;/li&gt;\r\n	&lt;li&gt;Collaborating with end users to identify needs and opportunities for improved data management and analysis.&lt;/li&gt;\r\n	&lt;li&gt;Developing, packaging and delivering new service offerings related to business intelligence, encompassing clearly defined value propositions and creating realistic profitability models&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2) Data visualization&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals&lt;/li&gt;\r\n	&lt;li&gt;Develop business intelligence reports &amp;ndash; including interactive business intelligence reports, strategic management reports and ad hoc reports &amp;ndash; on a prioritised basis&lt;/li&gt;\r\n	&lt;li&gt;coordinating the ongoing development and operations of a business intelligence architecture that enables fact-based decision-making, ad hoc analysis and insight generation&lt;/li&gt;\r\n	&lt;li&gt;To advise generally on the potential for data use across the business, and also to make colleagues aware of any opportunities presented by the datasets for cross selling.&lt;/li&gt;\r\n	&lt;li&gt;Providing regular analysis and interpretation of data and trends to support decision making by the management team, including text, graphics and other statistical representations&lt;/li&gt;\r\n	&lt;li&gt;Creation of dashboards for presentation of accurate information to Management at different levels and locations&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3) Information quality assurance&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Overseeing development of an enterprise data warehouse as part of Group wide digital transformation strategy&lt;/li&gt;\r\n	&lt;li&gt;Improving and streamlining processes regarding data flow and data quality to improve information confidentiality, integrity and availability&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage&lt;/li&gt;\r\n	&lt;li&gt;Proficiency in SQL&lt;/li&gt;\r\n	&lt;li&gt;Technical Skills: use of BI tools to mine data sources and look for trends&lt;/li&gt;\r\n	&lt;li&gt;Strong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial&lt;/li&gt;\r\n	&lt;li&gt;Communication Skills: Communicate their findings to the company and/or managers&lt;/li&gt;\r\n	&lt;li&gt;Problem-solving: Recommend solutions for creating more revenue and reducing loss&lt;/li&gt;\r\n	&lt;li&gt;Time Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A Business intelligence experience with 4 years working experience in a similar role at a similar level.&lt;/li&gt;\r\n	&lt;li&gt;Track record of substantial success in a similar role at a similar level. With experience of current best practice and up-to-date ideas on the maintenance and presentation of &amp;lsquo;mission critical&amp;rsquo; business information for executive teams&lt;/li&gt;\r\n	&lt;li&gt;Significant experience of numerical, financial or other analysis and interpretative techniques&lt;/li&gt;\r\n	&lt;li&gt;Experience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information&lt;/li&gt;\r\n&lt;/ul&gt;', '2019-04-22 13:30:42.315473', '2019-07-31', 'tony', 0),
(13, 'ril1HKiPEP', 'BUSINESS INTELLIGENCE OFFICER', '&lt;p&gt;Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.&lt;/p&gt;', 'Uganda', 'Nairobi', 'apa life uganda', 'Full-Time', 35000, '&lt;h3&gt;1) Business requirements &amp;amp; analysis&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements&lt;/li&gt;\r\n	&lt;li&gt;Interprets business requirements and determines optimum BI solutions to meet business needs.&lt;/li&gt;\r\n	&lt;li&gt;Advises executives on how BI (processes, practices and technologies) play a critical role in improving business management and optimization&lt;/li&gt;\r\n	&lt;li&gt;Researches business problems and creates models that help analyse these business problems.&lt;/li&gt;\r\n	&lt;li&gt;Collaborating with end users to identify needs and opportunities for improved data management and analysis.&lt;/li&gt;\r\n	&lt;li&gt;Developing, packaging and delivering new service offerings related to business intelligence, encompassing clearly defined value propositions and creating realistic profitability models&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2) Data visualization&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals&lt;/li&gt;\r\n	&lt;li&gt;Develop business intelligence reports &amp;ndash; including interactive business intelligence reports, strategic management reports and ad hoc reports &amp;ndash; on a prioritised basis&lt;/li&gt;\r\n	&lt;li&gt;coordinating the ongoing development and operations of a business intelligence architecture that enables fact-based decision-making, ad hoc analysis and insight generation&lt;/li&gt;\r\n	&lt;li&gt;To advise generally on the potential for data use across the business, and also to make colleagues aware of any opportunities presented by the datasets for cross selling.&lt;/li&gt;\r\n	&lt;li&gt;Providing regular analysis and interpretation of data and trends to support decision making by the management team, including text, graphics and other statistical representations&lt;/li&gt;\r\n	&lt;li&gt;Creation of dashboards for presentation of accurate information to Management at different levels and locations&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3) Information quality assurance&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Overseeing development of an enterprise data warehouse as part of Group wide digital transformation strategy&lt;/li&gt;\r\n	&lt;li&gt;Improving and streamlining processes regarding data flow and data quality to improve information confidentiality, integrity and availability&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage&lt;/li&gt;\r\n	&lt;li&gt;Proficiency in SQL&lt;/li&gt;\r\n	&lt;li&gt;Technical Skills: use of BI tools to mine data sources and look for trends&lt;/li&gt;\r\n	&lt;li&gt;Strong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial&lt;/li&gt;\r\n	&lt;li&gt;Communication Skills: Communicate their findings to the company and/or managers&lt;/li&gt;\r\n	&lt;li&gt;Problem-solving: Recommend solutions for creating more revenue and reducing loss&lt;/li&gt;\r\n	&lt;li&gt;Time Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A Business intelligence experience with 4 years working experience in a similar role at a similar level.&lt;/li&gt;\r\n	&lt;li&gt;Track record of substantial success in a similar role at a similar level. With experience of current best practice and up-to-date ideas on the maintenance and presentation of &amp;lsquo;mission critical&amp;rsquo; business information for executive teams&lt;/li&gt;\r\n	&lt;li&gt;Significant experience of numerical, financial or other analysis and interpretative techniques&lt;/li&gt;\r\n	&lt;li&gt;Experience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information&lt;/li&gt;\r\n&lt;/ul&gt;', '2019-04-22 13:32:31.867119', '2020-03-18', 'tony', 1),
(14, '4ePa3FeW9G', 'Customer Care Represantative', '&lt;p&gt;Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.&lt;/p&gt;\r\n', 'Uganda', 'Nairobi', 'apa life uganda', 'Full-Time', 0, '&lt;h3&gt;1) Business requirements &amp;amp; analysis&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements&lt;/li&gt;\r\n	&lt;li&gt;Interprets business requirements and determines optimum BI solutions to meet business needs.&lt;/li&gt;\r\n	&lt;li&gt;Advises executives on how BI (processes, practices and technologies) play a critical role in improving business management and optimization&lt;/li&gt;\r\n	&lt;li&gt;Researches business problems and creates models that help analyse these business problems.&lt;/li&gt;\r\n	&lt;li&gt;Collaborating with end users to identify needs and opportunities for improved data management and analysis.&lt;/li&gt;\r\n	&lt;li&gt;Developing, packaging and delivering new service offerings related to business intelligence, encompassing clearly defined value propositions and creating realistic profitability models&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2) Data visualization&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals&lt;/li&gt;\r\n	&lt;li&gt;Develop business intelligence reports &amp;ndash; including interactive business intelligence reports, strategic management reports and ad hoc reports &amp;ndash; on a prioritised basis&lt;/li&gt;\r\n	&lt;li&gt;coordinating the ongoing development and operations of a business intelligence architecture that enables fact-based decision-making, ad hoc analysis and insight generation&lt;/li&gt;\r\n	&lt;li&gt;To advise generally on the potential for data use across the business, and also to make colleagues aware of any opportunities presented by the datasets for cross selling.&lt;/li&gt;\r\n	&lt;li&gt;Providing regular analysis and interpretation of data and trends to support decision making by the management team, including text, graphics and other statistical representations&lt;/li&gt;\r\n	&lt;li&gt;Creation of dashboards for presentation of accurate information to Management at different levels and locations&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3) Information quality assurance&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Overseeing development of an enterprise data warehouse as part of Group wide digital transformation strategy&lt;/li&gt;\r\n	&lt;li&gt;Improving and streamlining processes regarding data flow and data quality to improve information confidentiality, integrity and availability&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;ul&gt;\r\n	&lt;li&gt;Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage&lt;/li&gt;\r\n	&lt;li&gt;Proficiency in SQL&lt;/li&gt;\r\n	&lt;li&gt;Technical Skills: use of BI tools to mine data sources and look for trends&lt;/li&gt;\r\n	&lt;li&gt;Strong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial&lt;/li&gt;\r\n	&lt;li&gt;Communication Skills: Communicate their findings to the company and/or managers&lt;/li&gt;\r\n	&lt;li&gt;Problem-solving: Recommend solutions for creating more revenue and reducing loss&lt;/li&gt;\r\n	&lt;li&gt;Time Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;ul&gt;\r\n	&lt;li&gt;A Business intelligence experience with 4 years working experience in a similar role at a similar level.&lt;/li&gt;\r\n	&lt;li&gt;Track record of substantial success in a similar role at a similar level. With experience of current best practice and up-to-date ideas on the maintenance and presentation of &amp;lsquo;mission critical&amp;rsquo; business information for executive teams&lt;/li&gt;\r\n	&lt;li&gt;Significant experience of numerical, financial or other analysis and interpretative techniques&lt;/li&gt;\r\n	&lt;li&gt;Experience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '2019-04-22 13:33:20.920045', '2019-04-19', 'gilbert', 0);

-- --------------------------------------------------------

--
-- Table structure for table `apollo_confrence_facilities`
--

CREATE TABLE `apollo_confrence_facilities` (
  `id` int(15) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `apollo_confrence_facilities`
--

INSERT INTO `apollo_confrence_facilities` (`id`, `name`, `capacity`, `type`) VALUES
(1, 'Shimba Hills', '18', 'Boardroom'),
(2, 'Taita Hills', '12', 'Boardroom'),
(3, 'Ngong Hills', '8', 'Boardroom'),
(4, 'Chyullu Hills', '40', 'Auditorium'),
(5, 'Cherengani', '0', 'Training Room'),
(6, 'Entertainment Area', '0', 'Entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `apollo_confrence_facilities_bookings`
--

CREATE TABLE `apollo_confrence_facilities_bookings` (
  `id` int(11) NOT NULL,
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
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `apollo_confrence_facilities_bookings`
--

INSERT INTO `apollo_confrence_facilities_bookings` (`id`, `apollo_confrence_facilities_fk`, `start_date`, `end_date`, `start_time`, `end_time`, `company_name`, `phone_number`, `email`, `capacity`, `more_information`, `date_created`) VALUES
(1, 2, '2019-06-03', '2019-06-04', '00:00:00.000000', '00:00:00.000000', '', '0', '', 0, '', '0000-00-00 00:00:00.000000'),
(2, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, '', '0000-00-00 00:00:00.000000'),
(3, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000'),
(4, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000'),
(5, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000'),
(6, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000'),
(7, 1, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'Time test.', '0000-00-00 00:00:00.000000'),
(8, 1, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 78, 'Time test.', '2019-06-04 10:28:20.344848'),
(9, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:33:32.632942'),
(10, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:34:20.120771'),
(11, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:35:50.706584'),
(12, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:37:54.289840'),
(13, 4, '2019-06-14', '2019-06-14', '00:00:08.000000', '00:00:12.000000', 'Oliver Towers', '12345678', 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 10:47:08.899204'),
(14, 4, '2019-06-14', '2019-06-14', '00:00:08.000000', '00:00:12.000000', 'Oliver Towers', '12345678', 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 10:58:14.101518'),
(15, 4, '2019-06-14', '2019-06-14', '00:00:03.000000', '00:00:12.000000', 'Oliver Towers', '12345678', 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 11:00:21.684754'),
(16, 1, '2019-06-04', '2019-06-05', '00:00:03.000000', '00:00:09.000000', 'Gotham Corp.', '789302545', 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:02:20.043660'),
(17, 1, '2019-06-04', '2019-06-05', '03:00:00.000000', '09:03:00.000000', 'Gotham Corp.', '789302545', 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:08:37.915117'),
(18, 4, '2019-06-14', '2019-06-14', '03:00:00.000000', '12:30:00.000000', 'Oliver Towers', '12345678', 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 11:08:37.970083'),
(19, 1, '2019-06-04', '2019-06-05', '08:16:00.000000', '09:03:00.000000', 'Gotham Corp.', '789302545', 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:09:23.380059'),
(20, 6, '2019-06-04', '2019-06-05', '07:12:00.000000', '17:23:00.000000', 'Justice League Inc.', '719941992', 'info@justiceleague.com', 8, 'More information.', '2019-06-04 14:11:12.733482'),
(21, 4, '2019-06-05', '2019-06-05', '08:00:00.000000', '14:00:00.000000', 'Peter', '0', 'peter@gmail.comm', 8, 'For my squad.', '2019-06-04 14:17:23.049482'),
(22, 3, '2019-06-05', '2019-06-05', '08:00:00.000000', '14:00:00.000000', 'Peter', '0', 'peter@gmail.comm', 8, 'For my squad.', '2019-06-04 14:40:14.842970'),
(23, 1, '2019-06-05', '2019-06-05', '03:00:08.000000', '14:00:00.000000', 'Peter', '0', 'peter@gmail.comm', 8, 'check start time format.', '2019-06-04 14:49:17.369431'),
(24, 1, '2019-06-05', '2019-06-05', '03:00:00.000000', '14:00:00.000000', 'Peter', '0', 'peter@gmail.comm', 8, 'check start time format.', '2019-06-04 14:50:36.506817'),
(25, 1, '2019-06-26', '2019-06-27', '07:07:00.000000', '06:06:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, '', '2019-06-26 11:54:34.942764'),
(26, 1, '2019-06-26', '2019-06-27', '07:07:00.000000', '06:06:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, '', '2019-06-26 11:56:25.249636'),
(27, 1, '2019-06-26', '2019-06-27', '08:00:00.000000', '10:00:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 7, '', '2019-06-26 12:03:58.844223'),
(28, 5, '2019-06-26', '2019-06-27', '08:00:00.000000', '10:00:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 7, '', '2019-06-26 12:08:20.512825'),
(29, 2, '2019-06-27', '2019-06-29', '01:57:00.000000', '02:57:00.000000', 'Gotham Corp.', '2147483647', 'p@gmail.com', 0, 'vola', '2019-06-27 12:36:40.101213'),
(30, 3, '2019-06-27', '2019-06-28', '08:08:00.000000', '09:09:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 89, 'leo', '2019-06-27 12:39:12.753172'),
(31, 3, '2019-06-27', '2019-06-28', '08:08:00.000000', '09:09:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.com', 6, 'leo', '2019-06-27 12:41:15.435439'),
(32, 3, '2019-06-27', '2019-06-28', '08:08:00.000000', '09:09:00.000000', 'Gotham Corp.', '700658856', 'anthonybaru@gmail.co', 6, 'leo', '2019-06-27 12:41:21.599271'),
(33, 4, '2019-06-27', '2019-06-28', '09:09:00.000000', '04:45:00.000000', 'Oliver Towers', '2147483647', 'peterjethro@gmail.com', 78, 'tyki adfja', '2019-06-27 12:53:48.055551'),
(34, 2, '2019-06-27', '2019-06-28', '08:06:00.000000', '07:08:00.000000', 'Gotham Corp.', '1869644846', 'p@gmail.com', 12, 'moue', '2019-06-27 12:56:30.758840'),
(35, 3, '2019-06-28', '2019-06-28', '09:09:00.000000', '09:09:00.000000', 'Gotham Corp.', '454252', 'p@gmail.com', 7, 'make it possible.', '2019-06-27 14:31:12.361999'),
(36, 2, '2019-06-27', '2019-06-28', '08:59:00.000000', '08:08:00.000000', 'nice', '52512', 't@gmail.com', 4, 'this is me.', '2019-06-27 14:46:14.706640'),
(37, 1, '2019-06-27', '2019-06-28', '08:09:00.000000', '09:00:00.000000', 'Jubilee', '5282', 'p@gmail.com', 78, 'more infoadfjakf', '2019-06-27 16:18:33.279708'),
(38, 1, '2019-06-27', '2019-06-28', '00:00:00.000000', '00:00:00.000000', '', '0', '', 0, '', '2019-06-27 16:46:03.088655'),
(39, 1, '0000-00-00', '0000-00-00', '00:00:00.000000', '00:00:00.000000', '', '0', '', 0, '', '2019-06-27 17:13:07.859452'),
(42, 4, '2019-06-27', '2019-06-28', '07:07:00.000000', '09:09:00.000000', 'Gotham Corp.', '654654', 'peterjethro@gmail.com', 7, 'more infor', '2019-06-27 17:30:04.668745'),
(43, 5, '2019-06-28', '2019-06-29', '05:05:00.000000', '09:09:00.000000', 'Gotham Corp.', '654654561', 'peter@gmail.comm', 5, 'helllo', '2019-06-28 09:30:08.939919'),
(44, 6, '2019-06-28', '2019-06-29', '09:09:00.000000', '06:06:00.000000', 'enta', '54125415', 'enta@gmail.com', 7, 'more infor', '2019-06-28 09:37:26.246616'),
(45, 4, '2019-06-28', '2019-06-24', '07:00:00.000000', '09:00:00.000000', 'Peter Chege', '2147483647', 'peter@gmail.com', 6, 'more information', '2019-06-28 11:01:26.634183'),
(46, 2, '2019-09-10', '2019-09-11', '08:00:00.000000', '10:00:00.000000', 'name', '711', 'p@gmail.com', 85, 'pliz', '2019-09-10 16:36:06.316943'),
(47, 3, '2019-09-10', '2019-09-10', '06:00:00.000000', '06:00:00.000000', 'name', '700658856', 'p@gmail.com', 4, 'more info', '2019-09-10 16:46:12.826105'),
(48, 3, '2019-09-11', '2019-09-12', '05:05:00.000000', '08:08:00.000000', 'JaneDoeInc', '712365478', 'janedoe@gmail.com', 5, 'None', '2019-09-11 08:47:36.366224'),
(50, 2, '2019-09-11', '2019-09-12', '03:03:00.000000', '05:05:00.000000', '712365478', '712345', 'janedoe@gmail.com', 55, 'po', '2019-09-11 09:03:56.721327'),
(51, 2, '2019-09-11', '2019-09-12', '22:22:00.000000', '23:00:00.000000', 'jane doe inc', '123456', 'janedoe@gmail.com', 4, 'm', '2019-09-11 09:06:00.109153'),
(52, 2, '2019-09-11', '2019-09-12', '08:05:00.000000', '09:09:00.000000', 'name', '070145', 'p@gmail.com', 5, '', '2019-09-11 09:21:22.500217');

-- --------------------------------------------------------

--
-- Table structure for table `hr_jobs_users`
--

CREATE TABLE `hr_jobs_users` (
  `id` int(15) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_jobs_users`
--

INSERT INTO `hr_jobs_users` (`id`, `fname`, `lname`, `email`, `confirm_password`) VALUES
(9, 'tony', 'tony', 'anthony@gmail.com', '$2y$10$w4HqB14uTyudaTGUMmU6.OSsh.uEjOhrac7hq07ONubWQMrzieWwu'),
(10, 'chege', 'chege', 'chege@gmail.com', '$2y$10$IDEVyytSrpnUkFa1qXpU0Ou4IjRVVXE/8d8101niiUlMWbFN699nq');

-- --------------------------------------------------------

--
-- Table structure for table `media_centre_admin_registration`
--

CREATE TABLE `media_centre_admin_registration` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invite_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_centre_admin_registration`
--

INSERT INTO `media_centre_admin_registration` (`id`, `datetime`, `username`, `password`, `email`, `added by`, `password_reset_token`, `invite_token`, `date_added`) VALUES
(11, '18, June 2019 15:48:10', 'tony@gmail.com', '$2y$10$f02hopO7HiynQ4OeHFhmOuB7HULtMw6DRMZ5Fmd7nA3ZXwGXU7HW.', 'tony@gmail.comm', '', NULL, '', '2019-06-20 10:00:09'),
(12, '18, June 2019 15:51:21', 'anthony', '$2y$10$z62EuuICa1N0AoLBLXIyu.wLcbGdOlq4sBrlLDh.wb/vWbY2mGq.W', 'tony@gmail.com', 'tony@gmail.com', NULL, '', '2019-06-20 10:00:09'),
(19, '20, June 2019 16:00:20', 'anthony baru', '$2y$10$nd2qnZXW6OU8wGl.R0B10OECRe0.ZFm3GI0XfNQM2x.uoJDM/6yIa', 'anthonybaru@gmail.com', 'anthony', NULL, '9e6f437264dbcd37999cfa257027c195f91c9cd1a62b05b44f396bb5f3ee4b4189080d061a274e1f', '2019-06-20 13:00:20'),
(20, '20, June 2019 18:06:45', '', '', 'peterchege442@gmail.com', 'anthony', NULL, '69696688d3307b4284f1ef3babcf718993b16793d8b6cefcbc61aeb8806d6c7e0407fffac3e50a07', '2019-06-20 15:06:45'),
(21, '21, June 2019 15:56:24', '', '', 'kangethu2@gmail.com', 'anthony baru', NULL, '1e9504a53f52cbbe431c93a93c91ee2ab513989b0199b7f860d1e38db605a2d67046aeb2dd869f10', '2019-06-21 12:56:24'),
(22, '25, June 2019 09:58:11', '', '', 'anthony.baru@apollo.co.ke', 'anthony', NULL, '46c97c7155118403f3d5bc504e3645ffa567d24a2ced2ac3f81f222f8b2a3ecf67d7c55579133a78', '2019-06-25 06:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `media_centre_categories`
--

CREATE TABLE `media_centre_categories` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creatorname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_centre_categories`
--

INSERT INTO `media_centre_categories` (`id`, `datetime`, `name`, `creatorname`, `email`, `date_added`) VALUES
(25, '12,June 2019 09:46:59', 'Media Centre', 'tony', 'tony@gmail.com', '2019-06-24 16:36:37'),
(26, '12,June 2019 10:01:42', 'CSR', 'tony', 'tony@gmail.com', '2019-06-24 16:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `media_centre_posts`
--

CREATE TABLE `media_centre_posts` (
  `id` int(25) NOT NULL,
  `datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `post` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_centre_posts`
--

INSERT INTO `media_centre_posts` (`id`, `datetime`, `date_added`, `title`, `category`, `author`, `image`, `post`, `status`) VALUES
(2, '21,June 2019 09:42:44', '2019-06-17 11:03:34.959444', 'APA WINS AT AKI 2019 AWARDS', 'Media Centre', 'Anthony baru', 'images/posts/29eacc5ead5bd872ff681b9e2f2b28842.JPG', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 11 March 2019 &amp;ndash;&lt;/em&gt;&lt;/strong&gt;&amp;nbsp;Dr. Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up &amp;ndash; Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position &amp;ndash; Overall premium volume and Grace Akinyi Odhiambo took third position &amp;ndash; Agent of the year General insurance business.&lt;/p&gt;', 1),
(3, '20,June 2019 15:13:41', '2019-06-17 11:03:34.959444', 'AZURI AND APA INSURANCE INTRODUCE AFFORDABLE INCOME AND FUNERAL COVER FOR SOLAR CUSTOMERS', 'Media Centre', 'Anthony', 'images/posts/3ed9110eda1f593630b63632d96cc678a.jpg', '&lt;p&gt;&lt;strong&gt;9 November 2018, Nairobi, Kenya&lt;/strong&gt;&amp;nbsp;&amp;ndash; Azuri Technologies, a leading provider of pay-as-you-go-solar power in conjunction with APA Insurance, Kenya&amp;rsquo;s leading insurer, today announced the launch of HospiCash, a low-cost micro-insurance product for Azuri solar power customers across Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;By adding the optional HospiCash service to their pay-as-you-go home solar solution, Azuri customers benefit from the peace of mind with income cover when hospitalised, in addition to cover for funeral expenses.&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri HospiCash customers who are unable to work due to being hospitalised can claim up to KES 1,000 per day. &amp;nbsp;In addition, the policy also covers funeral expenses up to KES 10,000 upon death of the insured paid to a named beneficiary.&lt;/p&gt;\r\n\r\n&lt;p&gt;Speaking during the official launch of the HospiCash at the APA headquarters in Nairobi, Azuri CEO Simon Bransfield-Garth said: &amp;ldquo;We are delighted to be partnering with APA to further Azuri&amp;rsquo;s vision of providing consumers across Africa with products and services that have the power to truly change and improve lives.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Many off-grid consumers find it difficult to access modern financial products and so combining Azuri&amp;rsquo;s reach and APA&amp;rsquo;s affordable insurance allows customers to concentrate on making a full recovery rather than worrying about the loss of income from being hospitalised.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Apollo Group CEO, Mr. Ashok Shah said, &amp;ldquo;Off-grid consumers have been traditionally underserved by insurance providers because of the relative difficulty of access. The partnership with Azuri provides a means to open up a range of financial inclusion offerings to this important customer base.&amp;nbsp; APA Insurance is committed to providing insurance to all income groups in Kenya.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri&amp;rsquo;s HospiCash cover is being rolled out nationwide and will be available to all Azuri Quad and solar TV customers.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Azuri Quad solar home lighting system costs as little as KES49 per week and includes a 10W solar panel, four bright LED lights, USB port and connectors for mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;\r\n\r\n&lt;p&gt;AzuriTV, the first PayGo solar TV system of its kind to be launched in Africa, features a 24-inch super slim LED TV, over 100 satellite TV channels, four bright LED lights for use inside and outside the home, mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;', 1),
(5, '20,June 2019 10:25:40', '2019-06-17 11:03:34.959444', 'APOLLO FOUNDATION SPONSORS THE 2018 NDAKAINI MARATHON', 'Media Centre', 'Anthony', 'images/posts/5c5e12d1c3537ad1306d3314218a8fc0b.jpg', '&lt;p&gt;&lt;strong&gt;Nairobi, Kenya 21 Spetember 2018&amp;nbsp;&lt;/strong&gt;&amp;ndash; Catherine Karimi, Chief Executive Officer, APA Life Assurance (left) presents the APA Apollo Foundation&amp;rsquo;s sponsorship cheque to James Mukuna, Vice Chairman of the Ndakaini Marathon.&amp;nbsp; APA Apollo is proud to sponsor the half marathon, which is now in its 15th&amp;nbsp;year, as it enhances the foundations support for Environment and Water conservation. The marathon will take place on Saturday 6 October 2018, around the scenic fresh water dam in Murang&amp;rsquo;a County.&lt;/p&gt;\r\n\r\n&lt;p&gt;The annual marathon was started with the aim of increasing awareness particularly among Nairobi residents on the importance of conserving the capital&amp;rsquo;s main source of drinking water.&lt;/p&gt;', 1),
(6, '20,June 2019 09:56:29', '2019-06-20 09:56:29.079455', 'APA SUPPORTS THE MAU-EGERTON UNIVERSITY CROSS COUNTRY FOR THE SIXTH CONSECUTIVE YEAR', 'CSR', 'Anthony', 'images/posts/510d72ff6c6326d72174d1a324f514dd.jpg', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 1 February 2019 &amp;ndash;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;Egerton University Vice Chancellor, Prof. Rose A. Mwonya (left) receives a sponsorship cheque from Meena Shah, Nakuru Branch Manager, APA Insurance (centre) and Hillary Mbithi, APA Nakuru (right) for Ksh 300 000 for the 6th&amp;nbsp;Mau Egerton University Cross Country. &amp;nbsp;This is the sixth consecutive year the company has sponsored the Mau-Egerton University Cross Country, which will take place on Saturday 9 February 2019.&amp;nbsp; The Mau-Egerton University Cross country was created to raise funds for rehabilitation of Mau ecosystem and Njoro River.&lt;/p&gt;\r\n\r\n&lt;p&gt;Over the past five years APA APOLLO has also partnered with Egerton University to plant indigenous trees at the Ngongeri Park as part of restoration of the riparian forest vegetation along the middle section on Njoro River.&lt;/p&gt;', 1),
(7, '20,June 2019 10:10:18', '2019-06-20 10:10:18.428516', 'APA CONTUNIES TO INVEST IN EDUCATION FOR CHELETA PRIMARY SCHOOL STUDENTS', 'CSR', 'Anthony', 'images/posts/2f3efcb09e5f6373e23d625b5d290c4a.jpg', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya 11 January 2018 &amp;ndash;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;Stacy Kavere, Best Girl (left) and Amos Basweti, Best Boy (right) proudly receive their cheque from Catherine Karimi, Chief Executive Officer, APA Life for their 2018 school fees.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA APOLLO have &amp;nbsp;been sponsoring the top boy and girl students from the school since 2006 and this saw the school average performance improve from a mean grade of 141 marks to 308 marks, for their secondary education. &amp;nbsp;The bursary currently has ten students in various learning institutions around the country.&lt;/p&gt;', 1),
(8, '20,June 2019 10:21:47', '2019-06-20 10:12:13.799828', 'APA APOLLO FOUNDATION PROMOTES SPORTING ACTIVITIES BY SUPPORTING THE RUNDA YOUTH SPORTS ASSOCIATION (RYSA) FOOTBALL TEAM.', 'CSR', 'Anthony', 'images/posts/8a895c7194fbd11dff43fb66cf939fece.jpg', '&lt;p&gt;Football is the core sporting activity of RYSA. Through football, RYSA has been able to bring together over 800 young people from Githogoro and Huruma slums&lt;/p&gt;\r\n\r\n&lt;p&gt;The foundation sponsors the fees for RYSA to participate in various leagues and provides the football kits, logistics and team allowances.&lt;/p&gt;\r\n\r\n&lt;p&gt;Though the partnership RYSA has excelled in football, today RYSA participates annually in&amp;nbsp;&lt;strong&gt;Football Kenya Federation (FKF)&amp;nbsp;&lt;/strong&gt;leagues around Nairobi. As a result of excelling in football, RYSA participates annually in&amp;nbsp;&lt;strong&gt;Football Kenya Federation (FKF)&lt;/strong&gt;&amp;nbsp;leagues around Nairobi.&lt;/p&gt;\r\n\r\n&lt;p&gt;At the last edition (2015), RYSA Senior Team was ranked 5th&amp;nbsp;at the Nairobi County Branch of the Football Kenya Federation (FKF) rankings. They are now (2016) elevated and playing in the Nairobi Division One Super8/ Sportpesa League&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA/Apollo organises tournaments for the team in order to boost and continue to nurture the soccer talents and positively engage the youth in Mji wa Huruma and Githongoro villages.&lt;/p&gt;', 1),
(9, '21,June 2019 09:59:55', '2019-06-21 09:18:00.946371', 'THE APA APOLLO GROUP RESULTS REFLECT A SIGNIFICANT IMPROVEMENT IN OVERALL EARNINGS.', 'Media Centre', 'Anthony baru', 'images/posts/91fc249b136eec767eb86398ad0ee7a81.jpg', '&lt;p&gt;&lt;strong&gt;Financial Highlights&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;The Apollo Group, profit before tax, increased by 9% to Ksh 947 Million&lt;/li&gt;\r\n	&lt;li&gt;The Group grew its asset base to Ksh 24 Billion&lt;/li&gt;\r\n	&lt;li&gt;The Group&amp;rsquo;s premium income increased by 14% to Ksh 11 Billion&lt;/li&gt;\r\n	&lt;li&gt;The Group&amp;rsquo;s largest subsidiary, APA Insurance, recorded a strong performance with Gross Written Premiums (GWP) of Ksh 9.56 Billion&lt;/li&gt;\r\n	&lt;li&gt;Net Interest credited at 10.25% on Pension schemes with APA Life Assurance&lt;/li&gt;\r\n	&lt;li&gt;APA&amp;rsquo;s Capital Adequacy Ratio (CAR) at 212%&lt;/li&gt;\r\n	&lt;li&gt;APA&amp;rsquo;s Shareholders to receive Ksh 600 Million dividend (2017 Ksh1.5 billion).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;The Apollo Group, profit before tax, increased by 9% to Ksh 947 million, reflecting improved operational performance. The group registered a 14% increase in premiums from Ksh 9.6 billion to Ksh 11.0 billion and grew its asset base from Ksh 23 billion in 2017 to Ksh 24 billion in 2018. APA Insurance grew by 15% reporting significant growth in its Gross Written Premiums (GWP) in 2018 to Ksh 9.56 Billion from Ksh 8.30 billion in 2017. This is a 15% year on year growth against the insurance industry estimated growth of 4% and now makes APA the third largest General Insurer in Kenya. APA posted Ksh 677 million in profit before tax. The total claims settled by the APA Insurance during the year were KSh6.54 billion compared to Ksh 6.38 billion in 2017.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA Life Assurance has declared 10.25% to pension contributors which is one of the highest in the industry.&lt;/p&gt;\r\n\r\n&lt;p&gt;Commenting on the results, Apollo Group CEO Ashok Shah said: &amp;ldquo;In 2018 the Group has delivered concrete results against the backdrop of a difficult business environment. We have achieved a growth in premiums and in solid investment returns, when many of our peers have shown losses in both operational and investment returns&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mr. Shah added: &amp;ldquo;APA Insurance is still the flagship and continues to grow and provides healthy dividends to the group with very strong ratios. The Group will continue to focus on growing APA Life Assurance and expanding the APA Insurance&amp;rsquo;s general business in Uganda. This indeed is a testimony of our commitment over the long haul in this market. It is our vision to continue being at the forefront in insurance and investments in Kenya and other chosen markets. The Board and Management have agreed that the refreshed strategy of Insuring Happiness, with a greater focus on customer centricity, will position the company for further significant growth&amp;rdquo;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Following the impressive results, APA has declared a Ksh 600 million dividend to its shareholders.&lt;/p&gt;', 1),
(10, '21,June 2019 09:27:52', '2019-06-21 09:27:52.591329', 'APA SPREADS HAPPINESS TO SHOPPERS AT TWO RIVERS MALL ON WORLD HAPPIENSS DAY 2019', 'Media Centre', 'Anthony baru', 'images/posts/a9dda57107ad4519936291c07ff6af81.jpg', '&lt;p&gt;Ashok Shah, The Apollo Group CEO, (left) and the APA Insurance team spread happiness to shopper at Two Rivers Mall on World Happiness Day.&amp;nbsp; The Mall goers where surprised with random acts of kindness and received prizes including household goods, food vouchers, shopping vouchers and holiday trips.&lt;/p&gt;\r\n\r\n&lt;p&gt;Kenya ranked 121 on the 2019 World Happiness Report compared to 132 in 2018.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Let&amp;#39;s do whatever we can to spread more happiness to others today and every day,&amp;rdquo; said Ashok Shah, The Apollo Group CEO. &amp;ldquo;Because when we&amp;#39;re together everything&amp;#39;s better&amp;rdquo;.&lt;/p&gt;', 1),
(11, '28,June 2019 15:00:12', '2019-06-25 11:49:20.355867', 'MARY KIMOTHO Mâ€™MUKINDIA APPOINTED TO APA BOARDS', 'Media Centre', 'Anthony', 'images/posts/11a19e0944a795562881675405b3316c03.jpg', '&lt;p&gt;The Board of Directors of APA Insurance and APA Life is pleased to announce the appointment of Mary Kimotho M&amp;rsquo;Mukindia to&lt;strong&gt; &lt;/strong&gt;Board of Directors with effect from 1 March 2019.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Apollo Group CEO, Ashok Shah, stated, &amp;ldquo;I am extremely pleased to welcome Mary to the boards of APA Insurance and APA Life.&amp;nbsp; A highly respected and qualified Kenyan that I have learnt to know and appreciate over the years.&amp;nbsp; Her foresight, experience and competent leadership qualities will guide the Board at this very exciting time in our business.&amp;nbsp; I look forward to support her as the Group CEO and I wish her all the best in this endeavour.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;The new Board member, Mary Kimotho M&amp;rsquo;Mukindia added, &amp;quot;I am honoured and thrilled to join the boards of two of Kenya leading insurance companies which are part of the Apollo Group.&amp;nbsp; I look forward to working with this exceptional team to deliver the best results for our shareholders and clients.&amp;nbsp; I wish to thank Ashok for his distinguished service and leadership in getting the Group to this point, and look forward to his and the other board members continued guidance.&amp;rdquo;&lt;/p&gt;', 1),
(12, '25,June 2019 11:52:18', '2019-06-25 11:52:18.807459', 'APA LIFE WINS AT AKI 2019 AWARDS', 'Media Centre', 'Anthony', 'images/posts/9eacc5ead5bd872ff681b9e2f2b28842.JPG', '&lt;p&gt;Dr Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life Assurance (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up - Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position - Overall premium volume and Grace Akinyi Odhiambo took third position - Agent of the year General insurance business.&lt;/p&gt;', 0),
(13, '30,June 2019 09:02:03', '2019-06-25 12:31:15.597123', 'COST BENEFITS A BIG ATTRACTION IN GENERIC ROUTE TO PRESCRIPTIONS VINOD BHARATAN, CHIEF EXECUTIVE OFFICER, APA INSURANCE.', 'Media Centre', 'Anthony', 'images/posts/1379ebf16d6a9ae0e860c8834db4735b24.jpg', '&lt;p&gt;Opting for a generic drug can give you the same benefits as branded medicines &amp;ndash; but at a considerably lower cost.&amp;nbsp;It is no secret that Kenyan consumers are paying over the odds for prescription drugs. Now people are increasingly turning to generics to try to reduce their monthly bill for medication. But what are they and do they suit everyone?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;What are generics?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;When a new drug is produced, it is protected by its patent for a certain number of years. Once this ceases, any drug manufacturer can produce their own equivalent, which is typically sold at a significantly lower price, given that this manufacturer hasn&amp;rsquo;t incurred all the costs associated with developing and creating the drug. These are known as generics.&lt;/p&gt;\r\n\r\n&lt;p&gt;Health financiers are now encouraging doctors and pharmacists to substitute a brand name drug for its generic equivalent, provided that it is included on a list published by the Ministry of Health.&lt;/p&gt;\r\n\r\n&lt;p&gt;So, for example, if you take a branded medication that has been approved for generic substitution, your doctor or pharmacist will automatically make the switch.&amp;nbsp; Doing so will reduce the cost to the patient.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, the only time a pharmacist can offer you a branded drug is if the doctor prescribing the medication writes &amp;ldquo;do not substitute&amp;rdquo; on the prescription.&lt;/p&gt;\r\n\r\n&lt;p&gt;The legislation is very clear that the prescribing doctor must write it in their own handwriting where it is deemed there is a clinical exemption.&amp;nbsp; This means that in certain circumstances &amp;ndash; such as those outlined below &amp;ndash; a patient can continue to use the branded medication under their existing scheme.&lt;/p&gt;\r\n\r\n&lt;p&gt;If, however, they opt to stick with the branded drug simply because they are familiar with it and fear change, they may have to pay the difference themselves.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;But are generics always equivalent?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Typically, there is no risk to a patient in switching from a brand name drug to its generic equivalent. However, there may be exceptions.&lt;/p&gt;\r\n\r\n&lt;p&gt;Although generic drugs have the same active ingredient as branded drugs, they are composed differently. This means that they may have different bioavailability from either the branded drug or, indeed, other generic drugs of the same class.&amp;nbsp; Typically, this won&amp;rsquo;t affect the patient in terms of efficacy and safety, but in drugs with a narrow therapeutic index, this could potentially lead to adverse effects.&lt;/p&gt;\r\n\r\n&lt;p&gt;It is therefore important to use generic drugs as substitutes only if they have been shown to have similar bioavailability to the branded drug and have been approved for use in Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Therapeutic efficacy&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Prescribers need to be cognisant of theoretical changes in therapeutic efficacy and monitor for any changes.&amp;nbsp; For example, the colour of the tablet may change which can lead to confusion and may lead to poor compliance.&lt;/p&gt;\r\n\r\n&lt;p&gt;Prescribers should again ensure patients are aware and understand the changes being made to their medication. In any case, if you&amp;rsquo;re in doubt about the suitability of generic medication, check with your GP or whoever prescribes your medication for reassurance, or call into your local pharmacist.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Looking for low-cost generics&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Generic alternatives too many drugs should be available in your local pharmacy so you can always ask for the generic substitution for any medication you may be taking.&lt;/p&gt;\r\n\r\n&lt;p&gt;If the drug is still under patent it won&amp;rsquo;t be available, or it may turn out to be unsuitable for your needs, but it&amp;rsquo;s still worth asking about.&lt;/p&gt;', 1),
(14, '30,June 2019 08:43:57', '2019-06-25 12:42:21.498131', 'GOVERNMENT OF KENYA PARTNERS WITH INSURERS TO MAKE RECORD CROP INSURANCE PAY-OUTS', 'Media Centre', 'Anthony', 'images/posts/1493335678cc6658fe268d5382396d7db8.jpg', '&lt;p&gt;Ksh 25.5 million on tap for 7,025 smallholder assorted crop farmers in 21 counties in Kenya. This is under the Kenya Agricultural Insurance Program (KAIP) where the government of Kenya through its State Department of Crop Development and a consortium of six insurance companies headed by APA insurance.&lt;/p&gt;\r\n\r\n&lt;p&gt;Climate change is a hard-hitting reality that has thrown Kenya smallholder farmers into anxiety mode. The weather patterns have drastically changed from the normal where there use to be a regular and predictable downpour. Planting periods have shifted and farmers are no longer sure of productivity. This jeopardises our food security and national planning.&lt;/p&gt;\r\n\r\n&lt;p&gt;To curb the challenges of production uncertainties, the Kenyan government through its state department of crop development partnered with six insurance companies led by APA Insurance to caution smallholder farmers against climate change related risk leading to reduced yields.&lt;/p&gt;\r\n\r\n&lt;p&gt;The consortium is composed of six insurance companies; APA, Jubilee, CIC, UAP, Kenya orient and AMACO. This program started in the year 2016 with three counties (Bungoma, Nakuru and Embu) under the support of the World Bank. The program has grown to 21 counties as summarised in the 2018 business below.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Government of Kenya Partners with Insurers to Make Record Crop Insurance Pay-outs &quot; src=&quot;http://localhost/cms/upload/91835652.png&quot; style=&quot;height:540px; width:609px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;25.5 million will be paid to 7,025 smallholder farmers beneficiaries across the 8 of 21 counties in Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;APA Insurance CEO, Vinod Bharatan lauded the government for supporting the program by providing subsidies for the premiums, adding that this will contribute towards safeguarding farmers&amp;rsquo; livelihoods that are often threatened by adverse climatic conditions.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Smallholder farmers are the backbone of our agricultural production. However, in recent years, they have had to bear huge risk that comes with effects of climate change. The weather is no longer predictable and natural disaster have become more frequent, leading to huge crop losses. We aim to address this challenge to livelihoods, our bread basket and our economy,&amp;rdquo; Mr Bharatan said.&lt;/p&gt;\r\n\r\n&lt;p&gt;The just concluded 2019 enrolment into the program has expanded to 27 counties with a focus of reaching the 33 active crop arable counties in 2020. The program is looking at insuring 1 million farmers by 2020.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Area Yield Index Insurance covers farmers based on the condition of harvest history of the unit area of insurance where the farm falls.&lt;/p&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_02_105005_adding_timestamps_to_products_table', 1),
(2, '2019_09_02_105708_adding_timestamp_columns_to_tables_without_timestamps', 2);

-- --------------------------------------------------------

--
-- Table structure for table `old_all_risk_item`
--

CREATE TABLE `old_all_risk_item` (
  `all_risk_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `customer_role` set('Owner','Tenant') COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` int(11) DEFAULT NULL,
  `serial_no` int(65) NOT NULL,
  `item_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('anthonbaru@gmail.com', '$2y$10$18w4QBe2aAcZeFT.dE5piuP.y3weetjJt.5ISoEqPoMHO7rI035vm', '2019-09-03 07:31:32'),
('anthonybaru@gmail.com', '$2y$10$OgCbEI39kJHuQel8qRv1denaxRb4.gK7XV9CTWSIDCd9OSQKmw6Uq', '2019-09-03 09:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `created_at`, `updated_at`) VALUES
(6, 'MOTOR PRIVATE', '2019-09-11 08:37:40', '2019-09-11 08:37:44'),
(7, 'MOTOR CYCLE', '2019-09-11 08:38:07', '2019-09-11 08:38:11'),
(8, 'PEDAL CYCLE', '2019-09-11 08:38:24', '2019-09-11 08:38:28'),
(9, 'TRAVEL INSURANCE', '2019-09-11 08:38:55', '2019-09-11 08:38:58'),
(10, 'HOME COVER/DOMESTIC PACKAGE', '2019-09-11 08:39:25', '2019-09-11 08:39:29'),
(11, 'PET', '2019-09-11 08:39:52', '2019-09-11 08:39:54'),
(12, 'PERSONAL ACCIDENT', '2019-09-11 08:40:19', '2019-09-11 08:40:22'),
(13, 'GOLFERS', '2019-09-11 08:40:37', '2019-09-11 08:40:40'),
(14, 'FAMILY HEALTH COVER(JAMII PLUS', '2019-09-11 08:41:10', '2019-09-11 08:41:13'),
(15, 'FAMILY HEALTH COVER(AFYA NAFUU', '2019-09-11 08:41:31', '2019-09-11 08:41:34'),
(16, 'CANCER CARE(FEMINA)', '2019-09-11 08:42:13', '2019-09-11 08:42:17'),
(17, 'ER CARD', '2019-09-11 08:42:29', '2019-09-11 08:42:33'),
(18, 'FIXED SAVINGS PLAN(IMARIKA)', '2019-09-11 08:44:47', '2019-09-11 08:44:50'),
(19, 'ANTICIPATED SAVINGS(AKIBA HALI', '2019-09-11 08:45:37', '2019-09-11 08:45:40'),
(20, 'EDUCATION PLAN(ELIMU)', '2019-09-11 08:46:14', '2019-09-11 08:46:18'),
(21, 'HOSPITALISATION LOSS OF INCOME', '2019-09-11 08:46:51', '2019-09-11 08:46:55'),
(22, 'FUNERAL EXPENSE COVER(PUMZISHA', '2019-09-11 08:51:41', '2019-09-11 08:51:46'),
(23, 'LIFE COVER(TERM ASSURANCE)', '2019-09-11 08:52:56', '2019-09-11 08:53:00'),
(24, 'INDIVUDUAL PENSION PLAN(IPP)', '2019-09-11 08:53:03', '2019-09-11 08:53:15'),
(25, 'MORTGAGE PROTECTION', '2019-09-11 08:53:22', '2019-09-11 08:53:24'),
(26, 'MOTOR COMMERCIAL', '2019-09-11 08:59:08', '2019-09-11 08:59:10'),
(27, 'MOTOR CYCLE(PSV)', '2019-09-11 08:59:14', '2019-09-11 08:59:13'),
(28, 'MOTOR TRADE', '2019-09-11 08:59:16', '2019-09-11 08:59:17'),
(29, 'FIRE AND PERILS', '2019-09-11 08:59:20', '2019-09-11 08:59:19'),
(30, 'WIBA AND PERSONAL ACCIDENT', '2019-09-11 08:59:22', '2019-09-11 08:59:23'),
(31, 'THEFT', '2019-09-11 08:59:29', '2019-09-11 08:59:28'),
(32, 'ENGINEERING', '2019-09-11 08:59:31', '2019-09-11 08:59:32'),
(33, 'LIABILITY', '2019-09-11 08:59:36', '2019-09-11 08:59:36'),
(34, 'MARINE', '2019-09-11 08:59:38', '2019-09-11 08:59:39'),
(35, 'AVIATION', '2019-09-11 08:59:41', '2019-09-11 08:59:43'),
(36, 'SPECIAL PACKAGE COVERS', '2019-09-11 08:59:43', '2019-09-11 08:59:44'),
(37, 'GOOD IN TRANSIT(GIT)', '2019-09-11 08:59:48', '2019-09-11 08:59:47'),
(38, 'BONDS', '2019-09-11 08:59:49', '2019-09-11 08:59:50'),
(39, 'PLATE GLASS', '2019-09-11 08:59:52', '2019-09-11 08:59:51'),
(40, 'HEALTH CORPORATE', '2019-09-11 08:59:53', '2019-09-11 08:59:54'),
(41, 'COMMERCIAL LIFE', '2019-09-11 08:59:56', '2019-09-11 08:59:55'),
(42, 'CROP COVER', '2019-09-11 08:59:57', '2019-09-11 08:59:58'),
(43, 'LIVESTOCK COVER', '2019-09-11 09:00:01', '2019-09-11 09:00:41'),
(44, 'MICRO PROPERTY', '2019-09-11 09:00:03', '2019-09-11 09:00:42'),
(45, 'APOLLO BALANCED FUND', '2019-09-11 09:00:04', '2019-09-11 09:00:43'),
(46, 'APOLLO EQUITY FUND', '2019-09-11 09:00:08', '2019-09-11 09:00:44'),
(47, 'APOLLO MONEY MARKET FUND', '2019-09-11 09:00:09', '2019-09-11 09:00:45'),
(50, 'NULL', '2019-09-11 15:58:14', '2019-09-11 15:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `category_id` int(11) NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`category_id`, `category`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 'BUILDING', 10, '2019-09-11 14:09:47', '2019-09-11 14:09:50'),
(7, 'CONTENTS', 10, '2019-09-11 14:46:27', '2019-09-11 14:46:29'),
(10, 'ALL RISK', 10, '2019-09-11 14:47:58', '2019-09-11 14:48:01'),
(11, 'DOMESTIC', 10, '2019-09-11 14:48:47', '2019-09-11 14:48:49'),
(12, 'LIABILITY', 10, '2019-09-11 14:49:11', '2019-09-11 14:49:12'),
(14, 'NULL', 50, '2019-09-11 15:57:40', '2019-09-11 15:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `products_leads`
--

CREATE TABLE `products_leads` (
  `id` int(15) NOT NULL,
  `leads_product_id` int(11) DEFAULT NULL,
  `leads_product_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(255,0) DEFAULT NULL,
  `yom` int(8) DEFAULT NULL,
  `more_info` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_leads`
--

INSERT INTO `products_leads` (`id`, `leads_product_id`, `leads_product_category_id`, `name`, `email`, `mobile`, `location`, `make`, `model`, `value`, `yom`, `more_info`) VALUES
(2, NULL, NULL, 'John Doe', 'johndoe@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, ''),
(10, NULL, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, ''),
(11, NULL, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, 'none'),
(12, NULL, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, 'none'),
(13, 6, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, 'none'),
(20, 6, 6, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, 'none'),
(21, 6, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, 'none'),
(23, 6, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, 'none'),
(24, 6, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, 'none'),
(25, 6, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2013, 'none'),
(26, 6, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2018, ''),
(27, 6, NULL, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Toyota', 'crown', 800000, 2018, ''),
(28, 6, NULL, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'Mombasa', 'Toyota', 'Harrier', 80000, 2360, ''),
(40, 6, 6, 'ANTHONY KARONJI', 'anthonybaru@gmail.com', '700658856', 'Nakuru', 'Toyota', 'Harrier', 4550000, 2018, ''),
(41, 6, 14, 'John Doe', 'johndoe@gmail.com', '712345678', 'Nakuru', 'Mercedez', 'Benz', 800000, 2014, ''),
(42, 6, 14, 'ANTHONY KARONJI', 'anthonybaru@gmail.com', '700658856', 'Nakuru', 'Toyota', 'Vitz', 80000, 2018, ''),
(43, 6, 14, 'Winnie Koech', 'winniekoech@gmail.com', '0702931773', 'Nairobi', 'Mercedez', 'e class', 2000000, 2016, ''),
(44, 6, 14, 'name', 'name@gmail.com', '7006588564', 'nairobi', 'Toyota', 'Harrier', 800000, 2000, ''),
(45, 6, 14, 'John Doe', 'johndoe@gmail.com', '712345678', 'Nakus', 'Toyota', 'Harrier', 8000000, 2006, ''),
(46, 6, 14, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'Nakus', 'Toyota', 'Harrier', 800000, 2013, ''),
(47, 6, 14, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'nairobi', 'toyota', 'crown', 8000000, 1223, ''),
(48, 6, 14, 'John Doe', 'johndoe@gmail.com', '712345678', 'Nakuru', 'Mercedez', 'Harrier', 5822222, 1234, ''),
(49, 6, 14, 'John Doe', 'johndoe@gmail.com', '712345678', 'Mombasa', 'Mercedez', 'Harrier', 800000, 2019, ''),
(50, 6, 14, 'peter chgee', 'p@gmail.com', '07123456', 'Marsabit', 'toyota', 'probox', 800000, 2018, ''),
(51, 6, 14, 'John Doe', 'johndoe@gmail.com', '712345678', 'Nakuru', 'Toyota', 'Benz', 3000000, 2016, ''),
(52, 6, 14, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'Nairobi', 'Mercedez', 'S-CLASS', 8000000, 2016, ''),
(53, 6, 14, 'Winnie Koech', 'winnie@gmail.com', '4265412654', 'nairobi', 'toyota', 'crown', 500000, 1900, ''),
(54, 6, 14, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'Nakuru', 'Mercedez', 'S-CLASS', 800005, 2015, ''),
(55, 6, 14, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'Nakuru', 'Mercedez', 'S-CLASS', 800005, 2015, ''),
(56, 6, 14, 'Jane Doe', 'janedoe@gmail.com', '712365478', 'Nakuru', 'Mercedez', 'S-CLASS', 800005, 2015, '');

-- --------------------------------------------------------

--
-- Table structure for table `pr_dp_allrisks`
--

CREATE TABLE `pr_dp_allrisks` (
  `allrisk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL,
  `serial_number` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `make_model` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `item_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(20,0) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pr_dp_allrisks`
--

INSERT INTO `pr_dp_allrisks` (`allrisk_id`, `user_id`, `cover_id`, `serial_number`, `make_model`, `item_description`, `value`, `created_at`, `updated_at`) VALUES
(1, 1665378265, NULL, '7899564', 'toshiba', 'laptop', 200000, '2019-09-04 09:01:10.000000', '2019-09-04 09:01:10.000000'),
(2, 1665378265, NULL, 'JCS8965', 'JVC', 'RADIO', 80000, '2019-09-13 07:32:45.000000', '2019-09-13 07:32:45.000000'),
(3, 1665378265, NULL, '4568', 'SONY', 'ITEM2', 20000, '2019-09-13 12:31:21.562876', '2019-09-13 12:31:21.562876');

-- --------------------------------------------------------

--
-- Table structure for table `pr_dp_calculator_customer_quotations`
--

CREATE TABLE `pr_dp_calculator_customer_quotations` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `premises` bigint(20) DEFAULT NULL,
  `contents` bigint(20) DEFAULT NULL,
  `all_risk` bigint(20) DEFAULT NULL,
  `domestic_employee` bigint(20) DEFAULT NULL,
  `liability` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pr_dp_calculator_customer_quotations`
--

INSERT INTO `pr_dp_calculator_customer_quotations` (`id`, `full_name`, `phone_number`, `email`, `location`, `property`, `premises`, `contents`, `all_risk`, `domestic_employee`, `liability`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'owner', 800000, NULL, NULL, NULL, NULL, '2019-09-05 16:37:13.000000', '2019-09-05 16:37:13.000000'),
(2, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'owner', 800000, NULL, NULL, NULL, NULL, '2019-09-05 16:37:44.000000', '2019-09-05 16:37:44.000000'),
(3, 'John Doe', '712345678', 'johndoe@gmail.com', 'Nairobi', 'tenant', NULL, 8000000, 8000000, NULL, NULL, '2019-09-05 16:53:09.000000', '2019-09-05 16:53:09.000000'),
(4, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'tenant', NULL, 750000, 15000, NULL, NULL, '2019-09-05 16:54:25.000000', '2019-09-05 16:54:25.000000'),
(5, 'John Doe', '712345678', 'johndoe@gmail.com', 'Nakus', 'tenant', NULL, 8000000, 89000, 800000, 900000, '2019-09-05 17:25:50.000000', '2019-09-05 17:25:50.000000'),
(6, 'John Doe', '712345678', 'johndoe@gmail.com', 'na', 'owner', 5100000, NULL, NULL, NULL, NULL, '2019-09-06 08:57:04.000000', '2019-09-06 08:57:04.000000'),
(7, 'John Doe', '712345678', 'johndoe@gmail.com', 'na', 'owner', 5100000, NULL, NULL, NULL, NULL, '2019-09-06 08:57:11.000000', '2019-09-06 08:57:11.000000'),
(8, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'tenant', NULL, 500000000, NULL, NULL, NULL, '2019-09-06 15:45:11.000000', '2019-09-06 15:45:11.000000'),
(9, 'John Doe', '712345678', 'johndoe@gmail.com', 'Mombasa', 'tenant', NULL, 500000000, NULL, NULL, NULL, '2019-09-06 15:45:53.000000', '2019-09-06 15:45:53.000000'),
(10, 'GILBERT NJOROGE', '0700658856', 'P@gmail.cm', 'Nairobi', 'owner', 80000000, 95555, 5222, NULL, NULL, '2019-09-13 10:31:07.000000', '2019-09-13 10:31:07.000000'),
(11, 'name', '7006588564', 'anthonybaru@gmail.com', 'Mombasa', 'tenant', NULL, 464651841, 50000, 56666, 65456, '2019-09-13 15:28:43.979475', '2019-09-13 15:28:43.979475'),
(12, 'John Doe', '712345678', 'johndoe@gmail.com', 'nairobi', 'owner', 300000, NULL, NULL, 200000, NULL, '2019-09-16 09:29:18.188682', '2019-09-16 09:29:18.188682');

-- --------------------------------------------------------

--
-- Table structure for table `pr_dp_contents`
--

CREATE TABLE `pr_dp_contents` (
  `content_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_value` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pr_dp_contents`
--

INSERT INTO `pr_dp_contents` (`content_id`, `user_id`, `item_description`, `item_value`, `created_at`, `updated_at`) VALUES
(1, NULL, 'laptop', 60000, '2019-09-04 06:52:50.000000', '2019-09-04 06:52:50.000000'),
(2, NULL, 'bed', 60000, '2019-09-04 06:52:50.000000', '2019-09-04 06:52:50.000000'),
(3, 1665378265, 'laptop', 80000, '2019-09-04 08:59:07.000000', '2019-09-04 08:59:07.000000'),
(4, 1665378265, 'furniture', 90000, '2019-09-04 08:59:07.000000', '2019-09-04 08:59:07.000000'),
(5, 1665378265, 'naem', 9555, '2019-09-04 08:59:07.000000', '2019-09-04 08:59:07.000000'),
(6, 1665378265, 'COUCH', 500000, '2019-09-13 07:32:28.000000', '2019-09-13 07:32:28.000000'),
(7, 1665378265, 'NAE', 80000, '2019-09-13 12:30:41.669629', '2019-09-13 12:30:41.669629'),
(8, 1665378265, 'NAME', 96522, '2019-09-13 12:30:41.768916', '2019-09-13 12:30:41.768916');

-- --------------------------------------------------------

--
-- Table structure for table `pr_dp_covers`
--

CREATE TABLE `pr_dp_covers` (
  `cover_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cover` double NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User Foreign Key ',
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pr_dp_domestics`
--

CREATE TABLE `pr_dp_domestics` (
  `domestic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `employee_type` enum('Indoors Staff','Gardener','Stablemen','Chauffeurs','Watchmen') COLLATE utf8_unicode_ci NOT NULL,
  `number_of_employees` int(11) NOT NULL,
  `annual_salary` double NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pr_dp_general_informations`
--

CREATE TABLE `pr_dp_general_informations` (
  `id` int(11) NOT NULL,
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
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pr_dp_general_informations`
--

INSERT INTO `pr_dp_general_informations` (`id`, `user_id`, `insurer_decline`, `insurer_decline_details`, `special_terms`, `special_terms_details`, `cancelled_refused_cover`, `cancelled_refused_cover_details`, `increased_premium`, `increased_premium_details`, `sustained_loss_from_mentioned_perils`, `sustained_loss_from_mentioned_perils_details`, `created_at`, `updated_at`) VALUES
(1, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-02 09:23:47.000000', '2019-09-02 09:23:47.000000'),
(2, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-02 09:30:10.000000', '2019-09-02 09:30:10.000000'),
(3, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-02 12:09:58.000000', '2019-09-02 12:09:58.000000'),
(4, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-04 09:24:09.000000', '2019-09-04 09:24:09.000000'),
(5, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-06 07:52:05.000000', '2019-09-06 07:52:05.000000'),
(6, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-13 07:33:08.000000', '2019-09-13 07:33:08.000000'),
(7, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-13 12:31:41.498289', '2019-09-13 12:31:41.498289'),
(8, 1665378265, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2019-09-16 06:52:35.334885', '2019-09-16 06:52:35.334885');

-- --------------------------------------------------------

--
-- Table structure for table `pr_dp_premises`
--

CREATE TABLE `pr_dp_premises` (
  `premises_id` int(11) NOT NULL,
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
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pr_dp_premises`
--

INSERT INTO `pr_dp_premises` (`premises_id`, `customer_role`, `user_id`, `location`, `dwelling_wall`, `dwelling_roof`, `floors`, `outbuilding_wall`, `outbuilding_roof`, `business`, `business_description`, `dwelling`, `sole_occupation`, `for_hire`, `thirty_day_inoccupancy`, `thirty_day_inoccupancy_details`, `seven_day_inoccupancy`, `seven_day_inoccupancy_details`, `good_state_of_repair`, `burglar_proof`, `burglar_proof_details`, `other_sec_arrangement`, `premises_value`, `cover_id`, `created_at`, `updated_at`) VALUES
(5, '', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, NAIROBI', 1, 1, 5, 2, 1, '1', 'Shops', 'self-contained', 1, NULL, 0, NULL, '0', NULL, 0, 0, NULL, 'Guards', 5000000, NULL, '2019-09-02 09:49:32.000000', '2019-09-02 09:49:32.000000'),
(6, '', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, NAks', 2, 1, 2, 1, 1, '1', 'Shops', 'self-contained', 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, 'Guards', 5000000, NULL, '2019-09-02 11:01:27.000000', '2019-09-02 11:01:27.000000'),
(7, '', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLAND Area', 2, 2, 8, 2, 2, '1', 'Saloon.', 'self-contained', 0, 0, 0, NULL, '0', NULL, 0, 0, NULL, 'Dogs', 5000000, NULL, '2019-09-02 11:04:00.000000', '2019-09-02 11:04:00.000000'),
(8, '', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLAND Nanyuki', 1, 1, 1, 1, 1, '1', 'Saloon.', 'self-contained', 0, 0, 0, NULL, NULL, '0', 0, 0, NULL, 'Dogs', 5000000, NULL, '2019-09-02 11:10:26.000000', '2019-09-02 11:10:26.000000'),
(9, 'Owner', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLAND Niavasha', 1, 1, 1, 1, 1, '1', 'Saloon.', 'self-contained', 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, 'Dogs', 5000000, NULL, '2019-09-02 11:24:39.000000', '2019-09-02 11:24:39.000000'),
(10, 'Owner', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, COAST', 1, 1, 6, 1, 2, '0', NULL, 'self-contained', 0, 0, 0, NULL, NULL, '0', 0, 0, NULL, NULL, 500000, NULL, '2019-09-04 08:58:31.000000', '2019-09-04 08:58:31.000000'),
(11, 'Owner', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLAN', 1, 2, 1, NULL, NULL, '0', NULL, 'room-not-self-contained', 0, 0, 0, NULL, '0', NULL, 0, 0, NULL, NULL, 300000, NULL, '2019-09-04 16:47:45.000000', '2019-09-04 16:47:45.000000'),
(12, 'Owner', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, Marsabit', 1, 2, 1, 2, 2, '0', NULL, 'room-not-self-contained', 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, 5100000, NULL, '2019-09-06 06:06:04.000000', '2019-09-06 06:06:04.000000'),
(13, 'Tenant', 1665378265, 'PLOT NO. 1870/VI/209 MVULI ROAD WESTLANDS, THIKA', 2, 1, 2, 1, NULL, '0', NULL, 'room-not-self-contained', 0, 0, 0, NULL, NULL, '0', 0, 0, NULL, NULL, 500000, NULL, '2019-09-13 12:30:20.220806', '2019-09-13 12:30:20.220806');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jobs`
--

CREATE TABLE `ref_jobs` (
  `job_id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `ref_outbuilding_roofs`
--

CREATE TABLE `ref_outbuilding_roofs` (
  `id` int(11) NOT NULL,
  `description` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ref_outbuilding_roofs`
--

INSERT INTO `ref_outbuilding_roofs` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Stone', '2019-09-02 09:50:55.000000', '2019-09-02 09:51:00.000000'),
(2, 'Brick', '2019-09-02 11:08:12.000000', '2019-09-02 11:08:16.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ref_outbuilding_walls`
--

CREATE TABLE `ref_outbuilding_walls` (
  `id` int(11) NOT NULL,
  `description` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ref_outbuilding_walls`
--

INSERT INTO `ref_outbuilding_walls` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Stone', '2019-09-02 09:50:55', '2019-09-02 09:51:00'),
(2, 'Brick', '2019-09-02 11:09:21', '2019-09-02 11:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `ref_roof_materials`
--

CREATE TABLE `ref_roof_materials` (
  `id` int(11) NOT NULL,
  `description` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ref_roof_materials`
--

INSERT INTO `ref_roof_materials` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Stone', '2019-09-02 09:50:55.000000', '2019-09-02 09:51:00.000000'),
(2, 'Brick', '2019-09-02 11:05:11.000000', '2019-09-02 11:05:19.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ref_wall_materials`
--

CREATE TABLE `ref_wall_materials` (
  `id` int(11) NOT NULL,
  `description` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ref_wall_materials`
--

INSERT INTO `ref_wall_materials` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Stone', '2019-09-02 09:50:55.000000', '2019-09-02 12:51:00.000000'),
(2, 'Brick', '2019-09-02 09:50:55.000000', '2019-09-02 12:51:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
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
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `phone_number`, `other_number`, `national_id`, `kra`, `postal_address`, `city_town`, `post_code`, `county`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 1665378265, 'ANTHONY', 'JOHN', 'DOE', 'anthonbaru@gmail.com', '$2y$10$X41jZU/in8MV3SMMHVR95OBJ7/RcUfu3HhJZQIO1H33iUavSCpEMC', '0700123456', '073654321', '12345678', 'A8528452568541P', 9577, 'Mombasa', 300, 'Mombasa', NULL, NULL, '2019-09-02 06:46:25.000000', '2019-09-13 07:40:51.778244'),
(6, 26672089, 'John', NULL, 'Doe', 'anthonybaru@gmail.com', '$2y$10$1oEUMNy1Il27sgIE23tO/u6iz1R66.Dpcq9fnbvAxbr6.jG3/GfXO', '0712345678', NULL, '12345678', 'A8528452568541P', NULL, NULL, NULL, NULL, NULL, 'ZYUm536fgGqnZmLlLUzuX77AHdvslsaorbrjlDZdX4OsEcSk4nMtHLSlJuDT', '2019-09-03 07:33:38.000000', '2019-09-03 08:01:37.000000'),
(8, 97772024, 'John', NULL, 'Doe', 'johndoe@gmail.com', '$2y$10$QwzhIVSCEtj/ZR9h5yS6C.KDVufxRRhgCrwWkmOfmx7fbU/tGCdeq', '0712345678', NULL, '12345622', 'A456982158I', NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-04 11:42:41.000000', '2019-09-04 11:42:41.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apa_job_applicants`
--
ALTER TABLE `apa_job_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apa_job_applicants_certification`
--
ALTER TABLE `apa_job_applicants_certification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id fk` (`job_id`),
  ADD KEY `applicant_id fk` (`applicant_id`);

--
-- Indexes for table `apa_job_applicants_education_qualification`
--
ALTER TABLE `apa_job_applicants_education_qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicant id` (`applicant_id`),
  ADD KEY `job id` (`job_id`);

--
-- Indexes for table `apa_job_applicants_employment_history`
--
ALTER TABLE `apa_job_applicants_employment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicant id fk` (`applicant_id`),
  ADD KEY `job id fk` (`job_id`);

--
-- Indexes for table `apa_job_applicants_file_attachments`
--
ALTER TABLE `apa_job_applicants_file_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicant_id_fk` (`applicant_id`),
  ADD KEY `apa_job_post_fk` (`job_id`);

--
-- Indexes for table `apa_job_applicants_personal_info`
--
ALTER TABLE `apa_job_applicants_personal_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apa_applicant fk` (`applicant_id`),
  ADD KEY `apa_job_post fk` (`job_id`);

--
-- Indexes for table `apa_job_posts`
--
ALTER TABLE `apa_job_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apollo_confrence_facilities`
--
ALTER TABLE `apollo_confrence_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apollo_confrence_facilities_bookings`
--
ALTER TABLE `apollo_confrence_facilities_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booked facility fk` (`apollo_confrence_facilities_fk`);

--
-- Indexes for table `hr_jobs_users`
--
ALTER TABLE `hr_jobs_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_centre_admin_registration`
--
ALTER TABLE `media_centre_admin_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_centre_categories`
--
ALTER TABLE `media_centre_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_centre_posts`
--
ALTER TABLE `media_centre_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `old_all_risk_item`
--
ALTER TABLE `old_all_risk_item`
  ADD PRIMARY KEY (`item_id`) USING BTREE,
  ADD KEY `IX_Relationship29` (`item_id`) USING BTREE,
  ADD KEY `all_risk_id` (`all_risk_id`) USING BTREE,
  ADD KEY `section_id` (`section_id`) USING BTREE,
  ADD KEY `item_type` (`item_type`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`) USING BTREE,
  ADD UNIQUE KEY `invoice_no` (`invoice_no`) USING BTREE,
  ADD KEY `Relationship2` (`user_id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`) USING BTREE,
  ADD UNIQUE KEY `product_name` (`product_name`) USING BTREE;

--
-- Indexes for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`category_id`) USING BTREE,
  ADD KEY `Reference Table` (`product_id`) USING BTREE,
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `products_leads`
--
ALTER TABLE `products_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_product_id` (`leads_product_id`),
  ADD KEY `leads_product_category_id` (`leads_product_category_id`);

--
-- Indexes for table `pr_dp_allrisks`
--
ALTER TABLE `pr_dp_allrisks`
  ADD PRIMARY KEY (`allrisk_id`) USING BTREE,
  ADD KEY `cover_id` (`cover_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `pr_dp_calculator_customer_quotations`
--
ALTER TABLE `pr_dp_calculator_customer_quotations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pr_dp_contents`
--
ALTER TABLE `pr_dp_contents`
  ADD PRIMARY KEY (`content_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `pr_dp_covers`
--
ALTER TABLE `pr_dp_covers`
  ADD PRIMARY KEY (`cover_id`) USING BTREE,
  ADD KEY `IX_Relationship3` (`user_id`) USING BTREE,
  ADD KEY `IX_Relationship4` (`category_id`,`product_id`) USING BTREE,
  ADD KEY `cover_id` (`cover_id`,`user_id`) USING BTREE,
  ADD KEY `Cover must have a product` (`product_id`) USING BTREE,
  ADD KEY `end_date` (`end_date`) USING BTREE,
  ADD KEY `item_id` (`item_id`) USING BTREE;

--
-- Indexes for table `pr_dp_domestics`
--
ALTER TABLE `pr_dp_domestics`
  ADD PRIMARY KEY (`domestic_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `pr_dp_general_informations`
--
ALTER TABLE `pr_dp_general_informations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pr_dp_general_informations_ibfk_1` (`user_id`) USING BTREE;

--
-- Indexes for table `pr_dp_premises`
--
ALTER TABLE `pr_dp_premises`
  ADD PRIMARY KEY (`premises_id`) USING BTREE,
  ADD KEY `Relationship18` (`customer_role`) USING BTREE,
  ADD KEY `Relationship7` (`dwelling_wall`) USING BTREE,
  ADD KEY `outbuilding walll material` (`outbuilding_wall`) USING BTREE,
  ADD KEY `outbuilding roof` (`outbuilding_roof`) USING BTREE,
  ADD KEY `building_id` (`premises_id`,`customer_role`) USING BTREE,
  ADD KEY `cover_id` (`cover_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `dwelling_roo` (`dwelling_roof`) USING BTREE;

--
-- Indexes for table `ref_jobs`
--
ALTER TABLE `ref_jobs`
  ADD PRIMARY KEY (`job_id`) USING BTREE,
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `ref_outbuilding_roofs`
--
ALTER TABLE `ref_outbuilding_roofs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `primary key` (`id`) USING BTREE;

--
-- Indexes for table `ref_outbuilding_walls`
--
ALTER TABLE `ref_outbuilding_walls`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `primary key` (`id`) USING BTREE;

--
-- Indexes for table `ref_roof_materials`
--
ALTER TABLE `ref_roof_materials`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `roof id index` (`id`) USING BTREE;

--
-- Indexes for table `ref_wall_materials`
--
ALTER TABLE `ref_wall_materials`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `description` (`description`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD UNIQUE KEY `unique customer_id` (`id`) USING BTREE,
  ADD KEY `IX_Relationship21` (`password`) USING BTREE,
  ADD KEY `phone` (`phone_number`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apa_job_applicants`
--
ALTER TABLE `apa_job_applicants`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `apa_job_applicants_education_qualification`
--
ALTER TABLE `apa_job_applicants_education_qualification`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apa_job_applicants_employment_history`
--
ALTER TABLE `apa_job_applicants_employment_history`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apa_job_applicants_file_attachments`
--
ALTER TABLE `apa_job_applicants_file_attachments`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apa_job_applicants_personal_info`
--
ALTER TABLE `apa_job_applicants_personal_info`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apa_job_posts`
--
ALTER TABLE `apa_job_posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `apollo_confrence_facilities`
--
ALTER TABLE `apollo_confrence_facilities`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apollo_confrence_facilities_bookings`
--
ALTER TABLE `apollo_confrence_facilities_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `hr_jobs_users`
--
ALTER TABLE `hr_jobs_users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_centre_admin_registration`
--
ALTER TABLE `media_centre_admin_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `media_centre_categories`
--
ALTER TABLE `media_centre_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `media_centre_posts`
--
ALTER TABLE `media_centre_posts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_leads`
--
ALTER TABLE `products_leads`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `pr_dp_allrisks`
--
ALTER TABLE `pr_dp_allrisks`
  MODIFY `allrisk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pr_dp_calculator_customer_quotations`
--
ALTER TABLE `pr_dp_calculator_customer_quotations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pr_dp_contents`
--
ALTER TABLE `pr_dp_contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pr_dp_covers`
--
ALTER TABLE `pr_dp_covers`
  MODIFY `cover_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pr_dp_domestics`
--
ALTER TABLE `pr_dp_domestics`
  MODIFY `domestic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pr_dp_general_informations`
--
ALTER TABLE `pr_dp_general_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pr_dp_premises`
--
ALTER TABLE `pr_dp_premises`
  MODIFY `premises_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ref_jobs`
--
ALTER TABLE `ref_jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_outbuilding_roofs`
--
ALTER TABLE `ref_outbuilding_roofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_outbuilding_walls`
--
ALTER TABLE `ref_outbuilding_walls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_roof_materials`
--
ALTER TABLE `ref_roof_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_wall_materials`
--
ALTER TABLE `ref_wall_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apa_job_applicants_certification`
--
ALTER TABLE `apa_job_applicants_certification`
  ADD CONSTRAINT `applicant_id fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_id fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `apa_job_applicants_education_qualification`
--
ALTER TABLE `apa_job_applicants_education_qualification`
  ADD CONSTRAINT `applicant id` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job id` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apa_job_applicants_employment_history`
--
ALTER TABLE `apa_job_applicants_employment_history`
  ADD CONSTRAINT `applicant id fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job id fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apa_job_applicants_file_attachments`
--
ALTER TABLE `apa_job_applicants_file_attachments`
  ADD CONSTRAINT `apa_job_post_fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `applicant_id_fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apa_job_applicants_personal_info`
--
ALTER TABLE `apa_job_applicants_personal_info`
  ADD CONSTRAINT `apa_applicant fk` FOREIGN KEY (`applicant_id`) REFERENCES `apa_job_applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apa_job_post fk` FOREIGN KEY (`job_id`) REFERENCES `apa_job_posts` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `apollo_confrence_facilities_bookings`
--
ALTER TABLE `apollo_confrence_facilities_bookings`
  ADD CONSTRAINT `booked facility fk` FOREIGN KEY (`apollo_confrence_facilities_fk`) REFERENCES `apollo_confrence_facilities` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `user id to payment relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD CONSTRAINT `products to categories relationships` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products_leads`
--
ALTER TABLE `products_leads`
  ADD CONSTRAINT `products_leads_ibfk_1` FOREIGN KEY (`leads_product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `products_leads_ibfk_2` FOREIGN KEY (`leads_product_category_id`) REFERENCES `products_categories` (`category_id`);

--
-- Constraints for table `pr_dp_allrisks`
--
ALTER TABLE `pr_dp_allrisks`
  ADD CONSTRAINT `pr_dp_all_risks to users relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pr_dp_covers`
--
ALTER TABLE `pr_dp_covers`
  ADD CONSTRAINT `Cover must have a product` FOREIGN KEY (`product_id`) REFERENCES `products_categories` (`product_id`),
  ADD CONSTRAINT `pr_dp_covers_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `pr_dp_premises` (`user_id`),
  ADD CONSTRAINT `pr_dp_covers_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `pr_dp_contents` (`user_id`),
  ADD CONSTRAINT `user id to cover relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pr_dp_domestics`
--
ALTER TABLE `pr_dp_domestics`
  ADD CONSTRAINT `domestics to users relation` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pr_dp_general_informations`
--
ALTER TABLE `pr_dp_general_informations`
  ADD CONSTRAINT `user id to general info` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pr_dp_premises`
--
ALTER TABLE `pr_dp_premises`
  ADD CONSTRAINT `pr_dp_premises_ibfk_1` FOREIGN KEY (`dwelling_wall`) REFERENCES `ref_wall_materials` (`id`),
  ADD CONSTRAINT `pr_dp_premises_ibfk_2` FOREIGN KEY (`dwelling_roof`) REFERENCES `ref_roof_materials` (`id`),
  ADD CONSTRAINT `pr_dp_premises_ibfk_3` FOREIGN KEY (`outbuilding_roof`) REFERENCES `ref_outbuilding_roofs` (`id`),
  ADD CONSTRAINT `pr_dp_premises_ibfk_4` FOREIGN KEY (`outbuilding_wall`) REFERENCES `ref_outbuilding_walls` (`id`),
  ADD CONSTRAINT `premises to users relationship` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
