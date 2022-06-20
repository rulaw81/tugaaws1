-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 08:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ids_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `NIP` varchar(50) NOT NULL,
  `Nama_Dosen` varchar(50) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `JK` enum('L','P') NOT NULL,
  `No_Telp` varchar(50) NOT NULL,
  `Alamat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`NIP`, `Nama_Dosen`, `Tanggal_Lahir`, `JK`, `No_Telp`, `Alamat`) VALUES
('098980', 'Derry', '2017-03-15', 'L', '2324', 'aasdad'),
('DS003', 'Iksan Derry S', '2017-03-14', 'L', '0897761', 'Cimahi');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `Id_Jadwal` int(11) NOT NULL,
  `Kode_Matakuliah_Jadwal` varchar(50) NOT NULL,
  `NIP_Jadwal` varchar(50) NOT NULL,
  `Kode_Ruangan_Jadwal` varchar(50) NOT NULL,
  `Kode_Jurusan_Jadwal` varchar(50) NOT NULL,
  `Hari` varchar(50) NOT NULL,
  `Jam` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`Id_Jadwal`, `Kode_Matakuliah_Jadwal`, `NIP_Jadwal`, `Kode_Ruangan_Jadwal`, `Kode_Jurusan_Jadwal`, `Hari`, `Jam`) VALUES
(13, 'W01', 'DS003', 'R03', 'TIS1', 'Jumat', '05:10-09:10'),
(14, 'MK02', 'DS003', 'R02', 'TIS1', 'Jumat', '12:30-13:30');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `Kode_Jenjang` varchar(50) NOT NULL,
  `Nama_Jenjang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`Kode_Jenjang`, `Nama_Jenjang`) VALUES
('D1', 'Diploma I'),
('D3', 'Diploma III'),
('S1', 'Sarjana'),
('S2', 'Magister'),
('S3', 'Doktor');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `Kode_Jurusan` varchar(50) NOT NULL,
  `Nama_Jurusan` varchar(50) NOT NULL,
  `Kode_Jenjang_Jrs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`Kode_Jurusan`, `Nama_Jurusan`, `Kode_Jenjang_Jrs`) VALUES
('KIS1', 'Kimia', 'D3'),
('SID3', 'Sistem Informasi', 'D3'),
('TIS1', 'Teknik Informatika', 'S1'),
('TKD3', 'Teknik Komputer', 'D3');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `username` varchar(50) NOT NULL,
  `NIM` varchar(50) NOT NULL,
  `Nama_Mahasiswa` varchar(50) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `JK` enum('L','P') NOT NULL,
  `No_Telp` varchar(50) NOT NULL,
  `Alamat` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `Kode_Jurusan_Mhs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`username`, `NIM`, `Nama_Mahasiswa`, `Tanggal_Lahir`, `JK`, `No_Telp`, `Alamat`, `email`, `password`, `foto`, `Kode_Jurusan_Mhs`) VALUES
