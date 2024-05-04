-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2024 at 11:17 AM
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
  `apply_fee` tinyint(1) NOT NULL,
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

INSERT INTO `courses` (`id`, `name`, `slug`, `course_type_id`, `description`, `course_duration`, `class_schedule`, `delivery_mode`, `course_fee`, `apply_fee`, `current_discount`, `apply_discount`, `course_banner`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Full Stack PHP', 'full-stack-php', 1, '<p>In<strong> Laravel PHP</strong>, developers craft the backbone of web applications, managing server-side logic, integrating third-party services, and collaborating with front-end counterparts. Leveraging Laravel\'s features like Eloquent ORM and Blade templating, they ensure seamless data handling and UI integration. With a focus on efficiency and scalability, PHP developers in Laravel play a pivotal role in creating robust, modern web solutions.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹25,000.00', 0, 'Group Discount', 0, '1712639470.webp', 1, '2024-04-03 09:08:37', '2024-04-14 23:15:55'),
(2, 'Full Stack JAVA', 'full-stack-java', 1, '<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Java Spring Boot\'s</strong> integration with <strong>Angular&nbsp;CLI</strong> and <strong>React</strong> expands the scope of web development possibilities. With Angular CLI\'s structured approach to building single-page applications and React\'s component-based architecture, developers have a wide range of tools at their disposal to create intuitive user experiences. Spring Boot\'s robust backend capabilities complement these frontend frameworks, enabling seamless data handling and business logic implementation. Together, they offer a comprehensive solution for building modern web applications that are both scalable and maintainable, catering to a diverse range of project requirements and enhancing developer productivity throughout the development lifecycle. </span></p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹40.000.00', 0, 'Flat  ₹1,000.00', 0, '1712637583.webp', 1, '2024-04-03 09:53:21', '2024-04-12 22:46:13'),
(3, 'MERN Stack', 'mern-stack', 1, '<p>Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?<br>Learn s/w development and become job ready in 3 months with our <strong>MERN stack development</strong> program.</p>\r\n<p>In this course you will be developing 3 different projects with increasing level of complexity which will help you in&nbsp;<br>digesting some major core concepts needed to develop a fully working s/w application.</p>\r\n<p><strong>Objective:</strong> Using front-end and back-end technologies along with frameworks for developing web based project.</p>\r\n<p><strong>Eligibility</strong></p>\r\n<p>Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS), BCA, MSc in Computer Science,&nbsp;<br>MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹35,000.00', 0, 'Group Discount', 0, '1712648356.webp', 1, '2024-04-09 02:09:16', '2024-04-15 00:39:14'),
(4, 'MEAN Stack', 'mean-stack', 1, '<p>Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?<br>Learn s/w development and become job ready in 3 months with our <strong>MEAN stack development</strong> program.<br>In this course you will be developing 3 different projects with increasing level of complexity which will help you in digesting some major core concepts needed to develop a fully working s/w application.<br><strong>Objective: </strong>Using front-end and back-end technologies along with frameworks for developing web based project.</p>\r\n<p><strong>Eligibility</strong></p>\r\n<p>Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS),&nbsp;<br>BCA, MSc in Computer Science, MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹35,000.00', 0, 'Group Discount', 0, '1712648714.webp', 1, '2024-04-09 02:15:14', '2024-04-15 00:39:05'),
(5, 'AWS Cloud Practitioner', 'aws-cloud-practitioner', 2, '<p>As cloud computing continues to revolutionize the IT industry, professionals skilled in managing cloud platforms are in high demand.&nbsp;</p>\r\n<p>Among the various cloud service providers, <strong>AWS</strong> stands out as a leader for more then one decade, offering a wide range of services and solutions to businesses worldwide.</p>\r\n<p>The <strong>AWS Cloud Practitioner certification</strong> serves as an entry point for individuals looking to kick start their career in cloud computing by providing foundational knowledge of AWS cloud services, architecture, security, and pricing.</p>', '2 Months', '2 Hours', 'Online and Online', '₹25,000.00', 0, NULL, 0, '1713285705.webp', 1, '2024-04-11 02:41:42', '2024-04-16 11:11:45'),
(6, 'Data Science', 'data-science', 1, '<p>Are you ready to kick-start on a journey into the world of data science? Whether you\'re an aspiring data scientist, a business professional looking to enhance your analytical skills, or someone curious about the power of data, our comprehensive curriculum has got you covered. With a focus on practical skills and real-world applications, our course will equip you with the tools and knowledge needed to thrive in today\'s data-driven world.</p>\r\n<p><strong>Why Choose Us?</strong></p>\r\n<ul style=\"list-style-type: disc;\">\r\n<li><strong>Hands-On Learning:</strong> Gain practical experience through hands-on projects and real-world case studies.</li>\r\n<li><strong>Expert Instruction:</strong> Learn from industry experts with extensive experience in data science and analytics.</li>\r\n<li><strong>Flexible Schedule:</strong> Access course materials online and study at your own pace, whenever and wherever it\'s convenient for you.</li>\r\n<li><strong>Career Support:</strong> Receive career guidance and support to help you transition into roles in data science, analytics, and beyond.</li>\r\n</ul>', '4 Months + 2 Months Internship', '2 - 4 Hours', 'Hybrid', '₹75,000.00', 0, 'Group Discount', 0, '1713285815.webp', 1, '2024-04-11 23:32:51', '2024-04-16 11:13:35'),
(7, 'Microsoft AZ 900 Azure Fundamentals', 'microsoft-az-900-azure-fundamentals', 2, '<p style=\"\"><b>Microsoft Azure Fundamentals</b> course is designed to equip IT personnel with foundational knowledge in cloud computing concepts, core Azure services, and Azure management and governance features. Participants will gain hands-on experience using the Azure portal and command line interface to create resources, without the need for scripting skills. Through a combination of lectures, demonstrations, and hands-on labs, attendees will build confidence to pursue further role-based courses and certifications, such as the Azure Administrator certification. Additionally, this course serves as preparation for the AZ-900 exam.</p>\r\n<h6 style=\"font-weight: normal;\">Audience Profile:</h6>\r\n<p style=\"font-weight: normal;\">This course is suitable for individuals who are new to working with Azure and wish to explore its offerings while gaining practical experience. The target audience includes IT personnel seeking to understand cloud computing fundamentals and delve into Azure services. Proficiency in scripting is not required. Participants will primarily engage with the Azure portal and command line interface.</p>', '2 Weeks', '2 - 3 Hours', 'Online', NULL, 0, NULL, 0, '1713164451.webp', 1, '2024-04-14 22:04:45', '2024-04-23 21:55:30'),
(8, 'Microsoft AZ 104 Azure Administrator', 'microsoft-az-104-azure-administrator', 2, '<p style=\"\"><b>Microsoft AZ 104 Azure Administrator</b> course equips IT professionals with the essential skills to configure, manage, secure, and administer key functions within Microsoft Azure. Participants will learn to manage Azure subscriptions, secure identities, administer infrastructure, configure virtual networking, connect Azure and on-premises sites, manage network traffic, implement storage solutions, create and scale virtual machines, deploy web apps and containers, back up and share data, and monitor solutions.</p>\r\n<h5 style=\"font-weight: normal;\">Audience Profile:</h5>\r\n<p style=\"font-weight: normal;\">This course is designed for Azure Administrators responsible for implementing, managing, and monitoring identity, governance, storage, compute, and virtual networks in a cloud environment. Candidates should possess experience in virtualization, networking, identity, and storage technologies. The ideal candidate should have subject matter expertise in Azure environments, including virtual networks, storage, compute, identity, security, and governance. Azure Administrators often work as part of a larger team responsible for delivering Azure networking, security, database, application development, and DevOps solutions.</p>', '2 months', '2-3 Hours', 'Online - Offline', NULL, 0, NULL, 0, '1713164433.webp', 1, '2024-04-14 22:18:23', '2024-04-23 21:55:07');

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
(2, 2, 'Topics and Modules for Full stack development in JAVA', '<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Highlights:</span></strong><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to create database structure of a project with proper RDBMS structure and normalization in My-SQL DBMS.&nbsp;</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">This will give you an experience to work on more complicated database structure.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to work on back-end programming languages Java with Java Spring boot framework.&nbsp;&nbsp;</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to manage your code with Unit testing and code-reusability.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Working with static files and images and manage them through database and programming languages.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to work with JavaScript JQuery-AJAX to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Source code management using GIT and GIT-Hub</span></p>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Project you learn to develop:</span></strong></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Website Design (html 5, JS, CSS)</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Responsive Website using Bootstrap Framework</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">A CRUD application with session handling</span></p>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Curriculum:</span></strong><br><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Front-End:</strong> HTML5, CSS, JS, ES6, JQuery, AJAX and Bootstrap framework, React-Next/Angular(CLI) framework.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Back-End:</strong> JAVA SPRING BOOT</span></p>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Core Java</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Java OOPS</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Exception handling</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Multi-threading</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">JDBC</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">JUNIT</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Servlets</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Spring core</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Spring&nbsp;MVC</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Spring&nbsp;AOP</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Spring REST</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Spring Security</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Spring Boot Application</span></li>\r\n</ul>\r\n<p><br><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Database:</strong> My-SQL/MongoDB Queries and Advance SQL Query</span></p>', 1, '2024-04-03 23:53:24', '2024-04-12 22:44:32'),
(3, 3, 'Module Wise Syllabus and Schedule', '<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Highlights</span></strong></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to create database structure of a project in No-SQL DBMS like MongoDB. This will give you an experience to work on more complicated database structure.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to work on back-end programming languages Node.js with Express Node.js framework.&nbsp; Learn to manage your code with Unit testing and code-reusability.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Working with static files and images and manage them through database and programming languages.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to create single page application using most widely used JavaScript technology React Next.js framework</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to work with Next.js to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Source code management using GIT and GIT-Hub</span></p>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Project you learn to develop</span></strong><br><span style=\"font-family: arial, helvetica, sans-serif;\">Website Design (html 5, JS, CSS).</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Single Page application using React Next.js framework.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">A CRUD application with session handling.</span></p>\r\n<p><br><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Curriculum</span></strong></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Front-end: React Next.js framework.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Back-end: Node.js with Express</span></p>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">What in React Next.js?</span></strong></p>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js introduction</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Setup</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js project structure</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Pages</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Static file</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js CSS and global CSS support</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Pre-Rendering</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Routing</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Dynamic Routing</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js API Routing</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js API Middleware</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Typescript</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Environment Variables</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Next.js Project Deployment</span></li>\r\n</ul>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">What in Node.js?</span></strong></p>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Introduction to Node&nbsp;JS</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Advantages of Node&nbsp;JS</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Node.js Process Model</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Setup Development Environment</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Install&nbsp;Node.js</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Node&nbsp;JS Modules</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Node Package Manager</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Creating Web Server</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">File System</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Debugging Node&nbsp;JS Application</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Events</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Express&nbsp;JS</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Serving Static Resources</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Database Connectivity</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Project Development using Node&nbsp;JS</span></li>\r\n</ul>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Database:</strong> Mongo DB</span></p>', 1, '2024-04-09 02:13:43', '2024-04-12 21:12:35'),
(4, 4, 'Module Wise Syllabus and Schedule', '<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Highlights</strong></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to create database structure of a project in No-SQL DBMS like Mongo. This will give you an experience to work on more complicated database structure.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to work on back-end programming languages Node.jswith Express Node.js framework.&nbsp; Learn to manage your code with Unit testing and code-reusability.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Working with static files and images and manage them through database and programming languages.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to design front-end/ web-UI using HTML5, CSS and JavaScript and more professional looking webpages using HTML and CSS framework like bootstrap and data-table.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to create single page application using most widely used JavaScript technology Angular(CLI) framework</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Learn to work with Next.js to interact with back-end giving hands-on exposure and step towards working with API&rsquo;s.</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Source code management using GIT and GIT-Hub</span></p>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Curriculum</span></strong></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Front-end: Angular(CLI) framework</span><br><span style=\"font-family: arial, helvetica, sans-serif;\">Back-end:Node.js with Express</span></p>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">What in Angular JS?</span></strong></p>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Features of Angular&nbsp;JS, Model-View-Controller</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Angular Expressions</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Filters</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Directives</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Controllers</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Angular&nbsp;JS Modules</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Angular&nbsp;JS Forms</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Scope</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Dependency Injection &amp; Services</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Single Page Application (SPA)</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Angular&nbsp;JS Animation</span></li>\r\n</ul>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">What in&nbsp;Node.js?</span></strong></p>\r\n<ul>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Introduction to Node&nbsp;JS</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Advantages of Node&nbsp;JS</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Node.js Process Model</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Setup Development Environment</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Install&nbsp;Node.js</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Node&nbsp;JS Modules</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Node Package Manager</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Creating Web Server</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">File System</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Debugging Node&nbsp;JS Application</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Events</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Express&nbsp;JS</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Serving Static Resources</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Database Connectivity</span></li>\r\n<li><span style=\"font-family: arial, helvetica, sans-serif;\">Project Development using Node&nbsp;JS</span></li>\r\n</ul>\r\n<p><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Database: MongoDB</span></strong></p>', 1, '2024-04-09 02:15:27', '2024-04-12 21:02:58'),
(5, 6, 'Course Overview', '<ol style=\"list-style-type: none;\">\r\n<li>\r\n<p><strong>Python:</strong> Dive into one of the most versatile programming languages for data science. Learn Python fundamentals and explore its applications in data manipulation, analysis, and visualization using libraries like Pandas, NumPy, and Matplotlib.</p>\r\n</li>\r\n<li>\r\n<p><strong>Excel:</strong> Master the art of data manipulation and analysis using Excel, a powerful tool for organizing and visualizing data. Explore advanced Excel functions, pivot tables, and data modeling techniques to extract insights from complex datasets.</p>\r\n</li>\r\n<li>\r\n<p><strong>SQL:</strong> Unlock the power of databases with SQL (Structured Query Language). Learn how to query, manipulate, and manage data stored in relational databases efficiently. Gain hands-on experience with SQL syntax, database design, and optimization techniques.</p>\r\n</li>\r\n<li>\r\n<p><strong>Power BI:</strong> Transform raw data into interactive and insightful visualizations with Power BI. Discover how to create dynamic dashboards, reports, and data models to communicate your findings effectively to stakeholders.</p>\r\n</li>\r\n<li>\r\n<p><strong>Tableau:</strong> Explore the art of data storytelling with Tableau, a leading visualization tool in the industry. Learn how to create interactive visualizations, dashboards, and maps to uncover patterns and trends in your data.</p>\r\n</li>\r\n<li>\r\n<p><strong>Statistics (Stats):</strong> Build a solid foundation in statistics essential for data analysis. Explore descriptive and inferential statistics, hypothesis testing, probability distributions, and regression analysis to make informed decisions based on data.</p>\r\n</li>\r\n<li>\r\n<p><strong>Machine Learning:</strong> Delve into the exciting field of machine learning and predictive analytics. Learn fundamental concepts such as supervised and unsupervised learning, classification, regression, clustering, and model evaluation techniques.</p>\r\n</li>\r\n<li>\r\n<p><strong>Deep Learning:</strong> Take your understanding of machine learning to the next level with deep learning. Explore neural networks, deep neural networks, convolutional neural networks (CNNs), recurrent neural networks (RNNs), and natural language processing (NLP) for advanced data analysis and pattern recognition.</p>\r\n</li>\r\n</ol>\r\n<p><strong>Features of Course</strong></p>\r\n<ul>\r\n<li>Covers all courses required to be a data scientist, Data Analyst</li>\r\n<li>Project-based learning</li>\r\n<li>Internship after course</li>\r\n<li>Working on live projects</li>\r\n<li>Capstone Project and Hackathons</li>\r\n<li>Test after every Session</li>\r\n<li>Working with AI-based tools like ChatGPT</li>\r\n<li>Interview Preparation&nbsp;</li>\r\n<li>Placement assistance&nbsp;</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, '2024-04-12 22:07:12', '2024-04-12 22:07:12'),
(6, 7, NULL, '<p>Module 1: Describe Cloud Computing</p>\r\n<p>Module 2: Describe the Benefits of Using Cloud Services</p>\r\n<p>Module 3: Describe Cloud Service Types</p>\r\n<p>Module 4: Describe the Core Architectural Components of Azure</p>\r\n<p>Module 5: Describe Azure Compute and Networking Services</p>\r\n<p>Module 6: Describe Azure Storage Services</p>\r\n<p>Module 7: Describe Azure Identity, Access, and Security</p>\r\n<p>Module 8: Describe Cost Management in Azure</p>\r\n<p>Module 9: Describe Features and Tools in Azure for Governance and Compliance</p>\r\n<p>Module 10: Describe Features and Tools for Managing and Deploying Azure Resources</p>\r\n<p>Module 11: Describe Monitoring Tools in Azure</p>\r\n<h5>Prerequisites:</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Basic understanding of IT concepts and terminology.</li>\r\n<li>Familiarity with using computers and web browsers.</li>\r\n<li>No prior experience with Azure or cloud computing required.</li>\r\n</ul>', 1, '2024-04-14 22:06:21', '2024-04-14 22:29:18'),
(7, 8, NULL, '<h5>Module 1: Manage Azure Identities and Governance</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure Microsoft Entra ID</li>\r\n<li>Configure User and Group Accounts</li>\r\n<li>Configure Subscriptions</li>\r\n<li>Configure Azure Policy</li>\r\n<li>Configure Role-Based Access Control</li>\r\n</ul>\r\n<h5>Module 2: Implement and Manage Storage</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure Azure Resources with Tools</li>\r\n<li>Use Azure Resource Manager</li>\r\n<li>Configure Resources with Azure Resource Manager Templates</li>\r\n<li>Configure Storage Accounts</li>\r\n<li>Configure Azure Blob Storage</li>\r\n<li>Configure Azure Storage Security</li>\r\n<li>Configure Azure Files and Azure File Sync</li>\r\n</ul>\r\n<h5>Module 3: Deploy and Manage Azure Compute Resources</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure Virtual Networks</li>\r\n<li>Configure Network Security Groups</li>\r\n<li>Configure Azure DNS</li>\r\n<li>Configure Azure Virtual Network Peering</li>\r\n<li>Configure Network Routing and Endpoints</li>\r\n<li>Configure Azure Load Balancer</li>\r\n<li>Configure Azure Application Gateway</li>\r\n</ul>\r\n<h5>Module 4: Implement and Manage Virtual Networking</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure Virtual Machines</li>\r\n<li>Configure Virtual Machine Availability</li>\r\n<li>Configure Azure App Service Plans</li>\r\n<li>Configure Azure App Service</li>\r\n<li>Configure Azure Container Instances</li>\r\n</ul>\r\n<h5>Module 5: Monitor and Maintain Azure Resources</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure File and Folder Backups</li>\r\n<li>Configure Virtual Machine Backups</li>\r\n<li>Configure Azure Monitor</li>\r\n<li>Improve Incident Response with Alerting on Azure</li>\r\n<li>Configure Log Analytics</li>\r\n<li>Configure Network Watcher</li>\r\n</ul>\r\n<h5>Preparation for the Exam:</h5>\r\n<p>Participants will be prepared for the Microsoft Certified: Azure Administrator Associate exam through comprehensive coverage of all skills measured in the exam.</p>\r\n<h5>Prerequisites:</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Understanding of on-premises virtualization technologies, including VMs, virtual networking, and virtual hard disks.</li>\r\n<li>Knowledge of network configurations, including TCP/IP, DNS, VPNs, firewalls, and encryption technologies.</li>\r\n<li>Familiarity with Active Directory concepts, including users, groups, and role-based access control.</li>\r\n<li>Understanding of resilience and disaster recovery, including backup and restore operations.</li>\r\n<li>Experience with operating systems, networking, servers, and virtualization.</li>\r\n<li>Proficiency in PowerShell, Azure CLI, the Azure portal, Azure Resource Manager templates, and Microsoft Entra ID.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, '2024-04-14 22:21:24', '2024-04-14 22:30:49'),
(8, 5, NULL, '<div style=\"font-weight: normal;\"><ul style=\"\"><li style=\"\"><font size=\"4\" style=\"\"><span style=\"font-family: Arial, Verdana;\"><b>Module 1</b>:&nbsp;</span>Getting Started with AWS</font></li><li style=\"\"><font size=\"4\" style=\"\"><span style=\"font-family: Arial, Verdana;\"><b>Module 2</b>:&nbsp;</span>Compute Services</font></li><li style=\"\"><font size=\"4\" style=\"\"><span style=\"font-family: Arial, Verdana;\"><b>Module 3</b>:&nbsp;</span>Storage Services</font></li><li style=\"\"><font size=\"4\" style=\"\"><span style=\"font-family: Arial, Verdana;\"><b>Module 4</b>:&nbsp;</span>CDN Services</font></li><li style=\"\"><font size=\"4\" style=\"\"><span style=\"font-family: Arial, Verdana;\"><b>Module 5</b>:&nbsp;</span>Database Services</font></li><li style=\"\"><font size=\"4\" style=\"\"><span style=\"font-family: Arial, Verdana;\"><b>Module 6</b>:&nbsp;</span>Additional Technology and Services</font></li><li style=\"\"><font size=\"4\" style=\"\"><span style=\"font-family: Arial, Verdana;\"><b>Module 7</b>:&nbsp;</span>Security Compliance and Governance</font></li><li style=\"\"><font size=\"4\" style=\"\"><span style=\"font-family: Arial, Verdana;\"><b>Module 8</b>:&nbsp;</span>Pricing, Billing and Support</font></li></ul><p></p></div><div style=\"font-weight: normal; font-size: 10pt;\"><br></div><h5 style=\"font-size: 24px; box-sizing: border-box; margin: 0px 0px 15px; line-height: 1.417; font-family: Jost, sans-serif; color: var(--title-color); background-color: rgb(255, 255, 255);\">Preparation for the Exam<span style=\"font-weight: normal;\">:</span></h5><p style=\"font-weight: normal; font-size: 16px; box-sizing: border-box; margin: 0px 0px 18px; font-family: var(--body-font); color: rgb(77, 87, 101); line-height: 1.75; background-color: rgb(255, 255, 255);\">Participants will be prepared for the AWS Certified Cloud Practitioner Certification exam through comprehensive coverage of all knowledge and skills required for the exam.</p><h5 style=\"font-size: 24px; box-sizing: border-box; margin: 0px 0px 15px; line-height: 1.417; font-family: Jost, sans-serif; color: var(--title-color); background-color: rgb(255, 255, 255);\">Prerequisites<span style=\"font-weight: normal;\">:</span></h5><h5 style=\"font-weight: normal; box-sizing: border-box; margin: 0px 0px 15px; line-height: 1.417; font-family: Jost, sans-serif; color: var(--title-color); background-color: rgb(255, 255, 255);\"><font size=\"3\">This is a beginner level certification course and no prior knowledge is required.</font></h5>', 1, '2024-04-25 04:36:43', '2024-04-25 04:37:54');

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
(54, 6, 28, 1, '2024-04-12 21:53:22', '2024-04-12 21:53:22'),
(55, 6, 24, 1, '2024-04-12 21:53:27', '2024-04-12 21:53:27'),
(57, 6, 19, 1, '2024-04-12 21:53:39', '2024-04-12 21:53:39'),
(58, 6, 20, 1, '2024-04-12 21:55:40', '2024-04-12 21:55:40'),
(59, 7, 30, 1, '2024-04-14 22:48:46', '2024-04-14 22:48:46'),
(60, 7, 31, 1, '2024-04-14 22:48:50', '2024-04-14 22:48:50'),
(61, 7, 32, 1, '2024-04-14 22:48:53', '2024-04-14 22:48:53'),
(62, 7, 34, 1, '2024-04-14 22:55:23', '2024-04-14 22:55:23'),
(63, 7, 33, 1, '2024-04-14 22:55:38', '2024-04-14 22:55:38'),
(64, 8, 35, 1, '2024-04-14 22:58:33', '2024-04-14 22:58:33'),
(65, 8, 36, 1, '2024-04-14 22:58:36', '2024-04-14 22:58:36'),
(66, 8, 32, 1, '2024-04-14 22:59:12', '2024-04-14 22:59:12'),
(67, 8, 30, 1, '2024-04-14 22:59:15', '2024-04-14 22:59:15'),
(68, 8, 34, 1, '2024-04-14 22:59:17', '2024-04-14 22:59:17'),
(69, 8, 31, 1, '2024-04-14 22:59:20', '2024-04-14 22:59:20'),
(70, 8, 37, 1, '2024-04-14 23:02:16', '2024-04-14 23:02:16'),
(71, 6, 26, 1, '2024-04-15 01:19:49', '2024-04-15 01:19:49');

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
(3, 'Crash Course', 'crash-course', 0, '2024-04-03 14:25:05', '2024-05-01 02:54:17');

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
-- Table structure for table `promo_sessions`
--

CREATE TABLE `promo_sessions` (
  `id` bigint(20) NOT NULL,
  `promo_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `speaker` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about_speaker` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo_banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apply_message` tinyint(1) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promo_sessions`
--

INSERT INTO `promo_sessions` (`id`, `promo_type`, `name`, `slug`, `description`, `speaker`, `about_speaker`, `promo_banner`, `apply_message`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'session', 'Python Fundamentals for Data Science', 'python-fundamentals-for-data-science', '<p>Beginners in the field of data science who are not familiar with programming often have a hard time figuring out where they should start.<br>With hundreds of questions about how to get started with<strong> Python for DS</strong> on various forums, this post (and video series) is my attempt to settle all those questions<br><strong>Duration of Session: 8 Hours</strong></p>\r\n<table style=\"border-collapse: collapse; width: 99.9884%; height: 180.313px; border-width: 1px;\" border=\"1\"><colgroup><col style=\"width: 50.0052%;\"><col style=\"width: 50.0052%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 45.0694px;\">\r\n<td style=\"padding: 5px;\"><strong>Date</strong></td>\r\n<td style=\"padding: 5px;\"><strong>Time</strong></td>\r\n</tr>\r\n<tr style=\"height: 45.0694px;\">\r\n<td style=\"padding: 5px;\">20-04-2024</td>\r\n<td style=\"padding: 5px;\">9 am to 11:30 am</td>\r\n</tr>\r\n<tr style=\"height: 45.0694px;\">\r\n<td style=\"padding: 5px;\">21-04-2024</td>\r\n<td style=\"padding: 5px;\">9 am to 11:30 am</td>\r\n</tr>\r\n<tr style=\"height: 45.1042px;\">\r\n<td style=\"padding: 5px;\">22-04-2024</td>\r\n<td style=\"padding: 5px;\">8:30 am to 11:30 am</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Speaker: </strong>Mr. Aamer Sayed</p>', '', '', '1713331165.jpg', 0, 0, '2024-04-16 02:09:28', '2024-04-17 22:32:35'),
(2, 'session', 'Demystifying Data Science', 'demystifying-data-science', '<p>Curious about Data Science but not sure where to start?</p>\r\n<p>Join us for an enlightening online session on \"Demystifying Data Science for Non-IT Professionals and Freshers\"&nbsp;</p>\r\n<p><strong>Date: Sat 20th &amp; Sun 21st April </strong></p>\r\n<p><strong>Time: 7:30 PM - 8:30 PM </strong></p>\r\n<p>Our guest speaker, Aamer Syed, a seasoned Data Scientist, will unravel the mysteries of Data Science in a way that\'s easy to understand for beginners and non-IT folks alike!</p>\r\n<p>Don\'t miss this fantastic opportunity to dive into the world of data with us! Spread the word and mark your calendars!</p>\r\n<p>&nbsp;</p>', '', '', '1713376797.png', 0, 0, '2024-04-17 04:01:05', '2024-04-25 00:59:12'),
(5, 'session', 'Data Science For Maths Stats', 'data-science-for-maths-stats', '<div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Exciting Announcement!</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Hey everyone!</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Curious about Data Science but not sure where to start? Join us for an enlightening online session on \"Is Data Science a Right Career choice? Exclusive for Maths &amp; Stats Graduates&nbsp; and Freshers\"</span></font></div><div style=\"\"><span style=\"font-size: 13.3333px; font-family: Arial, Verdana;\">Date: Sat 27th April</span></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Time: 7:30 PM - 8:30 PM</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Aamer Syed, a seasoned Data Scientist, will unravel the mysteries of Data Science in a way that\'s easy to understand for beginners!</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Don\'t miss this fantastic opportunity to dive into the world of data with us! Spread the word and mark your calendars!&nbsp;</span></font></div>', '', '', '1714017981.jpg', 1, 0, '2024-04-24 22:36:21', '2024-05-03 00:19:42'),
(6, 'session', 'OOP with Java', 'oop-with-java', '<div style=\"\"><div style=\"text-align: justify;\"><font color=\"#336666\" style=\"\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b style=\"\">About Trainer:</b></span></font></div><div style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b>Mr. Rakesh Kumar Sahu</b> is <b>Digital Solution Architect and Associate Director at NTT Data</b>, With over <b>15 years </b>of experience, Mr. Rakesh is a <b>certified integration professional</b> holding multiple certifications including<b> MuleSoft (2x), TIBCO (4x), AWS (2x), Azure (2x), Java (1x), Oracle (2x), and Scrum (2x)</b>. His expertise lies in crafting innovative integration solutions across telecom, retail, entertainment, and mining sectors, leveraging tools like <b>TIBCO, MuleSoft, and Boomi</b>. Mr. Rakesh is known for his problem-solving skills, domain versatility, collaborative approach, and leadership qualities, making him a valuable asset in digital solutions and integration architecture.</span></font></div><div style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b>Profile:</b> <a href=\"https://www.linkedin.com/in/rakeshsahuinfo\">https://www.linkedin.com/in/rakeshsahuinfo</a></span></font></div><div style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b><br></b></span></font></div><div style=\"text-align: justify;\"><font color=\"#336666\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b style=\"\">About Course:</b></span></font></div><div style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b>Object-Oriented Programming (OOP) in Java</b> is a way of writing code where you organize your program\'s parts into \"objects\" that represent real-world things. It\'s like breaking down your code into small, reusable building blocks that can interact with each other. This approach makes your code easier to understand, maintain, and extend because it focuses on concepts like modularity, reusability, hiding complexity, and flexibility.</span></font></div><div style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><br></span></font></div><div style=\"text-align: justify;\"><font color=\"#336666\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b style=\"\">Here are some key topics we will cover:</b></span></font></div><div style=\"text-align: justify;\"><ul><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Classes and Objects</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Encapsulation</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Inheritance</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Polymorphism</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Abstraction</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Interfaces</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Packages</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Composition and Aggregation</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Exception Handling</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Generics</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Enums</span></font></li><li style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Annotation</span></font></li></ul></div><div style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b>This Session will be in Online mode and it will begin from 18th May, 2024</b></span></font></div><div style=\"text-align: justify;\"><font color=\"#330033\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">Timetable will be scheduled on weekly basis which will be informed during the session and via registered mobile number or email.</span></font></div><div style=\"text-align: justify;\"><font color=\"#336666\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><br></span></font></div><div style=\"text-align: justify;\"><font color=\"#336666\" style=\"\" face=\"Arial\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><b style=\"\">Notice: We have limited intake capacity in case our batch is full we will inform you about our next session via registered mobile number or email.</b></span></font></div></div>', 'Mr. Rakesh', 'Associate Director', '1714540849.png', 1, 1, '2024-04-30 22:57:49', '2024-05-04 00:15:13'),
(7, 'session', 'SW Engineering Using Java', 'sw-engineering-using-java', '<div style=\"font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; text-align: justify;\"><font face=\"Arial\"><b style=\"color: rgb(13, 13, 13); font-size: 16px; white-space-collapse: preserve;\">Mr. Swapnil Srivastav</b><span style=\"font-weight: normal; background-color: rgb(255, 255, 255); color: rgb(13, 13, 13); font-size: 16px; white-space-collapse: preserve;\">, an accomplished IT professional with a rich and diverse background in software development. With experience spanning across <b>Warehousing, Marketing, Finance, and E-commerce</b> domains, Swapnil has continuously evolved and expanded his expertise. Beginning his journey with ERP systems like JD Edwards, he transitioned seamlessly into Java development, where he has thrived ever since. Notably, Swapnil has been instrumental in crafting numerous products from inception, particularly in the E-commerce and HR Tech realms, showcasing his adeptness in transforming concepts into functional software solutions. Renowned for his leadership qualities and a strong sense of ownership, Swapnil has played pivotal roles in team building initiatives, amassing a total of <b>9+ years</b> in crafting both Web and Enterprise applications using Java, J2EE Technologies, and cutting-edge frameworks such as Spring Boot, Dropwizard, and Vert.x. His repertoire extends to database management, where he has extensively utilized MySQL and NoSQL databases including MongoDB, Elasticsearch, Redis for distributed caching, InfluxDB, and Kafka. Furthermore, Swapnil\'s expertise extends to cloud technologies, having worked extensively with AWS services like EC2, ECS, EKS, S3, RDS, SQS, ALB, and API Gateway. With a keen eye for detail and a passion for software craftsmanship, Swapnil brings a wealth of knowledge and experience to the table, making him a valuable asset in any software development endeavor.</span></font></div><div style=\"font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; text-align: justify;\"><font face=\"Arial\"><span style=\"font-weight: normal; background-color: rgb(255, 255, 255); color: rgb(13, 13, 13); font-size: 16px; white-space-collapse: preserve;\"><br></span></font></div><div style=\"text-align: justify;\"><font face=\"Arial\"><span style=\"font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; background-color: rgb(255, 255, 255); color: rgb(13, 13, 13); white-space-collapse: preserve;\"><b>Profile: </b></span><span style=\"color: rgb(13, 13, 13); font-size: 13.3333px; white-space-collapse: preserve;\"><a href=\"https://www.linkedin.com/in/swapnil-srivastav\" style=\"\">https://www.linkedin.com/in/swapnil-srivastav</a></span></font></div>', 'Mr. Swapnil', 'Data Engineer', '1714621918.jpg', 1, 1, '2024-05-01 21:10:56', '2024-05-04 00:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `promo_session_registration`
--

CREATE TABLE `promo_session_registration` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_college_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promo_session_id` bigint(20) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promo_session_registration`
--

INSERT INTO `promo_session_registration` (`id`, `name`, `email`, `contact`, `company_college_name`, `promo_session_id`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Aishwarya Vinayak Mokal', 'aishwaryamokal1999@gmail.com', '8600236627', 'Pillai HOC College of Arts, Science and Commerce', 2, '', '2024-04-17 22:26:50', '2024-04-17 22:26:50'),
(5, 'Tamanna', 'Tamannaagrawal@rmc.edu.in', '9769086950', 'Reena mehta college', 2, '', '2024-04-17 22:31:01', '2024-04-17 22:31:01'),
(6, 'Unnati Dhavare', 'unnatidhavare@gmail.com', '9975004624', 'S H Mutha College, Kalyan(W)', 2, '', '2024-04-17 22:39:39', '2024-04-17 22:39:39'),
(7, 'Sabina Dsouza', 'sabinadd21@gmail.com', '9403863045', 'Spk college', 2, '', '2024-04-17 22:47:33', '2024-04-17 22:47:33'),
(8, 'Tejas Tukaram Redkar', 'tejasredkar53@gmail.com', '9421943989', 'SRM college Kudal', 2, '', '2024-04-17 22:51:16', '2024-04-17 22:51:16'),
(9, 'Manish Kalbhor', 'manishkalbhor0110@gmail.com', '7559408073', 'Bharati institute of management Kolhapur', 2, '', '2024-04-17 23:05:57', '2024-04-17 23:05:57'),
(10, 'Mahesh dattatray Mulage', 'mulagemahesh073@gmail.com', '7620465734', 'Bharati VId', 2, '', '2024-04-17 23:16:54', '2024-04-17 23:16:54'),
(11, 'Apa Dhadam', 'apab031087@gmail.com', '7588584339', 'S.R.M College,Kudal', 2, '', '2024-04-17 23:31:05', '2024-04-17 23:31:05'),
(12, 'Gopal', 'gopalp22@gmail.com', '9880843319', 'Juniper', 2, '', '2024-04-17 23:37:32', '2024-04-17 23:37:32'),
(13, 'Pranav Borchate', 'pranavborchate@gmail.com', '9130973812', 'College', 2, '', '2024-04-17 23:45:07', '2024-04-17 23:45:07'),
(14, 'Sharvari Abhijeet Garde', 'gardesharvari@gmail.com', '9322771975', 'Bharati Vidyapeeth Institute of Management kolhapur', 2, '', '2024-04-17 23:54:59', '2024-04-17 23:54:59'),
(15, 'Akanksha  Dubey', 'akankshad086@gmail.com', '7249784834', NULL, 2, '', '2024-04-18 00:17:44', '2024-04-18 00:17:44'),
(16, 'Sujal Gupta', 'guptasujal274@gmail.com', '8591622461', 'Shree Jaya Anand degree college', 2, '', '2024-04-18 00:19:12', '2024-04-18 00:19:12'),
(17, 'Anurag Belel', 'anuragbelel005@gmail.com', '9920860150', NULL, 2, '', '2024-04-18 00:42:58', '2024-04-18 00:42:58'),
(18, 'Ruchita Dhananjay Malandkar', 'malandkarruchita@gmail.com', '9823237747', 'Sant Rawool Maharaj mahavjdyalaya tal.kudal,dist. Sindhudurag', 2, '', '2024-04-18 01:02:14', '2024-04-18 01:02:14'),
(19, 'Sharv Tate', 'sharvtate@gmail.com', '8308708488', 'Bharati Vidyapeeth', 2, '', '2024-04-18 01:14:07', '2024-04-18 01:14:07'),
(20, 'Rashi Manish Gaekwad', 'rashigaekwad7@gmail.com', '7517774903', 'Bharati Vidyapeeth University', 2, '', '2024-04-18 01:16:48', '2024-04-18 01:16:48'),
(21, 'Saamiya Potrick', 'sampotricksam@gmail.com', '9870401455', NULL, 2, '', '2024-04-18 01:17:59', '2024-04-18 01:17:59'),
(22, 'Pratham Prashant Shinde', 'shindepratham1106@gmail.com', '9307999852', 'Shree Jaya Anand Degree Collage', 2, '', '2024-04-18 01:39:00', '2024-04-18 01:39:00'),
(23, 'Vidya  Santosh Bhagat', 'vidyabhagat@gmail.com', '9309394697', 'SRM kudal', 2, '', '2024-04-18 01:42:06', '2024-04-18 01:42:06'),
(25, 'Prashant Boricha', 'prashant.boricha@gmail.com', '9930073347', 'Microsoft', 2, '', '2024-04-18 01:44:04', '2024-04-18 01:44:04'),
(26, 'Mohammed Zaid Shaikh', 'Shaikhzaid00@gmail.com', '7303779441', 'Oxide boards factory', 2, '', '2024-04-18 02:13:29', '2024-04-18 02:13:29'),
(27, 'Snehal Sanjay Naik', 'ssnaik32@gmail.com', '9404778447', 'Shri Pancham Khemraj Mahavidyalaya, sawantwadi', 2, '', '2024-04-18 03:02:19', '2024-04-18 03:02:19'),
(28, 'Saqlain', 'saqlainkalokhe09@gmail.com', '9920764226', 'Kalsekar', 2, '', '2024-04-18 03:12:36', '2024-04-18 03:12:36'),
(29, 'Anjali Sandeep Gaikwad', 'anjali.gaikwad@bharatividyapeeth.edu', '9359005159', 'Institute of Management , Kolhapur', 2, '', '2024-04-18 03:30:53', '2024-04-18 03:30:53'),
(30, 'Ansari Mohammed Akmal', 'akmalansari25032000@gmail.com', '8779613231', 'Anjuman I Islams Kalsekar Technical Campus', 2, '', '2024-04-18 04:12:46', '2024-04-18 04:12:46'),
(31, 'Ayesha Sutar', 'ayeshasutar97@gmail.com', '9067071970', 'Bharati Vidyapeeth institute of management kolhapur', 2, '', '2024-04-18 04:18:45', '2024-04-18 04:18:45'),
(32, 'Sunil', 'shungupta@yahoo.com', '9137625498', 'It', 2, '', '2024-04-18 04:37:20', '2024-04-18 04:37:20'),
(33, 'Noor Alam Khan', 'knooralam023@gmail.com', '9619368064', 'Valia College', 2, '', '2024-04-18 06:09:59', '2024-04-18 06:09:59'),
(34, 'Reza Abbas', 'reza.abbas200@gmail.com', '9833742752', 'Cosmopolitan valia college', 2, '', '2024-04-18 06:24:24', '2024-04-18 06:24:24'),
(35, 'Vasanti Todakar', 'vasantitodakar86@gmail.com', '8928456675', 'SATAHYE college', 2, '', '2024-04-18 07:45:53', '2024-04-18 07:45:53'),
(36, 'Rohit Ramchandra Varak', 'rohitvarak421@gmail.com', '9356978383', 'Yashwantrao Bhonsale Polytechnic Sawantwadi', 2, '', '2024-04-18 08:19:12', '2024-04-18 08:19:12'),
(37, 'Khan Ahmed', 'me.ahmedkhan98@gmail.com', '9136388850', 'Shree Narayan Guru College', 2, '', '2024-04-18 08:43:40', '2024-04-18 08:43:40'),
(38, 'Rahul', 'rbadariya71@gmail.com', '8104826569', 'Shree Narayan guru college', 2, '', '2024-04-18 08:44:22', '2024-04-18 08:44:22'),
(39, 'Huzaifa', 'hk1175957@gmail.com', '9372106020', 'Sree Narayana guru college of commerce', 2, '', '2024-04-18 08:47:06', '2024-04-18 08:47:06'),
(40, 'Nayan Gada', 'gadanayan07@gmail.com', '9867705622', 'College', 2, '', '2024-04-18 08:50:42', '2024-04-18 08:50:42'),
(41, 'Roman Khan', 'khanromank92@gmail.com', '8104980942', 'S.N.G.C.', 2, '', '2024-04-18 08:51:00', '2024-04-18 08:51:00'),
(42, 'Shaikh Uzair Hasan', 'uzair.shaikh0305@gmail.com', '7304648677', 'Sree Narayan Guru College', 2, '', '2024-04-18 09:03:36', '2024-04-18 09:03:36'),
(43, 'Prathamesh Jadhav', 'Prathameshjadhav1357@gmail.com', '8070146507', 'Shree Narayan Guru College', 2, '', '2024-04-18 09:12:06', '2024-04-18 09:12:06'),
(44, 'Shubham Chougule', 'shubhamchougule1177@gmail.com', '8767030077', 'BIA', 2, '', '2024-04-18 09:19:47', '2024-04-18 09:19:47'),
(45, 'Samruddhi Prasad Rendale', 'samruddhirendale8083@gmail.com', '9423368083', 'Bharati vidyapeeth Institute of management kolhapur', 2, '', '2024-04-18 09:37:44', '2024-04-18 09:37:44'),
(46, 'Mohammed Ali Yusuf Siddiqui', 'mohammedalisiddiqui8@gmail.com', '9833284373', 'College', 2, '', '2024-04-18 09:45:38', '2024-04-18 09:45:38'),
(47, 'Baig Mogal Imran', 'baigmogalimran@gmail.com', '7208341067', 'Sree Narayan guru college of commerce', 2, '', '2024-04-18 10:30:59', '2024-04-18 10:30:59'),
(48, 'Alwin Joshua', 'allwinj16@gmail.com', '8080082962', 'Sngc', 2, '', '2024-04-18 10:39:17', '2024-04-18 10:39:17'),
(49, 'Ayush khade', 'khadeayush37@gmail.com', '8779086911', 'Sree narayan guru colege', 2, '', '2024-04-18 12:40:15', '2024-04-18 12:40:15'),
(50, 'Saad', 'saadshaikh970@gmail.com', '9136045058', 'A.R kalsekar polytechnic', 2, '', '2024-04-18 13:13:26', '2024-04-18 13:13:26'),
(51, 'Konen Salim Chogle', 'konenchougle1@gmail.com', '7208918388', 'narayan guru college of commerce', 2, '', '2024-04-18 13:31:04', '2024-04-18 13:31:04'),
(52, 'Sabaa salim Pimpari', 'Pimparisaba2@gmail.com', '7385052206', 'Bharati vidhyapeth management college', 2, '', '2024-04-18 21:46:13', '2024-04-18 21:46:13'),
(53, 'Aayush Singh', 'respawnablesaayush@gmail.com', '7738881442', NULL, 2, '', '2024-04-18 22:54:27', '2024-04-18 22:54:27'),
(54, 'Tufail Ahmed Khan', 'tufail.aiktc@gmail.com', '9892561698', 'AIKTC', 2, '', '2024-04-19 00:35:32', '2024-04-19 00:35:32'),
(55, 'Indira Joshi', 'ipj.indira@gmail.com', '8652662966', 'NHITM Thane', 2, '', '2024-04-19 00:52:50', '2024-04-19 00:52:50'),
(56, 'Adil Shaikh', '18adilshaikh@gmail.com', '8010767601', 'Anjuman -I- kalsekar technical campus,panve', 2, '', '2024-04-19 01:09:21', '2024-04-19 01:09:21'),
(57, 'Praveen Shevade', 'uttaranga@gmail.com', '9403785802', 'SRM College', 2, '', '2024-04-19 04:09:51', '2024-04-19 04:09:51'),
(58, 'Abdul Razak', 'pstvthnkz@gmail.com', '7676623926', 'Kct engineering college', 2, '', '2024-04-19 04:15:59', '2024-04-19 04:15:59'),
(59, 'Mohammed Arif', 'arifbme01@gmail.com', '0509845740', 'Master of technology', 2, '', '2024-04-19 05:01:19', '2024-04-19 05:01:19'),
(60, 'Zaid Ali', 'zaid.ali12696@gmail.com', '7275576886', 'IIT GUWAHATI', 2, '', '2024-04-19 05:48:29', '2024-04-19 05:48:29'),
(61, 'Javed Khan Sheikh', 'javedkhan.sheikh@gmail.com', '9320017780', 'VIT Bhopal University', 2, '', '2024-04-19 06:02:18', '2024-04-19 06:02:18'),
(62, 'Md Meraz Ahmad', 'm.ahmad@iitg.ac.in', '9113155216', 'IIT GUWAHATI, GUWAHATI', 2, '', '2024-04-19 07:14:53', '2024-04-19 07:14:53'),
(63, 'Firoz Khan', 'firozakhan05@gmail.com', '9821684331', 'EPC Tech Pvt Ltd', 2, '', '2024-04-19 07:16:20', '2024-04-19 07:16:20'),
(64, 'Chandrakant Yeshi', 'yeshichandrakant@gmail.com', '9767433356', 'Dilkap, neral', 2, '', '2024-04-19 07:19:25', '2024-04-19 07:19:25'),
(65, 'Ashjad', 'ashjadkhan7@gmail.com', '8976082852', 'Sree Narayan guru college of commerce', 2, '', '2024-04-19 09:01:42', '2024-04-19 09:01:42'),
(66, 'Sujal Nivrutti Pagere', 'sujalpagere4975@gmail.com', '8828346544', 'S.I.E.S GST', 2, '', '2024-04-19 11:42:40', '2024-04-19 11:42:40'),
(67, 'Vaibhavi Sanjay satardekar', 'vaibhavisatardekar6@gmail.com', '9356580995', 'S.R.M. College kudal', 2, '', '2024-04-19 21:40:57', '2024-04-19 21:40:57'),
(68, 'Anne Priya', 'annej.bella@gmail.com', '9082534029', 'Lokmanya Tilak', 2, '', '2024-04-19 22:44:17', '2024-04-19 22:44:17'),
(70, 'Amreen Jahan', 'jahanamreen0122@gmail.com', '8779162027', NULL, 2, '', '2024-04-20 01:46:44', '2024-04-20 01:46:44'),
(71, 'Malik mohd Saquib', 'sm2402672sakib@gmail.com', '9324751560', 'Ramniranjan jhunjhunwala college of arts, science and commerce', 2, '', '2024-04-20 02:27:26', '2024-04-20 02:27:26'),
(72, 'Saalem Shakiluddin Khan', 'khsaalem8411@gmail.com', '7715050116', 'Anjuman-I-Islam\'s Kalsekar Technical Campus School of Engineering and Technology', 2, '', '2024-04-20 03:20:27', '2024-04-20 03:20:27'),
(73, 'Sharv Tate', 'sharvtate@gmail.com', '8308708488', 'Bharati Vidyapeeth', 2, '', '2024-04-20 03:44:49', '2024-04-20 03:44:49'),
(74, 'Malik mohd Saquib', 'sm2402672sakib@gmail.com', '9324751560', 'Ramniranjan jhunjhunwala college of arts, science and commerce', 2, '', '2024-04-20 05:32:06', '2024-04-20 05:32:06'),
(75, 'Aishwarya Vinayak Mokal', 'aishwaryamokal@mes.ac.in', '8600236627', 'Pillai HOC College of Arts, Science and Commerce', 2, '', '2024-04-20 07:50:44', '2024-04-20 07:50:44'),
(76, 'Aparna Panigrahy', 'aparnapanigrahy18@gmail.com', '9967324016', 'Nirmala college', 2, '', '2024-04-20 08:18:17', '2024-04-20 08:18:17'),
(77, 'Asst. Prof. Saba Ansari', 'ansarisaba08@gmail.com', '9867126112', 'J.K. College of Science and Commerce', 2, '', '2024-04-20 08:40:33', '2024-04-20 08:40:33'),
(78, 'Bhavika', 'bhavikagajwani1@gmail.com', '9356823843', 'Bharati Vidyapeeth University, Kolhapur', 2, '', '2024-04-20 10:17:33', '2024-04-20 10:17:33'),
(79, 'Suvarna Shoukin Hawelikar', 's.s.hawelikar@gmail.com', '9960941686', 'NA', 2, '', '2024-04-21 04:03:35', '2024-04-21 04:03:35'),
(81, 'Sachin Sati', 'satisachin619@gmail.com', '6300351686', 'KC College Churchgate', 5, '.', '2024-04-25 01:13:58', '2024-04-25 01:13:58'),
(82, 'Mohammad kaif Siddiqui', 'itsmekaifaiddiqui@gmail.com', '09082813143', 'KC', 5, 'I am interested in Data science', '2024-04-25 06:12:13', '2024-04-25 06:12:13'),
(83, 'Aliya memon', 'aliyamemon1709@gmail.com', '9324015064', 'A.E KALSEKAR DEGREE COLLEGE', 5, 'I\'m a student of third year of Bsc.IT', '2024-04-25 12:10:21', '2024-04-25 12:10:21'),
(84, 'Saeeda Shaikh', 'sksaeeda2007@gmail.com', '9769339805', 'Self Employed', 5, 'Yes I want to upgrade my knowledge', '2024-04-25 22:24:54', '2024-04-25 22:24:54'),
(86, 'Rehan Shaikh', 'muskan88667@gmail.com', '9890266267', 'RK Talreja', 5, 'To opt for Data science or not', '2024-04-26 07:00:17', '2024-04-26 07:00:17'),
(87, 'Amreen jahan', 'jahanamreen0122@gmail.com', '8779162027', NULL, 5, 'Adf', '2024-04-26 08:29:12', '2024-04-26 08:29:12'),
(88, 'Nabila Sarnaik', 'sarnaiknabila@gmail.com', '9819074864', 'AE Kalsekar degree college', 5, 'I want to know in detail about data science', '2024-04-27 04:15:25', '2024-04-27 04:15:25'),
(89, 'Kavita Mandar Chouk', 'kavitachouk@gmail.com', '8626036025', 'Satish Pradhan Dnyasadhana College', 6, 'I have knowledge of core java', '2024-05-01 00:05:42', '2024-05-01 00:05:42'),
(90, 'Dr. Deepika Saravagi', 'Saravagideepika@gmail.com', '7089331065', 'Patkar Varde College', 6, 'Hello', '2024-05-01 00:05:46', '2024-05-01 00:05:46'),
(91, 'Dipesh dilip Gadekar', 'dipeshgadekar59@gmail.com', '9145682559', 'Shree pancham khemarach college Sawantawadi', 6, 'Learn lots of things', '2024-05-01 00:08:23', '2024-05-01 00:08:23'),
(92, 'Sonal Nilesh patil', 'sonalnemade@gmail.com', '9967852150', 'KSD\'s Model College (Autonomous), Thakurli East', 6, '-', '2024-05-01 00:08:23', '2024-05-01 00:08:23'),
(93, 'Samiksha Sanjay Desai', 'desaisamiksha03@gmail.com', '9421094049', 'Shri Pancham Khemraj Mahavidyalaya, Sawantwadi', 6, 'I am joining this session', '2024-05-01 00:11:54', '2024-05-01 00:11:54'),
(94, 'Afreen Ashrafalli Khan', 'afreen2382005@gmail.com', '7038405786', 'Shri Pancham Khemraj Mahavidyalaya Sawantwadi', 6, 'I want to learn the concepts and OOPs in java', '2024-05-01 00:16:06', '2024-05-01 00:16:06'),
(95, 'Manasi Dnyandev Rawool', 'manasirawool03@gmail.com', '9404273910', 'Shree Pancham khemraj Mahavidyalaya Sawantwadi', 6, 'No', '2024-05-01 00:16:24', '2024-05-01 00:16:24'),
(96, 'Archana Mishra', 'archana892015@gmail.com', '7208403341', 'VPM\'s RZ shah college mulund', 6, 'Join this course', '2024-05-01 00:21:04', '2024-05-01 00:21:04'),
(97, 'Kavita Shambhu Thakur', 'thakurkavita2006@gmail.com', '8108824724', 'JES college of commerce science and information technology', 6, 'Excited for session', '2024-05-01 00:22:24', '2024-05-01 00:22:24'),
(98, 'Sanskar Vijaykumar Dubey', 'sanskardubey62@gmail.com', '8140821197', 'JOGESHWARI EDUCATION SOCIETY', 6, 'I am a Lerner', '2024-05-01 00:23:43', '2024-05-01 00:23:43'),
(99, 'Mohammad Zahid', 'myn11739@gmail.com', '7738339674', 'Jes college', 6, 'Can I get course of full stack developer?', '2024-05-01 00:25:16', '2024-05-01 00:25:16'),
(100, 'Neha Krishna Rane', 'raneneha386@gmail.com', '8263813866', 'SPK College Sawantwadi', 6, 'Thanks for organising this session. This session will be helpful for me in future.', '2024-05-01 00:25:28', '2024-05-01 00:25:28'),
(101, 'Ranjan jha', 'ranjanjha787@gmail.com', '9798031202', 'Collage', 6, 'Oops with java', '2024-05-01 00:28:48', '2024-05-01 00:28:48'),
(102, 'Archana Jadhav', 'archanakumbhavade@gmail.com', '9833666464', 'Western College of Commerce and Business Management', 6, 'interested in joining', '2024-05-01 00:30:16', '2024-05-01 00:30:16'),
(103, 'Mohammed Arshad munawar shaikh', 'mohdarshadshaikh8825@gmail.com', '8825670017', 'Akbar peerbhoy college', 6, '.', '2024-05-01 00:31:07', '2024-05-01 00:31:07'),
(104, 'Sonu Kumar', 'sonuk005785@gmail.com', '7456827300', 'Akabar peerbhoy college', 6, 'I want to learn Java HTML css\r\nPython programming please', '2024-05-01 00:31:30', '2024-05-01 00:31:30'),
(105, 'Priti vijay jadhav', 'pritijadhav1072004@gmail.com', '8591695845', 'S.k Tilak science and commerce of college', 6, 'I am excited for this session.', '2024-05-01 00:31:37', '2024-05-01 00:31:37'),
(106, 'Ranjit Gupta', 'ranjitrkg6@gmail.com', '7860408310', 'Lala Lajpat Rai College', 6, 'Thanks', '2024-05-01 00:32:03', '2024-05-01 00:32:03'),
(107, 'Miraj Ansari', 'mirajansari9867@gmail.com', '9867580492', 'SK College Of Science and Commerce Nerul Navi Mumbai Maharashtra 400706', 6, 'Learning Java Full Stack developement', '2024-05-01 00:32:26', '2024-05-01 00:32:26'),
(108, 'Rupesh mane', 'rupeshmane4718@gmail.com', '9152901918', 'Lala lajpat rai college', 6, 'Hi', '2024-05-01 00:32:32', '2024-05-01 00:32:32'),
(109, 'Anuradha Arya', 'aryaanuradha2304@gmail.com', '9221511484', 'SK Tilak college , seawoods', 6, 'Want to learn oops with java', '2024-05-01 00:33:24', '2024-05-01 00:33:24'),
(110, 'Mubsara', 'mubsarashaikh38@gmail.com', '8652625068', 'SK tilak nehrul', 6, 'Want to register', '2024-05-01 00:33:38', '2024-05-01 00:33:38'),
(111, 'Feroz Ansari', 'firozriyaz7@gmail.com', '7738856546', 'Akbar peerbhoy college', 6, 'Registering for Java Season unlocks a world of possibilities, providing access to cutting-edge training, expert-led workshops, and a community of like-minded developers.', '2024-05-01 00:34:56', '2024-05-01 00:34:56'),
(112, 'Shaikh Rehan', 'rehansk9326@gmail.com', '9326780056', 'Akbar peerbhoy college', 6, 'Excited to learn about oops of with Java', '2024-05-01 00:35:27', '2024-05-01 00:35:27'),
(113, 'Akhilesh Mukesh Yadav', 'ay910664@gmail.com', '7208172833', 'S.K College science and commerce', 6, 'I am student', '2024-05-01 00:36:06', '2024-05-01 00:36:06'),
(114, 'Pratik Singh', 'gamingismyreligion21@gmail.com', '7977408016', 'Sk college of science and commerce', 6, 'I want learn java for my future goal', '2024-05-01 00:36:52', '2024-05-01 00:36:52'),
(115, 'Nidhi pradeep pawar', 'svptxb20nidhip@gmail.com', '8169118481', 'Sk tilak college ,nerul', 6, 'Want to learn java', '2024-05-01 00:37:41', '2024-05-01 00:37:41'),
(116, 'Praveen Ashok Kumar Saroj', 'pravinsarojp@gmail.com', '9335037767', 'College', 6, 'I am so excited to be this course', '2024-05-01 00:42:23', '2024-05-01 00:42:23'),
(117, 'Rahid Hussain', 'rahya3110@gmail.com', '8291246366', 'A.p college', 6, 'I want to learn coding', '2024-05-01 00:43:06', '2024-05-01 00:43:06'),
(118, 'Vijayalaxmi Kondal', 'laxmimahesh.kondal@gmail.com', '9892757709', 'Dr. BMN College', 6, 'Practical session', '2024-05-01 00:43:22', '2024-05-01 00:43:22'),
(119, 'Prathamesh uttam sawant', 'prathameshsawant065@gmail.com', '9403234640', 'S P.K college sawantwadi', 6, '.', '2024-05-01 00:43:27', '2024-05-01 00:43:27'),
(120, 'NIDHI YADAV', 'nidhiyadav3420@gmail.com', '9769629943', 'Sk college of science and commerce', 6, 'Thank you for providing us free java course', '2024-05-01 00:43:39', '2024-05-01 00:43:39'),
(121, 'Rahima khudabkhash khan', 'rahimakhan908@gmail.com', '9152509627', 'Anjuman-I-Islam\'s Akbar Peerbhoy College of Commerce & Economics', 6, 'Thank you for providing this course.', '2024-05-01 00:45:42', '2024-05-01 00:45:42'),
(122, 'Nikita', 'nikitahanpade@gmail.com', '8668749563', 'S.P.K.college sawantwadi', 6, 'OOP with java', '2024-05-01 00:46:33', '2024-05-01 00:46:33'),
(123, 'Mohamad sarfaraj rustam', 'sarfarazx3204@gmail.com', '8652365717', 'S.K college of science and commerce', 6, 'Free', '2024-05-01 00:46:55', '2024-05-01 00:46:55'),
(124, 'Shruti Mukadam', 'mukadamshruti@gmail.com', '8591528567', 'Lala lajpat rai college of commerce and economics', 6, 'I would love to learn more about Java and OOP and enhance my skills in these subjects', '2024-05-01 00:46:57', '2024-05-01 00:46:57'),
(125, 'Mohammed Haris Abrar Khan', 'khanharis7722@gmail.com', '9152061778', 'Akbar peerbhoy college of commerce and economics', 6, 'Java', '2024-05-01 00:48:21', '2024-05-01 00:48:21'),
(126, 'Malik Naushad Ali Khan', 'mkid156@gmail.com', '9137522282', 'S.K college of science and commerce', 6, 'I want to learn from basic to advance in core java', '2024-05-01 00:49:33', '2024-05-01 00:49:33'),
(127, 'Nitesh nirmal', 'niteshnirmal025@gmail.com', '9082957970', 'Lala lajpatrai college', 6, 'Thank you for given opportunity for students', '2024-05-01 00:50:09', '2024-05-01 00:50:09'),
(128, 'Pratiksha Shetty Pawar', 'pratikshashettypawar545@gmail.com', '8591026988', 'Patkar varde college', 6, 'It would be amazing learning something new.', '2024-05-01 00:53:01', '2024-05-01 00:53:01'),
(129, 'Neha Shukla', 'nehashukla97667@gmail.com', '8187934259', 'Tilak junior college of science and commerce', 6, '\"Thank you for providing this course on OOP with Java. It\'s been incredibly helpful in expanding my knowledge and skills in programming. I appreciate the opportunity to learn from such a valuable resource.\"', '2024-05-01 00:54:05', '2024-05-01 00:54:05'),
(130, 'Khushi Chaudhari', 'khushichaudhari190704@gmail.com', '8898902355', 'Sk college of science and commerce', 6, '\"Thank you for providing this course on OOP with Java. It\'s been incredibly helpful in expanding my knowledge and skills in programming. I appreciate the opportunity to learn from such a valuable resource.\"', '2024-05-01 00:54:35', '2024-05-01 00:54:35'),
(131, 'Siddhi Sharma', 'sharmasiddhi.1906@gmail.com', '8976011751', 'S.k. college of science and commerce', 6, 'Thank you for providing this course on OOP with Java. It\'s been incredibly helpful in expanding my knowledge and skills in programming. I appreciate the opportunity to learn from such a valuable resource.\"', '2024-05-01 00:55:46', '2024-05-01 00:55:46'),
(132, 'Omkar Dhamanskar', 'omkar.dhamanskar@gmail.com', '8858470541', 'AKBAR PEERBHOY COLLEGE OF COMMERCE & ECONOMICS', 6, 'Its great to have a such a course for free hope this make my all doubts and concepts of java', '2024-05-01 00:57:33', '2024-05-01 00:57:33'),
(133, 'Rushan Sufiyan', 'rushans669@gmail.com', '9794554155', 'Akbar peerbhoy college commerce and economic', 6, 'I want to learn java \r\nBecause i want to make my future in java', '2024-05-01 00:58:00', '2024-05-01 00:58:00'),
(134, 'Gunja', 'gunjashahgps06@gmail.com', '7304342711', 'S.k college of science and commerce', 6, 'I\'m excited to learn OOPs with Java', '2024-05-01 01:00:39', '2024-05-01 01:00:39'),
(135, 'Mohd Adil', 'ansariadil9764@gmail.com', '9004885272', 'Akbar peerboy college', 6, 'Full Explanation and practice', '2024-05-01 01:00:43', '2024-05-01 01:00:43'),
(136, 'Umar farooque', 'umarinfo027@gmail.com', '9798092878', 'Gossner college ranchi', 6, 'Excited to learn java', '2024-05-01 01:00:47', '2024-05-01 01:00:47'),
(137, 'Usmani saad', 'usmanisaad07@gmail.com', '7208341213', 'Akbar peerbhoy', 6, '.', '2024-05-01 01:01:15', '2024-05-01 01:01:15'),
(138, 'Ketan vishnu kubal', 'ketankubal8@gmail.com', '9657109068', 'Shree pancham khemraja sawantwadi', 6, 'I interested to conduct this session', '2024-05-01 01:01:25', '2024-05-01 01:01:25'),
(139, 'Naziya chaudary', 'naziyachaudhary951@gmail.com', '7459086107', 'S.k college of science and arts', 6, 'I want to learn new skills', '2024-05-01 01:02:18', '2024-05-01 01:02:18'),
(140, 'Prathamesh Ganesh', 'prathameshsonawane578@gmail.com', '9765743351', 'S K College of science and commerce', 6, 'Education', '2024-05-01 01:02:37', '2024-05-01 01:02:37'),
(141, 'Nehal Santosh Anbhavne', 'nehal.anbhavne26@gmail.com', '7738121173', 'JES College of Commerce Science and Information Technology', 6, '...', '2024-05-01 01:02:39', '2024-05-01 01:02:39'),
(142, 'Ganesh Govind Thakur', 'gt4135148@gmail.com', '9860040309', 'Shree Pancham khemraj collage sawantwadi', 6, 'I am intrested to be in the challenging word', '2024-05-01 01:06:48', '2024-05-01 01:06:48'),
(143, 'Mrs. Rajshree Nilesh Pisal', 'rajashree.karnekar@jnanvikasmandal.com', '9029785498', 'Jvm\'s Degree College', 6, 'Want to learn full stack with java', '2024-05-01 01:06:54', '2024-05-01 01:06:54'),
(144, 'Akanksha Kurri', 'Akankshakurri04@gmail.com', '9324546834', 'Lala Lajpatrai College of Commerce and Economics', 6, 'i want to learn java', '2024-05-01 01:09:29', '2024-05-01 01:09:29'),
(145, 'Falak', 'falakam79@gmail.com', '9004033284', 'S K College Nerul', 6, 'Thanks for this course', '2024-05-01 01:10:48', '2024-05-01 01:10:48'),
(146, 'Sail Gawade', 'sailgawade14@gmail.com', '8879986819', 'Patkar varde college', 6, 'I am a student of information & technology and want to study and explore full stack', '2024-05-01 01:11:53', '2024-05-01 01:11:53'),
(147, 'Bhagyashree Amar Kulkarni', 'bhagyashreek3990@gmail.com', '8080852043', 'JVM\'s Degree College, Airoli', 6, 'What is full stack', '2024-05-01 01:14:00', '2024-05-01 01:14:00'),
(148, 'Gauravi Ganesh Rane', 'gauravirane63@gmail.com', '7522958089', 'Shree Pancham Khemraj Mahavidyalaya, Sawantwadi', 6, 'Thank you for organising this session', '2024-05-01 01:14:28', '2024-05-01 01:14:28'),
(149, 'Suraj Neman', 'surajneman30@gmail.com', '8010121183', 'SPK', 6, 'Thanks', '2024-05-01 01:15:00', '2024-05-01 01:15:00'),
(150, 'Vaibhav', 'vaibhavbagal@114gmail.com', '8104165077', 'SK collage of seawood', 6, 'I want to improve oops concept with java', '2024-05-01 01:15:13', '2024-05-01 01:15:13'),
(151, 'Shaikh md raza', 'faisaljm8@gmail.com', '6392445211', 'Akbar peerbhoy college', 6, 'I want to learn java and oops.', '2024-05-01 01:15:30', '2024-05-01 01:15:30'),
(152, 'Abhijeet redkar', 'abhijeetredkar36@gmail.com', '7020756102', 'Shri Pancham khemraj mahavidyalaya', 6, 'I want to take more knowledge', '2024-05-01 01:23:50', '2024-05-01 01:23:50'),
(153, 'Zoha Mulla', 'zohamulla09@gmail.com', '9860789948', 'Tilak education society Sk college of science and commerce', 6, 'Looking forward to it', '2024-05-01 01:24:06', '2024-05-01 01:24:06'),
(154, 'Mohammed Juned Mehmood Alam', 'junaida2554@gmail.com', '8883337657', 'S.K. College of Science and Commerce', 6, 'Hello!!', '2024-05-01 01:24:42', '2024-05-01 01:24:42'),
(155, 'Shakib', 'shakib.idrisi007@gmail.com', '9082199309', 'Ap college', 6, 'Nice', '2024-05-01 01:24:43', '2024-05-01 01:24:43'),
(156, 'Janhavi Shirish Kudalkar', 'kudalkarjanhavi4@gmail.com', '9769034530', 'S.K.College of Science and Commerce, Nerul', 6, 'Hope it will be best for us', '2024-05-01 01:29:20', '2024-05-01 01:29:20'),
(157, 'Abu Sufiyan', 'skabsuf463@gmail.com', '9372729801', 'Tilak College', 6, 'I want to learn FULL course of java', '2024-05-01 01:39:26', '2024-05-01 01:39:26'),
(158, 'Zuhair', 'zuhairkhambati@gmail.com', '7506843723', 'KC College', 6, 'I want to join the course', '2024-05-01 01:42:06', '2024-05-01 01:42:06'),
(159, 'Khan abdulrehman', 'khanabdulrehman653@gmail.com', '8108672538', 'Akbar peerbhoy college', 6, 'Try try till you succeed', '2024-05-01 01:44:29', '2024-05-01 01:44:29'),
(160, 'Sophia Dcruz', 'dcruzsophia24@gmail.com', '8080273742', 'Patkar Varde College', 6, 'I hope this message finds you well. I am writing to express my keen interest in joining your free Java course as a fresher. As someone eager to embark on a career in teaching, I am deeply motivated to learn and grow within the Java programming language. I am excited about the opportunity to learn and grow with your help.', '2024-05-01 01:45:26', '2024-05-01 01:45:26'),
(161, 'Vedant', 'vedantatugade@gmail.com', '9324152596', 'S. K College', 6, 'To improve programing skiils', '2024-05-01 01:48:49', '2024-05-01 01:48:49'),
(162, 'Vishwajeet Singh', 'vishwajeetsingh6952@gmail.com', '9369737114', 'Patkar Varde college', 6, 'Interested in joining the course', '2024-05-01 01:57:12', '2024-05-01 01:57:12'),
(163, 'Samad Thakur', 'samadthakur403@gmail.com', '8898485268', 'Lala lajpat rai college', 6, 'Hello good morning have a great day.', '2024-05-01 02:03:50', '2024-05-01 02:03:50'),
(164, 'Hemanshi gajra', 'gajrahemanshi@gmail.com', '8369747488', 'S.k. college', 6, 'I want to join the session', '2024-05-01 02:06:11', '2024-05-01 02:06:11'),
(165, 'MOHD TABREJ', 'tabrejrainmu13@gmail.com', '8986941362', 'Akbar peerbhoy college of commerce and economics', 6, 'I want to skill up my career with knowledge', '2024-05-01 02:09:53', '2024-05-01 02:09:53'),
(166, 'Harshal Thakur', 'thakurharshal225@gmail.com', '9819223752', 'Patkar Varde College', 6, '-', '2024-05-01 02:10:48', '2024-05-01 02:10:48'),
(167, 'Jaswant Maurya', 'jassmaury44@gmail.com', '9324708871', 'Patkar Varde College', 6, 'I am TYBsc.IT student this course will help me in my project and given me knowledge about full stack.', '2024-05-01 02:11:01', '2024-05-01 02:11:01'),
(168, 'Trisha murugan', 'trisha.murugan06@gmail.com', '9137364493', 'Collage', 6, 'I want a course of oops javascrip', '2024-05-01 02:13:03', '2024-05-01 02:13:03'),
(169, 'Atharva Datar', 'atharvadatar32@gmail.com', '9769469870', 'Patkar Varde College', 6, 'I would like to attend the course.', '2024-05-01 02:15:41', '2024-05-01 02:15:41'),
(170, 'Fahad Sajid Ali Ansari', 'ffadivirus@gmail.com', '8104004843', 'Akbar peerbhoy college', 6, 'I am very excited to learn oops with java and get into the full stack java wrold', '2024-05-01 02:23:29', '2024-05-01 02:23:29'),
(171, 'Vishal Sharma', 'sharmavishal04072005@gmail.com', '9136416399', 'J.m patel college', 6, 'Came here for gaining extra knowledge.', '2024-05-01 02:27:03', '2024-05-01 02:27:03'),
(172, 'Shivam Mishra', 'shivmm178@gmail.com', '9137880700', 'J.M Patel college of commerce', 6, 'H', '2024-05-01 02:29:38', '2024-05-01 02:29:38'),
(173, 'Sachin Sunil Singh', 'ssinghsachin2006@gmail.com', '8433765211', 'JM Patel', 6, 'A', '2024-05-01 02:30:43', '2024-05-01 02:30:43'),
(174, 'Mamta Gupta', 'mamtagupta200420@gmail.com', '8779753637', 'Matrushri kashiben motilal patel senior college commerce & science', 6, 'Nothing', '2024-05-01 02:31:07', '2024-05-01 02:31:07'),
(175, 'Kanishka gavande', 'kanishk.g@gemail.com', '9076180711', 'S.k college', 6, 'Interested to learn opp with java', '2024-05-01 02:35:15', '2024-05-01 02:35:15'),
(176, 'Sakshi Thube', 'sakshithube60@gmail.com', '7977865701', 'Sk college', 6, 'Ready to learn', '2024-05-01 02:35:15', '2024-05-01 02:35:15'),
(177, 'Darshan gundala', 'darshangundala195@gmail.com', '8169243024', 'Sk college of science and commerce', 6, 'I am super interested in this course', '2024-05-01 02:40:50', '2024-05-01 02:40:50'),
(178, 'Yadnyesh Gadakari', 'cgadakari032@gmail.com', '7738847518', 'Sk College of science and commerce', 6, 'Ready to learn', '2024-05-01 02:41:57', '2024-05-01 02:41:57'),
(179, 'Sagar sahu', '24sahusagar@gmail.com', '8591189235', 'Sk college', 6, 'I want to learn', '2024-05-01 02:43:49', '2024-05-01 02:43:49'),
(180, 'Vamshi kori', 'korivamshi6@gmail.com', '8097055945', 'Sk college of science and commerce', 6, 'I want to become a full stack developer', '2024-05-01 02:45:55', '2024-05-01 02:45:55'),
(181, 'Shaikh shabeena', 'shaikhinaya9860@gmail.com', '8454867716', 'Akbar peerbhoy college', 6, 'I want time 8to9 for this course.', '2024-05-01 02:46:16', '2024-05-01 02:46:16'),
(182, 'Sayali Sunil Kuswarkar', 'kuswarkarsayali@gmail.com', '9321597007', 'Patkar Varde College', 6, 'I want to learn the database connectivity using java', '2024-05-01 02:48:21', '2024-05-01 02:48:21'),
(183, 'Abdul Mobin Samani', 'mobinsamani7045@gmail.com', '7039171650', 'J m Patel college of commerce', 6, 'I am interested this course', '2024-05-01 02:49:18', '2024-05-01 02:49:18'),
(184, 'Shraddha tiwari', 'shradhat903@gmail.com', '9594451079', 'JM Patel college of commerce', 6, 'Where it\'ll conducted zoom meeting or Google meet', '2024-05-01 02:53:28', '2024-05-01 02:53:28'),
(185, 'Sakshi Chandrakant Wadekar', 'sakshiwadekar39@gmail.com', '9372689542', 'Patkar Varde College', 6, 'I am a student in patkar varde collage pursuing bsc in information technology  and i am in need to gain various types of certification courses', '2024-05-01 02:53:39', '2024-05-01 02:53:39'),
(186, 'Aleemullah Farooqui', 'aleem11sep@gmail.com', '7304055090', 'S.K.College of Science and Commerce', 6, 'I am excited for learning the full stack with java.', '2024-05-01 02:54:07', '2024-05-01 02:54:07'),
(187, 'Sanjana gupta', 'sanjanagupta1303@gmail.com', '8169157115', 'JMP COLLEGE', 6, 'I am interested in joining this session', '2024-05-01 03:00:32', '2024-05-01 03:00:32'),
(188, 'Gauri gautam', 'gaurigautam2305@gmail.com', '7310109787', 'Sk college of science commerce and arts', 6, 'A very thank you for providing this free course which will be beneficial for my studies and making my career bright.', '2024-05-01 03:00:38', '2024-05-01 03:00:38'),
(189, 'Om kukawalkar', 'kukawalkarom@gmail.com', '9820942579', 'Patkar college', 6, 'Interested in this course', '2024-05-01 03:00:46', '2024-05-01 03:00:46'),
(190, 'Saili', 'sailigunjal315@gmail.com', '9503333312', 'S.K college of science and commerce', 6, 'What to learn it from basic', '2024-05-01 03:01:54', '2024-05-01 03:01:54'),
(191, 'vinay raju chivilkar', 'vinaychivilkar2@gmail.com', '8928360839', 'Patkar Varde College', 6, 'I am a student in patkar varde collage persuing bsc in information technology  and i am in need to gain various types of certification courses', '2024-05-01 03:03:17', '2024-05-01 03:03:17'),
(192, 'Sujal Yadav', '52g2021yadavsv@gmail.com', '9820841944', 'J.m.patel college', 6, 'I\'m interested in learning new things', '2024-05-01 03:08:42', '2024-05-01 03:08:42'),
(193, 'Prince Sherathiya', 'princesher321@gmail.com', '9321542484', 'Reena Mehta college', 6, 'Nice to join the session', '2024-05-01 03:10:52', '2024-05-01 03:10:52'),
(194, 'Purushottam Bhikaji Kandalgaokar', 'purushottamkandalagaunker@gmail.com', '8275409746', 'Shri pancham khemraj university, sawantwaadi', 6, 'I have interested to this course', '2024-05-01 03:14:11', '2024-05-01 03:14:11'),
(195, 'Jay Pawar', 'jaypawar2408@gmail.com', '7039707123', 'S.k. College of science and commerce', 6, '..', '2024-05-01 03:15:53', '2024-05-01 03:15:53'),
(196, 'MAHAL RAJDEEP KAUR', 'mahalrajdeepkaur@gmail.com', '9967345839', 'Sk tilak college', 6, 'Java', '2024-05-01 03:20:00', '2024-05-01 03:20:00'),
(197, 'Khan Usama', 'khanusama5862@gmail.com', '8108184895', 'J .M Patel', 6, 'I want to learn about Java concepts and oops models.', '2024-05-01 03:20:41', '2024-05-01 03:20:41'),
(198, 'Momin Misbah Fahim Ahmed', 'misbahiit22@gmail.com', '9372681306', 'Patkar Varde College', 6, 'I\'m very interested in working with Java and would like to join this course.', '2024-05-01 03:26:57', '2024-05-01 03:26:57'),
(199, 'Ahsan Shaikh', 'ahsanshaikh0808@gmail.com', '9320584154', 'Akbar peerbhoy college grand road', 6, 'I\'m interested for programming learning', '2024-05-01 03:29:39', '2024-05-01 03:29:39'),
(200, 'Navjyot Singh Saini', 'navjyotsaini10@gmail.com', '7304238609', 'S.K college of science and commerce', 6, 'I am interested to learn OOPS with JAVA', '2024-05-01 03:35:44', '2024-05-01 03:35:44'),
(201, 'Bhumika patil', 'bhumikapatil235@gmail.com', '7506649189', 'Sk college of commerce and science', 6, 'Thank you', '2024-05-01 03:36:34', '2024-05-01 03:36:34'),
(202, 'YADAV AKHILESH DINESH', 'ay686847@gmail.com', '9696545062', 'Sk college', 6, 'Join', '2024-05-01 03:40:18', '2024-05-01 03:40:18'),
(203, 'Darshan gundala', 'darshangundala195@gmail.con', '8169243024', 'Sk tilak college of science and commerce', 6, 'I am super interested in this course', '2024-05-01 03:58:07', '2024-05-01 03:58:07'),
(204, 'Ritu Gupta', 'ritu.gupta1st@gmail.com', '9867013111', NULL, 6, 'I want to learn OOP with Java', '2024-05-01 03:58:54', '2024-05-01 03:58:54'),
(205, 'Somnath Nichit', 'soma.nichit@gmail.com', '8668936805', 'Elphinstone College', 6, 'Become a Java developer', '2024-05-01 04:14:19', '2024-05-01 04:14:19'),
(206, 'Manasvi Sunil Jadhav', 'jadhavmanasvi2007@gmail.com', '9653302063', 'Elphinstone, Mumbai.', 6, 'I\'ve absolute no idea about Java but I would like to learn programming as a plan B.', '2024-05-01 04:16:02', '2024-05-01 04:16:02'),
(207, 'Srushti Nalawade', 'nalawadesrush@gmail.com', '9076408232', 'Elphinstone college', 6, 'Thankyou for the free course', '2024-05-01 04:17:02', '2024-05-01 04:17:02'),
(208, 'Mrunal shinge', 'shingemrunal@gmail.com', '9820463768', 'Elphistone college', 6, '..', '2024-05-01 04:17:26', '2024-05-01 04:17:26'),
(209, 'Someshwar Prakash Khale', 'khalesomeshwar9@gmail.com', '9137512600', 'Elphinstone College Mumbai', 6, 'Want to register.', '2024-05-01 04:19:53', '2024-05-01 04:19:53'),
(210, 'Omkar vijay patil', 'omkarbhai2123@gmail.com', '8169572898', 'Elphistone college', 6, 'Excited', '2024-05-01 04:22:41', '2024-05-01 04:22:41'),
(211, 'Anjali Mahendra Prasad gupta', 'pinkig49470@gmail.com', '9152049470', 'Jashbhai maganbhai Patel college of commerce', 6, 'I want to join this  online session .', '2024-05-01 04:23:20', '2024-05-01 04:23:20'),
(212, 'Rahul', 'rahulgupta17208@gmail.com', '8169072148', 'Elphinstone college', 6, 'I am interested in full stack development', '2024-05-01 04:24:26', '2024-05-01 04:24:26'),
(213, 'Adarsh Shukla', 'healerads@gmail.com', '7208268486', 'Elphinstone College', 6, 'Would love to learn java', '2024-05-01 04:30:09', '2024-05-01 04:30:09'),
(214, 'Samiksha Thombare', 'thombaresamiksha7@gmail.com', '9082608688', 'Sk college tilak education society seawoods', 6, 'Na', '2024-05-01 04:59:37', '2024-05-01 04:59:37'),
(215, 'Anuradha', 'bhosaleanuradha18@gmail.com', '7058302486', 'SPK Collage Sawantwadi', 6, '.', '2024-05-01 05:06:48', '2024-05-01 05:06:48'),
(216, 'VISHAL SHANKAR PARAB', 'vishalparab2005@gmail.com', '8766007203', 'S.P.K. College sawantwadi', 6, 'To learn the oop Java in summer vacation', '2024-05-01 05:08:53', '2024-05-01 05:08:53'),
(217, 'Suyash patil', 'patilsuyash410@gmail.com', '9372031621', 'SK College seawood', 6, '.', '2024-05-01 05:13:07', '2024-05-01 05:13:07'),
(218, 'Ridhesh Palkar', 'beaconboss573@gmail.com', '9082272243', 'Elphistone College', 6, 'I would be happy and grateful if I get\r\nTo learn from code cruise courses.\r\nI have heard alot about code cruise for there courses and teaching methods.', '2024-05-01 05:36:57', '2024-05-01 05:36:57'),
(219, 'Salma', 'salllmashaiikh@gmail.com', '9372897377', 'Tilak college', 6, 'I want to learn more', '2024-05-01 05:44:24', '2024-05-01 05:44:24'),
(220, 'Sriram Sunkari', 'sriramsunkari2005@gmail.com', '9702624869', 'JM Patel', 6, 'B', '2024-05-01 05:54:07', '2024-05-01 05:54:07'),
(221, 'Eknath Dhanappa Shejul', 'eknathshejul24@gmail.com', '9321424877', 'F.G. Naik college', 6, 'I want to learn java', '2024-05-01 06:07:20', '2024-05-01 06:07:20'),
(222, 'Ansari Mohammad Arqam parvez', 'arqamansari914@gmail.com', '8104272218', 'Lala lajpat rai college', 6, '...', '2024-05-01 06:07:34', '2024-05-01 06:07:34'),
(223, 'Satish Vishwakarma', '13vsatish@gmail.com', '8850827184', 'Satish Pradhan Dnyanasadhana College, Thane', 6, 'hmm', '2024-05-01 06:42:06', '2024-05-01 06:42:06'),
(224, 'Vishal', 'shortvnap@gmail.com', '7769935689', 'Satish Pradhan DnyaSadhna college', 6, 'Good', '2024-05-01 06:42:16', '2024-05-01 06:42:16'),
(225, 'Ms.Sapana Mahajan', 'mahajansapana@gmail.com', '8879699763', 'Satish Pradhan Dyansadhna college Thane', 6, 'Hi I m Assistant professor in this college I m interested for this online session...', '2024-05-01 06:44:51', '2024-05-01 06:44:51'),
(226, 'Shrutika chikane', 'shrutikac211@gmail.com', '9321636340', 'F g naik college', 6, 'Java course', '2024-05-01 06:52:50', '2024-05-01 06:52:50'),
(227, 'ganesh yuvraj patil', 'ganesh8591316174@gmail.com', '8591316174', 's.k.college seawoods', 6, 'i want to become expert in java i dont have any base so i want to make base clear.', '2024-05-01 07:03:41', '2024-05-01 07:03:41'),
(228, 'Nilesh R Yadav', 'Ynilesh276@gmail.com', '8591344966', 'Satish pradhaan Dnysadhna college', 6, 'I willing to do these course', '2024-05-01 07:18:07', '2024-05-01 07:18:07'),
(229, 'Nilesh R Yadav', 'Ynilesh276@gmail.com', '8591344966', 'Satish pradhaan Dnysadhna college', 6, 'I willing to do these course', '2024-05-01 07:18:07', '2024-05-01 07:18:07'),
(230, 'Shravani sunil jadhav', 'jdhvshravani10@gmail.com', '8169207270', 'Elphinstone college', 6, 'I want to learn', '2024-05-01 07:22:17', '2024-05-01 07:22:17'),
(231, 'Tauhee Qureshi', 'tauhidq00@gmail.com', '9619911653', 'Elphistone college', 6, 'I a bsc IT students', '2024-05-01 07:25:31', '2024-05-01 07:25:31'),
(232, 'Saniya Momin', 'mominsaniya15@gmail.com', '8928614123', 'Elphinstone College', 6, 'I am excited to learn about java', '2024-05-01 07:37:46', '2024-05-01 07:37:46'),
(233, 'Chinmay Patil', 'ChinmayPatil2704@gmail.com', '9321789196', 'Patkar varde college', 6, 'Interested in course', '2024-05-01 07:38:38', '2024-05-01 07:38:38'),
(234, 'Anita achare', 'achareanita15@gmail.com', '8692099695', 'F. G naik college', 6, 'Hi there', '2024-05-01 07:39:33', '2024-05-01 07:39:33'),
(235, 'Sairaj Janardan Patil', 'patilsairaj434@gmail.com', '8010233295', 'VIVA College of Arts,Commerce and Science', 6, 'A Full stack with JAVA', '2024-05-01 07:48:19', '2024-05-01 07:48:19'),
(236, 'Komal', 'komal1164501@gmail.com', '8928370159', 'Tilak', 6, 'Want to leaner more', '2024-05-01 07:48:41', '2024-05-01 07:48:41'),
(237, 'Sumit Mishra', '2005sumitmishra@gmail.com', '7397870704', 'Reena Mehta college', 6, 'I won\'t to gain knowledge and abilities about Full stack development.', '2024-05-01 08:07:01', '2024-05-01 08:07:01'),
(238, 'Harshad', 'harshadjoil15@gmail.com', '9321884242', 'Patkar varde college', 6, 'Duration of this course?', '2024-05-01 08:07:23', '2024-05-01 08:07:23'),
(239, 'Saloni Pratap Desai', 'desaisaloni2506@gmail.com', '9403163630', 'Shree Pancham khemraj', 6, 'Not any message', '2024-05-01 08:30:55', '2024-05-01 08:30:55'),
(240, 'Waliullah Shaikh', 'sayeedfaiz1973@gmail.com', '8451974979', 'Akbar peerbhoy Anjuman i Islam college', 6, 'I\'m student of FYBCA', '2024-05-01 08:32:54', '2024-05-01 08:32:54'),
(241, 'Paresh Rajan Malkar', 'pareshmalka04@gmail.com', '8379028376', 'Spkm sawantwadi', 6, 'Java', '2024-05-01 08:33:10', '2024-05-01 08:33:10'),
(242, 'Diksha patil', 'dikshuu83@gmail.com', '8329586856', 'MATRUSHRI KASHIBEN MOTILAL PATEL SENIOR COLLEGE OF COMMERCE & SCIENCE', 6, 'I want begin career in JAVA as a Full Stack Developer', '2024-05-01 08:33:36', '2024-05-01 08:33:36'),
(243, 'Yograj Bista', 'yograjbista9819@gmail.com', '7715907032', 'F.G. naik College', 6, 'I want to learn.', '2024-05-01 08:36:52', '2024-05-01 08:36:52'),
(244, 'Abdul Mannan', 'abdulmannan25682@gmail.com', '8006996951', 'Akbar peerbhoy college', 6, 'Java', '2024-05-01 08:58:59', '2024-05-01 08:58:59'),
(245, 'Shivam Varma', 'sv9224316541@gmail.com', '9167593064', 'Satish Pradhan Dnyansadhana college Thane', 6, 'NA', '2024-05-01 09:07:09', '2024-05-01 09:07:09'),
(246, 'Arshaan Mullah Faiyaz', 'arshaanproject@gmail.com', '7208748880', 'Akbar peerbhoy college', 6, 'I want to join this course', '2024-05-01 09:14:58', '2024-05-01 09:14:58'),
(247, 'Suraj Tiwari', 'st102854@gmail.com', '8104165629', 'Ln college', 6, 'Hello', '2024-05-01 09:44:57', '2024-05-01 09:44:57'),
(248, 'Shrutika Suryakant Salunkhe', 'shrutikasalunkhe2907@gmail.com', '8169983295', 'SK Tilak Sewood', 6, 'I am exited for session', '2024-05-01 09:49:14', '2024-05-01 09:49:14'),
(249, 'Priyanshu Gupta', 'priyanshuguptantc369@gmail.com', '8286648420', 'JASHBHAI MAGANBHAI PATEL COLLEGE OF COMMERCE', 6, 'Waiting eagerly for this session', '2024-05-01 09:57:53', '2024-05-01 09:57:53'),
(250, 'Mardhekar Shivani Shankar', 'shivanimardhekar2510@gmail.com', '9518734711', 'F g naik college Koperkhairane', 6, 'Sy BSC IT student', '2024-05-01 10:00:15', '2024-05-01 10:00:15'),
(251, 'Harshada  Dattaram Khandare', 'khandareh501@gmail.com', '8308037919', 'S h kelkar college devgad', 6, 'Thank you for give me this opportunity', '2024-05-01 10:22:22', '2024-05-01 10:22:22'),
(252, 'Rutuja Rajesh Popkar', 'rutupopkar@gmail.com', '8483903794', 'Sant Rawool Maharaj Mahavidyalaya, Kudal', 6, '-', '2024-05-01 10:24:46', '2024-05-01 10:24:46'),
(253, 'Rahul Rajendra lot', 'lotrahul20@gmail.com', '9322679329', 'Sant Rawool maharaj college Kudal', 6, 'Hello', '2024-05-01 10:24:51', '2024-05-01 10:24:51'),
(254, 'Sabina Dsouza', 'sabinadd21@gmail.com', '9403863045', 'Spk', 6, 'Hi. I m from SPK college, Sawantwadi, sindhudurg Maharashtra', '2024-05-01 10:25:48', '2024-05-01 10:25:48'),
(255, 'Geeta gawade', 'geetagawade312@gmail.com', '8805691961', 'Srm college kudal', 6, 'I would love to learn about programming and I think this will be a valuable skill to learn', '2024-05-01 10:33:22', '2024-05-01 10:33:22'),
(256, 'Namrata shantaram Parab', 'namrataparab312@gmail.com', '9322720379', 'Sant Rawool Maharaj Mahavidyalaya, Kudal', 6, 'I Interested in learning more and new things that can be encouraged myself', '2024-05-01 10:40:32', '2024-05-01 10:40:32'),
(257, 'Srushti Sandeep Samant', 'samantsrushti05@gmail.com', '8857088438', 'Sant Rawool Maharaj Mahavidyalaya, Kudal, sindhudurg', 6, '-', '2024-05-01 10:42:53', '2024-05-01 10:42:53'),
(258, 'Ishwari Tushar Kalsekar', 'ishwarikalsekar29@gmail.com', '7057919574', 'Sant Rawool Maharaj Mahavidhyalay Kudal', 6, 'Hello, I would love to join the course and spend my summer vacation with you all', '2024-05-01 10:49:34', '2024-05-01 10:49:34'),
(259, 'Jasmin Hasnul Banna Syed', 'sayyedjasmin1172@gmail.com', '9892168545', 'Elphinstone College', 6, 'willing to learn Java to make career in software development', '2024-05-01 10:50:45', '2024-05-01 10:50:45'),
(260, 'Tejas parab', 'tejasparab731@gmail.com', '8767527548', 'Srm college kudal', 6, 'Java is my favorite language', '2024-05-01 10:50:47', '2024-05-01 10:50:47'),
(261, 'Siddhi Talawanekar', 'siddhitala7@gmail.com', '9075109434', 'NCRD\'S Sterling institute of Management', 6, 'No', '2024-05-01 11:04:03', '2024-05-01 11:04:03'),
(262, 'Sahil Kadolkar', 'sahilkadolkar64@gmail.com', '9834779130', 'SRM College Kudal', 6, 'I am interested', '2024-05-01 11:19:25', '2024-05-01 11:19:25'),
(263, 'Shraddha Manoj Bandekar', 'shraddhabandekar4743@gmail.com', '7744925612', 'SRM college in kudal', 6, 'I like coding in java language and I also interested in this course', '2024-05-01 11:20:47', '2024-05-01 11:20:47'),
(264, 'Isha Patil', 'patilisha453@gmail.com', '8779091650', 'Ghanyshamdas saraf college', 6, 'Waiting for learning new skills', '2024-05-01 11:21:01', '2024-05-01 11:21:01'),
(265, 'Shraddha Manoj Bandekar', 'shraddhabandekar4743@gmail.com', '7385711524', 'SRM college in kudal', 6, 'I like coding in java language and I also interested to work on java developer', '2024-05-01 11:24:53', '2024-05-01 11:24:53'),
(266, 'Diksha prabhukeluskar', 'dikshaprabhukeluskar@gmail.com', '8087890559', 'Sant Rawool Maharaj college, kudal', 6, 'The good course', '2024-05-01 11:31:01', '2024-05-01 11:31:01'),
(267, 'Pragya Vishwakarma', 'mepragyavishwakarma@gmail.com', '8097608381', 'JM Patel college', 6, 'Interested', '2024-05-01 11:35:12', '2024-05-01 11:35:12'),
(268, 'Chinmay Angre', 'chinmayangre2004@gmail.com', '9321365927', 'Sk college seawoods', 6, 'Make the best use of summer vacation', '2024-05-01 11:57:20', '2024-05-01 11:57:20'),
(269, 'Druti Shivratri', 'druti.shivratri@gmail.com', '9167146517', 'MKM Patel', 6, '..', '2024-05-01 12:01:13', '2024-05-01 12:01:13'),
(270, 'Princy Rajak', 'rajatkaran088@gmail.com', '9769551627', 'MKM Patel', 6, 'No', '2024-05-01 12:05:38', '2024-05-01 12:05:38'),
(271, 'Ankita Sharma', 'ankitarsharma2005@gmail.com', '8657304018', 'SK College Seawood, Nerul(E)', 6, 'I want to join the online session of OOPs with JAVA and want to learn new things and new concepts.', '2024-05-01 12:41:53', '2024-05-01 12:41:53'),
(272, 'Pushkar Prashant kinalekar', 'rogueop14@gmail.com', '9324603687', 'Patkar Varde College', 6, '.', '2024-05-01 13:03:43', '2024-05-01 13:03:43'),
(273, 'Ravindra', 'panadaravindra2005@gmail.com', '8097014715', 'J M Patel college of commerce', 6, 'Happy', '2024-05-01 13:28:41', '2024-05-01 13:28:41'),
(274, 'Shubham Pawar', 'shubham2003pawar@gmail.com', '8600507452', 'Siddharth College', 6, 'Excited for that session', '2024-05-01 13:35:01', '2024-05-01 13:35:01'),
(275, 'Deepali Jaiswar', 'deepalijaiswar2003@gmail.com', '8652029872', 'Kishinchand Chellaram', 6, 'Interested in Full Stack with Java', '2024-05-01 16:45:12', '2024-05-01 16:45:12'),
(276, 'Nafisa Ansari', 'nafisa12ansari@gmail.com', '7303605803', 'Patkar Varde College', 6, 'I like to join this course', '2024-05-01 19:06:43', '2024-05-01 19:06:43'),
(277, 'Mohan Hanumant Gawade', 'gawademohan002@gmail.com', '9168205846', 'Sant Rawool Maharaj Mahavidyalaya Kudal', 6, 'I am interested to join this course.I am searching for job and its a very great opportunity for me.', '2024-05-01 20:57:52', '2024-05-01 20:57:52'),
(278, 'Ashvini Mestry', 'ashvinimestry24@gmail.com', '9404462436', 'Shri pancham khemraj Sawantwadi', 6, 'It\'s a good apportunity', '2024-05-01 21:54:51', '2024-05-01 21:54:51'),
(279, 'Sushila', 'existence204@gmail.com', '9920551991', 'Satish Pradhan Dnyanasadhana College', 6, 'I am interested and passionate about learning things in Java.', '2024-05-01 22:07:41', '2024-05-01 22:07:41'),
(280, 'Anshuka Ravindra Mahagaonkar', 'anshukamahagaonkar3@gmail.com', '9321445151', 'Patkar College', 6, 'Full stack development', '2024-05-01 22:12:57', '2024-05-01 22:12:57'),
(281, 'DHURI GANESH DAMA', 'gdhuri160@gmail.com', '9545645335', 'S.R.M college kudal', 6, 'My name is Ganesh Dhuri.i am computer science students.', '2024-05-01 22:21:32', '2024-05-01 22:21:32'),
(282, 'Girish latake', 'girishlatake2005@gmail.com', '9372873388', 'S.K Tilak college, seawoods', 6, 'Learn for java', '2024-05-01 22:53:30', '2024-05-01 22:53:30'),
(283, 'Anuja Kapoor', 'kapooranuja39@gmail.com', '8600213411', 'Satish Pradhan Dnyanasadhana College', 6, 'I\'m very eager to learn from this upcoming course', '2024-05-01 22:56:38', '2024-05-01 22:56:38'),
(284, 'Anju Manral', 'anjumanral@acharyamarathecollege.in', '9869017783', 'N.G. ACHARYA & D.K. Marathe college', 7, 'Registered', '2024-05-01 23:11:36', '2024-05-01 23:11:36'),
(285, 'kanchan prajapati', 'prajapatikanchane53@gmail.com', '9321854876', 'patkar varde college', 7, 'I am second year student', '2024-05-01 23:29:33', '2024-05-01 23:29:33'),
(286, 'Atharva Datar', 'atharvadatar32@gmail.com', '9769469870', 'Patkar Varde College', 7, 'I would like to attend the course.', '2024-05-01 23:30:21', '2024-05-01 23:30:21'),
(287, 'Vibha Watkar', 'vibha.watkar@gmail.com', '7977471711', 'Patkar Varde College', 7, '.', '2024-05-01 23:32:25', '2024-05-01 23:32:25'),
(288, 'Anshuka Ravindra Mahagaonkar', 'anshukamahagaonkar3@gmail.com', '9321445151', 'Patkar College', 7, 'Java', '2024-05-01 23:37:01', '2024-05-01 23:37:01'),
(289, 'Jacob', 'abraj5833694@gmail.com', '8591507771', 'Patkar varde college', 7, 'Hello', '2024-05-01 23:45:39', '2024-05-01 23:45:39'),
(290, 'Sakshi Gurudas Keluskar', 'sakshikeluskar2005@gmail.com', '9423571063', 'S.P.K.college sawantwadi', 6, 'I want to register this course', '2024-05-01 23:50:56', '2024-05-01 23:50:56'),
(291, 'Snehal sachindra sawant', 'sawantsnehal164@gmail.com', '8432744627', 'S.P.K. College Sawantwadi', 6, 'I want to register this course', '2024-05-01 23:57:48', '2024-05-01 23:57:48'),
(292, 'Ovaise Shaikh Dastgir', 'owaisrazashaikh55@gmail.com', '8369818907', 'Patkar Varde College', 7, 'I am interested', '2024-05-02 00:00:50', '2024-05-02 00:00:50');
INSERT INTO `promo_session_registration` (`id`, `name`, `email`, `contact`, `company_college_name`, `promo_session_id`, `message`, `created_at`, `updated_at`) VALUES
(293, 'Sakshi santosh pawar', 'sakshipawar1704@gmail.com', '7208499228', 'Patkar varde College', 7, 'Like to join', '2024-05-02 00:07:27', '2024-05-02 00:07:27'),
(294, 'Ashwini Wadekar', 'ashwiniwadekar704@gmail.com', '9136398133', 'Patkar Varde college Goregaon West', 7, 'Nothing', '2024-05-02 00:10:20', '2024-05-02 00:10:20'),
(295, 'Sonal Nilesh Patil', 'sonalnemade@gmail.com', '9967852150', 'KSD\'s Model College (Autonomous), Thakurli East', 7, '.', '2024-05-02 00:27:56', '2024-05-02 00:27:56'),
(296, 'Kashish Gupta', 'kashishgupta9309@gmail.com', '8928549865', 'College', 7, 'Nil', '2024-05-02 00:30:16', '2024-05-02 00:30:16'),
(297, 'Shubham Gupta', 'subhamgupta.pvt@gmail.com', '8369116880', 'Patkar Varde College', 7, 'None', '2024-05-02 00:33:23', '2024-05-02 00:33:23'),
(298, 'Momin Misbah Fahim Ahmed', 'misbahiit22@gmail.com', '9372681306', 'Patkar Varde College', 7, 'I am interested in working java and would like to join the session. Thanks.', '2024-05-02 00:36:15', '2024-05-02 00:36:15'),
(299, 'Shaikh Aliya Salim', 'Aliyashk142@gmail.com', '7208158897', 'Patkar Varde College', 7, 'I am interested in JAVA Development and i want to explore this opportunities while joining online session of Tech expert', '2024-05-02 00:37:08', '2024-05-02 00:37:08'),
(300, 'Qureshi mohd jishan', 'qmohdjishan@gmail.com', '9324156252', 'Akbar peerbhay college', 6, 'I am students of BCA', '2024-05-02 00:37:31', '2024-05-02 00:37:31'),
(301, 'Sonali Chandrakant Pawar', 'pawarsonali2004@gmail.com', '9137711537', 'Patkar Varde College', 7, 'I am joining', '2024-05-02 00:46:08', '2024-05-02 00:46:08'),
(302, 'Bushra Amjad Khan', 'bushrakhan42394@gmail.com', '9833555220', 'Patkar Varde College', 7, 'I am interested in this session.', '2024-05-02 00:46:50', '2024-05-02 00:46:50'),
(303, 'Akanksha Vilas ambulkar', 'akankshaambulkar98@gmail.com', '9004640509', 'Patkar varde college', 7, 'I am joining', '2024-05-02 00:52:52', '2024-05-02 00:52:52'),
(304, 'Shweta Pimpale', 'shweta.pimpale2003@gmail.com', '8104324449', 'Patkar-Varde College', 7, '.', '2024-05-02 00:57:14', '2024-05-02 00:57:14'),
(305, 'Sayali Sunil Kuswarkar', 'kuswarkarsayali@gmail.com', '9321597007', 'Patkar Varde College', 7, 'i want to learn about Software Development Life Cycle (SDLC) including requirements gathering, design, implementation, testing, deployment, and maintenance.', '2024-05-02 01:03:42', '2024-05-02 01:03:42'),
(306, 'Iqra sayyed', 'iqrasayyed.xc@gmail.com', '9326816406', 'S.K.college of science and commerce', 6, 'Yes ,I want to join the session', '2024-05-02 01:09:56', '2024-05-02 01:09:56'),
(307, 'Pranjali Dilip Chaudhari', 'pranjalichaudhari205@gmail.com', '9823467851', 'D.G. Ruparel College of Arts, Science and Commerce', 7, 'Would like to learn the basics to advance', '2024-05-02 01:16:13', '2024-05-02 01:16:13'),
(308, 'Harshada Dhumal', 'harshadadhumal12@gmail.com', '9137217575', 'Sk college of science and commerce', 6, 'I would like to join the free course of OOPs with Java and get into the world of full stack with java', '2024-05-02 01:27:50', '2024-05-02 01:27:50'),
(309, 'Sakshi Chandrakant Wadekar', 'sakshiwadekar39@gmail.com', '9372689542', 'Patkar Varde College', 7, 'I want to learn the SW Engineering Using Java , develop my skills and learn different languages', '2024-05-02 01:40:44', '2024-05-02 01:40:44'),
(310, 'vinay raju chivilkar', 'vinaychivilkar2@gmail.com', '8928360839', 'Patkar Varde College', 7, 'I want to learn the SW Engineering Using Java , develop my skills and learn different languages', '2024-05-02 01:42:43', '2024-05-02 01:42:43'),
(311, 'Raushan', 'raushan.raj@enrcloud.com', '9693203090', 'Enr cloud pvt limited', 7, 'Hi', '2024-05-02 01:48:24', '2024-05-02 01:48:24'),
(312, 'MISHRA ANURAG ARUN KUMAR', 'anuragmishra4499@gmail.com', '9152654490', 'BVCOE', 7, 'Na', '2024-05-02 02:12:48', '2024-05-02 02:12:48'),
(313, 'Saad', 'saadshaikh970@gmail.com', '9136045058', 'A.R kalsekar polytechnic', 7, '.', '2024-05-02 02:25:40', '2024-05-02 02:25:40'),
(314, 'Siddhi Sitaram Raorane', 'siddhiraorane06@gmail.com', '9619381603', 'Patkar Varde College', 7, 'I am joining', '2024-05-02 02:33:02', '2024-05-02 02:33:02'),
(315, 'Sanjay Jaiswar', 'sanjaiswar@gmail.com', '9967806575', 'Code Cruise', 6, 'I am Interested', '2024-05-02 02:46:31', '2024-05-02 02:46:31'),
(316, 'Nikhil Srivastav', 'ksrivastav2114@gmail.com', '9076706821', 'IGNOU', 7, 'Eager to learn Java', '2024-05-02 04:17:55', '2024-05-02 04:17:55'),
(317, 'Isha Vijay Vishwakarma', 'isha45471@gmail.com', '8928518341', 'SK College of science and commerce', 6, 'I want to learn oop with java', '2024-05-02 04:48:59', '2024-05-02 04:48:59'),
(318, 'Shubham', 'sj3470245@gmail.com', '9930943265', 'Patkar-Varde college', 7, 'Interested in Java programming and it\'s real world applications', '2024-05-02 05:37:52', '2024-05-02 05:37:52'),
(319, 'Shubhangi D Shinde', 'sdds.shinde@gmail.com', '7738254798', 'Dnyan Ganga Education Trust\'s Degree and Junior college of Arts,  Commerce and Science', 7, 'Like to learn more things', '2024-05-02 05:47:15', '2024-05-02 05:47:15'),
(320, 'Neha Krishna Rane', 'raneneha386@gmail.com', '8263813866', 'SPK College Sawantwadi', 7, 'Thanks for organising this session.', '2024-05-02 05:53:45', '2024-05-02 05:53:45'),
(321, 'Aarthi Suresh', 'saarthi726@gmail.com', '9892699481', 'SIES (NERUL)', 6, 'It is helpful for me', '2024-05-02 07:29:16', '2024-05-02 07:29:16'),
(322, 'Prof.Kamalam Sundarrajan', 'kamalam.sundarrajan@gmail.com', '9619595640', 'The Institute of Business Studies and Research', 7, 'How java is  used to write micro service', '2024-05-02 07:58:07', '2024-05-02 07:58:07'),
(323, 'Gayatri Bakhtiani', 'gayatribakhtiani@tsdcmumbai.in', '9930746068', 'Thakur Shyamnarayan Degree College Kandivali East', 7, 'Much needed', '2024-05-02 08:06:52', '2024-05-02 08:06:52'),
(324, 'Saloni Mishra', 'salonimishra2700@gmail.com', '7977040564', 'Elphinstone college', 6, 'Registration for the session for opp Java', '2024-05-02 08:08:52', '2024-05-02 08:08:52'),
(325, 'Saima khan', 'khansammo15@gmail.com', '8591414299', 'patkar varde college', 7, 'I hope it will be a good session', '2024-05-02 08:25:33', '2024-05-02 08:25:33'),
(326, 'Aditya potekar', 'adityaxyz955@gmail.com', '8369744232', 'Kle college', 7, 'Learning purpose', '2024-05-02 08:26:57', '2024-05-02 08:26:57'),
(327, 'Mrs. Richa Tushar Kulal', 'richa.pise29@gmail.com', '9823627570', 'Satish Pradhan Dnyanasadhana College, Thane', 6, 'Hello, I am Faculty from Dnyanasadhana College Thane want to join this course.', '2024-05-02 08:30:06', '2024-05-02 08:30:06'),
(328, 'Aishwarya nandu jagdale', 'aishwaryajagdale351@gmail.com', '9152813327', 'Kle society kamothe', 7, 'I am fresher', '2024-05-02 08:30:58', '2024-05-02 08:30:58'),
(329, 'Prachi Budhaji Mestri', 'mestriprachi790@gmail.com', '9623274522', 'S.P.K Sawantwadi', 6, 'I want to register this course', '2024-05-02 08:51:55', '2024-05-02 08:51:55'),
(330, 'vighnesh balasaheb ghogare', 'vighneshghogare@gmail.com', '7219893759', 's k college seawood', 6, 'exciting for course', '2024-05-02 08:56:54', '2024-05-02 08:56:54'),
(331, 'Prashant Basveshwar Machigar', 'prashantmachigar1010@gmail.com', '9356317995', 'Dr. Ambedkar college, wadala', 6, 'New learning code java', '2024-05-02 09:19:03', '2024-05-02 09:19:03'),
(332, 'Nikita hanpade', 'nikitahanpade@gmail.com', '8668749563', 'S.P.K.college sawantwadi', 7, 'Sw engineering using Java', '2024-05-02 09:24:38', '2024-05-02 09:24:38'),
(333, 'siddhesh chawatekar', 'siddheshchawatekar872@gmail.com', '8767108696', 'Kirti college dadar', 6, 'Interested to learn java', '2024-05-02 09:38:15', '2024-05-02 09:38:15'),
(334, 'Divya Subhash mangaonkar', 'mangaonkardivya@gmail.com', '9307479483', 'Sant rawool maharaj mahavidyalaya kudal', 6, 'Interested to joining it and want to learn something new.', '2024-05-02 09:48:23', '2024-05-02 09:48:23'),
(335, 'Shivani', 'shivanichavan827@gmail.com', '9768165775', 'F G Naik College', 6, 'Register are be confirmed', '2024-05-02 10:07:50', '2024-05-02 10:07:50'),
(336, 'Manasi Ravi Pawar', 'manasi3059@gmail.com', '9136644498', 'JES College', 6, 'I would ilke to learn OOPS with JAVA and get the certificate for the same', '2024-05-02 10:16:28', '2024-05-02 10:16:28'),
(337, 'aryan suthar', 'aryansuthar3670@gmail.com', '8591161022', 'Reena meetha collage', 6, 'I\'m excited for this opportunity', '2024-05-02 11:36:50', '2024-05-02 11:36:50'),
(338, 'Akanksha Sandeep Netkar', 'mayanetkar27@gmail.com', '9930208361', 'F.G.Naik College', 6, 'Excited for the session to learn something new and different... Thank you for organizing this sessions', '2024-05-02 11:40:08', '2024-05-02 11:40:08'),
(339, 'Shreya Singh', 'shreyasingh955955@gmail.com', '9559553928', 'SK college science and commerce', 6, 'I want to learn this two courses', '2024-05-02 11:41:36', '2024-05-02 11:41:36'),
(340, 'Sanjana saindane', 'sanjana4869@gmail.com', '9004390225', 'Sk tilak college', 6, 'NA', '2024-05-02 13:25:56', '2024-05-02 13:25:56'),
(341, 'Nasrin Inamdar', 'nasrininamdar49@gmail.com', '9322898947', 'Tilak education society\'s SK College', 6, 'NA', '2024-05-02 13:51:49', '2024-05-02 13:51:49'),
(342, 'Mohammad Anas shaikh', 'anasacs99@gmail.com', '9004553541', 'Akbar peerboy college', 6, 'Bscit student', '2024-05-02 20:19:47', '2024-05-02 20:19:47'),
(343, 'Abdullah', 'atashaikhazmi111@gmail.com', '9588608919', 'Akbar peerbhoy college of commerce', 6, 'I want to do op with java course from you\r\n\r\nFeedback\r\n\r\nImprove your speaking', '2024-05-02 21:15:53', '2024-05-02 21:15:53'),
(344, 'Nitesh nirmal', 'niteshnirmal025@gmail.com', '9082957970', 'Lala lajpat rai college of commerce and economics', 7, 'Thank you so much', '2024-05-02 21:30:31', '2024-05-02 21:30:31'),
(345, 'Prathamesh Uttam Sawant', 'prathameshsawant065@gmail.com', '9403234640', 'S.P.K college sawantwadi', 7, '.', '2024-05-02 21:52:44', '2024-05-02 21:52:44'),
(346, 'Riddhi patekar', 'riddhipatekar03@gmail.com', '8591470742', 'Jogeshwari education society of Commerce, arts and information technology', 6, 'I want to learn java', '2024-05-02 22:45:29', '2024-05-02 22:45:29'),
(347, 'Kajal chauhan', 'kajal.chauhan1703@gmail.com', '8928356170', 'J.M.patel college of commerce', 6, 'I want to learn more in Java and oop', '2024-05-02 23:19:19', '2024-05-02 23:19:19'),
(348, 'Salman Nadeem Ahmed shaikh', 'shaikhsalman1670@gmail.com', '8928133737', 'Akbar peerbhoy college', 6, 'I am writing to express my interest in joining your Java course. As I am passionate about programming and eager to expand my skills, I believe that your course would provide me with the comprehensive learning experience I am seeking.', '2024-05-02 23:31:47', '2024-05-02 23:31:47'),
(349, 'Disha parab', 'dishaparabo6@gmail.com', '8459579229', 'Shri panchm khemraj sawntwadi', 6, 'I want to register this course', '2024-05-02 23:58:06', '2024-05-02 23:58:06'),
(350, 'Sneha Bharat lad', 'snehalad5528@gmail.com', '7977037974', 'S.k college of science and commerce', 6, 'Want to register', '2024-05-03 01:08:32', '2024-05-03 01:08:32'),
(351, 'Kunda pravin kalangutkar', 'kundakalangutkar@gmail.com', '7020096176', 'College', 6, 'Student', '2024-05-03 01:23:37', '2024-05-03 01:23:37'),
(352, 'Samruddhi Sanjay Kadam', 'samruddhikadam811@gmail.com', '8433555124', 'Patkar Varde College', 7, 'I would like to join the Session', '2024-05-03 01:29:53', '2024-05-03 01:29:53'),
(353, 'Vaishali Suresh Rawool', 'vaishurawool04@gmail.com', '8390458200', 'SPK Sawantwadi', 6, 'Student', '2024-05-03 01:34:58', '2024-05-03 01:34:58'),
(354, 'Vinit Singh', '2004vineet.singh@gmail.com', '8291901546', 'KLE college kalamboli', 7, 'Interested in a\r\nThis field want to learn and earn', '2024-05-03 02:45:22', '2024-05-03 02:45:22'),
(355, 'Kshitij', 'kshitij1910more@gmail.com', '9356288076', 'Sinhagad college of science', 6, 'I want to', '2024-05-03 03:02:48', '2024-05-03 03:02:48'),
(356, 'Shubhangi Sanjay Singh', 'shubhangissingh09@gmail.com', '8657598355', 'Mkmp senior college', 6, 'Thankyou', '2024-05-03 03:32:47', '2024-05-03 03:32:47'),
(357, 'Manurani Balwan', 'manuranibalwan@gmail.com', '7045606105', 'KLE Society\'s Science and Commerce College in Kalamboli, Navi Mumbai.', 7, 'Eager to explore new things.', '2024-05-03 03:33:41', '2024-05-03 03:33:41'),
(358, 'Chinmay Patil', 'ChinmayPatil2704@gmail.com', '9321789196', 'Patkar varde college', 7, 'Interested in course', '2024-05-03 03:48:34', '2024-05-03 03:48:34'),
(359, 'Om kukawalkar', 'kukawalkarom@gmail.com', '9820942579', 'Patkar college', 7, 'Interested in this Course', '2024-05-03 03:49:02', '2024-05-03 03:49:02'),
(360, 'Gaurangi', 'ggaurangidhuri@gmail.com', '9823155583', 'Patkar varde college', 7, 'Want to attend', '2024-05-03 03:55:54', '2024-05-03 03:55:54'),
(361, 'Shreeraj mohite', 'mohiteshreeraj@gmail.com', '8108259481', 'Patkar varde college', 7, 'Nothing', '2024-05-03 05:40:37', '2024-05-03 05:40:37'),
(362, 'Rauda Dhoba', 'raudadhoba@gmail.com', '7894355607', 'Kle', 7, 'Want to be learn something new', '2024-05-03 05:49:47', '2024-05-03 05:49:47'),
(363, 'Arun kannaujiya', 'arunkannaujiya8828@gmail.com', '8097008038', 'J.M.patel sanshkardham college', 6, 'Hello sir /mam', '2024-05-03 06:17:06', '2024-05-03 06:17:06'),
(364, 'Pranav Nidhalkar', 'pranavnidhalkar6941@gmail.com', '8793934154', 'Singhad College Of Science', 6, 'Thank You', '2024-05-03 07:37:30', '2024-05-03 07:37:30'),
(365, 'Muskan Gulabchandra Maurya', 'muskan.maurya0019@gmail.com', '9664990039', 'L. S. Raheja college of arts and Commerce', 6, 'For improve my skill.', '2024-05-03 07:49:11', '2024-05-03 07:49:11'),
(366, 'Jasmin Shah', '31jamine07@gmail.com', '8591757611', 'Ls raheja collega', 6, '.', '2024-05-03 07:54:53', '2024-05-03 07:54:53'),
(367, 'Sharmin Kazi', 'sharminkazi328@gmail.com', '8286633993', 'L.S Raheja college of arts and commerce', 6, 'I am BSc.IT student', '2024-05-03 08:01:18', '2024-05-03 08:01:18'),
(368, 'Devesh Ghadigaonkar', 'deveshghadigaonkar@gmail.com', '7208380991', 'Patkar-Varde College, goregaon', 6, 'I am devesh, interested to do this course of OOPs with JAVA', '2024-05-03 08:11:48', '2024-05-03 08:11:48'),
(369, 'Sujal Yadav', '52g2021yadavsv@gmail.com', '9820841944', 'J.m.patel college', 7, 'I\'m interested learning new thing', '2024-05-03 11:57:16', '2024-05-03 11:57:16'),
(370, 'Shaikh Mohd Shahabuddin Mohd Nasir', 'shaikhmohdshahabuddinshaikh@gmail.com', '8877161067', 'A p college', 6, 'I m interested for Java language Because I M a Java developer', '2024-05-03 13:27:53', '2024-05-03 13:27:53'),
(371, 'Ashutosh Pandey', 'ashutosh152004@gmail.com', '7559469756', 'Patkar varde college', 7, 'Code', '2024-05-03 19:05:25', '2024-05-03 19:05:25'),
(372, 'ANIKET ANAND GAWAS', 'aniketgawas19@gmail.com', '9403323995', 'SPK COLLAGE SAWANTWADI', 6, '.', '2024-05-03 23:37:03', '2024-05-03 23:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `seo_detail`
--

CREATE TABLE `seo_detail` (
  `id` int(11) NOT NULL,
  `subject_type` enum('course_type','course','home','promo_session') NOT NULL,
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

--
-- Dumping data for table `seo_detail`
--

INSERT INTO `seo_detail` (`id`, `subject_type`, `subject_id`, `seo_title`, `seo_description`, `seo_keyword`, `is_index`, `is_follow`, `canonical`, `created_at`, `updated_at`) VALUES
(4, 'course', 6, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-12 06:11:09', '2024-04-12 06:11:09'),
(5, 'course', 4, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-12 21:05:38', '2024-04-12 21:05:38'),
(6, 'course', 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-12 21:06:56', '2024-04-12 21:06:56'),
(7, 'course', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-12 21:07:38', '2024-04-12 21:07:38'),
(8, 'course', 7, 'Microsoft AZ 900 Azure Fundamentals', NULL, NULL, NULL, NULL, NULL, '2024-04-14 22:04:45', '2024-04-14 22:23:10'),
(9, 'course', 8, 'Microsoft AZ 104 Azure Administrator', NULL, NULL, NULL, NULL, NULL, '2024-04-14 22:18:23', '2024-04-14 22:22:34'),
(10, 'course', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-14 22:55:11', '2024-04-14 22:55:11'),
(11, 'course', 5, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-16 01:37:42', '2024-04-16 01:37:42'),
(12, 'course_type', 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-16 01:41:39', '2024-04-16 01:45:34'),
(13, 'promo_session', 1, 'Python Fundamentals for Data Science', 'Python Fundamentals for Data Science', 'Python Data Science', NULL, NULL, NULL, '2024-04-16 02:09:28', '2024-04-16 02:09:28'),
(14, 'promo_session', 2, 'Demystifying Data Science by Amer Syed', NULL, 'data science, amer syed, jobs, freshers, training', 1, NULL, NULL, '2024-04-17 04:01:05', '2024-04-17 12:29:57'),
(15, 'promo_session', 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-22 23:16:56', '2024-04-22 23:16:56'),
(16, 'promo_session', 4, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-22 23:16:56', '2024-04-22 23:16:56'),
(17, 'promo_session', 5, 'Data Science For Maths Stats', 'Data Science For Maths Stats', 'Python Data Science ML AI', NULL, NULL, NULL, '2024-04-24 22:36:21', '2024-04-24 22:36:21'),
(18, 'promo_session', 6, 'OOP with Java', 'Object oriented Programming with JAVA', NULL, NULL, NULL, NULL, '2024-04-30 22:57:49', '2024-04-30 22:57:49'),
(19, 'promo_session', 7, 'SW Engineering Using Java', 'Software Engineering in Java focus on full stack development and other applications where Java is used', 'Software Engineering Java full stack', NULL, NULL, NULL, '2024-05-01 21:10:56', '2024-05-01 21:59:32');

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
('8iat5gLBy9TjqEzUhFZQKGZLdZQOUXT5uZQL2FXu', NULL, '103.178.209.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkk3eEpWT2I4NnVUYmRSenhxYkFIVXE4clc1TFhOZHd0NDNmbmt5RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wcm9tby9zZXNzaW9uL3N3LWVuZ2luZWVyaW5nLXVzaW5nLWphdmEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1714797872),
('Fr0Vp9tCcT9s4deiPiBrelmpZ8CrkIlhaGqNS0Hb', NULL, '66.249.79.96', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.118 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnZEOXdxUm1aemxGbEtha3U5RWNtZG95Snh0cGpaVHZNdUxnUGdYMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbEJEYmxCUlpFaFpNbmMzYVRjMlJYWXdWSEZoUjFFOVBTSXNJblpoYkhWbElqb2lkM2h5VUV0a1EySnlaamxFT0Roek16Sm9XVEpZVVQwOUlpd2liV0ZqSWpvaVpqQmlaVFJoTVdSa05UQTRObVkyTWpKbE9HSTBNMkV4TVdGaE1tTmhPRGt6TWpnNE1qaGlNMkkwTUdVNU56SmtNVEl5TWpGaU5HVmlNbUUxTURrNE9DSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1714800294),
('hUUS43Uayna43zJ3cfJIdYFFvXPGq3Yr1STZeMqm', NULL, '42.107.132.235', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWRqa2ZUVVFaSE1EcE1UYXN0SlA0RlJWT05CYjI3RGdDWW5DZHBRbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714800475),
('hYiHhrFNpWYo0vEHqibwcB8Wt6hXv8817qEFQTXn', NULL, '49.36.184.198', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0piTHBUSUlIQkV2cFcwQ2thSU1HSVl2UmtiNm5RbDZEQ1ZCdEtBWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714799249),
('N1nC95QNF8zdgXToWSZTLDwv9xHRi5t9SNttan1N', NULL, '182.48.213.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHNFcVhWU0tOUUhCWjhqSDRNcEQ0QkI1M09PVDlXYnU5U3hmcWVvNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714797542),
('okNHJLUt2vljbBx0BXt7nLDko9CdkKG6j8lMoKDx', NULL, '106.193.175.182', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHhQN1FHWlpWMUJVbVN2Vk1sVXdyMWVsVzBqZWlPRWQ1cEhPS1BpaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wcm9tby9zZXNzaW9uL29vcC13aXRoLWphdmEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1714800257),
('rYPr7BZRTfkx4Z3SygicwkVPzhAsZQTHHK7ZEv4y', NULL, '157.55.39.200', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclpiOW1CdVlrVXVUVVdmcXZkd1ZPTVc0OEwzaVpTbmhzOGo1b1ZvYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714798989),
('v5xkjZrs8CgLaBQre8gWYmzmHkJSIpeZhFJS0zJY', NULL, '66.249.79.98', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia0ZGaEFoNEFYT084TExDdkE5WFJ3TjExQnJKS1dnNEhJb1BSdlU1MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1714794973),
('WAvCjNU4uARQVbyjIxUXGqci3jfGEobjXUe6Afou', NULL, '117.233.86.38', 'Mozilla/5.0 (Linux; Android 12; POCO M2 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUm1zNG1qdVZaanpNd1BMT2szMHVuRTA1YXI5QVBlZ2NRaWhidXhDTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714799224),
('zCLn7P9bAoHqBM2dg1Cn2Pv75fYH11sWBD4K3g7y', 1, '49.36.113.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaWptZFpFMHJJak44NW50RlBTNGxIalpUR20xVWdjTEZxaTF2TzlZQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNjoicHJvbW9fc2Vzc2lvbl9pZCI7aTo3O30=', 1714801622),
('zj5dq72IfG0ZYLlJxy4F9eAiH6pAXsqslIgm2SYF', NULL, '49.32.143.240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlJFNXBOaU9rRU5IaVhWcHBqUmNFYkRTZnRjckZabktaZjR3eWw5YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wcm9tby9zZXNzaW9uL3N3LWVuZ2luZWVyaW5nLXVzaW5nLWphdmEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1714797830);

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
(1, 'HTML', '1712636515.webp', 1, '2024-04-03 23:32:58', '2024-04-08 22:51:55'),
(2, 'CSS', '1712558221.webp', 1, '2024-04-03 23:36:11', '2024-04-08 01:07:01'),
(3, 'MY-SQL', '1712558298.webp', 1, '2024-04-03 23:37:09', '2024-04-08 01:08:18'),
(4, 'JAVASCRIPT', '1712558257.webp', 1, '2024-04-03 23:37:41', '2024-04-08 01:07:37'),
(5, 'Laravel', '1712558313.webp', 1, '2024-04-08 01:08:33', '2024-04-08 01:08:33'),
(6, 'Git', '1712558348.webp', 1, '2024-04-08 01:09:08', '2024-04-08 01:09:08'),
(7, 'Bootstrap', '1712558915.webp', 1, '2024-04-08 01:18:35', '2024-04-08 01:18:35'),
(8, 'Java', '1712559464.webp', 1, '2024-04-08 01:27:44', '2024-04-08 01:27:44'),
(9, 'Spring Boot', '1712559481.webp', 1, '2024-04-08 01:28:01', '2024-04-08 01:28:01'),
(10, 'Angular', '1712559508.webp', 1, '2024-04-08 01:28:28', '2024-04-08 01:28:28'),
(11, 'Deployment', '1712641057.webp', 1, '2024-04-09 00:07:37', '2024-04-09 00:34:48'),
(12, 'MongoDB or MySQL', '1712641717.webp', 1, '2024-04-09 00:16:14', '2024-04-09 00:18:37'),
(13, 'PHP', '1712642767.webp', 1, '2024-04-09 00:36:07', '2024-04-09 00:36:07'),
(14, 'React JS', '1712649426.webp', 1, '2024-04-09 02:27:06', '2024-04-09 02:34:40'),
(15, 'Node JS', '1712649490.webp', 1, '2024-04-09 02:28:10', '2024-04-09 02:28:34'),
(16, 'Express JS', '1712649529.webp', 1, '2024-04-09 02:28:49', '2024-04-09 02:28:49'),
(17, 'Next JS', '1712649561.webp', 1, '2024-04-09 02:29:21', '2024-04-09 02:29:21'),
(18, 'MongoDB', '1712649614.webp', 1, '2024-04-09 02:30:14', '2024-04-09 02:30:14'),
(19, 'Python', '1713163391.webp', 1, '2024-04-11 23:40:59', '2024-04-15 01:13:11'),
(20, 'SQL', '1713163358.webp', 1, '2024-04-11 23:55:15', '2024-04-15 01:12:38'),
(21, 'Machine Learning', '1712899623.webp', 1, '2024-04-11 23:57:03', '2024-04-11 23:57:03'),
(22, 'Docker', '1713163132.webp', 0, '2024-04-12 00:00:20', '2024-04-15 01:08:52'),
(23, 'Deep Learning', '1712899839.webp', 1, '2024-04-12 00:00:39', '2024-04-12 00:00:39'),
(24, 'Statistics', '1712899882.webp', 1, '2024-04-12 00:01:22', '2024-04-12 00:01:22'),
(25, 'Excel', '1712899936.webp', 1, '2024-04-12 00:02:16', '2024-04-12 00:02:16'),
(26, 'Google Colab', '1713163735.webp', 0, '2024-04-12 00:04:44', '2024-04-15 01:18:55'),
(27, 'Power BI', '1713163380.webp', 1, '2024-04-12 00:05:12', '2024-04-15 01:13:00'),
(28, 'Tableau', '1713164708.webp', 1, '2024-04-12 21:48:37', '2024-04-15 01:35:08'),
(29, 'Kubernetes', '1713163156.webp', 1, '2024-04-13 21:24:43', '2024-04-15 01:09:16'),
(30, 'Azure Virtual Machine', '1713161236.webp', 1, '2024-04-14 22:47:24', '2024-04-15 00:37:16'),
(31, 'Azure Virtual Network', '1713162985.webp', 1, '2024-04-14 22:47:43', '2024-04-15 01:06:25'),
(32, 'Azure Storage', '1713161226.webp', 1, '2024-04-14 22:48:20', '2024-04-15 00:37:06'),
(33, 'Microsoft Identity Governance', '1713163205.webp', 1, '2024-04-14 22:49:48', '2024-04-15 01:10:05'),
(34, 'Azure Compliance', '1713161158.webp', 1, '2024-04-14 22:52:19', '2024-04-15 00:35:58'),
(35, 'Azure Active Directory', '1713161133.webp', 1, '2024-04-14 22:52:35', '2024-04-15 00:35:33'),
(36, 'Azure AD Roles', '1713161149.webp', 1, '2024-04-14 22:52:57', '2024-04-15 00:35:49'),
(37, 'Azure Monitor', '1713161185.webp', 1, '2024-04-14 23:00:11', '2024-04-15 00:36:25'),
(38, 'Azure Cost Management', '1713161172.webp', 1, '2024-04-14 23:00:32', '2024-04-15 00:36:12');

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
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternate_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promo_session_id` bigint(20) DEFAULT NULL,
  `session_rating` int(11) DEFAULT NULL,
  `presentation_rating` int(11) DEFAULT NULL,
  `favorite_part` text COLLATE utf8_unicode_ci,
  `recommended_topic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recommend_other` tinyint(1) DEFAULT NULL,
  `suggestion` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`id`, `name`, `email`, `alternate_email`, `contact`, `user_type`, `promo_session_id`, `session_rating`, `presentation_rating`, `favorite_part`, `recommended_topic`, `recommend_other`, `suggestion`, `created_at`, `updated_at`) VALUES
(1, 'sanjaiswar', 'sanjaiswar@gmail.com', NULL, '9967806575', 'random', 1, 10, 10, 'DS', 'Python', 1, 'Increase duration', '2024-05-03 06:37:05', '2024-05-03 06:37:05'),
(2, 'Durgesh Pandey', 'durgeshpandey1310@gmail.com', NULL, '8268108343', 'random', 1, 10, 10, NULL, NULL, 1, NULL, '2024-05-03 07:12:53', '2024-05-03 07:12:53'),
(3, 'Rakesh Sahu', 'email@rakeshsahu.info', NULL, '9702808357', 'random', 1, 10, 10, NULL, NULL, 1, NULL, '2024-05-03 07:17:06', '2024-05-03 07:17:06'),
(4, 'CodeCruise Team', 'salamshaikh9@gmail.com', 'admin@codecruise.in', '9821967863', 'random', 1, 7, 7, 'Feedback', 'Test', 1, 'Test', '2024-05-03 07:19:29', '2024-05-03 07:19:29'),
(5, 'sanjaiswar', 'sanjaiswar@gmail.com', 'sanjaiswar9@gmail.com', '9967806575', 'random', 2, 9, 9, 'all', 'Python', 1, 'duration', '2024-05-03 07:37:13', '2024-05-03 07:37:13');

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
-- Dumping data for table `user_query`
--

INSERT INTO `user_query` (`id`, `name`, `email`, `contact`, `company_college_name`, `course_ids`, `other_course`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Pranav Borchate', 'pranavborchate@gmail.com', '9130973812', 'College', '[\"6\"]', NULL, 'No', '2024-04-17 23:45:51', '2024-04-17 23:45:51'),
(2, 'Vidya  Santosh Bhagat', 'vidyabhagat@gmail.com', '9309394997', 'SRM kudal', '[\"6\"]', NULL, 'Enroll me', '2024-04-18 01:43:28', '2024-04-18 01:43:28'),
(3, 'Snehal Sanjay Naik', 'ssnaik32@gmail.com', '9404778447', 'Shri Pancham Khemraj Mahavidyalaya, sawantwadi', '[\"4\"]', NULL, 'Enroll me', '2024-04-18 03:04:24', '2024-04-18 03:04:24'),
(10, 'Minal', 'minal.penta@icloud.com', '9601290262', 'Edu', '[\"6\"]', NULL, 'Enroll me', '2024-04-23 00:44:59', '2024-04-23 00:44:59'),
(15, 'Samiksha Sanjay Desai', 'desaisamiksha03@gmail.com', '9421094049', 'Shri Pancham Khemraj Mahavidyalaya, Sawantwadi', '[null,\"2\",\"4\",\"6\",\"5\",\"7\",\"8\"]', NULL, 'I am excited for this session', '2024-05-01 00:13:01', '2024-05-01 00:13:01'),
(16, 'Afreen Ashrafalli Khan', 'afreen2382005@gmail.com', '7038405786', 'Shri  Pancham Khemraj Mahavidyalaya Sawantwadi', '[null,\"2\",\"6\",\"5\",\"7\",\"8\"]', NULL, 'I want to learn programming languages', '2024-05-01 00:17:23', '2024-05-01 00:17:23'),
(17, 'Ranjit Gupta', 'ranjitrkg6@gmail.com', '7860408310', 'Lala Lajpat Rai College', '[\"6\"]', NULL, 'Enroll me', '2024-05-01 00:34:05', '2024-05-01 00:34:05'),
(18, 'Nikita', 'nikitahanpade@gmail.com', '8668749563', 'S.P.K.college sawantwadi', '[null,\"1\"]', NULL, 'Php', '2024-05-01 00:47:25', '2024-05-01 00:47:25'),
(19, 'Shruti Mukadam', 'mukadamshruti@gmail.com', '8591528567', 'Lala lajpat rai college of commerce and economics', '[null,\"1\",\"2\",\"5\"]', NULL, 'N/A', '2024-05-01 00:48:27', '2024-05-01 00:48:27'),
(20, 'Neha Shukla', 'nehashukla97667@gmail.com', '8187934259', 'Tilak junior college of science and commerce', '[null,\"1\",\"2\"]', NULL, '\"Thank you for providing this course on OOP with Java. It\'s been incredibly helpful in expanding my knowledge and skills in programming. I appreciate the opportunity to learn from such a valuable resource.\"', '2024-05-01 00:59:51', '2024-05-01 00:59:51'),
(21, 'Usmani saad', 'usmanisaad07@gmail.com', '7208341213', 'Akbar peerbhoy', '[\"6\"]', NULL, 'Enroll me', '2024-05-01 01:02:21', '2024-05-01 01:02:21'),
(22, 'Mubsara', 'mubsarashaikh38@gmail.com', '8652625068', 'SK tilak nehrul', '[null,\"1\",\"2\"]', NULL, 'Needed', '2024-05-01 01:04:05', '2024-05-01 01:04:05'),
(23, 'Mrs. Rajshree Nilesh Pisal', 'rajashree.karnekar@jnanvikasmandal.com', '9029785498', 'Jvm\'s Degree College', '[null,\"1\",\"2\",\"6\",\"5\"]', NULL, 'Looking for better platform to learn new things', '2024-05-01 01:08:42', '2024-05-01 01:08:42'),
(24, 'Gunja', 'gunjashahgps06@gmail.com', '7304342711', 'S.k college of science and commerce', '[null,\"2\"]', NULL, 'I\'m excited to learn OOPs with Java', '2024-05-01 01:11:45', '2024-05-01 01:11:45'),
(26, 'Naziya chaudary', 'naziyachaudhary951@gmail.com', '7459086107', 'S.k college of science and arts', '[null,\"2\"]', NULL, 'I want to learn new skills', '2024-05-01 01:15:57', '2024-05-01 01:15:57'),
(27, 'Janhavi Shirish Kudalkar', 'kudalkarjanhavi4@gmail.com', '9769034530', 'S.K.College of Science and Commerce, Nerul', '[\"6\"]', NULL, 'Enroll me', '2024-05-01 01:32:21', '2024-05-01 01:32:21'),
(28, 'Khan abdulrehman', 'khanabdulrehman653@gmail.com', '8108672538', 'Akbar peerbhoy college', '[null,\"2\",\"5\"]', NULL, NULL, '2024-05-01 01:46:56', '2024-05-01 01:46:56'),
(29, 'Vedant', 'vedantatugade@gmail.com', '9324152596', 'S. K College', '[null,\"other\"]', NULL, 'To improve programing skiils', '2024-05-01 01:50:40', '2024-05-01 01:50:40'),
(30, 'Trisha murugan', 'trisha.murugan06@gmail.com', '9137364493', 'Collage', '[null,\"1\",\"2\"]', NULL, 'I want course of oops and java', '2024-05-01 02:14:19', '2024-05-01 02:14:19'),
(31, 'Kanishka gavande', 'kanishk.g@gemail.com', '9076180711', 'S.k college', '[null,\"2\"]', NULL, 'Interested to learn opp with java', '2024-05-01 02:36:31', '2024-05-01 02:36:31'),
(34, 'Vamshi kori', 'korivamshi6@gmail.com', '8097055945', 'Sk college of science and commerce', '[\"1\",\"2\"]', NULL, 'I want to become full stack developer', '2024-05-01 02:52:18', '2024-05-01 02:52:18'),
(35, 'Vamshi kori', 'korivamshi6@gmail.com', '8097055945', 'Sk college of science and commerce', '[\"5\"]', NULL, 'Enroll me', '2024-05-01 02:53:36', '2024-05-01 02:53:36'),
(36, 'Sakshi Chandrakant Wadekar', 'sakshiwadekar39@gmail.com', '9372689542', 'Patkar Varde College', '[\"2\"]', NULL, 'Enroll me', '2024-05-01 02:56:26', '2024-05-01 02:56:26'),
(37, 'vinay raju chivilkar', 'vinaychivilkar2@gmail.com', '8928360839', 'Patkar Varde College', '[\"2\"]', NULL, 'Enroll me', '2024-05-01 03:04:51', '2024-05-01 03:04:51'),
(38, 'Sujal Yadav', '52g2021yadavsv@gmail.com', '9820841944', 'J.m.patel college', '[null,\"2\",\"7\",\"8\"]', NULL, 'I\'m Interested in learning new things', '2024-05-01 03:16:53', '2024-05-01 03:16:53'),
(39, 'Ahsan Shaikh', 'ahsanshaikh0808@gmail.com', '9320584154', 'Akbar peerbhoy college grand road', '[\"2\"]', NULL, 'Enroll me', '2024-05-01 03:31:58', '2024-05-01 03:31:58'),
(40, 'Purushottam Bhikaji Kandalgaokar', 'purushottamkandalagaunker@gmail.vom', '8275409746', 'Shri pancham khemraj university, sawantwaadi', '[null,\"2\"]', NULL, 'I am interested in our java course definite.', '2024-05-01 03:59:15', '2024-05-01 03:59:15'),
(41, 'Purushottam Bhikaji Kandalgaokar', 'purushottamkandalagaunker@gmail.vom', '8275409746', 'Shri pancham khemraj university, sawantwaadi', '[null,\"2\"]', NULL, 'I am interested in our java course definite.', '2024-05-01 03:59:19', '2024-05-01 03:59:19'),
(42, 'Ritu Gupta', 'ritu.gupta1st@gmail.com', '9867013111', 'S.K college of science and commerce', '[null,\"1\",\"2\"]', NULL, NULL, '2024-05-01 04:08:44', '2024-05-01 04:08:44'),
(43, 'Anjali Mahendra Prasad gupta', 'pinkig49470@gmail.com', '9152049470', 'Jashbhai maganbhai Patel college of commerce', '[null,\"1\",\"2\",\"6\",\"5\",\"7\",\"other\"]', NULL, 'Done.', '2024-05-01 04:42:21', '2024-05-01 04:42:21'),
(44, 'Suyash patil', 'patilsuyash410@gmail.com', '9372031621', 'SK College seawood', '[\"2\"]', NULL, 'Enroll me', '2024-05-01 05:21:54', '2024-05-01 05:21:54'),
(45, 'Ridhesh Palkar', 'beaconboss573@gmail.com', '9082272243', 'Elphistone College', '[null,\"other\"]', NULL, 'I have interest in cybersecurity can I get any information regarding it.', '2024-05-01 05:38:38', '2024-05-01 05:38:38'),
(46, 'Vishal', 'shortvnap@gmail.com', '7769935689', NULL, '[null,\"other\"]', NULL, 'Your website having bug \r\nThat is it\'s crash wen it opened in crome and when we switched to the desktop view in crome', '2024-05-01 06:58:23', '2024-05-01 06:58:23'),
(47, 'Vishal', 'vishalsaroj5849@gmail.com', '7769935689', 'Satish Pradhan DnyaSadhna college', '[\"other\"]', NULL, 'Your website doesn\'t support ipv6 compatible. When we switched to desktop view in crome the website get crash and showing the all elements of code and header and also the og ip adress, information etc .', '2024-05-01 07:34:49', '2024-05-01 07:34:49'),
(48, 'Vh', 'gh@gmail.com', '8556808569', 'Gthccbn', '[\"6\"]', NULL, 'Enroll me', '2024-05-01 07:36:19', '2024-05-01 07:36:19'),
(49, 'Komal', 'komal1164501@gmail.com', '8928370159', NULL, '[\"6\"]', NULL, 'Enroll me', '2024-05-01 07:49:35', '2024-05-01 07:49:35'),
(50, 'Komal', 'komal1164501@gmail.com', '8928370159', NULL, '[\"6\"]', NULL, 'Enroll me', '2024-05-01 07:49:36', '2024-05-01 07:49:36'),
(51, 'Sumit Mishra', '2005sumitmishra@gmail.com', '7397870704', 'Reena Mehta college', '[null,\"2\",\"6\"]', NULL, 'I won\'t to gain knowledge and abilities about Full stack development.', '2024-05-01 08:09:08', '2024-05-01 08:09:08'),
(52, 'Sumit Mishra', '2005sumitmishra@gmail.com', '7397870704', 'Reena Mehta college', '[\"2\"]', NULL, 'Enroll me', '2024-05-01 08:13:57', '2024-05-01 08:13:57'),
(53, 'Diksha patil', 'dikshuu83@gmail.com', '8329586856', 'MATRUSHRI KASHIBEN MOTILAL PATEL SENIOR COLLEGE OF COMMERCE & SCIENCE', '[null,\"4\",\"6\"]', NULL, 'I want begin career in JAVA as a Full Stack Developer', '2024-05-01 08:43:08', '2024-05-01 08:43:08'),
(54, 'Nikita hanpade', 'nikitahanpade@gmail.com', '8668749563', 'S.P.K.college sawantwadi', '[\"1\"]', NULL, 'I want to teach full stack php', '2024-05-01 09:36:24', '2024-05-01 09:36:24'),
(55, 'Nikita hanpade', 'nikitahanpade@gmail.com', '8668749563', 'S.P.K.college sawantwadi', '[null,\"1\"]', NULL, 'Full stack php', '2024-05-01 09:37:04', '2024-05-01 09:37:04'),
(56, 'Nikita hanpade', 'nikitahanpade@gmail.com', '8668749563', 'S.P.K.college sawantwadi', '[\"7\"]', NULL, 'Enroll me', '2024-05-01 09:38:11', '2024-05-01 09:38:11'),
(57, 'Mardhekar Shivani Shankar', 'shivanimardhekar2510@gmail.com', '9518734711', 'F g naik college Koperkhairane', '[null,\"2\",\"5\"]', NULL, NULL, '2024-05-01 10:01:11', '2024-05-01 10:01:11'),
(58, 'Harshada  Dattaram Khandare', 'khandareh501@gmail.com', '8308037919', 'S h kelkar college devgad', '[\"1\"]', NULL, 'Enroll me', '2024-05-01 10:23:48', '2024-05-01 10:23:48'),
(59, 'Harshada  Dattaram Khandare', 'khandareh501@gmail.com', '8308037919', 'S h kelkar college devgad', '[null,\"1\",\"2\"]', NULL, 'Thank u', '2024-05-01 10:24:34', '2024-05-01 10:24:34'),
(60, 'Rutuja Rajesh Popkar', 'rutupopkar@gmail.com', '8483903794', 'Sant Rawool Maharaj Mahavidyalaya, Kudal', '[\"6\"]', NULL, 'Enroll me', '2024-05-01 10:25:39', '2024-05-01 10:25:39'),
(61, 'Rutuja Rajesh Popkar', 'rutupopkar@gmail.com', '8483903794', 'Sant Rawool Maharaj Mahavidyalaya, Kudal', '[null]', NULL, NULL, '2024-05-01 10:26:27', '2024-05-01 10:26:27'),
(62, 'Rahul Rajendra lot', 'lotrahul20@gmail.com', '9322679329', 'Sant Rawool maharaj college Kudal', '[\"6\"]', NULL, 'Enroll me', '2024-05-01 10:28:44', '2024-05-01 10:28:44'),
(63, 'Geeta gawade', 'geetagawade312@gmail.com', '8805691961', 'Srm college kudal', '[\"2\"]', NULL, 'Enroll me', '2024-05-01 10:35:55', '2024-05-01 10:35:55'),
(64, 'Namrata shantaram Parab', 'namrataparab312@gmail.com', '9322720379', 'Sant Rawool Maharaj Mahavidyalaya, Kudal', '[\"6\"]', NULL, 'Enroll me', '2024-05-01 10:43:17', '2024-05-01 10:43:17'),
(65, 'Sujal Yadav', '52g2021yadavsv@gmail.com', '9820841944', 'J.m.patel college', '[\"2\"]', NULL, 'Enroll me', '2024-05-01 10:51:41', '2024-05-01 10:51:41'),
(66, 'Shraddha Manoj Bandekar', 'shraddhabandekar4743@gmail.com', '7385711524', 'SRM college in kudal', '[\"2\"]', NULL, 'I like coding in java language and I also interested to work on java developer', '2024-05-01 11:27:00', '2024-05-01 11:27:00'),
(67, 'Diksha prabhukeluskar', 'dikshaprabhukeluskar@gmail.com', '8087890559', 'Sant Rawool Maharaj college, kudal', '[null]', NULL, 'I am interested in this', '2024-05-01 11:32:03', '2024-05-01 11:32:03'),
(68, 'Pragya Vishwakarma', 'mepragyavishwakarma@gmail.com', '8097608381', 'JM Patel college', '[null,\"2\"]', NULL, 'Interested', '2024-05-01 11:37:36', '2024-05-01 11:37:36'),
(69, 'Sushila', 'existence204@gmail.com', '9920551991', 'Satish Pradhan Dnyanasadhana College', '[\"2\"]', NULL, 'Enroll me', '2024-05-01 22:09:11', '2024-05-01 22:09:11'),
(70, 'Harshada Dhumal', 'harshadadhumal12@gmail.com', '9137217575', 'Sk college of science and commerce Nerul', '[\"6\"]', NULL, 'Enroll me', '2024-05-02 01:31:11', '2024-05-02 01:31:11'),
(71, 'Harshada Dhumal', 'harshadadhumal12@gmail.com', '9137217575', 'Sk college of science and commerce Nerul', '[\"7\"]', NULL, 'Enroll me', '2024-05-02 01:35:28', '2024-05-02 01:35:28'),
(72, 'Shubham', 'sj3470245@gmail.com', '9930943265', 'Patkar-Varde college', '[null,\"2\"]', NULL, 'Interested in Java programming', '2024-05-02 05:40:37', '2024-05-02 05:40:37'),
(73, 'Prashant Basveshwar Machigar', 'prashantmachigar1010@gmail.com', '9356317995', 'Dr. Ambedkar college, wadala', '[null,\"1\",\"2\",\"4\",\"6\"]', NULL, 'New learning code java', '2024-05-02 09:20:37', '2024-05-02 09:20:37'),
(74, 'Shivani Chavan', 'shivanichavan827@gmail.com', '9768165775', 'F G Naik College', '[null,\"2\",\"6\"]', NULL, 'Register are be confirmed', '2024-05-02 10:09:13', '2024-05-02 10:09:13'),
(75, 'Manasi Ravi Pawar', 'manasi3059@gmail.com', '9136644498', 'JES College', '[null,\"2\"]', NULL, NULL, '2024-05-02 10:25:06', '2024-05-02 10:25:06'),
(76, 'Disha parab', 'dishaparabo6@gmail.com', '8459579229', 'Shri panchm khemraj sawntwadi', '[null,\"2\"]', NULL, 'I want to register this course', '2024-05-02 23:59:12', '2024-05-02 23:59:12'),
(77, 'Pranav Nidhalkar', 'pranavnidhalkar6941@gmail.com', '8793934154', 'Singhad College Of Science', '[null,\"1\",\"2\",\"6\"]', NULL, 'Thank You', '2024-05-03 07:39:25', '2024-05-03 07:39:25'),
(78, 'Sujal Yadav', '52g2021yadavsv@gmail.com', '9820841944', 'J.m.patel college', '[null,\"2\"]', NULL, 'How to attend session', '2024-05-03 12:05:18', '2024-05-03 12:05:18');

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
-- Indexes for table `promo_sessions`
--
ALTER TABLE `promo_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_session_registration`
--
ALTER TABLE `promo_session_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_session_id` (`promo_session_id`);

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
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_session_id` (`promo_session_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_modules`
--
ALTER TABLE `course_modules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
-- AUTO_INCREMENT for table `promo_sessions`
--
ALTER TABLE `promo_sessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `promo_session_registration`
--
ALTER TABLE `promo_session_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `seo_detail`
--
ALTER TABLE `seo_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tech_stacks`
--
ALTER TABLE `tech_stacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_query`
--
ALTER TABLE `user_query`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

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

--
-- Constraints for table `promo_session_registration`
--
ALTER TABLE `promo_session_registration`
  ADD CONSTRAINT `promo_session_registration_ibfk_1` FOREIGN KEY (`promo_session_id`) REFERENCES `promo_sessions` (`id`);

--
-- Constraints for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD CONSTRAINT `user_feedback_ibfk_1` FOREIGN KEY (`promo_session_id`) REFERENCES `promo_sessions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
