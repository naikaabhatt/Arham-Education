-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 12:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `Announcement_id` int(11) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Announcemnet` varchar(500) NOT NULL,
  `Date` date NOT NULL,
  `Batch_id` int(11) NOT NULL,
  `Faculty_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`Announcement_id`, `Title`, `Announcemnet`, `Date`, `Batch_id`, `Faculty_id`) VALUES
(1, 'carry minaiti', 'kaise hai aap log', '2020-06-03', 1, 1),
(3, 'hello worldd', 'kaise hai aap log', '2020-06-05', 6, 1),
(4, 'hello worldd', 'kaise hai aap log', '2020-06-06', 6, 1),
(5, 'test', 'kaise hai aap log454154444', '2020-06-07', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Attendence_id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Student_id` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Attendence_id`, `Date`, `Student_id`, `Status`) VALUES
(1, '2020-06-03', 1, 1),
(2, '2020-06-03', 2, 1),
(3, '2020-06-02', 2, 0),
(4, '2020-06-02', 3, 1),
(6, '2020-06-05', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `Batch_id` int(11) NOT NULL,
  `Batch_name` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`Batch_id`, `Batch_name`) VALUES
(6, 'CMAT'),
(0, 'ALUMNI'),
(8, 'BB');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `Exam_id` int(11) NOT NULL,
  `Exam_name` varchar(20) NOT NULL,
  `Batch_id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Marks` int(11) NOT NULL,
  `Time` int(11) NOT NULL,
  `Faculty_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`Exam_id`, `Exam_name`, `Batch_id`, `Date`, `Marks`, `Time`, `Faculty_id`) VALUES
(1, 'jainam', 1, '2020-06-03', 4, 1, 1),
(2, 'cmat', 1, '2020-06-03', 4, 1, 1),
(3, 'cmat1', 1, '2020-06-03', 12, 1, 1),
(4, 'Jainam shahqq1', 1, '2020-06-03', 4, 1, 1),
(5, 'jainam12', 6, '2020-06-04', 4, 2, 1),
(6, 'math', 6, '2020-06-04', 8, 1, 1),
(7, 'jainam', 8, '2020-06-05', 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Faculty_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Mobile_no` varchar(10) NOT NULL,
  `Email_id` varchar(50) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Salary` int(11) NOT NULL,
  `Qualification` varchar(50) NOT NULL,
  `Role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Faculty_id`, `Name`, `Mobile_no`, `Email_id`, `Password`, `Date_of_birth`, `Salary`, `Qualification`, `Role`) VALUES
(1, 'Deep Bhavsar', '8128240106', 'deepbhavsar9@gmail.com', 'xyz', '1999-06-09', 25000, 'MSC.IT', 1),
(2, 'Jainam shah', '8485996496', 'jainamdshah3998@gmail.com', '456', '2000-12-27', 25000, 'BA', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `Transaction_id` int(11) NOT NULL,
  `Student_id` int(11) NOT NULL,
  `Paid_amount` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`Transaction_id`, `Student_id`, `Paid_amount`, `Date`) VALUES
(1, 1, 1200, '2020-06-03'),
(2, 2, 12000, '2020-06-03'),
(3, 3, 5000, '2020-06-04'),
(4, 3, 5000, '2020-06-04'),
(5, 5, 5000, '2020-06-04'),
(6, 3, 5000, '2020-06-04'),
(7, 4, 12000, '2020-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `Question_id` int(11) NOT NULL,
  `Tag_id` int(11) NOT NULL,
  `Difficulty` int(11) NOT NULL,
  `Question` varchar(4000) NOT NULL,
  `Option1` varchar(100) NOT NULL,
  `Option2` varchar(100) NOT NULL,
  `Option3` varchar(100) NOT NULL,
  `Option4` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL,
  `Count` int(11) NOT NULL,
  `Faculty_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`Question_id`, `Tag_id`, `Difficulty`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Answer`, `Count`, `Faculty_id`) VALUES
(1, 1, 1, 'value of pi', '3.14', '3.25', '3.25', '3.22', '1', 3, 1),
(2, 1, 1, 'value of pi', '3.14', '3.25', '3.26', '3.21', '3.14', 2, 1),
(3, 4, 1, '5*5', '25', '20', '32', '22', '25', 2, 1),
(4, 3, 2, '5+5', '10', '33', '66', '55', '10', 6, 1),
(5, 5, 3, 'meaning of hard', 'difficult', 'medium', 'easy', 'none', 'difficult', 1, 1),
(6, 6, 3, 'to kese hai aap loj', 'carry', 'bb', 'ashish', 'harsh', 'carry', 1, 1),
(7, 3, 1, 'value of pi', '3.14', '3.15', '.3.22', '3.2', '3.14', 3, 1),
(8, 4, 1, '5-3', '2', '6', '9', '3', '2', 1, 1),
(9, 7, 2, 'value of pi', '3.14', '3.15', '3.16', '3.17', '3.14', 1, 1),
(10, 2, 3, 'hello', '1', '2', '3', '11', '11', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_paper`
--

