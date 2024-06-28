-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2024 pada 18.51
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `jurusan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`, `kelas`, `jurusan`) VALUES
(6, 'ANASTASYA WANGKANUSA', 'XI', 'IPS'),
(7, 'BRENLI D. LOMBAN', 'XI', 'IPS'),
(8, 'BRIGITHA J. NGANTUNG', 'XI', 'IPS'),
(9, 'DEYSI NATALIA SINGAL', 'XI', 'IPS'),
(10, 'EBERT HERIYANTO KEREH', 'XI', 'IPS'),
(11, 'ETRIN MAITULUNG', 'XI', 'IPS'),
(12, 'LEONEL LUKAS MANENGKEY', 'XI', 'IPS'),
(13, 'MILANO R. MAWUNTU', 'XI', 'IPS'),
(14, 'PATRICIA EKARISTIANI C. MONINGKA', 'XI', 'IPS'),
(15, 'SWEETLY G. SAMPUL', 'XI', 'IPS'),
(16, 'VICTORY VICKY ALFA MANANGKODA', 'XI', 'IPS'),
(17, 'VIRGINIA FRANSISKA RENGKUAN', 'XI', 'IPS'),
(18, 'YEHESKIEL KAAWOAN', 'XI', 'IPS'),
(19, 'ABRIEL CANNAVARO KARUNDENG', 'XI', 'IPS'),
(20, 'HIZKIA KARUNDENG', 'XI', 'IPS'),
(37, 'ANDRE DAVID TURANGAN', 'BAHASA', 'XI'),
(38, 'Aprilia Debora Thytania Ratuwongo', 'BAHASA', 'XI'),
(39, 'CHIEVO NATANAEL PESIK', 'BAHASA', 'XI'),
(40, 'Gabriel Gregorius Moningka', 'BAHASA', 'XI'),
(41, 'Imanuel Warouw', 'BAHASA', 'XI'),
(42, 'Meiranda Veronica Turang', 'BAHASA', 'XI'),
(43, 'PRILY KALENGKONGAN', 'BAHASA', 'XI'),
(44, 'Rafael Benedictus Rumondor', 'BAHASA', 'XI'),
(45, 'RIANDO T. SAUMANA', 'BAHASA', 'XI'),
(46, 'RISKY A. MONINGKA', 'BAHASA', 'XI'),
(47, 'RIVALDO HISKIA MONINGKA', 'BAHASA', 'XI'),
(48, 'RIZKY R. LENAK', 'BAHASA', 'XI'),
(49, 'TRIVAIL TRISKY BOGAR', 'BAHASA', 'XI'),
(50, 'VILLY  PANGAU', 'BAHASA', 'XI'),
(51, 'Visitria Karmelita Rambing', 'BAHASA', 'XI'),
(52, 'YEHEZKIEL H. JUNAEDY', 'BAHASA', 'XI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 6, 0.848375),
(2, 7, 0.533838),
(3, 8, 0.491569),
(4, 9, 0.63876),
(5, 10, 0.557268),
(6, 11, 0.628387),
(7, 12, 0.688593),
(8, 13, 0.615493),
(9, 14, 0.605417),
(10, 15, 0.52282),
(11, 16, 0.629641),
(12, 17, 0.5757),
(13, 18, 0.688593),
(14, 19, 0.653417),
(15, 20, 0.605508),
(16, 37, 0.776002),
(17, 38, 0.526149),
(18, 39, 0.598522),
(19, 40, 0.488476),
(20, 41, 0.497789),
(21, 42, 0.554673),
(22, 43, 0.516748),
(23, 44, 0.497789),
(24, 45, 0.570162),
(25, 46, 0.457269),
(26, 47, 0.882823),
(27, 48, 0.589121),
(28, 49, 0.457269),
(29, 50, 0.52282),
(30, 51, 0.532971),
(31, 52, 0.598522);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `kode_kriteria`) VALUES
(1, 'Nilai rata-rata Raport', 'C1'),
(2, 'Absensi', 'C2'),
(3, 'Sikap', 'C3'),
(4, 'Ekstrakurikuler', 'C4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_hasil`
--

CREATE TABLE `kriteria_hasil` (
  `id_kriteria_hasil` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria_hasil`
--

INSERT INTO `kriteria_hasil` (`id_kriteria_hasil`, `id_kriteria`, `nilai`) VALUES
(23, 1, 0.390152),
(24, 2, 0.238636),
(25, 3, 0.195076),
(26, 4, 0.176136);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_nilai`
--

CREATE TABLE `kriteria_nilai` (
  `id_kriteria_nilai` int(11) NOT NULL,
  `kriteria_id_dari` int(11) NOT NULL,
  `kriteria_id_tujuan` int(11) NOT NULL,
  `nilai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria_nilai`
--

INSERT INTO `kriteria_nilai` (`id_kriteria_nilai`, `kriteria_id_dari`, `kriteria_id_tujuan`, `nilai`) VALUES
(43, 1, 2, 4),
(44, 1, 3, 2),
(45, 1, 4, 1),
(46, 2, 3, 2),
(47, 2, 4, 2),
(48, 3, 4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kategori`
--

CREATE TABLE `nilai_kategori` (
  `id_nilai` int(11) NOT NULL,
  `nama_nilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_kategori`
--

INSERT INTO `nilai_kategori` (`id_nilai`, `nama_nilai`) VALUES
(1, 'Sangat Baik'),
(2, 'Baik'),
(3, 'Cukup'),
(4, 'Kurang'),
(5, 'Sangat Kurang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_sub_kriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `id_sub_kriteria`) VALUES
(20, 6, 1, 1),
(21, 6, 2, 6),
(22, 6, 3, 12),
(23, 6, 4, 18),
(24, 7, 1, 2),
(25, 7, 2, 7),
(26, 7, 3, 13),
(27, 7, 4, 17),
(28, 8, 1, 3),
(29, 8, 2, 8),
(30, 8, 3, 12),
(31, 8, 4, 17),
(32, 9, 1, 4),
(33, 9, 2, 6),
(34, 9, 3, 13),
(35, 9, 4, 16),
(36, 10, 1, 27),
(37, 10, 2, 7),
(38, 10, 3, 12),
(39, 10, 4, 17),
(40, 11, 1, 28),
(41, 11, 2, 6),
(42, 11, 3, 11),
(43, 11, 4, 19),
(44, 12, 1, 29),
(45, 12, 2, 6),
(46, 12, 3, 12),
(47, 12, 4, 16),
(48, 13, 1, 30),
(49, 13, 2, 7),
(50, 13, 3, 11),
(51, 13, 4, 17),
(52, 14, 1, 31),
(53, 14, 2, 8),
(54, 14, 3, 11),
(55, 14, 4, 16),
(56, 15, 1, 32),
(57, 15, 2, 7),
(58, 15, 3, 12),
(59, 15, 4, 18),
(60, 16, 1, 33),
(61, 16, 2, 6),
(62, 16, 3, 12),
(63, 16, 4, 17),
(64, 17, 1, 34),
(65, 17, 2, 7),
(66, 17, 3, 13),
(67, 17, 4, 16),
(68, 18, 1, 35),
(69, 18, 2, 6),
(70, 18, 3, 12),
(71, 18, 4, 16),
(72, 19, 1, 36),
(73, 19, 2, 6),
(74, 19, 3, 11),
(75, 19, 4, 18),
(76, 20, 1, 37),
(77, 20, 2, 6),
(78, 20, 3, 13),
(79, 20, 4, 17),
(144, 37, 1, 1),
(145, 37, 2, 7),
(146, 37, 3, 12),
(147, 37, 4, 18),
(148, 38, 1, 3),
(149, 38, 2, 7),
(150, 38, 3, 12),
(151, 38, 4, 18),
(152, 39, 1, 3),
(153, 39, 2, 6),
(154, 39, 3, 12),
(155, 39, 4, 18),
(156, 40, 1, 4),
(157, 40, 2, 7),
(158, 40, 3, 12),
(159, 40, 4, 19),
(160, 41, 1, 29),
(161, 41, 2, 7),
(162, 41, 3, 12),
(163, 41, 4, 19),
(164, 42, 1, 31),
(165, 42, 2, 6),
(166, 42, 3, 13),
(167, 42, 4, 18),
(168, 43, 1, 34),
(169, 43, 2, 7),
(170, 43, 3, 13),
(171, 43, 4, 17),
(172, 44, 1, 30),
(173, 44, 2, 7),
(174, 44, 3, 12),
(175, 44, 4, 19),
(176, 45, 1, 31),
(177, 45, 2, 6),
(178, 45, 3, 12),
(179, 45, 4, 19),
(180, 46, 1, 31),
(181, 46, 2, 7),
(182, 46, 3, 13),
(183, 46, 4, 19),
(184, 47, 1, 1),
(185, 47, 2, 6),
(186, 47, 3, 12),
(187, 47, 4, 17),
(188, 48, 1, 29),
(189, 48, 2, 6),
(190, 48, 3, 13),
(191, 48, 4, 17),
(192, 49, 1, 32),
(193, 49, 2, 7),
(194, 49, 3, 13),
(195, 49, 4, 19),
(196, 50, 1, 33),
(197, 50, 2, 7),
(198, 50, 3, 12),
(199, 50, 4, 18),
(200, 51, 1, 3),
(201, 51, 2, 6),
(202, 51, 3, 13),
(203, 51, 4, 19),
(204, 52, 1, 3),
(205, 52, 2, 6),
(206, 52, 3, 12),
(207, 52, 4, 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria_nilai`
--

CREATE TABLE `subkriteria_nilai` (
  `id_subkriteria_nilai` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `subkriteria_id_dari` int(11) NOT NULL,
  `subkriteria_id_tujuan` int(11) NOT NULL,
  `nilai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria_nilai`
--

INSERT INTO `subkriteria_nilai` (`id_subkriteria_nilai`, `id_kriteria`, `subkriteria_id_dari`, `subkriteria_id_tujuan`, `nilai`) VALUES
(41, 1, 1, 2, 2),
(42, 1, 1, 3, 2),
(43, 1, 1, 4, 3),
(45, 1, 2, 3, 2),
(46, 1, 2, 4, 2),
(48, 1, 3, 4, 2),
(61, 3, 11, 12, 2),
(62, 3, 11, 13, 2),
(63, 3, 11, 14, 3),
(65, 3, 12, 13, 2),
(66, 3, 12, 14, 2),
(68, 3, 13, 14, 2),
(71, 4, 16, 17, 2),
(72, 4, 16, 18, 2),
(73, 4, 16, 19, 3),
(75, 4, 17, 18, 2),
(76, 4, 17, 19, 2),
(78, 4, 18, 19, 2),
(97, 2, 6, 7, 2),
(98, 2, 6, 8, 3),
(99, 2, 6, 9, 2),
(100, 2, 7, 8, 2),
(101, 2, 7, 9, 3),
(102, 2, 8, 9, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_sub_kriteria` text NOT NULL,
  `id_nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `nama_sub_kriteria`, `id_nilai`) VALUES
(1, 1, '83.44', 2),
(2, 1, '84.02', 2),
(3, 1, '87.36', 2),
(4, 1, '84.47', 2),
(6, 2, 'Tidak ada Izin, Sakit, Alpa', 1),
(7, 2, 'Izin/sakit 1 kali', 2),
(8, 2, 'Izin/sakit 2-3 kali', 3),
(9, 2, 'Alpa 1 Kali/lebih', 4),
(11, 3, 'A = 100', 1),
(12, 3, 'B = 80', 2),
(13, 3, 'C = 60', 3),
(14, 3, 'D  = 50', 4),
(16, 4, 'Mengikuti 3 / lebih Ekstrakurikuler', 1),
(17, 4, 'Mengikuti 2 Ekstrakurikuler', 2),
(18, 4, 'Mengikuti 1 Ekstrakurikuler', 3),
(19, 4, 'Tidak ada', 4),
(27, 1, '81.02', 2),
(28, 1, '83.36', 2),
(29, 1, '85.04', 2),
(30, 1, '84.82', 2),
(31, 1, '85.73', 2),
(32, 1, '88.16', 2),
(33, 1, '83.03', 2),
(34, 1, '87.13', 2),
(35, 1, '81.16', 2),
(36, 1, '75.16', 2),
(37, 1, '69.73', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria_hasil`
--

CREATE TABLE `sub_kriteria_hasil` (
  `id_sub_kriteria_hasil` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_sub_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kriteria_hasil`
--

INSERT INTO `sub_kriteria_hasil` (`id_sub_kriteria_hasil`, `id_kriteria`, `id_sub_kriteria`, `nilai`) VALUES
(76, 3, 11, 1),
(77, 3, 12, 0.701529),
(78, 3, 13, 0.493814),
(79, 3, 14, 0.347073),
(81, 4, 16, 1),
(82, 4, 17, 0.665302),
(83, 4, 18, 0.469725),
(84, 4, 19, 0.327615),
(95, 2, 6, 1),
(96, 2, 7, 0.696723),
(97, 2, 8, 0.407461),
(98, 2, 9, 0.302774),
(99, 1, 1, 1),
(100, 1, 2, 0.394871),
(101, 1, 3, 0.3596),
(102, 1, 4, 0.327197),
(103, 1, 27, 0.351068),
(104, 1, 28, 0.351068),
(105, 1, 29, 0.351068),
(106, 1, 30, 0.351068),
(107, 1, 31, 0.351068),
(108, 1, 32, 0.351068),
(109, 1, 33, 0.351068),
(110, 1, 34, 0.351068),
(111, 1, 35, 0.351068),
(112, 1, 36, 0.351068),
(113, 1, 37, 0.393071);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(7, 2, 'User', 'user@gmail.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_hasil`
--
ALTER TABLE `kriteria_hasil`
  ADD PRIMARY KEY (`id_kriteria_hasil`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_nilai`
--
ALTER TABLE `kriteria_nilai`
  ADD PRIMARY KEY (`id_kriteria_nilai`),
  ADD KEY `kriteria_id_dari` (`kriteria_id_dari`),
  ADD KEY `kriteria_id_tujuan` (`kriteria_id_tujuan`);

--
-- Indeks untuk tabel `nilai_kategori`
--
ALTER TABLE `nilai_kategori`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_sub_kriteria` (`id_sub_kriteria`);

--
-- Indeks untuk tabel `subkriteria_nilai`
--
ALTER TABLE `subkriteria_nilai`
  ADD PRIMARY KEY (`id_subkriteria_nilai`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `subkriteria_id_dari` (`subkriteria_id_dari`),
  ADD KEY `subkriteria_id_tujuan` (`subkriteria_id_tujuan`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `sub_kriteria_hasil`
--
ALTER TABLE `sub_kriteria_hasil`
  ADD PRIMARY KEY (`id_sub_kriteria_hasil`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_sub_kriteria` (`id_sub_kriteria`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria_hasil`
--
ALTER TABLE `kriteria_hasil`
  MODIFY `id_kriteria_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `kriteria_nilai`
--
ALTER TABLE `kriteria_nilai`
  MODIFY `id_kriteria_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `nilai_kategori`
--
ALTER TABLE `nilai_kategori`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT untuk tabel `subkriteria_nilai`
--
ALTER TABLE `subkriteria_nilai`
  MODIFY `id_subkriteria_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria_hasil`
--
ALTER TABLE `sub_kriteria_hasil`
  MODIFY `id_sub_kriteria_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kriteria_hasil`
--
ALTER TABLE `kriteria_hasil`
  ADD CONSTRAINT `kriteria_hasil_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kriteria_nilai`
--
ALTER TABLE `kriteria_nilai`
  ADD CONSTRAINT `kriteria_nilai_ibfk_1` FOREIGN KEY (`kriteria_id_dari`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kriteria_nilai_ibfk_2` FOREIGN KEY (`kriteria_id_tujuan`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`id_sub_kriteria`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subkriteria_nilai`
--
ALTER TABLE `subkriteria_nilai`
  ADD CONSTRAINT `subkriteria_nilai_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subkriteria_nilai_ibfk_2` FOREIGN KEY (`subkriteria_id_dari`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subkriteria_nilai_ibfk_3` FOREIGN KEY (`subkriteria_id_tujuan`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_kriteria_hasil`
--
ALTER TABLE `sub_kriteria_hasil`
  ADD CONSTRAINT `sub_kriteria_hasil_nilai_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_kriteria_hasil_nilai_ibfk_2` FOREIGN KEY (`id_sub_kriteria`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
