-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 03:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codecruise`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
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
  `description` text DEFAULT NULL,
  `course_duration` varchar(255) DEFAULT NULL,
  `class_schedule` varchar(255) DEFAULT NULL,
  `delivery_mode` varchar(255) DEFAULT NULL,
  `course_fee` varchar(255) DEFAULT NULL,
  `current_discount` varchar(255) DEFAULT NULL,
  `apply_discount` tinyint(1) NOT NULL,
  `course_banner` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `course_type_id`, `description`, `course_duration`, `class_schedule`, `delivery_mode`, `course_fee`, `current_discount`, `apply_discount`, `course_banner`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Full Stack PHP', 1, '<p>A <strong>PHP</strong> developer is responsible for writing server-side web application logic. PHP developers usually develop back-end components, connect the application with the other (often third-party) web services, and support the front-end developers by integrating their work with the application.</p>\r\n<ul>\r\n<li>HTML5</li>\r\n<li>CSS3 and SASS</li>\r\n<li>Javascript</li>\r\n<li>Typescript</li>\r\n<li>Ecma Script</li>\r\n<li>Bootstrap</li>\r\n<li>JQuery and AJAX</li>\r\n<li>MY-SQL</li>\r\n<li>Core PHP, OOP in PHP</li>\r\n<li>PHP framework Laravel</li>\r\n<li>SCM with GitHub</li>\r\n<li>CICD with Jenkins / Azure DevOps</li>\r\n</ul>', '3 Months', '2 Hours Lecture', 'Offline and Online', 'Rs. 40000.00', 'Flat Rs. 1000.00', 0, '1712155117.jpg', 1, '2024-04-03 09:08:37', '2024-04-03 09:08:37'),
(2, 'Full Stack JAVA', 1, '<p>It is a part of Java programming language. It is an advanced technology or advance version of Java specially designed to develop web-based, network-centric or enterprise applications. It includes ../the concepts like Servlet, JSP, JDBC, RMI, Socket programming, etc. It is a specialization in specific domain</p>\r\n<ul>\r\n<li>OOPs programming concepts</li>\r\n<li>Java Programming Basics</li>\r\n<li>File Handling and Streaming</li>\r\n<li>JDBC with MySQL</li>\r\n<li>Spring MVC and Hibernate</li>\r\n<li>Spring Boot with JPA</li>\r\n<li>REST API design with Swagger</li>\r\n<li>SCM with GitHub</li>\r\n<li>CICD with Jenkins</li>\r\n</ul>', '3 Months', '2 Hours Lecture', 'Offline and Online', 'Rs. 50000.00', 'Flat Rs. 1000.00', 1, '1712157800.jpg', 1, '2024-04-03 09:53:21', '2024-04-05 02:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `course_modules`
--

CREATE TABLE `course_modules` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_modules`
--

