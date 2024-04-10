-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2024 at 08:41 AM
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
(4, 'MEAN Stack', 1, '<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn s/w development and become job ready in 3 months with our </span><strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">MEAN</span></strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\"> stack development program.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">In this course you will be developing 3 different projects with increasing level of complexity which will help you in digesting some major core concepts needed to develop a full fledge working s/w application. </span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Objective: Using front-end and back-end technologies along with frameworks for developing web based project.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Eligibility</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif; color: #333333; background: white;\">Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS), BCA, MSc in Computer Science, MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</span></p>', '3 Months', '2 Hours Lecture', 'Offline and Online', '₹40,000.00', NULL, 0, '1712648714.jpg', 1, '2024-04-09 02:15:14', '2024-04-09 06:30:31');

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
(3, 'Courses', 1, '2024-04-03 14:25:05', '2024-04-03 14:25:05');

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
('0YKVBA3vAH6j1omXezlFryEzh76z6SDy7VfUA5Kb', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFNTVUhoc0tUUHlVSzJKOTdIUXd1azhNSW9sRkRNeG94d1d2Rm5JNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbmMxWmtsbFJGWTBSRFZvUjNKMU1YSnNTMVoxTUdjOVBTSXNJblpoYkhWbElqb2llWGRLZEZWVVduUjNRMmxQZUdOa1ZXcHRja0ZPWnowOUlpd2liV0ZqSWpvaU16WTNaVGhqT0RRek56SmtNemhtTURobE56WmhNREV4WW1Rd05EazVObUk0WW1NNE56aGpNMlUyTXpGbFlqUmlNR0V6TXpGaE9XRXdaamxrTXpnek9DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712703991),
('1WKs4YV5uzWwlxwppx45B3ycHKBD7VYaIy0vVZae', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVk5XMHhud2U3ZU1NZTMxbDNubmR3c3pVZW1tbUhlRjFJWUdRUXdBTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWtrcmJuY3plWEpXZFhZck16VkRiRUZqUkhwTVlXYzlQU0lzSW5aaGJIVmxJam9pYTFKVGIweE5SMVZZYW1RdllUQnZZMjkwV25GT1p6MDlJaXdpYldGaklqb2laalE1TnpZeU5qRTRPV0pqWW1Fell6Y3dabVkxWXpSbFkyTmhNV015TkdJNVpHWmtZemsyWlRkbE1qVmhaVGhrTlRBeE5HUXdOMkV4TWpOalpUQmlOeUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712710267),
('2a09AFdfbtEfgKgU7pSGivOGBlujqrh0bYOVKgJ3', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkE5cDRTMWM1QUFDcTlNeGRUSTFOYjNsUmdPMU5WRWgyZEJXM09XUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW1GR1pIUnNUa1J3TlU5TGMyMTVUa1ZYUTNWdWRIYzlQU0lzSW5aaGJIVmxJam9pYlZkRkwzRkxNak5sVm1KSllrMURaMVZFTTI4MFp6MDlJaXdpYldGaklqb2lNamt4TnpsaVkyRmpOamxpTW1Nd1pUTTROakV6TUdFeE5HUXhNak5sTmpoalltUmxNemcwTkRNelptVmxNakV3WVRVNFpqY3pNRE0wTWpNMk1HTXhaQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712690010),
('2HKzr6SQCai2fUEc1FFpJtmbUTNoIwArwyOqjF9q', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem8yVUhwdXNQYWtwc0o4RExHN1VlS3JObUZmRVo5NlAzaHBMWVRDUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWxCWWFrcEhjVnBoWjB3eFNXTnlVVlExYVdwME5uYzlQU0lzSW5aaGJIVmxJam9pYms1cVJtWldTRTlwU1ZaRGJteEhTemxaVTBsR1VUMDlJaXdpYldGaklqb2lOalZqWWpWaVkySTVabVUzTm1OaE5HUTVOVEZqWkRnNE56SmtaVE0xTVdJd1lUY3dOMk01WXpRM056YzFOVGd5TkRnd01USTNZV1JtT0Roa1pqYzJPQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712671218),
('3GZKh1XBgoM1LAZKv5uuGX4sgoro8AZuDKsNsgI9', NULL, '66.249.68.5', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkVvOVN4TDlSTWNIUzMyU3A2QjlPb3ZOMUVSR3AzREQ5Qm56Y0JjZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwczovL3d3dy5jb2RlY3J1aXNlLmluL2NvdXJzZS9leUpwZGlJNklrWjJUa0ZVTW1aV2NXSlVlVFpzZDFoV2FHRmtVbmM5UFNJc0luWmhiSFZsSWpvaVFsZzVVV3MzTDBGR2RqZ3JURFZUUzFwelFqRnJaejA5SWl3aWJXRmpJam9pT1RjMFltVTFOREpsWlRSbU9HVmlNMlE0TXpNd00yWTJaamt4TWpGa09EWmxOamRoT0daa1lUWXlNbVV5TWpkbE1tRmtZbU5sTm1ZelpHWmlNRGs0WlNJc0luUmhaeUk2SWlKOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712676504),
('3k1VbeV4300HSj0zNojRCBzc4s0Am6cCtjlmTkFs', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkJkbE1QNkpQVFBaTjBUbVBSWmdDMjN0ejBSemlWZGF6M0Jic01uOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM2OiJodHRwczovL2NvZGVjcnVpc2UuaW4vZW5yb2xsLWNvdXJzZS9leUpwZGlJNkltUkpkSEo0VXpseWVXMDFORGR2Y0ZodFVtWmpVVUU5UFNJc0luWmhiSFZsSWpvaVdrcFNUVU5XS3prNVJqUnZTVFZ0Y2prNUx6VktkejA5SWl3aWJXRmpJam9pTVRJelpUUTFPREEzTldabE5tWmtNalE0WWpNNVpXVTNPVFl3TWpRNE9XWmxPVGRrWlRKbVlUbGxNMk5oTkdaaU1HVmpNVGxtWmpOaE5tSTNZemxoWVNJc0luUmhaeUk2SWlKOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712701058),
('3KdmsejQl36R62QgAPVbQG1XfaxEVF0MVbJb0akG', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFBKYVlza3NnaW1tTUZBTDlGMFlSTHFaZ0tHUEdVaTF3TkI2M1J2RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWxaNk5WUlFTbE0yUnpReU1GZHhUWGROUjFWemRFRTlQU0lzSW5aaGJIVmxJam9pT0ZZeWFHVXJXbUpUU1Zoc2NuZDRjWGs0S3psQ2R6MDlJaXdpYldGaklqb2laV00zTm1FNE5qazRZalZpTVdFNE56bGxaVGhqWmpsbE4yVTNaakEzWlRnNE5qWmtPREUzT0RRNE9URmhaVGhrWVRkbU0ySTJOR1JqTVdSbE5URXlaU0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712679692),
('4gYs46oPKCM9sIdEC39qPJkixzK6JiqsQOzx3Uon', NULL, '152.32.213.68', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 8_1) AppleWebKit/568.36 (KHTML, like Gecko) Chrome/66.0.1606 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDBuQkdCRzFBMklXQU1GY1NmS2lTaXY5QVNXaGRRUXBUQnQyMG1ZcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712688038),
('6BjSejHE3uJtqeAu95vwRUYSjxdO7ULyMdMULjqk', NULL, '89.187.163.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDRGMjdTNjZrS2NHVVhnZmRKUU9ydlFmdHJZdjFlZW1JYnpzcjl5SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712697441),
('6nMS8YR6uZBaxxoccOv93AS7bZAW65JZ6zIunSjK', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2kzaDJ5WnR2Q29oN3h0RHdoQ0V6TnJ2ZDg3djBxNTQ1TkxZTThBNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW1ZeGNIUjFNVnAwSzB0a1QzRkRUbTlPYjA5RmMxRTlQU0lzSW5aaGJIVmxJam9pVEhNck1FOUVXamxHZG5GNVRYSTBjbE5FWmtsVmR6MDlJaXdpYldGaklqb2labVl6TVRCbU1EQXhPVEEyTnpZd01EaGhNakl5TVdGaVltUm1PV0ZsTXpFM01EZ3hZalpsTXpnek5XRmxOelJsTmpnMVlUTTNNemczTjJNeU5EWmpNeUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712711385),
('72NlzacFGnnCx1iCj3bB9ivAYZtzlchQbcobrfJh', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0hzb3VFTXRtcnZUbTRTSXVIcU9QN2VNQjA4VUlpcEc5NmpHSUhQbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWpoa2VucFdTWEV6TTJaYVIwWnVMekpxTVZsUWRsRTlQU0lzSW5aaGJIVmxJam9pY1V4c2RYUnViVWw1WWpWVFdERnlkMHhPWm5CMlp6MDlJaXdpYldGaklqb2laalV4WkRCak9UWXhZbU0yTUdSak5qYzJOVGczTTJSaE1tRXdZelV5T0RCak1HRTBOMkZpTkdVNU1UZGlNRFkwTnpoaU4yRm1PVGM0TmpnelpUZGpOQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712695485),
('7pAytXmxx3JFliAXOyiIa1ZX4NlusnJEcAF4TjgG', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmZrMmpnWHhsZWxEdmdYajFmYmpXUTZubmg3QWY3VXRJSTNqOWFZQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbmhqUldOWVVrdGpObEJsUVdVeVkwdzBZa1YxVm5jOVBTSXNJblpoYkhWbElqb2lNWHA0WnpKb09HZ3dWVWsyZFZKMU1UZElkbnBZUVQwOUlpd2liV0ZqSWpvaVlUQTFOamd5T1RNM1lXVTVaR1F3TkRneVlUZGtORGcwWldRMVpqUmlaREppTVRVMlpUY3paR001WVdZeE0yWTBZVFF6WWpabU5qUTROREkzTUdNME1DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712706218),
('7Ro4Zg0Bme4BOoL2c60AnXwFj2IoxQZB3s3N4DHz', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2xJZUpCNm1oSlRGRFYyUHNONmwzUzlwdjZYYU5yY25ybm51Y0lhciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWs5bVRWRnNibWN5Y1ZGWWNtbGFVVU5QZG14S1YyYzlQU0lzSW5aaGJIVmxJam9pUzNoTUx6QndNa3R2U0ZCQk9FWm9hWEJKVkdWd1FUMDlJaXdpYldGaklqb2lOelJrWldZeU16SXhOREV5WmpZNVlqQmpNakl4WlRobE1XWmtZbU15WkRKaU5HWTJaVE5qWWpGbE1HTTVZamc0TjJFeFl6TmxPREpsTWpBeU1qSm1NeUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712701482),
('8WnGRXvB2gw7Rxhtzd3BLACfi9XIr5D50mV5QV4p', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFdPTHRabk1MNFNaZk90aDVkYW9EZlY3a0ZtMmlVdjdESTl1TFlpZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWpKTGVIVlFjRzFDVm01dFRYcFJLM1l4VTI5eFJXYzlQU0lzSW5aaGJIVmxJam9pWVhCcWFIa3JZV2RZY0VoNE5HMWpWa2RpVkRoeVp6MDlJaXdpYldGaklqb2lOekUzWmpjelpHVXhOVGMyTXpRNU56TmpaVGRoWm1NMk9USXdZVFppWmpJeU5XWXdZemcyTkRWak1USmlNRGc1WkRGaU1EZ3lNemsyWkRnNE1EVXpPU0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712716678),
('AfJ0Ie18Xic8WHBriWeq5EBYbQHQldGhSv4TapB5', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjBjdk1ET01aMURWM2pLVk8wTnZHc3lJZmhyZUtrQTB4Mk9FZFo2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vY29kZWNydWlzZS5pbi8/cD03MTYmcG9zdF90eXBlPWNvdXJzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712660799),
('AQ3qowtEDn5xwc5Vi8S7Ooyn5HI22tblqYBFI09b', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWZodDRObkJ1RkxBSGF0WUNJdENrbThQdjJMQWd1eGlsUEdtendFbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJakJ3V1U5SlZuUklVRGxZYm1GRFZUSlVXRzVsZUhjOVBTSXNJblpoYkhWbElqb2lZa28zVmtSb1Jta3JNMkV4SzFsVVozWkxNeTltWnowOUlpd2liV0ZqSWpvaU1qRTFObUZpTWpNeU1XRTBOak5tTXpRMFltUmhORFprTURObE9EUTVOMk0zTXpaa1kyUXpZVEF5T0dWaU5qa3pNMk5rWkRFNU56RXdZV1UxTjJNMVlTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712711972),
('bejyrWO4cBdiGQ0Y18rVDhHkCTFSso8NwOTbefCX', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0xyVWg0emtsaTE4Y2t3dHptRnpKdXpUQ2hmS3ExYWpoM2VuVkVKdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbmhrSzJkeldrWkxUMm95VEZZd2N6TjBhbkpqV25jOVBTSXNJblpoYkhWbElqb2lOMGNyTVcxelNHZDBkbGxCTm1OdWRYaFdZVVpCVVQwOUlpd2liV0ZqSWpvaU5qTTBNbU0xT0daa05EWmtOREE1TTJJM1l6Z3haRGhpTlRrME16TTRZMkV4WVdGbVpHVmhZamt5TkRneE9ETm1ZelU0TnpoalpESXhZV0V6TkRJeU9TSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712664756),
('BsknVbV9kNIuVfhUoArgh1WMf7MKKSOObMHR6jVm', NULL, '65.154.226.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGNXTTdKQzJyNmNpV25NUVJsTFFiMWVIaHVZdmdiSTA0eklKZ0RwRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmNvZGVjcnVpc2UuaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712693841),
('BUPa0xAP3SlKlYPB0NlX8a6fwVR3OLl1weciwsdb', NULL, '152.58.18.52', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR01pdlhLUnlWMWRjeVF6Mzh5NzJsMFNhZTFpcmlDdVkzaGkycG9udyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712675315),
('d93fQLO9GQwn9wkwXodycQrjbGZzeujhupOSyzYt', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVBDTEt3UWQ2aGtkVEhkcVRPdDhNSHNTaERpVG9ISU1iVkszenQ0QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWpObFJFRkdhRUpvTWxkU2FEWlBlbVJ4T0d4a1ZsRTlQU0lzSW5aaGJIVmxJam9pYm5Ob1NVTjJValJaU2pjdk5XUmxkREpYTUdSbFp6MDlJaXdpYldGaklqb2lZek5tTldJeE9XRmxNRFUyTURBMk1ESm1OVGRsWVRrMU5EWTVOemxoTWpObU5XUTVZekE0TW1WaFpXRmpNRFZtTVRFME1qRmtOamxqWlRrNU9EVXhOU0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712692309),
('dtjpge9qEyVjnB8Zs39rKUUw4fYSq7UFwchNgg4d', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnNtaE5tZEpnMEVSVldreVY4RDVwRHNnalpuNDQ0blY0Zmg2cXJWaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbTVGT1ZOWFJ5dDZabkU1ZFRnNU1GZEZZbWx0U2tFOVBTSXNJblpoYkhWbElqb2lPV1ZoWlRCblZsVkRielpFZG1oamFuSlhWRmt5ZHowOUlpd2liV0ZqSWpvaU5qTXpNalJpT1dSbU9HVTFZVFF3TlRKaE4yTXdOakk1TjJRd1lUQmtOMlJsWTJOaE16RmxNV1k0TTJabE5EUTFOMlkyTTJKbU5qRmxZakprTW1GbU5DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712662819),
('eZcQTn0uyvc1J43WwCkKuAdyP4JURsyeSarQglOC', NULL, '152.58.21.118', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3QyS2hhNVZVakpyb0ZRNkFDc3F1STE4OUkyTEcxZFd1ZjIwS1JnOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712670852),
('fjR5OS1b2kax2sWRFhg8WBme4JLcCqEi8WRBxGCB', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmxtUmljSFVhb0VqTWJJQWdCcnpzdENic1dUTm1BZG81dUkzZFZmQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWs5QlVEVkRMemczTkhsMVVHRlpaMEkyTkU1VFdVRTlQU0lzSW5aaGJIVmxJam9pSzFoeFUybzJMMUY1U2xwQk9XOXNlRklyU0ZabVVUMDlJaXdpYldGaklqb2lZMkl3WVRjMU5UTTBPRE01WVRKbU5tRmxaakEzWTJZMk56Tm1OR1l4WXpaaU5qZzJOVGd5TURrellqWTFNREkwTW1ObE9XSXpPRFF4WmpjelpERmlOaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712713598),
('fOQQqpbXCGQ9ud1DypSAgtt7ZMP3FyRUDksyHp3a', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGU2dkRqQlRkd0xWWWRtNk9ZWTdoN1E4TWxrQ3FhT1d5T3kyUDRWZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW5Ka2IzTnFhbnByV0RkSGVGbHRhVmxhWkV0RVRtYzlQU0lzSW5aaGJIVmxJam9pYkM5cFUyZGlNMHRDZEhWRlVHNUVaa0ZqTTI1UGR6MDlJaXdpYldGaklqb2lZVGM1WldObE9HWTVOak0wTWpsaFl6RTJaVEZrTVdReVpXRm1ZelJtTlRNd01UbGlOR0kyTXprNFl6Z3hNMlE1TnpKbE16STVZalZoTVdVNVlURTBZU0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712685211),
('gPKQR156kBkuSDKLfVagmxW84PzmSoXOKkFsAY2O', NULL, '49.36.115.75', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY001VkowTW1Ic1lyQjNjelBHY1RlenVmUVczUTR2NWZEMG12MW9aRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM2OiJodHRwczovL2NvZGVjcnVpc2UuaW4vZW5yb2xsLWNvdXJzZS9leUpwZGlJNklrcFVSbE5YU2pVd016TmxhaXRHZEZSM01sQXpibmM5UFNJc0luWmhiSFZsSWpvaU1FNXdjV1l5VVZkaFRFMVpVVll5UzFSb1QwMUxkejA5SWl3aWJXRmpJam9pTkRVNFlUbGhOVEUxWkRneVlqZGhNREE1WkRrME1HRXdaamc1TVROaU1qZzBNVFUyT0RjeVpqTTVaVGMwT0RNMllqWTFZemhpWm1abE56STJZekE1TVNJc0luUmhaeUk2SWlKOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712668087),
('H5eezxz4XyOsVmcGYdgTG2GF0NaFVHCkFkmAq5u8', NULL, '152.58.22.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2luRFI1bXRndEN3NGZzaVlTUHZpTnZlMk42OFl5dWMzdnh1Y0JLMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712709817),
('HCj0QLoawtcQ9DBzZ48tg3X4FGWtvdzTLkobdyHB', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMW1NVExoZTM0cndqMUlYaldlZ1Y5S1hWZGpRQURYaHdKYncwWXp2VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW0xSVIwNWthRzV3Unk5NGFYbHFWMmh1UkRKc1lYYzlQU0lzSW5aaGJIVmxJam9pZUZGcVR6SmlXSEJqYTBkMmRtbGpMMjFST1U5SGR6MDlJaXdpYldGaklqb2lOakF4TUdFME5UQTFNV013WlRkbU5qTXhOVGN6WVRFd09UTXhNVFV3TlRSaE9HTm1Zakk1TnpVME1EWTFZakppTmpBek5qTTRNR0prT1RsaVlqSmpZaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712671636),
('hE8xowU9w6NJRJmHVEnBmuyLeo5R1Likvj9df8yZ', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2N4OU40TzJlcHhJdG55Ukg2V3ZqZGRMczBKY3owMFUyMjFLUm9sOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJamMyTlRSM2VHaFBObVkyZGtvd2FXOUROVXREZWxFOVBTSXNJblpoYkhWbElqb2lVR2hzTUdwd1NVTXdhSGhYVDNoWGMzVkdNVXQzZHowOUlpd2liV0ZqSWpvaU1qYzVNV0poWlRrME9EVXdObU16T1dRNE56STVaVE5pTkdOa09UVTNZemN3WkdGaU5EUTJZMk5qWkRjM05HWTBPV1F3Tm1FMk16Rm1ZekU1TURKaU9TSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712664758),
('IkqrLu1KgZTBTQJVydWYB8gFQjDRBk3qoGtgsn31', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3JnNWJlWnhHUDZSZ2dwRGJyNEcwSnhIS1RCd2RWdjBmZjByN3ZxbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWs5QlkzQnhWMmxpUmxJemVIVkRha0U1Y1RORmMyYzlQU0lzSW5aaGJIVmxJam9pT0RGbEsxcERlVVkxYmxveE5VMHhTV1pPTVhSRFVUMDlJaXdpYldGaklqb2lNR1U1TjJVNE5qWmxNVFl5TnpBNU1HWmhZVE0wWlRnMFkyRXhNbVE1WkRRMVpqTTBaakEyWWpabU9HUmxZbUZqTXpBMll6QXlNbU14TXprM056ZGtaQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712675430),
('IxR7AZER4w7QtJK3k9nhh9rjmIWHZ7ozzoD4q5jD', NULL, '66.249.68.5', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianoxVzNQa3hWTmJQNHJSemFxZ1BUdnBKTmZiVzFFOE9YNmtjNmV1ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwczovL3d3dy5jb2RlY3J1aXNlLmluL2NvdXJzZS9leUpwZGlJNklqZzNWbk5HTTBkblJuWmFiRXd6YWt0U2FVVTRSbmM5UFNJc0luWmhiSFZsSWpvaVprOTFWVFppWWpOUVRGWXJZWEJ0YW5GckwwdGlkejA5SWl3aWJXRmpJam9pWkRBd09HVm1ZVGN4TW1JMFpEQTVNakV6Tm1Zek5UTXhNVEV3TUdObVlqUmtPRFF3TUdFMFpqZ3dOVEF3WkdGaE1USTFOakpsWkRjMFlUVmxaRFF6WWlJc0luUmhaeUk2SWlKOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712664168),
('JrA197c9uyZZ78bKZpD0f1GnfiwOaRRklJU2Fzwe', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTVGYzBPTjl5dXRaS3RhVHp2SUJUTUF0RmQ4cXlHZDJhZm40OEswaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW1ST1RuQkxTMDQzVFhCd01VVjBRbFJFT1VGWFZGRTlQU0lzSW5aaGJIVmxJam9pSzBsMWFXVnZObEphTm5GeVkyMXNVRUk0Ykc5NGR6MDlJaXdpYldGaklqb2lNbVprWVdNMk9EVXpOekJqTVRWallXVTBNVGhpTlRWbVpqUmtNMlF3TnpGallUSmtOR1F4T1RKbU4yRmxORGswT1dabE1qazJZbUU1WTJFM05HVmtOeUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712661467),
('Jsa9Pk6HnTTRVFxcU7EVRiJeet86f7TZneUybKma', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXN1VHlkQzUyWGQ1RzdVUDF3RnAwQ2g0bUJWNU1sNWZtTkJwa1lQNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW0xc2JrbzFWbmxOZFdaUFJqbHRaSFpJU205UE1VRTlQU0lzSW5aaGJIVmxJam9pWVhSVU1ubDRVa3BNYTNoNlVtVllkVmhRTVd0aGR6MDlJaXdpYldGaklqb2lZV1F3Tm1GaU0yWXdZbUl6T1RFelkyTmlaREZqT1RoaE5tRTVZVEZrTVRWaVlXWXhOMlJrWkRFeU1qVmpNMlE1WVRrek16STJNVFkzTlRCbFpEa3dNQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712680003),
('K291SYCE6k5gkNqyODHmQWIgH0mOSWOSgK1jsATT', NULL, '182.48.210.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0lYR3ZYbk5nUEN4dFN0akY0RVNYMHV2NFVGbVNWTTMzckg1aHp2ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbWhhZVdSQlFsWXhXbloyU1cxd2N6bGpLM296TkVFOVBTSXNJblpoYkhWbElqb2lTek41TjBwVGNsVkRiWGxXZEhvMFoxQmFTMVprVVQwOUlpd2liV0ZqSWpvaU9URmlaakJpT1RrME5tUmhPREl6TldVNVlqZ3dNRE5pWWpaaU1ESTVZamRoT1RNek16a3lNR1ExWmpnMU5USmhaR1kxTjJZeFltSmlPRE16WlRVNFpTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712689176),
('K3Cmz0P7sZoWzGyJ18PU3oUcnVDvJqUP9qY6CpZM', NULL, '152.58.23.86', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicE13QTFrc0JPa1ZWR0Y3Q0NEb0x6NjVGQW01eEIxVnZTekpicDlOSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712689156),
('LDAMQQjxrn2gEeZeaDl8VLF9MzakCeqbmgvtL52R', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzZwRXhhYTVWRG5uYVNTYXVlUDdaQW94dFgwdlpFOTdYdG5vRmloaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW1ZM1JGWXZZVFF4U2xkSlRHOU1aR293YjJOaVNIYzlQU0lzSW5aaGJIVmxJam9pVlhNMFpuUkZjRlF2YjNCWU1rMXdXVkJ6ZVRoMFVUMDlJaXdpYldGaklqb2lZek0yWldSak5USmlNV1ExWkRVek1UTTNaRGxrTnpNNU56UmtNbVUxWkdRME1qazVaRGs1TWpReE56aGtOVGN3WkRZNE1tSmlNemd5TUdWak1qZzNNeUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712699330),
('m7egcpHJsjeatZN6igBvoOjcjPhFAU02sJQVV2P6', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkljMzdKSVRmYjZra3o1dDNyZjh1aTkwQ1hEOFJRUzdveEtUaDdMQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW14VGIxWnNkWEpLU2twMmVFOXNVMEZGY0VkQ1dIYzlQU0lzSW5aaGJIVmxJam9pVkhkU04yWktUV3hRY25saEsyOUNSV0p6VWxkVVp6MDlJaXdpYldGaklqb2lZV0U1Tnpoa1lqVTVZV05qTWpsa1kyWTNZalU1T0dJNU56bGtaREptTlRCbVltTmpOV0V5WWpZd016RmhaV0l4WW1NMllqYzNPREE0TkRJNE5XSmlPQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712707196),
('oAprdRN0pcGh0eD0HNVudGUsTluGOkGRbddhaitl', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjBEVElOa1d2YjN3V1BtR25peERoV0tCRE1TT3kzU1Jtc0FBR0NTTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWxCR0x6VnZLMHA0UWpWbGJYWjBaSEUyYUU5YU5GRTlQU0lzSW5aaGJIVmxJam9pVUhSeEx6VkZSemR0Vm5abk1FSTBTRkV3TmpOWlVUMDlJaXdpYldGaklqb2lNelJtT0RWaU5qTTJNak14TkRNMVptUmhZV1U0WWpFNFltWXhaalV5T0RCaVlUQmtZVGxqWldRM1lqWTVOVEEwTnpkalpEVXhNakpsTTJRMVpUQm1aaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712668717),
('OdEFyZhAOY9Kz3wULRxX0GSWzvRQflyjzknQZP5s', 1, '49.36.115.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVkhnQTFJNm9wTXpmZUZnYzJuS2t5T2ZnWGFRR0drdFdsU2hldVBNTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wdWJsaWMvaW5kZXgucGhwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1712664219),
('OTl75dNSepBQE0zZkCRgkP5O6ds5SHz6hjBqIbY1', NULL, '66.249.79.4', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWpNTjZhMTNnZEdUZEVteDk2VldVTjRqdW0zTUNrVk83b2JObnBoTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWt0YVFpOW1lVGRMWVZZdldqbDVNR0pMUTNkWFIwRTlQU0lzSW5aaGJIVmxJam9pV1RGMGNGcG5XVkpOVTFCVWFpdFhVM1JGU0c4eGR6MDlJaXdpYldGaklqb2lNVE13TkdGall6VXlObUZqTTJFNVpEazFNV1UzTnpCaE5HUXpZV1JpTkRnMk5EazFNRFZrWmpobE5UVmlObVl3TnpRME0yRTVOamt3T0RBMU5qSmxOaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712666922),
('OwKa5iML1UrlJIYHqkgKWSU78wFmWfnhjO1aVIs7', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoick1vUk1wYU9FbGJSRTNaQUNGdkNmMHBjclIxYTFZWUg2cHZiYVZnMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWl0eVNXczVOMDlQZVdab01saDJjMnBGUzBZeWIwRTlQU0lzSW5aaGJIVmxJam9pWkZaVWFHeG1WbkJtT1dac0wwNTJlQzlrUVhNNVVUMDlJaXdpYldGaklqb2lZekF4TmpsallqWTBOMk0zT1RreU9UZGxZek01TTJNeE1qVmlaRFZtWVRFelpUa3hORGxrWVRjM1pEWXhNelptT1RVeFpUQmhNakpoT0RBMFpUazFaU0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712701477),
('PCcbYgrnQQhiY4k1wMP1yDUZRC085gdotSseCdSo', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzFTc2tBODhQOWZ1ZXFtUHZ5eXVKQ0xDbmZEZFB2SUgzSnp5UUFaMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWtkT01pdFdaR0l3WkZkWmVXSlZjbkJYUVd3clVXYzlQU0lzSW5aaGJIVmxJam9pZGxCd1JVMXpSVmM0WldScE9FSndibFJSUlhGb1VUMDlJaXdpYldGaklqb2laR0ZrTUROa01HVmlNMlF6TXpGbVpHRXhZbVkyWVdOaFkyRTFaV05tWTJVeFl6TTVZamMyWlRZME9URXdaamRrTnpabU1HRXpZMlkyTWpKa09EWXdNQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712667317),
('q7qtTt3avIAAPh84Ez3SaAyxjjlCgo0EOeRJO198', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGh3cGt0R01iMU90bVZvMHQ4Vzd5ZHk5UnNJTFR5dU5Wd21EM2dvOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbUpyUVdsbllub3ZOMGRSZGtjellWRXhialpOUTFFOVBTSXNJblpoYkhWbElqb2lhWGg2Y1hOQ1kyUkVjRlZDVkVOT2IyWlNURTFRWnowOUlpd2liV0ZqSWpvaU1qRTNNamM1TldRNFlqa3laREl3TXpZek1EazNOREEyT0dNNE9ERXpOVFZtWlRZeE9EUm1PREpoWXpnM01qSTJNV1pqWkRFd01qQXhNamN3TWpkaU5TSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712680782),
('qlsCXYh8QdO65VuNaUi2ZjcL16GBb1KL3l1eZDi2', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDkwaEN0SFBUdFJvcUFLa0ZPb0ZkUXJ0cE9ranRabmUzNHVUcFRsZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWt4blIwVldRWEpaVlhKdVRrbG1WV0pxUVhGS2NFRTlQU0lzSW5aaGJIVmxJam9pVGtsclkycHpORGMzUTA5Wk5XSldOME5DTVhocVp6MDlJaXdpYldGaklqb2labVE1TjJZeVpEQmtPRGd4TVRrM1pqUXlNVFUyTXpVeFpUbGlNRFEwWWpoaE5EZzJOVFpqT1RCak9UUXdaREpqWWpOaU9HTmxPRFExT1RrNU16WTVZaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712669118),
('qWSyuDKwFgW1ImzqQL2w89Tg8aNRlndNpKRvHWdM', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2oxRE8xcXlVUVljMlZpVlV5aFQ5dmRJRWszaDkwTmQ1TlpxTHFkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbVJaYTNsWWJsRkhaRmR6ZUZJMmFETlhhVFZWZFdjOVBTSXNJblpoYkhWbElqb2ljVXB5TUdobk9XVlNjMVp4ZUdKMFlrUlVSV0pQVVQwOUlpd2liV0ZqSWpvaVlUSTVaVEF3WlRNMFpHWXpZalkxTXpGbU1ETTNabU5rT0RZd056aGpOR0psTXpBMk1UUm1PREpqWlRWak1tUmlPR0V5TkRVNE1qZ3dNbUkyWWpWaFpDSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712687117),
('ty1AZ74mnLmEDDvyLOw94yfrX9YW2qasP1Cj4c34', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGJ0OWhscElwOENuSlZzdTZSQzhHcEd0bWFFcmRRbkZMZlVGbkRMZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712711504),
('UOaSobKN2CcFBbhUH4bQwjEoRLj1hfbD5bFTrDDo', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWJrNG1QS3BvWVl3VEx3c0xzakxwaDdMRGN4c25FTm9jeEw1NzI2UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWtsdGQxTlZLM3BhVkZsRmRXaFVSRWhJYjI0d2FrRTlQU0lzSW5aaGJIVmxJam9pY0cxclJUUjFaazkwUkc0eGVWcHhaRTlPV0ZKdlFUMDlJaXdpYldGaklqb2lNRFV5WVRVNFlqTTBOVGMxTVRabVptSmtOamMzTVRReFpHRmxPVEkzWVRnNE16UTVaREpqTUdZeVpERTBaVGN6TUdSa05ERXpaR1kwTUdNNVpUQTFOaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712674294),
('UPEPiQvr9A92aWrbbBpuN4ueICdvy2ajhbVy3H09', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVpoOFkzRzFsRjIzN1pEbVU5TzdiS2tvVmRuS0hHcEZ1Yjd5ZzNTaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbGREVUUxV09UQmxhR2xFVld4dUszSTRabVZEUWtFOVBTSXNJblpoYkhWbElqb2lSMk51ZFc0NWRXZHdlV2xFVVdKSGJFNVVLMk5zZHowOUlpd2liV0ZqSWpvaVptRTNZVGxrTVRrME5UYzFaVFE0T0dJek5EYzRNVEU0TVRSalpqRmtZemd4WVdFNVltWmtORGRtTURJM1pqQmxPVGczT1RNMk5Ua3dOelF4TkRreE9TSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712663315),
('WjuXKewFBCvm89WSACzh8IIYT2dNntoQNvtXzo6z', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTBQak1IZGZOSllwNFU0R3pnQ09xVUREOVJ1Y28xMXFxcTFXMEkzVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW5WYVQyRkdRM1pRT0ZKRWIwNTRaV1Z6UVZOaU9VRTlQU0lzSW5aaGJIVmxJam9pYnpoeFVtazVZMU5IYmk5U2FIaG9VVlUxZEZKU1FUMDlJaXdpYldGaklqb2lNREV4TVdFM1pXUTNPRGN6TUdVNU5UVTBOMlEwT0RGbE5UVXlNRE5rTWpCbFpUVTJPR1EyTUdGbE9ERXlPRE5sT0RkbE9XRTNaV1ZsWVRObE9EVmtZaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712663720),
('x99Hzn0QhGILrtvnn7iNDDAUujORQPJJ5sctsec5', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUNFeEFaNVFUV09tcnhNU1pQUUlWYUEwcUQ0eXZWdmY2NENUb3lRMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW10RGFYVkdhMWxNY0VWWWVFSTRPRFoyYWtodWVIYzlQU0lzSW5aaGJIVmxJam9pWW1jd2NtcFZWVmdyT0ZKekt6ZEVTRmQ1ZW5SYVFUMDlJaXdpYldGaklqb2lOemt6TjJGbFlXUXlZelUyTnpjMU16QmxOVE0zWVRjMk5UbGtabUZrWm1NNFlqZGpaR05rTXpRMU5USTBPRGRtT0dWaVpETTRZMlJrWXpGa01tSTFZU0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712674083),
('XM810P8mIbBPsTunVZmmuN4kb6lknpwIzpbMdjzm', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUxaSWJjQTRwdzFDMXQzNjNvR0wwNnB1dFVKYWc0U1lya0dUcWcyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbGR3YzIxUWFHOTFUVGxFUTI1NGFtVmxiMkZNUmxFOVBTSXNJblpoYkhWbElqb2lSV0pJVW0xWWFERllhQzluVkc1RGVFUm9WVGt4WnowOUlpd2liV0ZqSWpvaU5XTTNaV0ZpT0dJNE5tWmtORFJoTWpJeE56RTFZalk0Tm1VNVpXRTNZVEF5TTJSaU1XTTRNREprTVRRMU5HSmpZekE1WVRVMk1EWTRaV0kyTjJRelpTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712681718),
('y9ejXpLtqC7qGIAtBk2Dp2xBowLYeCA3pSU06vSR', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWhDcFlzQkNLSVF6Y3FYNGZmRVlqNHRBM2hibHdiS0xsM0ZKREN6SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM2OiJodHRwczovL2NvZGVjcnVpc2UuaW4vZW5yb2xsLWNvdXJzZS9leUpwZGlJNklrOXNTRUZJVVZabVdscHFTMGt4ZFd0U09VdEpOVkU5UFNJc0luWmhiSFZsSWpvaWJUTnZlU3RVUnpFd1F6bE5aamxFTlZWNlZXMVZaejA5SWl3aWJXRmpJam9pWVdaak1XVmlOMlppTXpjNU5qaGhaVGRrTUdVeFpEVmhNMkZrTjJWa1lUSXlNRGhtTldFMk9EZGhOV0l5T1RZeVlXRTNOekJtTTJRNE4yWTJNRGN4WXlJc0luUmhaeUk2SWlKOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712686233),
('Yg2k0JY9HzoD487eA0YFS7Zbu1H4rb0OBSo2BFe2', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDRsUzJqUEp3OU12clZNdmxDb0JkWUk0VU5iYWVvUEhyaExUaGszUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWsxalVYa3dVa2xHZUhONWNWTmxkbWQxTUc5aVlrRTlQU0lzSW5aaGJIVmxJam9pZGxsSmFVVldiV1ZLU1VoUmIyVnlUMWsyWkdwaFp6MDlJaXdpYldGaklqb2lNMkZpTW1NMk56Z3dZVEkyWkdNME9EWmpPRFkzTXpsaE1EQXhOV1F6TjJOaVlUSmtZek5tTnpjME1HRXhZVEkxWm1FNFlUazVObVE1WmpBd016bGhOaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712675151),
('ygY2jn8WdYqLjhI2FEQmPLj3K5WIul8bSTZFvF2h', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienhOVHBINW83VHpmdFA4bEZlWnJNQW5OMnh3VUtLbGNvRkt4SDZucCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SW1oQ1QzRXlRbEZUT1Vob1VVdzNRMDFqUVVOblJsRTlQU0lzSW5aaGJIVmxJam9pY1VGcVExSkxNbWRsYUhScVVrUmxaVGxrVVVodmR6MDlJaXdpYldGaklqb2lPRFprTWprM1l6VTVNMlU0TVRZeU9EbGlZbVF4TURJNE5qTTBaalZrTTJabE9XVm1PRFl6TnpVd1kyTTFNalprWmpFNU9EbGpOek5pWm1RME9UUmtOaUlzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712713574),
('YT0vKSOPbhXtVabUzc2YXYDJ0oacwrZy9Ofmz4rQ', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3VZaFZkTFNKeWl5c1Fqa2ZHczdJME5WeEJHUEIzNU5RWm9WNXBOdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI5OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlL2V5SnBkaUk2SWtsUllXWmpURlF5WWs5RU0wUXZMM0prYlhFMWFYYzlQU0lzSW5aaGJIVmxJam9pUW1SdU1IQXZaa2h2ZVU5YVJXVmFWaXRLYzNOSlVUMDlJaXdpYldGaklqb2laRFUwTkdWbE1Ua3dNemRsWkRnNU9UUTJOVFkzWWpWak5qazNOMlV5T0RrME9HWTRNREUwWlRkbE5UTmpNak01TXpabU9XSXhOVEk0T0daa01qQTVOQ0lzSW5SaFp5STZJaUo5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712718177),
('zbcEL3BqAQMG1SZEMSRuSXCmFs5acauN4E1YFCFD', NULL, '182.48.210.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnJ2Z1hQdE5DS2RjZTNScnpNUnpGVTZqb1h5T2FxczFFMEZITjllZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712673374);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
