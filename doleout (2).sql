-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 01:52 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doleout`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_idcategories`
--

CREATE TABLE `category_idcategories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cat_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_idcategories`
--

INSERT INTO `category_idcategories` (`category_id`, `category_name`, `category_description`, `created`, `cat_url`) VALUES
(1, 'python', 'Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation. ', '2021-07-30 09:58:28', 'https://www.python.org/doc/'),
(2, 'Javascript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-or', '2021-07-30 09:59:17', 'https://www.w3schools.com/js/'),
(3, 'Bootstrap', 'Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.', '2021-07-30 17:24:04', 'https://getbootstrap.com/'),
(4, 'PHP', 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994. ', '2021-07-30 17:24:40', 'https://www.php.net/docs.php'),
(5, 'HTML', 'The HyperText Markup Language, or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets and scripting languages such as JavaScript.', '2021-08-09 10:12:22', 'https://www.w3schools.com/html/html_intro.asp'),
(6, 'C', 'C is a general-purpose, procedural computer programming language supporting structured programming, lexical variable scope, and recursion, with a static type system..', '2021-08-11 17:47:38', 'https://en.wikipedia.org/wiki/C_(programming_language)');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'this is comment', 1, 1, '2021-07-31 14:07:23'),
(14, 'sgsdggg', 7, 2, '2021-08-01 14:34:14'),
(15, 'python', 9, 3, '2021-08-01 14:44:09'),
(25, 'accc', 1, 1, '2021-08-01 20:44:18'),
(29, 'a', 3, 1, '2021-08-01 20:49:29'),
(30, 's', 3, 1, '2021-08-01 20:49:34'),
(32, 'bunny', 3, 1, '2021-08-01 20:56:32'),
(34, 'yes', 15, 1, '2021-08-01 21:27:54'),
(35, 'yup', 16, 1, '2021-08-01 21:29:50'),
(36, 'yup', 15, 1, '2021-08-01 21:30:09'),
(37, 'no', 15, 1, '2021-08-01 21:30:28'),
(38, 'hh', 16, 1, '2021-08-01 21:33:00'),
(39, 'hh', 16, 1, '2021-08-01 21:37:05'),
(40, 'yup', 1, 1, '2021-08-01 21:44:11'),
(41, 'bunny', 20, 2, '2021-08-01 21:46:28'),
(42, 'hello', 20, 3, '2021-08-01 21:47:35'),
(43, 'hello', 20, 3, '2021-08-01 21:50:11'),
(44, 'hie', 21, 29, '2021-08-02 10:43:10'),
(45, '&lt;html&gt;', 1, 29, '2021-08-02 11:15:52'),
(46, 'help', 28, 29, '2021-08-04 18:05:27'),
(47, 'delete it', 1, 3, '2021-08-10 18:14:34'),
(48, 'mm', 3, 29, '2021-09-02 14:59:05'),
(50, 'xx', 34, 29, '2021-09-04 12:20:57'),
(51, 'vvv', 34, 29, '2021-09-04 12:21:37'),
(52, 'nnn', 35, 29, '2021-09-04 12:22:59'),
(57, 'dd', 87, 29, '2021-09-05 19:50:26'),
(58, 'w', 87, 29, '2021-09-05 19:51:23'),
(59, 's', 71, 29, '2021-09-05 20:04:43'),
(60, 'a', 71, 29, '2021-09-05 20:04:53'),
(61, 'a', 71, 29, '2021-09-05 20:05:11'),
(62, 'bb', 84, 1, '2021-09-05 20:13:11'),
(64, 'w', 42, 29, '2021-09-06 11:00:19'),
(68, 'nn', 154, 29, '2021-09-10 20:18:03'),
(69, 'p', 153, 29, '2021-09-10 20:25:37'),
(71, 'First try to run the installer again with Administrator mode. And then do follow the below mentioned steps and check if it helps.', 117, 29, '2021-09-10 22:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `u_id` varchar(25) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`u_id`, `phno`, `query`) VALUES
('a@a.com', '9656232545', 'please help me'),
('b@b.com', '8546589658', 'hey bunny'),
('manthan@a.com', '8555565552', 'cant login'),
('manthanudamale7@gmail.com', '8669224880', 'dfhfdnfjghvnvbn');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `D_ID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Mobile_no` bigint(20) DEFAULT NULL,
  `Ngo_Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Amount` int(11) NOT NULL,
  `Email_ID` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`D_ID`, `Name`, `Mobile_no`, `Ngo_Name`, `Amount`, `Email_ID`) VALUES
(3, 'taiyab', 9219210393, 'Aasha', 10000, ''),
(11, 'Luffy', 9211012341, 'Smile', 5000, ''),
(12, 'Luffy', 9921015011, 'Smile', 5000, ''),
(24, 'sdass', 9921015016, 'Smile', 30000, ''),
(32, 'Ruturaj Kamble', 9921946932, 'Umeed', 10000, ''),
(38, 'Ritu', 234243, 'Aasha', 10000, ''),
(64, '', 0, '', 0, ''),
(65, '', 0, '', 0, ''),
(66, '', 0, '', 0, ''),
(67, '', 0, '', 0, ''),
(68, '', 0, '', 0, ''),
(69, '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `Namee` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` text COLLATE utf8_bin,
  `feedback` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `Namee`, `email`, `feedback`) VALUES
