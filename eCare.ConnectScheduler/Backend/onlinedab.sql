-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 05:30 AM
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
-- Database: `onlinedab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admincredentials`
--

CREATE TABLE `admincredentials` (
  `AD_ID` bigint(20) UNSIGNED NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admincredentials`
--

INSERT INTO `admincredentials` (`AD_ID`, `EMAIL`, `PASSWORD`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `alldoctors`
--

CREATE TABLE `alldoctors` (
  `DOC_ID` bigint(20) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `REGNO` varchar(20) NOT NULL,
  `SPECIALIZATION` varchar(20) NOT NULL,
  `LOCATION` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alldoctors`
--

INSERT INTO `alldoctors` (`DOC_ID`, `NAME`, `EMAIL`, `PHONE_NUMBER`, `REGNO`, `SPECIALIZATION`, `LOCATION`) VALUES
(1, 'Jayvee', 'jayvee@gmail.com', 987654321, 'REG01', 'Neurology', 'Dagupan'),
(2, 'marc', 'marc@gmail.com', 9198765432, '007', 'Pediatrics', 'Longos');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `DOC_ID` bigint(20) NOT NULL,
  `PATIENT_ID` bigint(20) NOT NULL,
  `PATIENT_NAME` varchar(20) NOT NULL,
  `DATE` varchar(10) NOT NULL,
  `TIME` time NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`DOC_ID`, `PATIENT_ID`, `PATIENT_NAME`, `DATE`, `TIME`, `DESCRIPTION`) VALUES
(1, 1, 'Jereme', '2023-09-27', '18:00:00', ''),
(2, 1, 'Jereme', '2023-09-28', '12:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `confirmedappointments`
--

CREATE TABLE `confirmedappointments` (
  `DOC_ID` bigint(20) NOT NULL,
  `PATIENT_ID` bigint(20) NOT NULL,
  `PATIENT_NAME` varchar(20) NOT NULL,
  `PHONE_NUMBER` int(11) NOT NULL,
  `DATE` varchar(10) NOT NULL,
  `TIME` time NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confirmedappointments`
--

INSERT INTO `confirmedappointments` (`DOC_ID`, `PATIENT_ID`, `PATIENT_NAME`, `PHONE_NUMBER`, `DATE`, `TIME`, `DESCRIPTION`) VALUES
(1, 1, 'Jereme', 995116411, '2023-09-27', '11:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorcredentials`
--

CREATE TABLE `doctorcredentials` (
  `DOC_ID` bigint(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorcredentials`
--

INSERT INTO `doctorcredentials` (`DOC_ID`, `EMAIL`, `PASSWORD`) VALUES
(1, 'jayvee@gmail.com', 'jayvee'),
(2, 'marc@gmail.com', 'marc');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `SL_NO` bigint(20) UNSIGNED NOT NULL,
  `DOC_ID` bigint(20) NOT NULL,
  `PATIENT_ID` bigint(20) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`SL_NO`, `DOC_ID`, `PATIENT_ID`, `REMARK`) VALUES
(1, 1, 1, 'Great service!!!');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `DOC_ID` bigint(20) NOT NULL,
  `PATIENT_ID` bigint(20) NOT NULL,
  `PATIENT_NAME` varchar(20) NOT NULL,
  `PHONE_NUMBER` int(11) NOT NULL,
  `DATE` varchar(10) NOT NULL,
  `TIME` time NOT NULL,
  `FEEDBACK` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`DOC_ID`, `PATIENT_ID`, `PATIENT_NAME`, `PHONE_NUMBER`, `DATE`, `TIME`, `FEEDBACK`) VALUES
(2, 1, 'Jereme', 995116411, '2023-09-24', '15:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PATIENT_ID` bigint(20) UNSIGNED NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `GENDER` varchar(7) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `MARITAL_STATUS` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PATIENT_ID`, `NAME`, `GENDER`, `DOB`, `EMAIL`, `PHONE_NUMBER`, `MARITAL_STATUS`, `ADDRESS`) VALUES
(1, 'Jereme', 'Male', '2002-12-02', 'jereme@gmail.com', 9951164112, 'Single', 'Bonuan Gueset');

-- --------------------------------------------------------

--
-- Table structure for table `patientcredentials`
--

CREATE TABLE `patientcredentials` (
  `PATIENT_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientcredentials`
--

INSERT INTO `patientcredentials` (`PATIENT_ID`, `EMAIL`, `PASSWORD`) VALUES
(4, 'jereme@gmail.com', 'jereme');

-- --------------------------------------------------------

--
-- Table structure for table `registerdoctor`
--

CREATE TABLE `registerdoctor` (
  `DOC_ID` bigint(20) UNSIGNED NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `REGNO` varchar(20) NOT NULL,
  `SPECIALIZATION` varchar(20) NOT NULL,
  `LOCATION` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `validdoctor`
--

CREATE TABLE `validdoctor` (
  `DOC_ID` bigint(20) UNSIGNED NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `REGNO` varchar(20) NOT NULL,
  `SPECIALIZATION` varchar(15) NOT NULL,
  `LOCATION` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `validdoctor`
--

INSERT INTO `validdoctor` (`DOC_ID`, `NAME`, `EMAIL`, `PHONE_NUMBER`, `REGNO`, `SPECIALIZATION`, `LOCATION`) VALUES
(1, 'Jayvee', 'jayvee@gmail.com', 987654321, 'REG01', 'Neurology', 'Dagupan'),
(2, 'marc', 'marc@gmail.com', 9198765432, '007', 'Pediatrics', 'Longos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admincredentials`
--
ALTER TABLE `admincredentials`
  ADD UNIQUE KEY `ad_id` (`AD_ID`),
  ADD UNIQUE KEY `NAME` (`EMAIL`);

--
-- Indexes for table `alldoctors`
--
ALTER TABLE `alldoctors`
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`DOC_ID`,`PATIENT_ID`,`DATE`,`TIME`);

--
-- Indexes for table `confirmedappointments`
--
ALTER TABLE `confirmedappointments`
  ADD PRIMARY KEY (`DOC_ID`,`PATIENT_ID`,`DATE`,`TIME`);

--
-- Indexes for table `doctorcredentials`
--
ALTER TABLE `doctorcredentials`
  ADD UNIQUE KEY `DOC_ID` (`DOC_ID`),
  ADD UNIQUE KEY `NAME` (`EMAIL`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD UNIQUE KEY `SL_NO` (`SL_NO`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`DOC_ID`,`PATIENT_ID`,`DATE`,`TIME`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD UNIQUE KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `patientcredentials`
--
ALTER TABLE `patientcredentials`
  ADD PRIMARY KEY (`PATIENT_ID`),
  ADD UNIQUE KEY `NAME` (`EMAIL`);

--
-- Indexes for table `registerdoctor`
--
ALTER TABLE `registerdoctor`
  ADD UNIQUE KEY `id` (`DOC_ID`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `validdoctor`
--
ALTER TABLE `validdoctor`
  ADD UNIQUE KEY `DOC_ID` (`DOC_ID`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admincredentials`
--
ALTER TABLE `admincredentials`
  MODIFY `AD_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `SL_NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PATIENT_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patientcredentials`
--
ALTER TABLE `patientcredentials`
  MODIFY `PATIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registerdoctor`
--
ALTER TABLE `registerdoctor`
  MODIFY `DOC_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `validdoctor`
--
ALTER TABLE `validdoctor`
  MODIFY `DOC_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
