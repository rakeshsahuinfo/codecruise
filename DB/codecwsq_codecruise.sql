-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2024 at 04:13 PM
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
  `slug` varchar(300) NOT NULL,
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

INSERT INTO `courses` (`id`, `name`, `slug`, `course_type_id`, `description`, `course_duration`, `class_schedule`, `delivery_mode`, `course_fee`, `current_discount`, `apply_discount`, `course_banner`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Full Stack PHP', 'full-stack-php', 1, '<p>In<strong> Laravel PHP</strong>, developers craft the backbone of web applications, managing server-side logic, integrating third-party services, and collaborating with front-end counterparts. Leveraging Laravel\'s features like Eloquent ORM and Blade templating, they ensure seamless data handling and UI integration. With a focus on efficiency and scalability, PHP developers in Laravel play a pivotal role in creating robust, modern web solutions.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹25,000.00', 'Flat  ₹1,000.00', 0, '1712639470.png', 1, '2024-04-03 09:08:37', '2024-04-11 23:18:23'),
(2, 'Full Stack JAVA', 'full-stack-java', 1, '<p>It is a part of Java programming language. It is an advanced technology or advance version of Java specially designed to develop web-based, network-centric or enterprise applications. It includes ../the concepts like Servlet, JSP, JDBC, RMI, Socket programming, etc. It is a specialization in specific domain</p>\r\n<ul>\r\n<li>OOPs programming concepts</li>\r\n<li>Java Programming Basics</li>\r\n<li>File Handling and Streaming</li>\r\n<li>JDBC with MySQL</li>\r\n<li>Spring MVC and Hibernate</li>\r\n<li>Spring Boot with JPA</li>\r\n<li>REST API design with Swagger</li>\r\n<li>SCM with GitHub</li>\r\n<li>CICD with Jenkins</li>\r\n</ul>', '3 Months', '2 Hours Lecture', 'Offline and Online', '₹40.000.00', 'Flat  ₹1,000.00', 0, '1712637583.png', 1, '2024-04-03 09:53:21', '2024-04-11 23:03:48'),
(3, 'MERN Stack', 'mern-stack', 1, '<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn s/w development and become job ready in 3 months with our </span><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">MERN</span></strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\"> stack development program.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">In this course you will be developing 3 different projects with increasing level of complexity which will help you in digesting some major core concepts needed to develop a full fledge working s/w application. </span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Objective: Using front-end and back-end technologies along with frameworks for developing web based project.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Eligibility</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #333333; background: white;\">Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS), BCA, MSc in Computer Science, MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</span></p>', '3 Months', '2 Hours Lecture', 'Offline and Online', '₹35,000.00', NULL, 0, '1712648356.png', 1, '2024-04-09 02:09:16', '2024-04-11 23:04:19'),
(4, 'MEAN Stack', 'mean-stack', 1, '<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn s/w development and become job ready in 3 months with our </span><strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">MEAN</span></strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\"> stack development program.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">In this course you will be developing 3 different projects with increasing level of complexity which will help you in digesting some major core concepts needed to develop a full fledge working s/w application. </span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif;\">Objective: Using front-end and back-end technologies along with frameworks for developing web based project.</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Eligibility</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12pt; line-height: 106%; font-family: Arial, sans-serif; color: #333333; background: white;\">Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS), BCA, MSc in Computer Science, MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</span></p>', '3 Months', '2 Hours Lecture', 'Offline and Online', '₹35,000.00', NULL, 0, '1712648714.jpg', 1, '2024-04-09 02:15:14', '2024-04-11 23:04:08'),
(5, 'AWS Cloud Practitioner', 'aws-cloud-practitioner', 2, '<p>As cloud computing continues to revolutionize the IT industry, professionals skilled in managing cloud platforms are in high demand.&nbsp;</p>\r\n<p>Among the various cloud service providers, <strong>AWS</strong> stands out as a leader for more then one decade, offering a wide range of services and solutions to businesses worldwide.</p>\r\n<p>The <strong>AWS Cloud Practitioner certification</strong> serves as an entry point for individuals looking to kick start their career in cloud computing by providing foundational knowledge of AWS cloud services, architecture, security, and pricing.</p>', '2 Months', '2 Hours', 'Online and Online', '₹25,000.00', NULL, 0, '1712823102.png', 1, '2024-04-11 02:41:42', '2024-04-11 22:42:24'),
(6, 'Data Science', 'data-science', 1, NULL, '4 Months + 2 Months Internship', '2 - 4 Hours', 'Hybrid', '75000', NULL, 0, '1712898300.jpg', 1, '2024-04-11 23:32:51', '2024-04-12 00:02:59');

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
(1, 1, 'Module Wise Syllabus and Schedule', '<p style=\"line-height: 1;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Schedule for the&nbsp; 3 months plus Internship divided in 16 weeks</span></strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 2117.33px;\" border=\"1\"><colgroup><col style=\"width: 49.9489%;\"><col style=\"width: 49.9489%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 69.1719px;\">\r\n<td><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Design Web pages using HTML5, CSS and JS</span></strong></td>\r\n<td>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Week 1 to week 3:</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 448.812px;\">\r\n<td>\r\n<ul>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Introduction to HTML</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Basic HTML tags</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Formatting Tags</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Modern HTML5 tags</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Class and ID attributes</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">CSS (Inline, embedded and External)</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Working with images and media files</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Media queries</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">HTML and CSS framework Bootstrap</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Creating responsive static website (First Project)</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Week 2</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Introduction to JavaScript</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Built-in functions in JS</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">DOM manipulation and JS objects</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Modern JavaScript using ECMAScript</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">JQuery and AJAX</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Fetch API</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Working with JSON and Arrays</span></li>\r\n</ul>\r\n</td>\r\n<td>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>&nbsp;</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 69.1719px;\">\r\n<td><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Introduction to My-SQL DBMS</span></strong></td>\r\n<td>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Week 4 and week 5:</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 336.859px;\">\r\n<td>\r\n<ul>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Data Definition Language query</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Creating database and table</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Modifying tables and other database objects</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Data manipulation language queries</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Insert, delete and update queries</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Working with index and triggers</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Referential integrity and normalization</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Data query language</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Select queries</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Join, Sub-Queries</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Functions and procedures in T-SQL</span></li>\r\n<li style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Creating real time project database architecture(Second Project)</span></li>\r\n</ul>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 62.7812px;\">\r\n<td style=\"line-height: 1;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Web development concept using core PHP</span></strong></td>\r\n<td style=\"line-height: 1;\">\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Week 6 to week 7:</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 256.297px;\">\r\n<td>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">PHP script</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Working with different data types</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Built-in functions</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Control statements</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Programs to build logic</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Introduction to OOP</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Working with PHP and MY-SQL database</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">CRUD application using OOP(Third Project)<br></span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Exception handling</span></li>\r\n</ul>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 37.1719px;\">\r\n<td><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Complete project development using PHP(Laravel)</span></strong></td>\r\n<td><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Week 8 to Week 13:</span></strong></td>\r\n</tr>\r\n<tr style=\"height: 326.469px;\">\r\n<td>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Creating projects, Dependency management using composer</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">PHP artisan command for&nbsp;Laravel web artisan</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Laravel Project Structure</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Routes and redirects</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Template Engine using&nbsp;Laravel Blade</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Template Inheritance</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Models and Controllers</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Working with My-SQL database and database migrations<br>CRUD Application</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Laravel Eloquent ORM</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Laravel Authentication setup</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">REST API and&nbsp;JWT http authentication</span></li>\r\n</ul>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 69.1719px;\">\r\n<td><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Create 2 different projects</span></strong></td>\r\n<td>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Week 14 to week 16:</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 139.344px;\">\r\n<td>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">A complete Dynamic web application with MY-SQL as back-end (Forth Project)</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">A Back-end application to provide&nbsp;API&rsquo;s to work with single page application (Fifth Project)</span></li>\r\n</ul>\r\n</td>\r\n<td>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 69.1719px;\">\r\n<td><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Internship Project dissertation and project presentation</span></strong></td>\r\n<td>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 232.906px;\">\r\n<td>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Prepare documentation</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Project Architecture</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Database Architecture</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Modules</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Test Plans</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Coding</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Testing and debugging</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Hosting on server</span></li>\r\n</ul>\r\n</td>\r\n<td>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"line-height: 1;\">&nbsp;</p>', 1, '2024-04-03 10:33:36', '2024-04-11 23:16:33'),
(2, 2, 'Topics and Modules for Full stack development in JAVA', '<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%; color: #222222; background: white;\">&nbsp; &nbsp; &nbsp;Highlights</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to create database structure of a project with proper RDBMS structure and normalization in My-SQL DBMS. This will give you an experience to work on more complicated database structure.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to work on back-end programming languages Java with <strong>Java Spring boot framework</strong>.&nbsp; Learn to manage your code with Unit testing and code-reusability.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Working with static files and images and manage them through database and programming languages.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Learn to work with JavaScript JQuery-AJAX to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Source code management using GIT and GIT-Hub</span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">&nbsp; &nbsp; &nbsp; Project you learn to develop:</span></strong></span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Website Design (html 5, JS, CSS)</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Responsive Website using Bootstrap Framework</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">A CRUD application with session handling</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Complete working project from following categories:</span></li>\r\n</ol>\r\n<p style=\"margin: 0cm 0cm 8pt 36pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif; color: black;\">E-COMMERCE, CRM, ERP, MIS, GIS, BANKING AND FINANCE, TOURISM, TRANSPORT AND LOGISTICS, HOTEL AND HOSPITALITY, HEALTH CARE, ACADEMICS AND E-LEARNING, MANAGEMENT PROJECTS, RESEARCH BASED PROJECT AND ETC</span></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 107%;\">&nbsp; &nbsp; &nbsp; Curriculum</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">Front-end:</span></strong><span style=\"line-height: 106%;\"> HTML5, CSS, JS, ES6, JQUERY, AJAX and Bootstrap framework, React-Next/Angular(CLI) framework.</span></span></li>\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">Back-end:</span></strong><span style=\"line-height: 106%;\">JAVA SPRING BOOT</span></span></li>\r\n<li style=\"line-height: 106%; margin: 0cm 0cm 8pt 0px; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt;\"><span style=\"font-family: \'times new roman\', times, serif;\"><strong><span style=\"line-height: 106%;\">Database:</span></strong><span style=\"line-height: 106%;\"> My-SQL Queries and Advance SQL Query</span></span></span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt 18pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\">&nbsp;</p>\r\n<p style=\"margin: 0cm 0cm 8pt 18pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-family: \'times new roman\', times, serif; font-size: 14pt;\"><strong><span style=\"line-height: 106%;\">WHAT IN JAVA SPRING BOOT?</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Core Java</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Java OOPS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Exception handling</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Multi-threading</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">JDBC</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">JUNIT</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Servlets</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring core</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring MVC</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring AOP</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring REST</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \'times new roman\', times, serif;\">Spring Security</span></li>\r\n</ul>\r\n<p><span style=\"font-family: \'times new roman\', times, serif;\"><span style=\"font-size: 14pt; line-height: 107%;\">Spring Boot Application</span><strong><span style=\"font-size: 14pt; line-height: 107%; color: #222222;\"><br><br></span></strong></span></p>', 1, '2024-04-03 23:53:24', '2024-04-07 06:20:03'),
(3, 3, 'Module Wise Syllabus and Schedule', '<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Highlights</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to create database structure of a project in No-SQL DBMS like Mongo. This will give you an experience to work on more complicated database structure.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to work on back-end programming languages Node.js with Express Node.js framework.&nbsp; Learn to manage your code with Unit testing and code-reusability.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Working with static files and images and manage them through database and programming languages.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to create single page application using most widely used JavaScript technology React Next.js framework</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Learn to work with Next.js to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Source code management using GIT and GIT-Hub</span></li>\r\n</ul>\r\n<p style=\"text-align: center; margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">&nbsp;</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 106%; font-family: Arial, sans-serif;\">Project you learn to develop</span></strong></span></p>\r\n<ol style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Website Design (html 5, JS, CSS)</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Single Page application using React Next.js framework</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">A CRUD application with session handling</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">Complete working project from following categories:</span></li>\r\n</ol>\r\n<p style=\"margin: 0cm 0cm 8pt 36pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: black;\">E-COMMERCE, CRM, ERP, MIS, GIS, BANKING AND FINANCE, TOURISM, TRANSPORT AND LOGISTICS, HOTEL AND HOSPITALITY, HEALTH CARE, ACADEMICS AND E-LEARNING, MANAGEMENT PROJECTS, RESEARCH BASED PROJECT AND ETC</span></p>\r\n<p style=\"text-align: center; margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif;\">&nbsp;</span></strong></p>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif; text-align: left;\"><span style=\"font-size: 14pt;\"><strong><span style=\"line-height: 106%; font-family: Arial, sans-serif;\">Curriculum</span></strong></span></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"line-height: 105%; margin: 0cm 0cm 0.0001pt 0px; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 105%; font-family: Arial, sans-serif;\">Front-end: React Next.js framework.</span></li>\r\n<li style=\"line-height: 105%; margin: 0cm 0cm 0.0001pt 0px; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 105%; font-family: Arial, sans-serif;\">Back-end: Node.js with Express</span></li>\r\n<li style=\"line-height: 105%; margin: 0cm 0cm 8pt 0px; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 105%; font-family: Arial, sans-serif;\">Database: Mongo DB<br></span></li>\r\n</ul>\r\n<p style=\"line-height: 105%; margin: 0cm 0cm 8pt; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 105%; font-family: Arial, sans-serif;\">WHAT in React Next.js?</span></strong></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js introduction</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Setup</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js project structure</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Pages</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Static file</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js CSS and global CSS support</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Pre-Rendering</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Routing</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Dynamic Routing</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js API Routing</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js API Middleware</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Typescript</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Environment Variables</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">Next.js Project Deployment<br><br></span></li>\r\n</ul>\r\n<p style=\"margin: 0cm 0cm 8pt; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><strong><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222;\">What in Node.js?</span></strong></p>\r\n<ul style=\"margin-bottom: 0cm; margin-top: 0px;\">\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Introduction to Node JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Advantages of Node JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node.js Process Model</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Setup Development Environment</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Install Node.js </span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node JS Modules</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Node Package Manager</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Creating Web Server</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">File System</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Debugging Node JS Application</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Events</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Express JS</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Serving Static Resources</span></li>\r\n<li style=\"margin: 0cm 0cm 0.0001pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Database Connectivity</span></li>\r\n<li style=\"margin: 0cm 0cm 8pt 0px; line-height: 106%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size: 12.0pt; line-height: 106%; font-family: Arial, sans-serif; color: #222222; background: white;\">Project Development using Node JS</span></li>\r\n</ul>', 1, '2024-04-09 02:13:43', '2024-04-09 02:36:02'),
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
(46, 4, 7, 1, '2024-04-09 02:41:28', '2024-04-09 02:41:28'),
(47, 6, 25, 1, '2024-04-12 00:02:24', '2024-04-12 00:02:24'),
(48, 6, 23, 1, '2024-04-12 00:02:30', '2024-04-12 00:02:30'),
(50, 6, 21, 1, '2024-04-12 00:02:44', '2024-04-12 00:02:44'),
(52, 6, 27, 1, '2024-04-12 00:05:41', '2024-04-12 00:05:41'),
(53, 6, 26, 1, '2024-04-12 00:05:48', '2024-04-12 00:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE `course_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(300) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`id`, `name`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Specializations', 'specializations', 1, '2024-04-03 14:25:05', '2024-04-03 14:25:05'),
(2, 'Certifications', 'certifications', 1, '2024-04-03 14:25:05', '2024-04-03 14:25:05'),
(3, 'Specific  Courses', 'specific-courses', 1, '2024-04-03 14:25:05', '2024-04-11 02:38:07');

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
-- Table structure for table `seo_detail`
--