(2, 'Rohan', 'sawantroahan50@gmail.com', 'dasfadfsdgsgsgs'),
(3, 'Luffy', 'Luffy@gmail.com', 'king of the pirates'),
(4, 'sayaliii', 'sayalikanade@gmail.com', 'asdsfs');

-- --------------------------------------------------------

--
-- Table structure for table `ngoregistration`
--

CREATE TABLE `ngoregistration` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Contact_no` bigint(20) DEFAULT NULL,
  `district` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `address` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `qr_code` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `email` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ngoregistration`
--

INSERT INTO `ngoregistration` (`ID`, `Name`, `Contact_no`, `district`, `address`, `description`, `qr_code`, `email`) VALUES
(5, 'Pooja mojad', 9211012345, 'Pune', 'Sr no 24,Chandani chowk,Near Masjid,Bopodi,Pune,411020', 'very nice', '1.jpg', ''),
(6, 'Aasha', 9545115913, 'Nashik', 'Wakad,Nashik', 'Cool', '2.png', ''),
(7, 'Smile', 9921011234, 'Mumbai', 'Bandra,New Mumbai', 'very nice', '3.jpg', ''),
(8, 'Umeed', 1234567891, 'Thane', 'Dombivli', 'sdsafksdnfksdjfnlsenkjcndslknfclkeflskfs', 'f.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Address` text COLLATE utf8_bin,
  `Gender` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `Availability` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Email_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `district` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `Name`, `Address`, `Gender`, `Availability`, `Email_id`, `mobile_no`, `district`) VALUES
(9, 'Sayali kanade', 'Rangehills,Pune-20', 'Female', 'Full Time', 'sayalikanade@gmail.com', 9921011513, 'Pune'),
(11, 'Pooja Mojad', 'Wakad,Nashik City-40', 'Female', 'Full Time', 'poojamojad@gmail.com', 9921015014, 'Nashik'),
(12, 'Suraj kendre', 'katraj bus station', 'male', 'parttime', 'suraj@gmail.com', 1234567871, 'Pune'),
(13, 'Rohan Rajkumar Sawant', 'Sr no 24,Chandani chowk,Near Masjid,Bopodi,Pune,411020', 'male', 'parttime', 'sawantrohan$@gmail.com', 9921015088, 'Pune');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(2, 'iam not able to use python', 'please help me', 1, 2, '2021-07-30 20:26:21'),
(3, 'bbb', 'bbb', 1, 3, '2021-07-31 13:20:56'),
(36, 'iphoe', 'help', 1, 3, '2021-08-10 14:18:03'),
(42, 'bunny', 'c', 2, 3, '2021-08-10 14:24:03'),
(92, 'q', 'q', 4, 1, '2021-09-05 20:28:36'),
(94, 'how to run python code', 'please help me', 1, 1, '2021-09-05 20:40:42'),
(157, 'advantages of python', 'help me', 1, 1, '2021-09-24 11:08:19'),
(159, 'features of javascript', 'help me', 2, 1, '2021-09-24 11:12:15'),
(164, 'bunny', 'x', 2, 1, '2021-09-24 11:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `username` varchar(25) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `time_stamp` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `username`, `user_email`, `user_pass`, `time_stamp`) VALUES
(1, 'akash', 'a@a.com', '$2y$10$6rptIwBfgDavYgWaA6ry.OT//Z4RxsiwDePOQ4.lEdiQlLGFwmUni', '2021-08-01 19:35:43'),
(2, 'bunny1', 'b@b.com', '$2y$10$Tr2D1uAq4j6Fpa7ozsGpTeI8mloLBM4QyoRCLBCWY0bd9GcGYilEi', '2021-08-01 19:37:18'),
(3, 'cat', 'c@c.com', '$2y$10$Hmngu2O9kccQesOWdCxMauNpptlKJoPfWPbN2w2Ad9N9u9kaAOvdy', '2021-08-01 19:40:18'),
(4, 'dom', 'd@d.com', '$2y$10$MCRjCZwckn7wFXYrHI4LeeT6snPWBboWrZqR0KFKmHco0lJX9nI/a', '2021-08-01 19:40:27'),
(5, 'ellie', 'e@e.com', '$2y$10$eUs0xJNi5EOjA48cSXdhqu6B9zaio/1ZBYX.B6ffqgNCfhezoIQAe', '2021-08-01 19:40:38'),
(35, 'sam', 'sss@gmail.com', '$2y$10$iybg.5CqDnNKBxWiTgkZF.2qAuRi6m0.q9Fq9IoUtFTKMDRY4PlLm', '2021-09-01 20:08:59'),
(36, 'abhin', 'abhin@gmail.com', '$2y$10$8znez4bXpmszgTvXQMWhIu.1NAt0EGGLnw6fOthv1RbK/MfotBv3y', '2021-09-23 16:29:31'),
(37, 'prashant', 'p@gmail.com', '$2y$10$BdbE2sX0UtX8bHLajeOS8OsVJ0zHhAhpIC7sYBYeykxyk279F.rnu', '2021-09-23 16:42:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_idcategories`
--
ALTER TABLE `category_idcategories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `ngoregistration`
--
ALTER TABLE `ngoregistration`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email_id` (`Email_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_idcategories`
--
ALTER TABLE `category_idcategories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `D_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngoregistration`
--
ALTER TABLE `ngoregistration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
