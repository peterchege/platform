-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2019 at 08:56 AM
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
(23, 'CPAKoqis5gTk2jveevk3', 'new', 'new', 'new@gmail.com', '$2y$10$v39XkVHNTmQWAkqnjEGdAOJJnyxNtIf5ti1eSyJni3cyTUGFx/e4K', '', 'normal', '', '2019-06-06 15:36:54.360699', NULL);

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
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `content`) VALUES
(1, '$content'),
(2, '<p><img alt=\"\" src=\"upload/1130663914.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(3, '<p><img alt=\"\" src=\"upload/1639527322.jpg\" style=\"height:450px; width:720px\" /></p>\r\n\r\n<h1><strong>KEY PRIMARY RESPONSIBILITIES</strong></h1>\r\n\r\n<ol>\r\n	<li>\r\n	<h1>Business requirements &amp; analysis</h1>\r\n	</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements</li>\r\n	<li>Interprets business requirements and determines optimum BI solutions to meet business needs.</li>\r\n	<li>Collaborating with end users to identify needs and opportunities for improved data management and analysis.</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Data visualization</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals</li>\r\n	<li>Creation of dashboards for presentation of accurate information to Management at different levels and locations</li>\r\n</ul>\r\n\r\n<h1><strong>ACADEMIC QUALIFICATIONS</strong></h1>\r\n\r\n<ul>\r\n	<li><strong>5 years experience.</strong></li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n'),
(4, '<p><img alt=\"\" src=\"upload/587110428.jpg\" style=\"float:left; height:300px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>hello</strong></h3>\r\n'),
(5, '<p><img alt=\"\" src=\"upload/587110428.jpg\" style=\"float:left; height:300px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>hello</strong></h3>\r\n');

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
(6, '05, March 2019 18:39:35', 'mono', '654db8a14a5f633b9ba85ec92dc51f7c', 'mono@gmail.cm', 'Tony'),
(7, '05, March 2019 18:53:37', 'second', 'a9f0e61a137d86aa9db53465e0801612', 'p@gmial.com', 'Tony'),
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
(11, '08,February 2019 15:35:57', 'HTML', 'Tony', ''),
(13, '08,February 2019 15:36:09', 'KOTLIN', 'Tony', ''),
(15, '27,February 2019 16:32:10', 'JAVA', 'Tony', ''),
(18, '28,February 2019 12:13:04', 'Portraitire', 'tony', ''),
(19, '28,February 2019 12:13:18', 'Studio', 'tony', 'p@gm.com'),
(22, '03,March 2019 23:35:10', 'Portraiture', 'Tony', ''),
(23, '08,March 2019 19:25:13', 'Pot', 'tony', '');

-- --------------------------------------------------------

--
-- Table structure for table `media_centre_posts`
--

CREATE TABLE `media_centre_posts` (
  `id` int(25) NOT NULL,
  `datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `post` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_centre_posts`
--

INSERT INTO `media_centre_posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(17, '08,February 2019 15:37:12', 'HTML is about to go viral', 'HTML', 'Tony', 'images/IMG_0845.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquet malesuada feugiat. Curabitur fermentum bibendum nulla, non dictum ipsum tincidunt non. Quisque convallis pharetra tempor. Donec id pretium leo. Pellentesque luctus massa non elit viverra pellentesque. Cras vitae neque molestie, rhoncus ipsum sit amet, lobortis dui. Fusce in urna sem. Vivamus vehicula dignissim augue et scelerisque. Etiam quam nisi, molestie ac dolor in, tincidunt tincidunt arcu. Praesent sed justo finibus, fringilla velit quis, porta erat. Donec blandit metus ut arcu iaculis iaculis. Cras nec dolor fringilla justo ullamcorper auctor. Aliquam eget pretium velit. Morbi urna justo, pulvinar id lobortis in, aliquet placerat orci.\r\nEtiam nisi turpis, eleifend nec tellus id, efficitur pellentesque dolor. Proin vitae massa a augue sagittis vulputate. Duis vel fringilla magna, sit amet vestibulum enim. Fusce laoreet accumsan nisl eu sagittis. Morbi hendrerit sapien eget efficitur imperdiet. Aenean vitae nisl id est placerat congue a et nisi. Suspendisse vitae quam ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse eu risus lacus. Ut tristique libero eget est dictum, commodo malesuada orci elementum. Proin molestie eu mi in tempus.\r\nIn hac habitasse platea dictumst. Cras augue nisl, cursus mattis mattis id, lacinia nec augue. Integer nec augue non metus interdum rhoncus. Proin non imperdiet ante. Sed mollis, justo ac dapibus auctor, tellus mi congue nisl, nec commodo ex justo ut eros. Etiam fringilla porta dolor vitae gravida. Nulla facilisi. Nam dui eros, mattis ut turpis at, eleifend accumsan odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed id ultrices erat, vehicula viverra ante. Etiam sit amet dignissim tellus, ac laoreet ligula. Aenean fringilla sodales lorem, ac maximus est hendrerit in.\r\nCras aliquet sit amet ante non blandit. Nunc eu efficitur lacus, id blandit tortor. Aenean nulla odio, consectetur ac tellus vitae, lacinia hendrerit dolor. Ut ligula leo, lobortis sed nibh eget, accumsan bibendum tellus. In eros diam, venenatis tempus venenatis ac, elementum nec mi. Nulla tristique tellus et lacus pellentesque, a feugiat sapien scelerisque. Integer et sollicitudin mauris, non varius velit. Integer ut auctor nulla. Sed eget neque faucibus, egestas neque et, aliquam lectus. Aenean id rutrum tellus, sed elementum justo. Nunc ac erat ut eros congue rhoncus. Vestibulum lectus lacus, consectetur vitae nisi sed, rutrum rutrum tellus.\r\nNulla sollicitudin malesuada ipsum sit amet elementum. Aenean viverra erat a enim consequat dignissim. Aliquam aliquet fringilla nibh, sit amet consectetur turpis convallis vel. Etiam sit amet dignissim nibh, a consectetur tortor. Nunc faucibus aliquet nisi, eget elementum nisi imperdiet rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi elementum euismod massa, vitae scelerisque arcu malesuada eget. Vivamus varius finibus purus sed posuere.\r\nEtiam maximus dolor sit amet elit dictum, ut lacinia nibh facilisis. Praesent porta dui et lacus feugiat, et consectetur urna tincidunt. Ut sit amet lobortis lectus. Ut ornare, lorem sit amet ornare condimentum, libero sem efficitur turpis, in convallis elit mi vel enim. Cras convallis massa ex, nec bibendum arcu tempor vel. Sed non ligula laoreet, venenatis ex vitae, lobortis mi. Etiam ante felis, condimentum in erat vitae, maximus gravida nisl. Aenean sed efficitur lacus. Fusce lacinia lacus hendrerit, congue dui nec, viverra risus. Nam et lacinia odio, ac finibus risus. Donec facilisis libero elit, id eleifend dui laoreet eget. Donec mattis magna nec nisl accumsan, in luctus ex accumsan. Duis sed dictum ante, luctus posuere lectus. Aenean lacus diam, tempor eget porta sit amet, ornare ut diam. Aenean eget nisl imperdiet, auctor nibh eu, bibendum nulla. Integer scelerisque, orci in gravida lacinia, ante nulla accumsan purus, in ornare lectus orci sit amet leo.\r\nSed non viverra ante. Sed sodales nibh nulla, ut scelerisque magna mollis at. Phasellus venenatis elit ut efficitur malesuada. Sed ornare in odio sed iaculis. Praesent sit amet vestibulum tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae tristique eros. In hac habitasse platea dictumst. Mauris dignissim urna a nibh finibus, eu luctus magna consequat. In semper sapien enim, ut pretium lorem blandit sed. Nulla eu ligula nisl. Proin vitae elit eget sem efficitur eleifend. In sed consectetur mi. Integer molestie nisi at dolor placerat, in gravida massa vestibulum.\r\nPhasellus iaculis elementum ornare. Praesent finibus leo risus, a faucibus quam laoreet id. Fusce tempor nec eros nec dapibus. Donec in nibh diam. Cras euismod tellus id nunc auctor, ornare ullamcorper purus porta. Vestibulum vehicula eget est ut elementum. Duis non fermentum turpis. Ut metus tortor, eleifend quis ex quis, viverra efficitur odio. Curabitur sit amet sollicitudin nibh. Aliquam leo nisi, facilisis vel placerat ac, euismod a sapien. Donec ultrices mollis nisi, eget elementum justo dapibus ac. Etiam eu sem ac mauris consectetur eleifend. Donec dapibus justo id consequat viverra. Phasellus vel mi ligula.\r\nMorbi ultricies eget nunc vitae suscipit. Nam feugiat, metus ac vestibulum consectetur, sapien magna aliquet enim, vitae sodales mi massa vitae elit. Ut mollis odio metus, ornare dictum tortor maximus et. Nam vitae diam sit amet mi aliquet faucibus. Sed tellus velit, faucibus in felis nec, sodales finibus ante. Proin bibendum quis est et vestibulum. Vestibulum facilisis sit amet dui sed commodo. Donec in mattis elit.\r\nVestibulum bibendum gravida nulla. Etiam tempus arcu ut lacus commodo lobortis. Etiam ornare mi eget porttitor fringilla. Phasellus eget quam gravida, hendrerit erat et, imperdiet elit. Morbi lobortis commodo mattis. Quisque tellus elit, tincidunt non porta non, bibendum et nisi. Nulla facilisis risus ac odio suscipit blandit. Pellentesque malesuada, nulla ac fringilla porttitor, felis tellus hendrerit lorem, sit amet fringilla risus elit id velit. Nam purus ante, venenatis et velit vitae, rhoncus hendrerit massa. Curabitur at dui ut velit bibendum rutrum eu nec eros. Sed a aliquet diam, nec scelerisque augue. Nulla vitae lorem condimentum libero porttitor dapibus et nec enim. Vivamus sagittis purus vel gravida ullamcorper. Nunc erat turpis, auctor eu faucibus condimentum, porta et ex. Sed ullamcorper magna id neque porttitor, at semper metus porta. Donec nec odio porttitor, consectetur diam vitae, mollis est.\r\nNunc lobortis nunc sed viverra malesuada. Cras suscipit leo vitae blandit interdum. Nulla aliquet nunc nec gravida auctor. Proin aliquam ligula a tortor eleifend, nec iaculis arcu fringilla. Nunc luctus lacus ex. Ut sed laoreet dui. Integer augue mi, tincidunt et rutrum eget, molestie vitae diam. Curabitur vel pellentesque diam, eu porta neque. Praesent tincidunt turpis ac lacus tincidunt fermentum. Mauris accumsan, dui at condimentum laoreet, nunc enim posuere leo, eget dignissim risus purus eu enim. Maecenas ut luctus nisl. Donec nec laoreet orci. In posuere sodales magna ac semper.\r\nAenean eu metus massa. Aliquam vel tellus laoreet, accumsan sem in, egestas nisl. Fusce sit amet ante in enim bibendum aliquam eu eu est. Sed elementum, sem eleifend tempor volutpat, odio velit gravida nunc, in aliquam magna turpis et neque. Aliquam aliquet diam quis ante rutrum, vel tincidunt urna bibendum. Integer pulvinar vulputate enim id venenatis. Vestibulum et lorem a ipsum molestie congue. Etiam eu dapibus ante. Mauris eget massa vel purus bibendum faucibus eget a lectus.\r\nDonec quis sapien sapien. Etiam ac finibus leo, quis accumsan libero. Integer dignissim, odio ac volutpat porta, orci ligula porta quam, viverra volutpat nulla lorem sed nisi. Donec id congue ligula. Curabitur pharetra quis libero eu accumsan. Pellentesque id mauris nec risus semper dapibus. Maecenas dignissim turpis at viverra tincidunt. Praesent et felis pellentesque, cursus tellus eu, varius ligula. Morbi consectetur, libero vel egestas euismod, ante diam efficitur est, vitae scelerisque magna nisl iaculis sem.\r\nQuisque eu mi nec augue varius scelerisque. Nulla justo sem, auctor eget justo vel, laoreet mollis sapien. Phasellus dictum semper nisi. Sed consectetur tempus diam a tempor. Vestibulum tempor tortor sit amet ex pretium, quis ullamcorper erat ornare. Donec fringilla, neque id viverra pulvinar, tortor est volutpat diam, vitae convallis lectus nisi vel dolor. Mauris congue elit at urna bibendum mattis. Nam ut placerat purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\nNulla vestibulum turpis vel urna rhoncus, eu molestie sem pellentesque. In non egestas augue. Etiam finibus sem magna, quis euismod arcu cursus at. In dignissim purus eu mollis placerat. Sed convallis ornare sagittis. Integer sed metus faucibus, bibendum leo et, fermentum dolor. Donec leo sapien, lacinia cursus fringilla in, gravida id eros. Donec finibus ut purus id convallis. Vestibulum maximus lacus felis, non tempus odio volutpat a. Cras semper rutrum lectus id gravida. Aliquam aliquam faucibus purus, vel commodo enim pretium ut. Vivamus nec urna mi.\r\nPraesent accumsan rhoncus ante, id interdum turpis vehicula a. Proin maximus massa vel egestas cursus. Aenean consectetur pharetra ipsum, vel mattis augue porttitor at. Sed faucibus, lorem ut gravida placerat, felis enim eleifend urna, ut ullamcorper justo mauris vel nisl. Phasellus gravida varius dapibus. Sed vitae pulvinar nulla. Donec id lorem imperdiet, ultrices mauris sed, vehicula arcu. Morbi congue finibus augue, sed ultricies ligula consectetur id. Suspendisse nec malesuada arcu. Mauris tincidunt odio sed diam iaculis finibus. Ut ut arcu pretium urna pretium varius sed quis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut placerat blandit eros, vel congue nunc condimen'),
(19, '08,February 2019 15:38:47', 'JAVA is being auctioned.', 'JAVA', 'Tony', 'images/Amboseli Game Drive Oct 2018-7.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquet malesuada feugiat. Curabitur fermentum bibendum nulla, non dictum ipsum tincidunt non. Quisque convallis pharetra tempor. Donec id pretium leo. Pellentesque luctus massa non elit viverra pellentesque. Cras vitae neque molestie, rhoncus ipsum sit amet, lobortis dui. Fusce in urna sem. Vivamus vehicula dignissim augue et scelerisque. Etiam quam nisi, molestie ac dolor in, tincidunt tincidunt arcu. Praesent sed justo finibus, fringilla velit quis, porta erat. Donec blandit metus ut arcu iaculis iaculis. Cras nec dolor fringilla justo ullamcorper auctor. Aliquam eget pretium velit. Morbi urna justo, pulvinar id lobortis in, aliquet placerat orci.\r\nEtiam nisi turpis, eleifend nec tellus id, efficitur pellentesque dolor. Proin vitae massa a augue sagittis vulputate. Duis vel fringilla magna, sit amet vestibulum enim. Fusce laoreet accumsan nisl eu sagittis. Morbi hendrerit sapien eget efficitur imperdiet. Aenean vitae nisl id est placerat congue a et nisi. Suspendisse vitae quam ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse eu risus lacus. Ut tristique libero eget est dictum, commodo malesuada orci elementum. Proin molestie eu mi in tempus.\r\nIn hac habitasse platea dictumst. Cras augue nisl, cursus mattis mattis id, lacinia nec augue. Integer nec augue non metus interdum rhoncus. Proin non imperdiet ante. Sed mollis, justo ac dapibus auctor, tellus mi congue nisl, nec commodo ex justo ut eros. Etiam fringilla porta dolor vitae gravida. Nulla facilisi. Nam dui eros, mattis ut turpis at, eleifend accumsan odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed id ultrices erat, vehicula viverra ante. Etiam sit amet dignissim tellus, ac laoreet ligula. Aenean fringilla sodales lorem, ac maximus est hendrerit in.\r\nCras aliquet sit amet ante non blandit. Nunc eu efficitur lacus, id blandit tortor. Aenean nulla odio, consectetur ac tellus vitae, lacinia hendrerit dolor. Ut ligula leo, lobortis sed nibh eget, accumsan bibendum tellus. In eros diam, venenatis tempus venenatis ac, elementum nec mi. Nulla tristique tellus et lacus pellentesque, a feugiat sapien scelerisque. Integer et sollicitudin mauris, non varius velit. Integer ut auctor nulla. Sed eget neque faucibus, egestas neque et, aliquam lectus. Aenean id rutrum tellus, sed elementum justo. Nunc ac erat ut eros congue rhoncus. Vestibulum lectus lacus, consectetur vitae nisi sed, rutrum rutrum tellus.\r\nNulla sollicitudin malesuada ipsum sit amet elementum. Aenean viverra erat a enim consequat dignissim. Aliquam aliquet fringilla nibh, sit amet consectetur turpis convallis vel. Etiam sit amet dignissim nibh, a consectetur tortor. Nunc faucibus aliquet nisi, eget elementum nisi imperdiet rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi elementum euismod massa, vitae scelerisque arcu malesuada eget. Vivamus varius finibus purus sed posuere.\r\nEtiam maximus dolor sit amet elit dictum, ut lacinia nibh facilisis. Praesent porta dui et lacus feugiat, et consectetur urna tincidunt. Ut sit amet lobortis lectus. Ut ornare, lorem sit amet ornare condimentum, libero sem efficitur turpis, in convallis elit mi vel enim. Cras convallis massa ex, nec bibendum arcu tempor vel. Sed non ligula laoreet, venenatis ex vitae, lobortis mi. Etiam ante felis, condimentum in erat vitae, maximus gravida nisl. Aenean sed efficitur lacus. Fusce lacinia lacus hendrerit, congue dui nec, viverra risus. Nam et lacinia odio, ac finibus risus. Donec facilisis libero elit, id eleifend dui laoreet eget. Donec mattis magna nec nisl accumsan, in luctus ex accumsan. Duis sed dictum ante, luctus posuere lectus. Aenean lacus diam, tempor eget porta sit amet, ornare ut diam. Aenean eget nisl imperdiet, auctor nibh eu, bibendum nulla. Integer scelerisque, orci in gravida lacinia, ante nulla accumsan purus, in ornare lectus orci sit amet leo.\r\nSed non viverra ante. Sed sodales nibh nulla, ut scelerisque magna mollis at. Phasellus venenatis elit ut efficitur malesuada. Sed ornare in odio sed iaculis. Praesent sit amet vestibulum tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae tristique eros. In hac habitasse platea dictumst. Mauris dignissim urna a nibh finibus, eu luctus magna consequat. In semper sapien enim, ut pretium lorem blandit sed. Nulla eu ligula nisl. Proin vitae elit eget sem efficitur eleifend. In sed consectetur mi. Integer molestie nisi at dolor placerat, in gravida massa vestibulum.\r\nPhasellus iaculis elementum ornare. Praesent finibus leo risus, a faucibus quam laoreet id. Fusce tempor nec eros nec dapibus. Donec in nibh diam. Cras euismod tellus id nunc auctor, ornare ullamcorper purus porta. Vestibulum vehicula eget est ut elementum. Duis non fermentum turpis. Ut metus tortor, eleifend quis ex quis, viverra efficitur odio. Curabitur sit amet sollicitudin nibh. Aliquam leo nisi, facilisis vel placerat ac, euismod a sapien. Donec ultrices mollis nisi, eget elementum justo dapibus ac. Etiam eu sem ac mauris consectetur eleifend. Donec dapibus justo id consequat viverra. Phasellus vel mi ligula.\r\nMorbi ultricies eget nunc vitae suscipit. Nam feugiat, metus ac vestibulum consectetur, sapien magna aliquet enim, vitae sodales mi massa vitae elit. Ut mollis odio metus, ornare dictum tortor maximus et. Nam vitae diam sit amet mi aliquet faucibus. Sed tellus velit, faucibus in felis nec, sodales finibus ante. Proin bibendum quis est et vestibulum. Vestibulum facilisis sit amet dui sed commodo. Donec in mattis elit.\r\nVestibulum bibendum gravida nulla. Etiam tempus arcu ut lacus commodo lobortis. Etiam ornare mi eget porttitor fringilla. Phasellus eget quam gravida, hendrerit erat et, imperdiet elit. Morbi lobortis commodo mattis. Quisque tellus elit, tincidunt non porta non, bibendum et nisi. Nulla facilisis risus ac odio suscipit blandit. Pellentesque malesuada, nulla ac fringilla porttitor, felis tellus hendrerit lorem, sit amet fringilla risus elit id velit. Nam purus ante, venenatis et velit vitae, rhoncus hendrerit massa. Curabitur at dui ut velit bibendum rutrum eu nec eros. Sed a aliquet diam, nec scelerisque augue. Nulla vitae lorem condimentum libero porttitor dapibus et nec enim. Vivamus sagittis purus vel gravida ullamcorper. Nunc erat turpis, auctor eu faucibus condimentum, porta et ex. Sed ullamcorper magna id neque porttitor, at semper metus porta. Donec nec odio porttitor, consectetur diam vitae, mollis est.\r\nNunc lobortis nunc sed viverra malesuada. Cras suscipit leo vitae blandit interdum. Nulla aliquet nunc nec gravida auctor. Proin aliquam ligula a tortor eleifend, nec iaculis arcu fringilla. Nunc luctus lacus ex. Ut sed laoreet dui. Integer augue mi, tincidunt et rutrum eget, molestie vitae diam. Curabitur vel pellentesque diam, eu porta neque. Praesent tincidunt turpis ac lacus tincidunt fermentum. Mauris accumsan, dui at condimentum laoreet, nunc enim posuere leo, eget dignissim risus purus eu enim. Maecenas ut luctus nisl. Donec nec laoreet orci. In posuere sodales magna ac semper.\r\nAenean eu metus massa. Aliquam vel tellus laoreet, accumsan sem in, egestas nisl. Fusce sit amet ante in enim bibendum aliquam eu eu est. Sed elementum, sem eleifend tempor volutpat, odio velit gravida nunc, in aliquam magna turpis et neque. Aliquam aliquet diam quis ante rutrum, vel tincidunt urna bibendum. Integer pulvinar vulputate enim id venenatis. Vestibulum et lorem a ipsum molestie congue. Etiam eu dapibus ante. Mauris eget massa vel purus bibendum faucibus eget a lectus.\r\nDonec quis sapien sapien. Etiam ac finibus leo, quis accumsan libero. Integer dignissim, odio ac volutpat porta, orci ligula porta quam, viverra volutpat nulla lorem sed nisi. Donec id congue ligula. Curabitur pharetra quis libero eu accumsan. Pellentesque id mauris nec risus semper dapibus. Maecenas dignissim turpis at viverra tincidunt. Praesent et felis pellentesque, cursus tellus eu, varius ligula. Morbi consectetur, libero vel egestas euismod, ante diam efficitur est, vitae scelerisque magna nisl iaculis sem.\r\nQuisque eu mi nec augue varius scelerisque. Nulla justo sem, auctor eget justo vel, laoreet mollis sapien. Phasellus dictum semper nisi. Sed consectetur tempus diam a tempor. Vestibulum tempor tortor sit amet ex pretium, quis ullamcorper erat ornare. Donec fringilla, neque id viverra pulvinar, tortor est volutpat diam, vitae convallis lectus nisi vel dolor. Mauris congue elit at urna bibendum mattis. Nam ut placerat purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\nNulla vestibulum turpis vel urna rhoncus, eu molestie sem pellentesque. In non egestas augue. Etiam finibus sem magna, quis euismod arcu cursus at. In dignissim purus eu mollis placerat. Sed convallis ornare sagittis. Integer sed metus faucibus, bibendum leo et, fermentum dolor. Donec leo sapien, lacinia cursus fringilla in, gravida id eros. Donec finibus ut purus id convallis. Vestibulum maximus lacus felis, non tempus odio volutpat a. Cras semper rutrum lectus id gravida. Aliquam aliquam faucibus purus, vel commodo enim pretium ut. Vivamus nec urna mi.\r\nPraesent accumsan rhoncus ante, id interdum turpis vehicula a. Proin maximus massa vel egestas cursus. Aenean consectetur pharetra ipsum, vel mattis augue porttitor at. Sed faucibus, lorem ut gravida placerat, felis enim eleifend urna, ut ullamcorper justo mauris vel nisl. Phasellus gravida varius dapibus. Sed vitae pulvinar nulla. Donec id lorem imperdiet, ultrices mauris sed, vehicula arcu. Morbi congue finibus augue, sed ultricies ligula consectetur id. Suspendisse nec malesuada arcu. Mauris tincidunt odio sed diam iaculis finibus. Ut ut arcu pretium urna pretium varius sed quis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut placerat blandit eros, vel congue nunc condimen'),
(20, '28,February 2019 12:20:39', 'Taylor', 'Wildlife', 'tony', 'images/-61650249.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(21, '28,February 2019 12:21:28', 'dklfja', 'Wildlife', 'tony', 'images/10160298.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(22, '28,February 2019 12:21:41', 'no way', 'JAVA', 'tony', 'images/67243285.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(23, '28,February 2019 12:21:54', 'ys alkfj way', 'Portraitire', 'tony', 'images/-29760385.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(24, '28,February 2019 12:22:06', 'ys alkfj way', 'KOTLIN', 'tony', 'images/-443372579.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(25, '28,February 2019 12:22:15', 'ys alkfj way', 'KOTLIN', 'tony', 'images/137169896.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(26, '28,February 2019 12:22:23', 'ys alkfj way', 'JAVA', 'tony', 'images/-766085630.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(27, '28,February 2019 12:22:32', 'ys alkfj way', 'Portraitire', 'tony', 'images/-843409098.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(28, '28,February 2019 12:23:00', 'The world is yours... TAke it', 'Wildlife', 'tony', 'images/10042128.jpg', 'When to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(29, '28,February 2019 12:23:53', 'The world is yours... TAke it', 'KOTLIN', 'tony', 'images/1188912376.jpg', 'left\r\ncorner of your Premiere Pro workspace. Itâ€™s docked in the same frame as the\r\nProject panel. You can also quickly access the Media Browser by pressing Shift+8\r\n(be sure to use the 8 key at the top of the keyboard).\r\nLike any other panel, you can position the Media Browser in another frame by\r\ndragging it using the tab (where the name of the panel is displayed).\r\nYou can also undock it to make it a floating panel by clicking the menu on the panel\r\ntab and choosing Undock Panel.\r\nBrowsing for files in the Media Browser is similar to browsing with Explorer\r\n(Windows)\r\nor Finder (macOS). The contents of your storage are displayed as\r\nnavigation folders on the left, with buttons to navigate forward and backward at\r\nthe top.\r\nYou can use arrow keys to select items.\r\nThe major benefits of the Media Browser are as follows:\r\nâ€¢ Narrowing the display to a specific file type, such as JPEG, Photoshop, XML,\r\nor ARRIRAW files.\r\nâ€¢ Autosensing camera dataâ€”AVCHD, Canon XF, P2, RED, Cinema DNG, Sony\r\nHDV, or XDCAM (EX and HD)â€”to correctly display the clips.\r\nâ€¢ Viewing and customizing the kinds of metadata to display.\r\nâ€¢ Correctly displaying media that has spanned clips across multiple camera media\r\ncards. Premiere Pro will automatically import the files as a single clip even if a\r\nlonger video file filled a storage card and continued onto a second.\r\nWorking with ingest options and proxy media\r\nPremiere Pro offers excellent performance when playing back, and applying special\r\neffects to, a broad range of media formats and codecs. However, there may be\r\noccasions that your system hardware will struggle to play media, especially if itâ€™s\r\nhigh-resolution RAW footage.\r\nYou may decide it will be more efficient to work with low-resolution copies of your\r\nmedia while you edit and to switch to the full, original resolution media just before\r\nyou check your effects and output your finished work. This is a proxy workflowâ€”\r\ncreating low-resolution â€œproxyâ€ files to use instead of your original content.\r\nPremiere Pro can automate creating proxy files during import, and this is part of a\r\nmore advanced approach to media ingest. If youâ€™re happy with the performance on\r\nyour system when working with original footage, youâ€™ll probably skip this feature.\r\nStill, it opens up significant advantages, both for system performance and for\r\ncollaboration.\r\nWhen to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(30, '28,February 2019 12:24:01', 'The world is yours... TAke it', 'Portraitire', 'tony', 'images/137169896.jpg', 'left\r\ncorner of your Premiere Pro workspace. Itâ€™s docked in the same frame as the\r\nProject panel. You can also quickly access the Media Browser by pressing Shift+8\r\n(be sure to use the 8 key at the top of the keyboard).\r\nLike any other panel, you can position the Media Browser in another frame by\r\ndragging it using the tab (where the name of the panel is displayed).\r\nYou can also undock it to make it a floating panel by clicking the menu on the panel\r\ntab and choosing Undock Panel.\r\nBrowsing for files in the Media Browser is similar to browsing with Explorer\r\n(Windows)\r\nor Finder (macOS). The contents of your storage are displayed as\r\nnavigation folders on the left, with buttons to navigate forward and backward at\r\nthe top.\r\nYou can use arrow keys to select items.\r\nThe major benefits of the Media Browser are as follows:\r\nâ€¢ Narrowing the display to a specific file type, such as JPEG, Photoshop, XML,\r\nor ARRIRAW files.\r\nâ€¢ Autosensing camera dataâ€”AVCHD, Canon XF, P2, RED, Cinema DNG, Sony\r\nHDV, or XDCAM (EX and HD)â€”to correctly display the clips.\r\nâ€¢ Viewing and customizing the kinds of metadata to display.\r\nâ€¢ Correctly displaying media that has spanned clips across multiple camera media\r\ncards. Premiere Pro will automatically import the files as a single clip even if a\r\nlonger video file filled a storage card and continued onto a second.\r\nWorking with ingest options and proxy media\r\nPremiere Pro offers excellent performance when playing back, and applying special\r\neffects to, a broad range of media formats and codecs. However, there may be\r\noccasions that your system hardware will struggle to play media, especially if itâ€™s\r\nhigh-resolution RAW footage.\r\nYou may decide it will be more efficient to work with low-resolution copies of your\r\nmedia while you edit and to switch to the full, original resolution media just before\r\nyou check your effects and output your finished work. This is a proxy workflowâ€”\r\ncreating low-resolution â€œproxyâ€ files to use instead of your original content.\r\nPremiere Pro can automate creating proxy files during import, and this is part of a\r\nmore advanced approach to media ingest. If youâ€™re happy with the performance on\r\nyour system when working with original footage, youâ€™ll probably skip this feature.\r\nStill, it opens up significant advantages, both for system performance and for\r\ncollaboration.\r\nWhen to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(31, '28,February 2019 12:24:07', 'The world is yours... TAke it', 'Wildlife', 'tony', 'images/1939530187.jpg', 'left\r\ncorner of your Premiere Pro workspace. Itâ€™s docked in the same frame as the\r\nProject panel. You can also quickly access the Media Browser by pressing Shift+8\r\n(be sure to use the 8 key at the top of the keyboard).\r\nLike any other panel, you can position the Media Browser in another frame by\r\ndragging it using the tab (where the name of the panel is displayed).\r\nYou can also undock it to make it a floating panel by clicking the menu on the panel\r\ntab and choosing Undock Panel.\r\nBrowsing for files in the Media Browser is similar to browsing with Explorer\r\n(Windows)\r\nor Finder (macOS). The contents of your storage are displayed as\r\nnavigation folders on the left, with buttons to navigate forward and backward at\r\nthe top.\r\nYou can use arrow keys to select items.\r\nThe major benefits of the Media Browser are as follows:\r\nâ€¢ Narrowing the display to a specific file type, such as JPEG, Photoshop, XML,\r\nor ARRIRAW files.\r\nâ€¢ Autosensing camera dataâ€”AVCHD, Canon XF, P2, RED, Cinema DNG, Sony\r\nHDV, or XDCAM (EX and HD)â€”to correctly display the clips.\r\nâ€¢ Viewing and customizing the kinds of metadata to display.\r\nâ€¢ Correctly displaying media that has spanned clips across multiple camera media\r\ncards. Premiere Pro will automatically import the files as a single clip even if a\r\nlonger video file filled a storage card and continued onto a second.\r\nWorking with ingest options and proxy media\r\nPremiere Pro offers excellent performance when playing back, and applying special\r\neffects to, a broad range of media formats and codecs. However, there may be\r\noccasions that your system hardware will struggle to play media, especially if itâ€™s\r\nhigh-resolution RAW footage.\r\nYou may decide it will be more efficient to work with low-resolution copies of your\r\nmedia while you edit and to switch to the full, original resolution media just before\r\nyou check your effects and output your finished work. This is a proxy workflowâ€”\r\ncreating low-resolution â€œproxyâ€ files to use instead of your original content.\r\nPremiere Pro can automate creating proxy files during import, and this is part of a\r\nmore advanced approach to media ingest. If youâ€™re happy with the performance on\r\nyour system when working with original footage, youâ€™ll probably skip this feature.\r\nStill, it opens up significant advantages, both for system performance and for\r\ncollaboration.\r\nWhen to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(32, '03,March 2019 22:09:14', 'The world is yours... TAke it', 'Portraitire', 'Tony', 'images/Wallpaper (6).jpg', 'left\r\ncorner of your Premiere Pro workspace. Itâ€™s docked in the same frame as the\r\nProject panel. You can also quickly access the Media Browser by pressing Shift+8\r\n(be sure to use the 8 key at the top of the keyboard).\r\nLike any other panel, you can position the Media Browser in another frame by\r\ndragging it using the tab (where the name of the panel is displayed).\r\nYou can also undock it to make it a floating panel by clicking the menu on the panel\r\ntab and choosing Undock Panel.\r\nBrowsing for files in the Media Browser is similar to browsing with Explorer\r\n(Windows)\r\nor Finder (macOS). The contents of your storage are displayed as\r\nnavigation folders on the left, with buttons to navigate forward and backward at\r\nthe top.\r\nYou can use arrow keys to select items.\r\nThe major benefits of the Media Browser are as follows:\r\nâ€¢ Narrowing the display to a specific file type, such as JPEG, Photoshop, XML,\r\nor ARRIRAW files.\r\nâ€¢ Autosensing camera dataâ€”AVCHD, Canon XF, P2, RED, Cinema DNG, Sony\r\nHDV, or XDCAM (EX and HD)â€”to correctly display the clips.\r\nâ€¢ Viewing and customizing the kinds of metadata to display.\r\nâ€¢ Correctly displaying media that has spanned clips across multiple camera media\r\ncards. Premiere Pro will automatically import the files as a single clip even if a\r\nlonger video file filled a storage card and continued onto a second.\r\nWorking with ingest options and proxy media\r\nPremiere Pro offers excellent performance when playing back, and applying special\r\neffects to, a broad range of media formats and codecs. However, there may be\r\noccasions that your system hardware will struggle to play media, especially if itâ€™s\r\nhigh-resolution RAW footage.\r\nYou may decide it will be more efficient to work with low-resolution copies of your\r\nmedia while you edit and to switch to the full, original resolution media just before\r\nyou check your effects and output your finished work. This is a proxy workflowâ€”\r\ncreating low-resolution â€œproxyâ€ files to use instead of your original content.\r\nPremiere Pro can automate creating proxy files during import, and this is part of a\r\nmore advanced approach to media ingest. If youâ€™re happy with the performance on\r\nyour system when working with original footage, youâ€™ll probably skip this feature.\r\nStill, it opens up significant advantages, both for system performance and for\r\ncollaboration.\r\nWhen to use the Media Browser panel\r\nThe Media Browser panel is a robust tool for reviewing your media assets and\r\nthen importing them into Premiere Pro. The Media Browser shows the fragmented\r\nfiles you might capture with a digital video camera as whole clips; youâ€™ll see each\r\nrecording as a single item, with the video and audio combined, regardless of the\r\noriginal recording format.\r\nThis means you can avoid dealing with complex camera folder structures and\r\ninstead work with easy-to-browse icons and metadata. Being able to see this metadata\r\n(which contains important information, such as clip duration, recording date,\r\nand file type) makes it easier to select the correct clip in a long list.'),
(35, '03,March 2019 22:10:49', 'Chege Kotlin', '', 'Tony', 'images/', 'Second trial'),
(39, '03,March 2019 19:24:19', 'sbdngfbdvdcd', 'Studio', 'Tony', 'images/c7b7e2887f242ff446385bc3a90a5684', 'image tst'),
(40, '03,March 2019 20:18:18', 'yea', 'JAVA', 'Tony', 'C:/xampp/htdocs/unitedpicturesblog/images/acfb51cc60e7cc747ac91f09c0891950jpg', 'This is a ship'),
(41, '03,March 2019 20:19:41', 'yea', 'JAVA', 'Tony', 'C:/xampp/htdocs/unitedpicturesblog/images/3e31e21bf23594b5b6d3fa483c5912d9.jpg', 'lefkjckalsdnvdlsa'),
(42, '03,March 2019 20:23:06', 'new', 'Portraiture', 'Tony', 'images/be9d00e36542a32e6a94522dfa49ae96.jpg', 'Hope this works'),
(43, '03,March 2019 20:35:14', 'sure bet', 'Studio', 'Tony', 'images/958e9507fb862c1c7ed31f909502ba97.jpg', 'This wil work'),
(44, '03,March 2019 20:41:16', 'sure bet', 'JAVA', 'Tony', 'images/21d5e0f39a2584a2f24bc7e1305853a8.jpg', 'now'),
(45, '03,March 2019 20:46:54', 'sure be', 'KOTLIN', 'Tony', 'images/973d3b2c27c0f4c000e2250e349fc372.jpg', 'dfsgdhfjggkjgfxdsxz'),
(46, '03,March 2019 20:52:11', 'dkjcfkj', 'Portraitire', 'Tony', 'images/acfb51cc60e7cc747ac91f09c0891950.jpg', 'LOREM IPSUM'),
(47, '03,March 2019 20:57:19', 'dkjcfkj', 'KOTLIN', 'Tony', 'images/acfb51cc60e7cc747ac91f09c0891950.jpg', 'ndssz'),
(48, '03,March 2019 21:06:15', 'dkjcfkj', 'Portraitire', 'Tony', 'images/72ca9820546409f3eed86fb3bc3b29e0.jpg', 'msema kweli'),
(49, '03,March 2019 21:07:29', 'dkjcfkj', 'Portraitire', 'Tony', 'images/72ca9820546409f3eed86fb3bc3b29e0.jpg', 'msema kweli'),
(50, '03,March 2019 21:09:58', 'dkjcfkj', 'Portraitire', 'Tony', 'images/72ca9820546409f3eed86fb3bc3b29e0.jpg', 'msema kweli'),
(51, '03,March 2019 21:10:37', 'new', 'Portraitire', 'Tony', 'images/acfb51cc60e7cc747ac91f09c0891950.jpg', 'Today Tomorrow'),
(52, '03,March 2019 23:17:44', 'noway', 'Portraitire', 'Tony', 'images/d37864d08d697731e228b1a23144dcce.jpg', 'santa christmas'),
(53, '04,March 2019 13:23:29', 'Another one', 'Portraitire', 'tony', 'images/67243285.jpg', 'This is the post you heard.');

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
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `media_centre_posts`
--
ALTER TABLE `media_centre_posts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
