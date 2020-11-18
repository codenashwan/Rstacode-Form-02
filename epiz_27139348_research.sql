-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql307.epizy.com
-- Generation Time: Nov 18, 2020 at 11:33 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_27139348_research`
--

-- --------------------------------------------------------

--
-- Table structure for table `confirm_file`
--

CREATE TABLE `confirm_file` (
  `confirm_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `confirm_file`
--

INSERT INTO `confirm_file` (`confirm_id`, `group_id`, `teacher_id`, `file_id`) VALUES
(31, 1, 9, 48),
(34, 25, 13, 57),
(35, 15, 9, 49),
(36, 13, 10, 51),
(37, 19, 2, 31),
(38, 23, 14, 32),
(39, 10, 5, 40),
(40, 3, 1, 30),
(41, 17, 6, 42),
(42, 11, 11, 53),
(44, 21, 11, 52),
(45, 4, 6, 41),
(46, 5, 10, 50),
(47, 8, 14, 33),
(48, 14, 5, 39),
(49, 6, 8, 45),
(50, 16, 7, 43),
(51, 9, 11, 54),
(52, 12, 3, 34),
(53, 18, 8, 47),
(54, 7, 12, 56),
(55, 22, 7, 44),
(56, 20, 4, 37),
(57, 24, 12, 55);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id_files` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name_files` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT 'default 1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id_files`, `teacher_id`, `name_files`, `status`) VALUES
(30, 1, 'The Internet of Everything (IOE) Using Cisco Packet Tracer', 2),
(31, 2, 'Student Record Keeping System Database Project', 2),
(32, 14, 'Applied Numerical Methods for Solving Root - Finding Problems by MATLAB Programming', 2),
(33, 14, 'Using MATLAB Programming To Introduce Modern Approximation Techniques by Numerical Method', 2),
(34, 3, 'Design And Implementation of a System For E-Learning', 2),
(35, 3, 'Design And Implementation of a Examination Time Control Schedule And alert', 1),
(36, 4, 'Sentiment Analysis Using Machine-Learning Algorithms', 1),
(37, 4, 'Railway System Database', 2),
(39, 5, 'Inventory Management System', 2),
(40, 5, 'Web-Based Application For Resturant Management', 2),
(41, 6, 'Investigating The Effect of Building Materials on Wireless Signal Strength', 2),
(42, 6, 'Blood Donation System Database Project ', 2),
(43, 7, 'Desing And Implementation of An Online Learning Website', 2),
(44, 7, 'Design and Implementation of Online Birth and Death Registration System', 2),
(45, 8, 'Fingerprint voting system using LAMP technology', 2),
(46, 8, 'Creating a Weather forecasting system using PHP and MySQL', 1),
(47, 8, 'Developing Smart health system using JSP and MySQL', 2),
(48, 9, 'Online library management system for the College of Basic Education', 2),
(49, 9, 'Online Web Portal to submit and review of BSc graduation project', 2),
(50, 10, 'Coronaviruses website tracker in Kurdistan', 2),
(51, 10, 'Online student management system', 2),
(52, 11, 'Design Database for Traffic Police Directorate in Sulaimani', 2),
(53, 11, 'Time Series Analysis and Forecast of the COVID-19 Pandemic in one Hospital in Sulaimani', 2),
(54, 11, 'Time Series Analysis and Forecast of private School in Sulaimani ', 2),
(55, 12, ' Time Series Forecast for Traffic Accidents and Victims in Sulaimani Province ', 2),
(56, 12, 'Moving Average to Forecast Birth Rates in Sulaimani Province', 2),
(57, 13, 'Sales and marketing management system in PHP & mysql', 2);

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `id` int(11) NOT NULL,
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `name3` varchar(255) NOT NULL,
  `name4` varchar(255) DEFAULT NULL,
  `class1` varchar(255) NOT NULL,
  `class2` varchar(255) NOT NULL,
  `class3` varchar(255) NOT NULL,
  `class4` varchar(255) DEFAULT NULL,
  `status_names` int(11) NOT NULL COMMENT 'default 0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `name1`, `name2`, `name3`, `name4`, `class1`, `class2`, `class3`, `class4`, `status_names`) VALUES
