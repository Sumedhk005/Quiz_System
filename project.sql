-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 06:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('1', '5b13ed3a94374'),
('2', '5b13ed7263d80'),
('3', '5b141d71485e4'),
('4', '5b141d71978d4'),

('5', '5b141d71e5f43'),
('6', '5b141d7222884'),
('7', '5b141d7268b98'),

('8', '5b141d72aefcb'),
('9', '5b141d72dfa7b'),

('10', '5b141d73858e8'),
('11', '5b141d73858df'),

('12', '5b141d73858d0'),
('13', '5b141d73858e8'),

('14', '5b141d73858df'),
('15', '5b141d73858d0'),
('16', '5b141d73858d0'),

('17', '5b141d731c234'),
('18', '5b141d73858d0'),
('19', '5b141d731c234'),
('20', '5b141d73858d0'),
('21', '5b141d731c234');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm');

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
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('pp@gmail.com', '6640e9733a75f', 3, 5, 3, 2, '2024-05-12 16:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('1', 'Bjarne Stroustrup', '5b13ed3a9436a'),
('1', 'Dennis Ritchie', '5b13ed3a94374'),
('1', 'James A. Gosling', '5b13ed3a94377'),
('1', 'Dr. E.F. Codd', '5b13ed3a94379'),

('2', 'An alphabet', '5b13ed7263d70'),
('2', 'A number', '5b13ed7263d7a'),
('2', 'A special symbol other than underscore', '5b13ed7263d7d'),
('2', 'both (b) and (c)', '5b13ed7263d80'),

('3', '/ + * ‐', '5b141d71485b9'),
('3', '* ‐ / +', '5b141d71485dc'),
('3', '+ ‐ / *', '5b141d71485e0'),
('3', '* / + ‐', '5b141d71485e4'),

('4', 'goodbye', '5b141d71978be'),
('4', 'odbye', '5b141d71978cc'),
('4', 'bye', '5b141d71978d1'),
('4', 'dbye', '5b141d71978d4'),

('5', '0', '5b141d71e5f2b'),
('5', '2', '5b141d71e5f3c'),
('5', '23', '5b141d71e5f43'),
('5', 'Compiler error', '5b141d71e5f48'),

('6', '3', '5b141d7222820'),
('6', '21', '5b141d722282f'),
('6', '17', '5b141d7222880'),
('6', '7', '5b141d7222884'),

('7', 'static a = 10; //static as', '5b141d7268b8a'),
('7', 'static int func (int); //parameter as static', '5b141d7268b95'),
('7', 'static static int a; //a static variable prefixed with static', '5b141d7268b98'),
('7', 'all of the mentioned', '5b141d7268b9a'),

('8', 'Preprocessor directive', '5b141d72aefcb'),
('8', 'Inclusion directive', '5b141d72aefd8'),
('8', 'File inclusion directive', '5b141d72aefdc'),
('8', 'None of the mentioned', '5b141d72aefe0'),

('9', '#', '5b141d72dfa7b'),
('9', '$', '5b141d72dfa85'),
('9', '""', '5b141d72dfa88'),
('9', '&', '5b141d72dfa8b'),

('10', '7', '5b141d73858d0'),
('10', '127', '5b141d73858df'),
('10', '255', '5b141d731c234'),
('10', 'No limits', '5b141d73858e8'),

('11', 'Attach', '5b141d73858d0'),
('11', 'Append', '5b141d73858df'),
('11', 'Apprehend', '5b141d731c234'),
('11', 'Add', '5b141d73858e8'),

('12', 'Function', '5b141d73858d0'),
('12', 'Input variables', '5b141d73858df'),
('12', 'Output variables', '5b141d731c234'),
('12', 'All of the above', '5b141d73858e8'),

('13', '20', '5b141d73858d0'),
('13', '40', '5b141d73858df'),
('13', '44', '5b141d731c234'),
('13', '45', '5b141d73858e8'),

('14', 'Process of multiple functions', '5b141d73858d0'),
('14', 'Multiple functions with the same name', '5b141d73858df'),
('14', 'Looping functions', '5b141d731c234'),
('14', 'All of the above', '5b141d73858e8'),

('15', 'The layout of an input string', '5b141d73858d0'),
('15', 'Array', '5b141d73858df'),
('15', 'Output function', '5b141d731c234'),
('15', 'All of the above ', '5b141d73858e8'),

('16', '=', '5b141d73858d0'),
('16', '||', '5b141d73858df'),
('16', '==', '5b141d731c234'),
('16', '!=', '5b141d73858e8'),

('17', 'while', '5b141d73858d0'),
('17', 'for', '5b141d73858df'),
('17', 'if-else', '5b141d731c234'),
('17', 'do-while', '5b141d73858e8'),

('18', 'External', '5b141d73858d0'),
('18', 'Internal', '5b141d73858df'),
('18', 'Both External and Internal', '5b141d731c234'),
('18', 'None of the above', '5b141d73858e8'),

('19', 'Decision making', '5b141d73858d0'),
('19', 'Variable declaration', '5b141d73858df'),
('19', 'Code organization and reusability', '5b141d731c234'),
('19', 'Printing output', '5b141d73858e8'),

('20', 'Forever', '5b141d73858d0'),
('20', 'Never', '5b141d73858df'),
('20', '0', '5b141d731c234'),
('20', '1', '5b141d73858e8'),

('21', '3', '5b141d73858d0'),
('21', '5', '5b141d73858df'),
('21', '8', '5b141d731c234'),
('21', '11', '5b141d73858e8');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('cse', '1', 'Who is father of C Language?', '4', '1'),
('cse', '2', 'In C variable cannot start with?', '4', '2'),
('cse', '3', 'Which of the following shows the correct hierarchy of arithmetic operations in C', '4', '3'),
('cse', '4', 'What will be the output of the following statement ? \n printf( 3 + "goodbye");', '4', '4'),
('cse', '5', 'What will be output if you will compile and execute the following c code? \n int extern x; \n void main() \n printf("%d",x); \n x=2; \n getch(); \n } \n int x=23;', '4', '5'),
('cse', '6', 'What will be output if you will compile and execute the following c code? \n void main(){ \n int a,b; \n a=1,3,15; \n b=(2,4,6); \n clrscr(); \n printf("%d ",a+b); \n getch(); \n }', '4', '6'),
('cse', '7', 'Which of following is not accepted in C?', '4', '7'),
('cse', '8', 'What is #include <stdio.h>?', '4', '8'),
('cse', '9', 'The C-preprocessors are specified with _________ symbol.', '4', '9'),
('cse', '10', 'How many number of pointer (*) does C have against a pointer variable declaration?', '4', '10'),
('cse', '11', 'What is meant by ‘a’ in the following C operation? \n fp = fopen("Random.txt", "a");', '4', '11'),
('cse', '12', 'Which of the following is an important requirement of c programming?', '4', '12'),
('cse', '13', 'How many variables can the following string contain bat[45]?', '4', '13'),
('cse', '14', 'What is function overloading?', '4', '14'),
('cse', '15', 'What is scanf() in c programming?', '4', '15'),
('cse', '16', 'Which of these is NOT a relational or logical operator?', '4', '16'),
('cse', '17', 'We cannot use the keyword ‘break’ simply within _________.', '4', '17'),
('cse', '18', 'The global variables are ____________.', '4', '18'),
('cse', '19', 'In C, what is Function primarily used for?', '4', '19'),
('cse', '20', 'How many times will the following loop execute? \n for(j = 1; j <= 10; j = j-1)  ', '4', '20'),
('cse', '21', 'What will the result of num variable after execution of the following statements? \n int num = 58; \n num % = 11; ', '4', '21');
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
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('cse', 'Technova-c', 1, 0, 5, 30, 'solve all', 'C', '2024-05-12 16:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sk@gmail.com', 6, '2024-05-12 16:51:45'),
('pp@gmail.com', 3, '2024-05-12 16:54:53');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Atharv Patankar', 'M', 'PVPIT', 'pp@gmail.com', 2582582582, '827ccb0eea8a706c4c34a16891f84e7b'),
('Sumedh Kamble', 'M', 'PVPIT', 'sk@gmail.com', 1234567890, '827ccb0eea8a706c4c34a16891f84e7b');

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
