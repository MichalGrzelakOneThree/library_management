-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 06, 2023 at 12:05 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `USER_ID` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `CONTACT` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`USER_ID`, `NAME`, `PASSWORD`, `CONTACT`) VALUES
('MichalG', 'Michal Grzelak', '123', '345645644');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `BOOK_ID` varchar(12) NOT NULL,
  `CATEGORY` varchar(50) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `COPIES` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BOOK_ID`, `CATEGORY`, `TITLE`, `AUTHOR`, `COPIES`) VALUES
('B1', 'Engineering', 'Metal Engineering Textbook', 'Josef Dillinger', 2),
('B2', 'Engineering', 'My Revision Notes: AQA GCSE (9-1) Engineering', 'Anderson Paul', 2),
('B3', 'English', 'Going International. Student\'s Book', 'Harding Keith', 18),
('B4', 'Coaching', 'Complete Hanbook of Coaching', 'Cox Elaine', 3),
('B5', 'English', 'English for Qualified Dental Employees', 'Bendix Heinz', 1),
('B6', 'Economics', 'Cambridge IGCSE and O Level Economics', 'Hoang Paul', 4),
('B7', 'Engineering', 'Air Conditioning Engineering', 'W.P. Jones', 5),
('B8', 'Mathematics', 'Book of proof', 'Richard Hammack', 17),
('B9', 'Popular science', 'Chaos. Making a new science', 'James Gleick', 20),
('B10', 'Chemistry', 'Organic chemistry', 'Jonathan Clayden', 19),
('B11', 'Geography', 'The map that changed the World', 'Willian Smith', 15),
('B12', 'Physics', 'The order of time', 'Carlo Rovelli', 21);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `staff`
--

CREATE TABLE `staff` (
  `ID` varchar(12) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `CONTACT` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID`, `NAME`, `CONTACT`) VALUES
('S1', 'Anthony Twea', 663063063),
('S2', 'Margaret Loomy', 663063064),
('S3', 'Mark Naem', 663063065),
('S4', 'Anna Joshy', 663063066);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`USER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
