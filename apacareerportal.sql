-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 11:31 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apacareerportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_password_hash` varchar(225) DEFAULT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_access_level` tinyint(3) DEFAULT NULL,
  `user_active` tinyint(4) DEFAULT '1',
  `user_activation_hash` char(40) DEFAULT NULL,
  `user_password_reset_hash` char(40) DEFAULT NULL,
  `user_password_reset_timestamp` bigint(20) DEFAULT NULL,
  `user_failed_logins` tinyint(4) DEFAULT NULL,
  `user_last_failed_login` int(11) DEFAULT NULL,
  `user_registration_datetime` datetime DEFAULT NULL,
  `user_registration_ip` varchar(39) DEFAULT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `Attribute1` char(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `job_id` varchar(254) DEFAULT NULL,
  `applicant_id` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `call_back`
--

CREATE TABLE `call_back` (
  `call_back__id` int(100) NOT NULL,
  `phone` int(100) DEFAULT NULL,
  `requested_call_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education_details`
--

CREATE TABLE `education_details` (
  `education_id` int(20) NOT NULL,
  `applicant_id` varchar(254) NOT NULL,
  `institution` varchar(254) DEFAULT NULL,
  `program` varchar(50) DEFAULT NULL,
  `education_level` varchar(50) DEFAULT NULL,
  `attained_grade` char(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experience_details`
--

CREATE TABLE `experience_details` (
  `experience_id` int(11) NOT NULL,
  `applicant_id` varchar(64) NOT NULL COMMENT 'Foreign key to Applicant',
  `employer` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `achievements` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feed_back`
--

CREATE TABLE `feed_back` (
  `call_back_id` int(100) NOT NULL,
  `message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_attachments`
--

CREATE TABLE `file_attachments` (
  `file_id` int(11) NOT NULL,
  `applicant_id` varchar(254) NOT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `comments` varchar(254) DEFAULT NULL,
  `file_location` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_admin`
--

CREATE TABLE `hr_admin` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_password_hash` varchar(225) DEFAULT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_access_level` tinyint(3) DEFAULT NULL,
  `user_active` tinyint(4) DEFAULT '1',
  `user_activation_hash` char(40) DEFAULT NULL,
  `user_password_reset_hash` char(40) DEFAULT NULL,
  `user_password_reset_timestamp` bigint(20) DEFAULT NULL,
  `user_failed_logins` tinyint(4) DEFAULT NULL,
  `user_last_failed_login` int(11) DEFAULT NULL,
  `user_registration_datetime` datetime DEFAULT NULL,
  `user_registration_ip` varchar(39) DEFAULT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_user_connections`
--

CREATE TABLE `hr_user_connections` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_rememberme_token` varchar(64) DEFAULT NULL,
  `user_last_visit` datetime DEFAULT NULL,
  `user_last_visit_agent` text,
  `user_login_ip` varchar(39) DEFAULT NULL,
  `user_login_datetime` datetime DEFAULT NULL,
  `user_login_agent` text,
  `user_name` varchar(64) DEFAULT NULL,
  `user_email` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_location`
--

CREATE TABLE `job_location` (
  `location_id` int(11) NOT NULL,
  `street_address` varchar(254) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `post_id` varchar(254) NOT NULL,
  `posted_by` varchar(254) NOT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `company` char(25) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `job_description` varchar(1000) DEFAULT NULL,
  `job_location_id` int(50) NOT NULL,
  `is_active` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_post_skill_set`
--

CREATE TABLE `job_post_skill_set` (
  `skill_set_id` int(11) NOT NULL,
  `job_post_id` varchar(50) DEFAULT NULL,
  `skill_level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media_centre_cat`
--

CREATE TABLE `media_centre_cat` (
  `category_id` int(10) NOT NULL,
  `datetime` datetime(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `creatorname` varchar(200) DEFAULT NULL,
  `emai` varchar(254) DEFAULT NULL,
  `id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_c_admin`
--

CREATE TABLE `m_c_admin` (
  `m_c_id` int(10) NOT NULL,
  `addedby` varchar(254) DEFAULT NULL,
  `datetime` datetime(6) DEFAULT NULL,
  `username` varchar(254) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_c_post`
--

CREATE TABLE `m_c_post` (
  `post_id` int(10) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `title` varchar(254) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `post` varchar(10000) DEFAULT NULL,
  `id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_connections`
--

CREATE TABLE `user_connections` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_rememberme_token` varchar(64) DEFAULT NULL,
  `user_last_visit` datetime DEFAULT NULL,
  `user_last_visit_agent` text,
  `user_login_ip` varchar(39) DEFAULT NULL,
  `user_login_datetime` datetime DEFAULT NULL,
  `user_login_agent` text,
  `user_name` varchar(64) DEFAULT NULL,
  `user_email` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `visitor_id` int(50) NOT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`user_id`,`user_name`,`user_email`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `call_back`
--
ALTER TABLE `call_back`
  ADD PRIMARY KEY (`call_back__id`);

--
-- Indexes for table `education_details`
--
ALTER TABLE `education_details`
  ADD PRIMARY KEY (`education_id`,`applicant_id`);

--
-- Indexes for table `experience_details`
--
ALTER TABLE `experience_details`
  ADD PRIMARY KEY (`experience_id`,`applicant_id`);

--
-- Indexes for table `feed_back`
--
ALTER TABLE `feed_back`
  ADD PRIMARY KEY (`call_back_id`);

--
-- Indexes for table `file_attachments`
--
ALTER TABLE `file_attachments`
  ADD PRIMARY KEY (`file_id`,`applicant_id`);

--
-- Indexes for table `hr_admin`
--
ALTER TABLE `hr_admin`
  ADD PRIMARY KEY (`user_id`,`user_name`,`user_email`);

--
-- Indexes for table `hr_user_connections`
--
ALTER TABLE `hr_user_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_location`
--
ALTER TABLE `job_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`post_id`,`posted_by`,`job_location_id`);

--
-- Indexes for table `job_post_skill_set`
--
ALTER TABLE `job_post_skill_set`
  ADD PRIMARY KEY (`skill_set_id`);

--
-- Indexes for table `media_centre_cat`
--
ALTER TABLE `media_centre_cat`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `IX_Relationship15` (`id`);

--
-- Indexes for table `m_c_post`
--
ALTER TABLE `m_c_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `IX_Relationship14` (`id`);

--
-- Indexes for table `user_connections`
--
ALTER TABLE `user_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `call_back`
--
ALTER TABLE `call_back`
  MODIFY `call_back__id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experience_details`
--
ALTER TABLE `experience_details`
  MODIFY `experience_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_attachments`
--
ALTER TABLE `file_attachments`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `visitor_id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
