-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 10:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `tag` varchar(255) NOT NULL DEFAULT (),
  `id` bigint(20) NOT NULL,
  `animal_type` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `ownership_type` varchar(50) DEFAULT NULL,
  `valuation` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active',
  `breed` varchar(255) NOT NULL,
  `sale_Id` varchar(255) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `buyer` varchar(255) NOT NULL,
  `paidvia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`tag`, `id`, `animal_type`, `dob`, `ownership_type`, `valuation`, `status`, `breed`, `sale_Id`, `update_date`, `buyer`, `paidvia`) VALUES
('G2IKB', 2147483751, 'Pig', '2024-01-03', 'Raised', 40000.00, 'Active', 'some breed', '', NULL, '', ''),
('LOQUC', 2147483753, 'Chicken', '2024-01-03', 'Bought', 40000.00, 'sold', 'some breed', 'JztMf2Gd', '2024-01-03 09:52:43', '', ''),
('YLW2E', 2147483754, 'cattle', '2023-08-14', 'Bought', 7000.00, 'sold', 'some breed', 'rIitJnK3', '2023-12-13 09:21:59', 'Moses', ''),
('AQ3DM', 2147483755, 'cattle', '2024-01-03', 'Raised', 40000.00, 'sold', 'some breed', 'mT7Q0Psh', '2024-01-03 11:08:06', '', ''),
('GPLJV', 2147483756, 'Pig', '2024-01-03', 'Bought', 40000.00, 'sold', 'some breed', '1Dz7rlc7', '2024-01-03 11:13:29', 'Mathew', ''),
('BM2NG', 2147483757, 'Pig', '2024-01-03', 'Bought', 40000.00, 'sold', 'some breed', '5OJJyQOk', '2024-01-03 11:57:11', 'Alfred', ''),
('BB9Y3', 2147483758, 'Pig', '2024-01-03', 'Bought', 35000.00, 'sold', 'some breed', '5OJJyQOk', '2024-01-03 11:57:11', 'Alfred', '');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `doi` date NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `cost` int(200) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `confirmedby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `doi`, `item_type`, `itemname`, `quantity`, `cost`, `supplier`, `confirmedby`) VALUES
(10, '2023-12-03', 'f', 'Boma rhodes', '100Kg', 250000, 'Patel Farm', 'Farmhand'),
(11, '2023-12-26', 'Seeds', 'Boma rhodes', '100Kg', 160000, 'Patel Farm', 'Farmhand'),
(12, '2023-12-26', 'Medicine', 'Bupacin', '10ml', 1000, 'Farmers world ltd', 'Owner');

-- --------------------------------------------------------

--
-- Table structure for table `moneys`
--

