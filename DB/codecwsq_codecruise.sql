-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 11, 2024 at 02:06 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codecwsq_codecruise`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course_type_id` bigint(20) DEFAULT NULL,
  `description` text,
  `course_duration` varchar(255) DEFAULT NULL,
  `class_schedule` varchar(255) DEFAULT NULL,
  `delivery_mode` varchar(255) DEFAULT NULL,
  `course_fee` varchar(255) DEFAULT NULL,
  `current_discount` varchar(255) DEFAULT NULL,
  `apply_discount` tinyint(1) NOT NULL,
  `course_banner` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `course_type_id`, `description`, `course_duration`, `class_schedule`, `delivery_mode`, `course_fee`, `current_discount`, `apply_discount`, `course_banner`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Full Stack PHP', 1, '<p>A <strong>PHP</strong> developer is responsible for writing server-side web application logic. PHP developers usually develop back-end components, connect the application with the other (often third-party) web services, and support the front-end developers by integrating their work with the application.</p>', '3 Months', '2 Hours Lecture', 'Offline and Online', '₹40,000.00', 'Flat  ₹1,000.00', 0, '1712639470.png', 1, '2024-04-03 09:08:37', '2024-04-09 06:29:59'),
(2, 'Full Stack JAVA', 1, '<p>It is a part of Java programming language. It is an advanced technology or advance version of Java specially designed to develop web-based, network-centric or enterprise applications. It includes ../the concepts like Servlet, JSP, JDBC, RMI, Socket programming, etc. It is a specialization in specific domain</p>\r\n<ul>\r\n<li>OOPs programming concepts</li>\r\n<li>Java Programming Basics</li>\r\n<li>File Handling and Streaming</li>\r\n<li>JDBC with MySQL</li>\r\n<li>Spring MVC and Hibernate</li>\r\n<li>Spring Boot with JPA</li>\r\n<li>REST API design with Swagger</li>\r\n<li>SCM with GitHub</li>\r\n<li>CICD with Jenkins</li>\r\n</ul>', '3 Months', '2 Hours Lecture', 'Offline and Online', '₹50.000.00', 'Flat  ₹1,000.00', 0, '1712637583.png', 1, '2024-04-03 09:53:21', '2024-04-09 06:29:49'),
(3, 'MERN Stack', 1, '<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn s/w development and become job ready in 3 months with our </span><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">MERN</span></strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\"> stack development program.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">In this course you will be developing 3 different projects with increasing level of complexity which will help you in digesting some major core concepts needed to develop a full fledge working s/w application. </span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Objective: Using front-end and back-end technologies along with frameworks for developing web based project.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Eligibility</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #333333; background: white;\">Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS), BCA, MSc in Computer Science, MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</span></p>', '3 Months', '2 Hours Lecture', 'Offline and Online', '₹40,000.00', NULL, 0, '1712648356.png', 1, '2024-04-09 02:09:16', '2024-04-09 06:30:42'),
(4, 'MEAN Stack', 1, '<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn s/w development and become job ready in 3 months with our </span><strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">MEAN</span></strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\"> stack development program.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">In this course you will be developing 3 different projects with increasing level of complexity which will help you in digesting some major core concepts needed to develop a full fledge working s/w application. </span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Objective: Using front-end and back-end technologies along with frameworks for developing web based project.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Eligibility</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif; color: #333333; background: white;\">Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS), BCA, MSc in Computer Science, MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</span></p>', '3 Months', '2 Hours Lecture', 'Offline and Online', '₹40,000.00', NULL, 0, '1712648714.jpg', 1, '2024-04-09 02:15:14', '2024-04-09 06:30:31'),
(5, 'AWS Cloud Practitioner', 2, '<p>As cloud computing continues to revolutionize the IT industry, professionals skilled in managing cloud platforms are in high demand.&nbsp;</p>\r\n<p>Among the various cloud service providers, <strong>AWS</strong> stands out as a leader for more then one decade, offering a wide range of services and solutions to businesses worldwide.</p>\r\n<p>The <strong>AWS Cloud Practitioner certification</strong> serves as an entry point for individuals looking to kick start their career in cloud computing by providing foundational knowledge of AWS cloud services, architecture, security, and pricing.</p>', '2 Months', '2 Hours', 'Online and Online', '25,000.00', NULL, 0, '1712823102.png', 1, '2024-04-11 02:41:42', '2024-04-11 02:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `course_modules`
--

CREATE TABLE `course_modules` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_modules`
--

INSERT INTO `course_modules` (`id`, `course_id`, `name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Module Wise Syllabus and Schedule', '<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Schedule for the <strong>BootCamp </strong>is 3 months divided in 16 weeks (5 days a week and 6 hours daily divided in pre and post lunch sessions each of 2 hours)</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 1 to week 3:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Design Web pages using HTML5, CSS and JS</span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Introduction to HTML </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Basic HTML tags</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Formatting Tags</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Modern HTML5 tags</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Class and ID attributes </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">CSS (Inline, embedded and External)</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with images and media files</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Media queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">HTML and CSS framework Bootstrap</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Creating responsive static website <strong>(First Project)</strong></span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Week 2</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Introduction to JavaScript</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Built-in functions in JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">DOM manipulation and JS objects</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Modern JavaScript using ECMAScript </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">JQuery and AJAX</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Fetch API</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with JSON and Arrays</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 4 and week 5:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Introduction to My-SQL DBMS</span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Data Definition Language query</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Creating database and table </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Modifying tables and other database objects</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Data manipulation language queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Insert, delete and update queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with index and triggers</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Referential integrity and normalization</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Data query language</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Select queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Join, Sub-Queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Functions and procedures in T-SQL</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Creating real time project database architecture<strong>(Second Project)</strong></span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 6 to week 7:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Web development concept using core PHP.</span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">PHP script</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with different data types</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Built-in functions</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Control statements</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Programs to build logic</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Introduction to OOP</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with PHP and MY-SQL database</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">CRUD application using OOP<strong>(Third Project)</strong></span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Exception handling</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 8 to Week 13:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Complete project development using PHP(Laravel)</span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Creating projects, Dependency management using composer</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">PHP artisan command for Laravel web artisan</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Laravel Project Structure</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Routes and redirects</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Template Engine using Laravel Blade</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Template Inheritance</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Models and Controllers</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Working with My-SQL database and database migrations</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">CRUD Application</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Laravel Eloquent ORM</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Laravel Authentication setup</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 8pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">REST API and JWT http authentication</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt 18pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Create 2 different projects</span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">A complete Dynamic web application with MY-SQL as back-end <strong>(Forth Project)</strong></span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">A Back-end application to provide API&rsquo;s to work with single page application <strong>(Fifth Project)</strong></span></li>\r\n</ol>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 14 to week 16:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Internship</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Project dissertation and project presentation</span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Prepare documentation</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Project Architecture</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Database Architecture</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Modules </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Test Plans</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Coding</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Testing and debugging</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Hosting on server</span></li>\r\n</ol>', 1, '2024-04-03 10:33:36', '2024-04-03 11:27:17'),
(2, 2, 'Topics and Modules for Full stack development in JAVA', '<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%; color: #222222; background: white;\">&nbsp; &nbsp; &nbsp;Highlights</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to create database structure of a project with proper RDBMS structure and normalization in My-SQL DBMS. This will give you an experience to work on more complicated database structure.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to work on back-end programming languages Java with <strong>Java Spring boot framework</strong>.&nbsp; Learn to manage your code with Unit testing and code-reusability.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Working with static files and images and manage them through database and programming languages.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to work with JavaScript JQuery-AJAX to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Source code management using GIT and GIT-Hub</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">&nbsp; &nbsp; &nbsp; Project you learn to develop:</span></strong></span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Website Design (html 5, JS, CSS)</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Responsive Website using Bootstrap Framework</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">A CRUD application with session handling</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Complete working project from following categories:</span></li>\r\n</ol>\r\n<p style=\"margin: 0cm 0cm 8pt 36pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif; color: black;\">E-COMMERCE, CRM, ERP, MIS, GIS, BANKING AND FINANCE, TOURISM, TRANSPORT AND LOGISTICS, HOTEL AND HOSPITALITY, HEALTH CARE, ACADEMICS AND E-LEARNING, MANAGEMENT PROJECTS, RESEARCH BASED PROJECT AND ETC</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">&nbsp; &nbsp; &nbsp; Curriculum</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">Front-end:</span></strong><span style=\"line-height: 106%;\"> HTML5, CSS, JS, ES6, JQUERY, AJAX and Bootstrap framework, React-Next/Angular(CLI) framework.</span></span></li>\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">Back-end:</span></strong><span style=\"line-height: 106%;\">JAVA SPRING BOOT</span></span></li>\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 8pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt;\"><span style=\"font-family: \'times new roman\', times, serif;\"><strong><span style=\"line-height: 106%;\">Database:</span></strong><span style=\"line-height: 106%;\"> My-SQL Queries and Advance SQL Query</span></span></span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt 18pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\">&nbsp;</p>\r\n<p style=\"margin: 0cm 0cm 8pt 18pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">WHAT IN JAVA SPRING BOOT?</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Core Java</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Java OOPS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Exception handling</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Multi-threading</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">JDBC</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">JUNIT</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Servlets</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring core</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring MVC</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring AOP</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring REST</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring Security</span></li>\r\n</ul>\r\n<p><span style=\"font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Spring Boot Application</span><strong><span style=\"font-size: 14pt; line-height: 107%; color: #222222;\"><br><br></span></strong></span></p>', 1, '2024-04-03 23:53:24', '2024-04-07 06:20:03'),
(3, 3, 'Module Wise Syllabus and Schedule', '<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Highlights</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to create database structure of a project in No-SQL DBMS like Mongo. This will give you an experience to work on more complicated database structure.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to work on back-end programming languages Node.js with Express Node.js framework.&nbsp; Learn to manage your code with Unit testing and code-reusability.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Working with static files and images and manage them through database and programming languages.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to create single page application using most widely used JavaScript technology React Next.js framework</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to work with Next.js to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Source code management using GIT and GIT-Hub</span></li>\r\n</ul>\r\n<p style=\"text-align: center; margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">&nbsp;</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 106%; font-family: Arial, sans-serif;\">Project you learn to develop</span></strong></span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Website Design (html 5, JS, CSS)</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Single Page application using React Next.js framework</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">A CRUD application with session handling</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Complete working project from following categories:</span></li>\r\n</ol>\r\n<p style=\"margin: 0cm 0cm 8pt 36pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: black;\">E-COMMERCE, CRM, ERP, MIS, GIS, BANKING AND FINANCE, TOURISM, TRANSPORT AND LOGISTICS, HOTEL AND HOSPITALITY, HEALTH CARE, ACADEMICS AND E-LEARNING, MANAGEMENT PROJECTS, RESEARCH BASED PROJECT AND ETC</span></p>\r\n<p style=\"text-align: center; margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">&nbsp;</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 106%; font-family: Arial, sans-serif;\">Curriculum</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"line-height: 105%; margin: 0cm 0cm 0.0001pt 0px; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 105%; font-family: Arial, sans-serif;\">Front-end: React Next.js framework.</span></li>\r\n<li style=\"line-height: 105%; margin: 0cm 0cm 0.0001pt 0px; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 105%; font-family: Arial, sans-serif;\">Back-end: Node.js with Express</span></li>\r\n<li style=\"line-height: 105%; margin: 0cm 0cm 8pt 0px; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 105%; font-family: Arial, sans-serif;\">Database: Mongo DB<br></span></li>\r\n</ul>\r\n<p style=\"line-height: 105%; margin: 0cm 0cm 8pt; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 105%; font-family: Arial, sans-serif;\">WHAT in React Next.js?</span></strong></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js introduction</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Setup</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js project structure</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Pages</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Static file</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js CSS and global CSS support</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Pre-Rendering</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Routing</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Dynamic Routing</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js API Routing</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js API Middleware</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Typescript</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Environment Variables</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Project Deployment<br><br></span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">What in Node.js?</span></strong></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Introduction to Node JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Advantages of Node JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node.js Process Model</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Setup Development Environment</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Install Node.js </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node JS Modules</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node Package Manager</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Creating Web Server</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">File System</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Debugging Node JS Application</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Events</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Express JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Serving Static Resources</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Database Connectivity</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Project Development using Node JS</span></li>\r\n</ul>', 1, '2024-04-09 02:13:43', '2024-04-09 02:36:02');
INSERT INTO `course_modules` (`id`, `course_id`, `name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 4, 'Module Wise Syllabus and Schedule', '<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Highlights</span></strong></span></p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif;\">Learn to create database structure of a project in No-SQL DBMS like Mongo. This will give you an experience to work on more complicated database structure.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif;\">Learn to work on back-end programming languages Node.jswith <strong>Express Node.js framework</strong>.&nbsp; Learn to manage your code with Unit testing and code-reusability.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif;\">Working with static files and images and manage them through database and programming languages.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif;\">Learn to create single page application using most widely used JavaScript technology <strong>Angular(CLI) framework</strong></span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif;\">Learn to work with Next.js to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif;\">Source code management using GIT and GIT-Hub<br><br></span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%; font-family: Arial, sans-serif;\">Curriculum</span></strong></span></p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Front-end:</span></strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\"> Angular(CLI) framework.</span></li>\r\n<li><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Back-end:</span></strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Node.js with Express</span></li>\r\n<li><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Database:</span></strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\"> Mongo DB</span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p style=\"line-height: 106%; margin: 0cm 0cm 8pt; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 106%; font-family: Arial, sans-serif;\">What in Angular JS?</span></strong></span></p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Features of Angular JS, Model-View-Controller</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Angular Expressions</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Filters</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Directives</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Controllers</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Angular JS Modules</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Angular JS Forms</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Scope</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Dependency Injection &amp; Services</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Single Page Application (SPA)</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">Angular JS Animation</span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%; font-family: Arial, sans-serif; color: #222222;\">What in Node.js?</span></strong></span></p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Introduction to Node JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Advantages of Node JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node.js Process Model</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Setup Development Environment</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Install Node.js </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node JS Modules</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node Package Manager</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Creating Web Server</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">File System</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Debugging Node JS Application</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Events</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Express JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Serving Static Resources</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Database Connectivity</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 24px; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #222222; background: white;\">Project Development using Node JS</span></li>\r\n</ul>\r\n</li>\r\n</ul>', 1, '2024-04-09 02:15:27', '2024-04-09 02:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `course_module_topics`
--

CREATE TABLE `course_module_topics` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `module_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `no_of_leactures` int(11) DEFAULT NULL,
  `no_of_hours` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_schedule`
--

CREATE TABLE `course_schedule` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_tech_stack`
--

CREATE TABLE `course_tech_stack` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `tech_stack_id` bigint(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_tech_stack`
--

INSERT INTO `course_tech_stack` (`id`, `course_id`, `tech_stack_id`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 2, 2, 1, '2024-04-04 00:59:04', '2024-04-04 00:59:04'),
(4, 2, 1, 1, '2024-04-04 00:59:14', '2024-04-04 00:59:14'),
(5, 1, 1, 1, '2024-04-04 01:19:36', '2024-04-04 01:19:36'),
(7, 1, 4, 1, '2024-04-04 01:31:46', '2024-04-04 01:31:46'),
(8, 1, 2, 1, '2024-04-04 01:31:58', '2024-04-04 01:31:58'),
(10, 2, 4, 1, '2024-04-04 01:32:14', '2024-04-04 01:32:14'),
(12, 1, 5, 1, '2024-04-08 01:16:25', '2024-04-08 01:16:25'),
(13, 1, 6, 1, '2024-04-08 01:17:40', '2024-04-08 01:17:40'),
(14, 1, 7, 1, '2024-04-08 01:18:47', '2024-04-08 01:18:47'),
(15, 2, 10, 1, '2024-04-08 01:28:42', '2024-04-08 01:28:42'),
(16, 2, 7, 1, '2024-04-08 01:28:47', '2024-04-08 01:28:47'),
(17, 2, 6, 1, '2024-04-08 01:28:51', '2024-04-08 01:28:51'),
(18, 2, 8, 1, '2024-04-08 01:28:56', '2024-04-08 01:28:56'),
(19, 2, 9, 1, '2024-04-08 01:29:02', '2024-04-08 01:29:02'),
(20, 1, 11, 1, '2024-04-09 00:08:02', '2024-04-09 00:08:02'),
(21, 2, 11, 1, '2024-04-09 00:08:25', '2024-04-09 00:08:25'),
(22, 2, 12, 1, '2024-04-09 00:16:37', '2024-04-09 00:16:37'),
(23, 1, 12, 1, '2024-04-09 00:17:03', '2024-04-09 00:17:03'),
(24, 1, 13, 1, '2024-04-09 00:36:31', '2024-04-09 00:36:31'),
(25, 4, 18, 1, '2024-04-09 02:30:31', '2024-04-09 02:30:31'),
(28, 4, 15, 1, '2024-04-09 02:31:02', '2024-04-09 02:31:02'),
(29, 4, 16, 1, '2024-04-09 02:31:11', '2024-04-09 02:31:11'),
(30, 4, 10, 1, '2024-04-09 02:31:24', '2024-04-09 02:31:24'),
(32, 3, 18, 1, '2024-04-09 02:31:56', '2024-04-09 02:31:56'),
(33, 3, 16, 1, '2024-04-09 02:32:03', '2024-04-09 02:32:03'),
(34, 3, 14, 1, '2024-04-09 02:32:10', '2024-04-09 02:32:10'),
(36, 3, 17, 1, '2024-04-09 02:33:25', '2024-04-09 02:33:25'),
(37, 3, 6, 1, '2024-04-09 02:40:00', '2024-04-09 02:40:00'),
(38, 3, 11, 1, '2024-04-09 02:40:13', '2024-04-09 02:40:13'),
(39, 3, 7, 1, '2024-04-09 02:40:28', '2024-04-09 02:40:28'),
(40, 3, 2, 1, '2024-04-09 02:40:32', '2024-04-09 02:40:32'),
(41, 3, 1, 1, '2024-04-09 02:40:39', '2024-04-09 02:40:39'),
(42, 4, 6, 1, '2024-04-09 02:41:02', '2024-04-09 02:41:02'),
(43, 4, 11, 1, '2024-04-09 02:41:07', '2024-04-09 02:41:07'),
(44, 4, 1, 1, '2024-04-09 02:41:15', '2024-04-09 02:41:15'),
(45, 4, 2, 1, '2024-04-09 02:41:24', '2024-04-09 02:41:24'),
(46, 4, 7, 1, '2024-04-09 02:41:28', '2024-04-09 02:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE `course_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Specializations', 1, '2024-04-03 14:25:05', '2024-04-03 14:25:05'),
(2, 'Certifications', 1, '2024-04-03 14:25:05', '2024-04-03 14:25:05'),
(3, 'Specific  Courses', 1, '2024-04-03 14:25:05', '2024-04-11 02:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('07ZxuoDcTBcvILBMwWqL4MufzWYIi4hJL2v88MSd', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2pCbVhtUVZkbVUzaXZZdU53cjdlVWNMYUliRTU5TFJHeFRNOE9yNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQzOiJodHRwczovL2NvZGVjcnVpc2UuaW4vZG93bmxvYWQtY291cnNlLWluZm8vZXlKcGRpSTZJakp3Y1ZGa01YQmFZVTFwU0c4NU5EUkdOR3d6VlVFOVBTSXNJblpoYkhWbElqb2lNR1JGTm05alVqRlpUR3RUWTFRMVJqRlljWFExUVQwOUlpd2liV0ZqSWpvaU9XRmpZMkl3TURaaU1EUXhZVGt6WVRsa056ZGhZalUzWTJZMk1UVmlNR1U0WkdKaU9EZ3lObVF4WXpJM1lXWmtNVFF4WTJOaE1HRTVZbVJqTTJVM05DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712820144),
('7lx787wmgXf1xH9taykWF7EhU4AfvLp0VYUyBFjc', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU9JV09CRDJ1cjVBdmFnMEVHZHBKZ1JjWWExR2Y5T2dCWGw0YWJzcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbmhKZDFOblYyTkJSVWtyYlV4RVpqaGhTek5QWW5jOVBTSXNJblpoYkhWbElqb2lWMDByV0VOMVUwNTROSGQzU2xjck1qaHlTVkYzWnowOUlpd2liV0ZqSWpvaU5EUXpaVGxtTlRZNU5qY3hPR1ZrTnpJeE5qSXhaR0l5TldNMU5HWTBNRE0wWWpObU4yVTFZV1ZtTTJFek5qZGhPVGt4T1dRMk5EVmhaalpoWWpFNFpTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712820581),
('CDXtClLzQV2qOfqHhmiQ0YAXdd6MHKs4v1lt08rs', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmJ0NER6bzdlOEN5V1dSOWludm1jRjM3amsyM3dXUEFUNEtha1lFViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW05b1JsSnBWbXRSVFRsb1R6aHNMMUJCYTJVM05sRTlQU0lzSW5aaGJIVmxJam9pVjJkWlpHWmlOekFyYUVrM1FrdEVVMEZ6Y0hkcFVUMDlJaXdpYldGaklqb2lNMll6T1RBeU5qUm1aR0k1WkRGa1pXVTFaall4TkRSaVkyTmtNbVJtWldGbFpEVXlaamd4WTJJeU5HTTNZVFl3T0dOaE56WXpZalUyTmpJMk1EaGxNeUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712817566),
('FiIf8N2QMwHI4CxwoS0USVe3AwujWpzgTmDTOU0P', NULL, '49.36.115.75', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHlJVlNVMHB6U0FaRExmaU9IU2piMzdQRm9Ra09OZ09zSm9GeTk1MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712819565),
('hzMgIZDQTIZr8b0MqJru2arQwaZ1R2kGjDyfJswb', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1paamxtcXhvSnZKWlNmQzFvbzNwYXNybGFZMjJabFdIWFBicjZCaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW5WaGVtUndkVVZYUjI5WFZVaHhZbmh2U25aUlFuYzlQU0lzSW5aaGJIVmxJam9pT0V0NWNHZDFaRk5LTjNvM2RHNUhNWGRtVEN0dlp6MDlJaXdpYldGaklqb2lZbUkwTkdKa05XTXhZelk1TVRZeU5EbG1aakJsTXpBM1l6a3hNVFZqTW1Oa1pXVmlNamd3T1dFME4ySmpOV000WW1FNFltVm1PVEppTlRJeU1EUTBNU0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712819664),
('Lc7P0vsdcXeZHot0WshFigbHGCmDamQ0Wx0fj0S2', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHJUR1F6Y043QzNnU3c1WjZOb1VZaGM1TUVtTUNxN1ljcXJHTW5kNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWs5UlMwOXpWamRoWVhsU2RsQTBXV0oyV0ZaV1puYzlQU0lzSW5aaGJIVmxJam9pU1hOYVRYRlhPVXhZY0U4dmIwOW5NbEJOVW10WVVUMDlJaXdpYldGaklqb2labU0wTW1SaE16UmpPVEptWVRGa1lUTXhNREJrTmprMU5EYzJNamcyWXpoaVptRTJOR00wTVRnMU5qQTRNRGxpWm1OaFlXUTNOREpsTmpkbFltUTVZeUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712820804),
('lpYTUESsebGQrlvPqKJ0J5JEEQZxFuCsr0ungBe0', NULL, '182.48.210.56', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2l5VzJXV0FoN084VTBIRGc1a2pzQXJMbXN3Q1JJSUQ4bHBEdVBXYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWxjNFJFSkRialZ1VUU1MGNFRlFNSGRLY3k5VFFuYzlQU0lzSW5aaGJIVmxJam9pVTB0RGVDc3hLMjQwZEhSYVVqQlRTRmxNYzNwMmR6MDlJaXdpYldGaklqb2lZalUxTW1VeVlUUmhOMkUxWkRsalpHRmpabVJrTkdRM01UUTVNR0UxTUdZNFlqRmlZMkUwTmpaak1EUmlOVEk0Wm1aak56TmxabVZtT0RGa1pXVmxaaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712823717),
('lzL821gp0mx8tNTX0X1saODjVfwSaov4U4IsCxDz', 1, '49.36.32.147', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiODBINDFGclVVZ2p0R2ZDaTg0SkxNdTdqVHBCN3cyNGlLM0JRZHpNRSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cHM6Ly9jb2RlY3J1aXNlLmluL2FkbWluL2NvdXJzZSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIzNzoiaHR0cHM6Ly9jb2RlY3J1aXNlLmluL2NvdXJzZS1ieS10eXBlL2V5SnBkaUk2SW1aWE0wSXdlbThyUTNkRlJHVmhOVFJsWWtneWNXYzlQU0lzSW5aaGJIVmxJam9pYUhjMVNqVTFielJOWldsclFUUklUbXhWZG5sblp6MDlJaXdpYldGaklqb2lZalV4WlRkbE16RmxaRFkyTjJRME0yTTNNVEE0WWpNM01XTTNNREJpTldaalpUWTJPV015TjJRM056YzVaV05sWlRFeVltWXpNMkkwTjJRNFpUazVaaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1712824278),
('ncLhdrNtfVzTQaIIeMEPRueqbpV4CPVIbMeYakpW', NULL, '106.219.58.147', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1BHeU91dWg1dVI3YkQzdkNKd3Y1MlI2Z0VpWlJIY09vN0NSWUNTbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM2OiJodHRwczovL2NvZGVjcnVpc2UuaW4vZW5yb2xsLWNvdXJzZS9leUpwZGlJNklrOUNVR2h2V0hkbmRXdGtNMVZCUm5WeGFraE1VSGM5UFNJc0luWmhiSFZsSWpvaU4yMTVaVVpwYUVKUVVqRmlSR3BhUVhwNWNtSTRaejA5SWl3aWJXRmpJam9pTXpoaU5UWmhNakl3TVRkaE1tTXdNV0V4T0RNek5qZGhaVE00WkRobVlXUmtPR0UzT1dOa01UUXpNRGc1TWpJeE0ySTFNVFUwT0Rrd09Ea3lNekk0WmlJc0luUmhaeUk2SWlKOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712823608),
('Nuyqkp4kQtrgGyq9O3xpQSir29K1kMBpRFJaaQ1H', NULL, '110.224.113.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/24.0 Chrome/117.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2xtbExVUVZlTHNsemVvY0RMRnREMHkzZWZCZ2JKYWtVam1YMWJzbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UtY2F0YWxvZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712821275),
('OvWDtBGKy0S8m3E41LBxNVRvlspAjheKuSz7jI0i', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3J0bklTZGtScVJudlcyMTZBQnl0Uld1NFlHVWhpMlh5RUhjeG43MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWt3MlkzVk9PSEpZYWxGVVJYb3JkMXBKTVRnM2FGRTlQU0lzSW5aaGJIVmxJam9pVVRWeWVITnNkV294UlVaa1pFVXphVkptYmxGclVUMDlJaXdpYldGaklqb2lOamczT1dGbU1qWXpNakV5T1dWbVlXVTJNVGN6WW1ZelptWXpObUZrT1dGaFpUUmpNbVZrWW1NMFpUTXhaRGszT1RFNFlqWmxOVEk0WkRWbU5XSmpZU0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712817097),
('rNtVIGhaEs2kZi7zxdnzjOZqc5buisF9K0gJvvnE', 1, '49.36.115.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkFENFVvUVhwZkxiUlVVTUVQTlBJY1ZoRzJ4NWh5NzU5MG1YMGtiRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wdWJsaWMvaW5kZXgucGhwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1712824338),
('SFyz10CLK5hVqEhDyB9kQCGp6mAiGTNtpnOpClGf', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1lYajUyS1lmZ3oxSlZCb1pJbjNEZEJ1ZVV4Z1l2ZlNsY1ZHR2ZvZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWpOVmJ5OTJVRlJRZWxGUWJteFdaRUYyU2pBck4zYzlQU0lzSW5aaGJIVmxJam9pTW5KdlJEUnZXbGcyVDFGbllTOU9kMHh1ZEVKSFFUMDlJaXdpYldGaklqb2lNalEyTVRCaE0yVXhPRFV6WkRFMU16QmpaVFl3TmpOak5HWXdaV1JsWm1ZM1kySmhPV1poTjJWaU5qbGhPV1kxT0RNelltSmpNV0UyTm1aak9URTRNQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712823417),
('x0GJFfJ2UGHvjLxoZiXRw0rLQpyDfAh4mxvwtGpQ', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkRZUXNucUtONDRVdUxhMjhOY3JFR2lNblpGYk9Ob25UNVBkYUYwTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wcml2YWN5LXBvbGljeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712819671),
('xaKXNP8dmzCvZG0OOR9kueWtr9T1BOG8nbrhfM62', NULL, '66.249.68.5', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVVMRVYya1Nqem9CMVRLOGRTTWdDQXF2MVdYMWtkQTNpNXV1cXBncyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQxOiJodHRwczovL3d3dy5jb2RlY3J1aXNlLmluL2NvdXJzZS1ieS10eXBlL2V5SnBkaUk2SW5SMWEwdG9Zek16YzFGb1QwdE9hREZoVFdsV1NsRTlQU0lzSW5aaGJIVmxJam9pUVdWcmVtazVRakIyWTNOclMwdGpWa0Z5WTBadFp6MDlJaXdpYldGaklqb2lNamxpTUdFd01UVmpOMlZtWm1OaVpUSTRZV1F3WldNeE1UZzVNamRpTVdZMFlXRmlNR1pqTVRVeVkyUmtaall5WVRFMlpEYzRPV0l6Tm1FNU5qZ3dNeUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712820361);

-- --------------------------------------------------------

--
-- Table structure for table `tech_stacks`
--

CREATE TABLE `tech_stacks` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tech_stack_logo` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tech_stacks`
--

INSERT INTO `tech_stacks` (`id`, `name`, `tech_stack_logo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '1712636515.png', 1, '2024-04-03 23:32:58', '2024-04-08 22:51:55'),
(2, 'CSS', '1712558221.png', 1, '2024-04-03 23:36:11', '2024-04-08 01:07:01'),
(3, 'MY-SQL', '1712558298.png', 1, '2024-04-03 23:37:09', '2024-04-08 01:08:18'),
(4, 'JAVASCRIPT', '1712558257.png', 1, '2024-04-03 23:37:41', '2024-04-08 01:07:37'),
(5, 'Laravel', '1712558313.png', 1, '2024-04-08 01:08:33', '2024-04-08 01:08:33'),
(6, 'Git', '1712558348.jpg', 1, '2024-04-08 01:09:08', '2024-04-08 01:09:08'),
(7, 'Bootstrap', '1712558915.jpg', 1, '2024-04-08 01:18:35', '2024-04-08 01:18:35'),
(8, 'Java', '1712559464.png', 1, '2024-04-08 01:27:44', '2024-04-08 01:27:44'),
(9, 'Spring Boot', '1712559481.png', 1, '2024-04-08 01:28:01', '2024-04-08 01:28:01'),
(10, 'Angular', '1712559508.png', 1, '2024-04-08 01:28:28', '2024-04-08 01:28:28'),
(11, 'Deployment', '1712641057.png', 1, '2024-04-09 00:07:37', '2024-04-09 00:34:48'),
(12, 'MongoDB or MySQL', '1712641717.png', 1, '2024-04-09 00:16:14', '2024-04-09 00:18:37'),
(13, 'PHP', '1712642767.png', 1, '2024-04-09 00:36:07', '2024-04-09 00:36:07'),
(14, 'React JS', '1712649426.png', 1, '2024-04-09 02:27:06', '2024-04-09 02:34:40'),
(15, 'Node JS', '1712649490.png', 1, '2024-04-09 02:28:10', '2024-04-09 02:28:34'),
(16, 'Express JS', '1712649529.png', 1, '2024-04-09 02:28:49', '2024-04-09 02:28:49'),
(17, 'Next JS', '1712649561.jpg', 1, '2024-04-09 02:29:21', '2024-04-09 02:29:21'),
(18, 'MongoDB', '1712649614.png', 1, '2024-04-09 02:30:14', '2024-04-09 02:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sanjay Jaiswar', 'admin@codecruise.in', '0000-00-00 00:00:00', '$2y$12$eZgQ8SiOKZgDIB8xk0va9OQezQAj7bqEurCB/bqcP5jhJ/pWAT6Ku', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_query`
--

CREATE TABLE `user_query` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `company_college_name` varchar(255) DEFAULT NULL,
  `course_ids` text,
  `other_course` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_type_id` (`course_type_id`);

--
-- Indexes for table `course_modules`
--
ALTER TABLE `course_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course_module_topics`
--
ALTER TABLE `course_module_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `course_schedule`
--
ALTER TABLE `course_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course_tech_stack`
--
ALTER TABLE `course_tech_stack`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `tech_stack_id` (`tech_stack_id`);

--
-- Indexes for table `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tech_stacks`
--
ALTER TABLE `tech_stacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_query`
--
ALTER TABLE `user_query`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_modules`
--
ALTER TABLE `course_modules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_module_topics`
--
ALTER TABLE `course_module_topics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_schedule`
--
ALTER TABLE `course_schedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_tech_stack`
--
ALTER TABLE `course_tech_stack`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `course_type`
--
ALTER TABLE `course_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tech_stacks`
--
ALTER TABLE `tech_stacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_query`
--
ALTER TABLE `user_query`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`course_type_id`) REFERENCES `course_type` (`id`);

--
-- Constraints for table `course_modules`
--
ALTER TABLE `course_modules`
  ADD CONSTRAINT `course_modules_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `course_module_topics`
--
ALTER TABLE `course_module_topics`
  ADD CONSTRAINT `course_module_topics_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_module_topics_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `course_module_topics_ibfk_3` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `course_schedule`
--
ALTER TABLE `course_schedule`
  ADD CONSTRAINT `course_schedule_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `course_tech_stack`
--
ALTER TABLE `course_tech_stack`
  ADD CONSTRAINT `course_tech_stack_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_tech_stack_ibfk_2` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stacks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
