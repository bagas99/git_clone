-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2020 at 05:36 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `tbDataMotor`
--

CREATE TABLE `tbDataMotor` (
  `id` int(11) NOT NULL,
  `gambarMotor` varchar(256) NOT NULL,
  `kodeMotor` varchar(6) NOT NULL,
  `namaMotor` varchar(128) NOT NULL,
  `tipeMotor` varchar(6) NOT NULL,
  `tipeMesin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbDataMotor`
--

INSERT INTO `tbDataMotor` (`id`, `gambarMotor`, `kodeMotor`, `namaMotor`, `tipeMotor`, `tipeMesin`) VALUES
(1, 'motor.jpg', 'MO0001', 'Mio', 'TP001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbTipeMesin`
--

CREATE TABLE `tbTipeMesin` (
  `id` int(11) NOT NULL,
  `kodeTipe` varchar(6) NOT NULL,
  `namaTipe` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbTipeMesin`
--

INSERT INTO `tbTipeMesin` (`id`, `kodeTipe`, `namaTipe`) VALUES
(2, 'TME001', 'Ga tau');

-- --------------------------------------------------------

--
-- Table structure for table `tbTipeMotor`
--

CREATE TABLE `tbTipeMotor` (
  `id` int(11) NOT NULL,
  `kodeTipe` varchar(5) NOT NULL,
  `namaTipe` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbTipeMotor`
--

INSERT INTO `tbTipeMotor` (`id`, `kodeTipe`, `namaTipe`) VALUES
(10, 'TP001', 'Matic'),
(11, 'TP002', 'Road');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dataMotor`
--

CREATE TABLE `tb_dataMotor` (
  `id` int(11) NOT NULL,
  `gambar` varchar(256) NOT NULL,
  `tipeMotor` int(11) NOT NULL,
  `namaMotor` varchar(256) NOT NULL,
  `hargaMotor` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dataMotor`
--

INSERT INTO `tb_dataMotor` (`id`, `gambar`, `tipeMotor`, `namaMotor`, `hargaMotor`) VALUES
(1, 'mio.jpg', 1, 'Mio', '12000000'),
(2, 'vega.jpg', 2, 'Vega', '8500000'),
(3, '', 2, 'Lexy', '2300000'),
(4, '', 2, 'Lexy', '2300000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kode`
--

CREATE TABLE `tb_kode` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kode`
--

INSERT INTO `tb_kode` (`id`, `kode`, `nama`) VALUES
(1, 'KD001', 'coba'),
(2, 'KD002', 'coba lagi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tipeMesin`
--

CREATE TABLE `tb_tipeMesin` (
  `id` int(11) NOT NULL,
  `tipeMesin` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbDataMotor`
--
ALTER TABLE `tbDataMotor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbTipeMesin`
--
ALTER TABLE `tbTipeMesin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbTipeMotor`
--
ALTER TABLE `tbTipeMotor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_dataMotor`
--
ALTER TABLE `tb_dataMotor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kode`
--
ALTER TABLE `tb_kode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tipeMesin`
--
ALTER TABLE `tb_tipeMesin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbDataMotor`
--
ALTER TABLE `tbDataMotor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbTipeMesin`
--
ALTER TABLE `tbTipeMesin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbTipeMotor`
--
ALTER TABLE `tbTipeMotor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_dataMotor`
--
ALTER TABLE `tb_dataMotor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_kode`
--
ALTER TABLE `tb_kode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_tipeMesin`
--
ALTER TABLE `tb_tipeMesin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