CREATE TABLE `seo_detail` (
  `id` int(11) NOT NULL,
  `subject_type` enum('course_type','course','home') NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `seo_title` text,
  `seo_description` text,
  `seo_keyword` text,
  `is_index` int(1) DEFAULT NULL,
  `is_follow` int(1) DEFAULT NULL,
  `canonical` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('09ca6NlqCOyzjGBENAV69Lyrr1y0W2p6RC6mOh4k', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2w4V2RlVFVUT095RmxiaEo1SUtLcXNVWThSWm5razZNcHlMNklISSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712918280),
('0qhUwSrN1xbb9BwoSzTW5a4Ms6tZuoVqfkAXOIFO', 1, '49.36.34.145', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid1lKTUJxZG1uWjNUM3NpbkhMYmk1aTVPbG1YTTJpVW5YNXJaWTkzSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6NDc6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9hZG1pbi9hZGQtY291cnNlLW1vZHVsZS81Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1712917317),
('0YZHKdcM95OCHsGAtlCAQpFBvi1HaCAl66nDcCCm', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieE5adDJLR0JZRXZXZGNEZ1ZwaDhmR1RTSWY2WVlBQnhJbmdxWHFUYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712916815),
('1KdnWicVtBbYrDE0NgxhC1Ogfo1eSLopBBv965jH', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDVYTTBKNnk0UzhFU0poZzdXOG9PWWlIUGltcnZ5WUdyeFBqeG1EdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712914302),
('1Zoh41zmU1LqOBUcU3zHjvWDkK7S5fRtRVErnO8l', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzZNanVDeG5TZmNJeDNaY2o0SkVTMHZ0Njlnd1FNRlVLUzl5NjNheiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UvZGF0YS1zY2llbmNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712909471),
('2prYTBpBzNqb7nfa2DWbSFdk7aIlIjhRUTua4nOx', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTBKWlJTQzZaWVpSRWV3Y0dZVEthSEtPQTZ0MXVFaG85V0NuaXZhUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJa2xIYWpBd1kybFdRazl5TUc5UFVtTTNZbmMyT1hjOVBTSXNJblpoYkhWbElqb2lNM04wWkRoQlRuQkRaV3hWZG1oTEt6VkVRMFpIWnowOUlpd2liV0ZqSWpvaU9HWXhPV1ppTkdOa1l6aG1Zek5qWlRKbU1ESTBNMlk0TVdGa1pUZG1ZMk5rWXpRM01XTmpZMk0zTldZMk56WXlOek0zT1dJNU1qSXlPRGN5TmpOa1pTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712914770),
('31NyhZGWPLsrBJaMMgVFj12an27F1WScAEzxbBTf', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib01PUFp6NHJITTNQRzJ6NDdWTExsd290bXRWVFFLU1d3czJ1UEdZVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909469),
('3sEChLVOMFo05DoC7oFFqz9RLLF3dSCuO2MWQo0H', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGZzVTNHTTM5OFJ4c0hSSnJuemR6TjRsU2tPM3VzRmtFQ0dydVliaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712918097),
('4steEPPONxlCRcHrvABAHShk5hfESEoGV7bYfQgf', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnlvREhxNmVpUk1oYmRWaVlnVlkwcFBwZTVjUkhwd1NldDVlOHcycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712914647),
('4XjLq78vsk3SUZzX6S4yI5X3VVl4cCt9gSSKHwki', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2ZUUWN3R212RnRwTzFod2dnSUVkS2ZVRHZNenhCS1I1UTdVanlwYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbGR2TWpRMmVrSXZhRTl5U2tsbGJVY3ZOWE5HTUZFOVBTSXNJblpoYkhWbElqb2lRek5vWTFweFVYWk9OMjgyZHpNek4xTXZVVXhYZHowOUlpd2liV0ZqSWpvaU5qRXdOak5rTVRrMlkySXpZamszT1dJeVpqVTBZVEppTXpSa00yTm1ObVF5WW1JME5qY3hOelZsT1dFd1pqbG1OR0k1TmpFMk4ySmpOR05rTnpWalpTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712917526),
('5HT1pDeUSzFai6SJeH7RU0EW8aRMsOo4mR5htfvf', NULL, '103.38.68.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGtOVU5ualNPYWF4Zzl2R21ydkNxVU5wcUFvQllVbVpsVTFYd0J4VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712915774),
('5RnYaixooLRXvG2vtFgHpMopYYtSudzIqvvAj3Ta', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHk4ZXRVU1JNSWdmTGRIdTFKYkVVUEVic3dXSmxBTjR6ekxuWk5xMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbTV2UnpsR1dUa3ZSVmxrYm01dlQwZFdjRUpqY0ZFOVBTSXNJblpoYkhWbElqb2lWV1pZUzNablZHczJXV05CVjJ4MVMxaE1TRFpTVVQwOUlpd2liV0ZqSWpvaU5EUmlaalkxWm1ZNE5EZGhZbU00WVdVNE16Z3hORGhtWmpKa09XSXpPRFppTmprM1pHTmhNalE1T1RSaE9EUm1NVFZoWXpRNVkyVmpNRFZsT0RGak9DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712914387),
('5z4fqnefInvf0jM5U1BBEiqQGrnRyc2qByG99jhW', NULL, '66.249.77.68', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1JERml1Y2l0ekRBcUFHSVBSNzdpbVI2VGFaekRyS3NyZUhJUG9GOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712914589),
('7IXoNNNsbAwB4R8XMztlpivUCQ6FEsqUHsiDeVbL', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVpVbVhlYWNWVEpMR1Awc2xaVUhJdmtiS1JOVzRTQk5PRk9qUHZnZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909467),
('7zN429lWbGqSDUThWltpQJAAGw1vfZZSRs37cgIC', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0F4UDgwMmdGbG1teEdHNHo5U1I4a2RYMGVIeWJZU3BlZUh6Q1B0MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJa0U1T1djeWNsTk9OWE40WldjclZXZHRWREJWUzJjOVBTSXNJblpoYkhWbElqb2laVUpMTjNrMVpteHlUMUF6ZUhveE9IbDNOMmRFUVQwOUlpd2liV0ZqSWpvaU9UTXdPVEV4TW1JNVpEUXpOV1l6TnpVeU1qWXpZVGxqWlRFMU1XRTFOVEl3TURNNFpESmpNalprWm1WaFl6QTNOMlk1TkRabE5UQmlaV1ZtWW1Vd01DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712914547),
('9ClFNH5MO08CsuMlG8hWgiXr1GkmhAZmu53GeOF3', 1, '49.36.115.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU3o4MWxuaVZjaVhiZkZBQnRXSGx6bnVSYVRXRndOU0oxWE9XMmkzRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wdWJsaWMvaW5kZXgucGhwL2NvdXJzZS9mdWxsLXN0YWNrLXBocCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1712918496),
('Am3a976sR6fXBBwCBBlrQp6YAMF0O9cZerTRCOiu', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVk0TDdvZlN6V0RGVkxIMzJIRUI2YnpuZDZRMnpHOVVFOXc5bTdGUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712910397),
('AszSkCFSw96X7So5DrDxCk8nCosdeLrbmpaWjPzN', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkJxeHBOMzZtZ2xYNUhqRVJUZ3JYdXdLMG1MRXBnaEFMdXdlemttZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbGRQTXl0bWJVZEhaemhzWVdOWlQyVXpkMGRvVEhjOVBTSXNJblpoYkhWbElqb2lhRTlpU21Jd1FtbHhZM1F4V25GQldIVlFNbWxxUVQwOUlpd2liV0ZqSWpvaU1EUXpNakl4TldGaFpEWTJZV0ZoTkRWaE9UUTRabUl5TW1ObVpEazFPR00xWXpGa1pHVTBNV1EwTURJME1tSmxOREU0T1RneE1URm1PRGRsWVRreE5DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712918216),
('atxysUqMrWcSfBUiBtrHpZYtyMXs6Q14UVRdTNn4', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGhlVVNsTVJtZUg4QTVObnVpS2VvU0pQR3NSMGtmZWtQY3h6bTVzTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712917685),
('AZfNB89nulo503FQUlc5l4WFVOR5HI1QmfCYQXpN', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDRKanNrMzZSTmFVanRGSU16TFROa282bHJ5d0w2ajIxem44VWdhRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJblEwZWpSeFNtcHZOVlpTWVhSc2NsbHZRMUZGWjNjOVBTSXNJblpoYkhWbElqb2lhMDUwWTA5SlExRldXbGgzWldWS2N6VlNlVmhrZHowOUlpd2liV0ZqSWpvaVpEZzJPVGd4TW1Kak16SmxNamc0WVdWaE1UVTJOems1WTJSaE9ETTFPRFU0WXpJM1pERmlNRFE1TnprMk4yVTBaakV5TWpreE9ERmxaalF3WXpRMFpTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712918476),
('B7r3H4vA7SmcAhndZ8PpkA28VNj3Bng31jPFIWc8', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjZoSlhiQmx2VER4VWFuRDd4ZWRRTVF3R3ZqdjVrOHc1NTRSb3JkWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbmRMYkV4SFVrRkJhMFZsV0VkU1duaDZWMlJEWVdjOVBTSXNJblpoYkhWbElqb2ljRzFoUlhGRFUwWnNOWE42YW1sTE4yUnBkR3Q0UVQwOUlpd2liV0ZqSWpvaVpERTRPVFZpWkdKak1tUTFNR013WXpkbU56QTNOR0V5T0daa01UWXlZamMxTldWak1EZzNNVFUyWVRSa01ETTFPREJsWWpNNU5UUmpaalptTUdFMk5DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712917284),
('bANCW5GbUrw4bkB6JbhkJxCLwCVgfyKrTD9D4cdt', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXlOcjE3OWF5SEtqb0VLaFpCM3dqTDZZNDRwajBVMU1KQXpUVFF0WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbTUwYVZGT2FuSlpRbEY0YW1sblpYWjFOR3BKUjNjOVBTSXNJblpoYkhWbElqb2liVFZqTVRneWJYazJPVXh0T1VsWWFYTmpVRXhQWnowOUlpd2liV0ZqSWpvaVpqSm1NV1ppTmpka1ltTTVNVGt3Wm1GbVlqazFaRFppWXpGa01EbGxaRE0zWlRBM1l6TmhaRFptTVdJMFpEWmpObVppWVdNNE5qUTBOell3WW1NNE1DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712917302),
('ChHlEnhGuHBfbxLcMwJIqGdZBYCAt0m75tBI28Q9', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVRpV3JzZGV6eUpIVEw5MTlscDZRUkJiSEhGMVhzbFBvR0NPSncycCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712917267),
('DeUDJmXC8ufcnz3eN2HoWv3pPlH6T3rBvVGJHNhE', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnNBTXl2NGJnc1FHTFUxVDk2WnlZVUwyQWFLV2hZOHlzOTFDNVdaVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712916179),
('DkYDwTc8bfxJJtNw7NR3P3skVEQk88NbJ9tS3McY', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkpielVpNXVlT2ZWcUFFM1V4Q3hEbEFHV2V4NHpaQWZFUWJZVlRvWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbkpXYW5velEybE1hbk5DWVhSRFZVdFdSM05PWWxFOVBTSXNJblpoYkhWbElqb2lVWEEwT1ZkUGNEVndLMU5xY1ZKUloyeHZSVVl4UVQwOUlpd2liV0ZqSWpvaU1EaGxOR1kyT0RGbE1qSmtPVGN4TW1FNE1tVmpabVk1T0dGak0yVmpZemswWkdRMU9EQm1aVEU1TVRCbVpqYzBOREppWmpFMU1tWmxNMlJsTkRKaFppSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712918343),
('DWzzjYgAQKoJ59cy1rhoI35qX291eCK3iGHUftR3', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUIwYkhya2ptMkwzOU1DZ09qWExmUWx4ZmxXV2NjT1I0cUl1MVRjUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712913708),
('EB59bG21DoJVlyLbcLRmLfAgmCm5wWzNqxqFLSVp', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUpQODNuMGZvd0J3Rk84azI5a1FENDdkYlczdGtISHRHcWhWcjZ4VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQzOiJodHRwczovL2NvZGVjcnVpc2UuaW4vZG93bmxvYWQtY291cnNlLWluZm8vZXlKcGRpSTZJalpDTmxCbFZrSklURUZyYURWWE4xWk5RbmxuTldjOVBTSXNJblpoYkhWbElqb2lOMVpPZFZWVk0zbHFVMEp5TWpsMU0wazVaMGh1VVQwOUlpd2liV0ZqSWpvaU9UZGxaV1ZsTkdWaFpUZGhORFF4TXpCalpEaGpZbUk1TTJVeU16WmtaVEptTURobFpUZG1NelV4WXpnMVlUSTVZVGs0TlRaaE4yUXpZakptTVRZeE9DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712911805),
('ese0RRcPL8YRpS5Qlyhz1ujPkhZreBfu9S0KULio', NULL, '52.38.128.189', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODVBbHBQQzlNeU1SZVlMaW9aZ1FwZ0FwOTlMOVZrVGNIbm9DVjJqRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712915486),
('FDyiB93cJzEzrchwH6GgZvnL3iNONXyraE2dU6vt', NULL, '110.224.118.135', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS1p4SmxQRUc3WVc2VlhmYXM2YXFpa2RuR3BNa1RUWmswaGd2clNKZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712912156),
('fP4jDZqMaV74bvoR5S6J8d978elywAFxgB0pOEvw', NULL, '66.249.68.4', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYThZYXpiRkFpT3N2Y2tlZFJwcnRSeTFnemlBdzJLV3J3b1FManhyTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmNvZGVjcnVpc2UuaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712909888),
('FpXw0IDCUiiFdr0pPQs0qjilA4aZkR46JP10BEU1', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUJrUmdQV2RucWZpT3RVMFBzemJxdk11dGVjaE1GVHZGaTdkVVRPQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbFUyTVU5Sk9WQldUMWhTSzI1TVNHdFNlVFJFVEhjOVBTSXNJblpoYkhWbElqb2lRbWc0Vms0elREZzVaVUUyWTBaYU5WaHFkRzlRVVQwOUlpd2liV0ZqSWpvaU0yVXdOMkUzWkRreU16ZzVPRFk0WkRRNVpqRTNPRGcwWlRJek5ERmhaR1UxTURjek5EUTNPVFU1TW1NNE5tTTVOV1l4TWpFMVltVTNOamxpWkdNMU5pSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712913897),
('GoaL4gE13TmzdOfGWXIVqzRTcjvfHlOXAxcQb0l6', NULL, '110.224.115.135', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/24.0 Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjhENFZFZEtIa0c0TmpDTEVXb0NPaW4wN3N3TEwzZ05VNUw5ZndNaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712911087),
('gpXFkX92jHxfv8vtlYCYsuiOLiBiyFyCAyycWiBK', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidURTcThsUW1hNXQ3TXhxOFVyWFRPMXhmbUJId3M0cVM1NDNlY2tOWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712915748),
('hB1JHJXETgWd3ciirYxDrMBgMBCdZPM8pLPJXyyR', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUx5eXlFcUw4dGExNDlzdDk1VkVabzE5UkVsTEp2RmR3enhNeHNGTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJa0oyYldWSFUwZFZhMEpTZDNkMGVqaERTSEZuT0VFOVBTSXNJblpoYkhWbElqb2lOSFZrUjJkMmJIUjJUbE15UkVreFIxbzVkMGxSWnowOUlpd2liV0ZqSWpvaU5ETTNaakEzT1dNNU1UWTFNVFExWW1VM1pEVXlOems1WmpjeE1UQmxOak0xTmpNeFlqQTBPV1EwTW1ZNE5HVXlPRFZqTUdZd056SXdZVEZpT1RVeE9DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712915977),
('hf8c3tOFu45mHiZc1cxgz5gJpOIQU0Sseepr8iGe', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEh3akZZWUxVSFp0T2s4QjdyUkZneXdPUTRUVWZZTzJxd1E3ZWpIQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbXhyTldkb1JUaDNUMU0yTUhGWE56ZFVMMDlOZUVFOVBTSXNJblpoYkhWbElqb2lOV2hoYkN0bmRGTlNiRzExVmxWV1ZGVkJhMFpKWnowOUlpd2liV0ZqSWpvaU1URXpaREJoTVRjeVpHTTROREkwTldGbE9UWTFOakl6WmpSaE5qSmtaVEk0WkRJNVlUWXlaRGs1WXpRMU1UWTJPV0pqWldKaU56SXpZMk00TWpCbE9DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712914469),
('Hvb80iL18XTH5MsS3dPi6qzNY0ucUa1Bd0feBA0a', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE5ZbTdoc0tJM0NFQmtvMWozczFpMkI4T0luOWtIaGd2a3hQZUg0diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712916610),
('i2kgBJjmF9i7nRl9I4EJOiUqhE8mHoqry4JgL2KD', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2pwTmViT0toRGFnZUxtTTNIZDJFYVhQSXhMNGVuZXNjSmRPbTVuQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbEJLYzBKdGNWSllWVzlVU1RKUGNtaDFZek5ZVjFFOVBTSXNJblpoYkhWbElqb2lkR2xpUWt0TGFWaDBVR3RZZG5OTVUwdGpVV295UVQwOUlpd2liV0ZqSWpvaVpEYzBOVFl3TUdVM05XTmlabUV6T0RkbE5UUmlOV014T0dFNU9XWXhaalJqWXpVd01XTTJNek15WVRJeE1UUmtNREJtWlRGaE5tTmhZemd3WXpFMllpSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712913392),
('i3Q57NCRQOlQ8yIS6JyfbMwv3cIKhrIWfROLhJKA', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3JhU0tvOHJxREZRVW5vVnVnVngxanpnaTZGaDJUcTdjZjBFa0dhbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712915862),
('IubtQSf4UBTWvptu3surhE9FnkZoVzSv9VHylOgA', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFJUVjAyaVFYb282SU5yTzBXT1haSkx0SFV0ZFZCdVNRNlN5REFtQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909270),
('IwMzdG0MgXcfcKJIsxoP8Dwe9YiM19bwRTOJtlgn', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXlrQ0ZqRzliak80YVJZM2h0ZGFoQVhWQnBBUkJNczg2TlN1bVRLayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712916493),
('jaSbOhp0sex4lf7zIE536xCoUqjbwyqgNVEGp2Kj', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEx0Q3pUSFBpeGhYdXNrYUd6Q0RsWFRJRG5mcXZTWG41MWk5c0d2NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712916302),
('JCxxEejjwU0S6CKnGHjrjEb08g8YMxoSpMqKWDlS', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDU5cTFxUm1BTkhweU5tZlpVdnU1ck9PV1NjYUVkSXg3U1pMR2VOZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJazFEWWpCeVJHbEdWbTVUWmxVMVZXRlNlR3hXYVdjOVBTSXNJblpoYkhWbElqb2lVM1JrTmxSdlZXaFJVMGxKVUd4dFZHdzJhRTlNVVQwOUlpd2liV0ZqSWpvaU56YzVaRE14WkRjMk4yRTVNVFk1WXpsa00ySTBNekZsTXpJMk5UUmhZekpoT0dReU5qTTVPVEkxWVdVMU9XUTBObUkyTURJNE9URTFNamhtT0dZMlpDSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712917517),
('JnZXUzo0cwkgMpv8p6GeHIuaWNN5W9MxdJh69wJ6', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUg0NGVEdG1INExIa1VRTTdSOGMzT1g4M0NoWkdIY0RBUGViWFdmVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712917483),
('K1PN4CX6sYgLizZZ65swcpEYROLqHBDooNuHfEr2', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0hPendBbERVWmNZcDR0ZUNHcXVtYktINWVpYW1XYnc4RGlYMHpsYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UvRGF0YS1jaWVuY2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712909469),
('lQ2urJNqy17chiPLwwoz8vxImgvh1JW1KcMki13E', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDFBblFUdVRncktxNWdmSXJCcVdvbWFBZlZ2TmN0eU1HaVRwaVI1NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712917942),
('LrKP0CGgL1iDymc3hUVaGS65oAD31QZxFq9PUh6A', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid044TDBra3B3dDA0T2VkcVc3UGgyV2xzNW9ucGRiVFp5bHI2cTJmTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJa3BIUkZOWlRrRmhUV1ZaUmtwTWNsQmFhR2RKTDJjOVBTSXNJblpoYkhWbElqb2lTRVpqYmpOSWQwOTNWM3BTTTJGM00zaHhUMHR5ZHowOUlpd2liV0ZqSWpvaU1UQmpZemMyTlRRM016SmlNMlkxWm1VeU5HVm1NVGs0TWpnNU1tRXlOVGMxTlRBNFpqaGxZVFpoTkRBek1ESTVaRGd6TVRkbVpEY3lNVFpoTW1GaE9TSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712916526),
('m727ePull6fzmDVCrs36OtWl9IN6EpYNqiqLcFQl', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzRBc0hqY2RzVG1mUjRSbExCb04wdEtFSGFtamRFT3k0VlNzUUlrMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712914449),
('mgHQxihIRV5OJeKY398clqpHiAHtsGjH1fRTLmOz', NULL, '103.186.54.115', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1RHMmJXWXFZRmlvM1RMU0J1OE5XRnJqOGtkOEpNZTVyTDRlMnJMbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712912120),
('MSyeLWs0C9sc0KeathbIRLWhsQAYYlQjX0sCgogW', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTVSRVZaWFJOTDRBdVhKYXNqVjNScHhmR0Y4ZDB1MW9vOWxPdTE4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJa0U1T1djeWNsTk9OWE40WldjclZXZHRWREJWUzJjOVBTSXNJblpoYkhWbElqb2laVUpMTjNrMVpteHlUMUF6ZUhveE9IbDNOMmRFUVQwOUlpd2liV0ZqSWpvaU9UTXdPVEV4TW1JNVpEUXpOV1l6TnpVeU1qWXpZVGxqWlRFMU1XRTFOVEl3TURNNFpESmpNalprWm1WaFl6QTNOMlk1TkRabE5UQmlaV1ZtWW1Vd01DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712916273),
('OAZHmOMaevxm2F7ApQfATv6YH3QTNVEMCobT4Z4C', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHJiQXkxRmFLTnNNY1ViVXVWUFhjWW9tc0s1ZlBHZllxYnhrSjNYNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UvTVE9PSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712912551),
('OTuwh4FaMvhElD8XEM3rJul69R8EvmBbAkeuXxRM', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG9yblZBbmY2N1RGTUNpTGY4dWpIY1o1cVpNRjVsRnY4Yk1EaWdEdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJalpwTDNOek5tMDVTMDF6Ym1od1lXWXhUMmRPVFZFOVBTSXNJblpoYkhWbElqb2lhRnBFYzJkTGVWUlVURGQzS3pGWFJuWnpSR2t3WnowOUlpd2liV0ZqSWpvaU5tRmlPV1F6TTJSa056UTJNVE14T0dWa09XWTBaV0ZsWkRReE1UZzRObVEzT1dGaU9UVm1NMlJsTUdGak5tTmlaVGxtT0RjM01HVmlZVFZpWVRWbFl5SXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712914098),
('oUeLSLU3P4OWOLrT6rMFge5YS19C5RccQj93b1En', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWl1Rlc4MERkblF1elFlTE93YXdkRUJ5UUlDYlVMckZTdzFIU3NLUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712917107),
('PqwoDLGlM5F1qTZh7UCraORPx43hjHFAZtC9QdSE', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXlJMmQ4Sk9jN0RTVkhJWHlKYjZKN052RU1YcGE5ZHBxb2s3VEY3NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712916862),
('qgxT0eUKEPXeB0wwX0v8Sg5hAxXP7fXr9wpszhyF', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ21Ra01lSFFtZHZPenlxR0JZbGRmc0NiaU1TYTZHNXYzUUJXRkZ1WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UvRGF0YS1zY2llbmNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712909470),
('qiRNoUL8rDnNGcsl3kQjy89SGKlW01QrB7PiKSWR', NULL, '182.48.230.10', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlJxeHVSTHRPeDZEMGlPUThvU3JuRFJQeXl4TEFXc1FMTURsQnJ0TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UtYnktdHlwZS9NUT09Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712909776),
('QZczpqSKtFuc9lxYXY3lWY40k6EjFGASsrDFQzLF', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXBvbWFVaVRMczNsR0ZKejg2Zjk4c00yR2tvYTlnd20zTTJvVURuQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UvRGF0YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909467),
('RL288Tthu5egKT4zAwArYjYac27P7fEDNHyWdqpN', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkV6bmlhOWNtdGVzek5UZU9WcVptS2NvenV5UU5raUc2clBWbDFCTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909257),
('RsmHCd3PAAx5NYOeQUhQR8M96NU13jF8XuP141uD', NULL, '152.58.28.137', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE1GOFdNWmZ6UnFqQjE5T1g0VTgyaU1ZSXNUbTdTdlFOTDFoaHRlQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712914874),
('rut52t74UuZBjivzbqJscUc1xKIIZJUX2JI5VjzR', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDNHbEpGcENJOWRaampPdnVoZUROb3JjRkZkZ0J4WnpJQXhMNjZSOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbGs1T1hGT2NFTjJOVVp1T1dGcWJuQTJTRk5YVTBFOVBTSXNJblpoYkhWbElqb2lkamxLZUZoVGFtOXpTakZtWW05S2FYbHJRbWQ2VVQwOUlpd2liV0ZqSWpvaU9XWTBNemN6TW1JeVlXTm1aREZpWlRjM1pEUTFNRGd6WXpCbE9UZ3hNbVptTVRjME9EVXpabUkzTXpJMU5qRmhNR1UzWkRZNFlqSmhaREUwTVdNeFpDSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712913966),
('S0gXn6SzpWn553TO60bayilV0Df1njQhfsPHzca3', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFJpUW1JQ05hRlphQTdNTkpDUTZXa0c5dFNRSDg3dGF2NUpHYllsdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712918510),
('S6YmsMYAoACd4Iob1NV6hOOAGwJNkzASfjW6RU0M', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0FIQW55ZndaN0o2d0VTcWpiZkpoZUcyajFpaFNyT1lpNUlVWmttcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbHBrVDNjck5ETlBTeTl4TTBoUVRuQlVTV2wxZUdjOVBTSXNJblpoYkhWbElqb2lRelpXUlhWdU5GQktWWFkxUkVaWVRuSm1TemxZZHowOUlpd2liV0ZqSWpvaU1qQXdNalUyTldJek5EVTRNak15TTJZek9UZGlZVGd4TVRWaU1XTmhabUV6T0dNM09HSmtNalJoTVRoaU5UTXhPR0ZoT1dOa01HVmtPVFptWW1FMVpTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712912142),
('shmIMkbG5gYMuep4hgSmShWsyhSKTvgXbPPBBY8H', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFpBZlRhZUJIdHJEN0g2RTQ4dlNMQnhsdU5IaURnVG44aEp1eVdiQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712917725),
('smeBsAFhQamCnlnwGVgObHFXZdcQoTODonsVJyJh', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidU5kek85V0l1SzRsRTJSTUNiNDJ5UDY5eTFGTUlIYzRITmU1cHBXRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbll2Y21sVVVFRnhjV3BIZUZObllqVXZOa0pITUZFOVBTSXNJblpoYkhWbElqb2lVMVZxT0Rod01sSkljMUJXTVVaVFF6WkxNRlJPUVQwOUlpd2liV0ZqSWpvaU9HTXhZV1ZoT1RabU5UUmhaVEZtTm1VNE1UTmtZekppTVdRelkyUXpNMlUyT1dRek5UVm1ZVFE1Tm1Rek0yRmpPRE5qTkRjM01XUmlPVGsyTXpRNFpTSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712915493),
('SmpzhhMYyRGFp0AEc4J8179mlDtsmny0PYt9QfDY', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzZjZjM0b3Fjc2tpTE5RRzJCQXdsOExuUzR2NkpxSTN5STVDaTF1SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712914797),
('SnmVMeZjH1ZiSKYehB0OlBK8cjhYKPr943ZX45RK', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVVCWWpXMXdqZ2w1NDFjSUFIb0xGNWJlcDZRZmdxcE5FNHdrTXk4byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712916441),
('T3OC7aDmSTGedEqWrUOHP039nJtFLpO8p2geP4UQ', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEFJQkdSWEMwSDhpenZtMkVXWFVhenM2cmVXY0Y1Wjd0dnV4TUdKciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909450),
('T6skpyoHrb4hzr5JaZghOmyeSRdIZSKT0M3QUoFT', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTRyVDU5QVhHalJGYjhjS1B0S083WmFOMlllcXpNRnFQdHZQa1dPRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909472),
('T7yttpTgVwAhdrGCLkKIvfuraJN3dM9a1WUOYxyy', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHZoWXUwN3A5TWxBQWJ3WW5pTWJQTGdJUlB3UUNINzcwMDNiTXhndiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbVIxT1U1SE1VdzBUMmh2UnpSaFUwbFJhWFI1ZFhjOVBTSXNJblpoYkhWbElqb2lVa2xaVFc5TWRucHBkbTF2WVROVGVsZEZTM0pWWnowOUlpd2liV0ZqSWpvaVpERTBZV1JrTkRZelpqbGlPVGt3Tm1KallqRXhNMlprTURObU9EVmlOalZsWkdNd01qWTNZMlF5T1RGaU1ERTFORGN3TVdOalltUTJOR0kzWm1VNVpDSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712918180),
('TBWG7uTgGaVdjWIQvvUJ2VC3traEvVzzF5GKaLQl', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWtEeXZMR2NZUVpMMUx2bkZyRHJRREpvRDRvTExrOGg0M2VjUktBcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJaXR1ZVhWRlVXbERSbUpUYUdWTFdYSjRPRTlUWTNjOVBTSXNJblpoYkhWbElqb2lNbTlvZFc5blozRXZWM05GZDAxVlJ6TjNRMFZMVVQwOUlpd2liV0ZqSWpvaVlqRXdZVFE1TXpWbE5HSTVOV1UzT0RWaE4yWTJPRFF6TW1Sa09EQmpabVkwWVRCa1lqTTJOelUzWldJMU4yVXpaR1E1TWpVeVptVXlZV0poWTJJNVlpSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712913764),
('TvWdwNfH03mO6vLrv7JKJ8nHGTtDVeSS4dC7fD1g', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUkyeEJTb3lvRTVGNkFxU1hyTlQwNVpXMHBqVXRhVFJ3VWlsMzUzUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712917231),
('U1hWMGzdZW5riQbmubkrjJaVJAzQIRBWacZu5jBu', NULL, '196.15.23.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGJ2TnZaZzlqdU9JNEhabWg1Y2NPY0pDaVhPaDVnZ0h6M2FJWXRuWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UtYnktdHlwZS9NUT09Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712909699),
('vFsCYZGdfU0LWZYG39fjOGvXBMBkPvuszQtn0miZ', NULL, '115.98.234.28', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVpUS1JtUENVdjFiYU0yWnBxMDg5Z3hSZ05iYVM2TnZSNUZVejdkeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1712915228),
('VG4J7orxSikGCsx0FeXgQ3agV7EE0cG2HFz5SPlt', NULL, '49.36.34.133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWxnaDdiZVMxdDQxb3RmMW04QmdXRFJPcUVEb0JMZzBGOUlvV2pFbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712911933),
('vQnAXXj1wjXBi4UpA1LbrCFpcVMM2Bnz7UK11BJK', NULL, '54.214.130.172', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUc1MTN3WGR2QnJldk1tR1ZRMk92cm5FZmFpelZBYjd0Qmx6RURiVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712915483),
('vtHv9hbDkujkn6b5YlUxRFxvSTgMWUxYzENMBeYo', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3dKU1c1UWZ2dFhaTVpVNENoQ2RTT2RNaTVpb0g2UXJ3UHhkTmduVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712915689),
('VZlcuST4TFL9LFej72tu7g62PMUMz5uB09byE24c', NULL, '115.98.234.28', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXFKbmRYMXlGemYzdTRWVmp2c0NUUTN2S3Y1d1NhbHJkejl1dnJNZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9hZG1pbi1sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712917105),
('w8mIwPgkkpUUZR1rZ11aDSG4kg5AH18shixLqlYY', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXNvUlFtcE51aG1ORlVhM1hzaEZaaEsxSGVHRjJ2b1laZlZHOHVrdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbEZ4U21sNWRrbElhRzV0WTFNd1ltSjRjelZ1ZW5jOVBTSXNJblpoYkhWbElqb2lOREpLTm1GVk5IQTFZbGsxVkRBMVp6UkNUMEprZHowOUlpd2liV0ZqSWpvaU9HUTJOalU1TjJFd05tVXlZell4TkdKaE1UZ3pNalV5WXpNd04yWm1PR1prT0RkbVpHUm1aR016TW1FeU0yRTNNbVptTkRVeFpqSTFNbVV3TmpFNU1pSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712916619),
('wOz1SwToCfEHxJBBHFDkbQ6DGe1DUE9U2RyA9PJn', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibElOTDBXY21EMUZKQW1DbUxBTTNxRVVzckdsTUVrNlhaazFEU21wWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712914735),
('XYSgISdC35F0AbQ9gxTUVA2E1gzEROU4gHnUokim', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlN1UU9RMmdzOWd0Tk5RQVV3SzZFMHhGckliVzE0THVCOTRhRTViTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712915022),
('YHg0D43LcCnA6iMP0W3aWWiMWYg4XHI5NveRvWXM', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTVDR3ZrcURKOGhoRXJTOTM5cjI5bHB5c1VSeHJENFd3aFBCNGFaTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909406),
('YQoDQ5pUqoKyvFOZwpZaYgR7xBPfcjvNfrONa1O2', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWndQbVQ1bjM1U1hQd3dtS0h5M1VVWlZWUVdMZmhQOVcwNWp4YTZlUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909452),
('ytW0iD6vVptiOVB5pGztYnCi5IEXJ5rYoAw4Ee5p', NULL, '171.77.130.89', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1V6T3VBSUs3Y0JOUnQ1SFlROXB1RkhyOTVmM1RTc1FCM09WN0dHbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712916815),
('Z9H7NOssWkVjeFsvoYjCpvNbYjofMlxtZMDIYHiT', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0hlWVIyNWJHbUF2azM2b3ZTU0JDd2RaVUxBcXh2S1NhMkc1QXhIWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbXQwTTNkR1MxSnRlak5ZU0dsQ2JucFpWV05UVUhjOVBTSXNJblpoYkhWbElqb2lLMFE1TUhvM1VWVlFORFY2TjBoemNYQnVlbU5HZHowOUlpd2liV0ZqSWpvaVlUSTJOVE5oWWpJd00yVmlaVE5rTTJVMk1XRTJOMlppWTJOa04yWTRNbU0wWTJRMVptTmlZalEwWkdNME5XRmlZelptWVdRelpqZ3lNVFkyWTJNM055SXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712916679),
('ZGSBy6H9hqoyZvtxCCCPRJI4bn5FWRxSH1KL9mPj', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGx6ekJ0UGFwOUMzS2pLZ00xeGJZN05pVHZtMU5rcUk0RDB3TkdPRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712914825),
('zHjzF620xx7EsUNsJA63b2DEp1VLGv2pD1q2RFIy', NULL, '115.98.234.28', 'WhatsApp/2.24.6.79 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkRJVVlJRm9EdXlCUTlsaHpVTjhPSTFFR3p2STlYcmxTZ3h5R0pDWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909470),
('zIC11jYYgIt7KwYkxHV5WzMpYgWWnZcY668KzD4V', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVU1tZExMOXVDMDl3TnN5VFRlUHJ1cHV4SllGQXNzVjZIVUpETTJ4UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbVJUUnpoc04xaG9lVVJuUjA4NVkxQmpXRzFaTW1jOVBTSXNJblpoYkhWbElqb2lkMVZ2TVhGdFpEQnROWFkwTTNGdVFscEpWVmh5WnowOUlpd2liV0ZqSWpvaU9XRTVNREUxWWpjNU1qTTRPVGM1WlRObU1qY3dOMlZoT1RRME5EUTJaVEE1TjJWaFptRm1ZamRsTlRFd01ESTROak16WXpVMk9USXdOalpqWVRJME5TSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712911102),
('ZpILqxdpMi7HhndHDFcwrcDT4AquVehJCeosHEHo', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDZXVHQ5M0RlNWVRNmFOMk5oYkxaaFdtVU5razE5d2huakxsNk90ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909125);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zqD5TFWdcXDbcpA0a9nhA5iX23sSFvGaWIMJS4Jo', NULL, '198.235.24.122', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickhkUFA2Tk5ldVEwUTRUaW5sYTJwcTllM3NUd001bVBqcWJCbFZUdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712912485),
('ZQln59veIhvmpF40lDfLU13sEzrds1wxKSUjReZ5', NULL, '66.249.79.2', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFkzcTRnNjRFN0xpOGNYRDVMempsSUM5TzB6eXM5cElnQ0JCM3ZIOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712909074),
('ztU4bmUMNqOsuT78R02jqgNNauQyijM7ycMKcmUT', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzR6ZElyeGlZcXBDMTZ3ejlIZ2dyN2VOWW5mbVVUN2xNQjZmMzRzRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJa2RJYmtGVE1VbzJVamhZTDNobU56QmhhWFJyY1ZFOVBTSXNJblpoYkhWbElqb2lTR2xhVm1GSlprRkpSbkpWZVZSM2RWbFRZbmR0VVQwOUlpd2liV0ZqSWpvaVpqbGxZV0prWVdRMVltTXpZelUyT0dRM1ptRTNaakEwWmpVMU5XTmtOamswT1RSa1ptRXdNR0pqWmpSbU9UaGpOelkwWmpWbU16QTJPRGt4TldJek1TSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712918261);

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
(18, 'MongoDB', '1712649614.png', 1, '2024-04-09 02:30:14', '2024-04-09 02:30:14'),
(19, 'Python', '1712898659.png', 1, '2024-04-11 23:40:59', '2024-04-11 23:40:59'),
(20, 'SQL', '1712899515.jpg', 1, '2024-04-11 23:55:15', '2024-04-11 23:55:15'),
(21, 'Machine Learning', '1712899623.png', 1, '2024-04-11 23:57:03', '2024-04-11 23:57:03'),
(22, 'Power BI', '1712899820.png', 1, '2024-04-12 00:00:20', '2024-04-12 00:00:20'),
(23, 'Deep Learning', '1712899839.png', 1, '2024-04-12 00:00:39', '2024-04-12 00:00:39'),
(24, 'Statistics', '1712899882.png', 1, '2024-04-12 00:01:22', '2024-04-12 00:01:22'),
(25, 'Excel', '1712899936.jpg', 1, '2024-04-12 00:02:16', '2024-04-12 00:02:16'),
(26, 'Python', '1712900084.jpg', 1, '2024-04-12 00:04:44', '2024-04-12 00:04:44'),
(27, 'Power BI', '1712900112.png', 1, '2024-04-12 00:05:12', '2024-04-12 00:05:12');

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
-- Indexes for table `seo_detail`
--
ALTER TABLE `seo_detail`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
-- AUTO_INCREMENT for table `seo_detail`
--
ALTER TABLE `seo_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tech_stacks`
--
ALTER TABLE `tech_stacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
