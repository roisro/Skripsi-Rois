-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2020 at 12:57 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rois`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_guru` varchar(33) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` varchar(12) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `password`, `nama_guru`, `tempat_lahir`, `tgl_lahir`, `jk`, `agama`, `no_hp`, `alamat`) VALUES
(1, '2014141001', '1234', 'Edi Ruslani, S.E', 'LEBAK', '2019-01-28', 'L', 'Islam', '0895330835551', 'xyz'),
(2, '2014141002', '1234', 'Masta', 'Lebak', '2019-01-28', '', 'Islam', '0895330835551', 'Jl. Arjuna Selatan'),
(3, '2014141003', '1234', 'Drs. Ii Djaya Semedhi, M.Si', 'Lebak', '2019-01-28', 'L', 'Islam', '0895330835551', 'def'),
(4, '2014141004', '1234', 'Muki Sulaeman', 'LEBAK', '2019-01-28', 'L', 'Islam', '0895330835552', 'ghi'),
(13, '2014141005', '1234', 'Robiatu Sa\'adiah', 'Lebak', '2019-01-28', 'P', 'Islam', '0895330835221', 'jjj'),
(14, '2014141006', '1234', 'Samsuji', 'Saepudin', '2019-01-31', 'L', 'Islam', '0895330835551', 'xyz'),
(15, '2014141007', '1234', 'Saepudin', 'Lebal', '2019-02-01', 'L', 'Islam', '0895330835551', 'xyz'),
(16, '2014141008', '1234', 'Firdaus', 'LEBAK', '2019-01-28', 'L', 'Islam', '0895330835551', 'z'),
(17, '2014141009', '1234', 'Mahyudi', 'LEBAK', '2019-01-28', 'L', 'Islam', '0895330835551', 'Islam'),
(18, '2014141010', '1234', 'Tb. Ahmad Holik', 'lebak', '2019-02-01', 'L', 'Islam', '0895330835551', 'zz'),
(19, '2014141011', '1234', 'Yuli Isnawati', 'Lebak', '2019-01-28', 'L', 'Islam', '0895330835551', 'ds'),
(20, '2014141012', '1234', 'Siti Hapsoh', 'Lebak', '2019-01-28', 'P', 'Islam', '0895330835551', 'z'),
(21, '2014141013', '1234', 'Hoirunias', 'Jakarta Barat', '2019-01-28', 'P', 'Islam', '0895330835551', 'a'),
(22, '2014141014', '1234', 'Marantika', 'lebak', '2019-01-29', 'L', 'Islam', '0895330835551', 'a'),
(23, '2014141015', '1234', 'Safullah', 'Lebak', '2019-01-28', 'L', 'Islam', '0895330835551', 'a'),
(24, '2014141016', '1234', 'M. Nawawi', 'Lebak', '2019-01-28', 'L', 'Islam', '0895330835551', 'z'),
(25, '2014141017', '1234', 'Iroh', 'Lebak', '2019-01-27', 'P', 'Islam', '0895330835551', 'hy'),
(26, '2384969832498', '1234', 'jendral s', 'LEBAK', '2019-03-14', 'P', 'Islam', '0895330835552', 'j');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_staf` int(3) NOT NULL,
  `id_tahun_pelajaran` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_guru` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_staf`, `id_tahun_pelajaran`, `id_mapel`, `id_guru`, `id_kelas`, `hari`, `jam`, `jam_selesai`) VALUES
