-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 02:35 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

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
(12, 'iAGDAycL82', 'BUSINESS INTELLIGENCE OFFICER - no salary showing', '&lt;p&gt;Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.&lt;/p&gt;', 'Uganda', 'nairobi', 'apa life uganda', 'Full Time', 0, '&lt;h3&gt;1) Business requirements &amp;amp; analysis&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements&lt;/li&gt;\r\n	&lt;li&gt;Interprets business requirements and determines optimum BI solutions to meet business needs.&lt;/li&gt;\r\n	&lt;li&gt;Advises executives on how BI (processes, practices and technologies) play a critical role in improving business management and optimization&lt;/li&gt;\r\n	&lt;li&gt;Researches business problems and creates models that help analyse these business problems.&lt;/li&gt;\r\n	&lt;li&gt;Collaborating with end users to identify needs and opportunities for improved data management and analysis.&lt;/li&gt;\r\n	&lt;li&gt;Developing, packaging and delivering new service offerings related to business intelligence, encompassing clearly defined value propositions and creating realistic profitability models&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2) Data visualization&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals&lt;/li&gt;\r\n	&lt;li&gt;Develop business intelligence reports &amp;ndash; including interactive business intelligence reports, strategic management reports and ad hoc reports &amp;ndash; on a prioritised basis&lt;/li&gt;\r\n	&lt;li&gt;coordinating the ongoing development and operations of a business intelligence architecture that enables fact-based decision-making, ad hoc analysis and insight generation&lt;/li&gt;\r\n	&lt;li&gt;To advise generally on the potential for data use across the business, and also to make colleagues aware of any opportunities presented by the datasets for cross selling.&lt;/li&gt;\r\n	&lt;li&gt;Providing regular analysis and interpretation of data and trends to support decision making by the management team, including text, graphics and other statistical representations&lt;/li&gt;\r\n	&lt;li&gt;Creation of dashboards for presentation of accurate information to Management at different levels and locations&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3) Information quality assurance&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Overseeing development of an enterprise data warehouse as part of Group wide digital transformation strategy&lt;/li&gt;\r\n	&lt;li&gt;Improving and streamlining processes regarding data flow and data quality to improve information confidentiality, integrity and availability&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage&lt;/li&gt;\r\n	&lt;li&gt;Proficiency in SQL&lt;/li&gt;\r\n	&lt;li&gt;Technical Skills: use of BI tools to mine data sources and look for trends&lt;/li&gt;\r\n	&lt;li&gt;Strong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial&lt;/li&gt;\r\n	&lt;li&gt;Communication Skills: Communicate their findings to the company and/or managers&lt;/li&gt;\r\n	&lt;li&gt;Problem-solving: Recommend solutions for creating more revenue and reducing loss&lt;/li&gt;\r\n	&lt;li&gt;Time Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A Business intelligence experience with 4 years working experience in a similar role at a similar level.&lt;/li&gt;\r\n	&lt;li&gt;Track record of substantial success in a similar role at a similar level. With experience of current best practice and up-to-date ideas on the maintenance and presentation of &amp;lsquo;mission critical&amp;rsquo; business information for executive teams&lt;/li&gt;\r\n	&lt;li&gt;Significant experience of numerical, financial or other analysis and interpretative techniques&lt;/li&gt;\r\n	&lt;li&gt;Experience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information&lt;/li&gt;\r\n&lt;/ul&gt;', '2019-04-22 13:30:42.315473', '2019-07-31', 'tony', 1),
(13, 'ril1HKiPEP', 'BUSINESS INTELLIGENCE OFFICER - salary showing', '&lt;p&gt;Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.&lt;/p&gt;', 'Uganda', 'Nairobi', 'apa life uganda', 'Full-Time', 35000, '&lt;h3&gt;1) Business requirements &amp;amp; analysis&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements&lt;/li&gt;\r\n	&lt;li&gt;Interprets business requirements and determines optimum BI solutions to meet business needs.&lt;/li&gt;\r\n	&lt;li&gt;Advises executives on how BI (processes, practices and technologies) play a critical role in improving business management and optimization&lt;/li&gt;\r\n	&lt;li&gt;Researches business problems and creates models that help analyse these business problems.&lt;/li&gt;\r\n	&lt;li&gt;Collaborating with end users to identify needs and opportunities for improved data management and analysis.&lt;/li&gt;\r\n	&lt;li&gt;Developing, packaging and delivering new service offerings related to business intelligence, encompassing clearly defined value propositions and creating realistic profitability models&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2) Data visualization&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals&lt;/li&gt;\r\n	&lt;li&gt;Develop business intelligence reports &amp;ndash; including interactive business intelligence reports, strategic management reports and ad hoc reports &amp;ndash; on a prioritised basis&lt;/li&gt;\r\n	&lt;li&gt;coordinating the ongoing development and operations of a business intelligence architecture that enables fact-based decision-making, ad hoc analysis and insight generation&lt;/li&gt;\r\n	&lt;li&gt;To advise generally on the potential for data use across the business, and also to make colleagues aware of any opportunities presented by the datasets for cross selling.&lt;/li&gt;\r\n	&lt;li&gt;Providing regular analysis and interpretation of data and trends to support decision making by the management team, including text, graphics and other statistical representations&lt;/li&gt;\r\n	&lt;li&gt;Creation of dashboards for presentation of accurate information to Management at different levels and locations&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3) Information quality assurance&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Overseeing development of an enterprise data warehouse as part of Group wide digital transformation strategy&lt;/li&gt;\r\n	&lt;li&gt;Improving and streamlining processes regarding data flow and data quality to improve information confidentiality, integrity and availability&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage&lt;/li&gt;\r\n	&lt;li&gt;Proficiency in SQL&lt;/li&gt;\r\n	&lt;li&gt;Technical Skills: use of BI tools to mine data sources and look for trends&lt;/li&gt;\r\n	&lt;li&gt;Strong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial&lt;/li&gt;\r\n	&lt;li&gt;Communication Skills: Communicate their findings to the company and/or managers&lt;/li&gt;\r\n	&lt;li&gt;Problem-solving: Recommend solutions for creating more revenue and reducing loss&lt;/li&gt;\r\n	&lt;li&gt;Time Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A Business intelligence experience with 4 years working experience in a similar role at a similar level.&lt;/li&gt;\r\n	&lt;li&gt;Track record of substantial success in a similar role at a similar level. With experience of current best practice and up-to-date ideas on the maintenance and presentation of &amp;lsquo;mission critical&amp;rsquo; business information for executive teams&lt;/li&gt;\r\n	&lt;li&gt;Significant experience of numerical, financial or other analysis and interpretative techniques&lt;/li&gt;\r\n	&lt;li&gt;Experience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information&lt;/li&gt;\r\n&lt;/ul&gt;', '2019-04-22 13:32:31.867119', '2020-03-18', 'tony', 1),
(14, '4ePa3FeW9G', 'Customer Care Represantative', '&lt;p&gt;Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.&lt;/p&gt;\r\n', 'Uganda', 'Nairobi', 'apa life uganda', 'Full-Time', 0, '&lt;h3&gt;1) Business requirements &amp;amp; analysis&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements&lt;/li&gt;\r\n	&lt;li&gt;Interprets business requirements and determines optimum BI solutions to meet business needs.&lt;/li&gt;\r\n	&lt;li&gt;Advises executives on how BI (processes, practices and technologies) play a critical role in improving business management and optimization&lt;/li&gt;\r\n	&lt;li&gt;Researches business problems and creates models that help analyse these business problems.&lt;/li&gt;\r\n	&lt;li&gt;Collaborating with end users to identify needs and opportunities for improved data management and analysis.&lt;/li&gt;\r\n	&lt;li&gt;Developing, packaging and delivering new service offerings related to business intelligence, encompassing clearly defined value propositions and creating realistic profitability models&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2) Data visualization&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals&lt;/li&gt;\r\n	&lt;li&gt;Develop business intelligence reports &amp;ndash; including interactive business intelligence reports, strategic management reports and ad hoc reports &amp;ndash; on a prioritised basis&lt;/li&gt;\r\n	&lt;li&gt;coordinating the ongoing development and operations of a business intelligence architecture that enables fact-based decision-making, ad hoc analysis and insight generation&lt;/li&gt;\r\n	&lt;li&gt;To advise generally on the potential for data use across the business, and also to make colleagues aware of any opportunities presented by the datasets for cross selling.&lt;/li&gt;\r\n	&lt;li&gt;Providing regular analysis and interpretation of data and trends to support decision making by the management team, including text, graphics and other statistical representations&lt;/li&gt;\r\n	&lt;li&gt;Creation of dashboards for presentation of accurate information to Management at different levels and locations&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3) Information quality assurance&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Overseeing development of an enterprise data warehouse as part of Group wide digital transformation strategy&lt;/li&gt;\r\n	&lt;li&gt;Improving and streamlining processes regarding data flow and data quality to improve information confidentiality, integrity and availability&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;ul&gt;\r\n	&lt;li&gt;Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage&lt;/li&gt;\r\n	&lt;li&gt;Proficiency in SQL&lt;/li&gt;\r\n	&lt;li&gt;Technical Skills: use of BI tools to mine data sources and look for trends&lt;/li&gt;\r\n	&lt;li&gt;Strong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial&lt;/li&gt;\r\n	&lt;li&gt;Communication Skills: Communicate their findings to the company and/or managers&lt;/li&gt;\r\n	&lt;li&gt;Problem-solving: Recommend solutions for creating more revenue and reducing loss&lt;/li&gt;\r\n	&lt;li&gt;Time Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;ul&gt;\r\n	&lt;li&gt;A Business intelligence experience with 4 years working experience in a similar role at a similar level.&lt;/li&gt;\r\n	&lt;li&gt;Track record of substantial success in a similar role at a similar level. With experience of current best practice and up-to-date ideas on the maintenance and presentation of &amp;lsquo;mission critical&amp;rsquo; business information for executive teams&lt;/li&gt;\r\n	&lt;li&gt;Significant experience of numerical, financial or other analysis and interpretative techniques&lt;/li&gt;\r\n	&lt;li&gt;Experience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '2019-04-22 13:33:20.920045', '2019-04-19', 'gilbert', 0),
(15, 'wHgzXvWCSk', 'kjkjjdaf', '&lt;p&gt;kdjfklajflkdajsf&lt;/p&gt;\r\n', 'kjdfalkjf', 'kjdlkjfa', 'kjkldjfkaljklj', 'lkdjflakjfd', 555555, '&lt;p&gt;lkdjflakjdsfklajkl&lt;/p&gt;\r\n', '&lt;p&gt;jjlkjdflkaj;dfjk;adjf&lt;/p&gt;\r\n', '&lt;p&gt;lkjdfkjasdlkjfalkj&lt;/p&gt;\r\n', '&lt;p&gt;lkjlkdjfalkdjfalkj&lt;/p&gt;\r\n', '&lt;p&gt;lkjldkjfadslkjfalkjdf&lt;/p&gt;\r\n', '2019-04-25 20:41:28.632466', '2019-04-02', 'tony', 0);

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
  `phone_number` int(15) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `more_information` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `apollo_confrence_facilities_bookings`
--

INSERT INTO `apollo_confrence_facilities_bookings` (`id`, `apollo_confrence_facilities_fk`, `start_date`, `end_date`, `start_time`, `end_time`, `company_name`, `phone_number`, `email`, `capacity`, `more_information`, `date_created`) VALUES
(1, 2, '2019-06-03', '2019-06-04', '00:00:00.000000', '00:00:00.000000', '', 0, '', 0, '', '0000-00-00 00:00:00.000000'),
(2, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 78, '', '0000-00-00 00:00:00.000000'),
(3, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000'),
(4, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000'),
(5, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000'),
(6, 2, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 78, 'This is a comment.', '0000-00-00 00:00:00.000000'),
(7, 1, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 78, 'Time test.', '0000-00-00 00:00:00.000000'),
(8, 1, '2019-06-14', '2019-06-22', '00:00:07.000000', '00:00:10.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 78, 'Time test.', '2019-06-04 10:28:20.344848'),
(9, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:33:32.632942'),
(10, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:34:20.120771'),
(11, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:35:50.706584'),
(12, 1, '2019-06-14', '2019-06-22', '00:00:11.000000', '00:00:14.000000', 'Gotham Corp.', 700658856, 'anthonybaru@gmail.com', 6, 'further time test.', '2019-06-04 10:37:54.289840'),
(13, 4, '2019-06-14', '2019-06-14', '00:00:08.000000', '00:00:12.000000', 'Oliver Towers', 12345678, 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 10:47:08.899204'),
(14, 4, '2019-06-14', '2019-06-14', '00:00:08.000000', '00:00:12.000000', 'Oliver Towers', 12345678, 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 10:58:14.101518'),
(15, 4, '2019-06-14', '2019-06-14', '00:00:03.000000', '00:00:12.000000', 'Oliver Towers', 12345678, 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 11:00:21.684754'),
(16, 1, '2019-06-04', '2019-06-05', '00:00:03.000000', '00:00:09.000000', 'Gotham Corp.', 789302545, 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:02:20.043660'),
(17, 1, '2019-06-04', '2019-06-05', '03:00:00.000000', '09:03:00.000000', 'Gotham Corp.', 789302545, 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:08:37.915117'),
(18, 4, '2019-06-14', '2019-06-14', '03:00:00.000000', '12:30:00.000000', 'Oliver Towers', 12345678, 'oliver@oliver.co.ke', 7, 'Reserve extra information.', '2019-06-04 11:08:37.970083'),
(19, 1, '2019-06-04', '2019-06-05', '08:16:00.000000', '09:03:00.000000', 'Gotham Corp.', 789302545, 'info@gotham.co.ke', 7, 'extra info', '2019-06-04 11:09:23.380059'),
(20, 6, '2019-06-04', '2019-06-05', '07:12:00.000000', '17:23:00.000000', 'Justice League Inc.', 719941992, 'info@justiceleague.com', 8, 'More information.', '2019-06-04 14:11:12.733482'),
(21, 4, '2019-06-05', '2019-06-05', '08:00:00.000000', '14:00:00.000000', 'Peter', 0, 'peter@gmail.comm', 8, 'For my squad.', '2019-06-04 14:17:23.049482'),
(22, 3, '2019-06-05', '2019-06-05', '08:00:00.000000', '14:00:00.000000', 'Peter', 0, 'peter@gmail.comm', 8, 'For my squad.', '2019-06-04 14:40:14.842970'),
(23, 1, '2019-06-05', '2019-06-05', '03:00:08.000000', '14:00:00.000000', 'Peter', 0, 'peter@gmail.comm', 8, 'check start time format.', '2019-06-04 14:49:17.369431'),
(24, 1, '2019-06-05', '2019-06-05', '03:00:00.000000', '14:00:00.000000', 'Peter', 0, 'peter@gmail.comm', 8, 'check start time format.', '2019-06-04 14:50:36.506817');

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
  `added by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_centre_admin_registration`
--

INSERT INTO `media_centre_admin_registration` (`id`, `datetime`, `username`, `password`, `email`, `added by`) VALUES
(1, '27,February 2019 17:14:07', 'ogeto', '39bb39b75864b316d69fcd434d142c68', 'otdfkja@gmail.com', 'Tony'),
(5, '28,February 2019 12:01:28', 'tony', 'ddc5f5e86d2f85e1b1ff763aff13ce0a', 'tony@gmail.com', 'ogeto'),
(8, '08, March 2019 19:58:49', 'Final_admin', '2a1585a864d9e67627c6ae04c807a2c5', 'final@gmail.com', 'ogeto');

-- --------------------------------------------------------

--
-- Table structure for table `media_centre_categories`
--

CREATE TABLE `media_centre_categories` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creatorname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_centre_categories`
--

INSERT INTO `media_centre_categories` (`id`, `datetime`, `name`, `creatorname`, `email`) VALUES
(25, '12,June 2019 09:46:59', 'Media Centre', 'tony', 'tony@gmail.com'),
(26, '12,June 2019 10:01:42', 'CSR', 'tony', 'tony@gmail.com');

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
  `archive` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_centre_posts`
--

INSERT INTO `media_centre_posts` (`id`, `datetime`, `date_added`, `title`, `category`, `author`, `image`, `post`, `archive`) VALUES
(2, '17,June 2019 14:26:04', '2019-06-17 11:03:34.959444', 'APA WINS AT AKI 2019 AWARDS', 'Media Centre', 'Tony', 'images/posts/2dd571997f42d0c5f3f8fe8949569dbea.jpg', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Nairobi, Kenya, 11 March 2019 &amp;ndash;&lt;/em&gt;&lt;/strong&gt;&amp;nbsp;Dr. Jennifer Riria, Group CEO, Echo Network Africa, (left) presents the award to Catherine Karimi, Chief Executive Officer, APA Life (second left) and her team for the third position, General Insurance Company of the Year Award at the AKI 2019 Awards.&lt;/p&gt;\r\n\r\n&lt;p&gt;In addition, APA Life was awarded the Second Runner Up &amp;ndash; Best Lost Ratio Award and two of APA Insurance top agents John Maina Menju took third position &amp;ndash; Overall premium volume and Grace Akinyi Odhiambo took third position &amp;ndash; Agent of the year General insurance business.&lt;/p&gt;', 0),
(3, '17,June 2019 14:23:16', '2019-06-17 11:03:34.959444', 'AZURI AND APA INSURANCE INTRODUCE AFFORDABLE INCOME AND FUNERAL COVER FOR SOLAR CUSTOMERS', 'Media Centre', 'tony', 'images/posts/37b5af2b9fd3c90dd8dde2a80a2fa96e8.jpg', '&lt;p&gt;&lt;strong&gt;9 November 2018, Nairobi, Kenya&lt;/strong&gt;&amp;nbsp;&amp;ndash; Azuri Technologies, a leading provider of pay-as-you-go-solar power in conjunction with APA Insurance, Kenya&amp;rsquo;s leading insurer, today announced the launch of HospiCash, a low-cost micro-insurance product for Azuri solar power customers across Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;By adding the optional HospiCash service to their pay-as-you-go home solar solution, Azuri customers benefit from the peace of mind with income cover when hospitalised, in addition to cover for funeral expenses.&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri HospiCash customers who are unable to work due to being hospitalised can claim up to KES 1,000 per day. &amp;nbsp;In addition, the policy also covers funeral expenses up to KES 10,000 upon death of the insured paid to a named beneficiary.&lt;/p&gt;\r\n\r\n&lt;p&gt;Speaking during the official launch of the HospiCash at the APA headquarters in Nairobi, Azuri CEO Simon Bransfield-Garth said: &amp;ldquo;We are delighted to be partnering with APA to further Azuri&amp;rsquo;s vision of providing consumers across Africa with products and services that have the power to truly change and improve lives.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Many off-grid consumers find it difficult to access modern financial products and so combining Azuri&amp;rsquo;s reach and APA&amp;rsquo;s affordable insurance allows customers to concentrate on making a full recovery rather than worrying about the loss of income from being hospitalised.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Apollo Group CEO, Mr. Ashok Shah said, &amp;ldquo;Off-grid consumers have been traditionally underserved by insurance providers because of the relative difficulty of access. The partnership with Azuri provides a means to open up a range of financial inclusion offerings to this important customer base.&amp;nbsp; APA Insurance is committed to providing insurance to all income groups in Kenya.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri&amp;rsquo;s HospiCash cover is being rolled out nationwide and will be available to all Azuri Quad and solar TV customers.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Azuri Quad solar home lighting system costs as little as KES49 per week and includes a 10W solar panel, four bright LED lights, USB port and connectors for mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;\r\n\r\n&lt;p&gt;AzuriTV, the first PayGo solar TV system of its kind to be launched in Africa, features a 24-inch super slim LED TV, over 100 satellite TV channels, four bright LED lights for use inside and outside the home, mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;', 0),
(5, '17,June 2019 13:04:07', '2019-06-17 11:03:34.959444', 'APOLLO FOUNDATION SPONSORS THE 2018 NDAKAINI MARATHON', 'Media Centre', 'tony', 'images/posts/5c5e12d1c3537ad1306d3314218a8fc0b.jpg', '&lt;p&gt;&lt;strong&gt;9 November 2018, Nairobi, Kenya&lt;/strong&gt;&amp;nbsp;&amp;ndash; Azuri Technologies, a leading provider of pay-as-you-go-solar power in conjunction with APA Insurance, Kenya&amp;rsquo;s leading insurer, today announced the launch of HospiCash, a low-cost micro-insurance product for Azuri solar power customers across Kenya.&lt;/p&gt;\r\n\r\n&lt;p&gt;By adding the optional HospiCash service to their pay-as-you-go home solar solution, Azuri customers benefit from the peace of mind with income cover when hospitalised, in addition to cover for funeral expenses.&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri HospiCash customers who are unable to work due to being hospitalised can claim up to KES 1,000 per day. &amp;nbsp;In addition, the policy also covers funeral expenses up to KES 10,000 upon death of the insured paid to a named beneficiary.&lt;/p&gt;\r\n\r\n&lt;p&gt;Speaking during the official launch of the HospiCash at the APA headquarters in Nairobi, Azuri CEO Simon Bransfield-Garth said: &amp;ldquo;We are delighted to be partnering with APA to further Azuri&amp;rsquo;s vision of providing consumers across Africa with products and services that have the power to truly change and improve lives.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Many off-grid consumers find it difficult to access modern financial products and so combining Azuri&amp;rsquo;s reach and APA&amp;rsquo;s affordable insurance allows customers to concentrate on making a full recovery rather than worrying about the loss of income from being hospitalised.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Apollo Group CEO, Mr. Ashok Shah said, &amp;ldquo;Off-grid consumers have been traditionally underserved by insurance providers because of the relative difficulty of access. The partnership with Azuri provides a means to open up a range of financial inclusion offerings to this important customer base.&amp;nbsp; APA Insurance is committed to providing insurance to all income groups in Kenya.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;Azuri&amp;rsquo;s HospiCash cover is being rolled out nationwide and will be available to all Azuri Quad and solar TV customers.&lt;/p&gt;\r\n\r\n&lt;p&gt;The Azuri Quad solar home lighting system costs as little as KES49 per week and includes a 10W solar panel, four bright LED lights, USB port and connectors for mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;\r\n\r\n&lt;p&gt;AzuriTV, the first PayGo solar TV system of its kind to be launched in Africa, features a 24-inch super slim LED TV, over 100 satellite TV channels, four bright LED lights for use inside and outside the home, mobile phone charging, rechargeable radio and rechargeable torch.&lt;/p&gt;', 0);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `apollo_confrence_facilities`
--
ALTER TABLE `apollo_confrence_facilities`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apollo_confrence_facilities_bookings`
--
ALTER TABLE `apollo_confrence_facilities_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hr_jobs_users`
--
ALTER TABLE `hr_jobs_users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_centre_admin_registration`
--
ALTER TABLE `media_centre_admin_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_centre_categories`
--
ALTER TABLE `media_centre_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `media_centre_posts`
--
ALTER TABLE `media_centre_posts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
