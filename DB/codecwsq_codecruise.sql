-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2024 at 03:15 PM
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
(2, 'Full Stack JAVA', 'full-stack-java', 1, '<p><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Java Spring Boot\'s</strong> integration with <strong>Angular&nbsp;CLI</strong> and <strong>React</strong> expands the scope of web development possibilities. With Angular CLI\'s structured approach to building single-page applications and React\'s component-based architecture, developers have a wide range of tools at their disposal to create intuitive user experiences. Spring Boot\'s robust backend capabilities complement these frontend frameworks, enabling seamless data handling and business logic implementation. Together, they offer a comprehensive solution for building modern web applications that are both scalable and maintainable, catering to a diverse range of project requirements and enhancing developer productivity throughout the development lifecycle. </span></p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹40.000.00', 'Flat  ₹1,000.00', 0, '1712637583.png', 1, '2024-04-03 09:53:21', '2024-04-12 22:46:13'),
(3, 'MERN Stack', 'mern-stack', 1, '<p>Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?<br>Learn s/w development and become job ready in 3 months with our <strong>MERN stack development</strong> program.</p>\r\n<p>In this course you will be developing 3 different projects with increasing level of complexity which will help you in&nbsp;<br>digesting some major core concepts needed to develop a fully working s/w application.</p>\r\n<p><strong>Objective:</strong> Using front-end and back-end technologies along with frameworks for developing web based project.</p>\r\n<p><strong>Eligibility</strong></p>\r\n<p>Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS), BCA, MSc in Computer Science,&nbsp;<br>MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹35,000.00', 'Batch Discount Offer', 1, '1712648356.png', 1, '2024-04-09 02:09:16', '2024-04-13 21:29:11'),
(4, 'MEAN Stack', 'mean-stack', 1, '<p>Are you in the final year or a fresher, who is looking to learn s/w projects development to land a Job in IT or S/W Company?<br>Learn s/w development and become job ready in 3 months with our <strong>MEAN stack development</strong> program.<br>In this course you will be developing 3 different projects with increasing level of complexity which will help you in digesting some major core concepts needed to develop a fully working s/w application.<br><strong>Objective: </strong>Using front-end and back-end technologies along with frameworks for developing web based project.</p>\r\n<p><strong>Eligibility</strong></p>\r\n<p>Bachelor\'s or Master\'s degree in Engineering, Technology (BE /BTech/ BS/ ME/ MTech in IT or Computer Science BSc IT/CS),&nbsp;<br>BCA, MSc in Computer Science, MCA) or any graduate with basic knowledge of C/C++/Java/Python, HTML and JS or any other programming language.</p>', '3 Months + Internship', '2 Hours Lecture', 'Offline and Online', '₹35,000.00', NULL, 0, '1712648714.jpg', 1, '2024-04-09 02:15:14', '2024-04-12 21:07:27'),
(5, 'AWS Cloud Practitioner', 'aws-cloud-practitioner', 2, '<p>As cloud computing continues to revolutionize the IT industry, professionals skilled in managing cloud platforms are in high demand.&nbsp;</p>\r\n<p>Among the various cloud service providers, <strong>AWS</strong> stands out as a leader for more then one decade, offering a wide range of services and solutions to businesses worldwide.</p>\r\n<p>The <strong>AWS Cloud Practitioner certification</strong> serves as an entry point for individuals looking to kick start their career in cloud computing by providing foundational knowledge of AWS cloud services, architecture, security, and pricing.</p>', '2 Months', '2 Hours', 'Online and Online', '₹25,000.00', NULL, 0, '1712823102.png', 1, '2024-04-11 02:41:42', '2024-04-11 22:42:24'),
(6, 'Data Science', 'data-science', 1, '<p>Are you ready to kick-start on a journey into the world of data science? Whether you\'re an aspiring data scientist, a business professional looking to enhance your analytical skills, or someone curious about the power of data, our comprehensive curriculum has got you covered. With a focus on practical skills and real-world applications, our course will equip you with the tools and knowledge needed to thrive in today\'s data-driven world.</p>\r\n<p><strong>Why Choose Us?</strong></p>\r\n<ul style=\"list-style-type: disc;\">\r\n<li><strong>Hands-On Learning:</strong> Gain practical experience through hands-on projects and real-world case studies.</li>\r\n<li><strong>Expert Instruction:</strong> Learn from industry experts with extensive experience in data science and analytics.</li>\r\n<li><strong>Flexible Schedule:</strong> Access course materials online and study at your own pace, whenever and wherever it\'s convenient for you.</li>\r\n<li><strong>Career Support:</strong> Receive career guidance and support to help you transition into roles in data science, analytics, and beyond.</li>\r\n</ul>', '4 Months + 2 Months Internship', '2 - 4 Hours', 'Hybrid', '₹75,000.00', NULL, 0, '1712898300.jpg', 1, '2024-04-11 23:32:51', '2024-04-13 21:27:31');

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
(5, 6, 'Course Overview', '<ol style=\"list-style-type: none;\">\r\n<li>\r\n<p><strong>Python:</strong> Dive into one of the most versatile programming languages for data science. Learn Python fundamentals and explore its applications in data manipulation, analysis, and visualization using libraries like Pandas, NumPy, and Matplotlib.</p>\r\n</li>\r\n<li>\r\n<p><strong>Excel:</strong> Master the art of data manipulation and analysis using Excel, a powerful tool for organizing and visualizing data. Explore advanced Excel functions, pivot tables, and data modeling techniques to extract insights from complex datasets.</p>\r\n</li>\r\n<li>\r\n<p><strong>SQL:</strong> Unlock the power of databases with SQL (Structured Query Language). Learn how to query, manipulate, and manage data stored in relational databases efficiently. Gain hands-on experience with SQL syntax, database design, and optimization techniques.</p>\r\n</li>\r\n<li>\r\n<p><strong>Power BI:</strong> Transform raw data into interactive and insightful visualizations with Power BI. Discover how to create dynamic dashboards, reports, and data models to communicate your findings effectively to stakeholders.</p>\r\n</li>\r\n<li>\r\n<p><strong>Tableau:</strong> Explore the art of data storytelling with Tableau, a leading visualization tool in the industry. Learn how to create interactive visualizations, dashboards, and maps to uncover patterns and trends in your data.</p>\r\n</li>\r\n<li>\r\n<p><strong>Statistics (Stats):</strong> Build a solid foundation in statistics essential for data analysis. Explore descriptive and inferential statistics, hypothesis testing, probability distributions, and regression analysis to make informed decisions based on data.</p>\r\n</li>\r\n<li>\r\n<p><strong>Machine Learning:</strong> Delve into the exciting field of machine learning and predictive analytics. Learn fundamental concepts such as supervised and unsupervised learning, classification, regression, clustering, and model evaluation techniques.</p>\r\n</li>\r\n<li>\r\n<p><strong>Deep Learning:</strong> Take your understanding of machine learning to the next level with deep learning. Explore neural networks, deep neural networks, convolutional neural networks (CNNs), recurrent neural networks (RNNs), and natural language processing (NLP) for advanced data analysis and pattern recognition.</p>\r\n</li>\r\n</ol>\r\n<p><strong>Features of Course</strong></p>\r\n<ul>\r\n<li>Covers all courses required to be a data scientist, Data Analyst</li>\r\n<li>Project-based learning</li>\r\n<li>Internship after course</li>\r\n<li>Working on live projects</li>\r\n<li>Capstone Project and Hackathons</li>\r\n<li>Test after every Session</li>\r\n<li>Working with AI-based tools like ChatGPT</li>\r\n<li>Interview Preparation&nbsp;</li>\r\n<li>Placement assistance&nbsp;</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, '2024-04-12 22:07:12', '2024-04-12 22:07:12');

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
(58, 6, 20, 1, '2024-04-12 21:55:40', '2024-04-12 21:55:40');

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
(7, 'course', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-12 21:07:38', '2024-04-12 21:07:38');

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
('5mhWLvvYQVlyyYn5E3IRujM8arHSOPUNS3hWAN0r', NULL, '34.147.60.6', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:79.0) Gecko/20100101 Firefox/79.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTBwRU9Xb2xCR2FRdDN0OG9GZVdrYTBHNzJ4ZUE1Q2VHaWtLUTBhayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713087595),
('6bxSisZL7eMfWkS7STf6YxLhWozEbUYzws0bsnED', NULL, '66.249.82.8', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVl2YVVtN1lZaEJ5WnZZRG9JZnIxcnVRTHdoRVo5Q2tlREFRSVpjZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713085831),
('6xn6QTe9JRByQtTlxqMlTcDH1GQmawCrkjbXTuHw', NULL, '18.203.61.76', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Hotjar Chrome/97.0.4692.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXVqSDNOYXh6SWh5RkpMNTFsbFNWNTZDcVZLSTA4bmRPVG5DRUI5bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713086628),
('7Y1jH2HheGKgBE7EDZYUZgP1SXElULS4biDxh9Fq', NULL, '43.243.83.156', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmVSVnhQRkJSMEU2YVBGTUxnbDJKUzFYWER6Y0dXMTRLR3RLR0hITiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmNvZGVjcnVpc2UuaW4iO319', 1713086183),
('A0SpY8ALcInj6GbCSBgzpqJWwpoi8tT6AXhupzGg', NULL, '52.231.139.203', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFZPUGh4ZzhEQzhtRmxvVW44SmpDTlkybFg2QXBmRXdrWHFiblFmaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713084521),
('b7zsb8fnn0gIymYOAYPuc9l53FzmH9HcizdxKmTP', NULL, '85.92.66.148', 'Mozilla/5.0 (compatible; XML Sitemaps Generator; www.xml-sitemaps.com) Gecko XML-Sitemaps/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1Z1bXpBbVZSbjhpNGxrZ3hqakVTU29obmV2TndYeEdNNHRxUXVWMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9lbnJvbGwtY291cnNlL3RlbCs5MTczMDQ1NjIwNTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713085925),
('D3zSkMJgAhsHPr7yX3uavCnIa6FOmB8WwU2m6mH5', NULL, '34.147.60.6', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/91.0.4472.77 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlRGbjJ1bWo2QnpIU3NEYVFWZWdLWm44RDRBS2xTOU1pS1VqSWFMVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713087599),
('D8a8GGroOT0okJsxxIttg0HZswnfMihfYrdq3rbI', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnFiTjhNTmdBU1lVZnRlMmVPOTNzUklkb0RhUmFIMUw4a1BTQjFheCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJbVp5UlVaekwwdENabVJTVURkVFkwdEtWWFI2WkhjOVBTSXNJblpoYkhWbElqb2lTRUZKVFZGTmRFaEVSa3d5UzNGeldGbHlSVUo2UVQwOUlpd2liV0ZqSWpvaU56WTBOemd5WldVeE1qZzNOMkU0T0RJeE5qRmtNR05qT1dFMVpEa3dOakF3WXpjM1ptTTNNalE1TkRjNE1HTmpPR1EyT1daaFlUazJORE5sTXpBd1lpSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713080998),
('Dj5t2LvwvQtbewopfNH6pGtFIc0re6WZ8Nyiyrlf', NULL, '66.249.82.5', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWhrR1BodW90Wk5EczFNS3l3MGJFNW1ySFVlOFNjTEt3WHpQdFRsNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713085842),
('EKVIBnJ97FOFaH4HRgJjaft5A5PQcgBKCNki4iRw', NULL, '74.235.92.23', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/123.0.6312.105 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMERWMFpncDI1M2hBRjFscDd3Yk0yZlB6U2Z5QXJJTno5YzhXUTF5WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713086756),
('FuS5AWEK4Aw7QLwLcpGP4MnXwb9B8pAFeyvQtVRx', NULL, '110.226.183.78', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [LinkedInApp]/9.29.4961', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEd3SDJHeEpTaFdWY1B0ajJwZVlaallpZHdTdzc3c3MwdG5iUnFaUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UtY2F0YWxvZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713082083),
('gLsL3RiImmz7OK1XG1q6ZbPmSXzyaLzt8IxYZO6T', NULL, '66.249.82.5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkcweU9NWTYxRHBiMG9hZldCUm5FTUhzYzNhMjJhMWg3czZscjZ1WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713085841),
('gXLaOxI7unuw2MyxzxnZPv3kgbDs3RPEVFQt8Ktk', NULL, '66.249.82.8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazRBVEpkZzhJVE1UUzlBaDE2eGF0VGNPdzBOSk9lYU55QjhlbTRSVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713085830),
('HCQou2z1wK0imbxVUoKTMAa7l5tvPFpsJzCyL9h4', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHRObkNkNGhTckhJZXB1NUlIcVJjangzVE1JMHNvb0xnZ3JDdUM4YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713084586),
('htjIu0Y3JSZRvimtXc1laJA2XEpsV4Oxonaff0IV', NULL, '206.189.143.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1piTXNQU2RCek5LSEM5MXA0OWk4b1cyRElhV3VLd1g0Mnlja3lNaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713087754),
('hzZKHAm8NLc0IkKtSHThcK0HxY0rkp8zPzLJcuJc', NULL, '66.249.79.3', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSW5Ca005ZmlvN2psaVBENFU2ZWdjUk5HYWZ5bVp6bmJ2ZEZWRHhnSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM2OiJodHRwczovL2NvZGVjcnVpc2UuaW4vZW5yb2xsLWNvdXJzZS9leUpwZGlJNkluUkdVRGc1UTJKSFJEbHJSSE56YlhOclpYcFhUbmM5UFNJc0luWmhiSFZsSWpvaWVXcG9hMlIzZEhVMVlUaElja1p4UjJrcmJVOUxVVDA5SWl3aWJXRmpJam9pTW1JMk56WXpOemhqWTJVd01UQmtaRGMyWkRFMU0yVTNaR0pqTjJaaE9URTBaV1JtTlRBNFpHVTJOVFZrWXpabU56RmtZemxpWXpJd01qWXpNREZrWWlJc0luUmhaeUk2SWlKOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713083471),
('JjA71LDIWG7m9nTWHMOzgFzejwcCN0VZPQL8qsC8', NULL, '182.48.210.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHhueVVHcGdHUG1CM3VIVXB3MFRGaHlNaHozSDJ5dXlCQm5Pb1N4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9jb3Vyc2UtY2F0YWxvZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713085372),
('N5By7mQ4yJfn63JnozEE6o0pR9yNQZGYYyP6aAA4', NULL, '85.92.66.150', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/78.0.3882.0 Safari/537.36\"', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVpvcWg1WG9ETXRhS2RmcDFJZXRvZjhMN2N4UWp1TUo3NXR3QWw1eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713085706),
('nlfsylsmwH8SdZqCBGOXSiPpFNNYDKZTfLe9JBfA', NULL, '35.166.239.174', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoielk1a3pNTEZYN2tRQkpORmNvRU0xMG5HZm9INjFicEtsM0FMZGlIayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713086629),
('npBCCOgRq6tsNGw5yMPTjXG6W4WsyDqNxCWAYl4A', NULL, '34.211.49.4', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEJSZEU0ejBKOUFRUjBuT1FtT0U2MmVHZ0MyRUNRNG1lYmRVbkh3dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713087959),
('oTXGDXS2xaO70bQqnO93yoDoDlBz34u2XOudNdYt', NULL, '89.187.163.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFNKRU1DMEJ5bnJxSzMxVHBXaG5BRVE2TVJYVnJhdGhUZVRLTFlFTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713085239),
('RSFPYRNxd8zWtbjNp3RMW1ahXZJFvofq18unVvqD', NULL, '52.231.139.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVBucDNlUHlDVzlYejNVY1lRdEtnakl5MzNSbDBzVXp0ekNIbnpZdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713084793),
('S0oeKgltTSnJh1wf9NNsssQYAymR4YCEh2X3xvc2', NULL, '49.36.113.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjhuUWF0dVJQdzN1djZQdFdKOTNmNWhQVGZ1a3RPWTVoeWxWdUI3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9wdWJsaWMvaW5kZXgucGhwL2Rvd25sb2FkLWNvdXJzZS1pbmZvL2RhdGEtc2NpZW5jZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713084067),
('s6htOqAXu3wSqcThL6HGpGbRAPgSYCQ3FThJM1vH', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEVqSHNmZnh5M0F3MlBZczBldlN5eWsyaGhpN3BKbDh3OXJEaFBVYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM3OiJodHRwczovL2NvZGVjcnVpc2UuaW4vY291cnNlLWJ5LXR5cGUvZXlKcGRpSTZJa1ZqZWtrMVVVOTRiRTlJYm0xclpuSTBZMGRDVWtFOVBTSXNJblpoYkhWbElqb2lXbmxTTDFSMU1rTXhWVmxQWTNGemVYbEpLMHdyZHowOUlpd2liV0ZqSWpvaU9UQXpNbVZsWm1GaU5qWXlOV1ptWTJNNFptTmhaVFZtTVRjNU5qWTBPV1F6T1RVek5UQm1aV0ppTVRJM016VmlPVEZpTmpZME5HRmpZMlEzTUdJeU1pSXNJblJoWnlJNklpSjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1713081130),
('SkHUoJToRf2K8PmMRLtas5ibKHgtgGEHfcLmspQY', NULL, '66.249.79.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGR5N2g2a2J0UTN5aUtHQjNwdGE3SXZkQWVWVVROTlk1Qm9VRnBnNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713083704),
('sQrh7wawynOaOI93CwmzWTaEsyBaI6FJgUKImNz5', NULL, '35.87.79.231', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlQ1eTZNR2lxOUhaY3V1MlJqNFN4Y2tKQXo3eEMzdUdpOVg0bkJoWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713087959),
('twO6h1pjni2f8Q5GmaRomhhSBGJ9zOyySQhOQAaS', NULL, '52.231.139.200', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkxBa3FuS3AzNThMdHhtZElEMXpUMHBIaUg0MGhNTGJ5dlZ1aUFhMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713084521),
('ULeArLi8iT9zPWv0Z81eoHhXWwf53WJTVer4nBe4', NULL, '104.236.44.95', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:66.0) WhatCMS/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3pKeXBkMDZQNHdWWng0dGwyeXdST3M1ZDhWYVBkckR0d01lbEpCMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713086628),
('V3WafcSA9lgOqKuU6UiZuQuxjGuVy7rBvbcoVhH5', NULL, '223.189.24.119', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDNPZHdrRlk4Tm8xMGgwTWZMYk11MVp1c2xFdFUyS2hxMVBEYTVXMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vY29kZWNydWlzZS5pbi9kb3dubG9hZC1jb3Vyc2UtaW5mby9hd3MtY2xvdWQtcHJhY3RpdGlvbmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1713086440),
('vO2LzDfZehDWN7fwQQeKOcL00B9XVHWdBRHT3MJY', NULL, '49.43.27.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnR0dWF1RGR4cGNCQUNldGJvVEVpSjFna0JzaDU1ODlOZGZNczRIdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713087356),
('VWklQ3703tOY9NbIPbuL9AvYjsufZCx0Zhtd3sWm', NULL, '66.249.73.131', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.94 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidExFaElvQ0F1QWliTHFvdjdoNjB0NUtEV1BQRUk3c0lTVFJZb3JoSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vY29kZWNydWlzZS5pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713086537);

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
(29, 'Kubernetes', '1713063283.jpg', 1, '2024-04-13 21:24:43', '2024-04-13 21:24:58');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tech_stacks`
--
ALTER TABLE `tech_stacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