CREATE TABLE `question_paper` (
  `Question_id` int(11) NOT NULL,
  `Exam_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_paper`
--

INSERT INTO `question_paper` (`Question_id`, `Exam_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 3),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(7, 6),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Student_exam_id` int(11) NOT NULL,
  `Obtained_Marks` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Student_exam_id`, `Obtained_Marks`) VALUES
(1, 0),
(2, 0),
(3, 4),
(4, 8),
(5, 4),
(6, 0),
(7, 4),
(8, 8),
(9, 4),
(10, 4),
(11, 4),
(12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `Transaction_id` int(11) NOT NULL,
  `Faculty_id` int(11) NOT NULL,
  `Paid_amount` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`Transaction_id`, `Faculty_id`, `Paid_amount`, `Date`) VALUES
(1, 2, 25000, '2020-06-04'),
(2, 1, 25000, '2020-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Batch_no` int(11) NOT NULL,
  `Email_id` varchar(50) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Middle_name` varchar(20) NOT NULL,
  `Parent_name` varchar(50) NOT NULL,
  `Parent_mobile_no` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Fees` int(11) NOT NULL,
  `Joining_date` date NOT NULL,
  `Gender` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Password`, `Name`, `Batch_no`, `Email_id`, `Phone_no`, `Last_name`, `Middle_name`, `Parent_name`, `Parent_mobile_no`, `Address`, `Date_of_birth`, `Status`, `Fees`, `Joining_date`, `Gender`) VALUES
(2, '123', 'Jainam', 0, 'jainamdshah3998@gmail.com', '8485996477', 'Shah', 'd ', 'dipak', '6665652121', '12 DARSHAN BUNGLOW BHAGWAN NAGARS', '2000-12-07', 0, 12000, '2020-06-03', 'Male'),
(3, '9699', 'Deep', 8, 'deepbhavsar9@gmail.com', '1234567890', 'Bhavsar', 'p', 'parents', '1234567890', '12', '2000-11-08', 0, 15000, '2020-06-03', 'Male'),
(4, '123', 'shah', 0, 'jainamdshah39980@gmail.com', '1234567890', 'dipak', 'jainam', 'dipak', '6665652121', '12 DARSHAN BUNGLOW BHAGWAN NAGARS', '2000-11-08', 0, 12000, '2020-06-04', 'Male'),
(5, '123', 'shah', 6, 'jainamdshah39981@gmail.com', '8485996496', 'dipak', 'jainam', 'dipak', '6665652121', '12 DARSHAN BUNGLOW BHAGWAN NAGARS', '1990-10-09', 1, 25000, '2020-06-04', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `student_answer`
--

CREATE TABLE `student_answer` (
  `Student_exam_id` int(11) NOT NULL,
  `Question_id` int(11) NOT NULL,
  `Answer_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_answer`
--

INSERT INTO `student_answer` (`Student_exam_id`, `Question_id`, `Answer_id`) VALUES
(1, 1, '3.14'),
(2, 1, '3.14'),
(3, 2, '3.14'),
(4, 1, '3.14'),
(4, 3, '25'),
(4, 4, '10'),
(5, 4, '10'),
(6, 1, '3.25'),
(7, 2, '3.14'),
(8, 1, '3.25'),
(8, 3, '25'),
(8, 4, '10'),
(9, 4, '10'),
(10, 4, '10'),
(11, 7, '3.14'),
(12, 4, '10'),
(12, 7, '3.14');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `Student_exam_id` int(11) NOT NULL,
  `Student_id` int(11) NOT NULL,
  `Exam_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_exam`
--

INSERT INTO `student_exam` (`Student_exam_id`, `Student_id`, `Exam_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 3),
(5, 2, 4),
(6, 3, 1),
(7, 3, 2),
(8, 3, 3),
(9, 3, 4),
(10, 5, 5),
(11, 5, 6),
(12, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_id`, `Name`) VALUES
(1, 'C'),
(2, 'MATH'),
(3, 'ENGLISH'),
(4, 'BB ki vines');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `Tag_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`Tag_id`, `Name`, `Subject_id`) VALUES
(1, 'pointer', 2),
(2, 'array', 1),
(3, 'addation', 2),
(4, 'multiplication', 2),
(5, 'meaning', 3),
(6, 'opposite', 3),
(7, 'add', 2);

-- --------------------------------------------------------

--
-- Table structure for table `to_do_list`
--

CREATE TABLE `to_do_list` (
  `List_id` int(11) NOT NULL,
  `Faculty_id` int(11) NOT NULL,
  `Topic` varchar(100) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_do_list`
--

INSERT INTO `to_do_list` (`List_id`, `Faculty_id`, `Topic`, `Status`) VALUES
(1, 1, 'BB ki vines', 2),
(3, 1, 'aasasa', 1),
(4, 1, 'pointer', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`Announcement_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Attendence_id`),
  ADD UNIQUE KEY `Attendence_id` (`Attendence_id`,`Date`),
  ADD UNIQUE KEY `Date` (`Date`,`Student_id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`Batch_id`),
  ADD UNIQUE KEY `Batch_name` (`Batch_name`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`Exam_id`),
  ADD UNIQUE KEY `Exam_name` (`Exam_name`,`Batch_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Faculty_id`),
  ADD UNIQUE KEY `Email_id` (`Email_id`),
  ADD UNIQUE KEY `Mobile_no` (`Mobile_no`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`Transaction_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`Question_id`);

--
-- Indexes for table `question_paper`
--
ALTER TABLE `question_paper`
  ADD PRIMARY KEY (`Question_id`,`Exam_id`),
  ADD UNIQUE KEY `Question_id` (`Question_id`,`Exam_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`Student_exam_id`,`Obtained_Marks`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`Transaction_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD UNIQUE KEY `Email_id` (`Email_id`,`Phone_no`);

--
-- Indexes for table `student_answer`
--
ALTER TABLE `student_answer`
  ADD PRIMARY KEY (`Student_exam_id`,`Question_id`,`Answer_id`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`Student_exam_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`Tag_id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `to_do_list`
--
ALTER TABLE `to_do_list`
  ADD PRIMARY KEY (`List_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `Announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `Attendence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `Batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `Exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `Faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `Transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `Question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `Transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_exam`
--
ALTER TABLE `student_exam`
  MODIFY `Student_exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `Tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `to_do_list`
--
ALTER TABLE `to_do_list`
  MODIFY `List_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
