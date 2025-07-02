-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2025 at 10:10 AM
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
-- Database: `firezwir`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stok_barang`
--

CREATE TABLE `stok_barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `harga_beli` decimal(10,2) DEFAULT NULL,
  `harga_jual` decimal(10,2) DEFAULT NULL,
  `stok` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok_barang`
--

INSERT INTO `stok_barang` (`id_barang`, `kode_barang`, `nama_barang`, `kategori`, `satuan`, `harga_beli`, `harga_jual`, `stok`) VALUES
(12, 'KB001', 'Kertas A4', 'Kertas', 'Rim', 500000.00, 750000.00, 850),
(13, 'KB002', 'Kertas F4', 'Kertas', 'Rim', 55000.00, 800000.00, 60),
(14, 'KB003', 'Kertas Foto', 'Kertas', 'Paket', 80000.00, 120000.00, 40),
(15, 'KB004', 'Pulpen', 'Alat Tulis', 'Buah', 2000.00, 3000.00, 200),
(16, 'KB005', 'Pensil', 'Alat Tulis', 'Buah', 1500.00, 25000.00, 150),
(17, 'KB006', 'Marker Permanen', 'Alat Tulis', 'Buah', 3000.00, 40000.00, 120),
(18, 'KB007', 'Highlighter', 'Alat Tulis', 'Buah', 2500.00, 3500.00, 1100),
(19, 'KB008', 'Flashdisk 16GB', 'Perlengkapan Digital', 'Buah', 100000.00, 150000.00, 50),
(20, 'KB009', 'Flashdisk 32GB', 'Perlengkapan Digital', 'Buah', 150000.00, 200000.00, 35),
(21, 'KB010', 'Hard Disk 1TB', 'Perlengkapan Digital', 'Buah', 600000.00, 800000.00, 30),
(22, 'KB011', 'Buku Referensi', 'Buku', 'Buah', 30000.00, 45000.00, 75),
(23, 'KB012', 'Novel Best Seller', 'Buku', 'Buah', 50000.00, 70000.00, 60),
(24, 'KB013', 'Majalah Bulanan', 'Buku', 'Buah', 20000.00, 25000.00, 90),
(25, 'KB014', 'Kertas Stiker', 'Kertas', 'Paket', 70000.00, 100000.00, 60),
(26, 'KB015', 'Kertas Transparan', 'Kertas', 'Paket', 75000.00, 110000.00, 55),
(27, 'KB016', 'Papan Flipchart', 'Perlengkapan Digital', 'Buah', 150000.00, 200000.00, 20),
(28, 'KB017', 'Proyektor', 'Perlengkapan Digital', 'Buah', 2500000.00, 3000000.00, 10),
(29, 'KB018', 'Laminating Pouch', 'Perlengkapan Digital', 'Paket', 30000.00, 45000.00, 75),
(30, 'KB019', 'Klip Kertas', 'Alat Tulis', 'Paket', 5000.00, 8000.00, 100),
(31, 'KB020', 'Stapler', 'Alat Tulis', 'Buah', 15000.00, 22000.00, 100),
(32, 'KB021', 'Kertas HVS', 'Kertas', 'Rim', 60000.00, 85000.00, 90),
(33, 'KB022', 'Buku Catatan', 'Buku', 'Buah', 25000.00, 35000.00, 80),
(34, 'KB023', 'Kertas Karton', 'Kertas', 'Paket', 70000.00, 95000.00, 70),
(35, 'KB024', 'Pensil Warna', 'Alat Tulis', 'Buah', 4000.00, 6000.00, 130),
(36, 'KB025', 'Penghapus', 'Alat Tulis', 'Buah', 1500.00, 2500.00, 200),
(37, 'KB026', 'Kertas Label', 'Kertas', 'Paket', 65000.00, 90000.00, 40),
(38, 'KB027', 'Buku Agenda', 'Buku', 'Buah', 30000.00, 40000.00, 50),
(39, 'KB028', 'Tape', 'Alat Tulis', 'Buah', 10000.00, 15000.00, 90),
(40, 'KB029', 'Kertas Buram', 'Kertas', 'Rim', 55000.00, 75000.00, 60),
(41, 'KB030', 'Papan Tulis', 'Perlengkapan Digital', 'Buah', 200000.00, 250000.00, 15),
(42, 'KB031', 'Kertas Fotokopi', 'Kertas', 'Rim', 60000.00, 80000.00, 75),
(43, 'KB032', 'Pena', 'Alat Tulis', 'Buah', 2500.00, 4000.00, 180),
(44, 'KB033', 'Kertas Origami', 'Kertas', 'Paket', 30000.00, 45000.00, 50),
(45, 'KB034', 'Kertas Kado', 'Kertas', 'Paket', 40000.00, 60000.00, 40),
(46, 'KB035', 'Kertas Blotter', 'Kertas', 'Paket', 50000.00, 70000.00, 30),
(47, 'KB036', 'Buku Gambar', 'Buku', 'Buah', 25000.00, 35000.00, 70),
(48, 'KB037', 'Papan Presentasi', 'Perlengkapan Digital', 'Buah', 180000.00, 230000.00, 20),
(49, 'KB038', 'Kertas Karton Warna', 'Kertas', 'Paket', 80000.00, 110000.00, 60),
(50, 'KB039', 'Kertas Foto Glossy', 'Kertas', 'Paket', 90000.00, 130000.00, 50),
(51, 'KB040', 'Kertas Label Nama', 'Kertas', 'Paket', 40000.00, 60000.00, 80),
(52, 'KB041', 'Klip Binder', 'Alat Tulis', 'Paket', 15000.00, 20000.00, 150),
(53, 'KB042', 'Buku Saku', 'Buku', 'Buah', 20000.00, 30000.00, 65),
(54, 'KB043', 'Kertas Katalog', 'Kertas', 'Paket', 70000.00, 95000.00, 45),
(55, 'KB044', 'Kertas Rekap', 'Kertas', 'Paket', 60000.00, 80000.00, 55),
(56, 'KB045', 'Kertas Nota', 'Kertas', 'Paket', 30000.00, 40000.00, 90),
(57, 'KB046', 'Buku Pelajaran', 'Buku', 'Buah', 40000.00, 55000.00, 75),
(58, 'KB047', 'Kertas Cokelat', 'Kertas', 'Paket', 60000.00, 80000.00, 50),
(59, 'KB048', 'Penggaris', 'Alat Tulis', 'Buah', 5000.00, 8000.00, 120),
(60, 'KB049', 'Kertas Kualitas Tinggi', 'Kertas', 'Rim', 90000.00, 120000.00, 30),
(61, 'KB050', 'Kertas Kustom', 'Kertas', 'Paket', 100000.00, 140000.00, 20),
(62, 'KB051', 'Kertas Faks', 'Kertas', 'Rim', 70000.00, 95000.00, 40),
(63, 'KB052', 'Kertas Surat', 'Kertas', 'Paket', 60000.00, 85000.00, 60),
(64, 'KB053', 'Buku Komik', 'Buku', 'Buah', 25000.00, 35000.00, 65),
(65, 'KB054', 'Buku Tulis', 'Buku', 'Buah', 20000.00, 30000.00, 80),
(66, 'KB055', 'Kertas Kecil', 'Kertas', 'Paket', 40000.00, 60000.00, 70),
(67, 'KB056', 'Staples', 'Alat Tulis', 'Paket', 10000.00, 15000.00, 150),
(68, 'KB057', 'Kertas Daur Ulang', 'Kertas', 'Rim', 50000.00, 75000.00, 50),
(69, 'KB058', 'Kertas Glossy', 'Kertas', 'Paket', 80000.00, 120000.00, 30),
(70, 'KB059', 'Kertas Arsitektur', 'Kertas', 'Paket', 90000.00, 130000.00, 20),
(71, 'KB060', 'Penggaris Lurus', 'Alat Tulis', 'Buah', 7000.00, 10000.00, 100),
(72, 'KB061', 'Kertas Kualitas Persegi', 'Kertas', 'Paket', 75000.00, 100000.00, 40),
(73, 'KB062', 'Kertas Spesial', 'Kertas', 'Paket', 80000.00, 110000.00, 30),
(74, 'KB063', 'Buku Catatan Kecil', 'Buku', 'Buah', 15000.00, 20000.00, 90),
(75, 'KB064', 'Kertas Gambar', 'Kertas', 'Paket', 40000.00, 60000.00, 60),
(76, 'KB065', 'Kertas Warna', 'Kertas', 'Paket', 50000.00, 70000.00, 50),
(77, 'KB066', 'Buku Catatan Besar', 'Buku', 'Buah', 30000.00, 45000.00, 80),
(78, 'KB067', 'Kertas Keras', 'Kertas', 'Paket', 60000.00, 80000.00, 40),
(79, 'KB068', 'Kertas Soft', 'Kertas', 'Paket', 50000.00, 70000.00, 50),
(80, 'KB069', 'Buku Kegiatan', 'Buku', 'Buah', 25000.00, 35000.00, 70),
(81, 'KB070', 'Kertas Sablon', 'Kertas', 'Paket', 80000.00, 110000.00, 30),
(82, 'KB071', 'Kertas Kustom Warna', 'Kertas', 'Paket', 90000.00, 130000.00, 20),
(83, 'KB072', 'Klip Kertas Besar', 'Alat Tulis', 'Paket', 15000.00, 20000.00, 150),
(84, 'KB073', 'Buku Laporan', 'Buku', 'Buah', 35000.00, 50000.00, 65),
(85, 'KB074', 'Kertas Kain', 'Kertas', 'Paket', 80000.00, 120000.00, 30),
(86, 'KB075', 'Kertas Kecil Warna', 'Kertas', 'Paket', 45000.00, 65000.00, 40),
(87, 'KB076', 'Kertas Khusus', 'Kertas', 'Paket', 60000.00, 90000.00, 50),
(88, 'KB077', 'Kertas Katalog Warna', 'Kertas', 'Paket', 70000.00, 95000.00, 60),
(89, 'KB078', 'Buku Kecil', 'Buku', 'Buah', 20000.00, 30000.00, 80),
(90, 'KB079', 'Kertas Kualitas Tinggi Warna', 'Kertas', 'Paket', 90000.00, 120000.00, 20),
(91, 'KB080', 'Klip Kertas Kecil', 'Alat Tulis', 'Paket', 12000.00, 18000.00, 140),
(92, 'KB081', 'Buku Pembelajaran', 'Buku', 'Buah', 30000.00, 40000.00, 75),
(93, 'KB082', 'Kertas Tulis', 'Kertas', 'Paket', 50000.00, 80000.00, 50),
(94, 'KB083', 'Kertas Kualitas Premium', 'Kertas', 'Paket', 100000.00, 150000.00, 30),
(95, 'KB084', 'Buku Sains', 'Buku', 'Buah', 40000.00, 50000.00, 60),
(96, 'KB085', 'Kertas A3', 'Kertas', 'Rim', 70000.00, 90000.00, 40),
(97, 'KB086', 'Kertas Daur Ulang Premium', 'Kertas', 'Rim', 80000.00, 110000.00, 30),
(98, 'KB087', 'Buku Sejarah', 'Buku', 'Buah', 35000.00, 45000.00, 70),
(99, 'KB088', 'Kertas HVS Warna', 'Kertas', 'Paket', 80000.00, 110000.00, 25),
(100, 'KB089', 'Klip Kertas Besar Warna', 'Alat Tulis', 'Paket', 15000.00, 20000.00, 130),
(101, 'KB090', 'Buku Cerita', 'Buku', 'Buah', 20000.00, 30000.00, 90),
(102, 'KB091', 'Kertas Spesial Warna', 'Kertas', 'Paket', 90000.00, 130000.00, 20),
(103, 'KB092', 'Kertas Stiker Warna', 'Kertas', 'Paket', 80000.00, 120000.00, 25),
(104, 'KB093', 'Buku Tulis Besar', 'Buku', 'Buah', 30000.00, 40000.00, 60),
(105, 'KB094', 'Kertas Cokelat Premium', 'Kertas', 'Paket', 70000.00, 95000.00, 40),
(106, 'KB095', 'Klip Kertas Kecil Warna', 'Alat Tulis', 'Paket', 10000.00, 15000.00, 150),
(107, 'KB096', 'Buku Panduan', 'Buku', 'Buah', 40000.00, 55000.00, 50),
(108, 'KB097', 'Kertas Khusus Premium', 'Kertas', 'Paket', 100000.00, 150000.00, 20),
(109, 'KB098', 'Klip Kertas Premium', 'Alat Tulis', 'Paket', 15000.00, 20000.00, 130),
(110, 'KB099', 'Buku Manual', 'Buku', 'Buah', 25000.00, 35000.00, 75),
(111, 'KB100', 'Kertas Kustom Premium', 'Kertas', 'Paket', 90000.00, 130000.00, 30),
(112, 'KKB1011', 'KERTAZZ', 'Kertas', 'Buah', 10000.00, 10101010.00, 10100);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_jual` decimal(12,2) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`id_transaksi`, `kode_barang`, `nama_barang`, `harga_jual`, `jumlah`, `total`, `tanggal_transaksi`) VALUES
(1, 'KB001', 'Kertas A4', 750000.00, 100, 75000000.00, '2025-06-30 07:35:06'),
(2, 'KB001', 'Kertas A4', 750000.00, 50, 37500000.00, '2025-06-30 11:25:23'),
(3, 'KB002', 'Kertas F4', 800000.00, 20, 16000000.00, '2025-06-30 11:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(3000) NOT NULL,
  `akses` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `akses`) VALUES
(12353, 'wira', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'admin'),
(12354, 'wiraa', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'pegawai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stok_barang`
--
ALTER TABLE `stok_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12356;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
