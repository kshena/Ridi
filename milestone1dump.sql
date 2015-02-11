-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2015 at 08:46 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `justask`
--
CREATE DATABASE IF NOT EXISTS `justask` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `justask`;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `q_id` int(10) unsigned NOT NULL,
  `a_id` int(30) unsigned NOT NULL,
  `a_text` text NOT NULL,
  `answerer_id` int(20) unsigned NOT NULL,
  `a_date` datetime NOT NULL,
  `score` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`q_id`, `a_id`, `a_text`, `answerer_id`, `a_date`, `score`) VALUES
(2, 1, 'I don''t know the answer', 8, '2015-02-11 09:11:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
`q_id` int(10) unsigned NOT NULL,
  `q_title` varchar(150) NOT NULL,
  `q_text` text NOT NULL,
  `q_date` datetime NOT NULL,
  `asker_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `q_title`, `q_text`, `q_date`, `asker_id`) VALUES
(1, 'when?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2015-02-10 08:39:52', 2),
(2, 'where?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2015-02-08 15:22:13', 5),
(3, 'who?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2015-02-11 12:19:43', 10),
(4, 'PHP', 'What Do I Need to start using PHP?', '2015-02-02 06:41:31', 7),
(5, 'PHP 5 Strings', 'How to search For a Specific Text Within a String?', '2015-02-11 12:24:11', 14),
(6, 'multiple tables in SQL', 'How do you display data from multiple tables in SQL?', '2015-02-11 04:11:23', 9),
(7, 'Which one?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2015-02-11 08:15:30', 9),
(8, 'How to read this language?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2015-02-05 06:42:24', 2),
(9, 'PHP functions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2015-02-06 16:36:23', 2),
(10, 'PHP variables', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2015-02-09 21:33:47', 8),
(11, 'How to implement CSS', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2015-02-11 22:38:11', 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(20) unsigned NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'pallen', 'm'),
(2, 'tblee', '0mGth3Web!'),
(3, 'bourne', 'bash_$'),
(4, 'edsger', 'st1ll1l11lG0'),
(5, 'wgates', '5il3M4X_m$4L'),
(6, 'hopper', 'im4usn'),
(7, 'dknuth', 'tek!tex!'),
(8, 'ada', 'wtf15b4b'),
(9, 'cmoore', 'moreM00R3!'),
(10, 'jresig', 'In0JS'),
(11, 'atanen', 'minix!minix'),
(12, 'linus', 'ilUvP3nGu1n5'),
(13, 'aturing', '1nfin1t3TAp3'),
(14, 'lwall', 'oysters&came'),
(15, 'thewoz', '4daK1d5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
 ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
 ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
MODIFY `q_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
