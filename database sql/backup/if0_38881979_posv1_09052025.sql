-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql311.infinityfree.com
-- Generation Time: May 09, 2025 at 09:37 AM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_38881979_posv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` double NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_supplier`, `id_kategori`, `gambar`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(10, 'BR001', NULL, 4, NULL, 'ABC Kopi', 'ABC', 2500, 4000, 'ROLL', 9, '2025-05-09', NULL),
(11, 'BR0011', NULL, 4, NULL, 'Milo', 'Milo', 5000, 7000, 'ROLL', 0, '2025-05-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `barang_kategori`
--

CREATE TABLE `barang_kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang_kategori`
--

INSERT INTO `barang_kategori` (`id`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Lainnya', '2021-09-07'),
(3, 'Makanan', '2025-05-01'),
(4, 'Minuman', '2025-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `barang_satuan`
--

CREATE TABLE `barang_satuan` (
  `id` int(11) NOT NULL,
  `satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang_satuan`
--

INSERT INTO `barang_satuan` (`id`, `satuan`) VALUES
(1, 'PCS'),
(2, 'SET'),
(3, 'BOX'),
(4, 'PACK'),
(5, 'ROLL');

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `hak_akses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `hak_akses`) VALUES
(1, 'Admin'),
(5, 'Kasir'),
(6, 'Gudang');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `diskon` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `beli` int(11) NOT NULL,
  `jual` int(11) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_beli`
--

CREATE TABLE `keranjang_beli` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) NOT NULL,
  `beli` int(11) NOT NULL,
  `jual` int(11) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `keranjang_beli`
--

INSERT INTO `keranjang_beli` (`id`, `id_barang`, `id_member`, `id_supplier`, `nama_supplier`, `nama_barang`, `jumlah`, `beli`, `jual`, `tanggal_input`) VALUES
(8, '3', 1, NULL, NULL, 'Gelas', '1', 2500, 5000, '2025-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `operasional`
--

CREATE TABLE `operasional` (
  `id` int(11) NOT NULL,
  `nama_operasional` varchar(255) DEFAULT NULL,
  `status_operasional` varchar(255) DEFAULT NULL,
  `harga_operasional` int(11) NOT NULL,
  `ket_operasional` text DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `operasional`
--

INSERT INTO `operasional` (`id`, `nama_operasional`, `status_operasional`, `harga_operasional`, `ket_operasional`, `tgl_input`, `created_at`, `deleted_at`, `id_users`) VALUES
(1, 'Pertalite', 'Pengeluaran', 20000, 'pertalite untuk ke pasar keperluan beli stok', '2025-05-01', '2025-05-01 00:15:34', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode_pelanggan` varchar(255) DEFAULT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `alamat_pelanggan` text DEFAULT NULL,
  `telepon_pelanggan` varchar(25) DEFAULT NULL,
  `email_pelanggan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `telepon_pelanggan`, `email_pelanggan`, `created_at`, `deleted_at`) VALUES
(3, 'PL003', 'Ratna', '0', '0', '123@gmail.com', '2025-05-02 17:57:53', NULL),
(5, 'PL004', 'Aep Suargana', '0', '0', '123@gmail.com', '2025-05-09 18:37:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `nm_supplier` varchar(255) DEFAULT NULL,
  `no_trx` varchar(255) DEFAULT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `beli` int(11) DEFAULT NULL,
  `tanggal_input` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `nm_supplier`, `no_trx`, `id_member`, `jumlah`, `beli`, `tanggal_input`, `created_at`, `periode`) VALUES
(1, 'Suplier 1', 'OR001', 1, 2, 4000, '2025-05-01', '2025-05-01 00:12:22', '2025-05'),
(2, 'Others', 'OR002', 1, 10, 25000, '2025-05-01', '2025-05-01 16:06:36', '2025-05'),
(3, 'Others', 'OR003', 11, 1, 2500, '2025-05-01', '2025-05-01 16:23:39', '2025-05');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id` int(11) NOT NULL,
  `no_trx` varchar(255) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `id_barang` int(11) NOT NULL,
  `idb` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `beli` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `id_member` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id`, `no_trx`, `id_supplier`, `nama_supplier`, `id_barang`, `idb`, `nama_barang`, `beli`, `qty`, `total`, `tgl_input`, `periode`, `id_member`, `created_at`) VALUES
(1, 'OR001', NULL, NULL, 2, '1694344814222', 'Indomie Goreng', 2000, 2, 4000, '2025-05-01', '2025-05', 1, '2025-05-01 00:12:22'),
(2, 'OR002', NULL, NULL, 3, 'BR003', 'Gelas', 2500, 10, 25000, '2025-05-01', '2025-05', 1, '2025-05-01 16:06:36'),
(3, 'OR003', NULL, NULL, 2, 'BR002', 'Indomie Goreng', 2500, 1, 2500, '2025-05-01', '2025-05', 11, '2025-05-01 16:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_trx` varchar(255) DEFAULT NULL,
  `id_member` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `beli` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `tanggal_input` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `status_bayar` varchar(255) DEFAULT 'Lunas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_trx`, `id_member`, `id_pelanggan`, `jumlah`, `beli`, `total`, `bayar`, `tanggal_input`, `created_at`, `periode`, `status_bayar`) VALUES
(5, 'TR005', 1, 3, 1, 2500, 3500, 0, '2025-05-02', '2025-05-02 17:58:29', '2025-05', 'Kurang Bayar'),
(6, 'TR006', 1, 3, 1, 2500, 5000, 0, '2025-05-02', '2025-05-02 17:59:23', '2025-05', 'Kurang Bayar'),
(11, 'TR0011', 1, 3, 2, 7500, 11000, 0, '2025-05-09', '2025-05-09 19:17:21', '2025-05', 'Kurang Bayar');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id` int(11) NOT NULL,
  `no_trx` varchar(255) DEFAULT NULL,
  `id_barang` int(11) NOT NULL,
  `idb` varchar(255) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `beli` int(11) NOT NULL,
  `jual` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `id_member` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id`, `no_trx`, `id_barang`, `idb`, `id_supplier`, `nama_supplier`, `nama_barang`, `beli`, `jual`, `qty`, `diskon`, `total`, `tgl_input`, `periode`, `id_member`, `created_at`) VALUES
(6, 'TR005', 2, 'BR002', NULL, NULL, 'Indomie Goreng', 2500, 3500, 1, 0, 3500, '2025-05-02', '2025-05', 1, '2025-05-02 17:58:29'),
(7, 'TR006', 3, 'BR003', NULL, NULL, 'Gelas', 2500, 5000, 1, 0, 5000, '2025-05-02', '2025-05', 1, '2025-05-02 17:59:23'),
(12, 'TR0011', 10, 'BR001', NULL, NULL, 'ABC Kopi', 2500, 4000, 1, 0, 4000, '2025-05-09', '2025-05', 1, '2025-05-09 19:17:21'),
(13, 'TR0011', 11, 'BR0011', NULL, NULL, 'Milo', 5000, 7000, 1, 0, 7000, '2025-05-09', '2025-05', 1, '2025-05-09 19:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `alamat_supplier` varchar(255) DEFAULT NULL,
  `telepon_supplier` varchar(25) DEFAULT NULL,
  `email_supplier` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `alamat_supplier`, `telepon_supplier`, `email_supplier`, `created_at`) VALUES
(1, 'Others', '-', '-', '-', '2021-10-20 05:56:37'),
(2, 'Suplier 1', 'Jl. Suplier 1', '01234567890', 'suplier1@gmail.com', '2025-05-01 00:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`, `logo`) VALUES
(1, 'TOKO PEPEN', 'Jl. Jalan', '081234567890', 'Pepen', '1746057745.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `akses` varchar(11) DEFAULT NULL,
  `active` varchar(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `telepon`, `alamat`, `avatar`, `user`, `pass`, `akses`, `active`, `created_at`) VALUES
(1, 'Ade Fenna Suryana', 'adefennasuryana@gmail.com', '085601617589', 'Jl. Raya kudus - pati km. 14\r\nGondoharum 7/3', '1746034985.jpg', 'superadmin', '$2y$10$gIw.l9LDfUmrHyWv7wwlKO2Z8WUZtNQ2JC3JNY2GdQw3r2SLdExSC', '1', '1', '2025-05-01 00:43:05'),
(3, 'kasir', 'kasir@gmail.com', '081234567890', 'Kudus', '1746116515.jpg', 'kasir', '$2y$10$l2HFPvl3Rz55gVYX842a5.5jo/BFxkVfkOsfB0dcxx5IQxnLfgxYq', '5', '1', '2025-05-01 23:21:55'),
(11, 'Gudang', 'gudang@gmail.com', '', '', 'avatar.jpg', 'gudang', '$2y$10$wFReLl/FUQcs6uqvhY4UZueUAg0VLmg9l7ciAEwasOJrousIPLfAW', '6', '1', '2025-05-01 23:17:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_kategori`
--
ALTER TABLE `barang_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_satuan`
--
ALTER TABLE `barang_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang_beli`
--
ALTER TABLE `keranjang_beli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operasional`
--
ALTER TABLE `operasional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `barang_kategori`
--
ALTER TABLE `barang_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `barang_satuan`
--
ALTER TABLE `barang_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `keranjang_beli`
--
ALTER TABLE `keranjang_beli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `operasional`
--
ALTER TABLE `operasional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