CREATE TABLE `moneys` (
  `id` int(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `ioe` varchar(50) NOT NULL,
  `amount` int(200) NOT NULL,
  `dob` date NOT NULL,
  `paidvia` varchar(255) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `payer` varchar(255) NOT NULL,
  `confirmer` varchar(255) NOT NULL,
  `paidto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moneys`
--

INSERT INTO `moneys` (`id`, `item`, `ioe`, `amount`, `dob`, `paidvia`, `txnid`, `payer`, `confirmer`, `paidto`) VALUES
(1, 'Sale of animal', 'income', 60000, '2023-12-04', '', 'PASDNFFNSA', 'BUYER', 'SELLER', ''),
(2, 'Sale of animal product', 'income', 50000, '2023-12-04', 'Cash', '', 'BUYER', 'SELLER', ''),
(3, '', 'expense', 200000, '2023-07-02', 'Cash', '', '', '', 'Amiran K limited'),
(4, 'Sale of animal product', 'income', 10000, '2023-12-09', 'Mobile money', '', 'BUYER', 'SELLER', ''),
(5, 'labor charges', 'expense', 5000, '2023-12-09', 'Cash', '', '', '', 'casuals'),
(6, 'Sale of animal', 'income', 45000, '2023-12-10', 'Mobile money', 'PQSDNFFNSA', 'BUYER', 'SELLER', ''),
(7, '', '', 0, '0000-00-00', '', '', '', '', ''),
(8, 'sale of animal product', 'income', 47718, '2023-08-11', 'bank', '#3161b1', 'Sandoz Inc', '', ''),
(9, 'sale of animal', 'income', 22890, '2023-07-13', 'bank', '#f1c36c', 'Taro Pharmaceuticals U.S.A., Inc.', '', ''),
(10, 'sale of animal product', 'income', 56366, '2022-01-30', 'mobile money', '#fce975', 'IBA Molecular North America, Inc.', '', ''),
(11, 'sale of animal', 'income', 50747, '2023-04-04', 'cash', '#b483f9', 'Antigen Laboratories, Inc.', '', ''),
(12, 'sale of animal', 'income', 29031, '2023-11-25', 'bank', '#cf49a3', 'Teva Pharmaceuticals USA Inc', '', ''),
(13, 'sale of animal product', 'income', 62778, '2023-06-07', 'mobile money', '#573597', 'Home Sweet Homeopathics', '', ''),
(14, 'sale of animal', 'income', 77719, '2022-05-26', 'mobile money', '#94c4f8', 'Publix Super Markets Inc', '', ''),
(15, 'sale of animal product', 'income', 22812, '2023-06-06', 'bank', '#6b8ab9', 'China Ningbo Shangge Cosmetic Technology Corp.', '', ''),
(16, 'sale of animal', 'income', 46285, '2023-10-11', 'cash', '#ec13f7', 'ABC Compounding Co., Inc.', '', ''),
(17, 'sale of animal', 'income', 8019, '2023-01-08', 'bank', '#0b148e', 'Nephron Pharmaceuticals Corporation', '', ''),
(18, 'sale of animal product', 'income', 12912, '2022-10-31', 'cash', '#c5062a', 'Lupin Pharmaceuticals, Inc.', '', ''),
(19, 'sale of animal', 'income', 14989, '2023-04-26', 'bank', '#d299d9', 'HANLIM PHARM. CO., LTD.', '', ''),
(20, 'sale of animal', 'income', 69607, '2022-02-25', 'cash', '#3cbd24', 'H and P Industries, Inc. dba Triad Group', '', ''),
(21, 'sale of animal', 'income', 21566, '2022-03-25', 'cash', '#b3d476', 'Unit Dose Services', '', ''),
(22, 'sale of animal', 'income', 11975, '2023-10-30', 'bank', '#58df30', 'Sandoz Inc', '', ''),
(23, 'sale of animal product', 'income', 49182, '2023-03-21', 'bank', '#9c2ae8', 'Delon Laboratories (1990) Ltd', '', ''),
(24, 'sale of animal', 'income', 9201, '2022-03-25', 'cash', '#bfdac7', 'Energetix Corp', '', ''),
(25, 'sale of animal', 'income', 54551, '2023-08-13', 'cash', '#1ac131', 'Hospira, Inc.', '', ''),
(26, 'sale of animal', 'income', 21555, '2022-03-03', 'mobile money', '#4bf7c8', 'Nelco Laboratories, Inc.', '', ''),
(27, 'sale of animal product', 'income', 15807, '2022-05-09', 'mobile money', '#9cfeb1', 'Newton Laboratories, Inc.', '', ''),
(28, 'sale of animal product', 'income', 33998, '2023-02-19', 'bank', '#1eb617', 'Antigen Laboratories, Inc.', '', ''),
(29, 'sale of animal product', 'income', 28584, '2022-06-22', 'mobile money', '#2c50c2', 'Hospira Worldwide, Inc.', '', ''),
(30, 'sale of animal product', 'income', 71227, '2022-07-30', 'mobile money', '#df8bcd', 'Modlina Cosmetics Co., Ltd', '', ''),
(31, 'sale of animal product', 'income', 56235, '2023-01-17', 'bank', '#f97701', 'Sandoz Inc', '', ''),
(32, 'sale of animal product', 'income', 17238, '2023-07-29', 'bank', '#524f0d', 'Marnel Pharmaceuticals, Inc.', '', ''),
(33, 'sale of animal product', 'income', 25890, '2022-06-09', 'mobile money', '#508e4e', 'Procter & Gamble Manufacturing Company', '', ''),
(34, 'sale of animal product', 'income', 11337, '2023-10-30', 'mobile money', '#3e1959', 'Eli Lilly and Company', '', ''),
(35, 'sale of animal', 'income', 72290, '2023-10-22', 'mobile money', '#a89d56', 'Aidarex Pharmaceuticals LLC', '', ''),
(36, 'sale of animal product', 'income', 17085, '2022-12-25', 'bank', '#9df302', 'Natural Health Supply', '', ''),
(37, 'sale of animal product', 'income', 47593, '2022-03-19', 'cash', '#085b78', 'Clinical Solutions Wholesale', '', ''),
(38, 'sale of animal product', 'income', 10145, '2022-07-08', 'cash', '#2d6366', 'Marnel Pharmaceutcals, Inc.', '', ''),
(39, 'sale of animal product', 'income', 16441, '2023-03-27', 'mobile money', '#c83a6d', 'Qualitest Pharmaceuticals', '', ''),
(40, 'sale of animal', 'income', 6609, '2022-01-30', 'bank', '#ec9579', 'Benefit Cosmetics, LLC', '', ''),
(41, 'sale of animal product', 'income', 66167, '2022-11-22', 'cash', '#08b26c', 'Reckitt Benckiser LLC', '', ''),
(42, 'sale of animal', 'income', 53868, '2022-07-18', 'cash', '#4ab7ab', 'MallyGirl, LLC', '', ''),
(43, 'sale of animal product', 'income', 41596, '2022-01-27', 'mobile money', '#4d4c3a', 'Procter & Gamble Manufacturing Company', '', ''),
(44, 'sale of animal product', 'income', 36607, '2022-04-08', 'bank', '#d9e68b', 'Blistex Inc.', '', ''),
(45, 'sale of animal', 'income', 41613, '2022-12-28', 'bank', '#3ced2b', 'Preferred Pharmaceuticals, Inc', '', ''),
(46, 'sale of animal', 'income', 73468, '2022-09-22', 'mobile money', '#12eb19', 'AbbVie Inc.', '', ''),
(47, 'sale of animal', 'income', 57844, '2023-09-18', 'bank', '#738aa0', 'Teva Pharmaceuticals USA Inc', '', ''),
(48, 'sale of animal', 'income', 34581, '2022-01-02', 'cash', '#fd59b0', 'Nelco Laboratories, Inc.', '', ''),
(49, 'sale of animal product', 'income', 33508, '2023-04-15', 'cash', '#2c3dea', 'PD-Rx Pharmaceuticals, Inc.', '', ''),
(50, 'sale of animal product', 'income', 34040, '2023-07-05', 'bank', '#ad67e4', 'Dispensing Solutions, Inc.', '', ''),
(51, 'sale of animal', 'income', 22733, '2023-01-25', 'cash', '#30249f', 'Argyle Welding Supply Co. Inc.', '', ''),
(52, 'sale of animal product', 'income', 14299, '2023-11-11', 'mobile money', '#dafaaf', 'Cardinal Health', '', ''),
(53, 'sale of animal product', 'income', 68733, '2023-10-14', 'bank', '#459343', 'REMEDYREPACK INC.', '', ''),
(54, 'sale of animal', 'income', 50403, '2022-03-03', 'cash', '#10f563', 'REMEDYREPACK INC.', '', ''),
(55, 'sale of animal', 'income', 73625, '2022-06-09', 'mobile money', '#8f683b', 'Washington Homeopathic Products', '', ''),
(56, 'sale of animal', 'income', 40670, '2023-12-09', 'mobile money', '#16d47b', 'Cardinal Health', '', ''),
(57, 'sale of animal', 'income', 43814, '2022-06-17', 'mobile money', '#bb88d4', 'COREPHARMA LLC.', '', ''),
(58, 'sale of animal product', 'income', 6102, '2022-02-07', 'mobile money', '#d8062d', 'Kate Somerville Skincare, LLC', '', ''),
(59, 'sale of animal product', 'income', 8710, '2022-01-20', 'bank', '#d41c8b', 'Ingenus Pharmaceuticals, LLC', '', ''),
(60, 'sale of animal', 'income', 41848, '2023-08-30', 'bank', '#cdcce6', 'H and P Industries, Inc. dba Triad Group', '', ''),
(61, 'sale of animal', 'income', 16646, '2022-06-01', 'bank', '#6b446b', 'State of Florida DOH Central Pharmacy', '', ''),
(62, 'sale of animal product', 'income', 76041, '2022-03-20', 'cash', '#9a8f50', 'China Ningbo Shangge Cosmetic Technology Corp.', '', ''),
(63, 'sale of animal product', 'income', 69428, '2023-01-01', 'cash', '#e07b2d', 'Zydus Pharmaceuticals (USA) Inc.', '', ''),
(64, 'sale of animal product', 'income', 7447, '2022-01-16', 'mobile money', '#728d7f', 'Chattem, Inc.', '', ''),
(65, 'sale of animal product', 'income', 71562, '2022-08-31', 'mobile money', '#894c4a', 'State of Florida DOH Central Pharmacy', '', ''),
(66, 'sale of animal', 'income', 41068, '2022-04-27', 'cash', '#d047b8', 'TAYLOR JAMES, LTD.', '', ''),
(67, 'sale of animal product', 'income', 77726, '2022-10-22', 'bank', '#923d0f', 'Physicians Total Care, Inc.', '', ''),
(68, 'sale of animal product', 'income', 5655, '2022-03-26', 'cash', '#035425', 'Camber Pharmaceuticals', '', ''),
(69, 'sale of animal product', 'income', 66610, '2023-03-05', 'cash', '#2f1fd3', 'AR Medicom Inc', '', ''),
(70, 'sale of animal product', 'income', 31334, '2022-10-07', 'bank', '#c5f62e', 'Northwind Pharmaceuticals', '', ''),
(71, 'sale of animal product', 'income', 55284, '2022-05-30', 'cash', '#a45628', 'Cardinal Health', '', ''),
(72, 'sale of animal', 'income', 35980, '2022-01-25', 'bank', '#04a596', 'Major Pharmaceuticals', '', ''),
(73, 'sale of animal product', 'income', 8609, '2023-05-03', 'bank', '#d42f9f', 'Stephen L. LaFrance Pharmacy, Inc.', '', ''),
(74, 'sale of animal product', 'income', 24617, '2022-03-26', 'cash', '#5e4216', 'Cardinal Health', '', ''),
(75, 'sale of animal product', 'income', 57011, '2022-11-23', 'mobile money', '#191274', 'CSL Behring AG', '', ''),
(76, 'sale of animal product', 'income', 7446, '2023-03-01', 'mobile money', '#a2a467', 'Methapharm, Inc.', '', ''),
(77, 'sale of animal', 'income', 11677, '2023-12-08', 'cash', '#4829ca', 'AnazaoHealth Corporation', '', ''),
(78, 'sale of animal', 'income', 14009, '2023-05-16', 'cash', '#efdc97', 'Qualitest Pharmaceuticals', '', ''),
(79, 'sale of animal', 'income', 31320, '2023-09-11', 'cash', '#ff55c5', 'NATURE REPUBLIC CO., LTD.', '', ''),
(80, 'sale of animal', 'income', 73226, '2022-10-26', 'cash', '#cf40ab', 'Homeland Industrial Supply', '', ''),
(81, 'sale of animal product', 'income', 73030, '2022-03-20', 'mobile money', '#75c5ae', 'RITE AID CORPORATION', '', ''),
(82, 'sale of animal product', 'income', 44237, '2023-02-25', 'bank', '#7d35f2', 'Teva Pharmaceuticals USA Inc', '', ''),
(83, 'sale of animal product', 'income', 21861, '2023-05-21', 'mobile money', '#71365b', 'The Hain Celestial Group, Inc.', '', ''),
(84, 'sale of animal', 'income', 42787, '2022-12-02', 'bank', '#27a508', 'ALK-Abello, Inc.', '', ''),
(85, 'sale of animal', 'income', 61710, '2022-12-29', 'bank', '#88ad96', 'Novartis Pharmaceuticals Corporation', '', ''),
(86, 'sale of animal product', 'income', 25777, '2022-11-28', 'bank', '#55d0de', 'Zep Inc.', '', ''),
(87, 'sale of animal', 'income', 43412, '2022-06-18', 'bank', '#bd01bb', 'Cardinal Health', '', ''),
(88, 'sale of animal product', 'income', 62205, '2022-05-12', 'mobile money', '#064637', 'Prestige Brands Holdings, Inc.', '', ''),
(89, 'sale of animal', 'income', 60401, '2023-09-29', 'bank', '#d0c955', 'REMEDYREPACK INC.', '', ''),
(90, 'sale of animal', 'income', 50572, '2022-11-01', 'bank', '#33dd38', 'Tarte, Inc', '', ''),
(91, 'sale of animal product', 'income', 61428, '2022-07-21', 'mobile money', '#73313d', 'Publix Super Markets, Inc.', '', ''),
(92, 'sale of animal', 'income', 6827, '2023-01-10', 'cash', '#80a0e0', 'Bryant Ranch Prepack', '', ''),
(93, 'sale of animal product', 'income', 57243, '2023-07-22', 'mobile money', '#1b3601', 'Delta Brands Inc', '', ''),
(94, 'sale of animal', 'income', 51971, '2023-04-27', 'cash', '#65f0db', 'Lake Erie Medical DBA Quality Care Products LLC', '', ''),
(95, 'sale of animal', 'income', 69541, '2023-10-01', 'mobile money', '#ed0786', 'Sandoz Inc', '', ''),
(96, 'sale of animal product', 'income', 35704, '2022-04-20', 'cash', '#0c3daa', 'Western Family Foods, Inc.', '', ''),
(97, 'sale of animal product', 'income', 43331, '2023-01-16', 'bank', '#a2d725', 'Blenheim Pharmacal, Inc.', '', ''),
(98, 'sale of animal product', 'income', 26388, '2022-06-24', 'bank', '#578ee9', 'Major Pharmaceuticals', '', ''),
(99, 'sale of animal product', 'income', 20521, '2023-02-13', 'bank', '#28fc38', 'REMEDYREPACK INC.', '', ''),
(100, 'sale of animal product', 'income', 31128, '2023-11-13', 'mobile money', '#3482a6', 'Magna Pharmaceuticals, Inc.', '', ''),
(101, 'sale of animal', 'income', 68148, '2022-07-27', 'bank', '#e5ff17', 'Reckitt Benckiser, Inc.', '', ''),
(102, 'sale of animal', 'income', 33528, '2022-02-18', 'mobile money', '#a0ff7b', 'NorthStar Rx LLC', '', ''),
(103, 'sale of animal', 'income', 7406, '2023-01-04', 'mobile money', '#7d1fbb', 'Upsher-Smith Laboratories, Inc', '', ''),
(104, 'sale of animal product', 'income', 25392, '2023-05-30', 'cash', '#21c6ee', 'CARDINAL HEALTH', '', ''),
(105, 'sale of animal product', 'income', 9479, '2022-12-30', 'cash', '#28e368', 'Lake Erie Medical & Surgical Supply DBA Quality Care Products LLC', '', ''),
(106, 'sale of animal', 'income', 14031, '2023-09-25', 'mobile money', '#b7e403', 'SHISEIDO AMERICA INC.', '', ''),
(107, 'sale of animal product', 'income', 19870, '2022-02-20', 'bank', '#5058f9', 'sanofi-aventis U.S. LLC', '', ''),
(108, 'Sale of animal', 'income', 47000, '2023-12-23', 'Mobile money', 'PASDNFFNSA', 'BUYER', 'SELLER', ''),
(109, '', '', 0, '0000-00-00', '', '', '', '', ''),
(110, '', '', 0, '0000-00-00', '', '', '', '', ''),
(111, '', '', 0, '0000-00-00', '', '', '', '', ''),
(112, 'labor charges', 'expense', 45242, '2023-12-26', 'Mobile money', 'PASDNFFNSA', '', '', 'casuals'),
(113, 'Sale of animal', 'income', 40000, '2023-12-26', 'Mobile money', 'PASDNFFNSA', 'BUYER', 'SELLER', ''),
(114, 'Other', 'income', 40000, '2023-12-26', 'Mobile money', 'PASDNFFNSA', 'BUYER', 'SELLER', ''),
(115, 'Sale of animal', 'income', 40000, '2023-12-25', 'Cash', 'RASDNFFNSA', 'Farmer', 'SELLER', ''),
(116, 'Wages', 'expense', 1500, '2023-12-26', 'Cash', '', '', '', 'casuals'),
(117, 'Sale of animal', 'income', 50000, '2023-12-26', 'Cash', '', 'BUYER', 'SELLER', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `natid` int(20) NOT NULL,
  `phone` int(50) NOT NULL,
  `kra` varchar(50) NOT NULL,
  `doe` date NOT NULL,
  `salary` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `fullname`, `natid`, `phone`, `kra`, `doe`, `salary`, `status`, `role`) VALUES
(1, 'Mary Wanjiku', 32146893, 722123124, 'A012349544B', '2023-12-10', 20000, 'On duty', 'Casual'),
(2, 'Carlos Ghosn', 32146891, 725463151, 'A012349514B', '2023-12-09', 35000, 'On duty', 'Technical'),
(3, 'Mary Wanjiku', 32146891, 0, 'A012349544B', '2023-12-21', 30000, 'On duty', 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(255) NOT NULL,
  `taskname` varchar(255) NOT NULL,
  `doc` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `datedue` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `taskname`, `doc`, `description`, `datedue`, `status`) VALUES
(181, 'Vaccination of chicks', '2023-12-15', '', '2023-12-16', 'pending'),
(188, 'Crops inspection', '0000-00-00', '', '0000-00-00', 'pending'),
(189, 'Vaccination of chicks', '0000-00-00', '', '0000-00-00', 'pending'),
(194, 'Vaccination of new pigs', '0000-00-00', '', '0000-00-00', 'pending'),
(195, 'Deworm pigs', '0000-00-00', '', '0000-00-00', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moneys`
--
ALTER TABLE `moneys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
