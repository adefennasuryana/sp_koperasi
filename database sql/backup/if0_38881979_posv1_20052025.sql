-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql311.infinityfree.com
-- Generation Time: May 20, 2025 at 05:10 AM
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
(15, 'BR004', NULL, 3, NULL, 'Ade Cookies Cheese Lotus', '-', 12500, 13500, 'PCS', 998, '2025-05-20', NULL),
(16, 'BR005', NULL, 3, NULL, 'Ade Cookies Matcha Red Velvet Chocco', '-', 10500, 11500, 'PCS', 993, '2025-05-20', '2025-05-20'),
(17, 'BR006', NULL, 3, NULL, 'Ade Cookies Smores', '-', 11000, 12000, 'PCS', 1000, '2025-05-20', NULL),
(18, 'BR007', NULL, 3, NULL, 'Agar-agar Santan', '-', 3500, 4000, 'PCS', 1000, '2025-05-20', NULL),
(19, 'BR008', NULL, 3, NULL, 'Akio Cistik Keripik Bawang', '-', 18000, 20000, 'PCS', 1000, '2025-05-20', NULL),
(20, 'BR009', NULL, 3, NULL, 'Akio Kacang Kecil', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(21, 'BR010', NULL, 3, NULL, 'Akio Snack Kacang Campur', '-', 13000, 15000, 'PCS', 1000, '2025-05-20', NULL),
(22, 'BR011', NULL, 3, NULL, 'Aqua 1,5 L', '-', 4500, 8000, 'PCS', 997, '2025-05-20', NULL),
(23, 'BR012', NULL, 3, NULL, 'Astor Singles', '-', 1000, 2000, 'PCS', 1000, '2025-05-20', NULL),
(24, 'BR013', NULL, 3, NULL, 'Azmi Roti Goreng Pastel', '-', 3500, 4500, 'PCS', 1000, '2025-05-20', NULL),
(25, 'BR014', NULL, 3, NULL, 'Bella Lanting', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(26, 'BR015', NULL, 3, NULL, 'Beng-beng Wafer 25 g', '-', 2200, 3500, 'PCS', 1000, '2025-05-20', NULL),
(27, 'BR016', NULL, 3, NULL, 'Bintari Cheese Stick', '-', 28000, 30000, 'PCS', 1000, '2025-05-20', NULL),
(28, 'BR017', NULL, 3, NULL, 'Bintari Kue Cincin', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(29, 'BR018', NULL, 3, NULL, 'Biokul Yoghurt 80 g', '-', 5500, 7500, 'PCS', 996, '2025-05-20', NULL),
(30, 'BR019', NULL, 3, NULL, 'Biore Sabun Mandi 100 ml', '-', 10000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(31, 'BR020', NULL, 3, NULL, 'Cappucino Indocafe Sachet', '-', 2000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(32, 'BR021', NULL, 3, NULL, 'Charm Night Renceng ', '-', 2800, 4000, 'PCS', 1000, '2025-05-20', NULL),
(33, 'BR022', NULL, 3, NULL, 'Charm Wing Oranye Renceng ', '-', 1500, 2500, 'PCS', 1000, '2025-05-20', NULL),
(34, 'BR023', NULL, 3, NULL, 'Chiki Balls 55 g', '-', 6000, 8000, 'PCS', 1000, '2025-05-20', NULL),
(35, 'BR024', NULL, 3, NULL, 'Chitato Sapi Panggang 35 g', '-', 5600, 7500, 'PCS', 999, '2025-05-20', NULL),
(36, 'BR025', NULL, 3, NULL, 'Chocopie 26 g', '-', 2800, 4000, 'PCS', 1000, '2025-05-20', NULL),
(37, 'BR026', NULL, 3, NULL, 'Choki-choki', '-', 900, 1500, 'PCS', 1000, '2025-05-20', NULL),
(38, 'BR027', NULL, 3, NULL, 'Cimory Bites Yoghurt 120 g', '-', 8500, 12000, 'PCS', 999, '2025-05-20', NULL),
(39, 'BR028', NULL, 3, NULL, 'Cimory Drink', '-', 7500, 10000, 'PCS', 995, '2025-05-20', NULL),
(40, 'BR029', NULL, 3, NULL, 'Cimory Squeeze Yoghurt 120 g', '-', 8200, 10500, 'PCS', 1000, '2025-05-20', NULL),
(41, 'BR030', NULL, 3, NULL, 'Cimory Susu All Varian', '-', 6000, 8500, 'PCS', 1000, '2025-05-20', NULL),
(42, 'BR031', NULL, 3, NULL, 'Citra Bihun Mie Goreng', '-', 18000, 19000, 'PCS', 1000, '2025-05-20', NULL),
(43, 'BR032', NULL, 3, NULL, 'Citra Bomboloni ', '-', 13000, 14000, 'PCS', 1000, '2025-05-20', NULL),
(44, 'BR033', NULL, 3, NULL, 'Citra Nasi Jinggo', '-', 15000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(45, 'BR034', NULL, 3, NULL, 'Clean Plus Tissue', '-', 5500, 7500, 'PCS', 998, '2025-05-20', NULL),
(46, 'BR035', NULL, 3, NULL, 'Coffee Adventure Mamandy', '-', 15000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(47, 'BR036', NULL, 3, NULL, 'Crystalin Besar 1,5 L', '-', 4200, 8000, 'PCS', 995, '2025-05-20', NULL),
(48, 'BR037', NULL, 3, NULL, 'Crystalin Kecil 600 ml', '-', 2000, 4000, 'PCS', 992, '2025-05-20', NULL),
(49, 'BR038', NULL, 3, NULL, 'Darlung Martabak Piscok', '-', 3000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(50, 'BR039', NULL, 3, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', '-', 3500, 4500, 'PCS', 978, '2025-05-20', '2025-05-20'),
(51, 'BR040', NULL, 3, NULL, 'Defy Bubur Ayam', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(52, 'BR041', NULL, 3, NULL, 'Defy Dimsum/Lumpia', '-', 16000, 17000, 'PCS', 1000, '2025-05-20', NULL),
(53, 'BR042', NULL, 3, NULL, 'Defy Kolak', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(54, 'BR043', NULL, 3, NULL, 'Defy Kue Basah', '-', 3000, 3500, 'PCS', 1000, '2025-05-20', NULL),
(55, 'BR044', NULL, 3, NULL, 'Defy Lapis Lemper Bugis', '-', 3000, 3500, 'PCS', 1000, '2025-05-20', '2025-05-20'),
(56, 'BR045', NULL, 3, NULL, 'Defy Lontong Risol Bakwan', '-', 3500, 4000, 'PCS', 977, '2025-05-20', NULL),
(57, 'BR046', NULL, 3, NULL, 'Defy Lupis', '-', 8000, 9000, 'PCS', 1000, '2025-05-20', NULL),
(58, 'BR047', NULL, 3, NULL, 'Defy Mayonaise Pepe Pia', '-', 4500, 5500, 'PCS', 995, '2025-05-20', NULL),
(59, 'BR048', NULL, 3, NULL, 'Defy Nasi Kuning Uduk Ulam', '-', 14000, 15000, 'PCS', 1000, '2025-05-20', NULL),
(60, 'BR049', NULL, 3, NULL, 'Defy Tape Uli', '-', 23000, 24000, 'PCS', 997, '2025-05-20', NULL),
(61, 'BR050', NULL, 3, NULL, 'Dilan Choco 23 g', '-', 1700, 2500, 'PCS', 1000, '2025-05-20', NULL),
(62, 'BR051', NULL, 3, NULL, 'Defy Donat Kentang Singkong Thailand', '-', 9000, 10000, 'PCS', 998, '2025-05-20', '2025-05-20'),
(63, 'BR052', NULL, 3, NULL, 'Donat Meses', '-', 5000, 6000, 'PCS', 1000, '2025-05-20', NULL),
(64, 'BR053', NULL, 3, NULL, 'Dr. Alima Granola', '-', 60000, 65000, 'PCS', 1000, '2025-05-20', NULL),
(65, 'BR054', NULL, 3, NULL, 'dr. Nunik Botok', '-', 6000, 7000, 'PCS', 994, '2025-05-20', NULL),
(66, 'BR055', NULL, 3, NULL, 'Dr. Nunik Brownies Besar', '-', 27000, 29000, 'PCS', 1000, '2025-05-20', NULL),
(67, 'BR056', NULL, 3, NULL, 'dr. Nunik Brownies Kecil', '-', 4500, 5500, 'PCS', 987, '2025-05-20', NULL),
(68, 'BR057', NULL, 3, NULL, 'Dr. Nunik Muffin', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(69, 'BR058', NULL, 3, NULL, 'Dr. Nunik Nasi Putih', '-', 3000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(70, 'BR059', NULL, 3, NULL, 'Dr. Nunik Pecel Urap', '-', 7000, 8000, 'PCS', 989, '2025-05-20', '2025-05-20'),
(71, 'BR060', NULL, 3, NULL, 'Drg. Windy Klappertaart', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(72, 'BR061', NULL, 3, NULL, 'Drg. Windy Lumpur', '-', 7000, 8000, 'PCS', 1000, '2025-05-20', NULL),
(73, 'BR062', NULL, 3, NULL, 'Drg. Windy Maccheese', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(74, 'BR063', NULL, 3, NULL, 'Drg. Windy Puding Buko Coklat', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(75, 'BR064', NULL, 3, NULL, 'Drg. Windy Puding Ekonomis', '-', 8500, 9500, 'PCS', 1000, '2025-05-20', NULL),
(76, 'BR065', NULL, 3, NULL, 'Drg. Windy Pudot Coffee Jelly', '-', 9000, 10000, 'PCS', 1000, '2025-05-20', NULL),
(77, 'BR066', NULL, 3, NULL, 'Drg. Windy Soes', '-', 7000, 8000, 'PCS', 1000, '2025-05-20', NULL),
(78, 'BR067', NULL, 3, NULL, 'Drg. Windy Spaghetti', '-', 12500, 13500, 'PCS', 1000, '2025-05-20', NULL),
(79, 'BR068', NULL, 3, NULL, 'Drg. Windy Tahu Telur', '-', 3000, 3500, 'PCS', 1000, '2025-05-20', NULL),
(80, 'BR069', NULL, 3, NULL, 'Eci Basreng', '-', 4000, 5000, 'PCS', 1000, '2025-05-20', NULL),
(81, 'BR070', NULL, 3, NULL, 'Eci Cheese Stick Jumbo', '-', 14000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(82, 'BR071', NULL, 3, NULL, 'Eci Cheese Stick Reguler', '-', 7500, 8500, 'PCS', 1000, '2025-05-20', NULL),
(83, 'BR072', NULL, 3, NULL, 'Eci Salad', '-', 16000, 17000, 'PCS', 1000, '2025-05-20', NULL),
(84, 'BR073', NULL, 3, NULL, 'Fanny Puding', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(85, 'BR074', NULL, 3, NULL, 'Fanny Silverqueen Puding', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(86, 'BR075', NULL, 3, NULL, 'French Fries 62 g', '-', 7300, 9500, 'PCS', 999, '2025-05-20', NULL),
(87, 'BR076', NULL, 3, NULL, 'Freshcare', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(88, 'BR077', NULL, 3, NULL, 'Garuda Atom All Varian 100 g', '-', 9000, 11000, 'PCS', 999, '2025-05-20', NULL),
(89, 'BR078', NULL, 3, NULL, 'Garuda Kacang 60 g', '-', 5300, 7500, 'PCS', 999, '2025-05-20', NULL),
(90, 'BR079', NULL, 3, NULL, 'Garuda Pilus 96 g', '-', 5800, 8000, 'PCS', 1000, '2025-05-20', NULL),
(91, 'BR080', NULL, 3, NULL, 'Garuda Rosta 95 g', '-', 8800, 11500, 'PCS', 1000, '2025-05-20', NULL),
(92, 'BR081', NULL, 3, NULL, 'Gery Chocolatos', '-', 500, 1000, 'PCS', 1000, '2025-05-20', NULL),
(93, 'BR082', NULL, 3, NULL, 'Getuk', '-', 7000, 8000, 'PCS', 1000, '2025-05-20', NULL),
(94, 'BR083', NULL, 3, NULL, 'Gina Donat Paha Ayam', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(95, 'BR084', NULL, 3, NULL, 'Go Potato 60 g', '-', 4500, 6000, 'PCS', 1000, '2025-05-20', NULL),
(96, 'BR085', NULL, 3, NULL, 'Good Day Botol 250 ml', '-', 5500, 8000, 'PCS', 999, '2025-05-20', NULL),
(97, 'BR086', NULL, 3, NULL, 'Good Day Moccachino Sachet', '-', 2000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(98, 'BR087', NULL, 3, NULL, 'Good Time 26 g', '-', 1700, 2500, 'PCS', 1000, '2025-05-20', NULL),
(99, 'BR088', NULL, 3, NULL, 'Hana Makaroni', '-', 5000, 6000, 'PCS', 997, '2025-05-20', NULL),
(100, 'BR089', NULL, 3, NULL, 'Hana Roti', '-', 8000, 8500, 'PCS', 995, '2025-05-20', NULL),
(101, 'BR090', NULL, 3, NULL, 'Hana Roti Bantal', '-', 12000, 13000, 'PCS', 1000, '2025-05-20', NULL),
(102, 'BR091', NULL, 3, NULL, 'Happytos 140 g', '-', 11500, 14000, 'PCS', 1000, '2025-05-20', NULL),
(103, 'BR092', NULL, 3, NULL, 'Hello Panda 42g', '-', 8000, 10000, 'PCS', 1000, '2025-05-20', NULL),
(104, 'BR093', NULL, 3, NULL, 'Hydro Coco 250 ml', '-', 6600, 9000, 'PCS', 999, '2025-05-20', NULL),
(105, 'BR094', NULL, 3, NULL, 'Indocafe Coffeemix Sachet', '-', 1700, 4000, 'PCS', 1000, '2025-05-20', NULL),
(106, 'BR095', NULL, 3, NULL, 'Khong Guan Saltcheese', '-', 12000, 15000, 'PCS', 1000, '2025-05-20', NULL),
(107, 'BR096', NULL, 3, NULL, 'Kusuka Emping 40 g', '-', 9500, 11500, 'PCS', 1000, '2025-05-20', NULL),
(108, 'BR097', NULL, 3, NULL, 'Kusuka Keripik BBQ Balado Rumput Laut 60 g', '-', 5700, 8000, 'PCS', 999, '2025-05-20', NULL),
(109, 'BR098', NULL, 3, NULL, 'Laurier Pack isi 10', '-', 8000, 10000, 'PCS', 1000, '2025-05-20', NULL),
(110, 'BR099', NULL, 3, NULL, 'Laurier Renceng', '-', 700, 2000, 'PCS', 1000, '2025-05-20', NULL),
(111, 'BR100', NULL, 3, NULL, 'Laurier Renceng Wing', '-', 1000, 2000, 'PCS', 1000, '2025-05-20', NULL),
(112, 'BR101', NULL, 3, NULL, 'Le Minerale 600 ml', '-', 2000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(113, 'BR102', NULL, 3, NULL, 'Le Minerale Galon', '-', 18500, 25000, 'PCS', 1000, '2025-05-20', NULL),
(114, 'BR103', NULL, 3, NULL, 'Lifebuoy Botol', '-', 14000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(115, 'BR104', NULL, 3, NULL, 'Materai', '-', 10000, 12000, 'PCS', 1000, '2025-05-20', NULL),
(116, 'BR105', NULL, 3, NULL, 'Mertha Taso', '-', 4000, 5000, 'PCS', 990, '2025-05-20', NULL),
(117, 'BR106', NULL, 3, NULL, 'Mogu Mogu 320 ml', '-', 12000, 14000, 'PCS', 999, '2025-05-20', NULL),
(118, 'BR107', NULL, 3, NULL, 'Monde Bourbon 140 g', '-', 9500, 12000, 'PCS', 1000, '2025-05-20', NULL),
(119, 'BR108', NULL, 3, NULL, 'Monde Butter Cookies', '-', 20000, 23000, 'PCS', 1000, '2025-05-20', NULL),
(120, 'BR109', NULL, 3, NULL, 'Monde Eggdrop 110 g', '-', 7500, 10000, 'PCS', 1000, '2025-05-20', NULL),
(121, 'BR110', NULL, 3, NULL, 'Monde Eggroll 168 g', '-', 25000, 28000, 'PCS', 1000, '2025-05-20', NULL),
(122, 'BR111', NULL, 3, NULL, 'Monde Fried Cookies 200 g', '-', 16000, 19000, 'PCS', 1000, '2025-05-20', NULL),
(123, 'BR112', NULL, 3, NULL, 'Monde Genji Raisin Pie 70 g', '-', 9600, 13000, 'PCS', 1000, '2025-05-20', NULL),
(124, 'BR113', NULL, 3, NULL, 'Monde Snack 60 g', '-', 5000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(125, 'BR114', NULL, 3, NULL, 'Nabati Richeese Richoco Wafer 37 g', '-', 1700, 2500, 'PCS', 1000, '2025-05-20', NULL),
(126, 'BR115', NULL, 3, NULL, 'Nia Farmasi Basreng', '-', 8000, 9000, 'PCS', 1000, '2025-05-20', NULL),
(127, 'BR116', NULL, 3, NULL, 'Nia Farmasi Cheestick Soes', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(128, 'BR117', NULL, 3, NULL, 'Nia Farmasi Kacang', '-', 13000, 14000, 'PCS', 1000, '2025-05-20', NULL),
(129, 'BR118', NULL, 3, NULL, 'Nia Farmasi Lumpia', '-', 13000, 14000, 'PCS', 1000, '2025-05-20', NULL),
(130, 'BR119', NULL, 3, NULL, 'Nia Rumah Kopi', '-', 17000, 18000, 'PCS', 1000, '2025-05-20', NULL),
(131, 'BR120', NULL, 3, NULL, 'Nipis Madu 330 ml', '-', 4500, 6000, 'PCS', 1000, '2025-05-20', NULL),
(132, 'BR121', NULL, 3, NULL, 'Nissin Sagu Keju 110 g', '-', 12000, 15000, 'PCS', 1000, '2025-05-20', NULL),
(133, 'BR122', NULL, 3, NULL, 'Oatside All Varian 200 ml', '-', 8000, 10000, 'PCS', 1000, '2025-05-20', NULL),
(134, 'BR123', NULL, 3, NULL, 'Oishi Kraker Udang 60 g', '-', 7200, 9500, 'PCS', 1000, '2025-05-20', NULL),
(135, 'BR124', NULL, 3, NULL, 'Oishi Pillows 100 g', '-', 11000, 13500, 'PCS', 1000, '2025-05-20', NULL),
(136, 'BR125', NULL, 3, NULL, 'Oishi Popcorn 100 g', '-', 15000, 17000, 'PCS', 1000, '2025-05-20', NULL),
(137, 'BR126', NULL, 3, NULL, 'Oishi Sponge 100 g', '-', 12500, 15000, 'PCS', 1000, '2025-05-20', NULL),
(138, 'BR127', NULL, 3, NULL, 'Oreo 27 g', '-', 2000, 3000, 'PCS', 1000, '2025-05-20', NULL),
(139, 'BR128', NULL, 3, NULL, 'Panda Cincau 310 ml', '-', 5600, 8000, 'PCS', 1000, '2025-05-20', NULL),
(140, 'BR129', NULL, 3, NULL, 'Pantene 70 ml', '-', 15400, 17500, 'PCS', 1000, '2025-05-20', NULL),
(141, 'BR130', NULL, 3, NULL, 'Permen Campur', '-', 500, 1000, 'PCS', 1000, '2025-05-20', NULL),
(142, 'BR131', NULL, 3, NULL, 'Peyek Dewi', '-', 20000, 22000, 'PCS', 1000, '2025-05-20', NULL),
(143, 'BR132', NULL, 3, NULL, 'Pia 100 Kacang Hijau 150 g', '-', 12000, 14000, 'PCS', 1000, '2025-05-20', NULL),
(144, 'BR133', NULL, 3, NULL, 'Piattos 68 g', '-', 9500, 11500, 'PCS', 998, '2025-05-20', NULL),
(145, 'BR134', NULL, 3, NULL, 'Plossa', '-', 10000, 12000, 'PCS', 1000, '2025-05-20', NULL),
(146, 'BR135', NULL, 3, NULL, 'Pocari Sweat 350 ml', '-', 5500, 8000, 'PCS', 1000, '2025-05-20', NULL),
(147, 'BR136', NULL, 3, NULL, 'Pocky Box 22 g', '-', 4000, 6000, 'PCS', 1000, '2025-05-20', NULL),
(148, 'BR137', NULL, 3, NULL, 'Popmie Ayam Bakso Kari 75 g', '-', 5000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(149, 'BR138', NULL, 3, NULL, 'Popmie Gledek 75 g', '-', 5300, 7500, 'PCS', 1000, '2025-05-20', NULL),
(150, 'BR139', NULL, 3, NULL, 'Pudji Kunyit Asem ', '-', 10000, 11000, 'PCS', 1000, '2025-05-20', NULL),
(151, 'BR140', NULL, 3, NULL, 'Putu Mayang Serabi', '-', 6000, 7000, 'PCS', 1000, '2025-05-20', NULL),
(152, 'BR141', NULL, 3, NULL, 'Ratna Keripik Tempe 250 g', '-', 16000, 18500, 'PCS', 999, '2025-05-20', NULL),
(153, 'BR142', NULL, 3, NULL, 'Ratna Marning 250 g', '-', 11500, 14000, 'PCS', 1000, '2025-05-20', NULL),
(154, 'BR143', NULL, 3, NULL, 'Ratna Pastel Onde Pie', '-', 4000, 5000, 'PCS', 1000, '2025-05-20', NULL),
(155, 'BR144', NULL, 3, NULL, 'Rebo Kuaci', '-', 14600, 17000, 'PCS', 999, '2025-05-20', NULL),
(156, 'BR145', NULL, 3, NULL, 'Roma Malkist 105 g', '-', 7500, 9500, 'PCS', 1000, '2025-05-20', NULL),
(157, 'BR146', NULL, 3, NULL, 'Roma Sari Gandum 108 g', '-', 9500, 12000, 'PCS', 1000, '2025-05-20', NULL),
(158, 'BR147', NULL, 3, NULL, 'RSD Coffee', '-', 15000, 16000, 'PCS', 1000, '2025-05-20', NULL),
(159, 'BR148', NULL, 3, NULL, 'RSD Matcha Choco', '-', 17000, 18000, 'PCS', 1000, '2025-05-20', NULL),
(160, 'BR149', NULL, 3, NULL, 'Selamat Wafer 12 g', '-', 1000, 2000, 'PCS', 1000, '2025-05-20', NULL),
(161, 'BR150', NULL, 3, NULL, 'Silverqueen Bites 30 g', '-', 8300, 10500, 'PCS', 1000, '2025-05-20', NULL),
(162, 'BR151', NULL, 3, NULL, 'Snap Superstar ', '-', 2000, 3000, 'PCS', 1000, '2025-05-20', NULL),
(163, 'BR152', NULL, 3, NULL, 'Suki Stick 95 g', '-', 7300, 10000, 'PCS', 1000, '2025-05-20', NULL),
(164, 'BR153', NULL, 3, NULL, 'Suky Udang 60 g', '-', 7200, 9500, 'PCS', 1000, '2025-05-20', NULL),
(165, 'BR154', NULL, 3, NULL, 'Superstar Wafer', '-', 1000, 2000, 'PCS', 1000, '2025-05-20', NULL),
(166, 'BR155', NULL, 3, NULL, 'Taro BBQ Rumput Laut 32 g', '-', 4600, 6000, 'PCS', 1000, '2025-05-20', NULL),
(167, 'BR156', NULL, 3, NULL, 'Teh Botol Pet 350 ml', '-', 3500, 6000, 'PCS', 998, '2025-05-20', NULL),
(168, 'BR157', NULL, 3, NULL, 'Teh Kotak 300 ml', '-', 3500, 6000, 'PCS', 1000, '2025-05-20', NULL),
(169, 'BR158', NULL, 3, NULL, 'Teh Pucuk', '-', 2500, 5000, 'PCS', 1000, '2025-05-20', NULL),
(170, 'BR159', NULL, 3, NULL, 'Thunder Delfi 36 g', '-', 7500, 9500, 'PCS', 1000, '2025-05-20', NULL),
(171, 'BR160', NULL, 3, NULL, 'Torabika Cappucino Sachet ', '-', 2500, 4000, 'PCS', 1000, '2025-05-20', NULL),
(172, 'BR161', NULL, 3, NULL, 'Ultra Low Fat 250 ml', '-', 7000, 9000, 'PCS', 1000, '2025-05-20', NULL),
(173, 'BR162', NULL, 3, NULL, 'Ultra Sari Asem 250 ml', '-', 5500, 8000, 'PCS', 1000, '2025-05-20', NULL),
(174, 'BR163', NULL, 3, NULL, 'Ultra SKI 250 ml', '-', 4200, 6500, 'PCS', 1000, '2025-05-20', NULL),
(175, 'BR164', NULL, 3, NULL, 'Ultra Susu All Varian 250 ml', '-', 6500, 9000, 'PCS', 998, '2025-05-20', NULL),
(176, 'BR165', NULL, 3, NULL, 'Usus Keripik', '-', 8500, 10000, 'PCS', 998, '2025-05-20', NULL),
(177, 'BR166', NULL, 3, NULL, 'Vegetable Cheese', '-', 3000, 4000, 'PCS', 1000, '2025-05-20', NULL),
(178, 'BR167', NULL, 3, NULL, 'Walens Soes Nissin 100 g', '-', 10000, 12500, 'PCS', 998, '2025-05-20', NULL),
(179, 'BR168', NULL, 3, NULL, 'Yakult', '-', 2500, 3500, 'PCS', 1000, '2025-05-20', NULL),
(180, 'BR169', NULL, 3, NULL, 'YouC 1000 140 ml', '-', 6500, 9000, 'PCS', 1000, '2025-05-20', NULL),
(181, 'BR00181', NULL, 4, NULL, 'Larutan', '-', 6200, 8000, 'PCS', 999, '2025-05-20', NULL),
(182, 'BR00182', NULL, 3, NULL, 'Ketan Uli Serundeng', '-', 10000, 11000, 'PCS', 997, '2025-05-20', NULL),
(183, 'BR00183', NULL, 3, NULL, 'Waffelo ', '-', 1000, 2000, 'PCS', 999, '2025-05-20', '2025-05-20'),
(184, 'BR00184', NULL, 4, NULL, 'Kopiko 78 240 ml', '-', 5000, 7500, 'PCS', 1000, '2025-05-20', NULL);

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
(5, 'PL004', 'Aep Suargana', '0', '0', '123@gmail.com', '2025-05-09 18:37:43', NULL),
(6, 'PL006', 'Mardoli', '123', '123', '123@gmail.com', '2025-05-20 18:57:07', NULL),
(7, 'PL007', 'dr. Nunik Rahayu', '123', '123', '123@gmail.com', '2025-05-20 18:59:08', NULL),
(8, 'PL008', 'dr. Lily Juheriah', '123', '123', '123@gmail.com', '2025-05-20 18:59:37', NULL),
(9, 'PL009', 'Sari Nur', '123', '123', '123@gmail.com', '2025-05-20 19:00:26', NULL),
(10, 'PL0010', 'Heny Kurniawaty', '123', '123', '123@gmail.com', '2025-05-20 19:04:55', NULL),
(11, 'PL0011', 'Rizka', '123', '123', '123@gmail.com', '2025-05-20 19:06:27', NULL),
(12, 'PL0012', 'Ervita', '123', '123', '123@gmail.com', '2025-05-20 19:07:05', NULL),
(13, 'PL0013', 'Parwitha IT', '123', '123', '123@gmail.com', '2025-05-20 19:07:59', NULL),
(14, 'PL0014', 'drg. Lily Wijayanti', '123', '123', '123@gmail.com', '2025-05-20 19:09:33', NULL),
(15, 'PL0015', 'Sri HCU', '123', '123', '123@gmail.com', '2025-05-20 19:12:23', NULL),
(16, 'PL0016', 'Ari Gumay', '123', '123', '123@gmail.com', '2025-05-20 19:13:11', NULL),
(17, 'PL0017', 'Zola', '123', '123', '123@gmail.com', '2025-05-20 19:13:48', NULL),
(18, 'PL0018', 'Sherly Alfazona', '123', '123', '123@gmail.com', '2025-05-20 19:14:44', NULL),
(19, 'PL0019', 'Silvi Nurhayati', '123', '123', '123@gmail.com', '2025-05-20 19:15:34', NULL),
(20, 'PL0020', 'dr. Evi Verawati', '123', '123', '123@gmail.com', '2025-05-20 19:17:15', NULL),
(21, 'PL0021', 'Alya Pendaftaran', '123', '123', '123@gmail.com', '2025-05-20 19:18:39', NULL),
(22, 'PL0022', 'Gina Pratiwi', '123', '123', '123@gmail.com', '2025-05-20 19:21:12', NULL),
(23, 'PL0023', 'drg. Ayu Kurniasih', '123', '123', '123@gmail.com', '2025-05-20 19:24:08', NULL),
(24, 'PL0024', 'dr. Katarina', '123', '123', '123@gmail.com', '2025-05-20 19:26:00', NULL),
(25, 'PL0025', 'Nia Farmasi', '123', '123', '123@gmail.com', '2025-05-20 19:26:42', NULL),
(26, 'PL0026', 'Tulus Prasetyo', '123', '123', '123@gmail.com', '2025-05-20 19:28:06', NULL),
(27, 'PL0027', 'dr. Veronica', '123', '123', '123@gmail.com', '2025-05-20 19:29:10', NULL),
(28, 'PL0028', 'Dian Esthi', '123', '123', '123@gmail.com', '2025-05-20 19:30:06', NULL),
(29, 'PL0029', 'drg. Sara Meidila', '123', '123', '123@gmail.com', '2025-05-20 19:31:38', NULL),
(30, 'PL0030', 'dr. Silvi Puspitasari', '123', '123', '123@gmail.com', '2025-05-20 19:40:06', NULL),
(31, 'PL0031', 'Risma Verawati', '123', '123', '123@gmail.com', '2025-05-20 19:41:01', NULL),
(32, 'PL0032', 'dr. Sari Widyastuti', '123', '123', '123@gmail.com', '2025-05-20 19:43:01', NULL),
(33, 'PL0033', 'Puspa', '123', '123', '123@gmail.com', '2025-05-20 19:44:45', NULL),
(34, 'PL0034', 'Hana Paryati', '123', '123', '123@gmail.com', '2025-05-20 19:45:54', NULL),
(35, 'PL0035', 'Desi Farmasi', '123', '123', '123@gmail.com', '2025-05-20 19:46:55', NULL),
(36, 'PL0036', 'drg. Putri Arifiani', '123', '123', '123@gmail.com', '2025-05-20 19:47:44', NULL),
(37, 'PL0037', 'dr. Maya Tri', '123', '123', '123@gmail.com', '2025-05-20 19:48:29', NULL),
(38, 'PL0038', '- Pengunjung', '123', '123', '123@gmail.com', '2025-05-20 19:49:25', NULL),
(39, 'PL0039', 'Risda Nurimanda', '123', '123', '123@gmail.com', '2025-05-20 19:50:10', NULL),
(40, 'PL0040', '- Irma', '123', '123', '123@gmail.com', '2025-05-20 19:50:50', NULL),
(41, 'PL0041', 'Fanny Gita Annisa', '123', '123', '123@gmail.com', '2025-05-20 19:52:15', NULL),
(42, 'PL0042', 'dr. Luh Putu', '123', '123', '123@gmail.com', '2025-05-20 19:52:57', NULL),
(43, 'PL0043', 'dr. Dina Fitriani', '123', '123', '123@gmail.com', '2025-05-20 19:53:29', NULL),
(44, 'PL0044', 'dr. Meilany', '123', '123', '123@gmail.com', '2025-05-20 19:54:12', NULL),
(45, 'PL0045', 'dr. Alima', '123\r\n', '123', '123@gmail.com', '2025-05-20 19:59:02', NULL),
(46, 'PL0046', 'Dwi Aswita', '123', '123', '123@gmail.com', '2025-05-20 19:59:58', NULL),
(47, 'PL0047', '- Bani', '123', '123', '123@gmail.com', '2025-05-20 20:01:12', NULL),
(48, 'PL0048', 'Dede Rohana', '123', '123', '123@gmail.com', '2025-05-20 20:01:50', NULL),
(49, 'PL0049', 'dr. Nani Saputri', '123', '123', '123@gmail.com', '2025-05-20 20:02:40', NULL),
(50, 'PL0050', '- Octa', '123', '123', '123@gmail.com', '2025-05-20 20:03:32', NULL),
(51, 'PL0051', 'dr. Nanda Kaliestasari', '123', '123', '123@gmail.com', '2025-05-20 20:05:12', NULL),
(52, 'PL0052', 'Dewi Kartika Sari', '123', '123', '123@gmail.com', '2025-05-20 20:06:58', NULL),
(53, 'PL0053', 'dr. Neta Margaretha', '123', '123', '123@gmail.com', '2025-05-20 20:07:33', NULL),
(54, 'PL0054', 'Sri Dewi Isharyanti', '123', '123', '123@gmail.com', '2025-05-20 20:08:08', NULL),
(55, 'PL0055', 'Rona Novalia ', '123', '123', '123@gmail.com', '2025-05-20 20:09:37', NULL),
(56, 'PL0056', 'Tongam Ferdin', '123\r\n', '123', '123@gmail.com', '2025-05-20 20:10:18', NULL);

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
(31, 'TR0031', 1, 25, 2, 7000, 9000, 0, '2025-05-20', '2025-05-20 19:26:50', '2025-05', 'Kurang Bayar'),
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
(73, 'TR0073', 1, 56, 1, 4500, 8000, 8000, '2025-05-20', '2025-05-20 20:10:32', '2025-05', 'Lunas');

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
(59, 'TR0031', 50, 'BR039', NULL, NULL, 'Defy Arem Srikaya Apem Ketan Sosis Solo Lomie', 3500, 4500, 2, 0, 9000, '2025-05-20', '2025-05', 1, '2025-05-20 19:26:50'),
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
(139, 'TR0073', 22, 'BR011', NULL, NULL, 'Aqua 1,5 L', 4500, 8000, 1, 0, 8000, '2025-05-20', '2025-05', 1, '2025-05-20 20:10:32');

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
(1, 'Super Admin', 'superadmin@gmail.com', '0', '-', '1747665884.jpg', 'superadmin', '$2y$10$z6C9D8Tu7PhhMOkUaKDO/uwNUWjZFS6b6nOltNxmxkwuZM86.7sYq', '1', '1', '2025-05-19 21:44:43'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

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