('sjdsjcdsn', '15263362', 'mets', '2022-06-06', 'L', '32434343', 'wefeew', 'sndbdb@gmail.com', 'kekalik66', '', 'KIS1'),
('tes nih', '234324', 'mets', '2022-06-17', 'L', '234324324234', 'jln.uty no1', 'maman_series@gmail.com', '80a90db370cceafbffb2d250184cb344', '', 'TIS1'),
('ewfwefw', '234324324', '', '0000-00-00', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 'TIS1'),
('awww', '3242342', '', '0000-00-00', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 'TIS1'),
('ass', '32424', '', '0000-00-00', 'L', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 'TIS1'),
('ffwfew', '32432423', '', '0000-00-00', 'L', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 'TIS1'),
('ssfs', '343', '', '0000-00-00', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 'TIS1'),
('firman', '5190511560', 'firman dwi rukmana', '2022-06-08', 'L', '0382637253', 'jln.baturan no 4', 'firman_dwi@gmail.com', '80a90db370cceafbffb2d250184cb344', '', 'SID3'),
('', '6554434', 'cxfghkjlkl', '2022-06-06', 'L', '67677', 'hghjmk,', '', '', '', 'KIS1'),
('', 'D980098', 'Ikhsan', '2017-03-15', 'L', '0989809', 'Bandung', '', '', '', 'TIS1'),
('', 'D980980', 'Deerry', '2017-03-15', 'L', '234234', 'Cimahi', '', '', '', 'KIS1');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `Kode_Matakuliah` varchar(50) NOT NULL,
  `Nama_Matakuliah` varchar(50) NOT NULL,
  `SKS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`Kode_Matakuliah`, `Nama_Matakuliah`, `SKS`) VALUES
('MK01', 'Database', 2),
('MK02', 'MTQ', 3),
('W01', 'Web Programming', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `Id_Nilai` int(11) NOT NULL,
  `NIM_Nilai` varchar(50) NOT NULL,
  `Kode_Matakuliah_Nilai` varchar(50) NOT NULL,
  `Nilai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`Id_Nilai`, `NIM_Nilai`, `Kode_Matakuliah_Nilai`, `Nilai`) VALUES
