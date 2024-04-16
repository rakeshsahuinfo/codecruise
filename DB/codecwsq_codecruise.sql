-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2024 at 11:15 AM
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
(1, 'Full Stack PHP', 'full-stack-php', 1, '<p>In<strong> Laravel PHP</strong>, developers craft the backbone of web applications, managing server-side logic, integrating third-party services, and collaborating with front-end counterparts. Leveraging Laravel\'s features like Eloquent ORM and Blade templating, they ensure seamless data handling and UI integration. With a focus on efficiency and scalability, PHP developers in Laravel play a pivotal role in creating robust, modern web solutions.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹25,000.00', 0, 'Group Discount', 0, '1712639470.png', 1, '2024-04-03 09:08:37', '2024-04-14 23:15:55'),
(2, 'Full Stack JAVA', 'full-stack-java', 1, '<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Java Spring Boot\'s</strong> integration with <strong>Angular&nbsp;CLI</strong> and <strong>React</strong> expands the scope of web development possibilities. With Angular CLI\'s structured approach to building single-page applications and React\'s component-based architecture, developers have a wide range of tools at their disposal to create intuitive user experiences. Spring Boot\'s robust backend capabilities complement these frontend frameworks, enabling seamless data handling and business logic implementation. Together, they offer a comprehensive solution for building modern web applications that are both scalable and maintainable, catering to a diverse range of project requirements and enhancing developer productivity throughout the development lifecycle. </span></p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹40.000.00', 0, 'Flat  ₹1,000.00', 0, '1712637583.png', 1, '2024-04-03 09:53:21', '2024-04-12 22:46:13'),
(3, 'MERN Stack', 'mern-stack', 1, '<p>Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?<br>Learn s/w development and become job ready in 3 months with our <strong>MERN stack development</strong> program.</p>\r\n<p>In this course you will be developing 3 different projects with increasing level of complexity which will help you in&nbsp;<br>digesting some major core concepts needed to develop a fully working s/w application.</p>\r\n<p><strong>Objective:</strong> Using front-end and back-end technologies along with frameworks for developing web based project.</p>\r\n<p><strong>Eligibility</strong></p>\r\n<p>Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS), BCA, MSc in Computer Science,&nbsp;<br>MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹35,000.00', 0, 'Group Discount', 1, '1712648356.png', 1, '2024-04-09 02:09:16', '2024-04-14 22:53:07'),
(4, 'MEAN Stack', 'mean-stack', 1, '<p>Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?<br>Learn s/w development and become job ready in 3 months with our <strong>MEAN stack development</strong> program.<br>In this course you will be developing 3 different projects with increasing level of complexity which will help you in digesting some major core concepts needed to develop a fully working s/w application.<br><strong>Objective: </strong>Using front-end and back-end technologies along with frameworks for developing web based project.</p>\r\n<p><strong>Eligibility</strong></p>\r\n<p>Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS),&nbsp;<br>BCA, MSc in Computer Science, MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹35,000.00', 0, 'Group Discount', 1, '1712648714.jpg', 1, '2024-04-09 02:15:14', '2024-04-14 22:54:58'),
(5, 'AWS Cloud Practitioner', 'aws-cloud-practitioner', 2, '<p>As cloud computing continues to revolutionize the IT industry, professionals skilled in managing cloud platforms are in high demand.&nbsp;</p>\r\n<p>Among the various cloud service providers, <strong>AWS</strong> stands out as a leader for more then one decade, offering a wide range of services and solutions to businesses worldwide.</p>\r\n<p>The <strong>AWS Cloud Practitioner certification</strong> serves as an entry point for individuals looking to kick start their career in cloud computing by providing foundational knowledge of AWS cloud services, architecture, security, and pricing.</p>', '2 Months', '2 Hours', 'Online and Online', '₹25,000.00', 0, NULL, 0, '1712823102.png', 1, '2024-04-11 02:41:42', '2024-04-11 22:42:24'),
(6, 'Data Science', 'data-science', 1, '<p>Are you ready to kick-start on a journey into the world of data science? Whether you\'re an aspiring data scientist, a business professional looking to enhance your analytical skills, or someone curious about the power of data, our comprehensive curriculum has got you covered. With a focus on practical skills and real-world applications, our course will equip you with the tools and knowledge needed to thrive in today\'s data-driven world.</p>\r\n<p><strong>Why Choose Us?</strong></p>\r\n<ul style=\"list-style-type: disc;\">\r\n<li><strong>Hands-On Learning:</strong> Gain practical experience through hands-on projects and real-world case studies.</li>\r\n<li><strong>Expert Instruction:</strong> Learn from industry experts with extensive experience in data science and analytics.</li>\r\n<li><strong>Flexible Schedule:</strong> Access course materials online and study at your own pace, whenever and wherever it\'s convenient for you.</li>\r\n<li><strong>Career Support:</strong> Receive career guidance and support to help you transition into roles in data science, analytics, and beyond.</li>\r\n</ul>', '4 Months + 2 Months Internship', '2 - 4 Hours', 'Hybrid', '0', 0, NULL, 0, '1712898300.jpg', 1, '2024-04-11 23:32:51', '2024-04-14 23:36:34'),
(7, 'Microsoft AZ 900 Azure Fundamentals', 'microsoft-az-900-azure-fundamentals', 2, '<p>Microsoft Azure Fundamentals course is designed to equip IT personnel with foundational knowledge in cloud computing concepts, core Azure services, and Azure management and governance features. Participants will gain hands-on experience using the Azure portal and command line interface to create resources, without the need for scripting skills. Through a combination of lectures, demonstrations, and hands-on labs, attendees will build confidence to pursue further role-based courses and certifications, such as the Azure Administrator certification. Additionally, this course serves as preparation for the AZ-900 exam.</p>\r\n<h6>Audience Profile:</h6>\r\n<p>This course is suitable for individuals who are new to working with Azure and wish to explore its offerings while gaining practical experience. The target audience includes IT personnel seeking to understand cloud computing fundamentals and delve into Azure services. Proficiency in scripting is not required. Participants will primarily engage with the Azure portal and command line interface.</p>', '2 Weeks', '2 - 3 Hours', 'Online', NULL, 0, NULL, 0, '1713152085.jpg', 1, '2024-04-14 22:04:45', '2024-04-14 22:23:10'),
(8, 'Microsoft AZ 104 Azure Administrator', 'microsoft-az-104-azure-administrator', 2, '<p>Microsoft AZ 104 Azure Administrator course equips IT professionals with the essential skills to configure, manage, secure, and administer key functions within Microsoft Azure. Participants will learn to manage Azure subscriptions, secure identities, administer infrastructure, configure virtual networking, connect Azure and on-premises sites, manage network traffic, implement storage solutions, create and scale virtual machines, deploy web apps and containers, back up and share data, and monitor solutions.</p>\r\n<h5>Audience Profile:</h5>\r\n<p>This course is designed for Azure Administrators responsible for implementing, managing, and monitoring identity, governance, storage, compute, and virtual networks in a cloud environment. Candidates should possess experience in virtualization, networking, identity, and storage technologies. The ideal candidate should have subject matter expertise in Azure environments, including virtual networks, storage, compute, identity, security, and governance. Azure Administrators often work as part of a larger team responsible for delivering Azure networking, security, database, application development, and DevOps solutions.</p>', '2 months', '2-3 Hours', 'Online - Offline', NULL, 0, NULL, 0, '1713152903.png', 1, '2024-04-14 22:18:23', '2024-04-14 22:24:08');

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
(7, 8, NULL, '<h5>Module 1: Manage Azure Identities and Governance</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure Microsoft Entra ID</li>\r\n<li>Configure User and Group Accounts</li>\r\n<li>Configure Subscriptions</li>\r\n<li>Configure Azure Policy</li>\r\n<li>Configure Role-Based Access Control</li>\r\n</ul>\r\n<h5>Module 2: Implement and Manage Storage</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure Azure Resources with Tools</li>\r\n<li>Use Azure Resource Manager</li>\r\n<li>Configure Resources with Azure Resource Manager Templates</li>\r\n<li>Configure Storage Accounts</li>\r\n<li>Configure Azure Blob Storage</li>\r\n<li>Configure Azure Storage Security</li>\r\n<li>Configure Azure Files and Azure File Sync</li>\r\n</ul>\r\n<h5>Module 3: Deploy and Manage Azure Compute Resources</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure Virtual Networks</li>\r\n<li>Configure Network Security Groups</li>\r\n<li>Configure Azure DNS</li>\r\n<li>Configure Azure Virtual Network Peering</li>\r\n<li>Configure Network Routing and Endpoints</li>\r\n<li>Configure Azure Load Balancer</li>\r\n<li>Configure Azure Application Gateway</li>\r\n</ul>\r\n<h5>Module 4: Implement and Manage Virtual Networking</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure Virtual Machines</li>\r\n<li>Configure Virtual Machine Availability</li>\r\n<li>Configure Azure App Service Plans</li>\r\n<li>Configure Azure App Service</li>\r\n<li>Configure Azure Container Instances</li>\r\n</ul>\r\n<h5>Module 5: Monitor and Maintain Azure Resources</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Configure File and Folder Backups</li>\r\n<li>Configure Virtual Machine Backups</li>\r\n<li>Configure Azure Monitor</li>\r\n<li>Improve Incident Response with Alerting on Azure</li>\r\n<li>Configure Log Analytics</li>\r\n<li>Configure Network Watcher</li>\r\n</ul>\r\n<h5>Preparation for the Exam:</h5>\r\n<p>Participants will be prepared for the Microsoft Certified: Azure Administrator Associate exam through comprehensive coverage of all skills measured in the exam.</p>\r\n<h5>Prerequisites:</h5>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>Understanding of on-premises virtualization technologies, including VMs, virtual networking, and virtual hard disks.</li>\r\n<li>Knowledge of network configurations, including TCP/IP, DNS, VPNs, firewalls, and encryption technologies.</li>\r\n<li>Familiarity with Active Directory concepts, including users, groups, and role-based access control.</li>\r\n<li>Understanding of resilience and disaster recovery, including backup and restore operations.</li>\r\n<li>Experience with operating systems, networking, servers, and virtualization.</li>\r\n<li>Proficiency in PowerShell, Azure CLI, the Azure portal, Azure Resource Manager templates, and Microsoft Entra ID.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, '2024-04-14 22:21:24', '2024-04-14 22:30:49');

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
(70, 8, 37, 1, '2024-04-14 23:02:16', '2024-04-14 23:02:16');

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
(10, 'course', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-14 22:55:11', '2024-04-14 22:55:11');

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
('11adGq1PnnlbNyZJzXhiJB8EVau7Y7HmjM3S6SrV', NULL, '66.249.73.132', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFBPc1d0bFd2TVZram9JZVR5czZjYVZJYVJsdmRMeFNWQjRMNnhVZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJa3gxUldzMGJITk9SRFZNWjIxc2JIRnROblJ4VTFFOVBTSXNJblpoYkhWbElqb2lOa1o1VW04NFZpOVdVVU5YUlVsUE4xRTVRblJFZHowOUlpd2liV0ZqSWpvaVltVmpaakZoWmpWbFkyRTBOMkk1TkRnd1l6UXpOMk0zTkRkak1EWm1PVGRsTWpJd016TTJZVEprT0RWalpEUXlNRFZoTjJNeVpqTTNPV0pqTnpGa01pSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713157409),
('1HSbIkzdFHdEzwJrJEkWKJKF8Dv9fteR6tYdOVvh', NULL, '66.249.73.131', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; GoogleOther)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVdOeTNBbWZHdmNqUjl0S1VHV3dWTURPenJ4bkFlUlkwMEpIWWV3aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbWRMWWpaNE9XOVlOekJsU1RkYVVrMXNiSE56ZGxFOVBTSXNJblpoYkhWbElqb2lNbVJZWkZSV1VHY3dkV3hoV1dKaFJVSlhibE4yVVQwOUlpd2liV0ZqSWpvaU5qQmlPVFppTWpsallXUmtZVGxoWVRjeU1qVXdObUUxTkdVeE1HSXlNakJrWWpRMVlURTFORFprWVRCbE5UUTFaVE01WTJJeE1ERXhaV0ZoTTJJeE5pSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713159392),
('6AZel7yvCNHgYMRSgTM53ynekz4SjUlnP4Ytyuj9', NULL, '66.249.73.131', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczgzV09zTGl2bWdPdkNMeHEzZTBEVTYyeENHbk1yaTVnbjFMY1MwQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713151350),
('BqLK2OkxHV6icQFPPwTzLbVkHa6M051WTADm3qXY', NULL, '85.208.98.54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGF0N0NqSXUxeTVaQU1mWVA4NkxvQ0xPaGkxQ3FDQXNwanRpWGxZUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713154392),
('ck5YF0ZLovkrVtj03neWPV2d94Nq4CDWgbFdwJHz', NULL, '66.249.73.128', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamJlMlNpOER6T2hpV2tHRlJ6SnEyTFFsWjJHalloNWdkSG9kNHBpZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713152493),
('DT3VviCVA1T7Gkbet7IBaEFuBN89bUN0E0VfmBll', NULL, '66.249.73.128', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajdnRGRqMUcwUlhjYThua1dhOVNCWVpDUW5QMEVPaVg3WDdVZWpqbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbXROU25WblRHRmFkVGxIY1ZWaWFVbHZUVE5VUW1jOVBTSXNJblpoYkhWbElqb2lXamhyVlRobk5WbEZRbEpLU2pCbGQxVk1iVlF4WnowOUlpd2liV0ZqSWpvaU16TTBObUUwTkdVMU1UTTRaRGM1TWpCaVkySTNOekV3WkdSalkyTTFaREZpTVRneFl6QTBOVE5oT1RJM09UbG1aRFZoTjJFeU16bGxNVGcwTnpsbU5pSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713155666),
('gaPtkxUWcj2GummOUNAIAQPPXygyhQvPiB6BAwKL', NULL, '49.36.113.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMW9JeERMNnNGYTJSNTBldzlkdkd3MHBkcjFJYWUyY013alVTZnRoRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713156276),
('jv5ihnToHyY9RWXzFfWuUGeeYo402XmQ7CKXzRDA', NULL, '66.249.65.227', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVlDcEVWc1NjWG01WDczT3JVaE02aThrOTYyVFdBdVV1WGRXcUdpdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmNvZGVjcnVpc2UuaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713159319),
('KBE817quzFWXg6zCZmnN1k5muLHgU2qtuPpXwI0f', NULL, '85.208.98.54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekkzVFpVaVZvZG9HelBNb1hHelRnclNIMEE5S2E1bEFxM2czdk8ycCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713154392),
('kLYPwOjXG8CYwrdWnNyOYtPx7PRa0trdII8EqTDJ', NULL, '182.48.226.78', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTdqOVZBYjdYTXc2VTUyU3NlVzY0TTZXWVRUQXY2aW1FRUZFdHN2SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UtY2F0YWxvZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713159089),
('LQJvya0iLrpX78cqGkfMrzQC1swRpmDOvLKoY9SL', 1, '182.48.210.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibGVNbjZSdUh2Qk5INmd1ekUwSU1pTGQ0Z0J1eHlURTFadFc4d1VvNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UtY2F0YWxvZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1713157634),
('oA3kDHdStZO7I3slNGzC8qYd9lEp1yHqZ98fT1KB', NULL, '85.208.98.54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienM4Q2o5MzJKdVNWYnpocVczZnczcjdlTEtlbVh3bmNaVnZvOG9iRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1713154393),
('oGe5RDfs3RMLjRNQO6VFYpgDfNwCd6aCBlSGUAw8', NULL, '66.249.65.227', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2RpWGljWEV5a0dMNkZvUTVXRUJrOEN2VUtEd3dKZWRlRTNEaDQ0SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmNvZGVjcnVpc2UuaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713159319),
('OsLYZELOKDPqBHYtOIaq9dfnzdhzfMU9KKcLYmMg', NULL, '182.48.210.56', 'WhatsApp/2.2414.8 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnRrTTdhdWdEV24wWmZMMVg2MW5oc2hhZE9NNUFIZm1ualZySXFHZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UtY2F0YWxvZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713157666),
('p8uS9H5Yb6wCQH6C05KIUkZ3mfogsEn9d6YPKm2Z', 1, '49.36.113.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoickZlZU1jcUtHcGM0bUhhalgyZE9SelVOTFY1ZThTa0FTSnpQSlVpUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wdWJsaWMvaW5kZXgucGhwIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1713156657),
('z9H0bq4aoqRADKtjlIrAz0kW1oSo3OrvRVYbKpuV', NULL, '182.48.210.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVZsTXVISHBac1BBY0YzS21EWTlYM2FJSFkwQmtXem5aaURRR1dPWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713157685);

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
(19, 'Python', '1712978467.png', 1, '2024-04-11 23:40:59', '2024-04-12 21:51:07'),
(20, 'SQL', '1712978729.jpg', 1, '2024-04-11 23:55:15', '2024-04-12 21:55:29'),
(21, 'Machine Learning', '1712899623.png', 1, '2024-04-11 23:57:03', '2024-04-11 23:57:03'),
(22, 'Docker', '1713063222.jpg', 0, '2024-04-12 00:00:20', '2024-04-13 21:23:42'),
(23, 'Deep Learning', '1712899839.png', 1, '2024-04-12 00:00:39', '2024-04-12 00:00:39'),
(24, 'Statistics', '1712899882.png', 1, '2024-04-12 00:01:22', '2024-04-12 00:01:22'),
(25, 'Excel', '1712899936.jpg', 1, '2024-04-12 00:02:16', '2024-04-12 00:02:16'),
(26, 'Python', '1712900084.jpg', 0, '2024-04-12 00:04:44', '2024-04-12 21:51:23'),
(27, 'Power BI', '1713062865.png', 1, '2024-04-12 00:05:12', '2024-04-13 21:17:45'),
(28, 'Tableau', '1712978317.png', 1, '2024-04-12 21:48:37', '2024-04-12 21:48:37'),
(29, 'Kubernetes', '1713063283.jpg', 1, '2024-04-13 21:24:43', '2024-04-13 21:24:58'),
(30, 'Azure Virtual Machine', '1713154644.png', 1, '2024-04-14 22:47:24', '2024-04-14 22:48:31'),
(31, 'Azure Virtual Network', '1713154663.png', 1, '2024-04-14 22:47:43', '2024-04-14 22:48:38'),
(32, 'Azure Storage', '1713154700.png', 1, '2024-04-14 22:48:20', '2024-04-14 22:48:20'),
(33, 'Microsoft Identity Governance', '1713154788.png', 1, '2024-04-14 22:49:48', '2024-04-14 22:49:48'),
(34, 'Azure Compliance', '1713154939.png', 1, '2024-04-14 22:52:19', '2024-04-14 22:52:19'),
(35, 'Azure Active Directory', '1713154955.png', 1, '2024-04-14 22:52:35', '2024-04-14 22:52:35'),
(36, 'Azure AD Roles', '1713154977.png', 1, '2024-04-14 22:52:57', '2024-04-14 22:52:57'),
(37, 'Azure Monitor', '1713155411.png', 1, '2024-04-14 23:00:11', '2024-04-14 23:00:11'),
(38, 'Azure Cost Management', '1713155432.png', 1, '2024-04-14 23:00:32', '2024-04-14 23:00:32');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_modules`
--
ALTER TABLE `course_modules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
