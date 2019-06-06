-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2019 at 11:14 AM
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
-- Table structure for table `apa_insurance_careers`
--

CREATE TABLE `apa_insurance_careers` (
  `id` int(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `reports_to` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `employment_type` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `job_description` longtext NOT NULL,
  `token` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `academic_qualifications` longtext NOT NULL,
  `job_skills_and_requirements` longtext NOT NULL,
  `experience` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apa_insurance_careers`
--

INSERT INTO `apa_insurance_careers` (`id`, `title`, `department`, `reports_to`, `location`, `employment_type`, `job_id`, `job_description`, `token`, `deadline`, `date_added`, `academic_qualifications`, `job_skills_and_requirements`, `experience`) VALUES
(1, 'BUSINESS INTELLIGENCE OFFICE', 'ICT', 'Group Chief Information Officer', 'Nairobi, Kenya', 'Full Time', '2223759br', 'Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.', '223759BR1', '0000-00-00', '2019-04-05 09:06:16', 'A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.\r\nRelevant professional qualification from a recognized institution.', 'Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage\r\nProficiency in SQL\r\nTechnical Skills: use of BI tools to mine data sources and look for trends\r\nStrong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial\r\nCommunication Skills: Communicate their findings to the company and/or managers\r\nProblem-solving: Recommend solutions for creating more revenue and reducing loss\r\nTime Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.', 'A Business intelligence experience with 4 years working experience in a similar role at a similar level.\r\nTrack record of substantial success in a similar role at a similar level.\r\nWith experience of current best practice and up-to-date ideas on the maintenance and presentation of ‘mission critical’ business information for executive teams Significant experience of numerical, financial or other analysis and interpretative techniques.\r\nExperience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information.'),
(2, 'BUSINESS INTELLIGENCE OFFICE', 'ICT', 'Group Chief Information Officer', 'Nairobi, Kenya', 'Full Time', '2223759b', 'Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.', '223759BR2', '0000-00-00', '2019-04-05 09:06:16', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `apa_job_applicants`
--

CREATE TABLE `apa_job_applicants` (
  `id` int(15) NOT NULL,
  `applicant_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `profile_image_url` longtext NOT NULL,
  `social_media_platform` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `password_reset` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apa_job_applicants`
--

INSERT INTO `apa_job_applicants` (`id`, `applicant_id`, `first_name`, `second_name`, `email`, `confirm_password`, `profile_image_url`, `social_media_platform`, `gender`, `date_created`, `password_reset`) VALUES
(1, '7sD7LDAkco1BOHlmP1q', 'Peter', 'Chege', 'p@gmail.com', 'p@gmail.com', '', '', '', '2019-05-03 18:38:02.969581', '6jKJzpPIfUauDylLxuB0'),
(2, '1FKhO9lelYHZmRILF98', 'tony', 'tony', 'tony@gmail.com', '$2y$10$prs02ec0Rxp3SGty4BWwfuY/Jh8jN8LhVyPf5BJBN7g9ZwIe2y.Ve', '', '', '', '2019-05-03 18:38:02.969581', NULL),
(3, 'wMzpiGMGriWgULOTS3Ca', 'peter', 'chege', 'peterchege442@gmail.com', '$2y$10$3WCSm3hxcZn6YGhoPD.Rr.5v4oEK0XcKxG6PFvJIi4M6bLY8Hlrfy', '', '', '', '2019-05-03 18:38:02.969581', NULL),
(4, '9wwgAyH04y3nElC6znso', 'Peter', 'Kinuthia', 'peterchege@gmail.com', '$2y$10$.n1fM478G0GjUStHaUXtm.YxMsqJyeWHzTK2netmcLHdARRDkQSjG', '', '', '', '2019-05-03 18:38:02.969581', NULL),
(5, '1306824732', 'Anthony Baru', '', '', '', 'http://pbs.twimg.com/profile_images/378800000779527007/feedf127f96e32bb11aadad1769c8872_normal.jpeg', 'twitter', '', '2019-05-03 18:38:02.969581', '66671'),
(6, '109162585223646381268', 'Anthony Baru', '', 'anthonybarukaronji@gmail.com', '', 'https://lh4.googleusercontent.com/-u072XaHaVCE/AAAAAAAAAAI/AAAAAAAAABo/_07r1fsTJGM/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', NULL),
(7, '101393073819430510008', 'Anthony Baru', '', 'anthonybaru@gmail.com', '$2y$10$CqfVEVTziEKF9acCwy8vQeh23Gm9yvSCvXCXXBCIGu8ELfEBFylSi', 'https://lh5.googleusercontent.com/-HWPcBgCdDyw/AAAAAAAAAAI/AAAAAAAAArU/3y9lGdudDxU/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', 'HkYFpTY27htf7UhMLcxv'),
(12, '1285994268216094', 'Tony Baru', '', 'anthonybarukaronji@yahoo.com', '', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1285994268216094&height=200&width=200&ext=1559402429&hash=AeTZs-a6_j3d_c-5', 'Facebook', '', '2019-05-03 18:38:02.969581', NULL),
(13, '108937552463137459023', 'njoroge kangethu', '', 'kangethu2@gmail.com', '', 'https://lh3.googleusercontent.com/-xm7cl86Gw2k/AAAAAAAAAAI/AAAAAAAAAXM/wsaxC5cR4UM/photo.jpg', 'google', '', '2019-05-03 18:38:02.969581', '11601'),
(21, 'zeabRO5TFz', 'anthony baru', '', '', '', '', 'linkedin', '', '2019-05-03 19:05:52.788317', '66671'),
(22, 'z-qjDjqLBW', 'peter chege', '', '', '', 'https://media.licdn.com/dms/image/C5603AQGqi94U3MJ-hQ/profile-displayphoto-shrink_100_100/0?e=1562198400&v=beta&t=Q5g8LU0vFKBoXJVWq7PpKtMAiNOeA-YGppeKBc7iU1U', 'linkedin', '', '2019-05-03 19:07:34.784561', '66671');

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
(11, 'J152JU7yE', 'BUSINESS INTELLIGENCE OFFICER', '&lt;p&gt;Apollo Group, our most valuable assets are our employees. We pride ourselves in creating experience, delivering results and adding value to all stakeholders. We advocate for equal employment opportunities to all persons regardless of age, color, nationality, race, religion, gender and marital status.&lt;/p&gt;', 'KENYA', 'NAIROBI', 'APA LIFE', 'FULL-TIME', 45000, '&lt;h3&gt;1) Business requirements &amp;amp; analysis&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Consulting with end users / Management on business needs, translating business needs into analytics/ reporting requirements&lt;/li&gt;\r\n	&lt;li&gt;Interprets business requirements and determines optimum BI solutions to meet business needs.&lt;/li&gt;\r\n	&lt;li&gt;Advises executives on how BI (processes, practices and technologies) play a critical role in improving business management and optimization&lt;/li&gt;\r\n	&lt;li&gt;Researches business problems and creates models that help analyse these business problems.&lt;/li&gt;\r\n	&lt;li&gt;Collaborating with end users to identify needs and opportunities for improved data management and analysis.&lt;/li&gt;\r\n	&lt;li&gt;Developing, packaging and delivering new service offerings related to business intelligence, encompassing clearly defined value propositions and creating realistic profitability models&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2) Data visualization&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Develop and improve custom data visualization and analytics tools to help various teams within the group identify trends and best practices, and support in their monitoring of monthly and annual goals&lt;/li&gt;\r\n	&lt;li&gt;Develop business intelligence reports &amp;ndash; including interactive business intelligence reports, strategic management reports and ad hoc reports &amp;ndash; on a prioritised basis&lt;/li&gt;\r\n	&lt;li&gt;coordinating the ongoing development and operations of a business intelligence architecture that enables fact-based decision-making, ad hoc analysis and insight generation&lt;/li&gt;\r\n	&lt;li&gt;To advise generally on the potential for data use across the business, and also to make colleagues aware of any opportunities presented by the datasets for cross selling.&lt;/li&gt;\r\n	&lt;li&gt;Providing regular analysis and interpretation of data and trends to support decision making by the management team, including text, graphics and other statistical representations&lt;/li&gt;\r\n	&lt;li&gt;Creation of dashboards for presentation of accurate information to Management at different levels and locations&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3) Information quality assurance&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Overseeing development of an enterprise data warehouse as part of Group wide digital transformation strategy&lt;/li&gt;\r\n	&lt;li&gt;Improving and streamlining processes regarding data flow and data quality to improve information confidentiality, integrity and availability&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A relevant qualification, e.g. finance, statistics, economics, business studies, information technology or equivalent expertise.&lt;/li&gt;\r\n	&lt;li&gt;Relevant professional qualification from a recognized institution.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;Proficiency in IBM Cognos and Oracle Business Intelligence. Other platforms an added advantage&lt;/li&gt;\r\n	&lt;li&gt;Proficiency in SQL&lt;/li&gt;\r\n	&lt;li&gt;Technical Skills: use of BI tools to mine data sources and look for trends&lt;/li&gt;\r\n	&lt;li&gt;Strong Analytical Skills: determining what data trends mean. Being able to analyze the data is crucial&lt;/li&gt;\r\n	&lt;li&gt;Communication Skills: Communicate their findings to the company and/or managers&lt;/li&gt;\r\n	&lt;li&gt;Problem-solving: Recommend solutions for creating more revenue and reducing loss&lt;/li&gt;\r\n	&lt;li&gt;Time Management: work on large projects with many data streams and many deadlines. Being able to time manage is crucial.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;A Business intelligence experience with 4 years working experience in a similar role at a similar level.&lt;/li&gt;\r\n	&lt;li&gt;Track record of substantial success in a similar role at a similar level. With experience of current best practice and up-to-date ideas on the maintenance and presentation of &amp;lsquo;mission critical&amp;rsquo; business information for executive teams&lt;/li&gt;\r\n	&lt;li&gt;Significant experience of numerical, financial or other analysis and interpretative techniques&lt;/li&gt;\r\n	&lt;li&gt;Experience of producing high level graphical representations of data in an insightful and user friendly format and an understanding of the best way to communicate analytical information&lt;/li&gt;\r\n&lt;/ul&gt;', '2019-04-20 08:34:36.142463', '2020-01-01', 'tony', 1),
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
-- Table structure for table `mirrormx_customer_chat_data`
--

CREATE TABLE `mirrormx_customer_chat_data` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mirrormx_customer_chat_message`
--

CREATE TABLE `mirrormx_customer_chat_message` (
  `id` bigint(20) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `talk_id` bigint(20) NOT NULL,
  `is_new` char(1) NOT NULL DEFAULT 'y',
  `from_user_info` text NOT NULL,
  `to_user_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mirrormx_customer_chat_message`
--

INSERT INTO `mirrormx_customer_chat_message` (`id`, `from_id`, `to_id`, `body`, `datetime`, `talk_id`, `is_new`, `from_user_info`, `to_user_info`) VALUES
(1, 3, 2, 'what is apa', '2019-04-27 23:56:21', 1, 'n', '{\"id\":3,\"name\":\"hi-1556412965\",\"mail\":\"anth@gmail.com\",\"image\":\"\\/apa\\/projects\\/Website\\/livechat\\/upload\\/default-avatars\\/p.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/livechat\\/php\\/app.php?widget-test\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 02:56:16\"}', 'all'),
(2, 2, 3, 'apa is an insurance company', '2019-04-27 23:57:18', 1, 'n', '{\"id\":2,\"name\":\"operator\",\"mail\":\"operator@gmail.com\",\"roles\":[\"OPERATOR\"],\"last_activity\":\"2019-04-28 02:57:14\",\"7\":\"2019-04-28 02:57:14\"}', '{\"id\":3,\"name\":\"hi-1556412965\",\"mail\":\"anth@gmail.com\",\"image\":\"\\/apa\\/projects\\/Website\\/livechat\\/upload\\/default-avatars\\/p.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/livechat\\/php\\/app.php?widget-test\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 02:57:16\"}'),
(3, 2, 3, 'hello', '2019-04-27 23:57:50', 1, 'n', '{\"id\":2,\"name\":\"operator\",\"mail\":\"operator@gmail.com\",\"roles\":[\"OPERATOR\"],\"last_activity\":\"2019-04-28 02:57:49\",\"7\":\"2019-04-28 02:57:49\"}', '{\"id\":3,\"name\":\"hi-1556412965\",\"mail\":\"anth@gmail.com\",\"image\":\"\\/apa\\/projects\\/Website\\/livechat\\/upload\\/default-avatars\\/p.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/livechat\\/php\\/app.php?widget-test\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 02:57:41\"}'),
(4, 4, -1, 'I want to know about the apa life', '2019-04-28 11:35:47', 2, 'n', '{\"id\":4,\"name\":\"toy-1556454924\",\"mail\":\"toy@gmail.com\",\"image\":\"\\/apa\\/projects\\/Website\\/livechat\\/upload\\/default-avatars\\/a.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/livechat\\/php\\/app.php?widget-test\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 14:35:44\"}', 'all'),
(5, 5, 2, 'hello operator', '2019-04-28 14:50:00', 3, 'n', '{\"id\":5,\"name\":\"mary-1556466587\",\"mail\":\"mary@gmail.com\",\"image\":\"\\/apa\\/projects\\/website\\/livechat\\/upload\\/default-avatars\\/c.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/website\\/jobpage.php\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 17:49:58\"}', 'all'),
(6, 2, 5, 'hi', '2019-04-28 14:51:13', 3, 'n', '{\"id\":2,\"name\":\"operator\",\"mail\":\"operator@gmail.com\",\"roles\":[\"OPERATOR\"],\"last_activity\":\"2019-04-28 17:51:13\",\"7\":\"2019-04-28 17:51:13\"}', '{\"id\":5,\"name\":\"mary-1556466587\",\"mail\":\"mary@gmail.com\",\"image\":\"\\/apa\\/projects\\/website\\/livechat\\/upload\\/default-avatars\\/c.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/website\\/jobpage.php\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 17:51:10\"}'),
(7, 2, 5, 'hello', '2019-04-28 14:51:45', 3, 'n', '{\"id\":2,\"name\":\"operator\",\"mail\":\"operator@gmail.com\",\"roles\":[\"OPERATOR\"],\"last_activity\":\"2019-04-28 17:51:42\",\"7\":\"2019-04-28 17:51:42\"}', '{\"id\":5,\"name\":\"mary-1556466587\",\"mail\":\"mary@gmail.com\",\"image\":\"\\/apa\\/projects\\/website\\/livechat\\/upload\\/default-avatars\\/c.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/website\\/jobpage.php\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 17:51:34\"}'),
(8, 2, 5, 'hello', '2019-04-28 14:52:01', 3, 'n', '{\"id\":2,\"name\":\"operator\",\"mail\":\"operator@gmail.com\",\"roles\":[\"OPERATOR\"],\"last_activity\":\"2019-04-28 17:51:58\",\"7\":\"2019-04-28 17:51:58\"}', '{\"id\":5,\"name\":\"mary-1556466587\",\"mail\":\"mary@gmail.com\",\"image\":\"\\/apa\\/projects\\/website\\/livechat\\/upload\\/default-avatars\\/c.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/website\\/jobpage.php\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 17:51:34\"}'),
(9, 5, 2, '[ user has closed the chat ]', '2019-04-28 14:53:21', 3, 'n', '{\"id\":5,\"name\":\"mary-1556466587\",\"mail\":\"mary@gmail.com\",\"image\":\"\\/apa\\/projects\\/website\\/livechat\\/upload\\/default-avatars\\/c.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/homepage.html\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 17:53:18\"}', '{\"id\":2,\"name\":\"operator\",\"mail\":\"operator@gmail.com\",\"roles\":[\"OPERATOR\"],\"last_activity\":\"2019-04-28 17:51:58\",\"7\":\"2019-04-28 17:51:58\"}'),
(10, 6, -1, 'hello there', '2019-04-28 14:55:33', 4, 'n', '{\"id\":6,\"name\":\"job page-1556466925\",\"mail\":\"jobpage@gmail.com\",\"image\":\"\\/apa\\/projects\\/website\\/livechat\\/upload\\/default-avatars\\/a.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/jobpage.php\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 17:55:30\"}', 'all'),
(11, 6, -1, 'hy', '2019-04-28 14:56:13', 4, 'n', '{\"id\":6,\"name\":\"job page-1556466925\",\"mail\":\"jobpage@gmail.com\",\"image\":\"\\/apa\\/projects\\/website\\/livechat\\/upload\\/default-avatars\\/a.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/jobpage.php\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 17:56:10\"}', 'all'),
(12, 6, -1, '[ user has closed the chat ]', '2019-04-28 14:57:22', 4, 'n', '{\"id\":6,\"name\":\"job page-1556466925\",\"mail\":\"jobpage@gmail.com\",\"image\":\"\\/apa\\/projects\\/website\\/livechat\\/upload\\/default-avatars\\/a.png\",\"info\":{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/jobpage.php\"},\"roles\":[\"GUEST\"],\"last_activity\":\"2019-04-28 17:57:20\"}', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `mirrormx_customer_chat_user`
--

CREATE TABLE `mirrormx_customer_chat_user` (
  `id` bigint(20) NOT NULL,
  `name` char(32) NOT NULL,
  `mail` char(64) NOT NULL,
  `password` char(255) NOT NULL,
  `image` char(255) DEFAULT NULL,
  `info` text,
  `roles` char(128) DEFAULT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mirrormx_customer_chat_user`
--

INSERT INTO `mirrormx_customer_chat_user` (`id`, `name`, `mail`, `password`, `image`, `info`, `roles`, `last_activity`) VALUES
(1, 'tony', 'tony@gmail.com', 'd5a0cd36b057bbff773573fd7ef95c0c84327a6d', NULL, NULL, 'OPERATOR', '2019-05-07 12:56:36'),
(2, 'operator', 'operator@gmail.com', 'e1eb39623dfa23bcf8c7b6fee2a17b85bc53da3e', NULL, NULL, 'OPERATOR', '2019-04-28 14:59:42'),
(3, 'hi-1556412965', 'anth@gmail.com', 'x', '/apa/projects/Website/livechat/upload/default-avatars/p.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/livechat\\/php\\/app.php?widget-test\"}', 'GUEST', '2019-04-27 23:57:41'),
(4, 'toy-1556454924', 'toy@gmail.com', 'x', '/apa/projects/Website/livechat/upload/default-avatars/a.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/livechat\\/php\\/app.php?widget-test\"}', 'GUEST', '2019-04-28 13:36:34'),
(5, 'mary-1556466587', 'mary@gmail.com', 'x', '/apa/projects/website/livechat/upload/default-avatars/c.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/homepage.html\"}', 'GUEST', '2019-04-28 14:53:18'),
(6, 'job page-1556466925', 'jobpage@gmail.com', 'x', '/apa/projects/website/livechat/upload/default-avatars/a.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/apa\\/projects\\/Website\\/jobpage.php\"}', 'GUEST', '2019-04-28 14:57:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apa_insurance_careers`
--
ALTER TABLE `apa_insurance_careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apa_job_applicants`
--
ALTER TABLE `apa_job_applicants`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `mirrormx_customer_chat_data`
--
ALTER TABLE `mirrormx_customer_chat_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `key` (`key`);

--
-- Indexes for table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mirrormx_customer_chat_user`
--
ALTER TABLE `mirrormx_customer_chat_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apa_insurance_careers`
--
ALTER TABLE `apa_insurance_careers`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apa_job_applicants`
--
ALTER TABLE `apa_job_applicants`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT for table `mirrormx_customer_chat_data`
--
ALTER TABLE `mirrormx_customer_chat_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_user`
--
ALTER TABLE `mirrormx_customer_chat_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apollo_confrence_facilities_bookings`
--
ALTER TABLE `apollo_confrence_facilities_bookings`
  ADD CONSTRAINT `booked facility fk` FOREIGN KEY (`apollo_confrence_facilities_fk`) REFERENCES `apollo_confrence_facilities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
