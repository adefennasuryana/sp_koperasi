-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql311.infinityfree.com
-- Generation Time: May 24, 2025 at 01:21 PM
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
(12, 'BR001', NULL, 3, NULL, 'ABC Kecap Manis 130 ml', '-', 8800, 11000, 'PCS', 1000, '2025-05-20', NULL),
(13, 'BR002', NULL, 3, NULL, 'ABC Kopi', '-', 2800, 4500, 'PCS', 999, '2025-05-20', NULL),
(14, 'BR003', NULL, 3, NULL, 'ABC Saus Sambal 130 ml', '-', 7600, 12000, 'PCS', 999, '2025-05-20', NULL),
(15, 'BR004', NULL, 3, NULL, 'Ade Cookies Cheese Lotus', '-', 12500, 13500, 'PCS', 997, '2025-05-20', NULL),
(16, 'BR005', NULL, 3, NULL, 'Ade Cookies Matcha Red Velvet Chocco', '-', 10500, 11500, 'PCS', 991, '2025-05-20', '2025-05-20'),
(17, 'BR006', NULL, 3, NULL, 'Ade Cookies Smores', '-', 11000, 12000, 'PCS', 1000, '2025-05-20', NULL),
(19, 'BR008', NULL, 3, NULL, 'Akio Cistik Keripik Bawang', '-', 18000, 20000, 'PCS', 1000, '2025-05-20', NULL),
(20, 'BR009', NULL, 3, NULL, 'Akio Kacang Kecil', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(21, 'BR010', NULL, 3, NULL, 'Akio Snack Kacang Campur', '-', 13000, 15000, 'PCS', 1000, '2025-05-20', NULL),
(22, 'BR011', NULL, 3, NULL, 'Aqua 1,5 L', '-', 4500, 8000, 'PCS', 976, '2025-05-20', NULL),
(23, 'BR012', NULL, 3, NULL, 'Astor Singles', '-', 1000, 2000, 'PCS', 1000, '2025-05-20', NULL),
(24, 'BR013', NULL, 3, NULL, 'Azmi Roti Goreng Pastel', '-', 3500, 4500, 'PCS', 990, '2025-05-20', NULL),
(25, 'BR014', NULL, 3, NULL, 'Bella Lanting', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(26, 'BR015', NULL, 3, NULL, 'Beng-beng Wafer 25 g', '-', 2200, 3500, 'PCS', 987, '2025-05-20', NULL),
(27, 'BR016', NULL, 3, NULL, 'Bintari Cheese Stick', '-', 28000, 30000, 'PCS', 1000, '2025-05-20', NULL),
(28, 'BR017', NULL, 3, NULL, 'Bintari Kue Cincin', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(29, 'BR018', NULL, 3, NULL, 'Biokul Yoghurt 80 g', '-', 5500, 7500, 'PCS', 993, '2025-05-20', NULL),
(30, 'BR019', NULL, 3, NULL, 'Biore Sabun Mandi 100 ml', '-', 10000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(31, 'BR020', NULL, 3, NULL, 'Cappucino Indocafe Sachet', '-', 2000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(32, 'BR021', NULL, 3, NULL, 'Charm Night Renceng ', '-', 2800, 4000, 'PCS', 999, '2025-05-20', NULL),
(33, 'BR022', NULL, 3, NULL, 'Charm Wing Oranye Renceng ', '-', 1500, 2500, 'PCS', 998, '2025-05-20', NULL),
(34, 'BR023', NULL, 3, NULL, 'Chiki Balls 55 g', '-', 6000, 8000, 'PCS', 1000, '2025-05-20', NULL),
(35, 'BR024', NULL, 3, NULL, 'Chitato Sapi Panggang 35 g', '-', 5600, 7500, 'PCS', 999, '2025-05-20', NULL),
(36, 'BR025', NULL, 3, NULL, 'Chocopie 26 g', '-', 2800, 4000, 'PCS', 1000, '2025-05-20', NULL),
(37, 'BR026', NULL, 3, NULL, 'Choki-choki', '-', 900, 1500, 'PCS', 998, '2025-05-20', NULL),
(38, 'BR027', NULL, 3, NULL, 'Cimory Bites Yoghurt 120 g', '-', 8500, 12000, 'PCS', 995, '2025-05-20', NULL),
(39, 'BR028', NULL, 3, NULL, 'Cimory Drink', '-', 7500, 10000, 'PCS', 984, '2025-05-20', NULL),
(40, 'BR029', NULL, 3, NULL, 'Cimory Squeeze Yoghurt 120 g', '-', 8200, 10500, 'PCS', 999, '2025-05-20', NULL),
(41, 'BR030', NULL, 3, NULL, 'Cimory Susu All Varian', '-', 6000, 8500, 'PCS', 999, '2025-05-20', NULL),
(42, 'BR031', NULL, 3, NULL, 'Citra Bihun Mie Goreng', '-', 18000, 19000, 'PCS', 1000, '2025-05-20', NULL),
(43, 'BR032', NULL, 3, NULL, 'Citra Bomboloni ', '-', 13000, 14000, 'PCS', 992, '2025-05-20', NULL),
(44, 'BR033', NULL, 3, NULL, 'Citra Nasi Jinggo', '-', 15000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(45, 'BR034', NULL, 3, NULL, 'Clean Plus Tissue', '-', 5500, 7500, 'PCS', 996, '2025-05-20', NULL),
(46, 'BR035', NULL, 3, NULL, 'Coffee Adventure Mamandy', '-', 15000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(47, 'BR036', NULL, 3, NULL, 'Crystalin Besar 1,5 L', '-', 4200, 8000, 'PCS', 993, '2025-05-20', NULL),
(48, 'BR037', NULL, 3, NULL, 'Crystalin Kecil 600 ml', '-', 2000, 4000, 'PCS', 944, '2025-05-20', NULL),
(49, 'BR038', NULL, 3, NULL, 'Darlung Martabak Piscok', '-', 3000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(50, 'BR039', NULL, 3, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', '-', 3500, 4500, 'PCS', 874, '2025-05-20', '2025-05-20'),
(51, 'BR040', NULL, 3, NULL, 'Defy Bubur Ayam', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(52, 'BR041', NULL, 3, NULL, 'Defy Dimsum/Lumpia', '-', 16000, 17000, 'PCS', 1000, '2025-05-20', NULL),
(53, 'BR042', NULL, 3, NULL, 'Defy Kolak', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(54, 'BR043', NULL, 3, NULL, 'Defy Kue Basah', '-', 3000, 3500, 'PCS', 1000, '2025-05-20', NULL),
(55, 'BR044', NULL, 3, NULL, 'Defy Lapis Lemper Bugis', '-', 3000, 3500, 'PCS', 990, '2025-05-20', '2025-05-20'),
(56, 'BR045', NULL, 3, NULL, 'Defy Lontong Risol Bakwan', '-', 3500, 4000, 'PCS', 870, '2025-05-20', NULL),
(57, 'BR046', NULL, 3, NULL, 'Defy Lupis', '-', 8000, 9000, 'PCS', 1000, '2025-05-20', NULL),
(58, 'BR047', NULL, 3, NULL, 'Defy Mayonaise Pepe Pia', '-', 4500, 5500, 'PCS', 982, '2025-05-20', NULL),
(59, 'BR048', NULL, 3, NULL, 'Defy Nasi Kuning Uduk Ulam', '-', 14000, 15000, 'PCS', 999, '2025-05-20', NULL),
(60, 'BR049', NULL, 3, NULL, 'Defy Tape Uli', '-', 23000, 24000, 'PCS', 993, '2025-05-20', NULL),
(61, 'BR050', NULL, 3, NULL, 'Dilan Choco 23 g', '-', 1700, 2500, 'PCS', 1000, '2025-05-20', NULL),
(62, 'BR051', NULL, 3, NULL, 'Defy Donat Kentang Singkong Thailand', '-', 9000, 10000, 'PCS', 988, '2025-05-20', '2025-05-20'),
(63, 'BR052', NULL, 3, NULL, 'Donat Meses', '-', 5000, 6000, 'PCS', 1000, '2025-05-20', NULL),
(64, 'BR053', NULL, 3, NULL, 'Dr. Alima Granola', '-', 60000, 65000, 'PCS', 1000, '2025-05-20', NULL),
(65, 'BR054', NULL, 3, NULL, 'dr. Nunik Botok', '-', 6000, 7000, 'PCS', 983, '2025-05-20', NULL),
(66, 'BR055', NULL, 3, NULL, 'Dr. Nunik Brownies Besar', '-', 27000, 29000, 'PCS', 1000, '2025-05-20', NULL),
(67, 'BR056', NULL, 3, NULL, 'dr. Nunik Brownies Kecil', '-', 4500, 5500, 'PCS', 975, '2025-05-20', NULL),
(68, 'BR057', NULL, 3, NULL, 'Dr. Nunik Muffin', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(69, 'BR058', NULL, 3, NULL, 'Dr. Nunik Nasi Putih', '-', 3000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(70, 'BR059', NULL, 3, NULL, 'Dr. Nunik Pecel Urap', '-', 7000, 8000, 'PCS', 983, '2025-05-20', '2025-05-20'),
(71, 'BR060', NULL, 3, NULL, 'Drg. Windy Klappertaart', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(72, 'BR061', NULL, 3, NULL, 'Drg. Windy Lumpur', '-', 7000, 8000, 'PCS', 1000, '2025-05-20', NULL),
(73, 'BR062', NULL, 3, NULL, 'Drg. Windy Maccheese', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(74, 'BR063', NULL, 3, NULL, 'Drg. Windy Puding Buko Coklat', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(75, 'BR064', NULL, 3, NULL, 'Drg. Windy Puding Ekonomis', '-', 8500, 9500, 'PCS', 1000, '2025-05-20', NULL),
(76, 'BR065', NULL, 3, NULL, 'Drg. Windy Pudot Coffee Jelly', '-', 9000, 10000, 'PCS', 992, '2025-05-20', NULL),
(77, 'BR066', NULL, 3, NULL, 'Drg. Windy Soes', '-', 7000, 8000, 'PCS', 1000, '2025-05-20', NULL),
(78, 'BR067', NULL, 3, NULL, 'Drg. Windy Spaghetti', '-', 12500, 13500, 'PCS', 1000, '2025-05-20', NULL),
(79, 'BR068', NULL, 3, NULL, 'Drg. Windy Tahu Telur', '-', 3000, 3500, 'PCS', 1000, '2025-05-20', NULL),
(80, 'BR069', NULL, 3, NULL, 'Eci Basreng', '-', 4000, 5000, 'PCS', 1000, '2025-05-20', NULL),
(81, 'BR070', NULL, 3, NULL, 'Eci Cheese Stick Jumbo', '-', 14000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(82, 'BR071', NULL, 3, NULL, 'Eci Cheese Stick Reguler', '-', 7500, 8500, 'PCS', 1000, '2025-05-20', NULL),
(83, 'BR072', NULL, 3, NULL, 'Eci Salad', '-', 16000, 17000, 'PCS', 1000, '2025-05-20', NULL),
(84, 'BR073', NULL, 3, NULL, 'Fanny Puding', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(85, 'BR074', NULL, 3, NULL, 'Fanny Silverqueen Puding', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(86, 'BR075', NULL, 3, NULL, 'French Fries 62 g', '-', 7300, 9500, 'PCS', 998, '2025-05-20', NULL),
(87, 'BR076', NULL, 3, NULL, 'Freshcare', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(88, 'BR077', NULL, 3, NULL, 'Garuda Atom All Varian 100 g', '-', 9000, 11000, 'PCS', 998, '2025-05-20', NULL),
(89, 'BR078', NULL, 3, NULL, 'Garuda Kacang 60 g', '-', 5300, 7500, 'PCS', 998, '2025-05-20', NULL),
(90, 'BR079', NULL, 3, NULL, 'Garuda Pilus 96 g', '-', 5800, 8000, 'PCS', 1000, '2025-05-20', NULL),
(91, 'BR080', NULL, 3, NULL, 'Garuda Rosta 95 g', '-', 8800, 11500, 'PCS', 1000, '2025-05-20', NULL),
(92, 'BR081', NULL, 3, NULL, 'Gery Chocolatos', '-', 500, 1000, 'PCS', 1000, '2025-05-20', NULL),
(93, 'BR082', NULL, 3, NULL, 'Getuk', '-', 7000, 8000, 'PCS', 1000, '2025-05-20', NULL),
(94, 'BR083', NULL, 3, NULL, 'Gina Donat Paha Ayam', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(95, 'BR084', NULL, 3, NULL, 'Go Potato 60 g', '-', 4500, 6000, 'PCS', 1000, '2025-05-20', NULL),
(96, 'BR085', NULL, 3, NULL, 'Good Day Botol 250 ml', '-', 5500, 8000, 'PCS', 995, '2025-05-20', NULL),
(97, 'BR086', NULL, 3, NULL, 'Good Day Moccachino Sachet', '-', 2000, 4000, 'PCS', 999, '2025-05-20', NULL),
(98, 'BR087', NULL, 3, NULL, 'Good Time 26 g', '-', 1700, 2500, 'PCS', 1000, '2025-05-20', NULL),
(99, 'BR088', NULL, 3, NULL, 'Hana Makaroni', '-', 5000, 6000, 'PCS', 991, '2025-05-20', NULL),
(100, 'BR089', NULL, 3, NULL, 'Hana Roti', '-', 8000, 8500, 'PCS', 962, '2025-05-20', NULL),
(101, 'BR090', NULL, 3, NULL, 'Hana Roti Bantal', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(102, 'BR091', NULL, 3, NULL, 'Happytos 140 g', '-', 11500, 14000, 'PCS', 1000, '2025-05-20', NULL),
(103, 'BR092', NULL, 3, NULL, 'Hello Panda 42g', '-', 8000, 10000, 'PCS', 1000, '2025-05-20', NULL),
(104, 'BR093', NULL, 3, NULL, 'Hydro Coco 250 ml', '-', 6600, 9000, 'PCS', 994, '2025-05-20', NULL),
(105, 'BR094', NULL, 3, NULL, 'Indocafe Coffeemix Sachet', '-', 1700, 4000, 'PCS', 1000, '2025-05-20', NULL),
(106, 'BR095', NULL, 3, NULL, 'Khong Guan Saltcheese', '-', 12000, 15000, 'PCS', 998, '2025-05-20', NULL),
(107, 'BR096', NULL, 3, NULL, 'Kusuka Emping 40 g', '-', 9500, 11500, 'PCS', 1000, '2025-05-20', NULL),
(108, 'BR097', NULL, 3, NULL, 'Kusuka Keripik BBQ Balado Rumput Laut 60 g', '-', 5700, 8000, 'PCS', 998, '2025-05-20', NULL),
(109, 'BR098', NULL, 3, NULL, 'Laurier Pack isi 10', '-', 8000, 10000, 'PCS', 1000, '2025-05-20', NULL),
(110, 'BR099', NULL, 3, NULL, 'Laurier Renceng', '-', 700, 2000, 'PCS', 1000, '2025-05-20', NULL),
(111, 'BR100', NULL, 3, NULL, 'Laurier Renceng Wing', '-', 1000, 2000, 'PCS', 1000, '2025-05-20', NULL),
(112, 'BR101', NULL, 3, NULL, 'Le Minerale 600 ml', '-', 2000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(113, 'BR102', NULL, 3, NULL, 'Le Minerale Galon', '-', 18500, 25000, 'PCS', 1000, '2025-05-20', NULL),
(114, 'BR103', NULL, 3, NULL, 'Lifebuoy Botol', '-', 14000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(115, 'BR104', NULL, 3, NULL, 'Materai', '-', 10000, 12000, 'PCS', 991, '2025-05-20', NULL),
(116, 'BR105', NULL, 3, NULL, 'Mertha Taso', '-', 4000, 5000, 'PCS', 938, '2025-05-20', NULL),
(117, 'BR106', NULL, 3, NULL, 'Mogu Mogu 320 ml', '-', 12000, 14000, 'PCS', 998, '2025-05-20', NULL),
(118, 'BR107', NULL, 3, NULL, 'Monde Bourbon 140 g', '-', 9500, 12000, 'PCS', 1000, '2025-05-20', NULL),
(119, 'BR108', NULL, 3, NULL, 'Monde Butter Cookies', '-', 20000, 23000, 'PCS', 1000, '2025-05-20', NULL),
(120, 'BR109', NULL, 3, NULL, 'Monde Eggdrop 110 g', '-', 7500, 10000, 'PCS', 1000, '2025-05-20', NULL),
(121, 'BR110', NULL, 3, NULL, 'Monde Eggroll 168 g', '-', 25000, 28000, 'PCS', 1000, '2025-05-20', NULL),
(122, 'BR111', NULL, 3, NULL, 'Monde Fried Cookies 200 g', '-', 16000, 19000, 'PCS', 999, '2025-05-20', NULL),
(123, 'BR112', NULL, 3, NULL, 'Monde Genji Raisin Pie 70 g', '-', 9600, 13000, 'PCS', 998, '2025-05-20', NULL),
(124, 'BR113', NULL, 3, NULL, 'Monde Snack 60 g', '-', 5000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(125, 'BR114', NULL, 3, NULL, 'Nabati Richeese Richoco Wafer 37 g', '-', 1700, 2500, 'PCS', 997, '2025-05-20', NULL),
(126, 'BR115', NULL, 3, NULL, 'Nia Farmasi Basreng', '-', 8000, 9000, 'PCS', 1000, '2025-05-20', NULL),
(127, 'BR116', NULL, 3, NULL, 'Nia Farmasi Cheestick Soes', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(128, 'BR117', NULL, 3, NULL, 'Nia Farmasi Kacang', '-', 13000, 14000, 'PCS', 995, '2025-05-20', NULL),
(129, 'BR118', NULL, 3, NULL, 'Nia Farmasi Lumpia', '-', 13000, 14000, 'PCS', 1000, '2025-05-20', NULL),
(130, 'BR119', NULL, 3, NULL, 'Nia Rumah Kopi', '-', 17000, 18000, 'PCS', 1000, '2025-05-20', NULL),
(131, 'BR120', NULL, 3, NULL, 'Nipis Madu 330 ml', '-', 4500, 6000, 'PCS', 1000, '2025-05-20', NULL),
(132, 'BR121', NULL, 3, NULL, 'Nissin Sagu Keju 110 g', '-', 12000, 15000, 'PCS', 1000, '2025-05-20', NULL),
(133, 'BR122', NULL, 3, NULL, 'Oatside All Varian 200 ml', '-', 8000, 10000, 'PCS', 997, '2025-05-20', NULL),
(134, 'BR123', NULL, 3, NULL, 'Oishi Kraker Udang 60 g', '-', 7200, 9500, 'PCS', 1000, '2025-05-20', NULL),
(135, 'BR124', NULL, 3, NULL, 'Oishi Pillows 100 g', '-', 11000, 13500, 'PCS', 1000, '2025-05-20', NULL),
(136, 'BR125', NULL, 3, NULL, 'Oishi Popcorn 100 g', '-', 15000, 17000, 'PCS', 1000, '2025-05-20', NULL),
(137, 'BR126', NULL, 3, NULL, 'Oishi Sponge 100 g', '-', 12500, 15000, 'PCS', 999, '2025-05-20', NULL),
(138, 'BR127', NULL, 3, NULL, 'Oreo 27 g', '-', 2000, 3000, 'PCS', 1000, '2025-05-20', NULL),
(139, 'BR128', NULL, 3, NULL, 'Panda Cincau 310 ml', '-', 5600, 8000, 'PCS', 999, '2025-05-20', NULL),
(140, 'BR129', NULL, 3, NULL, 'Pantene 70 ml', '-', 15400, 17500, 'PCS', 1000, '2025-05-20', NULL),
(141, 'BR130', NULL, 3, NULL, 'Permen Campur', '-', 500, 1000, 'PCS', 1000, '2025-05-20', NULL),
(142, 'BR131', NULL, 3, NULL, 'Peyek Dewi', '-', 20000, 22000, 'PCS', 1000, '2025-05-20', NULL),
(143, 'BR132', NULL, 3, NULL, 'Pia 100 Kacang Hijau 150 g', '-', 12000, 14000, 'PCS', 998, '2025-05-20', NULL),
(144, 'BR133', NULL, 3, NULL, 'Piattos 68 g', '-', 9500, 11500, 'PCS', 997, '2025-05-20', NULL),
(145, 'BR134', NULL, 3, NULL, 'Plossa', '-', 10000, 12000, 'PCS', 1000, '2025-05-20', NULL),
(146, 'BR135', NULL, 3, NULL, 'Pocari Sweat 350 ml', '-', 5500, 8000, 'PCS', 995, '2025-05-20', NULL),
(147, 'BR136', NULL, 3, NULL, 'Pocky Box 22 g', '-', 4000, 6000, 'PCS', 1000, '2025-05-20', NULL),
(148, 'BR137', NULL, 3, NULL, 'Popmie Ayam Bakso Kari 75 g', '-', 5000, 7000, 'PCS', 999, '2025-05-20', NULL),
(149, 'BR138', NULL, 3, NULL, 'Popmie Gledek 75 g', '-', 5300, 7500, 'PCS', 1000, '2025-05-20', NULL),
(150, 'BR139', NULL, 3, NULL, 'Pudji Kunyit Asem ', '-', 10000, 11000, 'PCS', 999, '2025-05-20', NULL),
(151, 'BR140', NULL, 3, NULL, 'Putu Mayang Serabi', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(152, 'BR141', NULL, 3, NULL, 'Ratna Keripik Tempe 250 g', '-', 16000, 18500, 'PCS', 994, '2025-05-20', NULL),
(153, 'BR142', NULL, 3, NULL, 'Ratna Marning 250 g', '-', 11500, 14000, 'PCS', 995, '2025-05-20', NULL),
(154, 'BR143', NULL, 3, NULL, 'Ratna Pastel Onde Pie Martabak Risol', '-', 4000, 5000, 'PCS', 833, '2025-05-20', '2025-05-21'),
(155, 'BR144', NULL, 3, NULL, 'Rebo Kuaci', '-', 14600, 17000, 'PCS', 998, '2025-05-20', NULL),
(156, 'BR145', NULL, 3, NULL, 'Roma Malkist 105 g', '-', 7500, 9500, 'PCS', 998, '2025-05-20', NULL),
(157, 'BR146', NULL, 3, NULL, 'Roma Sari Gandum 108 g', '-', 9500, 12000, 'PCS', 1000, '2025-05-20', NULL),
(158, 'BR147', NULL, 3, NULL, 'RSD Coffee', '-', 15000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(159, 'BR148', NULL, 3, NULL, 'RSD Matcha Choco', '-', 17000, 18000, 'PCS', 1000, '2025-05-20', NULL),
(160, 'BR149', NULL, 3, NULL, 'Selamat Wafer 12 g', '-', 1000, 2000, 'PCS', 1000, '2025-05-20', NULL),
(161, 'BR150', NULL, 3, NULL, 'Silverqueen Bites 30 g', '-', 8300, 10500, 'PCS', 992, '2025-05-20', NULL),
(162, 'BR151', NULL, 3, NULL, 'Snap Superstar ', '-', 2000, 3000, 'PCS', 1000, '2025-05-20', NULL),
(163, 'BR152', NULL, 3, NULL, 'Suki Stick 95 g', '-', 7300, 10000, 'PCS', 999, '2025-05-20', NULL),
(164, 'BR153', NULL, 3, NULL, 'Suky Udang 60 g', '-', 7200, 9500, 'PCS', 1000, '2025-05-20', NULL),
(165, 'BR154', NULL, 3, NULL, 'Superstar Wafer', '-', 1000, 2000, 'PCS', 1000, '2025-05-20', NULL),
(166, 'BR155', NULL, 3, NULL, 'Taro BBQ Rumput Laut 32 g', '-', 4600, 6000, 'PCS', 1000, '2025-05-20', NULL),
(167, 'BR156', NULL, 3, NULL, 'Teh Botol Pet 350 ml', '-', 3500, 6000, 'PCS', 981, '2025-05-20', NULL),
(168, 'BR157', NULL, 3, NULL, 'Teh Kotak 300 ml', '-', 3500, 6000, 'PCS', 996, '2025-05-20', NULL),
(169, 'BR158', NULL, 3, NULL, 'Teh Pucuk', '-', 2500, 5000, 'PCS', 1000, '2025-05-20', NULL),
(170, 'BR159', NULL, 3, NULL, 'Thunder Delfi 36 g', '-', 7500, 9500, 'PCS', 1000, '2025-05-20', NULL),
(171, 'BR160', NULL, 3, NULL, 'Torabika Cappucino Sachet ', '-', 2500, 4000, 'PCS', 1000, '2025-05-20', NULL),
(172, 'BR161', NULL, 3, NULL, 'Ultra Low Fat 250 ml', '-', 7000, 9000, 'PCS', 1000, '2025-05-20', NULL),
(173, 'BR162', NULL, 3, NULL, 'Ultra Sari Asem 250 ml', '-', 5500, 8000, 'PCS', 995, '2025-05-20', NULL),
(174, 'BR163', NULL, 3, NULL, 'Ultra SKI 250 ml', '-', 4200, 6500, 'PCS', 996, '2025-05-20', NULL),
(175, 'BR164', NULL, 3, NULL, 'Ultra Susu All Varian 250 ml', '-', 6500, 9000, 'PCS', 976, '2025-05-20', NULL),
(176, 'BR165', NULL, 3, NULL, 'Usus Keripik', '-', 8500, 10000, 'PCS', 997, '2025-05-20', NULL),
(177, 'BR166', NULL, 3, NULL, 'Vegetable Cheese', '-', 3000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(178, 'BR167', NULL, 3, NULL, 'Walens Soes Nissin 100 g', '-', 10000, 12500, 'PCS', 998, '2025-05-20', NULL),
(179, 'BR168', NULL, 3, NULL, 'Yakult', '-', 2500, 3500, 'PCS', 1000, '2025-05-20', NULL),
(180, 'BR169', NULL, 3, NULL, 'YouC 1000 140 ml', '-', 6500, 9000, 'PCS', 993, '2025-05-20', NULL),
(181, 'BR00181', NULL, 4, NULL, 'Larutan', '-', 6200, 8000, 'PCS', 999, '2025-05-20', NULL),
(182, 'BR00182', NULL, 3, NULL, 'Ketan Uli Serundeng', '-', 10000, 11000, 'PCS', 997, '2025-05-20', NULL),
(183, 'BR00183', NULL, 3, NULL, 'Waffelo ', '-', 1000, 2000, 'PCS', 999, '2025-05-20', '2025-05-20'),
(184, 'BR00184', NULL, 4, NULL, 'Kopiko 78 240 ml', '-', 5000, 7500, 'PCS', 998, '2025-05-20', NULL),
(185, 'BR00185', NULL, 3, NULL, 'Ratna Agar-agar Santan Puding Potong', '-', 3000, 3500, 'PCS', 983, '2025-05-21', '2025-05-21'),
(186, 'BR00186', NULL, 3, NULL, 'Herlan Basreng Ngeunah', '-', 10000, 11000, 'PCS', 993, '2025-05-21', NULL),
(187, 'BR00187', NULL, 4, NULL, 'Drink Bengbeng', '-', 2500, 4500, 'PCS', 999, '2025-05-22', NULL),
(188, 'BR00188', NULL, 4, NULL, 'drg. Windy Kopi Adventure', '-', 15000, 16000, 'PCS', 996, '2025-05-22', NULL),
(189, 'BR00189', NULL, 3, NULL, 'Citra Salad', '-', 20000, 21000, 'PCS', 995, '2025-05-23', NULL);

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
(5, 'PL004', 'Aep Suargana', '0', '0', '123@gmail.com', '2025-05-09 18:37:43', NULL),
(6, 'PL006', 'Mardoli', '123', '123', '123@gmail.com', '2025-05-20 18:57:07', NULL),
(7, 'PL007', 'dr. Nunik Rahayu', '123', '123', '123@gmail.com', '2025-05-20 18:59:08', NULL),
(8, 'PL008', 'dr. Lily Juheriah', '123', '123', '123@gmail.com', '2025-05-20 18:59:37', NULL),
(9, 'PL009', 'Sari Nur', '123', '123', '123@gmail.com', '2025-05-20 19:00:26', NULL),
(10, 'PL0010', 'Heny Kurniawaty', '123', '123', '123@gmail.com', '2025-05-20 19:04:55', NULL),
(11, 'PL0011', 'Rizka', '123', '123', '123@gmail.com', '2025-05-20 19:06:27', NULL),
(12, 'PL0012', 'Ervita', '123', '123', '123@gmail.com', '2025-05-20 19:07:05', NULL),
(13, 'PL0013', '1 Parwitha IT', '123', '123', '123@gmail.com', '2025-05-23 19:21:34', NULL),
(14, 'PL0014', 'drg. Lily Wijayanti', '123', '123', '123@gmail.com', '2025-05-20 19:09:33', NULL),
(15, 'PL0015', '1 Sri HCU', '123', '123', '123@gmail.com', '2025-05-23 19:22:09', NULL),
(16, 'PL0016', '1 Ari Gumay', '123', '123', '123@gmail.com', '2025-05-23 19:20:34', NULL),
(17, 'PL0017', '1 Zola', '123', '123', '123@gmail.com', '2025-05-23 19:22:20', NULL),
(18, 'PL0018', 'Sherly Alfazona', '123', '123', '123@gmail.com', '2025-05-20 19:14:44', NULL),
(19, 'PL0019', 'Silvi Nurhayati', '123', '123', '123@gmail.com', '2025-05-20 19:15:34', NULL),
(20, 'PL0020', 'dr. Evi Verawati', '123', '123', '123@gmail.com', '2025-05-20 19:17:15', NULL),
(21, 'PL0021', '1 Alya Pendaftaran', '123', '123', '123@gmail.com', '2025-05-23 19:20:48', NULL),
(22, 'PL0022', 'Gina Pratiwi', '123', '123', '123@gmail.com', '2025-05-20 19:21:12', NULL),
(23, 'PL0023', 'drg. Ayu Kurniasih', '123', '123', '123@gmail.com', '2025-05-20 19:24:08', NULL),
(24, 'PL0024', 'dr. Katarina', '123', '123', '123@gmail.com', '2025-05-20 19:26:00', NULL),
(26, 'PL0026', 'Tulus Prasetyo', '123', '123', '123@gmail.com', '2025-05-20 19:28:06', NULL),
(27, 'PL0027', 'dr. Veronica', '123', '123', '123@gmail.com', '2025-05-20 19:29:10', NULL),
(28, 'PL0028', 'Dian Esthi', '123', '123', '123@gmail.com', '2025-05-20 19:30:06', NULL),
(29, 'PL0029', 'drg. Sara Meidila', '123', '123', '123@gmail.com', '2025-05-20 19:31:38', NULL),
(30, 'PL0030', 'dr. Silvi Puspitasari', '123', '123', '123@gmail.com', '2025-05-20 19:40:06', NULL),
(31, 'PL0031', 'Risma Verawati', '123', '123', '123@gmail.com', '2025-05-20 19:41:01', NULL),
(32, 'PL0032', 'dr. Sari Widyastuti', '123', '123', '123@gmail.com', '2025-05-20 19:43:01', NULL),
(33, 'PL0033', '1 Puspa', '123', '123', '123@gmail.com', '2025-05-23 19:19:29', NULL),
(34, 'PL0034', 'Hana Paryati', '123', '123', '123@gmail.com', '2025-05-20 19:45:54', NULL),
(35, 'PL0035', '1 Desi Farmasi', '123', '123', '123@gmail.com', '2025-05-23 19:20:18', NULL),
(36, 'PL0036', 'drg. Putri Arifiani', '123', '123', '123@gmail.com', '2025-05-20 19:47:44', NULL),
(37, 'PL0037', 'dr. Maya Tri', '123', '123', '123@gmail.com', '2025-05-20 19:48:29', NULL),
(38, 'PL0038', '1 Pengunjung', '123', '123', '123@gmail.com', '2025-05-21 17:56:22', NULL),
(39, 'PL0039', 'Risda Nurimanda', '123', '123', '123@gmail.com', '2025-05-20 19:50:10', NULL),
(40, 'PL0040', '1 Irma', '123', '123', '123@gmail.com', '2025-05-21 17:56:08', NULL),
(41, 'PL0041', 'Fanny Gita Annisa', '123', '123', '123@gmail.com', '2025-05-20 19:52:15', NULL),
(42, 'PL0042', 'dr. Luh Putu', '123', '123', '123@gmail.com', '2025-05-20 19:52:57', NULL),
(43, 'PL0043', 'dr. Dina Fitriani', '123', '123', '123@gmail.com', '2025-05-20 19:53:29', NULL),
(44, 'PL0044', 'dr. Meilany', '123', '123', '123@gmail.com', '2025-05-20 19:54:12', NULL),
(45, 'PL0045', 'dr. Alima', '123\r\n', '123', '123@gmail.com', '2025-05-20 19:59:02', NULL),
(46, 'PL0046', 'Dwi Aswita', '123', '123', '123@gmail.com', '2025-05-20 19:59:58', NULL),
(47, 'PL0047', '1 Bani', '123', '123', '123@gmail.com', '2025-05-21 17:55:42', NULL),
(48, 'PL0048', 'Dede Rohana', '123', '123', '123@gmail.com', '2025-05-20 20:01:50', NULL),
(49, 'PL0049', 'dr. Nani Saputri', '123', '123', '123@gmail.com', '2025-05-20 20:02:40', NULL),
(50, 'PL0050', '1 Octa', '123', '123', '123@gmail.com', '2025-05-21 17:55:54', NULL),
(51, 'PL0051', 'dr. Nanda Kaliestasari', '123', '123', '123@gmail.com', '2025-05-20 20:05:12', NULL),
(52, 'PL0052', 'Dewi Kartika Sari', '123', '123', '123@gmail.com', '2025-05-20 20:06:58', NULL),
(53, 'PL0053', 'dr. Neta Margaretha', '123', '123', '123@gmail.com', '2025-05-20 20:07:33', NULL),
(54, 'PL0054', 'Sri Dewi Isharyanti', '123', '123', '123@gmail.com', '2025-05-20 20:08:08', NULL),
(55, 'PL0055', 'Rona Novalia ', '123', '123', '123@gmail.com', '2025-05-20 20:09:37', NULL),
(56, 'PL0056', 'Tongam Ferdin', '123\r\n', '123', '123@gmail.com', '2025-05-20 20:10:18', NULL),
(57, 'PL0057', '1 Aulia', '123', '123', '123@gmail.com', '2025-05-21 17:58:48', NULL),
(58, 'PL0058', '1 Nia Farmasi', '123', '123', '123@gmail.com', '2025-05-21 18:01:01', NULL),
(59, 'PL0059', 'Teacheriska', '123', '123', '123@gmail.com', '2025-05-21 18:02:28', NULL),
(60, 'PL0060', 'Ratna Sartika', '123', '123', '123@gmail.com', '2025-05-21 18:03:47', NULL),
(61, 'PL0061', 'dr. Fitriani Ichsan', '1', '1', '123@gmail.com', '2025-05-21 18:04:31', NULL),
(62, 'PL0062', '1 Nurma Lab', '1', '1', '123@gmail.com', '2025-05-21 18:05:15', NULL),
(63, 'PL0063', 'Nita Rizki', '1', '1', '123@gmail.com', '2025-05-21 18:06:10', NULL),
(64, 'PL0064', 'Rina Rosalina', '1', '1', '123@gmail.com', '2025-05-21 18:10:43', NULL),
(65, 'PL0065', 'Maria Magdalena', '1', '1', '123@gmail.com', '2025-05-21 18:11:24', NULL),
(66, 'PL0066', '1 Putri Lab', '1', '1', '123@gmail.com', '2025-05-21 18:12:54', NULL),
(67, 'PL0067', 'Riana', '1', '1', '123@gmail.com', '2025-05-21 18:15:17', NULL),
(68, 'PL0068', 'dr. Ratih Indriani', '1', '1', '123@gmail.com', '2025-05-21 18:23:45', NULL),
(69, 'PL0069', 'Neng Eva', '1', '1', '123@gmail.com', '2025-05-21 18:24:17', NULL),
(70, 'PL0070', 'Evi Sirait', '1', '1', '123@gmail.com', '2025-05-21 18:24:55', NULL),
(71, 'PL0071', 'Farida Werdaningsih', '1', '1', '123@gmail.com', '2025-05-21 18:26:50', NULL),
(72, 'PL0072', 'dr. Yosi Oktarina', '1', '1', '123@gmail.com', '2025-05-22 14:43:04', NULL),
(73, 'PL0073', 'Jalaludin', '1', '1', '123@gmail.com', '2025-05-22 14:46:39', NULL),
(74, 'PL0074', 'Haryadi Nugroho', '1', '1', '123@gmail.com', '2025-05-22 14:48:31', NULL),
(75, 'PL0075', 'Iis Marianti', '1', '1', '123@gmail.com', '2025-05-22 14:51:06', NULL),
(76, 'PL0076', 'dr. Tery Adiastuti', '1', '1', '123@gmail.com', '2025-05-22 14:52:02', NULL),
(77, 'PL0077', 'Endang Pratiwi', '1', '1', '123@gmail.com', '2025-05-22 14:53:35', NULL),
(78, 'PL0078', 'Waleh Suprihatin', '1', '1', '123@gmail.com', '2025-05-22 14:54:50', NULL),
(79, 'PL0079', 'drg. RR. Wahyu', '1', '1', '123@gmail.com', '2025-05-22 14:55:35', NULL),
(80, 'PL0080', 'drg. Lasma Sinambela', '1', '1', '123@gmail.com', '2025-05-22 15:04:05', NULL),
(81, 'PL0081', '1 Alya Pendaftaran', '1', '1', '123@gmail.com', '2025-05-22 22:17:14', NULL),
(82, 'PL0082', 'drg. Fatimah', '1', '1', '123@gmail.com', '2025-05-22 22:20:56', NULL),
(83, 'PL0083', 'dr. Handoyo Yunian', '1', '1', '123@gmail.com', '2025-05-22 22:38:08', NULL),
(84, 'PL0084', 'Triastika ', '1', '1', '123@gmail.com', '2025-05-22 22:40:02', NULL),
(85, 'PL0085', 'Lisna', '1', '1', '123@gmail.com', '2025-05-22 22:40:31', NULL),
(86, 'PL0086', 'Asih Riskiningrum', '1', '1', '123@gmail.com', '2025-05-22 22:41:16', NULL),
(87, 'PL0087', '1 Renan', '1', '1', '123@gmail.com', '2025-05-22 22:43:02', NULL),
(88, 'PL0088', '1 Dewi Ranap', '1', '1', '123@gmail.com', '2025-05-23 19:19:38', NULL),
(89, 'PL0089', 'Sofia Wahyutiningrum', '1', '1', '123@gmail.com', '2025-05-22 22:46:03', NULL),
(90, 'PL0090', 'dr. Putri PS', '1', '1', '123@gmail.com', '2025-05-22 22:54:20', NULL),
(91, 'PL0091', 'Kiswantoro', '1', '1', '123@gmail.com', '2025-05-22 22:55:34', NULL),
(92, 'PL0092', '1 Nova', '1', '1', '123@gmail.com', '2025-05-22 22:56:03', NULL),
(93, 'PL0093', 'Fitri Rahayu', '1', '1', '123@gmail.com', '2025-05-23 19:13:01', NULL),
(95, 'PL0094', '1 Peni Yuliyanti', '1', '1', '123@gmail.com', '2025-05-23 19:16:32', NULL),
(96, 'PL0096', '1 Febri Farmasi', '1', '1', '123@gmail.com', '2025-05-23 19:16:16', NULL),
(97, 'PL0097', 'Anita Malik', '1', '1', '123@gmail.com', '2025-05-23 20:26:06', NULL),
(98, 'PL0098', '1 Ranap dr. Sari', '1', '1', '123@gmail.com', '2025-05-23 20:28:02', NULL),
(99, 'PL0099', 'dr. Indra Setiawan', '1', '1', '123@gmail.com', '2025-05-23 20:29:26', NULL),
(100, 'PL00100', 'drg. Wulan Hatiningwidy', '1', '1', '123@gmail.com', '2025-05-23 20:30:58', NULL),
(101, 'PL00101', '1 Defy', '1', '1', '123@gmail.com', '2025-05-23 20:32:55', NULL),
(102, 'PL00102', 'Eva Feriana', '1', '1', '123@gmail.com', '2025-05-23 20:36:01', NULL),
(103, 'PL00103', '1 Siti Zubaedah', '1', '1', '123@gmail.com', '2025-05-23 20:36:47', NULL),
(104, 'PL00104', '1 Mertha', '1', '1', '123@gmail.com', '2025-05-23 20:41:30', NULL),
(105, 'PL00105', 'Rahmawati', '1', '1', '123@gmail.com', '2025-05-23 20:42:06', NULL),
(106, 'PL00106', 'Aprilia', '1', '1', '123@gmail.com', '2025-05-23 20:45:06', NULL),
(107, 'PL00107', 'dr. Ratna Monik', '1', '1', '123@gmail.com', '2025-05-23 20:45:47', NULL),
(108, 'PL00108', '1 Rijalul Furqon', '1', '1', '123@gmail.com', '2025-05-23 20:53:30', NULL),
(109, 'PL00109', '1 Muchamad Ramadhan', '1', '1', '123@gmail.com', '2025-05-23 20:55:57', NULL),
(110, 'PL00110', '1 Aliyyah', '1', '1', '123@gmail.com', '2025-05-23 20:57:38', NULL),
(111, 'PL00111', 'Ahmad Ziqry', '1', '1', '123@gmail.com', '2025-05-23 21:14:21', NULL),
(112, 'PL00112', 'Bintari Maharani', '1', '1', '123@gmail.com', '2025-05-23 22:11:30', NULL),
(113, 'PL00113', 'dr. Mirza Hapsari', '1', '1', '123@gmail.com', '2025-05-23 22:16:12', NULL),
(114, 'PL00114', 'Karunia Setyo', '1', '1', '123@gmail.com', '2025-05-23 22:17:14', NULL),
(115, 'PL00115', '1 Ira ', '1', '1', '123@gmail.com', '2025-05-23 22:19:00', NULL),
(116, 'PL00116', 'dr. Ummi Zahra ', '1', '1', '123@gmail.com', '2025-05-23 22:19:39', NULL),
(117, 'PL00117', 'dr. Tuti Livayani', '1', '1', '123@gmail.com', '2025-05-23 22:20:11', NULL),
(118, 'PL00118', 'Lasiyono', '1', '1', '123@gmail.com', '2025-05-23 22:22:28', NULL),
(119, 'PL00119', 'dr. Dian Alfianti', '1', '1', '123@gmail.com', '2025-05-23 22:29:47', NULL),
(120, 'PL00120', 'Siti Sadiyah', '1', '1', '123@gmail.com', '2025-05-23 22:36:37', NULL),
(121, 'PL00121', '1 Ade Fathah', '1', '1', '123@gmail.com', '2025-05-23 22:37:31', NULL),
(122, 'PL00122', 'Juniatun Makmuroh', '1', '1', '123@gmail.com', '2025-05-23 22:39:37', NULL),
(123, 'PL00123', '1 Adit Radiologi', '1', '1', '123@gmail.com', '2025-05-23 22:50:46', NULL);

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
(11, 'TR0011', 1, 3, 2, 7500, 11000, 0, '2025-05-09', '2025-05-09 19:17:21', '2025-05', 'Kurang Bayar'),
(12, 'TR0012', 1, 6, 10, 89100, 111500, 0, '2025-05-20', '2025-05-20 18:57:16', '2025-05', 'Kurang Bayar'),
(13, 'TR0013', 1, 8, 4, 18000, 24000, 0, '2025-05-20', '2025-05-20 18:59:49', '2025-05', 'Kurang Bayar'),
(14, 'TR0014', 1, 9, 1, 7000, 8000, 0, '2025-05-20', '2025-05-20 19:00:35', '2025-05', 'Kurang Bayar'),
(15, 'TR0015', 1, 10, 3, 14000, 16500, 0, '2025-05-20', '2025-05-20 19:05:14', '2025-05', 'Kurang Bayar'),
(16, 'TR0016', 1, 11, 2, 7000, 8500, 0, '2025-05-20', '2025-05-20 19:06:40', '2025-05', 'Kurang Bayar'),
(17, 'TR0017', 1, 12, 1, 4500, 8000, 8000, '2025-05-20', '2025-05-20 19:07:19', '2025-05', 'Lunas'),
(18, 'TR0018', 1, 13, 2, 7000, 8000, 8000, '2025-05-20', '2025-05-20 19:08:11', '2025-05', 'Lunas'),
(19, 'TR0019', 1, 14, 3, 11200, 16500, 0, '2025-05-20', '2025-05-20 19:09:47', '2025-05', 'Kurang Bayar'),
(20, 'TR0020', 1, 11, 2, 7000, 9000, 0, '2025-05-20', '2025-05-20 19:11:46', '2025-05', 'Kurang Bayar'),
(21, 'TR0021', 1, 15, 3, 10500, 12000, 0, '2025-05-20', '2025-05-20 19:12:42', '2025-05', 'Kurang Bayar'),
(22, 'TR0022', 1, 16, 2, 8000, 10000, 0, '2025-05-20', '2025-05-20 19:13:17', '2025-05', 'Kurang Bayar'),
(23, 'TR0023', 1, 17, 1, 7500, 10000, 0, '2025-05-20', '2025-05-20 19:13:57', '2025-05', 'Kurang Bayar'),
(24, 'TR0024', 1, 18, 3, 10500, 12500, 12500, '2025-05-20', '2025-05-20 19:15:01', '2025-05', 'Lunas'),
(25, 'TR0025', 1, 19, 3, 15500, 20000, 0, '2025-05-20', '2025-05-20 19:15:46', '2025-05', 'Kurang Bayar'),
(26, 'TR0026', 1, 20, 3, 13000, 15000, 0, '2025-05-20', '2025-05-20 19:17:25', '2025-05', 'Kurang Bayar'),
(27, 'TR0027', 1, 21, 5, 18500, 23000, 0, '2025-05-20', '2025-05-20 19:18:47', '2025-05', 'Kurang Bayar'),
(28, 'TR0028', 1, 22, 3, 38000, 41000, 0, '2025-05-20', '2025-05-20 19:21:43', '2025-05', 'Kurang Bayar'),
(29, 'TR0029', 1, 23, 5, 28500, 37000, 0, '2025-05-20', '2025-05-20 19:24:33', '2025-05', 'Kurang Bayar'),
(30, 'TR0030', 1, 24, 8, 40000, 49500, 0, '2025-05-20', '2025-05-20 19:26:11', '2025-05', 'Kurang Bayar'),
(32, 'TR0032', 1, 26, 4, 13500, 18000, 0, '2025-05-20', '2025-05-20 19:28:24', '2025-05', 'Kurang Bayar'),
(33, 'TR0033', 1, 27, 1, 4200, 8000, 0, '2025-05-20', '2025-05-20 19:29:18', '2025-05', 'Kurang Bayar'),
(34, 'TR0034', 1, 19, 1, 8000, 8500, 0, '2025-05-20', '2025-05-20 19:29:40', '2025-05', 'Kurang Bayar'),
(35, 'TR0035', 1, 28, 1, 23000, 24000, 0, '2025-05-20', '2025-05-20 19:30:17', '2025-05', 'Kurang Bayar'),
(36, 'TR0036', 1, 6, 4, 14000, 16000, 0, '2025-05-20', '2025-05-20 19:31:01', '2025-05', 'Kurang Bayar'),
(37, 'TR0037', 1, 29, 1, 10000, 11000, 0, '2025-05-20', '2025-05-20 19:32:16', '2025-05', 'Kurang Bayar'),
(38, 'TR0038', 1, 17, 1, 1000, 2000, 0, '2025-05-20', '2025-05-20 19:34:27', '2025-05', 'Kurang Bayar'),
(39, 'TR0039', 1, 30, 8, 55100, 63500, 0, '2025-05-20', '2025-05-20 19:40:15', '2025-05', 'Kurang Bayar'),
(40, 'TR0040', 1, 31, 3, 10500, 14500, 14000, '2025-05-20', '2025-05-20 19:41:30', '2025-05', 'Kurang Bayar'),
(41, 'TR0041', 1, 32, 8, 50600, 63000, 63000, '2025-05-20', '2025-05-20 19:43:54', '2025-05', 'Lunas'),
(42, 'TR0042', 1, 33, 5, 24000, 29000, 0, '2025-05-20', '2025-05-20 19:45:03', '2025-05', 'Kurang Bayar'),
(43, 'TR0043', 1, 29, 1, 7000, 8000, 0, '2025-05-20', '2025-05-20 19:45:19', '2025-05', 'Kurang Bayar'),
(44, 'TR0044', 1, 34, 3, 16500, 22500, 0, '2025-05-20', '2025-05-20 19:46:02', '2025-05', 'Kurang Bayar'),
(45, 'TR0045', 1, 32, 1, 5500, 7500, 0, '2025-05-20', '2025-05-20 19:46:26', '2025-05', 'Kurang Bayar'),
(46, 'TR0046', 1, 35, 2, 29000, 31000, 0, '2025-05-20', '2025-05-20 19:47:03', '2025-05', 'Kurang Bayar'),
(47, 'TR0047', 1, 36, 3, 13000, 16000, 0, '2025-05-20', '2025-05-20 19:47:56', '2025-05', 'Kurang Bayar'),
(48, 'TR0048', 1, 37, 2, 11200, 16000, 0, '2025-05-20', '2025-05-20 19:48:40', '2025-05', 'Kurang Bayar'),
(49, 'TR0049', 1, 38, 2, 8000, 10000, 10000, '2025-05-20', '2025-05-20 19:49:39', '2025-05', 'Lunas'),
(50, 'TR0050', 1, 39, 2, 9000, 11000, 0, '2025-05-20', '2025-05-20 19:50:20', '2025-05', 'Kurang Bayar'),
(51, 'TR0051', 1, 40, 2, 13500, 16000, 0, '2025-05-20', '2025-05-20 19:50:57', '2025-05', 'Kurang Bayar'),
(52, 'TR0052', 1, 41, 6, 53000, 59000, 0, '2025-05-20', '2025-05-20 19:52:24', '2025-05', 'Kurang Bayar'),
(53, 'TR0053', 1, 42, 1, 7000, 8000, 0, '2025-05-20', '2025-05-20 19:53:04', '2025-05', 'Kurang Bayar'),
(54, 'TR0054', 1, 43, 1, 6000, 7000, 0, '2025-05-20', '2025-05-20 19:53:36', '2025-05', 'Kurang Bayar'),
(55, 'TR0055', 1, 44, 2, 10000, 12500, 0, '2025-05-20', '2025-05-20 19:54:22', '2025-05', 'Kurang Bayar'),
(56, 'TR0056', 1, 38, 4, 26800, 33500, 33500, '2025-05-20', '2025-05-20 19:58:18', '2025-05', 'Lunas'),
(57, 'TR0057', 1, 45, 3, 26500, 31000, 0, '2025-05-20', '2025-05-20 19:59:12', '2025-05', 'Kurang Bayar'),
(58, 'TR0058', 1, 46, 6, 34300, 42000, 0, '2025-05-20', '2025-05-20 20:00:05', '2025-05', 'Kurang Bayar'),
(59, 'TR0059', 1, 45, 1, 4200, 8000, 0, '2025-05-20', '2025-05-20 20:00:22', '2025-05', 'Kurang Bayar'),
(60, 'TR0060', 1, 42, 1, 5700, 8000, 0, '2025-05-20', '2025-05-20 20:00:42', '2025-05', 'Kurang Bayar'),
(61, 'TR0061', 1, 47, 2, 12100, 16500, 0, '2025-05-20', '2025-05-20 20:01:17', '2025-05', 'Kurang Bayar'),
(62, 'TR0062', 1, 48, 2, 9000, 12000, 0, '2025-05-20', '2025-05-20 20:01:56', '2025-05', 'Kurang Bayar'),
(63, 'TR0063', 1, 49, 3, 14500, 18500, 0, '2025-05-20', '2025-05-20 20:02:48', '2025-05', 'Kurang Bayar'),
(64, 'TR0064', 1, 34, 2, 9000, 11000, 0, '2025-05-20', '2025-05-20 20:03:09', '2025-05', 'Kurang Bayar'),
(65, 'TR0065', 1, 0, 1, 8500, 10000, 0, '2025-05-20', '2025-05-20 20:03:36', '2025-05', 'Kurang Bayar'),
(66, 'TR0066', 1, 51, 4, 22500, 26000, 0, '2025-05-20', '2025-05-20 20:05:20', '2025-05', 'Kurang Bayar'),
(67, 'TR0067', 1, 5, 1, 5000, 6000, 0, '2025-05-20', '2025-05-20 20:05:52', '2025-05', 'Kurang Bayar'),
(68, 'TR0068', 1, 41, 1, 4500, 8000, 0, '2025-05-20', '2025-05-20 20:06:07', '2025-05', 'Kurang Bayar'),
(69, 'TR0069', 1, 31, 1, 3500, 6000, 0, '2025-05-20', '2025-05-20 20:06:30', '2025-05', 'Kurang Bayar'),
(70, 'TR0070', 1, 52, 1, 7500, 10000, 0, '2025-05-20', '2025-05-20 20:07:06', '2025-05', 'Kurang Bayar'),
(71, 'TR0071', 1, 53, 1, 4200, 8000, 0, '2025-05-20', '2025-05-20 20:07:40', '2025-05', 'Kurang Bayar'),
(72, 'TR0072', 1, 54, 1, 6000, 7000, 0, '2025-05-20', '2025-05-20 20:08:15', '2025-05', 'Kurang Bayar'),
(73, 'TR0073', 1, 56, 1, 4500, 8000, 8000, '2025-05-20', '2025-05-20 20:10:32', '2025-05', 'Lunas'),
(74, 'TR0074', 1, 23, 6, 21000, 27500, 0, '2025-05-21', '2025-05-21 17:58:22', '2025-05', 'Kurang Bayar'),
(75, 'TR0075', 1, 57, 2, 8000, 10000, 10000, '2025-05-21', '2025-05-21 18:00:14', '2025-05', 'Lunas'),
(76, 'TR0076', 1, 23, 1, 2000, 4000, 0, '2025-05-21', '2025-05-21 18:00:30', '2025-05', 'Kurang Bayar'),
(77, 'TR0077', 1, 58, 0, 0, 0, 0, '2025-05-21', '2025-05-21 18:01:09', '2025-05', 'Lunas'),
(78, 'TR0078', 1, 58, 4, 16000, 20000, 0, '2025-05-21', '2025-05-21 18:01:35', '2025-05', 'Kurang Bayar'),
(79, 'TR0079', 1, 59, 3, 12000, 15000, 0, '2025-05-21', '2025-05-21 18:02:37', '2025-05', 'Kurang Bayar'),
(80, 'TR0080', 1, 49, 2, 7000, 8500, 0, '2025-05-21', '2025-05-21 18:03:06', '2025-05', 'Kurang Bayar'),
(81, 'TR0081', 1, 60, 1, 4000, 5000, 0, '2025-05-21', '2025-05-21 18:03:53', '2025-05', 'Kurang Bayar'),
(82, 'TR0082', 1, 61, 7, 27000, 33500, 0, '2025-05-21', '2025-05-21 18:04:44', '2025-05', 'Kurang Bayar'),
(83, 'TR0083', 1, 62, 4, 16000, 20000, 0, '2025-05-21', '2025-05-21 18:05:24', '2025-05', 'Kurang Bayar'),
(84, 'TR0084', 1, 63, 3, 12000, 15000, 0, '2025-05-21', '2025-05-21 18:06:18', '2025-05', 'Kurang Bayar'),
(85, 'TR0085', 1, 8, 3, 11000, 13500, 0, '2025-05-21', '2025-05-21 18:08:14', '2025-05', 'Kurang Bayar'),
(86, 'TR0086', 1, 40, 3, 12000, 15000, 0, '2025-05-21', '2025-05-21 18:08:37', '2025-05', 'Kurang Bayar'),
(87, 'TR0087', 1, 29, 2, 8000, 10000, 0, '2025-05-21', '2025-05-21 18:09:07', '2025-05', 'Kurang Bayar'),
(88, 'TR0088', 1, 51, 4, 15000, 18500, 0, '2025-05-21', '2025-05-21 18:09:45', '2025-05', 'Kurang Bayar'),
(89, 'TR0089', 1, 36, 2, 7000, 8500, 0, '2025-05-21', '2025-05-21 18:10:10', '2025-05', 'Kurang Bayar'),
(90, 'TR0090', 1, 64, 4, 16000, 20000, 0, '2025-05-21', '2025-05-21 18:10:51', '2025-05', 'Kurang Bayar'),
(91, 'TR0091', 1, 65, 3, 12000, 15000, 0, '2025-05-21', '2025-05-21 18:11:33', '2025-05', 'Kurang Bayar'),
(92, 'TR0092', 1, 32, 5, 20000, 25000, 0, '2025-05-21', '2025-05-21 18:11:56', '2025-05', 'Kurang Bayar'),
(93, 'TR0093', 1, 66, 4, 16000, 20000, 0, '2025-05-21', '2025-05-21 18:13:02', '2025-05', 'Kurang Bayar'),
(94, 'TR0094', 1, 50, 1, 4200, 8000, 0, '2025-05-21', '2025-05-21 18:13:20', '2025-05', 'Kurang Bayar'),
(95, 'TR0095', 1, 26, 5, 20000, 25000, 0, '2025-05-21', '2025-05-21 18:13:46', '2025-05', 'Kurang Bayar'),
(96, 'TR0096', 1, 27, 2, 9000, 11000, 0, '2025-05-21', '2025-05-21 18:14:12', '2025-05', 'Kurang Bayar'),
(97, 'TR0097', 1, 24, 2, 10500, 14000, 0, '2025-05-21', '2025-05-21 18:14:31', '2025-05', 'Kurang Bayar'),
(98, 'TR0098', 1, 67, 4, 22700, 29500, 0, '2025-05-21', '2025-05-21 18:15:25', '2025-05', 'Kurang Bayar'),
(99, 'TR0099', 1, 68, 3, 24200, 28500, 0, '2025-05-21', '2025-05-21 18:23:55', '2025-05', 'Kurang Bayar'),
(100, 'TR00100', 1, 69, 1, 10000, 11000, 0, '2025-05-21', '2025-05-21 18:24:23', '2025-05', 'Kurang Bayar'),
(101, 'TR00101', 1, 70, 3, 12500, 18000, 0, '2025-05-21', '2025-05-21 18:25:01', '2025-05', 'Kurang Bayar'),
(102, 'TR00102', 1, 22, 3, 11400, 19000, 0, '2025-05-21', '2025-05-21 18:26:02', '2025-05', 'Kurang Bayar'),
(103, 'TR00103', 1, 5, 1, 5000, 6000, 0, '2025-05-21', '2025-05-21 18:26:16', '2025-05', 'Kurang Bayar'),
(104, 'TR00104', 1, 71, 2, 12000, 17000, 0, '2025-05-21', '2025-05-21 18:26:58', '2025-05', 'Kurang Bayar'),
(105, 'TR00105', 1, 49, 1, 3500, 6000, 0, '2025-05-21', '2025-05-21 18:27:20', '2025-05', 'Kurang Bayar'),
(106, 'TR00106', 1, 60, 4, 21000, 28000, 0, '2025-05-21', '2025-05-21 18:27:46', '2025-05', 'Kurang Bayar'),
(107, 'TR00107', 1, 19, 8, 34000, 41500, 0, '2025-05-22', '2025-05-22 14:42:36', '2025-05', 'Kurang Bayar'),
(108, 'TR00108', 1, 72, 1, 3500, 4000, 0, '2025-05-22', '2025-05-22 14:43:13', '2025-05', 'Kurang Bayar'),
(109, 'TR00109', 1, 63, 0, 0, 0, 0, '2025-05-22', '2025-05-22 14:43:32', '2025-05', 'Kurang Bayar'),
(110, 'TR00110', 1, 34, 8, 28000, 36000, 0, '2025-05-22', '2025-05-22 14:43:59', '2025-05', 'Kurang Bayar'),
(111, 'TR00111', 1, 72, 1, 8300, 10500, 0, '2025-05-22', '2025-05-22 14:44:22', '2025-05', 'Kurang Bayar'),
(112, 'TR00112', 1, 11, 2, 7000, 8500, 0, '2025-05-22', '2025-05-22 14:44:46', '2025-05', 'Kurang Bayar'),
(113, 'TR00113', 1, 14, 2, 7000, 8500, 0, '2025-05-22', '2025-05-22 14:45:13', '2025-05', 'Kurang Bayar'),
(114, 'TR00114', 1, 22, 1, 5500, 8000, 0, '2025-05-22', '2025-05-22 14:45:27', '2025-05', 'Kurang Bayar'),
(115, 'TR00115', 1, 22, 1, 2000, 4000, 0, '2025-05-22', '2025-05-22 14:45:48', '2025-05', 'Kurang Bayar'),
(116, 'TR00116', 1, 16, 2, 8000, 10000, 0, '2025-05-22', '2025-05-22 14:46:09', '2025-05', 'Kurang Bayar'),
(117, 'TR00117', 1, 73, 2, 11000, 15000, 0, '2025-05-22', '2025-05-22 14:46:46', '2025-05', 'Kurang Bayar'),
(118, 'TR00118', 1, 23, 5, 26300, 36000, 0, '2025-05-22', '2025-05-22 14:48:05', '2025-05', 'Kurang Bayar'),
(119, 'TR00119', 1, 74, 3, 10500, 12000, 0, '2025-05-22', '2025-05-22 14:48:37', '2025-05', 'Kurang Bayar'),
(120, 'TR00120', 1, 17, 1, 3500, 4000, 0, '2025-05-22', '2025-05-22 14:48:56', '2025-05', 'Kurang Bayar'),
(121, 'TR00121', 1, 51, 2, 8000, 10000, 0, '2025-05-22', '2025-05-22 14:49:10', '2025-05', 'Kurang Bayar'),
(122, 'TR00122', 1, 31, 4, 14000, 16500, 16500, '2025-05-22', '2025-05-22 14:49:55', '2025-05', 'Lunas'),
(123, 'TR00123', 1, 75, 6, 26500, 30000, 0, '2025-05-22', '2025-05-22 14:51:13', '2025-05', 'Kurang Bayar'),
(124, 'TR00124', 1, 55, 2, 7000, 8000, 0, '2025-05-22', '2025-05-22 14:51:34', '2025-05', 'Kurang Bayar'),
(125, 'TR00125', 1, 76, 2, 7500, 9500, 0, '2025-05-22', '2025-05-22 14:52:08', '2025-05', 'Kurang Bayar'),
(126, 'TR00126', 1, 60, 2, 5500, 8500, 0, '2025-05-22', '2025-05-22 14:52:29', '2025-05', 'Kurang Bayar'),
(127, 'TR00127', 1, 20, 2, 5500, 8000, 0, '2025-05-22', '2025-05-22 14:52:52', '2025-05', 'Kurang Bayar'),
(128, 'TR00128', 1, 77, 3, 14500, 18000, 0, '2025-05-22', '2025-05-22 14:53:41', '2025-05', 'Kurang Bayar'),
(129, 'TR00129', 1, 49, 2, 7000, 10500, 0, '2025-05-22', '2025-05-22 14:54:01', '2025-05', 'Kurang Bayar'),
(130, 'TR00130', 1, 32, 1, 8000, 8500, 0, '2025-05-22', '2025-05-22 14:54:18', '2025-05', 'Kurang Bayar'),
(131, 'TR00131', 1, 78, 1, 8000, 8500, 0, '2025-05-22', '2025-05-22 14:54:56', '2025-05', 'Kurang Bayar'),
(132, 'TR00132', 1, 8, 1, 4000, 5000, 0, '2025-05-22', '2025-05-22 14:55:11', '2025-05', 'Kurang Bayar'),
(133, 'TR00133', 1, 79, 1, 3500, 4500, 0, '2025-05-22', '2025-05-22 14:55:41', '2025-05', 'Kurang Bayar'),
(134, 'TR00134', 1, 8, 1, 2000, 4000, 0, '2025-05-22', '2025-05-22 14:55:56', '2025-05', 'Kurang Bayar'),
(135, 'TR00135', 1, 62, 1, 9000, 10000, 0, '2025-05-22', '2025-05-22 14:56:18', '2025-05', 'Kurang Bayar'),
(136, 'TR00136', 1, 17, 1, 7500, 10000, 0, '2025-05-22', '2025-05-22 14:56:33', '2025-05', 'Kurang Bayar'),
(137, 'TR00137', 1, 35, 1, 5000, 7000, 0, '2025-05-22', '2025-05-22 14:56:45', '2025-05', 'Kurang Bayar'),
(138, 'TR00138', 1, 46, 2, 11500, 13000, 0, '2025-05-22', '2025-05-22 14:57:12', '2025-05', 'Kurang Bayar'),
(139, 'TR00139', 1, 24, 3, 24500, 29000, 0, '2025-05-22', '2025-05-22 14:58:04', '2025-05', 'Kurang Bayar'),
(140, 'TR00140', 1, 5, 1, 5000, 6000, 0, '2025-05-22', '2025-05-22 14:58:19', '2025-05', 'Kurang Bayar'),
(141, 'TR00141', 1, 24, 1, 12000, 15000, 0, '2025-05-22', '2025-05-22 14:59:02', '2025-05', 'Kurang Bayar'),
(142, 'TR00142', 1, 44, 2, 12500, 16500, 0, '2025-05-22', '2025-05-22 14:59:38', '2025-05', 'Kurang Bayar'),
(143, 'TR00143', 1, 67, 1, 7300, 9500, 0, '2025-05-22', '2025-05-22 14:59:53', '2025-05', 'Kurang Bayar'),
(144, 'TR00144', 1, 11, 1, 10000, 11000, 0, '2025-05-22', '2025-05-22 15:00:23', '2025-05', 'Kurang Bayar'),
(145, 'TR00145', 1, 22, 2, 22500, 24500, 0, '2025-05-22', '2025-05-22 15:01:41', '2025-05', 'Kurang Bayar'),
(146, 'TR00146', 1, 58, 2, 9000, 12500, 0, '2025-05-22', '2025-05-22 15:02:33', '2025-05', 'Kurang Bayar'),
(147, 'TR00147', 1, 35, 1, 2000, 4000, 0, '2025-05-22', '2025-05-22 15:02:48', '2025-05', 'Kurang Bayar'),
(148, 'TR00148', 1, 60, 1, 16000, 18500, 0, '2025-05-22', '2025-05-22 15:03:06', '2025-05', 'Kurang Bayar'),
(149, 'TR00149', 1, 44, 1, 9600, 13000, 0, '2025-05-22', '2025-05-22 15:03:32', '2025-05', 'Kurang Bayar'),
(150, 'TR00150', 1, 80, 1, 7500, 10000, 0, '2025-05-22', '2025-05-22 15:04:17', '2025-05', 'Kurang Bayar'),
(151, 'TR00151', 1, 63, 1, 3500, 6000, 0, '2025-05-22', '2025-05-22 15:10:41', '2025-05', 'Kurang Bayar'),
(152, 'TR00152', 1, 64, 3, 11500, 14500, 0, '2025-05-22', '2025-05-22 22:14:27', '2025-05', 'Kurang Bayar'),
(153, 'TR00153', 1, 14, 1, 4500, 8000, 0, '2025-05-22', '2025-05-22 22:14:46', '2025-05', 'Kurang Bayar'),
(154, 'TR00154', 1, 51, 3, 14500, 19000, 0, '2025-05-22', '2025-05-22 22:15:16', '2025-05', 'Kurang Bayar'),
(155, 'TR00155', 1, 61, 8, 28000, 35000, 0, '2025-05-22', '2025-05-22 22:16:13', '2025-05', 'Kurang Bayar'),
(156, 'TR00156', 1, 81, 5, 18500, 23000, 0, '2025-05-22', '2025-05-22 22:17:21', '2025-05', 'Kurang Bayar'),
(157, 'TR00157', 1, 36, 3, 10500, 13500, 0, '2025-05-22', '2025-05-22 22:17:46', '2025-05', 'Kurang Bayar'),
(158, 'TR00158', 1, 34, 5, 18000, 21000, 0, '2025-05-22', '2025-05-22 22:18:19', '2025-05', 'Kurang Bayar'),
(159, 'TR00159', 1, 32, 3, 11000, 13500, 0, '2025-05-22', '2025-05-22 22:18:57', '2025-05', 'Kurang Bayar'),
(160, 'TR00160', 1, 48, 3, 9000, 12000, 0, '2025-05-22', '2025-05-22 22:19:27', '2025-05', 'Kurang Bayar'),
(161, 'TR00161', 1, 62, 3, 15000, 17500, 0, '2025-05-22', '2025-05-22 22:20:00', '2025-05', 'Kurang Bayar'),
(162, 'TR00162', 1, 49, 3, 9000, 13000, 0, '2025-05-22', '2025-05-22 22:20:25', '2025-05', 'Kurang Bayar'),
(163, 'TR00163', 1, 82, 2, 7000, 8000, 0, '2025-05-22', '2025-05-22 22:21:39', '2025-05', 'Kurang Bayar'),
(164, 'TR00164', 1, 20, 1, 6600, 9000, 0, '2025-05-22', '2025-05-22 22:21:56', '2025-05', 'Kurang Bayar'),
(165, 'TR00165', 1, 34, 1, 2000, 4000, 0, '2025-05-22', '2025-05-22 22:22:16', '2025-05', 'Kurang Bayar'),
(166, 'TR00166', 1, 37, 2, 5500, 8000, 0, '2025-05-22', '2025-05-22 22:23:09', '2025-05', 'Kurang Bayar'),
(167, 'TR00167', 1, 23, 5, 19000, 27500, 0, '2025-05-22', '2025-05-22 22:24:05', '2025-05', 'Kurang Bayar'),
(168, 'TR00168', 1, 79, 2, 9000, 11000, 0, '2025-05-22', '2025-05-22 22:29:44', '2025-05', 'Kurang Bayar'),
(169, 'TR00169', 1, 83, 11, 66500, 73000, 73000, '2025-05-22', '2025-05-22 22:39:04', '2025-05', 'Lunas'),
(170, 'TR00170', 1, 84, 2, 7000, 10500, 0, '2025-05-22', '2025-05-22 22:40:13', '2025-05', 'Kurang Bayar'),
(171, 'TR00171', 1, 85, 1, 4500, 8000, 0, '2025-05-22', '2025-05-22 22:40:42', '2025-05', 'Kurang Bayar'),
(172, 'TR00172', 1, 86, 2, 5500, 10000, 0, '2025-05-22', '2025-05-22 22:41:23', '2025-05', 'Kurang Bayar'),
(173, 'TR00173', 1, 38, 5, 41000, 51500, 51000, '2025-05-22', '2025-05-22 22:42:34', '2025-05', 'Kurang Bayar'),
(174, 'TR00174', 1, 87, 3, 13500, 21000, 0, '2025-05-22', '2025-05-22 22:43:09', '2025-05', 'Kurang Bayar'),
(175, 'TR00175', 1, 24, 2, 7000, 8500, 0, '2025-05-22', '2025-05-22 22:43:33', '2025-05', 'Kurang Bayar'),
(176, 'TR00176', 1, 56, 1, 2000, 4000, 4000, '2025-05-22', '2025-05-22 22:43:49', '2025-05', 'Lunas'),
(177, 'TR00177', 1, 45, 3, 13500, 18000, 0, '2025-05-22', '2025-05-22 22:44:15', '2025-05', 'Kurang Bayar'),
(178, 'TR00178', 1, 65, 1, 8500, 12000, 0, '2025-05-22', '2025-05-22 22:44:33', '2025-05', 'Kurang Bayar'),
(179, 'TR00179', 1, 46, 1, 5500, 7500, 0, '2025-05-22', '2025-05-22 22:44:51', '2025-05', 'Kurang Bayar'),
(180, 'TR00180', 1, 74, 2, 7000, 8000, 0, '2025-05-22', '2025-05-22 22:45:04', '2025-05', 'Kurang Bayar'),
(181, 'TR00181', 1, 88, 1, 8000, 8500, 0, '2025-05-22', '2025-05-22 22:45:28', '2025-05', 'Kurang Bayar'),
(182, 'TR00182', 1, 89, 1, 9000, 10000, 0, '2025-05-22', '2025-05-22 22:46:11', '2025-05', 'Kurang Bayar'),
(183, 'TR00183', 1, 61, 8, 60000, 80500, 0, '2025-05-22', '2025-05-22 22:49:37', '2025-05', 'Kurang Bayar'),
(184, 'TR00184', 1, 76, 1, 2500, 4500, 0, '2025-05-22', '2025-05-22 22:50:33', '2025-05', 'Kurang Bayar'),
(185, 'TR00185', 1, 76, 1, 14600, 17000, 0, '2025-05-22', '2025-05-22 22:50:47', '2025-05', 'Kurang Bayar'),
(186, 'TR00186', 1, 44, 1, 3500, 6000, 0, '2025-05-22', '2025-05-22 22:51:01', '2025-05', 'Kurang Bayar'),
(187, 'TR00187', 1, 38, 8, 30600, 44500, 42500, '2025-05-22', '2025-05-22 22:51:51', '2025-05', 'Kurang Bayar'),
(188, 'TR00188', 1, 50, 1, 3500, 6000, 0, '2025-05-22', '2025-05-22 22:52:17', '2025-05', 'Kurang Bayar'),
(189, 'TR00189', 1, 22, 1, 2200, 3500, 0, '2025-05-22', '2025-05-22 22:52:34', '2025-05', 'Kurang Bayar'),
(190, 'TR00190', 1, 90, 3, 25200, 29500, 0, '2025-05-22', '2025-05-22 22:54:27', '2025-05', 'Kurang Bayar'),
(191, 'TR00191', 1, 14, 1, 4200, 6500, 0, '2025-05-22', '2025-05-22 22:54:46', '2025-05', 'Kurang Bayar'),
(192, 'TR00192', 1, 60, 2, 4200, 7500, 0, '2025-05-22', '2025-05-22 22:55:05', '2025-05', 'Kurang Bayar'),
(193, 'TR00193', 1, 91, 3, 14500, 22000, 0, '2025-05-22', '2025-05-22 22:55:41', '2025-05', 'Kurang Bayar'),
(194, 'TR00194', 1, 92, 1, 8000, 8500, 0, '2025-05-22', '2025-05-22 22:56:11', '2025-05', 'Kurang Bayar'),
(195, 'TR00195', 14, 24, 9, 68100, 90500, 0, '2025-05-23', '2025-05-23 19:12:37', '2025-05', 'Kurang Bayar'),
(196, 'TR00196', 14, 93, 1, 3500, 4000, 0, '2025-05-23', '2025-05-23 19:13:08', '2025-05', 'Kurang Bayar'),
(197, 'TR00197', 14, 11, 4, 14500, 18000, 0, '2025-05-23', '2025-05-23 19:13:36', '2025-05', 'Kurang Bayar'),
(198, 'TR00198', 14, 72, 1, 8300, 10500, 0, '2025-05-23', '2025-05-23 19:13:52', '2025-05', 'Kurang Bayar'),
(199, 'TR00199', 14, 82, 2, 7000, 8000, 0, '2025-05-23', '2025-05-23 19:14:07', '2025-05', 'Kurang Bayar'),
(200, 'TR00200', 14, 19, 2, 15500, 18500, 0, '2025-05-23', '2025-05-23 19:14:28', '2025-05', 'Kurang Bayar'),
(201, 'TR00201', 14, 63, 6, 32500, 38000, 0, '2025-05-23', '2025-05-23 19:15:07', '2025-05', 'Kurang Bayar'),
(202, 'TR00202', 14, 94, 4, 23000, 26500, 0, '2025-05-23', '2025-05-23 19:15:52', '2025-05', 'Kurang Bayar'),
(203, 'TR00203', 14, 17, 5, 23000, 29000, 0, '2025-05-23', '2025-05-23 19:17:09', '2025-05', 'Kurang Bayar'),
(204, 'TR00204', 14, 81, 5, 17000, 23000, 0, '2025-05-23', '2025-05-23 19:17:36', '2025-05', 'Kurang Bayar'),
(205, 'TR00205', 14, 33, 8, 30000, 39500, 0, '2025-05-23', '2025-05-23 19:19:03', '2025-05', 'Kurang Bayar'),
(206, 'TR00206', 14, 22, 4, 15000, 18500, 0, '2025-05-23', '2025-05-23 19:25:55', '2025-05', 'Kurang Bayar'),
(207, 'TR00207', 14, 27, 3, 9000, 12500, 0, '2025-05-23', '2025-05-23 19:26:20', '2025-05', 'Kurang Bayar'),
(208, 'TR00208', 14, 10, 2, 17500, 19500, 0, '2025-05-23', '2025-05-23 19:26:42', '2025-05', 'Kurang Bayar'),
(209, 'TR00209', 14, 11, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 19:26:59', '2025-05', 'Kurang Bayar'),
(210, 'TR00210', 14, 39, 4, 18000, 22000, 0, '2025-05-23', '2025-05-23 19:27:18', '2025-05', 'Kurang Bayar'),
(211, 'TR00211', 14, 51, 5, 45000, 49500, 0, '2025-05-23', '2025-05-23 19:54:55', '2025-05', 'Kurang Bayar'),
(212, 'TR00212', 14, 36, 1, 6000, 7000, 0, '2025-05-23', '2025-05-23 19:55:16', '2025-05', 'Kurang Bayar'),
(213, 'TR00213', 14, 75, 3, 21000, 26500, 0, '2025-05-23', '2025-05-23 19:55:40', '2025-05', 'Kurang Bayar'),
(214, 'TR00214', 14, 35, 3, 20000, 23000, 23000, '2025-05-23', '2025-05-23 19:55:59', '2025-05', 'Lunas'),
(215, 'TR00215', 14, 23, 5, 44000, 48500, 0, '2025-05-23', '2025-05-23 19:57:13', '2025-05', 'Kurang Bayar'),
(216, 'TR00216', 14, 29, 2, 6000, 7000, 7000, '2025-05-23', '2025-05-23 20:21:10', '2025-05', 'Lunas'),
(217, 'TR00217', 14, 80, 1, 3000, 3500, 0, '2025-05-23', '2025-05-23 20:21:51', '2025-05', 'Kurang Bayar'),
(218, 'TR00218', 14, 23, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 20:22:02', '2025-05', 'Kurang Bayar'),
(219, 'TR00219', 14, 89, 2, 11000, 13000, 0, '2025-05-23', '2025-05-23 20:22:24', '2025-05', 'Kurang Bayar'),
(220, 'TR00220', 14, 73, 2, 7500, 9000, 0, '2025-05-23', '2025-05-23 20:22:44', '2025-05', 'Kurang Bayar'),
(221, 'TR00221', 14, 34, 4, 29500, 36500, 0, '2025-05-23', '2025-05-23 20:23:09', '2025-05', 'Kurang Bayar'),
(222, 'TR00222', 14, 40, 2, 18000, 20000, 0, '2025-05-23', '2025-05-23 20:23:30', '2025-05', 'Kurang Bayar'),
(223, 'TR00223', 14, 15, 3, 11500, 13500, 0, '2025-05-23', '2025-05-23 20:23:56', '2025-05', 'Kurang Bayar'),
(224, 'TR00224', 14, 49, 2, 22000, 25000, 0, '2025-05-23', '2025-05-23 20:24:15', '2025-05', 'Kurang Bayar'),
(225, 'TR00225', 14, 35, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 20:24:27', '2025-05', 'Kurang Bayar'),
(226, 'TR00226', 14, 36, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 20:24:40', '2025-05', 'Kurang Bayar'),
(227, 'TR00227', 14, 43, 29, 116000, 145000, 0, '2025-05-23', '2025-05-23 20:24:58', '2025-05', 'Kurang Bayar'),
(228, 'TR00228', 14, 79, 2, 9000, 11000, 0, '2025-05-23', '2025-05-23 20:25:10', '2025-05', 'Kurang Bayar'),
(229, 'TR00229', 14, 52, 4, 21500, 26500, 0, '2025-05-23', '2025-05-23 20:25:41', '2025-05', 'Kurang Bayar'),
(230, 'TR00230', 14, 97, 5, 20000, 25000, 0, '2025-05-23', '2025-05-23 20:26:13', '2025-05', 'Kurang Bayar'),
(231, 'TR00231', 14, 24, 3, 14500, 17500, 0, '2025-05-23', '2025-05-23 20:26:43', '2025-05', 'Kurang Bayar'),
(232, 'TR00232', 14, 98, 5, 18000, 24000, 0, '2025-05-23', '2025-05-23 20:28:15', '2025-05', 'Kurang Bayar'),
(233, 'TR00233', 14, 51, 2, 18000, 20000, 0, '2025-05-23', '2025-05-23 20:28:29', '2025-05', 'Kurang Bayar'),
(234, 'TR00234', 14, 99, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 20:29:33', '2025-05', 'Kurang Bayar'),
(235, 'TR00235', 14, 22, 2, 26500, 30000, 0, '2025-05-23', '2025-05-23 20:29:56', '2025-05', 'Kurang Bayar'),
(236, 'TR00236', 14, 45, 4, 18500, 22000, 0, '2025-05-23', '2025-05-23 20:30:18', '2025-05', 'Kurang Bayar'),
(237, 'TR00237', 14, 100, 3, 15000, 18000, 0, '2025-05-23', '2025-05-23 20:31:05', '2025-05', 'Kurang Bayar'),
(238, 'TR00238', 14, 36, 2, 18500, 22000, 0, '2025-05-23', '2025-05-23 20:31:35', '2025-05', 'Kurang Bayar'),
(239, 'TR00239', 14, 32, 1, 13000, 14000, 0, '2025-05-23', '2025-05-23 20:31:55', '2025-05', 'Kurang Bayar'),
(240, 'TR00240', 14, 34, 4, 26300, 34000, 0, '2025-05-23', '2025-05-23 20:32:27', '2025-05', 'Kurang Bayar'),
(241, 'TR00241', 14, 101, 2, 17500, 19500, 0, '2025-05-23', '2025-05-23 20:33:02', '2025-05', 'Kurang Bayar'),
(242, 'TR00242', 14, 60, 1, 13000, 14000, 0, '2025-05-23', '2025-05-23 20:33:32', '2025-05', 'Kurang Bayar'),
(243, 'TR00243', 14, 60, 1, 20000, 21000, 0, '2025-05-23', '2025-05-23 20:33:48', '2025-05', 'Kurang Bayar'),
(244, 'TR00244', 14, 19, 1, 2800, 4000, 0, '2025-05-23', '2025-05-23 20:34:06', '2025-05', 'Kurang Bayar'),
(245, 'TR00245', 14, 56, 4, 18000, 27000, 26000, '2025-05-23', '2025-05-23 20:34:59', '2025-05', 'Kurang Bayar'),
(246, 'TR00246', 14, 32, 2, 11000, 14000, 0, '2025-05-23', '2025-05-23 20:35:23', '2025-05', 'Kurang Bayar'),
(247, 'TR00247', 14, 60, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 20:35:35', '2025-05', 'Kurang Bayar'),
(248, 'TR00248', 14, 102, 2, 8500, 10500, 0, '2025-05-23', '2025-05-23 20:36:08', '2025-05', 'Kurang Bayar'),
(249, 'TR00249', 14, 103, 3, 20000, 24000, 22500, '2025-05-23', '2025-05-23 20:36:56', '2025-05', 'Kurang Bayar'),
(250, 'TR00250', 14, 60, 1, 6500, 9000, 0, '2025-05-23', '2025-05-23 20:38:39', '2025-05', 'Kurang Bayar'),
(251, 'TR00251', 14, 38, 3, 21500, 28500, 29000, '2025-05-23', '2025-05-23 20:39:35', '2025-05', 'Lunas'),
(252, 'TR00252', 14, 39, 1, 2200, 3500, 0, '2025-05-23', '2025-05-23 20:39:51', '2025-05', 'Kurang Bayar'),
(253, 'TR00253', 14, 34, 1, 4500, 5500, 0, '2025-05-23', '2025-05-23 20:40:08', '2025-05', 'Kurang Bayar'),
(254, 'TR00254', 14, 68, 1, 6500, 9000, 0, '2025-05-23', '2025-05-23 20:40:49', '2025-05', 'Kurang Bayar'),
(255, 'TR00255', 14, 70, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 20:41:05', '2025-05', 'Kurang Bayar'),
(256, 'TR00256', 14, 104, 1, 14000, 15000, 0, '2025-05-23', '2025-05-23 20:41:39', '2025-05', 'Kurang Bayar'),
(257, 'TR00257', 14, 105, 2, 7000, 8000, 0, '2025-05-23', '2025-05-23 20:42:12', '2025-05', 'Kurang Bayar'),
(258, 'TR00258', 14, 64, 5, 23000, 27000, 0, '2025-05-23', '2025-05-23 20:42:48', '2025-05', 'Kurang Bayar'),
(259, 'TR00259', 14, 74, 2, 12500, 14500, 0, '2025-05-23', '2025-05-23 20:43:21', '2025-05', 'Kurang Bayar'),
(260, 'TR00260', 14, 29, 6, 21000, 24000, 0, '2025-05-23', '2025-05-23 20:43:39', '2025-05', 'Kurang Bayar'),
(261, 'TR00261', 14, 60, 2, 10500, 14000, 0, '2025-05-23', '2025-05-23 20:44:10', '2025-05', 'Kurang Bayar'),
(262, 'TR00262', 14, 106, 2, 7000, 9000, 0, '2025-05-23', '2025-05-23 20:45:15', '2025-05', 'Kurang Bayar'),
(263, 'TR00263', 14, 107, 1, 3500, 4000, 0, '2025-05-23', '2025-05-23 20:45:52', '2025-05', 'Kurang Bayar'),
(264, 'TR00264', 14, 57, 1, 9000, 10000, 0, '2025-05-23', '2025-05-23 20:46:04', '2025-05', 'Kurang Bayar'),
(265, 'TR00265', 14, 58, 4, 14000, 18000, 0, '2025-05-23', '2025-05-23 20:50:14', '2025-05', 'Kurang Bayar'),
(266, 'TR00266', 14, 22, 3, 22000, 25000, 0, '2025-05-23', '2025-05-23 20:50:43', '2025-05', 'Kurang Bayar'),
(267, 'TR00267', 14, 51, 3, 14500, 19000, 0, '2025-05-23', '2025-05-23 20:51:05', '2025-05', 'Kurang Bayar'),
(268, 'TR00268', 14, 39, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 20:51:18', '2025-05', 'Kurang Bayar'),
(269, 'TR00269', 14, 79, 2, 9000, 11000, 0, '2025-05-23', '2025-05-23 20:51:32', '2025-05', 'Kurang Bayar'),
(270, 'TR00270', 14, 51, 1, 8000, 8500, 0, '2025-05-23', '2025-05-23 20:52:46', '2025-05', 'Kurang Bayar'),
(271, 'TR00271', 14, 16, 2, 7000, 9000, 0, '2025-05-23', '2025-05-23 20:53:01', '2025-05', 'Kurang Bayar'),
(272, 'TR00272', 14, 38, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 20:53:12', '2025-05', 'Kurang Bayar'),
(273, 'TR00273', 14, 108, 1, 4500, 8000, 0, '2025-05-23', '2025-05-23 20:53:38', '2025-05', 'Kurang Bayar'),
(274, 'TR00274', 14, 14, 2, 7000, 8500, 0, '2025-05-23', '2025-05-23 20:53:59', '2025-05', 'Kurang Bayar'),
(275, 'TR00275', 14, 45, 1, 4200, 6500, 0, '2025-05-23', '2025-05-23 20:54:14', '2025-05', 'Kurang Bayar'),
(276, 'TR00276', 14, 20, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 20:54:37', '2025-05', 'Kurang Bayar'),
(277, 'TR00277', 14, 26, 2, 7000, 8500, 0, '2025-05-23', '2025-05-23 20:55:12', '2025-05', 'Kurang Bayar'),
(278, 'TR00278', 14, 109, 2, 8700, 12500, 0, '2025-05-23', '2025-05-23 20:56:05', '2025-05', 'Kurang Bayar'),
(280, 'TR00279', 14, 88, 2, 13500, 16500, 0, '2025-05-23', '2025-05-23 20:57:17', '2025-05', 'Kurang Bayar'),
(281, 'TR00281', 14, 110, 1, 8000, 10000, 0, '2025-05-23', '2025-05-23 20:57:45', '2025-05', 'Kurang Bayar'),
(282, 'TR00282', 14, 72, 3, 6500, 9500, 0, '2025-05-23', '2025-05-23 21:00:09', '2025-05', 'Kurang Bayar'),
(283, 'TR00283', 14, 50, 2, 14500, 19000, 0, '2025-05-23', '2025-05-23 21:00:31', '2025-05', 'Kurang Bayar'),
(284, 'TR00284', 14, 32, 2, 8600, 13000, 0, '2025-05-23', '2025-05-23 21:00:54', '2025-05', 'Kurang Bayar'),
(285, 'TR00285', 14, 47, 2, 7000, 8000, 0, '2025-05-23', '2025-05-23 21:01:10', '2025-05', 'Kurang Bayar'),
(286, 'TR00286', 14, 60, 2, 4200, 7500, 0, '2025-05-23', '2025-05-23 21:01:33', '2025-05', 'Kurang Bayar'),
(287, 'TR00287', 14, 44, 1, 2200, 3500, 0, '2025-05-23', '2025-05-23 21:08:21', '2025-05', 'Kurang Bayar'),
(288, 'TR00288', 14, 46, 2, 17500, 22000, 0, '2025-05-23', '2025-05-23 21:08:45', '2025-05', 'Kurang Bayar'),
(289, 'TR00289', 14, 22, 1, 5000, 6000, 0, '2025-05-23', '2025-05-23 21:08:57', '2025-05', 'Kurang Bayar'),
(290, 'TR00290', 14, 56, 1, 4500, 8000, 8000, '2025-05-23', '2025-05-23 21:09:13', '2025-05', 'Lunas'),
(291, 'TR00291', 14, 72, 2, 11300, 14000, 0, '2025-05-23', '2025-05-23 21:09:39', '2025-05', 'Kurang Bayar'),
(292, 'TR00292', 14, 83, 8, 64000, 68000, 68000, '2025-05-23', '2025-05-23 21:10:06', '2025-05', 'Lunas'),
(293, 'TR00293', 14, 44, 2, 7000, 8000, 0, '2025-05-23', '2025-05-23 21:10:23', '2025-05', 'Kurang Bayar'),
(294, 'TR00294', 14, 32, 3, 9500, 11500, 0, '2025-05-23', '2025-05-23 21:11:10', '2025-05', 'Kurang Bayar'),
(295, 'TR00295', 14, 23, 2, 7000, 10500, 0, '2025-05-23', '2025-05-23 21:11:29', '2025-05', 'Kurang Bayar'),
(296, 'TR00296', 14, 84, 7, 27200, 34500, 0, '2025-05-23', '2025-05-23 21:12:05', '2025-05', 'Kurang Bayar'),
(297, 'TR00297', 14, 36, 2, 7500, 9500, 0, '2025-05-23', '2025-05-23 21:12:33', '2025-05', 'Kurang Bayar'),
(298, 'TR00298', 14, 76, 3, 11000, 15000, 0, '2025-05-23', '2025-05-23 21:13:01', '2025-05', 'Kurang Bayar'),
(299, 'TR00299', 14, 27, 3, 15800, 20000, 0, '2025-05-23', '2025-05-23 21:13:28', '2025-05', 'Kurang Bayar'),
(300, 'TR00300', 14, 26, 3, 13500, 18000, 0, '2025-05-23', '2025-05-23 21:13:47', '2025-05', 'Kurang Bayar'),
(301, 'TR00301', 14, 111, 2, 8000, 12000, 0, '2025-05-23', '2025-05-23 21:14:29', '2025-05', 'Kurang Bayar'),
(302, 'TR00302', 14, 24, 1, 3500, 4500, 0, '2025-05-23', '2025-05-23 21:14:48', '2025-05', 'Kurang Bayar'),
(303, 'TR00303', 14, 44, 1, 4500, 8000, 0, '2025-05-23', '2025-05-23 21:15:02', '2025-05', 'Kurang Bayar'),
(304, 'TR00304', 14, 90, 5, 17500, 21500, 0, '2025-05-23', '2025-05-23 21:15:40', '2025-05', 'Kurang Bayar'),
(305, 'TR00305', 14, 93, 1, 3500, 4000, 0, '2025-05-23', '2025-05-23 22:01:19', '2025-05', 'Kurang Bayar'),
(306, 'TR00306', 14, 77, 1, 23000, 24000, 0, '2025-05-23', '2025-05-23 22:01:36', '2025-05', 'Kurang Bayar'),
(307, 'TR00307', 14, 19, 1, 7500, 10000, 0, '2025-05-23', '2025-05-23 22:01:57', '2025-05', 'Kurang Bayar'),
(308, 'TR00308', 14, 21, 2, 7000, 8000, 0, '2025-05-23', '2025-05-23 22:02:18', '2025-05', 'Kurang Bayar'),
(309, 'TR00309', 14, 44, 2, 7000, 8000, 0, '2025-05-23', '2025-05-23 22:02:41', '2025-05', 'Kurang Bayar'),
(310, 'TR00310', 14, 72, 2, 31300, 34500, 0, '2025-05-23', '2025-05-23 22:03:03', '2025-05', 'Kurang Bayar'),
(311, 'TR00311', 14, 23, 3, 14500, 18000, 0, '2025-05-23', '2025-05-23 22:03:38', '2025-05', 'Kurang Bayar'),
(312, 'TR00312', 14, 21, 2, 5500, 8000, 0, '2025-05-23', '2025-05-23 22:04:03', '2025-05', 'Kurang Bayar'),
(313, 'TR00313', 14, 33, 4, 25000, 28000, 0, '2025-05-23', '2025-05-23 22:04:34', '2025-05', 'Kurang Bayar'),
(314, 'TR00314', 14, 50, 3, 11500, 16000, 0, '2025-05-23', '2025-05-23 22:04:57', '2025-05', 'Kurang Bayar'),
(315, 'TR00315', 14, 60, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 22:05:11', '2025-05', 'Kurang Bayar'),
(316, 'TR00316', 14, 31, 3, 11000, 15000, 14500, '2025-05-23', '2025-05-23 22:06:14', '2025-05', 'Kurang Bayar'),
(317, 'TR00317', 14, 60, 1, 3500, 4000, 0, '2025-05-23', '2025-05-23 22:06:43', '2025-05', 'Kurang Bayar'),
(318, 'TR00318', 14, 58, 4, 16000, 20000, 0, '2025-05-23', '2025-05-23 22:06:59', '2025-05', 'Kurang Bayar'),
(319, 'TR00319', 14, 14, 1, 6500, 9000, 0, '2025-05-23', '2025-05-23 22:07:13', '2025-05', 'Kurang Bayar'),
(320, 'TR00320', 14, 30, 11, 40000, 48500, 0, '2025-05-23', '2025-05-23 22:08:19', '2025-05', 'Kurang Bayar'),
(321, 'TR00321', 14, 62, 4, 16000, 20000, 0, '2025-05-23', '2025-05-23 22:08:32', '2025-05', 'Kurang Bayar'),
(322, 'TR00322', 14, 39, 3, 10000, 14000, 0, '2025-05-23', '2025-05-23 22:08:51', '2025-05', 'Kurang Bayar'),
(323, 'TR00323', 14, 32, 6, 30500, 37000, 37000, '2025-05-23', '2025-05-23 22:09:24', '2025-05', 'Lunas'),
(324, 'TR00324', 14, 79, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 22:09:39', '2025-05', 'Kurang Bayar'),
(325, 'TR00325', 14, 74, 1, 10000, 12000, 0, '2025-05-23', '2025-05-23 22:09:57', '2025-05', 'Kurang Bayar'),
(326, 'TR00326', 14, 65, 1, 4000, 5000, 0, '2025-05-23', '2025-05-23 22:10:09', '2025-05', 'Kurang Bayar'),
(327, 'TR00327', 14, 14, 2, 8500, 13000, 0, '2025-05-23', '2025-05-23 22:10:28', '2025-05', 'Kurang Bayar'),
(328, 'TR00328', 14, 92, 4, 16000, 20000, 0, '2025-05-23', '2025-05-23 22:10:44', '2025-05', 'Kurang Bayar'),
(329, 'TR00329', 14, 112, 2, 7500, 9000, 9000, '2025-05-23', '2025-05-23 22:11:38', '2025-05', 'Lunas'),
(330, 'TR00330', 14, 19, 5, 24000, 28500, 0, '2025-05-23', '2025-05-23 22:12:31', '2025-05', 'Kurang Bayar'),
(331, 'TR00331', 14, 34, 3, 12000, 15000, 0, '2025-05-23', '2025-05-23 22:12:44', '2025-05', 'Kurang Bayar'),
(332, 'TR00332', 14, 97, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 22:13:01', '2025-05', 'Kurang Bayar'),
(333, 'TR00333', 14, 26, 3, 11500, 14000, 0, '2025-05-23', '2025-05-23 22:13:20', '2025-05', 'Kurang Bayar'),
(334, 'TR00334', 14, 36, 5, 20000, 24000, 0, '2025-05-23', '2025-05-23 22:13:46', '2025-05', 'Kurang Bayar'),
(335, 'TR00335', 14, 51, 2, 7000, 8500, 0, '2025-05-23', '2025-05-23 22:14:15', '2025-05', 'Kurang Bayar'),
(336, 'TR00336', 14, 36, 1, 16000, 18500, 0, '2025-05-23', '2025-05-23 22:14:29', '2025-05', 'Kurang Bayar'),
(337, 'TR00337', 14, 111, 2, 7500, 9000, 0, '2025-05-23', '2025-05-23 22:14:45', '2025-05', 'Kurang Bayar'),
(338, 'TR00338', 14, 35, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 22:14:59', '2025-05', 'Kurang Bayar'),
(339, 'TR00339', 14, 103, 1, 4000, 5000, 5000, '2025-05-23', '2025-05-23 22:15:09', '2025-05', 'Lunas'),
(340, 'TR00340', 14, 75, 1, 8000, 8500, 0, '2025-05-23', '2025-05-23 22:15:20', '2025-05', 'Kurang Bayar'),
(341, 'TR00341', 14, 113, 1, 6500, 9000, 0, '2025-05-23', '2025-05-23 22:16:18', '2025-05', 'Kurang Bayar'),
(342, 'TR00342', 14, 114, 3, 16000, 18500, 18500, '2025-05-23', '2025-05-23 22:17:23', '2025-05', 'Lunas'),
(343, 'TR00343', 14, 113, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 22:18:00', '2025-05', 'Kurang Bayar'),
(344, 'TR00344', 14, 15, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 22:18:13', '2025-05', 'Kurang Bayar'),
(345, 'TR00345', 14, 46, 1, 13000, 14000, 0, '2025-05-23', '2025-05-23 22:18:35', '2025-05', 'Kurang Bayar'),
(346, 'TR00346', 14, 115, 1, 11500, 14000, 0, '2025-05-23', '2025-05-23 22:19:06', '2025-05', 'Kurang Bayar'),
(347, 'TR00347', 14, 116, 1, 6600, 9000, 0, '2025-05-23', '2025-05-23 22:19:45', '2025-05', 'Kurang Bayar'),
(348, 'TR00348', 14, 117, 1, 9000, 10000, 10000, '2025-05-23', '2025-05-23 22:20:21', '2025-05', 'Lunas'),
(349, 'TR00349', 14, 44, 3, 22200, 27000, 0, '2025-05-23', '2025-05-23 22:21:04', '2025-05', 'Kurang Bayar'),
(350, 'TR00350', 14, 5, 2, 11000, 13000, 0, '2025-05-23', '2025-05-23 22:21:28', '2025-05', 'Kurang Bayar'),
(351, 'TR00351', 14, 34, 3, 7900, 13000, 0, '2025-05-23', '2025-05-23 22:22:01', '2025-05', 'Kurang Bayar'),
(352, 'TR00352', 14, 118, 1, 15000, 16000, 0, '2025-05-23', '2025-05-23 22:27:08', '2025-05', 'Kurang Bayar'),
(353, 'TR00353', 14, 5, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 22:27:23', '2025-05', 'Kurang Bayar'),
(354, 'TR00354', 14, 87, 1, 3500, 6000, 0, '2025-05-23', '2025-05-23 22:27:42', '2025-05', 'Kurang Bayar'),
(355, 'TR00355', 14, 52, 2, 12500, 17000, 0, '2025-05-23', '2025-05-23 22:28:05', '2025-05', 'Kurang Bayar'),
(356, 'TR00356', 14, 45, 1, 16000, 18500, 0, '2025-05-23', '2025-05-23 22:28:16', '2025-05', 'Kurang Bayar'),
(357, 'TR00357', 14, 23, 2, 12000, 15000, 0, '2025-05-23', '2025-05-23 22:28:39', '2025-05', 'Kurang Bayar'),
(358, 'TR00358', 14, 22, 1, 3500, 6000, 0, '2025-05-23', '2025-05-23 22:28:52', '2025-05', 'Kurang Bayar'),
(359, 'TR00359', 14, 89, 1, 8000, 8500, 0, '2025-05-23', '2025-05-23 22:29:04', '2025-05', 'Kurang Bayar'),
(360, 'TR00360', 14, 119, 6, 33000, 44000, 0, '2025-05-23', '2025-05-23 22:29:55', '2025-05', 'Kurang Bayar'),
(361, 'TR00361', 14, 109, 2, 15000, 20000, 0, '2025-05-23', '2025-05-23 22:30:15', '2025-05', 'Kurang Bayar'),
(362, 'TR00362', 14, 52, 2, 21500, 26500, 0, '2025-05-23', '2025-05-23 22:30:40', '2025-05', 'Kurang Bayar'),
(363, 'TR00363', 14, 19, 5, 50000, 60000, 0, '2025-05-23', '2025-05-23 22:32:05', '2025-05', 'Kurang Bayar'),
(364, 'TR00364', 14, 0, 4, 18800, 25000, 24500, '2025-05-23', '2025-05-23 22:35:50', '2025-05', 'Kurang Bayar'),
(365, 'TR00365', 14, 80, 1, 5300, 7500, 0, '2025-05-23', '2025-05-23 22:36:06', '2025-05', 'Kurang Bayar'),
(366, 'TR00366', 14, 120, 2, 17500, 22000, 0, '2025-05-23', '2025-05-23 22:36:44', '2025-05', 'Kurang Bayar'),
(367, 'TR00367', 14, 76, 2, 9200, 14000, 0, '2025-05-23', '2025-05-23 22:37:04', '2025-05', 'Kurang Bayar'),
(368, 'TR00368', 14, 121, 1, 4500, 8000, 0, '2025-05-23', '2025-05-23 22:37:37', '2025-05', 'Kurang Bayar'),
(369, 'TR00369', 14, 32, 2, 19500, 22500, 0, '2025-05-23', '2025-05-23 22:37:57', '2025-05', 'Kurang Bayar'),
(370, 'TR00370', 14, 15, 1, 8000, 8500, 0, '2025-05-23', '2025-05-23 22:38:09', '2025-05', 'Kurang Bayar'),
(371, 'TR00371', 14, 34, 1, 5500, 7500, 0, '2025-05-23', '2025-05-23 22:38:23', '2025-05', 'Kurang Bayar'),
(372, 'TR00372', 14, 28, 1, 23000, 24000, 0, '2025-05-23', '2025-05-23 22:38:38', '2025-05', 'Kurang Bayar'),
(373, 'TR00373', 14, 7, 1, 23000, 24000, 0, '2025-05-23', '2025-05-23 22:38:51', '2025-05', 'Kurang Bayar'),
(374, 'TR00374', 14, 101, 1, 4000, 5000, 5000, '2025-05-23', '2025-05-23 22:39:10', '2025-05', 'Lunas'),
(375, 'TR00375', 14, 122, 1, 5500, 8000, 0, '2025-05-23', '2025-05-23 22:39:47', '2025-05', 'Kurang Bayar'),
(376, 'TR00376', 14, 20, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 22:40:02', '2025-05', 'Kurang Bayar'),
(377, 'TR00377', 14, 14, 2, 20000, 24000, 0, '2025-05-23', '2025-05-23 22:40:22', '2025-05', 'Kurang Bayar'),
(378, 'TR00378', 14, 107, 3, 10500, 12000, 0, '2025-05-23', '2025-05-23 22:41:00', '2025-05', 'Kurang Bayar'),
(379, 'TR00379', 14, 106, 5, 17500, 21500, 0, '2025-05-23', '2025-05-23 22:41:37', '2025-05', 'Kurang Bayar'),
(380, 'TR00380', 14, 84, 6, 20000, 25000, 0, '2025-05-23', '2025-05-23 22:42:16', '2025-05', 'Kurang Bayar'),
(381, 'TR00381', 14, 90, 8, 26500, 33000, 0, '2025-05-23', '2025-05-23 22:43:11', '2025-05', 'Kurang Bayar'),
(382, 'TR00382', 14, 84, 3, 10500, 13500, 0, '2025-05-23', '2025-05-23 22:43:26', '2025-05', 'Kurang Bayar'),
(383, 'TR00383', 14, 90, 2, 7000, 8500, 0, '2025-05-23', '2025-05-23 22:43:46', '2025-05', 'Kurang Bayar'),
(384, 'TR00384', 14, 61, 7, 24500, 31000, 0, '2025-05-23', '2025-05-23 22:45:00', '2025-05', 'Kurang Bayar'),
(385, 'TR00385', 14, 50, 1, 4500, 8000, 0, '2025-05-23', '2025-05-23 22:45:15', '2025-05', 'Kurang Bayar'),
(386, 'TR00386', 14, 51, 2, 7000, 9000, 0, '2025-05-23', '2025-05-23 22:45:31', '2025-05', 'Kurang Bayar'),
(387, 'TR00387', 14, 51, 1, 6500, 9000, 0, '2025-05-23', '2025-05-23 22:45:53', '2025-05', 'Kurang Bayar'),
(388, 'TR00388', 14, 23, 4, 16500, 22500, 0, '2025-05-23', '2025-05-23 22:46:20', '2025-05', 'Kurang Bayar'),
(389, 'TR00389', 14, 60, 1, 15000, 16000, 0, '2025-05-23', '2025-05-23 22:46:38', '2025-05', 'Kurang Bayar'),
(390, 'TR00390', 14, 39, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 22:46:50', '2025-05', 'Kurang Bayar'),
(391, 'TR00391', 14, 69, 1, 4500, 8000, 0, '2025-05-23', '2025-05-23 22:47:02', '2025-05', 'Kurang Bayar'),
(392, 'TR00392', 14, 22, 1, 6600, 9000, 0, '2025-05-23', '2025-05-23 22:47:12', '2025-05', 'Kurang Bayar'),
(393, 'TR00393', 14, 101, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 22:47:26', '2025-05', 'Kurang Bayar'),
(394, 'TR00394', 14, 97, 2, 8000, 10000, 0, '2025-05-23', '2025-05-23 22:47:40', '2025-05', 'Kurang Bayar'),
(395, 'TR00395', 14, 58, 2, 7000, 9000, 0, '2025-05-23', '2025-05-23 22:47:58', '2025-05', 'Kurang Bayar'),
(396, 'TR00396', 14, 35, 2, 7000, 8000, 0, '2025-05-23', '2025-05-23 22:48:26', '2025-05', 'Kurang Bayar'),
(397, 'TR00397', 14, 57, 3, 10500, 14500, 0, '2025-05-23', '2025-05-23 22:48:49', '2025-05', 'Kurang Bayar'),
(398, 'TR00398', 14, 113, 3, 10500, 12000, 0, '2025-05-23', '2025-05-23 22:49:05', '2025-05', 'Kurang Bayar'),
(399, 'TR00399', 14, 68, 3, 14000, 18500, 0, '2025-05-23', '2025-05-23 22:49:29', '2025-05', 'Kurang Bayar'),
(400, 'TR00400', 14, 95, 1, 3500, 4000, 0, '2025-05-23', '2025-05-23 22:49:45', '2025-05', 'Kurang Bayar'),
(401, 'TR00401', 14, 65, 1, 9000, 10000, 0, '2025-05-23', '2025-05-23 22:50:03', '2025-05', 'Kurang Bayar'),
(402, 'TR00402', 14, 32, 1, 9000, 10000, 0, '2025-05-23', '2025-05-23 22:50:25', '2025-05', 'Kurang Bayar'),
(403, 'TR00403', 14, 123, 1, 12500, 15000, 0, '2025-05-23', '2025-05-23 22:51:21', '2025-05', 'Kurang Bayar'),
(404, 'TR00404', 14, 65, 1, 3500, 4000, 0, '2025-05-23', '2025-05-23 22:51:38', '2025-05', 'Kurang Bayar'),
(405, 'TR00405', 14, 26, 1, 9000, 10000, 0, '2025-05-23', '2025-05-23 22:51:59', '2025-05', 'Kurang Bayar'),
(406, 'TR00406', 14, 49, 2, 10100, 13500, 0, '2025-05-23', '2025-05-23 22:52:19', '2025-05', 'Kurang Bayar'),
(407, 'TR00407', 14, 26, 2, 13500, 18000, 0, '2025-05-23', '2025-05-23 22:52:44', '2025-05', 'Kurang Bayar'),
(408, 'TR00408', 14, 111, 1, 7500, 10000, 0, '2025-05-23', '2025-05-23 22:52:58', '2025-05', 'Kurang Bayar'),
(409, 'TR00409', 14, 105, 1, 2000, 4000, 0, '2025-05-23', '2025-05-23 22:53:11', '2025-05', 'Kurang Bayar'),
(410, 'TR00410', 14, 63, 1, 6500, 9000, 0, '2025-05-23', '2025-05-23 22:53:26', '2025-05', 'Kurang Bayar'),
(411, 'TR00411', 14, 60, 1, 4500, 8000, 0, '2025-05-23', '2025-05-23 22:53:36', '2025-05', 'Kurang Bayar'),
(412, 'TR00412', 14, 34, 2, 13600, 18000, 18000, '2025-05-23', '2025-05-23 22:53:55', '2025-05', 'Lunas');

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
(13, 'TR0011', 11, 'BR0011', NULL, NULL, 'Milo', 5000, 7000, 1, 0, 7000, '2025-05-09', '2025-05', 1, '2025-05-09 19:17:21'),
(14, 'TR0012', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 2, 0, 20000, '2025-05-20', '2025-05', 1, '2025-05-20 18:57:16'),
(15, 'TR0012', 181, 'BR00181', NULL, NULL, 'Larutan', 6200, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 18:57:16'),
(16, 'TR0012', 178, 'BR167', NULL, NULL, 'Walens Soes Nissin 100 g', 10000, 12500, 2, 0, 25000, '2025-05-20', '2025-05', 1, '2025-05-20 18:57:16'),
(17, 'TR0012', 144, 'BR133', NULL, NULL, 'Piattos 68 g', 9500, 11500, 2, 0, 23000, '2025-05-20', '2025-05', 1, '2025-05-20 18:57:16'),
(18, 'TR0012', 88, 'BR077', NULL, NULL, 'Garuda Atom All Varian 100 g', 9000, 11000, 1, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 18:57:16'),
(19, 'TR0012', 89, 'BR078', NULL, NULL, 'Garuda Kacang 60 g', 5300, 7500, 1, 0, 7500, '2025-05-20', '2025-05', 1, '2025-05-20 18:57:16'),
(20, 'TR0012', 155, 'BR144', NULL, NULL, 'Rebo Kuaci', 14600, 17000, 1, 0, 17000, '2025-05-20', '2025-05', 1, '2025-05-20 18:57:16'),
(21, 'TR0013', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 2, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 18:59:49'),
(22, 'TR0013', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap Botok', 7000, 8000, 2, 0, 16000, '2025-05-20', '2025-05', 1, '2025-05-20 18:59:49'),
(23, 'TR0014', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap Botok', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:00:35'),
(24, 'TR0015', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap Botok', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:05:14'),
(25, 'TR0015', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan ', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:05:14'),
(26, 'TR0015', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:05:14'),
(27, 'TR0016', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan ', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:06:40'),
(28, 'TR0016', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:06:40'),
(29, 'TR0017', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:07:19'),
(30, 'TR0018', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:08:11'),
(31, 'TR0019', 47, 'BR036', NULL, NULL, 'Crystalin Besar 1,5 L', 4200, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:09:47'),
(32, 'TR0019', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:09:47'),
(33, 'TR0019', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan ', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:09:47'),
(34, 'TR0020', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-20', '2025-05', 1, '2025-05-20 19:11:46'),
(35, 'TR0021', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 3, 0, 12000, '2025-05-20', '2025-05', 1, '2025-05-20 19:12:42'),
(36, 'TR0022', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:13:17'),
(37, 'TR0023', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:13:57'),
(38, 'TR0024', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:15:01'),
(39, 'TR0024', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:15:01'),
(40, 'TR0025', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:15:46'),
(41, 'TR0025', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:15:46'),
(42, 'TR0026', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:17:25'),
(43, 'TR0026', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-20', '2025-05', 1, '2025-05-20 19:17:25'),
(44, 'TR0027', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:18:47'),
(45, 'TR0027', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:18:47'),
(46, 'TR0027', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-20', '2025-05', 1, '2025-05-20 19:18:47'),
(47, 'TR0028', 16, 'BR005', NULL, NULL, 'Ade Cookies Matcha Red Velvet', 10500, 11500, 1, 0, 11500, '2025-05-20', '2025-05', 1, '2025-05-20 19:21:43'),
(48, 'TR0028', 60, 'BR049', NULL, NULL, 'Defy Tape Uli', 23000, 24000, 1, 0, 24000, '2025-05-20', '2025-05', 1, '2025-05-20 19:21:43'),
(49, 'TR0028', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-20', '2025-05', 1, '2025-05-20 19:21:43'),
(50, 'TR0029', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:24:33'),
(51, 'TR0029', 38, 'BR027', NULL, NULL, 'Cimory Bites Yoghurt 120 g', 8500, 12000, 1, 0, 12000, '2025-05-20', '2025-05', 1, '2025-05-20 19:24:33'),
(52, 'TR0029', 182, 'BR00182', NULL, NULL, 'Ketan Uli Serundeng', 10000, 11000, 1, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 19:24:33'),
(53, 'TR0029', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:24:33'),
(54, 'TR0029', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-20', '2025-05', 1, '2025-05-20 19:24:33'),
(55, 'TR0030', 182, 'BR00182', NULL, NULL, 'Ketan Uli Serundeng', 10000, 11000, 1, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 19:26:11'),
(56, 'TR0030', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 5, 0, 22500, '2025-05-20', '2025-05', 1, '2025-05-20 19:26:11'),
(57, 'TR0030', 96, 'BR085', NULL, NULL, 'Good Day Botol 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:26:11'),
(58, 'TR0030', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:26:11'),
(60, 'TR0032', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:28:24'),
(61, 'TR0032', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:28:24'),
(62, 'TR0032', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:28:24'),
(63, 'TR0033', 47, 'BR036', NULL, NULL, 'Crystalin Besar 1,5 L', 4200, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:29:18'),
(64, 'TR0034', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-20', '2025-05', 1, '2025-05-20 19:29:40'),
(65, 'TR0035', 60, 'BR049', NULL, NULL, 'Defy Tape Uli', 23000, 24000, 1, 0, 24000, '2025-05-20', '2025-05', 1, '2025-05-20 19:30:17'),
(66, 'TR0036', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 4, 0, 16000, '2025-05-20', '2025-05', 1, '2025-05-20 19:31:01'),
(67, 'TR0037', 182, 'BR00182', NULL, NULL, 'Ketan Uli Serundeng', 10000, 11000, 1, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 19:32:16'),
(68, 'TR0038', 183, 'BR00183', NULL, NULL, 'Waffelo ', 1000, 2000, 1, 0, 2000, '2025-05-20', '2025-05', 1, '2025-05-20 19:34:27'),
(69, 'TR0039', 15, 'BR004', NULL, NULL, 'Ade Cookies Cheese Lotus', 12500, 13500, 1, 0, 13500, '2025-05-20', '2025-05', 1, '2025-05-20 19:40:15'),
(70, 'TR0039', 16, 'BR005', NULL, NULL, 'Ade Cookies Matcha Red Velvet Chocco', 10500, 11500, 2, 0, 23000, '2025-05-20', '2025-05', 1, '2025-05-20 19:40:15'),
(71, 'TR0039', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:40:15'),
(72, 'TR0039', 104, 'BR093', NULL, NULL, 'Hydro Coco 250 ml', 6600, 9000, 1, 0, 9000, '2025-05-20', '2025-05', 1, '2025-05-20 19:40:15'),
(73, 'TR0039', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:40:15'),
(74, 'TR0040', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:41:30'),
(75, 'TR0040', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:41:30'),
(76, 'TR0040', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-20', '2025-05', 1, '2025-05-20 19:41:30'),
(77, 'TR0041', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 2, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 19:43:54'),
(78, 'TR0041', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 2, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 19:43:54'),
(79, 'TR0041', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:43:54'),
(80, 'TR0041', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-20', '2025-05', 1, '2025-05-20 19:43:54'),
(81, 'TR0041', 14, 'BR003', NULL, NULL, 'ABC Saus Sambal 130 ml', 7600, 12000, 1, 0, 12000, '2025-05-20', '2025-05', 1, '2025-05-20 19:43:54'),
(82, 'TR0041', 117, 'BR106', NULL, NULL, 'Mogu Mogu 320 ml', 12000, 14000, 1, 0, 14000, '2025-05-20', '2025-05', 1, '2025-05-20 19:43:54'),
(83, 'TR0042', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:45:03'),
(84, 'TR0042', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-20', '2025-05', 1, '2025-05-20 19:45:03'),
(85, 'TR0042', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:45:03'),
(86, 'TR0042', 16, 'BR005', NULL, NULL, 'Ade Cookies Matcha Red Velvet Chocco', 10500, 11500, 1, 0, 11500, '2025-05-20', '2025-05', 1, '2025-05-20 19:45:03'),
(87, 'TR0043', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:45:19'),
(88, 'TR0044', 29, 'BR018', NULL, NULL, 'Biokul Yoghurt 80 g', 5500, 7500, 3, 0, 22500, '2025-05-20', '2025-05', 1, '2025-05-20 19:46:02'),
(89, 'TR0045', 29, 'BR018', NULL, NULL, 'Biokul Yoghurt 80 g', 5500, 7500, 1, 0, 7500, '2025-05-20', '2025-05', 1, '2025-05-20 19:46:26'),
(90, 'TR0046', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-20', '2025-05', 1, '2025-05-20 19:47:03'),
(91, 'TR0046', 60, 'BR049', NULL, NULL, 'Defy Tape Uli', 23000, 24000, 1, 0, 24000, '2025-05-20', '2025-05', 1, '2025-05-20 19:47:03'),
(92, 'TR0047', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-20', '2025-05', 1, '2025-05-20 19:47:56'),
(93, 'TR0047', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-20', '2025-05', 1, '2025-05-20 19:47:56'),
(94, 'TR0048', 47, 'BR036', NULL, NULL, 'Crystalin Besar 1,5 L', 4200, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:48:40'),
(95, 'TR0048', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:48:40'),
(96, 'TR0049', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:49:39'),
(97, 'TR0049', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-20', '2025-05', 1, '2025-05-20 19:49:39'),
(98, 'TR0050', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 2, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 19:50:20'),
(99, 'TR0051', 45, 'BR034', NULL, NULL, 'Clean Plus Tissue', 5500, 7500, 1, 0, 7500, '2025-05-20', '2025-05', 1, '2025-05-20 19:50:57'),
(100, 'TR0051', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-20', '2025-05', 1, '2025-05-20 19:50:57'),
(101, 'TR0052', 16, 'BR005', NULL, NULL, 'Ade Cookies Matcha Red Velvet Chocco', 10500, 11500, 3, 0, 34500, '2025-05-20', '2025-05', 1, '2025-05-20 19:52:24'),
(102, 'TR0052', 15, 'BR004', NULL, NULL, 'Ade Cookies Cheese Lotus', 12500, 13500, 1, 0, 13500, '2025-05-20', '2025-05', 1, '2025-05-20 19:52:24'),
(103, 'TR0052', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 2, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 19:52:24'),
(104, 'TR0053', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:53:04'),
(105, 'TR0054', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-20', '2025-05', 1, '2025-05-20 19:53:36'),
(106, 'TR0055', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-20', '2025-05', 1, '2025-05-20 19:54:22'),
(107, 'TR0055', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 19:54:22'),
(108, 'TR0056', 176, 'BR165', NULL, NULL, 'Usus Keripik', 8500, 10000, 1, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:58:18'),
(109, 'TR0056', 13, 'BR002', NULL, NULL, 'ABC Kopi', 2800, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:58:18'),
(110, 'TR0056', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-20', '2025-05', 1, '2025-05-20 19:58:18'),
(111, 'TR0056', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 19:58:18'),
(112, 'TR0057', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 19:59:12'),
(113, 'TR0057', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 19:59:12'),
(114, 'TR0057', 152, 'BR141', NULL, NULL, 'Ratna Keripik Tempe 250 g', 16000, 18500, 1, 0, 18500, '2025-05-20', '2025-05', 1, '2025-05-20 19:59:12'),
(115, 'TR0058', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 3, 0, 16500, '2025-05-20', '2025-05', 1, '2025-05-20 20:00:05'),
(116, 'TR0058', 45, 'BR034', NULL, NULL, 'Clean Plus Tissue', 5500, 7500, 1, 0, 7500, '2025-05-20', '2025-05', 1, '2025-05-20 20:00:05'),
(117, 'TR0058', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-20', '2025-05', 1, '2025-05-20 20:00:05'),
(118, 'TR0058', 86, 'BR075', NULL, NULL, 'French Fries 62 g', 7300, 9500, 1, 0, 9500, '2025-05-20', '2025-05', 1, '2025-05-20 20:00:05'),
(119, 'TR0059', 47, 'BR036', NULL, NULL, 'Crystalin Besar 1,5 L', 4200, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 20:00:22'),
(120, 'TR0060', 108, 'BR097', NULL, NULL, 'Kusuka Keripik BBQ Balado Rumput Laut 60 g', 5700, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 20:00:42'),
(121, 'TR0061', 35, 'BR024', NULL, NULL, 'Chitato Sapi Panggang 35 g', 5600, 7500, 1, 0, 7500, '2025-05-20', '2025-05', 1, '2025-05-20 20:01:17'),
(122, 'TR0061', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-20', '2025-05', 1, '2025-05-20 20:01:17'),
(123, 'TR0062', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 20:01:56'),
(124, 'TR0062', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 20:01:56'),
(125, 'TR0063', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-20', '2025-05', 1, '2025-05-20 20:02:48'),
(126, 'TR0063', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 20:02:48'),
(127, 'TR0063', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-20', '2025-05', 1, '2025-05-20 20:02:48'),
(128, 'TR0064', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 2, 0, 11000, '2025-05-20', '2025-05', 1, '2025-05-20 20:03:09'),
(129, 'TR0065', 176, 'BR165', NULL, NULL, 'Usus Keripik', 8500, 10000, 1, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 20:03:36'),
(130, 'TR0066', 99, 'BR088', NULL, NULL, 'Hana Makaroni', 5000, 6000, 2, 0, 12000, '2025-05-20', '2025-05', 1, '2025-05-20 20:05:20'),
(131, 'TR0066', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-20', '2025-05', 1, '2025-05-20 20:05:20'),
(132, 'TR0066', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-20', '2025-05', 1, '2025-05-20 20:05:20'),
(133, 'TR0067', 99, 'BR088', NULL, NULL, 'Hana Makaroni', 5000, 6000, 1, 0, 6000, '2025-05-20', '2025-05', 1, '2025-05-20 20:05:52'),
(134, 'TR0068', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 20:06:07'),
(135, 'TR0069', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-20', '2025-05', 1, '2025-05-20 20:06:30'),
(136, 'TR0070', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-20', '2025-05', 1, '2025-05-20 20:07:06'),
(137, 'TR0071', 47, 'BR036', NULL, NULL, 'Crystalin Besar 1,5 L', 4200, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 20:07:40'),
(138, 'TR0072', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-20', '2025-05', 1, '2025-05-20 20:08:15'),
(139, 'TR0073', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 20:10:32'),
(140, 'TR0074', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-21', '2025-05', 1, '2025-05-21 17:58:22'),
(142, 'TR0074', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-21', '2025-05', 1, '2025-05-21 17:58:22'),
(143, 'TR0074', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-21', '2025-05', 1, '2025-05-21 17:58:22'),
(144, 'TR0075', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-21', '2025-05', 1, '2025-05-21 18:00:14'),
(145, 'TR0076', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-21', '2025-05', 1, '2025-05-21 18:00:30'),
(146, 'TR0078', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-21', '2025-05', 1, '2025-05-21 18:01:35'),
(147, 'TR0079', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 3, 0, 15000, '2025-05-21', '2025-05', 1, '2025-05-21 18:02:37'),
(148, 'TR0080', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-21', '2025-05', 1, '2025-05-21 18:03:06'),
(149, 'TR0080', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-21', '2025-05', 1, '2025-05-21 18:03:06'),
(150, 'TR0081', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-21', '2025-05', 1, '2025-05-21 18:03:53'),
(151, 'TR0082', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 6, 0, 30000, '2025-05-21', '2025-05', 1, '2025-05-21 18:04:44'),
(152, 'TR0082', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-21', '2025-05', 1, '2025-05-21 18:04:44'),
(153, 'TR0083', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-21', '2025-05', 1, '2025-05-21 18:05:24'),
(154, 'TR0084', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 3, 0, 15000, '2025-05-21', '2025-05', 1, '2025-05-21 18:06:18'),
(155, 'TR0085', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-21', '2025-05', 1, '2025-05-21 18:08:14'),
(156, 'TR0085', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-21', '2025-05', 1, '2025-05-21 18:08:14'),
(157, 'TR0086', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-21', '2025-05', 1, '2025-05-21 18:08:37'),
(158, 'TR0086', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-21', '2025-05', 1, '2025-05-21 18:08:37'),
(159, 'TR0087', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-21', '2025-05', 1, '2025-05-21 18:09:07'),
(160, 'TR0088', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-21', '2025-05', 1, '2025-05-21 18:09:45'),
(161, 'TR0088', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-21', '2025-05', 1, '2025-05-21 18:09:45'),
(162, 'TR0088', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-21', '2025-05', 1, '2025-05-21 18:09:45'),
(163, 'TR0089', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-21', '2025-05', 1, '2025-05-21 18:10:10'),
(164, 'TR0089', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-21', '2025-05', 1, '2025-05-21 18:10:10'),
(165, 'TR0090', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-21', '2025-05', 1, '2025-05-21 18:10:51'),
(166, 'TR0091', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 3, 0, 15000, '2025-05-21', '2025-05', 1, '2025-05-21 18:11:33'),
(167, 'TR0092', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 5, 0, 25000, '2025-05-21', '2025-05', 1, '2025-05-21 18:11:56'),
(168, 'TR0093', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-21', '2025-05', 1, '2025-05-21 18:13:02'),
(169, 'TR0094', 47, 'BR036', NULL, NULL, 'Crystalin Besar 1,5 L', 4200, 8000, 1, 0, 8000, '2025-05-21', '2025-05', 1, '2025-05-21 18:13:20'),
(170, 'TR0095', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 5, 0, 25000, '2025-05-21', '2025-05', 1, '2025-05-21 18:13:46'),
(171, 'TR0096', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-21', '2025-05', 1, '2025-05-21 18:14:12'),
(172, 'TR0096', 99, 'BR088', NULL, NULL, 'Hana Makaroni', 5000, 6000, 1, 0, 6000, '2025-05-21', '2025-05', 1, '2025-05-21 18:14:12'),
(173, 'TR0097', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-21', '2025-05', 1, '2025-05-21 18:14:31'),
(174, 'TR0097', 180, 'BR169', NULL, NULL, 'YouC 1000 140 ml', 6500, 9000, 1, 0, 9000, '2025-05-21', '2025-05', 1, '2025-05-21 18:14:31'),
(175, 'TR0098', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-21', '2025-05', 1, '2025-05-21 18:15:25'),
(176, 'TR0098', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-21', '2025-05', 1, '2025-05-21 18:15:25'),
(177, 'TR0098', 40, 'BR029', NULL, NULL, 'Cimory Squeeze Yoghurt 120 g', 8200, 10500, 1, 0, 10500, '2025-05-21', '2025-05', 1, '2025-05-21 18:15:25'),
(178, 'TR0099', 174, 'BR163', NULL, NULL, 'Ultra SKI 250 ml', 4200, 6500, 1, 0, 6500, '2025-05-21', '2025-05', 1, '2025-05-21 18:23:55'),
(179, 'TR0099', 186, 'BR00186', NULL, NULL, 'Herlan Basreng Ngeunah', 10000, 11000, 2, 0, 22000, '2025-05-21', '2025-05', 1, '2025-05-21 18:23:55'),
(180, 'TR00100', 186, 'BR00186', NULL, NULL, 'Herlan Basreng Ngeunah', 10000, 11000, 1, 0, 11000, '2025-05-21', '2025-05', 1, '2025-05-21 18:24:23'),
(181, 'TR00101', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-21', '2025-05', 1, '2025-05-21 18:25:01'),
(182, 'TR00101', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-21', '2025-05', 1, '2025-05-21 18:25:01'),
(183, 'TR00102', 47, 'BR036', NULL, NULL, 'Crystalin Besar 1,5 L', 4200, 8000, 1, 0, 8000, '2025-05-21', '2025-05', 1, '2025-05-21 18:26:02'),
(184, 'TR00102', 184, 'BR00184', NULL, NULL, 'Kopiko 78 240 ml', 5000, 7500, 1, 0, 7500, '2025-05-21', '2025-05', 1, '2025-05-21 18:26:02'),
(185, 'TR00102', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-21', '2025-05', 1, '2025-05-21 18:26:02'),
(186, 'TR00103', 99, 'BR088', NULL, NULL, 'Hana Makaroni', 5000, 6000, 1, 0, 6000, '2025-05-21', '2025-05', 1, '2025-05-21 18:26:16'),
(187, 'TR00104', 146, 'BR135', NULL, NULL, 'Pocari Sweat 350 ml', 5500, 8000, 1, 0, 8000, '2025-05-21', '2025-05', 1, '2025-05-21 18:26:58'),
(188, 'TR00104', 180, 'BR169', NULL, NULL, 'YouC 1000 140 ml', 6500, 9000, 1, 0, 9000, '2025-05-21', '2025-05', 1, '2025-05-21 18:26:58'),
(189, 'TR00105', 168, 'BR157', NULL, NULL, 'Teh Kotak 300 ml', 3500, 6000, 1, 0, 6000, '2025-05-21', '2025-05', 1, '2025-05-21 18:27:20'),
(190, 'TR00106', 161, 'BR150', NULL, NULL, 'Silverqueen Bites 30 g', 8300, 10500, 2, 0, 21000, '2025-05-21', '2025-05', 1, '2025-05-21 18:27:46'),
(191, 'TR00106', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 2, 0, 7000, '2025-05-21', '2025-05', 1, '2025-05-21 18:27:46'),
(192, 'TR00107', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-22', '2025-05', 1, '2025-05-22 14:42:36'),
(193, 'TR00107', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 4, 0, 18000, '2025-05-22', '2025-05', 1, '2025-05-22 14:42:36'),
(194, 'TR00107', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 3, 0, 15000, '2025-05-22', '2025-05', 1, '2025-05-22 14:42:36'),
(195, 'TR00108', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:43:13'),
(197, 'TR00110', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 8, 0, 36000, '2025-05-22', '2025-05', 1, '2025-05-22 14:43:59'),
(198, 'TR00111', 161, 'BR150', NULL, NULL, 'Silverqueen Bites 30 g', 8300, 10500, 1, 0, 10500, '2025-05-22', '2025-05', 1, '2025-05-22 14:44:22'),
(199, 'TR00112', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:44:46'),
(200, 'TR00112', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:44:46'),
(201, 'TR00113', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:45:13'),
(202, 'TR00113', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:45:13'),
(203, 'TR00114', 173, 'BR162', NULL, NULL, 'Ultra Sari Asem 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 14:45:27'),
(204, 'TR00115', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:45:48'),
(205, 'TR00116', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 14:46:09'),
(206, 'TR00117', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:46:46'),
(207, 'TR00117', 88, 'BR077', NULL, NULL, 'Garuda Atom All Varian 100 g', 9000, 11000, 1, 0, 11000, '2025-05-22', '2025-05', 1, '2025-05-22 14:46:46'),
(208, 'TR00118', 161, 'BR150', NULL, NULL, 'Silverqueen Bites 30 g', 8300, 10500, 1, 0, 10500, '2025-05-22', '2025-05', 1, '2025-05-22 14:48:05'),
(209, 'TR00118', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:48:05'),
(210, 'TR00118', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:48:05'),
(211, 'TR00118', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-22', '2025-05', 1, '2025-05-22 14:48:05'),
(212, 'TR00118', 38, 'BR027', NULL, NULL, 'Cimory Bites Yoghurt 120 g', 8500, 12000, 1, 0, 12000, '2025-05-22', '2025-05', 1, '2025-05-22 14:48:05'),
(213, 'TR00119', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 3, 0, 12000, '2025-05-22', '2025-05', 1, '2025-05-22 14:48:37'),
(214, 'TR00120', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:48:56'),
(215, 'TR00121', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 14:49:10'),
(216, 'TR00122', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 3, 0, 12000, '2025-05-22', '2025-05', 1, '2025-05-22 14:49:55'),
(217, 'TR00122', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:49:55'),
(218, 'TR00123', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 14:51:13'),
(219, 'TR00123', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 5, 0, 20000, '2025-05-22', '2025-05', 1, '2025-05-22 14:51:13'),
(220, 'TR00124', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 14:51:34'),
(221, 'TR00125', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-22', '2025-05', 1, '2025-05-22 14:52:08'),
(222, 'TR00125', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:52:08'),
(223, 'TR00126', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:52:29'),
(224, 'TR00126', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:52:29'),
(225, 'TR00127', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:52:52'),
(226, 'TR00127', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:52:52'),
(227, 'TR00128', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 14:53:41'),
(228, 'TR00128', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 14:53:41'),
(229, 'TR00129', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:54:01'),
(230, 'TR00129', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-22', '2025-05', 1, '2025-05-22 14:54:01'),
(231, 'TR00130', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-22', '2025-05', 1, '2025-05-22 14:54:18'),
(232, 'TR00131', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-22', '2025-05', 1, '2025-05-22 14:54:56'),
(233, 'TR00132', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-22', '2025-05', 1, '2025-05-22 14:55:11'),
(234, 'TR00133', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:55:41'),
(235, 'TR00134', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 14:55:56'),
(236, 'TR00135', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 14:56:18'),
(237, 'TR00136', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 14:56:33'),
(238, 'TR00137', 148, 'BR137', NULL, NULL, 'Popmie Ayam Bakso Kari 75 g', 5000, 7000, 1, 0, 7000, '2025-05-22', '2025-05', 1, '2025-05-22 14:56:45'),
(239, 'TR00138', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 14:57:12'),
(240, 'TR00138', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-22', '2025-05', 1, '2025-05-22 14:57:12'),
(241, 'TR00139', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 14:58:04'),
(242, 'TR00139', 16, 'BR005', NULL, NULL, 'Ade Cookies Matcha Red Velvet Chocco', 10500, 11500, 1, 0, 11500, '2025-05-22', '2025-05', 1, '2025-05-22 14:58:04'),
(243, 'TR00139', 184, 'BR00184', NULL, NULL, 'Kopiko 78 240 ml', 5000, 7500, 1, 0, 7500, '2025-05-22', '2025-05', 1, '2025-05-22 14:58:04'),
(244, 'TR00140', 99, 'BR088', NULL, NULL, 'Hana Makaroni', 5000, 6000, 1, 0, 6000, '2025-05-22', '2025-05', 1, '2025-05-22 14:58:19'),
(245, 'TR00141', 106, 'BR095', NULL, NULL, 'Khong Guan Saltcheese', 12000, 15000, 1, 0, 15000, '2025-05-22', '2025-05', 1, '2025-05-22 14:59:02'),
(246, 'TR00142', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-22', '2025-05', 1, '2025-05-22 14:59:38'),
(247, 'TR00142', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 14:59:38'),
(248, 'TR00143', 86, 'BR075', NULL, NULL, 'French Fries 62 g', 7300, 9500, 1, 0, 9500, '2025-05-22', '2025-05', 1, '2025-05-22 14:59:53'),
(249, 'TR00144', 186, 'BR00186', NULL, NULL, 'Herlan Basreng Ngeunah', 10000, 11000, 1, 0, 11000, '2025-05-22', '2025-05', 1, '2025-05-22 15:00:23'),
(250, 'TR00145', 186, 'BR00186', NULL, NULL, 'Herlan Basreng Ngeunah', 10000, 11000, 1, 0, 11000, '2025-05-22', '2025-05', 1, '2025-05-22 15:01:41'),
(251, 'TR00145', 15, 'BR004', NULL, NULL, 'Ade Cookies Cheese Lotus', 12500, 13500, 1, 0, 13500, '2025-05-22', '2025-05', 1, '2025-05-22 15:01:41'),
(252, 'TR00146', 96, 'BR085', NULL, NULL, 'Good Day Botol 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 15:02:33'),
(253, 'TR00146', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 15:02:33'),
(254, 'TR00147', 97, 'BR086', NULL, NULL, 'Good Day Moccachino Sachet', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 15:02:48'),
(255, 'TR00148', 152, 'BR141', NULL, NULL, 'Ratna Keripik Tempe 250 g', 16000, 18500, 1, 0, 18500, '2025-05-22', '2025-05', 1, '2025-05-22 15:03:06'),
(256, 'TR00149', 123, 'BR112', NULL, NULL, 'Monde Genji Raisin Pie 70 g', 9600, 13000, 1, 0, 13000, '2025-05-22', '2025-05', 1, '2025-05-22 15:03:32'),
(257, 'TR00150', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 15:04:17'),
(258, 'TR00151', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-22', '2025-05', 1, '2025-05-22 15:10:41'),
(259, 'TR00152', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:14:27'),
(260, 'TR00152', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 1, 0, 5500, '2025-05-22', '2025-05', 1, '2025-05-22 22:14:27'),
(261, 'TR00153', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:14:46'),
(262, 'TR00154', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 22:15:16'),
(263, 'TR00154', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:15:16'),
(264, 'TR00155', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:16:13'),
(265, 'TR00155', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 6, 0, 27000, '2025-05-22', '2025-05', 1, '2025-05-22 22:16:13'),
(266, 'TR00156', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:17:21'),
(267, 'TR00156', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:17:21'),
(268, 'TR00156', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 22:17:21'),
(269, 'TR00157', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 3, 0, 13500, '2025-05-22', '2025-05', 1, '2025-05-22 22:17:46'),
(270, 'TR00158', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 4, 0, 16000, '2025-05-22', '2025-05', 1, '2025-05-22 22:18:19'),
(271, 'TR00158', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-22', '2025-05', 1, '2025-05-22 22:18:19'),
(272, 'TR00159', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 22:18:57'),
(273, 'TR00159', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-22', '2025-05', 1, '2025-05-22 22:18:57'),
(274, 'TR00159', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:18:57'),
(275, 'TR00160', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:19:27'),
(276, 'TR00160', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:19:27'),
(277, 'TR00161', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:20:00'),
(278, 'TR00161', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-22', '2025-05', 1, '2025-05-22 22:20:00'),
(279, 'TR00162', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:20:25'),
(280, 'TR00162', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:20:25'),
(281, 'TR00163', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:21:39'),
(282, 'TR00164', 104, 'BR093', NULL, NULL, 'Hydro Coco 250 ml', 6600, 9000, 1, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:21:56'),
(283, 'TR00165', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:22:16'),
(284, 'TR00166', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:23:09'),
(285, 'TR00166', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:23:09'),
(286, 'TR00167', 180, 'BR169', NULL, NULL, 'YouC 1000 140 ml', 6500, 9000, 1, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:24:05'),
(287, 'TR00167', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 2, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:24:05'),
(288, 'TR00167', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 1, 0, 5500, '2025-05-22', '2025-05', 1, '2025-05-22 22:24:05'),
(289, 'TR00167', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-22', '2025-05', 1, '2025-05-22 22:24:05'),
(290, 'TR00168', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 2, 0, 11000, '2025-05-22', '2025-05', 1, '2025-05-22 22:29:44'),
(291, 'TR00169', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 22:39:04'),
(292, 'TR00169', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 3, 0, 12000, '2025-05-22', '2025-05', 1, '2025-05-22 22:39:04'),
(293, 'TR00169', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 6, 0, 51000, '2025-05-22', '2025-05', 1, '2025-05-22 22:39:04'),
(294, 'TR00170', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 22:40:13'),
(295, 'TR00170', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-22', '2025-05', 1, '2025-05-22 22:40:13'),
(296, 'TR00171', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:40:42'),
(297, 'TR00172', 168, 'BR157', NULL, NULL, 'Teh Kotak 300 ml', 3500, 6000, 1, 0, 6000, '2025-05-22', '2025-05', 1, '2025-05-22 22:41:23'),
(298, 'TR00172', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:41:23'),
(299, 'TR00173', 146, 'BR135', NULL, NULL, 'Pocari Sweat 350 ml', 5500, 8000, 1, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:42:34'),
(300, 'TR00173', 16, 'BR005', NULL, NULL, 'Ade Cookies Matcha Red Velvet Chocco', 10500, 11500, 1, 0, 11500, '2025-05-22', '2025-05', 1, '2025-05-22 22:42:34'),
(301, 'TR00173', 186, 'BR00186', NULL, NULL, 'Herlan Basreng Ngeunah', 10000, 11000, 1, 0, 11000, '2025-05-22', '2025-05', 1, '2025-05-22 22:42:34'),
(302, 'TR00173', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:42:34'),
(303, 'TR00173', 38, 'BR027', NULL, NULL, 'Cimory Bites Yoghurt 120 g', 8500, 12000, 1, 0, 12000, '2025-05-22', '2025-05', 1, '2025-05-22 22:42:34'),
(304, 'TR00174', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 2, 0, 12000, '2025-05-22', '2025-05', 1, '2025-05-22 22:43:09'),
(305, 'TR00174', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:43:09'),
(306, 'TR00175', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:43:33'),
(307, 'TR00175', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 22:43:33'),
(308, 'TR00176', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:43:49'),
(309, 'TR00177', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:44:15'),
(310, 'TR00177', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:44:15'),
(311, 'TR00178', 38, 'BR027', NULL, NULL, 'Cimory Bites Yoghurt 120 g', 8500, 12000, 1, 0, 12000, '2025-05-22', '2025-05', 1, '2025-05-22 22:44:33'),
(312, 'TR00179', 45, 'BR034', NULL, NULL, 'Clean Plus Tissue', 5500, 7500, 1, 0, 7500, '2025-05-22', '2025-05', 1, '2025-05-22 22:44:51'),
(313, 'TR00180', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:45:04'),
(314, 'TR00181', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-22', '2025-05', 1, '2025-05-22 22:45:28'),
(315, 'TR00182', 76, 'BR065', NULL, NULL, 'Drg. Windy Pudot Coffee Jelly', 9000, 10000, 1, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 22:46:11'),
(316, 'TR00183', 156, 'BR145', NULL, NULL, 'Roma Malkist 105 g', 7500, 9500, 1, 0, 9500, '2025-05-22', '2025-05', 1, '2025-05-22 22:49:37'),
(317, 'TR00183', 143, 'BR132', NULL, NULL, 'Pia 100 Kacang Hijau 150 g', 12000, 14000, 1, 0, 14000, '2025-05-22', '2025-05', 1, '2025-05-22 22:49:37'),
(318, 'TR00183', 122, 'BR111', NULL, NULL, 'Monde Fried Cookies 200 g', 16000, 19000, 1, 0, 19000, '2025-05-22', '2025-05', 1, '2025-05-22 22:49:37'),
(319, 'TR00183', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 2, 0, 18000, '2025-05-22', '2025-05', 1, '2025-05-22 22:49:37'),
(320, 'TR00183', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:49:37'),
(321, 'TR00183', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 2, 0, 12000, '2025-05-22', '2025-05', 1, '2025-05-22 22:49:37'),
(322, 'TR00184', 187, 'BR00187', NULL, NULL, 'Drink Bengbeng', 2500, 4500, 1, 0, 4500, '2025-05-22', '2025-05', 1, '2025-05-22 22:50:33'),
(323, 'TR00185', 155, 'BR144', NULL, NULL, 'Rebo Kuaci', 14600, 17000, 1, 0, 17000, '2025-05-22', '2025-05', 1, '2025-05-22 22:50:47'),
(324, 'TR00186', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-22', '2025-05', 1, '2025-05-22 22:51:01'),
(325, 'TR00187', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 2, 0, 8000, '2025-05-22', '2025-05', 1, '2025-05-22 22:51:51'),
(326, 'TR00187', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-22', '2025-05', 1, '2025-05-22 22:51:51'),
(327, 'TR00187', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 2, 0, 20000, '2025-05-22', '2025-05', 1, '2025-05-22 22:51:51'),
(328, 'TR00187', 125, 'BR114', NULL, NULL, 'Nabati Richeese Richoco Wafer 37 g', 1700, 2500, 3, 0, 7500, '2025-05-22', '2025-05', 1, '2025-05-22 22:51:51'),
(329, 'TR00188', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-22', '2025-05', 1, '2025-05-22 22:52:17'),
(330, 'TR00189', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-22', '2025-05', 1, '2025-05-22 22:52:34'),
(331, 'TR00190', 133, 'BR122', NULL, NULL, 'Oatside All Varian 200 ml', 8000, 10000, 1, 0, 10000, '2025-05-22', '2025-05', 1, '2025-05-22 22:54:27'),
(332, 'TR00190', 188, 'BR00188', NULL, NULL, 'drg. Windy Kopi Adventure', 15000, 16000, 1, 0, 16000, '2025-05-22', '2025-05', 1, '2025-05-22 22:54:27'),
(333, 'TR00190', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-22', '2025-05', 1, '2025-05-22 22:54:27'),
(334, 'TR00191', 174, 'BR163', NULL, NULL, 'Ultra SKI 250 ml', 4200, 6500, 1, 0, 6500, '2025-05-22', '2025-05', 1, '2025-05-22 22:54:46'),
(335, 'TR00192', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-22', '2025-05', 1, '2025-05-22 22:55:05'),
(336, 'TR00192', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-22', '2025-05', 1, '2025-05-22 22:55:05'),
(337, 'TR00193', 146, 'BR135', NULL, NULL, 'Pocari Sweat 350 ml', 5500, 8000, 2, 0, 16000, '2025-05-22', '2025-05', 1, '2025-05-22 22:55:41'),
(338, 'TR00193', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-22', '2025-05', 1, '2025-05-22 22:55:41'),
(339, 'TR00194', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-22', '2025-05', 1, '2025-05-22 22:56:11'),
(340, 'TR00195', 156, 'BR145', NULL, NULL, 'Roma Malkist 105 g', 7500, 9500, 1, 0, 9500, '2025-05-23', '2025-05', 14, '2025-05-23 19:12:37'),
(341, 'TR00195', 143, 'BR132', NULL, NULL, 'Pia 100 Kacang Hijau 150 g', 12000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 19:12:37'),
(342, 'TR00195', 123, 'BR112', NULL, NULL, 'Monde Genji Raisin Pie 70 g', 9600, 13000, 1, 0, 13000, '2025-05-23', '2025-05', 14, '2025-05-23 19:12:37'),
(343, 'TR00195', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 4, 0, 36000, '2025-05-23', '2025-05', 14, '2025-05-23 19:12:37'),
(344, 'TR00195', 180, 'BR169', NULL, NULL, 'YouC 1000 140 ml', 6500, 9000, 2, 0, 18000, '2025-05-23', '2025-05', 14, '2025-05-23 19:12:37'),
(345, 'TR00196', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:13:08'),
(346, 'TR00197', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:13:36'),
(347, 'TR00197', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 19:13:36'),
(348, 'TR00197', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 19:13:36'),
(349, 'TR00198', 161, 'BR150', NULL, NULL, 'Silverqueen Bites 30 g', 8300, 10500, 1, 0, 10500, '2025-05-23', '2025-05', 14, '2025-05-23 19:13:52'),
(350, 'TR00199', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 19:14:07'),
(351, 'TR00200', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 19:14:28'),
(352, 'TR00200', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 19:14:28'),
(353, 'TR00201', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 19:15:07'),
(354, 'TR00201', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 3, 0, 21000, '2025-05-23', '2025-05', 14, '2025-05-23 19:15:07'),
(355, 'TR00201', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:15:07'),
(356, 'TR00201', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 19:15:07'),
(357, 'TR00202', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 19:15:52'),
(358, 'TR00202', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 19:15:52');
INSERT INTO `penjualan_detail` (`id`, `no_trx`, `id_barang`, `idb`, `id_supplier`, `nama_supplier`, `nama_barang`, `beli`, `jual`, `qty`, `diskon`, `total`, `tgl_input`, `periode`, `id_member`, `created_at`) VALUES
(359, 'TR00202', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 19:15:52'),
(360, 'TR00203', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 3, 0, 15000, '2025-05-23', '2025-05', 14, '2025-05-23 19:17:09'),
(361, 'TR00203', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 19:17:09'),
(362, 'TR00203', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:17:09'),
(363, 'TR00204', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 19:17:36'),
(364, 'TR00204', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 19:17:36'),
(365, 'TR00204', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:17:36'),
(366, 'TR00205', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 19:19:03'),
(367, 'TR00205', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 4, 0, 18000, '2025-05-23', '2025-05', 14, '2025-05-23 19:19:03'),
(368, 'TR00205', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 19:19:03'),
(369, 'TR00205', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 19:19:03'),
(370, 'TR00206', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:25:55'),
(371, 'TR00206', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 19:25:55'),
(372, 'TR00206', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 19:25:55'),
(373, 'TR00207', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:26:20'),
(374, 'TR00207', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 19:26:20'),
(375, 'TR00207', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:26:20'),
(376, 'TR00208', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 19:26:42'),
(377, 'TR00208', 43, 'BR032', NULL, NULL, 'Citra Bomboloni ', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 19:26:42'),
(378, 'TR00209', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 19:26:59'),
(379, 'TR00210', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 4, 0, 22000, '2025-05-23', '2025-05', 14, '2025-05-23 19:27:18'),
(380, 'TR00211', 43, 'BR032', NULL, NULL, 'Citra Bomboloni ', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 19:54:55'),
(381, 'TR00211', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 2, 0, 11000, '2025-05-23', '2025-05', 14, '2025-05-23 19:54:55'),
(382, 'TR00211', 189, 'BR00189', NULL, NULL, 'Citra Salad', 20000, 21000, 1, 0, 21000, '2025-05-23', '2025-05', 14, '2025-05-23 19:54:55'),
(383, 'TR00211', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 19:54:55'),
(384, 'TR00212', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 19:55:16'),
(385, 'TR00213', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 19:55:40'),
(386, 'TR00213', 43, 'BR032', NULL, NULL, 'Citra Bomboloni ', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 19:55:40'),
(387, 'TR00213', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 19:55:40'),
(388, 'TR00214', 43, 'BR032', NULL, NULL, 'Citra Bomboloni ', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 19:55:59'),
(389, 'TR00214', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 19:55:59'),
(390, 'TR00215', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 19:57:13'),
(391, 'TR00215', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 19:57:13'),
(392, 'TR00215', 189, 'BR00189', NULL, NULL, 'Citra Salad', 20000, 21000, 1, 0, 21000, '2025-05-23', '2025-05', 14, '2025-05-23 19:57:13'),
(393, 'TR00215', 43, 'BR032', NULL, NULL, 'Citra Bomboloni ', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 19:57:13'),
(394, 'TR00216', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 2, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 20:21:10'),
(395, 'TR00217', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 20:21:51'),
(396, 'TR00218', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:22:02'),
(397, 'TR00219', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 20:22:24'),
(398, 'TR00219', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:22:24'),
(399, 'TR00220', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 20:22:44'),
(400, 'TR00220', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:22:44'),
(401, 'TR00221', 43, 'BR032', NULL, NULL, 'Citra Bomboloni ', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 20:23:09'),
(402, 'TR00221', 29, 'BR018', NULL, NULL, 'Biokul Yoghurt 80 g', 5500, 7500, 3, 0, 22500, '2025-05-23', '2025-05', 14, '2025-05-23 20:23:09'),
(403, 'TR00222', 76, 'BR065', NULL, NULL, 'Drg. Windy Pudot Coffee Jelly', 9000, 10000, 2, 0, 20000, '2025-05-23', '2025-05', 14, '2025-05-23 20:23:30'),
(404, 'TR00223', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:23:56'),
(405, 'TR00223', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 20:23:56'),
(406, 'TR00224', 189, 'BR00189', NULL, NULL, 'Citra Salad', 20000, 21000, 1, 0, 21000, '2025-05-23', '2025-05', 14, '2025-05-23 20:24:15'),
(407, 'TR00224', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:24:15'),
(408, 'TR00225', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:24:27'),
(409, 'TR00226', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:24:40'),
(410, 'TR00227', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 29, 0, 145000, '2025-05-23', '2025-05', 14, '2025-05-23 20:24:58'),
(411, 'TR00228', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 2, 0, 11000, '2025-05-23', '2025-05', 14, '2025-05-23 20:25:10'),
(412, 'TR00229', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:25:41'),
(413, 'TR00229', 173, 'BR162', NULL, NULL, 'Ultra Sari Asem 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:25:41'),
(414, 'TR00229', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 20:25:41'),
(415, 'TR00230', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 5, 0, 25000, '2025-05-23', '2025-05', 14, '2025-05-23 20:26:13'),
(416, 'TR00231', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 20:26:43'),
(417, 'TR00231', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:26:43'),
(418, 'TR00231', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 20:26:43'),
(419, 'TR00232', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:28:15'),
(420, 'TR00232', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:28:15'),
(421, 'TR00232', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 20:28:15'),
(422, 'TR00232', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 20:28:15'),
(423, 'TR00233', 76, 'BR065', NULL, NULL, 'Drg. Windy Pudot Coffee Jelly', 9000, 10000, 2, 0, 20000, '2025-05-23', '2025-05', 14, '2025-05-23 20:28:29'),
(424, 'TR00234', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:29:33'),
(425, 'TR00235', 189, 'BR00189', NULL, NULL, 'Citra Salad', 20000, 21000, 1, 0, 21000, '2025-05-23', '2025-05', 14, '2025-05-23 20:29:56'),
(426, 'TR00235', 180, 'BR169', NULL, NULL, 'YouC 1000 140 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:29:56'),
(427, 'TR00236', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:30:18'),
(428, 'TR00236', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:30:18'),
(429, 'TR00236', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:30:18'),
(430, 'TR00237', 70, 'BR059', NULL, NULL, 'Dr. Nunik Pecel Urap', 7000, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:31:05'),
(431, 'TR00237', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:31:05'),
(432, 'TR00238', 146, 'BR135', NULL, NULL, 'Pocari Sweat 350 ml', 5500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:31:35'),
(433, 'TR00238', 128, 'BR117', NULL, NULL, 'Nia Farmasi Kacang', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 20:31:35'),
(434, 'TR00239', 43, 'BR032', NULL, NULL, 'Citra Bomboloni ', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 20:31:55'),
(435, 'TR00240', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:32:27'),
(436, 'TR00240', 106, 'BR095', NULL, NULL, 'Khong Guan Saltcheese', 12000, 15000, 1, 0, 15000, '2025-05-23', '2025-05', 14, '2025-05-23 20:32:27'),
(437, 'TR00240', 163, 'BR152', NULL, NULL, 'Suki Stick 95 g', 7300, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:32:27'),
(438, 'TR00241', 43, 'BR032', NULL, NULL, 'Citra Bomboloni ', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 20:33:02'),
(439, 'TR00241', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 20:33:02'),
(440, 'TR00242', 128, 'BR117', NULL, NULL, 'Nia Farmasi Kacang', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 20:33:32'),
(441, 'TR00243', 189, 'BR00189', NULL, NULL, 'Citra Salad', 20000, 21000, 1, 0, 21000, '2025-05-23', '2025-05', 14, '2025-05-23 20:33:48'),
(442, 'TR00244', 32, 'BR021', NULL, NULL, 'Charm Night Renceng ', 2800, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:34:06'),
(443, 'TR00245', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:34:59'),
(444, 'TR00245', 180, 'BR169', NULL, NULL, 'YouC 1000 140 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:34:59'),
(445, 'TR00245', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:34:59'),
(446, 'TR00246', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:35:23'),
(447, 'TR00246', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:35:23'),
(448, 'TR00247', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:35:35'),
(449, 'TR00248', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 20:36:08'),
(450, 'TR00248', 67, 'BR056', NULL, NULL, 'dr. Nunik Brownies Kecil', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 20:36:08'),
(451, 'TR00249', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:36:56'),
(452, 'TR00249', 117, 'BR106', NULL, NULL, 'Mogu Mogu 320 ml', 12000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 20:36:56'),
(453, 'TR00250', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:38:39'),
(454, 'TR00251', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:39:35'),
(455, 'TR00251', 96, 'BR085', NULL, NULL, 'Good Day Botol 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:39:35'),
(456, 'TR00251', 144, 'BR133', NULL, NULL, 'Piattos 68 g', 9500, 11500, 1, 0, 11500, '2025-05-23', '2025-05', 14, '2025-05-23 20:39:35'),
(457, 'TR00252', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 20:39:51'),
(458, 'TR00253', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 20:40:08'),
(459, 'TR00254', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:40:49'),
(460, 'TR00255', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:41:05'),
(461, 'TR00256', 59, 'BR048', NULL, NULL, 'Defy Nasi Kuning Uduk Ulam', 14000, 15000, 1, 0, 15000, '2025-05-23', '2025-05', 14, '2025-05-23 20:41:39'),
(462, 'TR00257', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:42:12'),
(463, 'TR00258', 55, 'BR044', NULL, NULL, 'Defy Lapis Lemper Bugis', 3000, 3500, 2, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 20:42:48'),
(464, 'TR00258', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 20:42:48'),
(465, 'TR00258', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 1, 0, 5500, '2025-05-23', '2025-05', 14, '2025-05-23 20:42:48'),
(466, 'TR00258', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:42:48'),
(467, 'TR00259', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 20:43:21'),
(468, 'TR00259', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:43:21'),
(469, 'TR00260', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 6, 0, 24000, '2025-05-23', '2025-05', 14, '2025-05-23 20:43:39'),
(470, 'TR00261', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 20:44:10'),
(471, 'TR00261', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:44:10'),
(472, 'TR00262', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:45:15'),
(473, 'TR00263', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:45:52'),
(474, 'TR00264', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:46:04'),
(475, 'TR00265', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 4, 0, 18000, '2025-05-23', '2025-05', 14, '2025-05-23 20:50:14'),
(476, 'TR00266', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:50:43'),
(477, 'TR00266', 188, 'BR00188', NULL, NULL, 'drg. Windy Kopi Adventure', 15000, 16000, 1, 0, 16000, '2025-05-23', '2025-05', 14, '2025-05-23 20:50:43'),
(478, 'TR00267', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:51:05'),
(479, 'TR00267', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:51:05'),
(480, 'TR00268', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:51:18'),
(481, 'TR00269', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 2, 0, 11000, '2025-05-23', '2025-05', 14, '2025-05-23 20:51:32'),
(482, 'TR00270', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 20:52:46'),
(483, 'TR00271', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:53:01'),
(484, 'TR00272', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:53:12'),
(485, 'TR00273', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:53:38'),
(486, 'TR00274', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:53:59'),
(487, 'TR00274', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 20:53:59'),
(488, 'TR00275', 174, 'BR163', NULL, NULL, 'Ultra SKI 250 ml', 4200, 6500, 1, 0, 6500, '2025-05-23', '2025-05', 14, '2025-05-23 20:54:14'),
(489, 'TR00276', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:54:37'),
(490, 'TR00277', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 20:55:12'),
(491, 'TR00277', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 20:55:12'),
(492, 'TR00278', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 20:56:05'),
(493, 'TR00278', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 20:56:05'),
(496, 'TR00279', 96, 'BR085', NULL, NULL, 'Good Day Botol 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 20:57:17'),
(497, 'TR00279', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 20:57:17'),
(498, 'TR00281', 133, 'BR122', NULL, NULL, 'Oatside All Varian 200 ml', 8000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 20:57:45'),
(499, 'TR00282', 33, 'BR022', NULL, NULL, 'Charm Wing Oranye Renceng ', 1500, 2500, 2, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 21:00:09'),
(500, 'TR00282', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 21:00:09'),
(501, 'TR00283', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:00:31'),
(502, 'TR00283', 186, 'BR00186', NULL, NULL, 'Herlan Basreng Ngeunah', 10000, 11000, 1, 0, 11000, '2025-05-23', '2025-05', 14, '2025-05-23 21:00:31'),
(503, 'TR00284', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 21:00:54'),
(504, 'TR00284', 104, 'BR093', NULL, NULL, 'Hydro Coco 250 ml', 6600, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 21:00:54'),
(505, 'TR00285', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:01:10'),
(506, 'TR00286', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 21:01:33'),
(507, 'TR00286', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 21:01:33'),
(508, 'TR00287', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 21:08:21'),
(509, 'TR00288', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:08:45'),
(510, 'TR00288', 128, 'BR117', NULL, NULL, 'Nia Farmasi Kacang', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 21:08:45'),
(511, 'TR00289', 99, 'BR088', NULL, NULL, 'Hana Makaroni', 5000, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 21:08:57'),
(512, 'TR00290', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:09:13'),
(513, 'TR00291', 161, 'BR150', NULL, NULL, 'Silverqueen Bites 30 g', 8300, 10500, 1, 0, 10500, '2025-05-23', '2025-05', 14, '2025-05-23 21:09:39'),
(514, 'TR00291', 55, 'BR044', NULL, NULL, 'Defy Lapis Lemper Bugis', 3000, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 21:09:39'),
(515, 'TR00292', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 8, 0, 68000, '2025-05-23', '2025-05', 14, '2025-05-23 21:10:06'),
(516, 'TR00293', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:10:23'),
(517, 'TR00294', 55, 'BR044', NULL, NULL, 'Defy Lapis Lemper Bugis', 3000, 3500, 2, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 21:11:10'),
(518, 'TR00294', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 21:11:10'),
(519, 'TR00295', 168, 'BR157', NULL, NULL, 'Teh Kotak 300 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 21:11:29'),
(520, 'TR00295', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 21:11:29'),
(521, 'TR00296', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:12:05'),
(522, 'TR00296', 58, 'BR047', NULL, NULL, 'Defy Mayonaise Pepe Pia', 4500, 5500, 2, 0, 11000, '2025-05-23', '2025-05', 14, '2025-05-23 21:12:05'),
(523, 'TR00296', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 21:12:05'),
(524, 'TR00296', 174, 'BR163', NULL, NULL, 'Ultra SKI 250 ml', 4200, 6500, 1, 0, 6500, '2025-05-23', '2025-05', 14, '2025-05-23 21:12:05'),
(525, 'TR00297', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 21:12:33'),
(526, 'TR00297', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 21:12:33'),
(527, 'TR00298', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 21:13:01'),
(528, 'TR00298', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 21:13:01'),
(529, 'TR00298', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 21:13:01'),
(530, 'TR00299', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 21:13:28'),
(531, 'TR00299', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 21:13:28'),
(532, 'TR00299', 161, 'BR150', NULL, NULL, 'Silverqueen Bites 30 g', 8300, 10500, 1, 0, 10500, '2025-05-23', '2025-05', 14, '2025-05-23 21:13:28'),
(533, 'TR00300', 96, 'BR085', NULL, NULL, 'Good Day Botol 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:13:47'),
(534, 'TR00300', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 21:13:47'),
(535, 'TR00301', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:14:29'),
(536, 'TR00301', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 21:14:29'),
(537, 'TR00302', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 21:14:48'),
(538, 'TR00303', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:15:02'),
(539, 'TR00304', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 21:15:40'),
(540, 'TR00304', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 3, 0, 13500, '2025-05-23', '2025-05', 14, '2025-05-23 21:15:40'),
(541, 'TR00305', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:01:19'),
(542, 'TR00306', 60, 'BR049', NULL, NULL, 'Defy Tape Uli', 23000, 24000, 1, 0, 24000, '2025-05-23', '2025-05', 14, '2025-05-23 22:01:36'),
(543, 'TR00307', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:01:57'),
(544, 'TR00308', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:02:18'),
(545, 'TR00309', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:02:41'),
(546, 'TR00310', 60, 'BR049', NULL, NULL, 'Defy Tape Uli', 23000, 24000, 1, 0, 24000, '2025-05-23', '2025-05', 14, '2025-05-23 22:03:03'),
(547, 'TR00310', 161, 'BR150', NULL, NULL, 'Silverqueen Bites 30 g', 8300, 10500, 1, 0, 10500, '2025-05-23', '2025-05', 14, '2025-05-23 22:03:03'),
(548, 'TR00311', 76, 'BR065', NULL, NULL, 'Drg. Windy Pudot Coffee Jelly', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:03:38'),
(549, 'TR00311', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:03:38'),
(550, 'TR00311', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:03:38'),
(551, 'TR00312', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:04:03'),
(552, 'TR00312', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:04:03'),
(553, 'TR00313', 128, 'BR117', NULL, NULL, 'Nia Farmasi Kacang', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 22:04:34'),
(554, 'TR00313', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:04:34'),
(555, 'TR00313', 99, 'BR088', NULL, NULL, 'Hana Makaroni', 5000, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:04:34'),
(556, 'TR00314', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:04:57'),
(557, 'TR00314', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:04:57'),
(558, 'TR00315', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:05:11'),
(559, 'TR00316', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:06:14'),
(560, 'TR00316', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:06:14'),
(561, 'TR00316', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:06:14'),
(562, 'TR00317', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:06:43'),
(563, 'TR00318', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-23', '2025-05', 14, '2025-05-23 22:06:59'),
(564, 'TR00319', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 22:07:13'),
(565, 'TR00320', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 3, 0, 10500, '2025-05-23', '2025-05', 14, '2025-05-23 22:08:18'),
(566, 'TR00320', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:08:18'),
(567, 'TR00320', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 6, 0, 30000, '2025-05-23', '2025-05', 14, '2025-05-23 22:08:18'),
(568, 'TR00321', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-23', '2025-05', 14, '2025-05-23 22:08:32'),
(569, 'TR00322', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:08:51'),
(570, 'TR00322', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:08:51'),
(571, 'TR00323', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 22:09:24'),
(572, 'TR00323', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-23', '2025-05', 14, '2025-05-23 22:09:24'),
(573, 'TR00323', 176, 'BR165', NULL, NULL, 'Usus Keripik', 8500, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:09:24'),
(574, 'TR00324', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:09:39'),
(575, 'TR00325', 115, 'BR104', NULL, NULL, 'Materai', 10000, 12000, 1, 0, 12000, '2025-05-23', '2025-05', 14, '2025-05-23 22:09:57'),
(576, 'TR00326', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:10:09'),
(577, 'TR00327', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:10:28'),
(578, 'TR00327', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:10:28'),
(579, 'TR00328', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-23', '2025-05', 14, '2025-05-23 22:10:44'),
(580, 'TR00329', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:11:38'),
(581, 'TR00329', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:11:38'),
(582, 'TR00330', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 22:12:31'),
(583, 'TR00330', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 4, 0, 20000, '2025-05-23', '2025-05', 14, '2025-05-23 22:12:31'),
(584, 'TR00331', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 3, 0, 15000, '2025-05-23', '2025-05', 14, '2025-05-23 22:12:44'),
(585, 'TR00332', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:13:01'),
(586, 'TR00333', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:13:20'),
(587, 'TR00333', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:13:20'),
(588, 'TR00334', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 22:13:46'),
(589, 'TR00334', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:13:46'),
(590, 'TR00334', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 2, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 22:13:46'),
(591, 'TR00335', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:14:15'),
(592, 'TR00335', 185, 'BR00185', NULL, NULL, 'Ratna Agar-agar Santan Puding Potong', 3000, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 22:14:15'),
(593, 'TR00336', 152, 'BR141', NULL, NULL, 'Ratna Keripik Tempe 250 g', 16000, 18500, 1, 0, 18500, '2025-05-23', '2025-05', 14, '2025-05-23 22:14:29'),
(594, 'TR00337', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:14:45'),
(595, 'TR00337', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:14:45'),
(596, 'TR00338', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:14:59'),
(597, 'TR00339', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:15:09'),
(598, 'TR00340', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 22:15:20'),
(599, 'TR00341', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 22:16:18'),
(600, 'TR00342', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:17:23'),
(601, 'TR00342', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 22:17:23'),
(602, 'TR00343', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:18:00'),
(603, 'TR00344', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:18:13'),
(604, 'TR00345', 128, 'BR117', NULL, NULL, 'Nia Farmasi Kacang', 13000, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 22:18:35'),
(605, 'TR00346', 153, 'BR142', NULL, NULL, 'Ratna Marning 250 g', 11500, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 22:19:06'),
(606, 'TR00347', 104, 'BR093', NULL, NULL, 'Hydro Coco 250 ml', 6600, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 22:19:45'),
(607, 'TR00348', 76, 'BR065', NULL, NULL, 'Drg. Windy Pudot Coffee Jelly', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:20:21'),
(608, 'TR00349', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 1, 0, 3500, '2025-05-23', '2025-05', 14, '2025-05-23 22:21:04'),
(609, 'TR00349', 152, 'BR141', NULL, NULL, 'Ratna Keripik Tempe 250 g', 16000, 18500, 1, 0, 18500, '2025-05-23', '2025-05', 14, '2025-05-23 22:21:04'),
(610, 'TR00349', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:21:04'),
(611, 'TR00350', 99, 'BR088', NULL, NULL, 'Hana Makaroni', 5000, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:21:28'),
(612, 'TR00350', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 1, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 22:21:28'),
(613, 'TR00351', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:22:01'),
(614, 'TR00351', 26, 'BR015', NULL, NULL, 'Beng-beng Wafer 25 g', 2200, 3500, 2, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 22:22:01'),
(615, 'TR00352', 188, 'BR00188', NULL, NULL, 'drg. Windy Kopi Adventure', 15000, 16000, 1, 0, 16000, '2025-05-23', '2025-05', 14, '2025-05-23 22:27:08'),
(616, 'TR00353', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:27:23'),
(617, 'TR00354', 168, 'BR157', NULL, NULL, 'Teh Kotak 300 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:27:42'),
(618, 'TR00355', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:28:05'),
(619, 'TR00355', 38, 'BR027', NULL, NULL, 'Cimory Bites Yoghurt 120 g', 8500, 12000, 1, 0, 12000, '2025-05-23', '2025-05', 14, '2025-05-23 22:28:05'),
(620, 'TR00356', 152, 'BR141', NULL, NULL, 'Ratna Keripik Tempe 250 g', 16000, 18500, 1, 0, 18500, '2025-05-23', '2025-05', 14, '2025-05-23 22:28:16'),
(621, 'TR00357', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:28:39'),
(622, 'TR00357', 150, 'BR139', NULL, NULL, 'Pudji Kunyit Asem ', 10000, 11000, 1, 0, 11000, '2025-05-23', '2025-05', 14, '2025-05-23 22:28:39'),
(623, 'TR00358', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:28:52'),
(624, 'TR00359', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 22:29:04'),
(625, 'TR00360', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 2, 0, 16000, '2025-05-23', '2025-05', 14, '2025-05-23 22:29:55'),
(626, 'TR00360', 65, 'BR054', NULL, NULL, 'dr. Nunik Botok', 6000, 7000, 4, 0, 28000, '2025-05-23', '2025-05', 14, '2025-05-23 22:29:55'),
(627, 'TR00361', 153, 'BR142', NULL, NULL, 'Ratna Marning 250 g', 11500, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 22:30:15'),
(628, 'TR00361', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:30:15'),
(629, 'TR00362', 152, 'BR141', NULL, NULL, 'Ratna Keripik Tempe 250 g', 16000, 18500, 1, 0, 18500, '2025-05-23', '2025-05', 14, '2025-05-23 22:30:40'),
(630, 'TR00362', 173, 'BR162', NULL, NULL, 'Ultra Sari Asem 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:30:40'),
(631, 'TR00363', 115, 'BR104', NULL, NULL, 'Materai', 10000, 12000, 5, 0, 60000, '2025-05-23', '2025-05', 14, '2025-05-23 22:32:05'),
(632, 'TR00364', 153, 'BR142', NULL, NULL, 'Ratna Marning 250 g', 11500, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 22:35:50'),
(633, 'TR00364', 173, 'BR162', NULL, NULL, 'Ultra Sari Asem 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:35:50'),
(634, 'TR00364', 37, 'BR026', NULL, NULL, 'Choki-choki', 900, 1500, 2, 0, 3000, '2025-05-23', '2025-05', 14, '2025-05-23 22:35:50'),
(635, 'TR00365', 89, 'BR078', NULL, NULL, 'Garuda Kacang 60 g', 5300, 7500, 1, 0, 7500, '2025-05-23', '2025-05', 14, '2025-05-23 22:36:06'),
(636, 'TR00366', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:36:44'),
(637, 'TR00366', 115, 'BR104', NULL, NULL, 'Materai', 10000, 12000, 1, 0, 12000, '2025-05-23', '2025-05', 14, '2025-05-23 22:36:44'),
(638, 'TR00367', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:37:04'),
(639, 'TR00367', 108, 'BR097', NULL, NULL, 'Kusuka Keripik BBQ Balado Rumput Laut 60 g', 5700, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:37:04'),
(640, 'TR00368', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:37:37'),
(641, 'TR00369', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 22:37:57'),
(642, 'TR00369', 153, 'BR142', NULL, NULL, 'Ratna Marning 250 g', 11500, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 22:37:57'),
(643, 'TR00370', 100, 'BR089', NULL, NULL, 'Hana Roti', 8000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 22:38:09'),
(644, 'TR00371', 45, 'BR034', NULL, NULL, 'Clean Plus Tissue', 5500, 7500, 1, 0, 7500, '2025-05-23', '2025-05', 14, '2025-05-23 22:38:23'),
(645, 'TR00372', 60, 'BR049', NULL, NULL, 'Defy Tape Uli', 23000, 24000, 1, 0, 24000, '2025-05-23', '2025-05', 14, '2025-05-23 22:38:38'),
(646, 'TR00373', 60, 'BR049', NULL, NULL, 'Defy Tape Uli', 23000, 24000, 1, 0, 24000, '2025-05-23', '2025-05', 14, '2025-05-23 22:38:51'),
(647, 'TR00374', 154, 'BR143', NULL, NULL, 'Ratna Pastel Onde Pie Martabak Risol', 4000, 5000, 1, 0, 5000, '2025-05-23', '2025-05', 14, '2025-05-23 22:39:10'),
(648, 'TR00375', 173, 'BR162', NULL, NULL, 'Ultra Sari Asem 250 ml', 5500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:39:47'),
(649, 'TR00376', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:40:02'),
(650, 'TR00377', 115, 'BR104', NULL, NULL, 'Materai', 10000, 12000, 2, 0, 24000, '2025-05-23', '2025-05', 14, '2025-05-23 22:40:22'),
(651, 'TR00378', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 3, 0, 12000, '2025-05-23', '2025-05', 14, '2025-05-23 22:41:00'),
(652, 'TR00379', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 3, 0, 13500, '2025-05-23', '2025-05', 14, '2025-05-23 22:41:37'),
(653, 'TR00379', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:41:37'),
(654, 'TR00380', 55, 'BR044', NULL, NULL, 'Defy Lapis Lemper Bugis', 3000, 3500, 2, 0, 7000, '2025-05-23', '2025-05', 14, '2025-05-23 22:42:16'),
(655, 'TR00380', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 4, 0, 18000, '2025-05-23', '2025-05', 14, '2025-05-23 22:42:16'),
(656, 'TR00381', 55, 'BR044', NULL, NULL, 'Defy Lapis Lemper Bugis', 3000, 3500, 3, 0, 10500, '2025-05-23', '2025-05', 14, '2025-05-23 22:43:11'),
(657, 'TR00381', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 5, 0, 22500, '2025-05-23', '2025-05', 14, '2025-05-23 22:43:11'),
(658, 'TR00382', 24, 'BR013', NULL, NULL, 'Azmi Roti Goreng Pastel', 3500, 4500, 3, 0, 13500, '2025-05-23', '2025-05', 14, '2025-05-23 22:43:26'),
(659, 'TR00383', 24, 'BR013', NULL, NULL, 'Azmi Roti Goreng Pastel', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 22:43:46'),
(660, 'TR00383', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:43:46'),
(661, 'TR00384', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 4, 0, 18000, '2025-05-23', '2025-05', 14, '2025-05-23 22:45:00'),
(662, 'TR00384', 24, 'BR013', NULL, NULL, 'Azmi Roti Goreng Pastel', 3500, 4500, 2, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 22:45:00'),
(663, 'TR00384', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:45:00'),
(664, 'TR00385', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:45:15'),
(665, 'TR00386', 24, 'BR013', NULL, NULL, 'Azmi Roti Goreng Pastel', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 22:45:31'),
(666, 'TR00386', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 22:45:31'),
(667, 'TR00387', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 22:45:53'),
(668, 'TR00388', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:46:20'),
(669, 'TR00388', 76, 'BR065', NULL, NULL, 'Drg. Windy Pudot Coffee Jelly', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:46:20'),
(670, 'TR00388', 24, 'BR013', NULL, NULL, 'Azmi Roti Goreng Pastel', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 22:46:20'),
(671, 'TR00389', 188, 'BR00188', NULL, NULL, 'drg. Windy Kopi Adventure', 15000, 16000, 1, 0, 16000, '2025-05-23', '2025-05', 14, '2025-05-23 22:46:38'),
(672, 'TR00390', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:46:50'),
(673, 'TR00391', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:47:02'),
(674, 'TR00392', 104, 'BR093', NULL, NULL, 'Hydro Coco 250 ml', 6600, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 22:47:12'),
(675, 'TR00393', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:47:26'),
(676, 'TR00394', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:47:40'),
(677, 'TR00395', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 22:47:58'),
(678, 'TR00395', 24, 'BR013', NULL, NULL, 'Azmi Roti Goreng Pastel', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 22:47:58'),
(679, 'TR00396', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 2, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:48:26'),
(680, 'TR00397', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:48:49'),
(681, 'TR00397', 167, 'BR156', NULL, NULL, 'Teh Botol Pet 350 ml', 3500, 6000, 1, 0, 6000, '2025-05-23', '2025-05', 14, '2025-05-23 22:48:49'),
(682, 'TR00397', 24, 'BR013', NULL, NULL, 'Azmi Roti Goreng Pastel', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 22:48:49'),
(683, 'TR00398', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 3, 0, 12000, '2025-05-23', '2025-05', 14, '2025-05-23 22:49:05'),
(684, 'TR00399', 116, 'BR105', NULL, NULL, 'Mertha Taso', 4000, 5000, 2, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:49:29'),
(685, 'TR00399', 41, 'BR030', NULL, NULL, 'Cimory Susu All Varian', 6000, 8500, 1, 0, 8500, '2025-05-23', '2025-05', 14, '2025-05-23 22:49:29'),
(686, 'TR00400', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:49:45'),
(687, 'TR00401', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:50:03'),
(688, 'TR00402', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:50:25'),
(689, 'TR00403', 137, 'BR126', NULL, NULL, 'Oishi Sponge 100 g', 12500, 15000, 1, 0, 15000, '2025-05-23', '2025-05', 14, '2025-05-23 22:51:21'),
(690, 'TR00404', 56, 'BR045', NULL, NULL, 'Defy Lontong Risol Bakwan', 3500, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:51:38'),
(691, 'TR00405', 62, 'BR051', NULL, NULL, 'Defy Donat Kentang Singkong Thailand', 9000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:51:59'),
(692, 'TR00406', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 1, 0, 4500, '2025-05-23', '2025-05', 14, '2025-05-23 22:52:19'),
(693, 'TR00406', 104, 'BR093', NULL, NULL, 'Hydro Coco 250 ml', 6600, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 22:52:19'),
(694, 'TR00407', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:52:44'),
(695, 'TR00407', 153, 'BR142', NULL, NULL, 'Ratna Marning 250 g', 11500, 14000, 1, 0, 14000, '2025-05-23', '2025-05', 14, '2025-05-23 22:52:44'),
(696, 'TR00408', 39, 'BR028', NULL, NULL, 'Cimory Drink', 7500, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:52:58'),
(697, 'TR00409', 48, 'BR037', NULL, NULL, 'Crystalin Kecil 600 ml', 2000, 4000, 1, 0, 4000, '2025-05-23', '2025-05', 14, '2025-05-23 22:53:11'),
(698, 'TR00410', 175, 'BR164', NULL, NULL, 'Ultra Susu All Varian 250 ml', 6500, 9000, 1, 0, 9000, '2025-05-23', '2025-05', 14, '2025-05-23 22:53:26'),
(699, 'TR00411', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:53:36');
INSERT INTO `penjualan_detail` (`id`, `no_trx`, `id_barang`, `idb`, `id_supplier`, `nama_supplier`, `nama_barang`, `beli`, `jual`, `qty`, `diskon`, `total`, `tgl_input`, `periode`, `id_member`, `created_at`) VALUES
(700, 'TR00412', 133, 'BR122', NULL, NULL, 'Oatside All Varian 200 ml', 8000, 10000, 1, 0, 10000, '2025-05-23', '2025-05', 14, '2025-05-23 22:53:55'),
(701, 'TR00412', 139, 'BR128', NULL, NULL, 'Panda Cincau 310 ml', 5600, 8000, 1, 0, 8000, '2025-05-23', '2025-05', 14, '2025-05-23 22:53:55');

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
(1, 'KOPERASI KARYADHIKA MEDIKA', 'Jl. Raya Bekasi Timur No.170 B 8, RT.8/RW.14, Cipinang Besar Utara, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450', '-', 'KARYADHIKA', '1747666346.png');

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
(1, 'Super Admin', 'superadmin@gmail.com', '0', '-', '1747665884.jpg', 'superadmin', '$2y$10$VwymocdMehQU5gu3vOgP1.kotE1RcGVCi0VAaOx0vR4u0ZcYFFUAe', '1', '1', '2025-05-22 09:33:21'),
(3, 'kasir', 'kasir@gmail.com', '081234567890', 'Kudus', '1746116515.jpg', 'kasir', '$2y$10$l2HFPvl3Rz55gVYX842a5.5jo/BFxkVfkOsfB0dcxx5IQxnLfgxYq', '5', '1', '2025-05-01 23:21:55'),
(11, 'Gudang', 'gudang@gmail.com', '', '', 'avatar.jpg', 'gudang', '$2y$10$wFReLl/FUQcs6uqvhY4UZueUAg0VLmg9l7ciAEwasOJrousIPLfAW', '6', '1', '2025-05-01 23:17:46'),
(13, 'Defy Machmudah', NULL, NULL, NULL, 'avatar.jpg', 'defy', '$2y$10$ruzSeKrvksEoxmXCl/LGoe8UyodClRFWXqXSCnTTaQfLma7C51IiC', '5', '1', '2025-05-22 09:21:39'),
(14, 'Ratna Sartika', NULL, NULL, NULL, 'avatar.jpg', 'ratna', '$2y$10$O.BofwKiFBcCCKt.oDmGOO85fIHCRrtE4sr7CoCbwRTtfqZuOR6wC', '1', '1', '2025-05-22 09:22:07'),
(15, 'Herlan Hermansyah', NULL, NULL, NULL, 'avatar.jpg', 'herlan', '$2y$10$HEOsyD.L3NR1n53nyWZIeeMZjCfot/WyItspatKHK6QMa9kYA8tsy', '1', '1', '2025-05-22 09:22:33');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=725;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