(2, 'D980980', 'W01', 'C'),
(4, 'D980098', 'MK01', 'A'),
(5, 'D980980', 'MK02', 'C'),
(7, 'D980098', 'W01', 'B'),
(10, 'D980098', 'W01', 'C'),
(11, '15263362', 'MK02', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `Kode_Ruangan` varchar(50) NOT NULL,
  `Nama_Ruangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`Kode_Ruangan`, `Nama_Ruangan`) VALUES
('R01', 'Ruangan 1'),
('R02', 'Ruangan 2'),
('R03', 'Ruangan 3');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id_User` int(11) NOT NULL,
  `Id_Usergroup_User` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Nama_lengkap` varchar(50) NOT NULL,
  `Jenis_kelamin` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `No_Telepon` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Foto` varchar(150) NOT NULL DEFAULT 'ids.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id_User`, `Id_Usergroup_User`, `Username`, `Nama_lengkap`, `Jenis_kelamin`, `Email`, `No_Telepon`, `Password`, `Foto`) VALUES
(34, 1, 'admin', 'admin_sia', 'Laki - Laki', 'adminsia@gmail.com', '02162762', '21232f297a57a5a743894a0e4a801fc3', ''),
(35, 2, 'log.dosen', 'Dosen Universitas', 'Laki - Laki', 'dosen_univ@gmail.com', '087864678975', '615237d97850c4b7b1ca65b1f29ccf23', ''),
(36, 3, 'log.mhs', 'Mahasiswa Universitas', 'Laki - Laki', 'mhs.univ@gmail.com', '081738243256', 'c3f83ceee5288f785feebfe8d5bddf71', ''),
(37, 3, 'firman', 'firman utina', 'Laki - Laki', 'firmanutina@gmail.com', '0816352835293', '7eda9a0d45d4dbfa99e06d4f402c2e67', ''),
(38, 3, 'izwa', 'izwa azhari', 'Laki - Laki', 'izwaazhari@gmail.com', '08162528735', '106d2f4755bb7615099a8b1ae3b474ac', 'Pas poto biru.jpg'),
(39, 3, 'aws', 'awsome', 'Laki - Laki', 'awesome@gmail.com', '0383628334', '80a90db370cceafbffb2d250184cb344', ''),
(40, 2, 'pakdosen', 'pakdosenganteng', 'Laki - Laki', 'pakdosen@gmail.com', '0186372735', 'd5bbfb47ac3160c31fa8c247827115aa', ''),
(41, 3, 'aaa', 'aaaa', 'Laki - Laki', 'maman_series@gmail.com', '43232', '8f8a6035882d42e30bc8ec6a5c47e516', ''),
(42, 3, 'iman', 'imanes', 'Laki - Laki', 'maman_series@gmail.com', '34546', 'b4633e74681440b3bb0504362cb22ad0', ''),
(43, 2, 'iman', 'imanes', 'Laki - Laki', 'maman_series@gmail.com', '3242', 'dbe4f7a38136336bf6bd6c3628a0f8f8', ''),
(52, 3, 'adasdsa', '', 'L', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(53, 3, 'sfdsds', 'sffewf', 'L', 'policejim186@gmail.com', '32432432', 'd7b72c8f5eaa6ddda7d9beb25417a698', ''),
(54, 3, 'tes nih', 'mets', 'L', 'maman_series@gmail.com', '234324324234', '80a90db370cceafbffb2d250184cb344', '');

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE `usergroup` (
  `Id_Usergroup` int(11) NOT NULL,
  `Nama_Usergroup` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`Id_Usergroup`, `Nama_Usergroup`) VALUES
(1, 'Administrator'),
(2, 'Dosen'),
(3, 'Mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`Id_Jadwal`),
  ADD KEY `FK_jadwal_dosen` (`NIP_Jadwal`),
  ADD KEY `FK_jadwal_ruangan` (`Kode_Ruangan_Jadwal`),
  ADD KEY `FK_jadwal_matakuliah` (`Kode_Matakuliah_Jadwal`),
  ADD KEY `FK_jadwal_jurusan` (`Kode_Jurusan_Jadwal`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`Kode_Jenjang`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`Kode_Jurusan`),
  ADD KEY `FK_jurusan_jenjang` (`Kode_Jenjang_Jrs`) USING BTREE;

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `FK_Kode_Jurusan` (`Kode_Jurusan_Mhs`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`Kode_Matakuliah`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`Id_Nilai`),
  ADD KEY `FK_nilai_mahasiswa` (`NIM_Nilai`),
  ADD KEY `FK_nilai_matakuliah` (`Kode_Matakuliah_Nilai`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`Kode_Ruangan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_User`),
  ADD KEY `FK_user_usergroup` (`Id_Usergroup_User`);

--
-- Indexes for table `usergroup`
--
ALTER TABLE `usergroup`
  ADD PRIMARY KEY (`Id_Usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `Id_Jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `Id_Nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `usergroup`
--
ALTER TABLE `usergroup`
  MODIFY `Id_Usergroup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `FK_jadwal_dosen` FOREIGN KEY (`NIP_Jadwal`) REFERENCES `dosen` (`NIP`),
  ADD CONSTRAINT `FK_jadwal_jurusan` FOREIGN KEY (`Kode_Jurusan_Jadwal`) REFERENCES `jurusan` (`Kode_Jurusan`),
  ADD CONSTRAINT `FK_jadwal_matakuliah` FOREIGN KEY (`Kode_Matakuliah_Jadwal`) REFERENCES `matakuliah` (`Kode_Matakuliah`),
  ADD CONSTRAINT `FK_jadwal_ruangan` FOREIGN KEY (`Kode_Ruangan_Jadwal`) REFERENCES `ruangan` (`Kode_Ruangan`);

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `FK_jurusan_jenjang` FOREIGN KEY (`Kode_Jenjang_Jrs`) REFERENCES `jenjang` (`Kode_Jenjang`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `FK_Kode_Jurusan` FOREIGN KEY (`Kode_Jurusan_Mhs`) REFERENCES `jurusan` (`Kode_Jurusan`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `FK_nilai_mahasiswa` FOREIGN KEY (`NIM_Nilai`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `FK_nilai_matakuliah` FOREIGN KEY (`Kode_Matakuliah_Nilai`) REFERENCES `matakuliah` (`Kode_Matakuliah`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_user_usergroup` FOREIGN KEY (`Id_Usergroup_User`) REFERENCES `usergroup` (`Id_Usergroup`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
