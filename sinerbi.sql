-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2020 at 01:01 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sinerbi`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` smallint(6) NOT NULL,
  `fakultas` varchar(45) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data_updated` timestamp NULL DEFAULT NULL,
  `data_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `fakultas`, `data_created`, `data_updated`, `data_deleted`) VALUES
(1, 'Ilmu Komputer', '2020-03-28 23:36:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` smallint(6) NOT NULL,
  `id_fakultas` smallint(6) NOT NULL,
  `jurusan` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `date_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `id_fakultas`, `jurusan`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 1, 'Sistem Informasi', '2020-03-28 23:38:04', NULL, NULL),
(2, 1, 'Teknik Informatika', '2020-03-28 23:38:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `id_program_studi` smallint(6) NOT NULL,
  `email` varchar(45) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `data_updated` timestamp NULL DEFAULT NULL,
  `data_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `password`, `id_program_studi`, `email`, `no_telp`, `tanggal_lahir`, `jenis_kelamin`, `data_created`, `data_updated`, `data_deleted`) VALUES
('175150400111003', 'Mohammad Royhan Afif Al Mudhari', '123', 1, 'royhanafif@student.ub.ac.id', '+62838341358', '2020-03-02', 'Laki-Laki', '2020-03-28 09:56:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `id` smallint(6) NOT NULL,
  `id_jurusan` smallint(6) NOT NULL,
  `id_strata` smallint(6) NOT NULL,
  `program_studi` varchar(45) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `data_updated` timestamp NULL DEFAULT NULL,
  `data_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`id`, `id_jurusan`, `id_strata`, `program_studi`, `data_created`, `data_updated`, `data_deleted`) VALUES
(1, 1, 1, 'Sistem Informasi', '2020-03-28 23:41:06', NULL, NULL),
(2, 1, 1, 'Pendidikan Teknologi Informasi', '2020-03-28 23:41:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strata`
--

CREATE TABLE `strata` (
  `id` smallint(6) NOT NULL,
  `singkat` varchar(10) NOT NULL,
  `strata` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `date_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strata`
--

INSERT INTO `strata` (`id`, `singkat`, `strata`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 'S1', 'Strata 1', '2020-03-28 23:40:09', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strata`
--
ALTER TABLE `strata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strata`
--
ALTER TABLE `strata`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
