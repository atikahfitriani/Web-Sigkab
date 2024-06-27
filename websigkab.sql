-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 02:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websigkab`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3302', 'Banyumas', '-7.362274826893668, 109.10943969842893', 82317924, 17083020.00);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3302010', 1, 'LUMBIR', 49870, 10266.00),
('3302020', 1, 'WANGON', 83695, 6078.00),
('3302030', 1, 'JATILAWANG', 66431, 4816.00),
('3302040', 1, 'RAWALO', 52847, 4964.00),
('3302050', 1, 'KEBASEN', 67140, 5399.00),
('3302060', 1, 'KEMRANJEN', 72383, 6071.00),
('3302070', 1, 'SUMPIUH', 57717, 6001.00),
('3302080', 1, 'TAMBAK', 50158, 5203.00),
('3302090', 1, 'SOMAGEDE', 37540, 4011.00),
('3302100', 1, 'KALIBAGOR', 56800, 3573.00),
('3302110', 1, 'BANYUMAS', 52878, 3809.00),
('3302120', 1, 'PATIKRAJA', 60637, 4322.00),
('3302130', 1, 'PURWOJATI', 36981, 3786.00),
('3302140', 1, 'AJIBARANG', 102326, 6653.00),
('3302150', 1, 'GUMELAR', 53349, 9395.00),
('3302160', 1, 'PEKUNCEN', 75576, 9270.00),
('3302170', 1, 'CILONGOK', 124684, 10534.00),
('3302180', 1, 'KARANGLEWAS', 67269, 3248.00),
('3302190', 1, 'KEDUNG BANTENG', 61771, 6022.00),
('3302200', 1, 'BATURRADEN', 53514, 4553.00),
('3302210', 1, 'SUMBANG', 93160, 5342.00),
('3302220', 1, 'KEMBARAN', 81737, 2592.00),
('3302230', 1, 'SOKARAJA', 89184, 2992.00),
('3302710', 1, 'PURWOKERTO SELATAN', 72304, 1375.00),
('3302720', 1, 'PURWOKERTO BARAT', 53349, 740.00),
('3302730', 1, 'PURWOKERTO TIMUR', 55270, 842.00),
('3302740', 1, 'PURWOKERTO UTARA', 50093, 901.00);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20301520, '3302050', 'SD NEGERI 4 CINDAGA', 'Jln Poncot, Cindaga', 'NEGERI', 'SD', '-7.5295,109.2346'),
(20301603, '3302010', 'SD NEGERI 6 LUMBIR', 'Butulan', 'NEGERI', 'SD', '-7.4482,108.9618'),
(20301690, '3302070', 'SD NEGERI 2 SUMPIUH', 'Jalan Nusawungu No.64', 'NEGERI', 'SD', '-7.61538,109.36455'),
(20301766, '3302130', 'SD NEGERI 3 KARANGMANGU', 'Jl. Pesanggrahan', 'NEGERI', 'SD', '-7.4758933,109.1463983'),
(20301832, '3302030', 'SD NEGERI 3 GUNUNGWETAN', 'Jl. Kaliduren', 'NEGERI', 'SD', '-7.5570917,109.0970233'),
(20302036, '3302110', 'SD NEGERI KEDUNGUTER', 'Jl Karang Sawah No 524', 'NEGERI', 'SD', '-7.5171,109.3003'),
(20302687, '3302090', 'SD NEGERI 2 KEMAWI', 'JLN.GERILYA NO.100 RT.02/RW.05', 'NEGERI', 'SD', '-7.5329,109.3742'),
(20302701, '3302120', 'SD NEGERI 2 KEDUNGRANDU', 'Jln Ketayasa Kedungrandu', 'NEGERI', 'SD', '-7.4686317,109.2209933'),
(20302720, '3302040', 'SDN 1 LOSARI', 'Jl. Jendreral Soedirman Losari No. 28', 'NEGERI', 'SD', '-7.5576467,109.154285'),
(20302787, '3302020', 'SD NEGERI 1 KLAPAGADING', 'Klapagading', 'NEGERI', 'SD', '-7.5091,109.0709'),
(20302861, '3302060', 'SD NEGERI 1 SIBRAMA', 'Sibrama', 'NEGERI', 'SD', '-7.5732,109.2966'),
(20338227, '3302080', 'SMAS PGRI TAMBAK', 'JL. KARANG PUCUNG TAMBAK', 'SWASTA', 'SMA', '-7.6202,109.4096'),
(20338306, '3302100', 'SMP NEGERI 4 KALIBAGOR', 'Jl. Bangin Srowot', 'NEGERI', 'SMP', '-7.51068,109.3235933');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `kecamatan_ibfk_1` (`id_kabupaten`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `kode_kecamatan` (`kode_kecamatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_2` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_2` FOREIGN KEY (`kode_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
