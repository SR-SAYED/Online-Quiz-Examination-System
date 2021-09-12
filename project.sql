-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 05:12 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 's@r.com', 'admin'),
(2, 'mhasan9988xx@gmail.com', 'admin'),
(3, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5fa2371e5919a', '5fa2371e5920c'),
('5fa2371e5bf70', '5fa2371e5bfef'),
('5fa23c0cc3569', '5fa23c0cc3a2a'),
('5fa23c0cc4f4f', '5fa23c0cc564c'),
('5fa23c0cc6bf3', '5fa23c0cc6ede'),
('5fa23c0cc7de2', '5fa23c0cc81a2'),
('5fa23c0cc9387', '5fa23c0cc9598'),
('5fa260bbbdff3', '5fa260bbc3393'),
('5fa260bbd5c08', '5fa260bbd6538'),
('5fa260bbda3f0', '5fa260bbdb713'),
('5fa260bbdd85d', '5fa260bbddf5f'),
('5fa260bbe01b3', '5fa260bbe09b3');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5f958c43cf688', 'NNN', 'n@n.com', 'test', 'this is test ', '2020-10-25', '03:31:31pm'),
('5fa789335aa57', 'SAYED', 's@r.com', 'English', 'Abuse', '2020-11-08', '06:59:15am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('m@m.com', '5fa23b1c0041f', 6, 5, 3, 2, '2020-11-04 08:14:00'),
('ms@r.com', '5fa25f831f9b5', 15, 5, 3, 2, '2020-11-04 09:28:10'),
('ss@rr.com', '5fa25f831f9b5', 15, 5, 3, 2, '2020-11-04 09:30:03'),
('sss@r.com', '5fa25f831f9b5', 25, 5, 5, 0, '2020-11-04 09:31:41'),
('s@r.com', '5fa25f831f9b5', 25, 5, 5, 0, '2020-11-05 04:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5fa2371e5919a', 'try', '5fa2371e59208'),
('5fa2371e5919a', 'tries', '5fa2371e5920a'),
('5fa2371e5919a', 'tried', '5fa2371e5920b'),
('5fa2371e5919a', 'is trying', '5fa2371e5920c'),
('5fa2371e5bf70', 'is having', '5fa2371e5bfef'),
('5fa2371e5bf70', 'having', '5fa2371e5bff1'),
('5fa2371e5bf70', 'have', '5fa2371e5bff2'),
('5fa2371e5bf70', 'has', '5fa2371e5bff3'),
('5fa23c0cc3569', 'playing', '5fa23c0cc3a27'),
('5fa23c0cc3569', 'play', '5fa23c0cc3a2a'),
('5fa23c0cc3569', 'am playing', '5fa23c0cc3a2b'),
('5fa23c0cc3569', 'am play', '5fa23c0cc3a2c'),
('5fa23c0cc4f4f', 'will cleaned', '5fa23c0cc564a'),
('5fa23c0cc4f4f', 'is cleaning', '5fa23c0cc564c'),
('5fa23c0cc4f4f', 'cleans', '5fa23c0cc564c'),
('5fa23c0cc4f4f', 'clean', '5fa23c0cc564d'),
('5fa23c0cc6bf3', 'comes', '5fa23c0cc6edd'),
('5fa23c0cc6bf3', 'come', '5fa23c0cc6ede'),
('5fa23c0cc6bf3', 'came', '5fa23c0cc6edf'),
('5fa23c0cc6bf3', 'are coming', '5fa23c0cc6ee0'),
('5fa23c0cc7de2', 'cry', '5fa23c0cc81a2'),
('5fa23c0cc7de2', 'cries', '5fa23c0cc81a4'),
('5fa23c0cc7de2', 'cried', '5fa23c0cc81a5'),
('5fa23c0cc7de2', 'are crying', '5fa23c0cc81a6'),
('5fa23c0cc9387', 'It snows', '5fa23c0cc9598'),
('5fa23c0cc9387', 'It snowed', '5fa23c0cc959a'),
('5fa23c0cc9387', 'It is snowing', '5fa23c0cc959a'),
('5fa23c0cc9387', 'It is snow', '5fa23c0cc959b'),
('5fa260bbbdff3', 'database packages', '5fa260bbc3381'),
('5fa260bbbdff3', 'file packages', '5fa260bbc338b'),
('5fa260bbbdff3', 'bus packages', '5fa260bbc338e'),
('5fa260bbbdff3', 'software packages', '5fa260bbc3393'),
('5fa260bbd5c08', 'experimental program', '5fa260bbd652f'),
('5fa260bbd5c08', 'system program', '5fa260bbd6538'),
('5fa260bbd5c08', 'specialized program', '5fa260bbd653a'),
('5fa260bbd5c08', 'organized program', '5fa260bbd653c'),
('5fa260bbda3f0', 'program in High-level language kept on disk', '5fa260bbdb6fb'),
('5fa260bbda3f0', 'contents of main memory', '5fa260bbdb70f'),
('5fa260bbda3f0', 'a program in execution', '5fa260bbdb713'),
('5fa260bbda3f0', 'a job in secondary memory', '5fa260bbdb717'),
('5fa260bbdd85d', 'Linker address origin', '5fa260bbddf49'),
('5fa260bbdd85d', 'Load address origin', '5fa260bbddf5f'),
('5fa260bbdd85d', 'Phase library', '5fa260bbddf64'),
('5fa260bbdd85d', 'Absolute library', '5fa260bbddf68'),
('5fa260bbe01b3', 'is a sequence of instructions', '5fa260bbe099a'),
('5fa260bbe01b3', 'is the device where information is stored', '5fa260bbe09b3'),
('5fa260bbe01b3', 'is an device that performs a sequence of operations specified by instructions in memory', '5fa260bbe09c3'),
('5fa260bbe01b3', 'none of these', '5fa260bbe09c8');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5fa23b1c0041f', '5fa23c0cc3569', 'I am play tennis every Sunday morning.', 4, 1),
('5fa23b1c0041f', '5fa23c0cc4f4f', 'Jun-Sik cleans his teeth before breakfast every morning.', 4, 2),
('5fa23b1c0041f', '5fa23c0cc6bf3', 'How many students in your class ..... from Korea?', 4, 3),
('5fa23b1c0041f', '5fa23c0cc7de2', 'Babies ..... when they are hungry.', 4, 4),
('5fa23b1c0041f', '5fa23c0cc9387', 'It is snow many times every winter in Frankfurt.', 4, 5),
('5fa25f831f9b5', '5fa260bbbdff3', 'Set of programs which consist of full set of documentation is termed as', 4, 1),
('5fa25f831f9b5', '5fa260bbd5c08', 'Program which is used to control system performance is classified as', 4, 2),
('5fa25f831f9b5', '5fa260bbda3f0', 'Process is', 4, 3),
('5fa25f831f9b5', '5fa260bbdd85d', 'Load address for the first word of the program is called', 4, 4),
('5fa25f831f9b5', '5fa260bbe01b3', 'What is memory in Computer?', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5fa23b1c0041f', 'English', 2, 0, 5, 0, 'ENG 101', '#exam', '2020-11-04 05:24:44'),
('5fa25f831f9b5', 'Software', 5, 0, 5, 0, 'CSE 111', '', '2020-11-04 08:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('s@r.com', 25, '2020-11-05 04:22:40'),
('m@m.com', 6, '2020-11-04 08:14:00'),
('ms@r.com', 15, '2020-11-04 09:28:10'),
('ss@rr.com', 15, '2020-11-04 09:30:03'),
('sss@r.com', 25, '2020-11-04 09:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Mahmudul', 'M', 'BUBT', 'm@m.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b'),
('Sayed', 'M', 'BUBT', 'ms@r.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b'),
('Nnnnn', 'F', 'BUBT', 'n@n.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b'),
('Sayed', 'M', 'BUBT', 's@r.com', 123456789, '827ccb0eea8a706c4c34a16891f84e7b'),
('Sr', 'M', 'BUBT', 'ss@rr.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b'),
('Sayed Sr', 'M', 'BUBT', 'sss@r.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