(1, 'نەشوان عبدللە محمد', 'سامان خفور محمد', 'ڕیڤان ئومێد عەبدولمەجید', '', 'A', 'A', 'A', '', 1),
(2, 'سەردار محمد عبداللە', 'محمد مهدی ئیبراهیم', 'سۆزیار کەمال جەلال', '', 'B', 'B', 'B', '', 1),
(3, 'لانە یوسف حمەرؤوف', 'کەژوەست مارف محمد ', 'مصعب عمر محمد', '', 'B', 'B', 'B', '', 1),
(4, 'نارین کاوە علی', 'ڕزگار عمر رؤف', 'لەنجە سعــــید  محمود', '', 'A', 'A', 'A', '', 1),
(5, 'ڕەوا صدیق صابر', 'کازیوە خەسرەو گورون', 'ساڤۆ  بەختیار مصطفى', '', 'A', 'B', 'B', '', 1),
(6, 'محمد سلێمان حسن', 'مسلیم عمر سعید', 'ڕاستی سیروان محمد', '', 'B', 'B', 'B', '', 1),
(7, 'گۆنا محمد عبدولکریم', 'چاوان قادر احمد', 'شیراز خواڕەحم احمد', '', 'B', 'A', 'B', '', 1),
(8, 'پێشه‌وا ته‌یفور حمه‌مراد', 'دەشتۆ نامق حمەامین', 'ئەشکین عبدالرحمن احمد', '', 'A', 'A', 'A', '', 1),
(9, 'ڕۆشنا خورشید فوئاد', 'سنه‌وبه‌ر جمال قادر', 'هاوتا هادی محمد', 'شاگوڵ حمە شریف نصرالدین', 'A', 'A', 'A', 'A', 1),
(10, 'رەیان فایەق اورەحیم', 'سارا مھدی عەبداللە', 'بنار نەسرەدین سعید', '', 'A', 'A', 'A', '', 1),
(11, 'ئازیز فریدون امین', 'ئامێز عباس سعید', 'کاشما سلام حسن', '', 'B', 'B', 'B', '', 1),
(12, 'سةناريا سابير احمد', 'شەیدا محمد ابوبکر', 'ئەوین سیروان ڕەمەزان', '', 'B', 'B', 'B', '', 1),
(13, 'شنیار عمر تۆفیق', 'ئاری عمر رشید', 'رۆزە رؤوف صدیق', '', 'B', 'B', 'B', '', 1),
(14, 'رۆزا رێبوار حمەامین', 'سیڤان یەحیا قادر', 'رەیان سەرکۆ حسێن', '', 'A', 'A', 'A', '', 1),
(15, 'بهاالدین مؤمن حمەعارف', 'بژوێن جلال علی', 'ڕاڤیار ڕزگار بەکر ', '', 'A', 'A', 'A', '', 1),
(16, 'روەیدا حیدەر خان عزیز', 'سروشت هوشیار محمد امین', 'دەرون امین أحمد', '', 'A', 'A', 'A', '', 1),
(17, 'لەنجە محمد علی ', 'نڤار نصرالدين باقر', 'ئاسیا رؤوف  صالح', '', 'B', 'B', 'B', '', 1),
(18, 'بڕوا بایز خدر', 'احسان محمد ڕه‌شید', 'ئامانج محمد محمود', 'ڕه‌وا محسین حمد', 'A', 'A', 'A', 'A', 1),
(19, 'احمەد ابوبکر حسن ', '   جیهاد محمد احمد  ', 'لاوکۆ جمال عبدالله   ', '  ژيا بارزان محمد', 'A', 'A', 'A', 'B', 1),
(20, 'لەنیا کەریم حەمەعلی ', 'سۆما شەماڵ رضا فتاح', 'محمد یوسف فتاح', '', 'B', 'B', 'B', '', 1),
(21, 'محمد سعید ملا قادر', 'پێشەنگ عمر قادر', 'خاوێن ڕەئووف حمە غریب', '', 'B', 'B', 'B', '', 1),
(22, 'روخسار سەردار والی ', 'سەنا عمر علی', 'سانا مصطفى عمر صالح', 'سیڤان ناظم محمد أمين', 'A', 'A', 'A', 'A', 1),
(23, 'زریان محمد کریم', 'شایستە تەها جەمال', 'شاد عبدالخالق ئەحمەد', '', 'A', 'A', 'A', '', 1),
(24, 'ئاکۆ ئاری خالید', 'محمد مجید رضا', 'ئاڤان تحسين', NULL, 'B', 'B', 'B', NULL, 1),
(25, 'شاناز محمد احمەد', 'شیفازاھر حمەسالح', '', NULL, 'B', 'B', '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `picture`) VALUES
(1, 'ئاری صابر عارف', '1.jpg'),
(2, 'لوقمان محمد مصطفی', '2.jpg'),
(3, 'شادان طە ڕشید', '3.png'),
(4, 'ڕۆزا حکمت حمەعزیز', '4.jpg'),
(5, 'دۆستی علی حمە صالح', '5.jpg'),
(6, 'ئاکۆ محمد عبدللە', '6.jpg'),
(7, 'یاسین ابوبکر علی', '7.jpg'),
(8, 'کاروان مصطفی کریم', '8.jpg'),
(9, 'وریا محمد صالح محمد', '9.jpg'),
(10, 'سلام حسین احمد', '10.jpg'),
(11, 'پەیمان عثمان رحیم', '11.jpg'),
(12, 'محمد علی کمال', '12.jpg'),
(13, 'ئەژی وریا محمد', '13.jpg'),
(14, 'شێرکۆ حسن عبدلرحمن', '14.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confirm_file`
--
ALTER TABLE `confirm_file`
  ADD PRIMARY KEY (`confirm_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_files`),
  ADD KEY `teacher` (`teacher_id`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `confirm_file`
--
ALTER TABLE `confirm_file`
  MODIFY `confirm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id_files` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
