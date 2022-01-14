-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2022 at 02:49 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idf` text NOT NULL,
  `ids` text NOT NULL,
  `msg` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `idf`, `ids`, `msg`, `time`) VALUES
(1, 'N/MCE/20/0027', 'LT/20/0005', 'hello\r\n', '2022-01-13 13:13:16'),
(2, 'N/MCE/20/0027', 'LT/20/0005', 'hi', '2022-01-13 13:55:26'),
(3, 'LT/20/0005', 'N/MCE/20/0027', 'I am lisa', '2022-01-13 14:13:08'),
(4, 'N/MCE/20/0027', 'LT/20/0005', 'its nice meeting you', '2022-01-13 14:16:47'),
(5, 'N/MCE/20/0027', 'LT/20/0005', 'hi', '2022-01-13 14:16:58'),
(6, 'N/MCE/20/0027', 'LT/20/0005', 'well..', '2022-01-13 14:24:56'),
(7, 'LT/20/0005', 'N/MCE/20/0027', 'hello', '2022-01-13 14:39:25'),
(8, 'LT/20/0005', 'N/MCE/20/0027', 'hwva', '2022-01-13 14:39:37'),
(9, 'N/MCE/20/0027', 'LT/20/0005', 'well', '2022-01-13 14:46:18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
