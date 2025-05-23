-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 08:16 PM
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
-- Database: `czerwiec2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `koncerty`
--

CREATE TABLE `koncerty` (
  `id` int(3) DEFAULT NULL,
  `id_zespolu` int(3) DEFAULT NULL,
  `kod_miasta` varchar(6) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `koncerty`
--

INSERT INTO `koncerty` (`id`, `id_zespolu`, `kod_miasta`, `data`) VALUES
(1, 109, '99-508', '2017-07-25'),
(2, 111, '99-540', '2017-07-19'),
(3, 104, '99-510', '2017-07-27'),
(4, 114, '99-520', '2017-08-03'),
(5, 123, '99-545', '2017-07-04'),
(6, 106, '99-500', '2017-08-29'),
(7, 108, '99-540', '2017-07-10'),
(8, 121, '99-532', '2017-07-06'),
(9, 108, '99-530', '2017-07-27'),
(10, 106, '99-531', '2017-08-10'),
(11, 104, '99-500', '2017-07-26'),
(12, 114, '99-500', '2017-07-25'),
(13, 121, '99-520', '2017-07-15'),
(14, 114, '99-549', '2017-08-09'),
(15, 107, '99-520', '2017-08-19'),
(16, 120, '99-511', '2017-07-25'),
(17, 115, '99-510', '2017-08-27'),
(18, 112, '99-508', '2017-08-02'),
(19, 102, '99-545', '2017-08-27'),
(20, 101, '99-524', '2017-07-17'),
(21, 114, '99-509', '2017-07-15'),
(22, 101, '99-511', '2017-07-11'),
(23, 104, '99-520', '2017-07-24'),
(24, 105, '99-539', '2017-07-03'),
(25, 110, '99-532', '2017-08-09'),
(26, 123, '99-546', '2017-07-09'),
(27, 113, '99-541', '2017-07-29'),
(28, 122, '99-544', '2017-07-04'),
(29, 118, '99-501', '2017-07-12'),
(30, 104, '99-522', '2017-08-02'),
(31, 115, '99-538', '2017-07-12'),
(32, 103, '99-536', '2017-08-07'),
(33, 102, '99-535', '2017-07-22'),
(34, 123, '99-521', '2017-08-14'),
(35, 102, '99-549', '2017-08-03'),
(36, 109, '99-523', '2017-07-08'),
(37, 101, '99-546', '2017-08-20'),
(38, 104, '99-503', '2017-07-22'),
(39, 116, '99-515', '2017-07-17'),
(40, 106, '99-518', '2017-07-13'),
(41, 119, '99-505', '2017-07-31'),
(42, 102, '99-543', '2017-07-02'),
(43, 122, '99-538', '2017-08-05'),
(44, 108, '99-518', '2017-08-26'),
(45, 110, '99-530', '2017-07-06'),
(46, 116, '99-528', '2017-07-05'),
(47, 104, '99-531', '2017-07-28'),
(48, 109, '99-528', '2017-08-21'),
(49, 111, '99-528', '2017-07-26'),
(50, 109, '99-526', '2017-08-02'),
(51, 118, '99-502', '2017-07-30'),
(52, 110, '99-528', '2017-08-20'),
(53, 102, '99-503', '2017-08-23'),
(54, 103, '99-516', '2017-07-22'),
(55, 120, '99-501', '2017-07-13'),
(56, 122, '99-530', '2017-08-19'),
(57, 121, '99-540', '2017-08-28'),
(58, 111, '99-535', '2017-08-16'),
(59, 116, '99-505', '2017-08-05'),
(60, 108, '99-532', '2017-08-27'),
(61, 103, '99-547', '2017-07-29'),
(62, 123, '99-535', '2017-07-28'),
(63, 122, '99-532', '2017-08-07'),
(64, 106, '99-512', '2017-08-05'),
(65, 123, '99-503', '2017-07-02'),
(66, 120, '99-544', '2017-08-12'),
(67, 101, '99-507', '2017-07-03'),
(68, 106, '99-521', '2017-07-12'),
(69, 107, '99-521', '2017-08-06'),
(70, 108, '99-527', '2017-08-20'),
(71, 121, '99-532', '2017-07-11'),
(72, 122, '99-508', '2017-07-19'),
(73, 113, '99-530', '2017-07-15'),
(74, 119, '99-505', '2017-08-05'),
(75, 116, '99-533', '2017-07-06'),
(76, 104, '99-531', '2017-08-14'),
(77, 105, '99-529', '2017-08-06'),
(78, 102, '99-534', '2017-08-29'),
(79, 105, '99-537', '2017-08-14'),
(80, 111, '99-504', '2017-07-20'),
(81, 120, '99-512', '2017-07-30'),
(82, 110, '99-535', '2017-07-21'),
(83, 118, '99-515', '2017-07-14'),
(84, 107, '99-536', '2017-08-13'),
(85, 102, '99-549', '2017-07-30'),
(86, 101, '99-515', '2017-07-26'),
(87, 101, '99-512', '2017-07-10'),
(88, 101, '99-502', '2017-08-30'),
(89, 104, '99-532', '2017-08-16'),
(90, 118, '99-533', '2017-08-09'),
(91, 121, '99-507', '2017-07-05'),
(92, 109, '99-541', '2017-08-14'),
(93, 101, '99-519', '2017-07-02'),
(94, 115, '99-534', '2017-07-07'),
(95, 109, '99-541', '2017-08-25'),
(96, 122, '99-510', '2017-08-16'),
(97, 117, '99-536', '2017-07-20'),
(98, 117, '99-512', '2017-08-27'),
(99, 115, '99-535', '2017-08-19'),
(100, 112, '99-533', '2017-08-31'),
(101, 106, '99-510', '2017-08-08'),
(102, 102, '99-532', '2017-08-18'),
(103, 107, '99-509', '2017-08-20'),
(104, 102, '99-535', '2017-07-10'),
(105, 111, '99-529', '2017-08-25'),
(106, 109, '99-549', '2017-08-03'),
(107, 106, '99-521', '2017-08-04'),
(108, 116, '99-500', '2017-08-13'),
(109, 115, '99-533', '2017-07-14'),
(110, 101, '99-509', '2017-07-04'),
(111, 105, '99-515', '2017-08-08'),
(112, 117, '99-505', '2017-08-31'),
(113, 112, '99-523', '2017-08-18'),
(114, 114, '99-536', '2017-07-11'),
(115, 110, '99-541', '2017-07-04'),
(116, 121, '99-524', '2017-08-14'),
(117, 112, '99-515', '2017-07-01'),
(118, 116, '99-512', '2017-08-14'),
(119, 113, '99-537', '2017-08-12'),
(120, 101, '99-542', '2017-08-12'),
(121, 120, '99-539', '2017-08-30'),
(122, 117, '99-513', '2017-07-17'),
(123, 105, '99-513', '2017-07-23'),
(124, 120, '99-539', '2017-08-06'),
(125, 110, '99-505', '2017-08-11'),
(126, 117, '99-501', '2017-08-23'),
(127, 114, '99-545', '2017-07-08'),
(128, 109, '99-549', '2017-08-13'),
(129, 113, '99-511', '2017-07-16'),
(130, 115, '99-549', '2017-08-26'),
(131, 113, '99-540', '2017-07-14'),
(132, 118, '99-503', '2017-07-07'),
(133, 122, '99-513', '2017-08-31'),
(134, 113, '99-537', '2017-07-31'),
(135, 122, '99-513', '2017-08-12'),
(136, 101, '99-508', '2017-07-28'),
(137, 106, '99-542', '2017-07-08'),
(138, 123, '99-511', '2017-07-31'),
(139, 105, '99-514', '2017-07-11'),
(140, 118, '99-507', '2017-07-18'),
(141, 104, '99-519', '2017-07-29'),
(142, 121, '99-546', '2017-08-29'),
(143, 110, '99-531', '2017-08-21'),
(144, 105, '99-528', '2017-08-07'),
(145, 114, '99-518', '2017-07-21'),
(146, 107, '99-510', '2017-08-25'),
(147, 120, '99-511', '2017-07-19'),
(148, 105, '99-526', '2017-07-29'),
(149, 107, '99-537', '2017-07-11'),
(150, 108, '99-513', '2017-08-11'),
(151, 112, '99-501', '2017-07-15'),
(152, 113, '99-519', '2017-07-13'),
(153, 111, '99-507', '2017-08-04'),
(154, 109, '99-503', '2017-07-11'),
(155, 111, '99-518', '2017-08-18'),
(156, 116, '99-542', '2017-07-20'),
(157, 117, '99-505', '2017-08-19'),
(158, 117, '99-509', '2017-08-18'),
(159, 113, '99-514', '2017-08-05'),
(160, 114, '99-548', '2017-08-26'),
(161, 111, '99-520', '2017-07-25'),
(162, 106, '99-542', '2017-07-11'),
(163, 117, '99-507', '2017-08-29'),
(164, 114, '99-513', '2017-07-05'),
(165, 112, '99-529', '2017-08-12'),
(166, 119, '99-522', '2017-07-11'),
(167, 102, '99-510', '2017-07-26'),
(168, 108, '99-511', '2017-07-09'),
(169, 118, '99-508', '2017-07-17'),
(170, 120, '99-536', '2017-08-29'),
(171, 120, '99-529', '2017-08-13'),
(172, 112, '99-526', '2017-08-04'),
(173, 116, '99-502', '2017-08-18'),
(174, 123, '99-543', '2017-08-05'),
(175, 112, '99-522', '2017-08-25'),
(176, 118, '99-533', '2017-07-11'),
(177, 120, '99-512', '2017-07-15'),
(178, 115, '99-546', '2017-07-31'),
(179, 104, '99-529', '2017-07-02'),
(180, 108, '99-510', '2017-07-02'),
(181, 109, '99-546', '2017-07-16'),
(182, 120, '99-541', '2017-07-10'),
(183, 106, '99-520', '2017-07-27'),
(184, 102, '99-531', '2017-07-13'),
(185, 109, '99-513', '2017-07-29'),
(186, 113, '99-512', '2017-08-07'),
(187, 119, '99-538', '2017-07-05'),
(188, 121, '99-532', '2017-08-06'),
(189, 119, '99-536', '2017-08-18'),
(190, 123, '99-515', '2017-08-28'),
(191, 115, '99-541', '2017-08-18'),
(192, 101, '99-509', '2017-08-02'),
(193, 123, '99-531', '2017-07-11'),
(194, 110, '99-537', '2017-08-18'),
(195, 119, '99-542', '2017-07-21'),
(196, 123, '99-544', '2017-08-03'),
(197, 122, '99-513', '2017-08-24'),
(198, 108, '99-502', '2017-08-08'),
(199, 121, '99-525', '2017-08-23'),
(200, 117, '99-506', '2017-08-15'),
(201, 103, '99-523', '2017-07-30'),
(202, 102, '99-503', '2017-08-24'),
(203, 101, '99-510', '2017-08-15'),
(204, 118, '99-534', '2017-08-02'),
(205, 115, '99-546', '2017-07-23'),
(206, 123, '99-536', '2017-08-11'),
(207, 116, '99-534', '2017-08-21'),
(208, 123, '99-531', '2017-08-01'),
(209, 106, '99-502', '2017-08-09'),
(210, 109, '99-534', '2017-07-18'),
(211, 112, '99-520', '2017-07-18'),
(212, 109, '99-521', '2017-07-28'),
(213, 102, '99-526', '2017-07-04'),
(214, 113, '99-507', '2017-07-19'),
(215, 105, '99-530', '2017-07-13'),
(216, 101, '99-525', '2017-08-04'),
(217, 121, '99-512', '2017-08-26'),
(218, 109, '99-546', '2017-08-05'),
(219, 105, '99-524', '2017-07-21'),
(220, 123, '99-522', '2017-08-19'),
(221, 117, '99-541', '2017-08-17'),
(222, 115, '99-531', '2017-08-07'),
(223, 103, '99-527', '2017-08-13'),
(224, 109, '99-529', '2017-07-12'),
(225, 122, '99-546', '2017-07-10'),
(226, 112, '99-541', '2017-07-08'),
(227, 107, '99-545', '2017-08-24'),
(228, 123, '99-507', '2017-08-27'),
(229, 102, '99-546', '2017-07-18'),
(230, 101, '99-540', '2017-07-15'),
(231, 106, '99-538', '2017-08-21'),
(232, 113, '99-535', '2017-08-24'),
(233, 112, '99-507', '2017-07-28'),
(234, 116, '99-507', '2017-08-19'),
(235, 117, '99-539', '2017-07-13'),
(236, 111, '99-543', '2017-07-16'),
(237, 104, '99-540', '2017-07-19'),
(238, 121, '99-536', '2017-07-16'),
(239, 117, '99-530', '2017-08-14'),
(240, 105, '99-549', '2017-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `miasta`
--

CREATE TABLE `miasta` (
  `kod_miasta` varchar(6) DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL,
  `wojewodztwo` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `miasta`
--

INSERT INTO `miasta` (`kod_miasta`, `miasto`, `wojewodztwo`) VALUES
('99-522', 'Bialystok', 'podlaskie'),
('99-531', 'Bielsko-Biala', 'slaskie'),
('99-504', 'Bydgoszcz', 'kujawsko-pomorskie'),
('99-532', 'Bytom', 'slaskie'),
('99-537', 'Chorzow', 'slaskie'),
('99-527', 'Czestochowa', 'slaskie'),
('99-536', 'Dabrowa Gornicza', 'slaskie'),
('99-543', 'Elblag', 'warminsko-mazurskie'),
('99-523', 'Gdansk', 'pomorskie'),
('99-524', 'Gdynia', 'pomorskie'),
('99-529', 'Gliwice', 'slaskie'),
('99-510', 'Gorzow Wielkopolski', 'lubuskie'),
('99-507', 'Grudziadz', 'kujawsko-pomorskie'),
('99-539', 'Jastrzebie-Zdroj', 'slaskie'),
('99-538', 'Jaworzno', 'slaskie'),
('99-503', 'Jelenia Gora', 'dolnoslaskie'),
('99-545', 'Kalisz', 'wielkopolskie'),
('99-526', 'Katowice', 'slaskie'),
('99-541', 'Kielce', 'swietokrzyskie'),
('99-546', 'Konin', 'wielkopolskie'),
('99-549', 'Koszalin', 'zachodniopomorskie'),
('99-513', 'Krakow', 'malopolskie'),
('99-502', 'Legnica', 'dolnoslaskie'),
('99-508', 'Lublin', 'lubelskie'),
('99-511', 'Lodz', 'lodzkie'),
('99-540', 'Myslowice', 'slaskie'),
('99-515', 'Nowy Sacz', 'malopolskie'),
('99-542', 'Olsztyn', 'warminsko-mazurskie'),
('99-520', 'Opole', 'opolskie'),
('99-547', 'Pila', 'wielkopolskie'),
('99-512', 'Piotrkow Trybunalski', 'lodzkie'),
('99-518', 'Plock', 'mazowieckie'),
('99-544', 'Poznan', 'wielkopolskie'),
('99-534', 'Ruda Slaska', 'slaskie'),
('99-533', 'Rybnik', 'slaskie'),
('99-521', 'Rzeszow', 'podkarpackie'),
('99-519', 'Siedlce', 'mazowieckie'),
('99-525', 'Slupsk', 'pomorskie'),
('99-528', 'Sosnowiec', 'slaskie'),
('99-548', 'Szczecin', 'zachodniopomorskie'),
('99-514', 'Tarnow', 'malopolskie'),
('99-505', 'Torun', 'kujawsko-pomorskie'),
('99-535', 'Tychy', 'slaskie'),
('99-501', 'Walbrzych', 'dolnoslaskie'),
('99-516', 'Warszawa', 'mazowieckie'),
('99-506', 'Wloclawek', 'kujawsko-pomorskie'),
('99-500', 'Wroclaw', 'dolnoslaskie'),
('99-530', 'Zabrze', 'slaskie'),
('99-509', 'Zielona Gora', 'lubuskie');

-- --------------------------------------------------------

--
-- Table structure for table `zespoly`
--

CREATE TABLE `zespoly` (
  `id_zespolu` int(3) DEFAULT NULL,
  `nazwa` varchar(21) DEFAULT NULL,
  `liczba_artystow` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `zespoly`
--

INSERT INTO `zespoly` (`id_zespolu`, `nazwa`, `liczba_artystow`) VALUES
(101, 'Male nutki', 10),
(102, 'Szalone gitary', 8),
(103, 'Niebieskie kontrabasy', 12),
(104, 'Spokojne werble', 7),
(105, 'Zolte perkusje', 5),
(106, 'Stare mandoliny', 21),
(107, 'Wiosenne bebny', 6),
(108, 'Powolne fortepiany', 2),
(109, 'Jesienne talerze', 9),
(110, 'Odjechane cymbaly', 4),
(111, 'Czerwone wiolonczele', 11),
(112, 'Ciche organy', 9),
(113, 'Fajne trojkaty', 5),
(114, 'Fioletowe dzwonki', 2),
(115, 'Powazne oboje', 7),
(116, 'Rytmiczne wibrafony', 13),
(117, 'Zielone akordeony', 8),
(118, 'Rozstrojone pianina', 4),
(119, 'Kuszace harfy', 5),
(120, 'Czarne klawesyny', 11),
(121, 'Metalowe klarnety', 3),
(122, 'Zlote saksofony', 7),
(123, 'Piszczace trabki', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