(10, 0, 2, 6, 20, 1, 'Senin', '01:10:00', '01:50:00'),
(11, 0, 2, 6, 20, 1, 'Senin', '01:50:00', '02:20:00'),
(12, 0, 2, 6, 20, 1, 'Senin', '02:20:00', '02:50:00'),
(13, 0, 2, 1, 13, 1, 'Senin', '02:50:00', '03:20:00'),
(14, 0, 2, 1, 13, 1, 'Senin', '03:40:00', '04:10:00'),
(15, 0, 2, 1, 13, 1, 'Senin', '04:10:00', '04:40:00'),
(16, 0, 2, 8, 15, 1, 'Senin', '04:40:00', '05:10:00'),
(17, 0, 2, 8, 15, 1, 'Senin', '05:10:00', '05:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` varchar(15) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
('1', 'Administrasi Perkantoran'),
('2', 'Management'),
('3', 'Bahasa'),
('4', 'Pemasaran');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_siswa`
--

CREATE TABLE `kehadiran_siswa` (
  `id_kehadiran` int(10) NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `id_tahun_pelajaran` varchar(10) NOT NULL,
  `sakit` varchar(10) NOT NULL,
  `izin` varchar(10) NOT NULL,
  `tanpa_keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(3) NOT NULL,
  `id_jurusan` int(3) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL,
  `tingkat_kelas` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_jurusan`, `nama_kelas`, `tingkat_kelas`) VALUES
(1, 4, 'X', 'X'),
(2, 4, 'XI', 'XI'),
(4, 4, 'XII', 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE `kelompok` (
  `id_kelompok` int(1) NOT NULL,
  `nama_kelompok` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `nama_kelompok`) VALUES
(1, 'NORMATIF'),
(2, 'ADAPTIF'),
(3, 'PRODUKTIF'),
(4, 'MUATAN LOKAL');

-- --------------------------------------------------------

--
-- Table structure for table `kepribadian`
--

CREATE TABLE `kepribadian` (
  `id_kepribadain` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `kelakuan` varchar(15) NOT NULL,
  `kerajinan` varchar(40) NOT NULL,
  `kerapihan` varchar(20) NOT NULL,
  `id_tahun_pelajaran` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id_mapel` varchar(15) NOT NULL,
  `id_kelompok` int(1) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `kkm` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mapel`, `id_kelompok`, `nama_mapel`, `kkm`) VALUES
('1', 1, 'Pendidikan Agama', '75'),
('10', 2, 'Keterampilan Komputer dan Pengelolaan Informasi', '75'),
('11', 2, 'Kewirausahaan', '75'),
('12', 3, 'Melakukan Negosiasi', '75'),
('13', 3, 'Prinsip Profesi Bekerja', '75'),
('14', 3, 'Menata Produk', '75'),
('15', 3, 'K3 Ditempat Kerja', '75'),
('16', 3, 'Pelayanan Prima', '75'),
('17', 3, 'Komunikasi Bisnis', '75'),
('18', 3, 'Konsep Kepada Pelanggan', '75'),
('19', 3, 'Surat Niaga', '75'),
('2', 1, 'Pendidikan Kewarganegaraan', '75'),
('20', 4, 'Bahasa Arab', '75'),
('21', 3, 'Ops. Alat Transaksi', '75'),
('22', 3, 'Proses Adm. Transaksi', '75'),
('23', 3, 'Membuka Usaha Ritel', '75'),
('24', 3, 'Pres. Bisnis English', '75'),
('25', 3, 'Pem. Barang dan Jasa', '75'),
('3', 1, 'Bahasa Indonesia', '75'),
('4', 1, 'Pendidikan Jasamani, Olahraga dan Kesehatan', '75'),
('5', 1, 'Seni Budaya', '75'),
('6', 2, 'Bahasa Inggris', '75'),
('7', 2, 'Matematika', '75'),
('8', 2, 'Ilmu Pengetahuan Alam (IPA)', '75'),
('9', 2, 'Ilmu Pengetahuan Sosial (IPS)', '75');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_siswa`
--

CREATE TABLE `nilai_siswa` (
  `id_nilai` int(10) NOT NULL,
  `id_guru` varchar(10) NOT NULL,
  `id_mapel` varchar(10) NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `id_tahun_pelajaran` varchar(10) NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `nilai` int(10) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_siswa`
--

INSERT INTO `nilai_siswa` (`id_nilai`, `id_guru`, `id_mapel`, `id_kelas`, `id_tahun_pelajaran`, `semester`, `id_siswa`, `nilai`, `keterangan`) VALUES
(1, '20', '6', '1', '2', '1', '3', 99, 'A'),
(2, '20', '6', '1', '2', '1', '4', 99, 'A'),
(3, '20', '6', '1', '2', '1', '5', 66, 'C'),
(4, '20', '6', '1', '2', '1', '6', 44, 'D'),
(5, '20', '6', '1', '2', '1', '8', 33, 'D'),
(6, '20', '6', '1', '2', '1', '9', 88, 'B'),
(7, '20', '6', '1', '2', '1', '10', 66, 'C'),
(8, '15', '8', '1', '2', '1', '3', 100, 'A'),
(9, '15', '8', '1', '2', '1', '4', 99, 'A'),
(10, '15', '8', '1', '2', '1', '5', 88, 'B'),
(11, '15', '8', '1', '2', '1', '6', 77, 'B'),
(12, '15', '8', '1', '2', '1', '8', 66, 'C'),
(13, '15', '8', '1', '2', '1', '9', 55, 'D'),
(14, '15', '8', '1', '2', '1', '10', 44, 'D'),
(15, '20', '6', '1', '2', '1', '1', 99, 'A'),
(16, '20', '6', '1', '2', '1', '12', 0, 'D'),
(17, '20', '6', '1', '2', '1', '13', 0, 'D'),
(18, '20', '6', '1', '2', '1', '14', 0, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(15) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `nis` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(33) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` varchar(12) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `id_kelas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `nis`, `username`, `password`, `tempat_lahir`, `tgl_lahir`, `alamat`, `jk`, `agama`, `no_hp`, `id_kelas`) VALUES
(1, 'Rina', '161710004', 'rina', '12345', 'Lebak', '2018-12-30', 'mm', 'L', 'Islams', '08953', 1),
(2, 'SAFIKAH', '161710002', 'safikah', '12345', 'LEBAK', '2019-01-02', 'Jl. INDF', 'L', 'Islam ', '0895330', 2),
(3, 'yeni rahayu', '161710001', 'yeni', '12345', 'Jakarta Barat', '2019-01-06', 'Jl wijaya kusuma', 'P', 'islam', '08953', 1),
(4, 'Rita Rahayu', '161710033', 'rita', '12345', 'Lebak', '2019-01-15', 'Jl. xyz', 'P', 'islam', '0895330', 1),
(5, 'Siska', '161710005', 'siska', '12345', 'lebak', '2019-01-06', 'Lebak', 'L', 'Islams', '0895330', 1),
(6, 'Uvi ', '161710006', 'usi', '12345', 'LEBAK', '2019-01-07', 'jl.xyz', 'L', 'Islam', '0895330835551', 1),
(7, 'Yeni', '161710010', 'yeni', '12345', 'LEBAK', '2019-01-07', 'Lebak', 'L', 'Islam', '0895330835552', 2),
(8, 'Sri Handayani', '161710003', 'sri', '12345', 'handayani', '2019-01-01', 'jl. bulakan', 'P', 'Islam', '0', 1),
(9, 'Abdul hadi', '161710007', '1234', '12345', 'Jelambar', '2019-01-07', 'JL. XYZ', 'L', 'Islam', '09893fghjkl', 1),
(10, 'andi irawan', '161710008', 'andi', '12345', 'LEBAKx', '2019-02-25', 'jl. xyz', 'L', 'Islam', '0895330835551', 1),
(11, 'setyo', '161710009', 'anjay', '12345', 'lebak', '2019-02-19', 'k', 'P', 'Islam', '0895330835551', 4),
(12, 'wewe', '111', 'we', '12', 'sasa', '2019-04-04', 'jk.m dslkj', 'P', 's', '779869', 1),
(13, 'siska nur latifa', '2014141999', 'nur', 'nur123', 'lebak', '2019-04-13', 'jl. Pengayom', 'P', 'Islam', '0895330835551', 1),
(14, 'kianti', '192309328', 'kianti', '1234', 'lki', '2019-04-27', 'Kp. Xyz', 'L', 'Islam', '098787', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id_staf` int(15) NOT NULL,
  `nama_staf` varchar(33) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(29) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id_staf`, `nama_staf`, `username`, `password`, `tempat_lahir`, `tgl_lahir`, `jk`, `agama`, `alamat`) VALUES
(1, 'Rois', 'admin', '1234', 'LEBAK', '2018-12-30', '', 'Islam', 'Jl. Utama Sakti V No.34');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_pelajaran`
--

CREATE TABLE `tahun_pelajaran` (
  `id_tahun_pelajaran` varchar(10) NOT NULL,
  `tahun_pelajaran` varchar(25) NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `aktif` enum('N','Y') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_pelajaran`
--

INSERT INTO `tahun_pelajaran` (`id_tahun_pelajaran`, `tahun_pelajaran`, `semester`, `aktif`) VALUES
('1', '2016/2017', '1', 'N'),
('2', '2017/2018', '1', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `walas`
--

CREATE TABLE `walas` (
  `id_walas` int(10) NOT NULL,
  `id_guru` varchar(10) NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `id_tahun_pelajaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walas`
--

INSERT INTO `walas` (`id_walas`, `id_guru`, `id_kelas`, `id_tahun_pelajaran`) VALUES
(1, '1', '4', '2'),
(3, '2', '3', '1'),
(4, '2', '2', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kehadiran_siswa`
--
ALTER TABLE `kehadiran_siswa`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indexes for table `kepribadian`
--
ALTER TABLE `kepribadian`
  ADD PRIMARY KEY (`id_kepribadain`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id_staf`);

--
-- Indexes for table `tahun_pelajaran`
--
ALTER TABLE `tahun_pelajaran`
  ADD PRIMARY KEY (`id_tahun_pelajaran`);

--
-- Indexes for table `walas`
--
ALTER TABLE `walas`
  ADD PRIMARY KEY (`id_walas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kehadiran_siswa`
--
ALTER TABLE `kehadiran_siswa`
  MODIFY `id_kehadiran` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id_kelompok` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kepribadian`
--
ALTER TABLE `kepribadian`
  MODIFY `id_kepribadain` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id_staf` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `walas`
--
ALTER TABLE `walas`
  MODIFY `id_walas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
