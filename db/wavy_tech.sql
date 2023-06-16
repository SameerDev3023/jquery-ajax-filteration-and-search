-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 13, 2023 at 10:38 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wavy_tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(99) NOT NULL,
  `first_name` varchar(99) NOT NULL,
  `last_name` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `number` bigint(12) NOT NULL,
  `doctor_type` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `first_name`, `last_name`, `email`, `number`, `doctor_type`) VALUES
(1, 'sahil', 'sharma', 'sahil@gmail.com', 6284313613, 'MD'),
(2, 'raamu', 'sharma', 'raamu@gmail.com', 621234566, 'MD'),
(3, 'raamu', 'sharma', 'raamu@gmail.com', 6212345661, 'MD'),
(4, 'shahid', 'rajput', 'shahid@gmail.com', 6212873241, 'MD'),
(5, 'rehmdeen', 'khan', 'rehmdeen@gmail.com', 6231342144, 'MBBS'),
(6, 'naina', 'thakur', 'naina@gmail.com', 2435221144, 'MBBS'),
(7, 'sana', 'rajput', 'sana@gmail.com', 2435342114, 'MBBS'),
(8, 'priya', 'kapoor', 'priya@gmail.com', 5343534211, 'MBBS'),
(9, 'sonakshi', 'sinha', 'sonakshi@gmail.com', 334211542, 'General practitioner'),
(10, 'sonakshi', 'sinha', 'sonakshi@gmail.com', 3342115421, 'General practitioner'),
(11, 'katrina', 'kapooor', 'katrina@gmail.com', 564553421, 'General practitioner'),
(12, 'katrina', 'kapooor', 'katrina@gmail.com', 56455342133, 'General practitioner'),
(13, 'katrina', 'kapooor', 'katrina@gmail.com', 56455342133, 'General practitioner'),
(14, 'katrina', 'kapooor', 'katrina@gmail.com', 56455342133, 'General practitioner'),
(15, 'katrina', 'kapooor', 'katrina@gmail.com', 5645534213, 'General practitioner'),
(16, 'kajal', 'devi', 'kajal@gmail.com', 5645534213, 'General practitioner'),
(17, 'seema', 'singh', 'seema@gmail.com', 5645534213, 'Pediatrician'),
(18, 'aaisha', 'khan', 'aaisha@gmail.com', 8334534213, 'Pediatrician'),
(19, 'amzad', 'khan', 'amzad@gmail.com', 9041834213, 'Pediatrician'),
(20, 'lovely', 'thakur', 'lovely@gmail.com', 9041834213, 'Pediatrician'),
(21, 'shehnaz', 'gill', 'shehnaz@gmail.com', 9041834213, 'Dermatologist'),
(22, 'avneet', 'kaur', 'avneet@gmail.com', 9041834213, 'Dermatologist'),
(23, 'jannat', 'zubair', 'jannt@gmail.com', 9041834213, 'Dermatologist'),
(24, 'aliya', 'bhatt', 'aliyabhatt@gmail.com', 93531834213, 'Dermatologist'),
(25, 'aliya', 'bhatt', 'aliyabhatt@gmail.com', 935331834213, 'Dermatologist'),
(26, 'aliya', 'bhatt', 'aliyabhatt@gmail.com', 935331834213, 'Dermatologist'),
(27, 'aliya', 'bhatt', 'aliyabhatt@gmail.com', 9353318342, 'Dermatologist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