INSERT INTO `course_modules` (`id`, `course_id`, `name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Module Wise Syllabus and Schedule', '<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Schedule for the <strong>BootCamp </strong>is 3 months divided in 16 weeks (5 days a week and 6 hours daily divided in pre and post lunch sessions each of 2 hours)</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 1 to week 3:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Design Web pages using HTML5, CSS and JS</span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Introduction to HTML </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Basic HTML tags</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Formatting Tags</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Modern HTML5 tags</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Class and ID attributes </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">CSS (Inline, embedded and External)</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with images and media files</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Media queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">HTML and CSS framework Bootstrap</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Creating responsive static website <strong>(First Project)</strong></span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Week 2</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Introduction to JavaScript</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Built-in functions in JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">DOM manipulation and JS objects</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Modern JavaScript using ECMAScript </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">JQuery and AJAX</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Fetch API</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with JSON and Arrays</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 4 and week 5:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Introduction to My-SQL DBMS</span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Data Definition Language query</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Creating database and table </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Modifying tables and other database objects</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Data manipulation language queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Insert, delete and update queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with index and triggers</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Referential integrity and normalization</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Data query language</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Select queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Join, Sub-Queries</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Functions and procedures in T-SQL</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Creating real time project database architecture<strong>(Second Project)</strong></span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 6 to week 7:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Web development concept using core PHP.</span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">PHP script</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with different data types</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Built-in functions</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Control statements</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Programs to build logic</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Introduction to OOP</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Working with PHP and MY-SQL database</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">CRUD application using OOP<strong>(Third Project)</strong></span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Exception handling</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 8 to Week 13:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Complete project development using PHP(Laravel)</span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Creating projects, Dependency management using composer</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">PHP artisan command for Laravel web artisan</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Laravel Project Structure</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Routes and redirects</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Template Engine using Laravel Blade</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Template Inheritance</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Models and Controllers</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Working with My-SQL database and database migrations</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">CRUD Application</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Laravel Eloquent ORM</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">Laravel Authentication setup</span></li>\r\n<li style=\"text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 8pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; font-family: Arial, sans-serif; color: #333333;\">REST API and JWT http authentication</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt 18pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Create 2 different projects</span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">A complete Dynamic web application with MY-SQL as back-end <strong>(Forth Project)</strong></span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">A Back-end application to provide API&rsquo;s to work with single page application <strong>(Fifth Project)</strong></span></li>\r\n</ol>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Week 14 to week 16:</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">Internship</span></strong></span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Project dissertation and project presentation</span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Prepare documentation</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Project Architecture</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Database Architecture</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Modules </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Test Plans</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Coding</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Testing and debugging</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Hosting on server</span></li>\r\n</ol>', 1, '2024-04-03 10:33:36', '2024-04-03 11:27:17'),
(2, 2, NULL, '<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%; color: #222222; background: white;\">&nbsp; &nbsp; &nbsp;Highlights</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to create database structure of a project with proper RDBMS structure and normalization in My-SQL DBMS. This will give you an experience to work on more complicated database structure.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to work on back-end programming languages Java with <strong>Java Spring boot framework</strong>.&nbsp; Learn to manage your code with Unit testing and code-reusability.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Working with static files and images and manage them through database and programming languages.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to work with JavaScript JQuery-AJAX to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Source code management using GIT and GIT-Hub</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">&nbsp; &nbsp; &nbsp; Project you learn to develop:</span></strong></span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Website Design (html 5, JS, CSS)</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Responsive Website using Bootstrap Framework</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">A CRUD application with session handling</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Complete working project from following categories:</span></li>\r\n</ol>\r\n<p style=\"margin: 0cm 0cm 8pt 36pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif; color: black;\">E-COMMERCE, CRM, ERP, MIS, GIS, BANKING AND FINANCE, TOURISM, TRANSPORT AND LOGISTICS, HOTEL AND HOSPITALITY, HEALTH CARE, ACADEMICS AND E-LEARNING, MANAGEMENT PROJECTS, RESEARCH BASED PROJECT AND ETC</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">&nbsp; &nbsp; &nbsp; Curriculum</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">Front-end:</span></strong><span style=\"line-height: 106%;\"> HTML5, CSS, JS, ES6, JQUERY, AJAX and Bootstrap framework, React-Next/Angular(CLI) framework.</span></span></li>\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">Back-end:</span></strong><span style=\"line-height: 106%;\">JAVA SPRING BOOT</span></span></li>\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 8pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt;\"><span style=\"font-family: \'times new roman\', times, serif;\"><strong><span style=\"line-height: 106%;\">Database:</span></strong><span style=\"line-height: 106%;\"> My-SQL Queries and Advance SQL Query</span></span></span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt 18pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\">&nbsp;</p>\r\n<p style=\"margin: 0cm 0cm 8pt 18pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">WHAT IN JAVA SPRING BOOT?</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Core Java</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Java OOPS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Exception handling</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Multi-threading</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">JDBC</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">JUNIT</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Servlets</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring core</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring MVC</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring AOP</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring REST</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring Security</span></li>\r\n</ul>\r\n<p><span style=\"font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Spring Boot Application</span><strong><span style=\"font-size: 14pt; line-height: 107%; color: #222222;\"><br><br></span></strong></span></p>', 1, '2024-04-03 23:53:24', '2024-04-03 23:53:24');

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
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_schedule`
--

CREATE TABLE `course_schedule` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_tech_stack`
--

CREATE TABLE `course_tech_stack` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `tech_stack_id` bigint(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_tech_stack`
--

INSERT INTO `course_tech_stack` (`id`, `course_id`, `tech_stack_id`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 2, 2, 1, '2024-04-04 00:59:04', '2024-04-04 00:59:04'),
(4, 2, 1, 1, '2024-04-04 00:59:14', '2024-04-04 00:59:14'),
(5, 1, 1, 1, '2024-04-04 01:19:36', '2024-04-04 01:19:36'),
(7, 1, 4, 1, '2024-04-04 01:31:46', '2024-04-04 01:31:46'),
(8, 1, 2, 1, '2024-04-04 01:31:58', '2024-04-04 01:31:58'),
(9, 1, 3, 1, '2024-04-04 01:32:02', '2024-04-04 01:32:02'),
(10, 2, 4, 1, '2024-04-04 01:32:14', '2024-04-04 01:32:14'),
(11, 2, 3, 1, '2024-04-04 01:32:18', '2024-04-04 01:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE `course_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Specializations', 1, '2024-04-03 14:25:05', '2024-04-03 14:25:05'),
(2, 'Certifications', 1, '2024-04-03 14:25:05', '2024-04-03 14:25:05'),
(3, 'Short Courses', 1, '2024-04-03 14:25:05', '2024-04-03 14:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
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
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
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
  `migration` varchar(255) NOT NULL,
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HG3Vh0g6YrGtsutn8NcwYdGFGygZb60qaDMuVtFm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNU9Vb1Ywc3ZnM29SWG51ejU4NG9tMVlmdjkzYU5yOEZtVGNtWE4ybiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO319', 1712324703);

-- --------------------------------------------------------

--
-- Table structure for table `tech_stacks`
--

CREATE TABLE `tech_stacks` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tech_stack_logo` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech_stacks`
--

INSERT INTO `tech_stacks` (`id`, `name`, `tech_stack_logo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '1712206978.png', 1, '2024-04-03 23:32:58', '2024-04-03 23:32:58'),
(2, 'CSS', '1712207171.jpg', 1, '2024-04-03 23:36:11', '2024-04-03 23:36:11'),
(3, 'MY-SQL', '1712207847.jpg', 1, '2024-04-03 23:37:09', '2024-04-03 23:47:57'),
(4, 'JAVASCRIPT', '1712207261.jpg', 1, '2024-04-03 23:37:41', '2024-04-03 23:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sanjay Jaiswar', 'admin@codecruise.com', '0000-00-00 00:00:00', '$2y$12$eZgQ8SiOKZgDIB8xk0va9OQezQAj7bqEurCB/bqcP5jhJ/pWAT6Ku', NULL, NULL, NULL);

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
  `course_ids` text DEFAULT NULL,
  `other_course` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_query`
--

INSERT INTO `user_query` (`id`, `name`, `email`, `contact`, `company_college_name`, `course_ids`, `other_course`, `message`, `created_at`, `updated_at`) VALUES
(4, 'Sam bahadur', 'sam@gmail.com', '2345678909', 'ABC College', '[\"1\",\"2\",\"other\"]', 'MERN', 'okkk', '2024-04-04 08:36:33', '2024-04-04 08:36:33'),
(5, 'sanjay', 'sanjay@gmail.com', '2345678909', 'ABC LTD', '[\"1\",\"2\",\"other\"]', 'MEAN', 'MEAN', '2024-04-04 08:37:30', '2024-04-04 08:37:30');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_modules`
--
ALTER TABLE `course_modules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
