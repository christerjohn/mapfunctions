-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2016 at 03:51 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brisgis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `id` int(10) UNSIGNED NOT NULL,
  `municipality_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`id`, `municipality_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hinaplanon', '2016-04-01 08:00:00', '2016-04-01 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_admins`
--

CREATE TABLE `barangay_admins` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `barangay_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(10) UNSIGNED NOT NULL,
  `purok_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year_constructed` date NOT NULL,
  `net_value` int(11) NOT NULL,
  `building_usage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `structure` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` double NOT NULL,
  `no_stories` int(11) NOT NULL,
  `holding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `purok_id`, `name`, `year_constructed`, `net_value`, `building_usage`, `structure`, `area`, `no_stories`, `holding`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ariel Household', '0000-00-00', 100000, 'Residential', 'wood_masonry', 40, 0, '', 124.2654444, 8.253777778, NULL, NULL),
(2, 1, 'Jesser Household', '0000-00-00', 800000, 'Residential', 'masonry', 90, 0, 'owned', 124.2653889, 8.253888889, NULL, NULL),
(3, 1, 'Lucio Household', '0000-00-00', 120000, 'Residential', 'wood', 40, 0, '', 124.2651389, 8.253777778, NULL, NULL),
(4, 1, 'Flora Household', '0000-00-00', 100000, 'Residential', 'wood', 20, 0, '', 124.2654444, 8.253861111, NULL, NULL),
(5, 1, 'Francisco, jr Household', '0000-00-00', 80000, 'Residential', 'wood', 15, 0, '', 124.2651111, 8.253666667, NULL, NULL),
(6, 1, 'Francisco, sr Household', '0000-00-00', 5000, 'Residential', 'wood', 12, 0, '', 124.2652222, 8.253666667, NULL, NULL),
(7, 1, 'Hanna Mae Household', '0000-00-00', 40000, 'Residential', 'wood', 5, 0, '', 124.26525, 8.253611111, NULL, NULL),
(8, 1, 'Jesus Household', '0000-00-00', 0, 'Residential', 'wood_g.i', 4, 0, '', 124.2652778, 8.253666667, NULL, NULL),
(9, 1, 'Manuel Household', '0000-00-00', 500000, 'Residential', 'masonry', 44, 0, 'owned', 124.2652778, 8.253555556, NULL, NULL),
(10, 1, 'Roy Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2652778, 8.253555556, NULL, NULL),
(11, 1, 'Namra Household', '0000-00-00', 150000, 'Residential', 'wood_masonry', 30, 0, '', 124.2654444, 8.253527778, NULL, NULL),
(12, 1, 'Alvin Household', '0000-00-00', 70000, 'Residential', 'wood_masonry', 30, 0, '', 124.2655278, 8.253194444, NULL, NULL),
(13, 1, 'Bonifacio Household', '0000-00-00', 500000, 'Residential', 'wood_masonry', 100, 0, '', 124.2655556, 8.253194444, NULL, NULL),
(14, 1, 'Delia Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.2655278, 8.253138889, NULL, NULL),
(15, 1, 'Lomer Household', '0000-00-00', 500000, 'Residential', 'masonry', 100, 0, '', 124.2654444, 8.253305556, NULL, NULL),
(16, 1, 'Mark Anthony Household', '0000-00-00', 45000, 'Residential', 'wood_masonry', 30, 0, '', 124.2654444, 8.253194444, NULL, NULL),
(17, 1, 'Roel Household', '0000-00-00', 5000, 'Residential', 'wood', 9, 0, '', 124.2654444, 8.253166667, NULL, NULL),
(18, 1, 'Teodoro Household', '0000-00-00', 250000, 'Residential', 'masonry', 50, 0, '', 124.2653889, 8.253333333, NULL, NULL),
(19, 1, 'Eduardo Household', '0000-00-00', 150000, 'Residential', 'wood', 50, 0, '', 124.2650278, 8.253333333, NULL, NULL),
(20, 1, 'Rudyrico Household', '0000-00-00', 90000, 'Residential', 'masonry', 100, 0, '', 124.2651944, 8.253444444, NULL, NULL),
(21, 1, 'Ramero Household', '0000-00-00', 300000, 'residential_Commercial', 'masonry', 50, 0, 'owned', 124.2650833, 8.253555556, NULL, NULL),
(22, 1, 'Nelson Household', '0000-00-00', 300000, 'Residential', 'masonry', 70, 0, '', 124.2651111, 8.2535, NULL, NULL),
(23, 1, 'Nicolas Household', '0000-00-00', 700000, 'Residential', 'masonry', 100, 0, '', 124.2650556, 8.253416667, NULL, NULL),
(24, 1, 'Joe-Mark Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 80, 0, 'owned', 124.2649444, 8.253777778, NULL, NULL),
(25, 1, 'Arnel Household', '0000-00-00', 200000, 'Residential', 'wood_masonry', 30, 0, '', 124.2648333, 8.253666667, NULL, NULL),
(26, 1, 'Cecilia Household', '0000-00-00', 500000, 'Commercial', 'wood_masonry', 96, 0, 'owned', 124.2643333, 8.254, NULL, NULL),
(27, 1, 'Cerelo Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2643333, 8.254, NULL, NULL),
(28, 1, 'Flaviano Household', '0000-00-00', 500000, 'Residential', 'masonry', 40, 0, '', 124.2646389, 8.254, NULL, NULL),
(29, 1, 'Bernie Household', '0000-00-00', 250000, 'Residential', 'masonry', 40, 0, '', 124.2647222, 8.253944444, NULL, NULL),
(30, 1, 'Oliver Household', '0000-00-00', 200000, 'Residential', 'wooden', 20, 0, '', 124.2645, 8.254027778, NULL, NULL),
(31, 1, 'Meliton,Jr. Household', '0000-00-00', 200000, 'Residential', 'masonry', 36, 0, 'owned', 124.2644444, 8.253777778, NULL, NULL),
(32, 1, 'Rupert Johan Household', '0000-00-00', 150000, 'Commercial', 'wooden', 60, 0, 'owned', 124.2644444, 8.253833333, NULL, NULL),
(33, 1, 'Sotico Household', '0000-00-00', 900000, 'residential_Commercial', 'masonry', 100, 0, 'owned', 124.2643611, 8.254194444, NULL, NULL),
(34, 1, 'Gerarda Household', '0000-00-00', 500000, 'Residential', 'masonry', 60, 0, '', 124.2643333, 8.254305556, NULL, NULL),
(35, 1, 'Edsiel Household', '0000-00-00', 20000, 'Residential', 'wooden', 6, 0, '', 124.2644722, 8.254166667, NULL, NULL),
(36, 1, 'Roberto Household', '0000-00-00', 100000, 'Residential', 'wood_masonry', 30, 0, '', 124.2644167, 8.254277778, NULL, NULL),
(37, 1, 'German Household', '0000-00-00', 350000, 'Residential', 'masonry', 40, 0, '', 124.2645, 8.254333333, NULL, NULL),
(38, 1, 'Adelita Household', '0000-00-00', 250000, 'Residential_Commercial', 'masonry', 40, 0, 'owned', 124.2646389, 8.254416667, NULL, NULL),
(39, 1, 'Reymundo Household', '0000-00-00', 100000, 'Residential', 'wood_masonry', 40, 0, '', 124.2646389, 8.254527778, NULL, NULL),
(40, 1, 'Valentin Household', '0000-00-00', 50000, 'Residential', 'wooden', 20, 0, 'owned', 124.2647778, 8.254361111, NULL, NULL),
(41, 1, 'Melvin Household', '0000-00-00', 50000, 'Residential', 'wooden', 20, 0, '', 124.2646667, 8.254583333, NULL, NULL),
(42, 1, 'Matilde Household', '0000-00-00', 500000, 'Residential', 'masonry', 100, 0, '', 124.2640556, 8.254194444, NULL, NULL),
(43, 1, 'Abrendino Household', '0000-00-00', 400000, 'Residential', 'masonry', 54, 0, '', 124.26575, 8.253527778, NULL, NULL),
(44, 1, 'Reggie Household', '0000-00-00', 400000, 'Residential', 'masonry', 32, 0, '', 124.2638333, 8.254333333, NULL, NULL),
(45, 1, 'Cerilo Household', '0000-00-00', 100000, 'Residential', 'masonry', 30, 0, 'owned', 124.2635833, 8.254305556, NULL, NULL),
(46, 1, 'Angelina Household', '0000-00-00', 10000000, 'Commercial', 'masonry', 300, 0, 'owned', 124.2641111, 8.253833333, NULL, NULL),
(47, 1, 'Christopher Household', '0000-00-00', 200000, 'Residential', 'masonry', 80, 0, 'owned', 124.2635278, 8.253972222, NULL, NULL),
(48, 1, 'Benjamin Household', '0000-00-00', 0, 'Residential', 'masonry', 6, 0, '', 124.2636667, 8.254527778, NULL, NULL),
(49, 1, 'Nick Household', '0000-00-00', 0, 'Residential', 'masonry', 6, 0, '', 124.2636389, 8.254361111, NULL, NULL),
(50, 1, 'Merlo Household', '0000-00-00', 200000, 'Residential', 'wood_masonry', 30, 0, '', 124.2637222, 8.254194444, NULL, NULL),
(51, 1, 'Christine Household', '0000-00-00', 30000, 'Residential', 'wooden', 12, 0, '', 124.2635, 8.254305556, NULL, NULL),
(52, 1, 'Luzzy Household', '0000-00-00', 100000, 'Residential', 'wood_masonry', 30, 0, '', 124.2634444, 8.254277778, NULL, NULL),
(53, 1, 'Emmanuel Household', '0000-00-00', 250000, 'Residential', 'wood', 18, 0, '', 124.2634444, 8.254305556, NULL, NULL),
(54, 1, 'Fajusto Household', '0000-00-00', 200000, 'Residential', 'masonry', 29, 0, '', 124.2633333, 8.254166667, NULL, NULL),
(55, 1, 'Danilo Household', '0000-00-00', 200000, 'Residential', 'masonry', 26, 0, '', 124.2645, 8.253638889, NULL, NULL),
(56, 1, 'Oliva Household', '0000-00-00', 900000, 'Residential', 'masonry', 40, 0, '', 124.2645833, 8.253694444, NULL, NULL),
(57, 1, 'Danny Household', '0000-00-00', 800000, 'residential', 'masonry', 70, 0, '', 124.2646667, 8.253805556, NULL, NULL),
(58, 1, 'Robin Household', '0000-00-00', 100000, 'Residential', 'masonry', 40, 0, '', 124.2654167, 8.253694444, NULL, NULL),
(59, 1, 'Dulce Household', '0000-00-00', 500000, 'Residential', 'masonry', 30, 0, 'owned', 124.2654167, 8.253722222, NULL, NULL),
(60, 1, 'David Jorte Household', '0000-00-00', 200000, 'Residential', 'wood_masonry', 60, 0, '', 124.2655278, 8.253777778, NULL, NULL),
(61, 1, 'Efren Household', '0000-00-00', 40000, 'Residential', 'masonry', 16, 0, '', 124.2656111, 8.253555556, NULL, NULL),
(62, 1, 'Olimpo,Jr. Household', '0000-00-00', 600000, 'Residential', 'wood_masonry', 30, 0, 'owned', 124.2656667, 8.253722222, NULL, NULL),
(63, 1, 'Jameson Household', '0000-00-00', 10000, 'Residential', 'wood', 18, 0, '', 124.2656389, 8.253722222, NULL, NULL),
(64, 1, 'Francisco Household', '0000-00-00', 15000, 'Residential', 'wood_masonry', 30, 0, '', 124.2638333, 8.254055556, NULL, NULL),
(65, 1, 'Domingo Household', '0000-00-00', 60000, 'Residential', 'wood', 56, 0, '', 124.26275, 8.254361111, NULL, NULL),
(66, 1, 'Ramil Household', '0000-00-00', 70000, 'Residential', 'wood', 18, 0, '', 124.2627778, 8.254388889, NULL, NULL),
(67, 1, 'Perlito Household', '0000-00-00', 20000, 'Residential', 'wood', 40, 0, '', 124.2627778, 8.254388889, NULL, NULL),
(68, 1, 'Philip_Bryan Household', '0000-00-00', 20000, 'Residential', 'wood', 18, 0, '', 124.2628056, 8.254361111, NULL, NULL),
(69, 1, 'Arcadio Household', '0000-00-00', 15000, 'Residential', 'wood', 20, 0, '', 124.2629444, 8.2545, NULL, NULL),
(70, 1, 'Melchor Household', '0000-00-00', 50000, 'Residential', 'wood', 25, 0, '', 124.263, 8.254388889, NULL, NULL),
(71, 1, 'Luisito Household', '0000-00-00', 10000, 'Residential', 'wood', 18, 0, '', 124.2629444, 8.254333333, NULL, NULL),
(72, 1, 'Julibert Household', '0000-00-00', 30000, 'Residential', 'wood', 18, 0, '', 124.2629444, 8.254388889, NULL, NULL),
(73, 1, 'Moises Household', '0000-00-00', 150000, 'Residential', 'wood', 50, 0, '', 124.2630278, 8.254388889, NULL, NULL),
(74, 1, 'Ronel Household', '0000-00-00', 20000, 'Residential', 'wood', 16, 0, '', 124.2631111, 8.254416667, NULL, NULL),
(75, 1, 'Dome Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.2630278, 8.254277778, NULL, NULL),
(76, 1, 'Arnolfo Household', '0000-00-00', 30000, 'Residential_Commercial', 'wood', 20, 0, 'owned', 124.2630278, 8.254333333, NULL, NULL),
(77, 1, 'Roel Household', '0000-00-00', 40000, 'Residential', 'wood', 18, 0, '', 124.2631944, 8.254527778, NULL, NULL),
(78, 1, 'Sanyboy Household', '0000-00-00', 40000, 'Residential', 'wood_masonry', 60, 0, 'owned', 124.2631389, 8.25425, NULL, NULL),
(79, 1, 'Jean Household', '0000-00-00', 350000, 'Residential', 'masonry', 20, 0, '', 124.2632778, 8.254416667, NULL, NULL),
(80, 1, 'Andresito Household', '0000-00-00', 25000, 'Residential', 'wood', 40, 0, '', 124.2626389, 8.2545, NULL, NULL),
(81, 1, 'Loverine Household', '0000-00-00', 10000, 'Residential', 'wood', 18, 0, '', 124.2612222, 8.254138889, NULL, NULL),
(82, 1, 'Nelson Household', '0000-00-00', 500000, 'Residential', 'wood', 80, 0, '', 124.2612222, 8.254277778, NULL, NULL),
(83, 1, 'Portonato Household', '0000-00-00', 10000, 'Residential', 'wood_masonry', 30, 0, '', 124.2599444, 8.254027778, NULL, NULL),
(84, 1, 'Julito Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2600278, 8.253972222, NULL, NULL),
(85, 1, 'Rolando Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 30, 0, '', 124.26, 8.253555556, NULL, NULL),
(86, 1, 'Dionesio,Jr Household', '0000-00-00', 250000, 'Residential', 'wood_masonry', 30, 0, '', 124.2600833, 8.253583333, NULL, NULL),
(87, 1, 'Crecencio Household', '0000-00-00', 450000, 'Residential', 'wood_masonry', 42, 0, 'owned', 124.26025, 8.253388889, NULL, NULL),
(88, 1, 'Oliver Household', '0000-00-00', 50000, 'Residential', 'wood', 18, 0, '', 124.2601667, 8.253138889, NULL, NULL),
(89, 1, 'Joseph Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2603333, 8.253222222, NULL, NULL),
(90, 1, 'Christhoper Household', '0000-00-00', 15000, 'Residential', 'wood', 12, 0, '', 124.2600556, 8.253166667, NULL, NULL),
(91, 1, 'Julie Household', '0000-00-00', 100000, 'Residential', 'masonry', 100, 0, '', 124.2601944, 8.253305556, NULL, NULL),
(92, 1, 'Allan Household', '0000-00-00', 100000, 'Residential', 'masonry', 20, 0, '', 124.2605, 8.253583333, NULL, NULL),
(93, 1, 'Conching Household', '0000-00-00', 200000, 'Residential', 'masonry', 100, 0, '', 124.2604444, 8.253527778, NULL, NULL),
(94, 1, 'Jemrelle Household', '0000-00-00', 70000, 'Residential', 'masonry', 20, 0, '', 124.2603333, 8.253611111, NULL, NULL),
(95, 1, 'Danilo, sr Household', '0000-00-00', 70000, 'Residential', 'masonry', 55, 0, 'owned', 124.2600556, 8.253833333, NULL, NULL),
(96, 1, 'Fada Household', '0000-00-00', 200000, 'Residential', 'masonry', 80, 0, '', 124.2596944, 8.253777778, NULL, NULL),
(97, 1, 'Danilo,jr Household', '0000-00-00', 70000, 'Residential', 'wood', 30, 0, '', 124.2596111, 8.253388889, NULL, NULL),
(98, 1, 'Wenceslao Household', '0000-00-00', 70000, 'Residential', 'masonry', 18, 0, '', 124.26, 8.253944444, NULL, NULL),
(99, 1, 'Nelson Household', '0000-00-00', 70000, 'Residential', 'wood', 30, 0, '', 124.2595, 8.253444444, NULL, NULL),
(100, 1, 'Richard Household', '0000-00-00', 150000, 'Residential', 'wood_masonry', 30, 0, '', 124.26, 8.253916667, NULL, NULL),
(101, 1, 'Francisco Household', '0000-00-00', 30000, 'Residential', 'wood_masonry', 30, 0, '', 124.2630278, 8.254416667, NULL, NULL),
(102, 1, 'Rodrigo Household', '0000-00-00', 40000, 'Residential', 'masonry', 30, 0, '', 124.2656667, 8.253194444, NULL, NULL),
(103, 1, 'Nestor Household', '0000-00-00', 20000, 'Residential', 'wood', 12, 0, '', 124.2660556, 8.253027778, NULL, NULL),
(104, 1, 'Arnel Household', '0000-00-00', 180000, 'Residential', 'wood_masonry', 30, 0, '', 124.2660556, 8.253055556, NULL, NULL),
(105, 1, 'Edwin Household', '0000-00-00', 150000, 'Residential', 'wood_masonry', 30, 0, '', 124.2661111, 8.253055556, NULL, NULL),
(106, 1, 'Anthony Household', '0000-00-00', 200000, 'Residential', 'wood', 30, 0, '', 124.2655278, 8.252611111, NULL, NULL),
(107, 1, 'Domiemar Household', '0000-00-00', 40000, 'Residential', 'wood', 6, 0, '', 124.2653889, 8.252916667, NULL, NULL),
(108, 1, 'Victoria Household', '0000-00-00', 50000, 'Residential', 'wood', 10, 0, '', 124.2651667, 8.253138889, NULL, NULL),
(109, 1, 'Romeo Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2654167, 8.253472222, NULL, NULL),
(110, 1, 'Robin Household', '0000-00-00', 15000, 'Residential', 'wood', 10, 0, '', 124.26525, 8.253694444, NULL, NULL),
(111, 1, 'Danilo Household', '0000-00-00', 30000, 'Residential', 'wood', 18, 0, '', 124.2641111, 8.253638889, NULL, NULL),
(112, 1, 'Noel Household', '0000-00-00', 100000, 'Residential', 'wood', 20, 0, '', 124.2642778, 8.253416667, NULL, NULL),
(113, 1, 'Epe Household', '0000-00-00', 30000, 'Residential', 'wood', 18, 0, '', 124.2630278, 8.252888889, NULL, NULL),
(114, 1, 'Emilio Household', '0000-00-00', 40000, 'Residential', 'wood', 20, 0, '', 124.263, 8.252416667, NULL, NULL),
(115, 1, 'Gilacio Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.2629722, 8.252444444, NULL, NULL),
(116, 1, 'Arnell Household', '0000-00-00', 150000, 'Residential', 'wood', 30, 0, '', 124.2628889, 8.252333333, NULL, NULL),
(117, 1, 'Renato Household', '0000-00-00', 30000, 'Residential', 'wood', 18, 0, '', 124.2629444, 8.252083333, NULL, NULL),
(118, 1, 'Servillano Household', '0000-00-00', 100000, 'Residential', 'wood', 10, 0, '', 124.2629444, 8.252138889, NULL, NULL),
(119, 1, 'Angelito Household', '0000-00-00', 50000, 'Residential', 'wood', 25, 0, '', 124.2629167, 8.252194444, NULL, NULL),
(120, 1, 'Gabriel Household', '0000-00-00', 40000, 'Residential', 'wood', 12, 0, '', 124.2629167, 8.251888889, NULL, NULL),
(121, 1, 'Jesus Household', '0000-00-00', 100000, 'Residential', 'masonry', 40, 0, '', 124.2628889, 8.251833333, NULL, NULL),
(122, 1, 'Danny Household', '0000-00-00', 30000, 'Residential', 'wood', 10, 0, '', 124.2633056, 8.252111111, NULL, NULL),
(123, 1, 'Rosalino Household', '0000-00-00', 150000, 'Residential', 'wood', 30, 0, '', 124.2635, 8.252166667, NULL, NULL),
(124, 1, 'Danilo Household', '0000-00-00', 16000, 'Residential', 'wood', 18, 0, '', 124.2634167, 8.252194444, NULL, NULL),
(125, 1, 'Helbert Household', '0000-00-00', 50000, 'Residential', 'wood', 16, 0, '', 124.2642222, 8.252861111, NULL, NULL),
(126, 1, 'Michael Household', '0000-00-00', 50000, 'Residential', 'wood', 10, 0, '', 124.2645833, 8.253305556, NULL, NULL),
(127, 1, 'James Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 30, 0, '', 124.2646111, 8.252972222, NULL, NULL),
(128, 1, 'Gregoria Household', '0000-00-00', 100000, 'Residential', 'wood', 20, 0, '', 124.2646667, 8.253083333, NULL, NULL),
(129, 1, 'Danilo Household', '0000-00-00', 60000, 'Residential', 'wood', 15, 0, '', 124.2646389, 8.252833333, NULL, NULL),
(130, 1, 'Jessica Household', '0000-00-00', 30000, 'Residential', 'wood', 20, 0, '', 124.2646944, 8.252805556, NULL, NULL),
(131, 1, 'Dennis Household', '0000-00-00', 70000, 'Residential', 'wood', 20, 0, '', 124.2651389, 8.252888889, NULL, NULL),
(132, 1, 'Archery_2nd Household', '0000-00-00', 70000, 'Residential', 'wood', 10, 0, '', 124.2652222, 8.252888889, NULL, NULL),
(133, 1, 'Gavalier Household', '0000-00-00', 70000, 'Residential', 'wood', 20, 0, '', 124.2651944, 8.252583333, NULL, NULL),
(134, 1, 'Rochel Household', '0000-00-00', 70000, 'Residential', 'wood', 20, 0, '', 124.2651389, 8.252611111, NULL, NULL),
(135, 1, 'Galbieto Household', '0000-00-00', 70000, 'Residential', 'wood_masonry', 30, 0, '', 124.2651944, 8.252555556, NULL, NULL),
(136, 1, 'Rolly Household', '0000-00-00', 100000, 'Residential', 'wood', 20, 0, '', 124.26525, 8.252527778, NULL, NULL),
(137, 1, 'Rennie Household', '0000-00-00', 100000, 'Residential', 'wood', 30, 0, '', 124.2654167, 8.252416667, NULL, NULL),
(138, 1, 'Jay Household', '0000-00-00', 40000, 'Residential', 'wood', 30, 0, '', 124.2652222, 8.252222222, NULL, NULL),
(139, 1, 'Alberto Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, 'owned', 124.2658056, 8.252444444, NULL, NULL),
(140, 1, 'Rosendo Household', '0000-00-00', 40000, 'Residential', 'wood_g.i', 20, 0, '', 124.2659722, 8.252222222, NULL, NULL),
(141, 1, 'Agapito Household', '0000-00-00', 300000, 'Residential', 'masonry', 40, 0, 'owned', 124.266, 8.252472222, NULL, NULL),
(142, 1, 'Ronald Household', '0000-00-00', 150000, 'Residential', 'masonry', 20, 0, '', 124.2660556, 8.252694444, NULL, NULL),
(143, 1, 'Odezza Household', '0000-00-00', 600000, 'Residential', 'masonry', 60, 0, '', 124.2661667, 8.252555556, NULL, NULL),
(144, 1, 'Pilipino Household', '0000-00-00', 150000, 'Residential', 'masonry', 20, 0, '', 124.2662778, 8.252777778, NULL, NULL),
(145, 1, 'Danny Household', '0000-00-00', 300000, 'Residential', 'masonry', 70, 0, '', 124.2661667, 8.252805556, NULL, NULL),
(146, 1, 'Jose Household', '0000-00-00', 70000, 'Residential', 'wood_masonry', 30, 0, '', 124.2665556, 8.252694444, NULL, NULL),
(147, 1, 'Celso Household', '0000-00-00', 40000, 'Residential', 'wood', 18, 0, '', 124.266, 8.252888889, NULL, NULL),
(148, 1, 'Golito Household', '0000-00-00', 150000, 'Residential', 'wood_masonry', 30, 0, '', 124.2653333, 8.253305556, NULL, NULL),
(149, 1, 'Robert Household', '0000-00-00', 150000, 'Residential', 'wood_masonry', 30, 0, '', 124.2659722, 8.252972222, NULL, NULL),
(150, 1, 'Wilfredo Household', '0000-00-00', 10000, 'Residential', 'masonry', 30, 0, '', 124.26675, 8.252416667, NULL, NULL),
(151, 1, 'Jose_Rufo Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 30, 0, '', 124.2662222, 8.251194444, NULL, NULL),
(152, 1, 'Jessie Household', '0000-00-00', 180000, 'Residential', 'wood_masonry', 30, 0, 'owned', 124.2660556, 8.251333333, NULL, NULL),
(153, 1, 'Jaybert Household', '0000-00-00', 70000, 'Residential', 'wood_masonry', 30, 0, '', 124.2660556, 8.250944444, NULL, NULL),
(154, 1, 'Rasol Household', '0000-00-00', 500000, 'Residential', 'masonry', 50, 0, 'owned', 124.2662778, 8.250972222, NULL, NULL),
(155, 1, 'Alfredo Household', '0000-00-00', 20000, 'Residential', 'wood', 14, 0, 'owned', 124.2660556, 8.251138889, NULL, NULL),
(156, 1, 'Leoracito Household', '0000-00-00', 150000, 'Residential', 'wood_masonry', 40, 0, '', 124.2659444, 8.251166667, NULL, NULL),
(157, 1, 'Debber Household', '0000-00-00', 220000, 'Residential', 'masonry', 40, 0, '', 124.2658056, 8.2515, NULL, NULL),
(158, 1, 'Pablo Household', '0000-00-00', 100000, 'Residential', 'wood', 36, 0, '', 124.2653889, 8.251388889, NULL, NULL),
(159, 1, 'Salvacio Household', '0000-00-00', 200000, 'Residential', 'masonry', 80, 0, '', 124.2653333, 8.251388889, NULL, NULL),
(160, 1, 'Marlon Household', '0000-00-00', 40000, 'Residential', 'wood', 18, 0, '', 124.2641667, 8.252638889, NULL, NULL),
(161, 1, 'Romero Household', '0000-00-00', 1500000, 'Residential_Commercial', 'masonry', 100, 0, 'owned', 124.2642778, 8.252611111, NULL, NULL),
(162, 1, 'Lalyn Household', '0000-00-00', 60000, 'Residential', 'wood_masonry', 20, 0, 'owned', 124.2643611, 8.252444444, NULL, NULL),
(163, 1, 'Gilberto Household', '0000-00-00', 80000, 'Residential', 'wood', 10, 0, '', 124.2643056, 8.252444444, NULL, NULL),
(164, 1, 'Eduardo Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.2642778, 8.252472222, NULL, NULL),
(165, 1, 'Bernardino Household', '0000-00-00', 50000, 'Residential', 'wood', 18, 0, '', 124.2642778, 8.25225, NULL, NULL),
(166, 1, 'Christopher Household', '0000-00-00', 40000, 'Residential', 'wood_masonry', 20, 0, '', 124.2643056, 8.252361111, NULL, NULL),
(167, 1, 'Alberto Household', '0000-00-00', 100000, 'Residential', 'masonry', 30, 0, '', 124.2643333, 8.252361111, NULL, NULL),
(168, 1, 'Edrick Household', '0000-00-00', 300000, 'Residential', 'masonry', 40, 0, '', 124.2644722, 8.252472222, NULL, NULL),
(169, 1, 'Abraham Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 30, 0, '', 124.2645278, 8.252444444, NULL, NULL),
(170, 1, 'Teodora Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, 'owned', 124.2642778, 8.252111111, NULL, NULL),
(171, 1, 'Sherwin_Kim Household', '0000-00-00', 60000, 'Residential', 'wood', 18, 0, '', 124.2645, 8.252194444, NULL, NULL),
(172, 1, 'Victor Household', '0000-00-00', 70000, 'Residential', 'wood', 18, 0, '', 124.2645278, 8.252166667, NULL, NULL),
(173, 1, 'Marianita Household', '0000-00-00', 70000, 'Residential', 'wood_masonry', 15, 0, '', 124.2646111, 8.25225, NULL, NULL),
(174, 1, 'Erlinda Household', '0000-00-00', 80000, 'Residential', 'wood', 20, 0, '', 124.2645278, 8.251833333, NULL, NULL),
(175, 1, 'Ramon Household', '0000-00-00', 100000, 'Residential', 'wood', 20, 0, '', 124.2646389, 8.251861111, NULL, NULL),
(176, 1, 'Maine Household', '0000-00-00', 300000, 'Residential', 'masonry', 25, 0, '', 124.2647222, 8.251861111, NULL, NULL),
(177, 1, 'Jun_Dexter Household', '0000-00-00', 250000, 'Residential', 'wood_masonry', 30, 0, '', 124.2646667, 8.251888889, NULL, NULL),
(178, 1, 'Kenneth Household', '0000-00-00', 120000, 'Residential_Commercial', 'wood_masonry', 30, 0, 'owned', 124.2643333, 8.252027778, NULL, NULL),
(179, 1, 'Violeta Household', '0000-00-00', 40000, 'Residential_Commercial', 'wood', 12, 0, 'owned', 124.2642778, 8.251777778, NULL, NULL),
(180, 1, 'Manuel Household', '0000-00-00', 170000, 'Residential_Commercial', 'wood_masonry', 20, 0, 'owned', 124.2641944, 8.251916667, NULL, NULL),
(181, 1, 'Antonia Household', '0000-00-00', 150000, 'Residential', 'wood', 20, 0, '', 124.2646667, 8.251472222, NULL, NULL),
(182, 1, 'Demetria Household', '0000-00-00', 30000, 'Residential', 'wood', 16, 0, '', 124.2646944, 8.251416667, NULL, NULL),
(183, 1, 'Victoriano Household', '0000-00-00', 15000, 'Residential', 'wood', 10, 0, '', 124.2649167, 8.251611111, NULL, NULL),
(184, 1, 'Charita Household', '0000-00-00', 200000, 'Residential', 'wood', 50, 0, '', 124.26475, 8.251611111, NULL, NULL),
(185, 1, 'Lucia Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.2645833, 8.251277778, NULL, NULL),
(186, 1, 'George_Sr. Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2644167, 8.251138889, NULL, NULL),
(187, 7, 'Amel Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.2636111, 8.246305556, NULL, NULL),
(188, 7, 'Ronie Household', '0000-00-00', 500000, 'Residential', 'masonry', 40, 0, '', 124.2631111, 8.247277778, NULL, NULL),
(189, 7, 'Roberto Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.2629444, 8.24775, NULL, NULL),
(190, 7, 'Ricardo Household', '0000-00-00', 15000, 'Residential', 'wood', 8, 0, '', 124.2629722, 8.247694444, NULL, NULL),
(191, 7, 'Anjo Household', '0000-00-00', 20000, 'Residential', 'wood', 17, 0, '', 124.2629722, 8.247722222, NULL, NULL),
(192, 7, 'Wilma Household', '0000-00-00', 30000, 'Residential', 'wood', 20, 0, '', 124.2629722, 8.247666667, NULL, NULL),
(193, 7, 'Merwin Household', '0000-00-00', 300000, 'Residential', 'masonry', 28, 0, '', 124.2626944, 8.246638889, NULL, NULL),
(194, 7, 'Alfonso Household', '0000-00-00', 2000000, 'Residential', 'masonry', 72, 0, 'owned', 124.2625556, 8.246472222, NULL, NULL),
(195, 7, 'Randolph Household', '0000-00-00', 300000, 'Residential', 'masonry', 30, 0, '', 124.2626667, 8.246555556, NULL, NULL),
(196, 7, 'Rexan Household', '0000-00-00', 100000, 'Residential', 'wood_masonry', 30, 0, '', 124.2623333, 8.246638889, NULL, NULL),
(197, 7, 'Susana Household', '0000-00-00', 500000, 'Residential', 'masonry', 60, 0, '', 124.2622778, 8.246666667, NULL, NULL),
(198, 7, 'Dennis Household', '0000-00-00', 100000, 'Residential', 'wood_masonry', 30, 0, '', 124.2621667, 8.246527778, NULL, NULL),
(199, 7, 'Jyme Household', '0000-00-00', 1000000, 'Residential', 'masonry', 40, 0, 'owned', 124.2628611, 8.246222222, NULL, NULL),
(200, 7, 'Narciso Household', '0000-00-00', 90000, 'Residential', 'masonry', 30, 0, '', 124.2624167, 8.246138889, NULL, NULL),
(201, 7, 'Agustin Household', '0000-00-00', 3000000, 'Residential', 'masonry', 50, 0, '', 124.2623056, 8.24625, NULL, NULL),
(202, 7, 'Isagani_Jr. Household', '0000-00-00', 180000, 'Residential', 'wood', 30, 0, '', 124.2618889, 8.246166667, NULL, NULL),
(203, 7, 'Nilo_Jr. Household', '0000-00-00', 30000, 'Residential', 'wood', 18, 0, '', 124.2619444, 8.246166667, NULL, NULL),
(204, 7, 'Alex Household', '0000-00-00', 15000, 'Residential', 'wood', 18, 0, '', 124.2620278, 8.246166667, NULL, NULL),
(205, 7, 'Alberto Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.26175, 8.246166667, NULL, NULL),
(206, 7, 'Danillo Household', '0000-00-00', 30000, 'Residential', 'wood', 18, 0, '', 124.26125, 8.246111111, NULL, NULL),
(207, 1, 'Roque Household', '0000-00-00', 10000, 'Residential', 'wood', 20, 0, '', 124.2651944, 8.253555556, NULL, NULL),
(208, 7, 'Rogger Household', '0000-00-00', 50000, 'Residential', 'masonry', 30, 0, '', 124.2606944, 8.2465, NULL, NULL),
(209, 7, 'Ronilo Household', '0000-00-00', 20000, 'Residential', 'wood', 18, 0, '', 124.2605833, 8.246166667, NULL, NULL),
(210, 7, 'Wiljohn Household', '0000-00-00', 35000, 'Residential', 'masonry', 20, 0, '', 124.2606111, 8.246472222, NULL, NULL),
(211, 7, 'Efharni_jr. Household', '0000-00-00', 50000, 'Residential', 'masonry', 20, 0, '', 124.2606111, 8.246388889, NULL, NULL),
(212, 7, 'Roberto Household', '0000-00-00', 30000, 'Residential', 'wood', 18, 0, '', 124.2604444, 8.246805556, NULL, NULL),
(213, 7, 'Renato Household', '0000-00-00', 20000, 'Residential', 'wood_masonry', 30, 0, '', 124.2604722, 8.246833333, NULL, NULL),
(214, 4, 'Colito Household', '0000-00-00', 40000, 'Residential', 'wood', 28, 0, '', 124.2629444, 8.248916667, NULL, NULL),
(215, 4, 'Sucoro Household', '0000-00-00', 20000, 'Residential', 'wood', 12, 0, 'owned', 124.2628056, 8.248916667, NULL, NULL),
(216, 4, 'Therisita Household', '0000-00-00', 150000, 'Residential', 'masonry', 36, 0, '', 124.2629167, 8.249027778, NULL, NULL),
(217, 4, 'Lebrito Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, 'owned', 124.2628333, 8.249111111, NULL, NULL),
(218, 4, 'Remonito Household', '0000-00-00', 70000, 'Residential', 'wood', 22, 0, 'owned', 124.2629167, 8.248888889, NULL, NULL),
(219, 4, 'Ignacio Household', '0000-00-00', 15000, 'Residential', 'wood', 18, 0, '', 124.2628056, 8.248722222, NULL, NULL),
(220, 4, 'Michael Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 30, 0, '', 124.2626667, 8.248888889, NULL, NULL),
(221, 4, 'Edwin_jr. Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 30, 0, '', 124.2625833, 8.248972222, NULL, NULL),
(222, 4, 'Rogelio_jr. Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 30, 0, '', 124.2626111, 8.248972222, NULL, NULL),
(223, 4, 'Oliver Household', '0000-00-00', 80000, 'Residential', 'wood_masonry', 30, 0, '', 124.2626111, 8.248916667, NULL, NULL),
(224, 4, 'Agripino Household', '0000-00-00', 80000, 'Residential', 'wood', 30, 0, '', 124.2626667, 8.249, NULL, NULL),
(225, 4, 'Bella Household', '0000-00-00', 30000, 'Residential', 'wood', 20, 0, '', 124.2621111, 8.248805556, NULL, NULL),
(226, 4, 'Juan Household', '0000-00-00', 80000, 'Residential', 'wood', 20, 0, '', 124.2620833, 8.248888889, NULL, NULL),
(227, 4, 'Ronillo Household', '0000-00-00', 120000, 'Residential', 'masonry', 130, 0, '', 124.2623611, 8.248777778, NULL, NULL),
(228, 4, 'Bob Household', '0000-00-00', 20000, 'Residential', 'wood', 18, 0, '', 124.2626667, 8.248555556, NULL, NULL),
(229, 4, 'Susimo Household', '0000-00-00', 15000, 'Residential', 'wood', 10, 0, '', 124.2626944, 8.248583333, NULL, NULL),
(230, 4, 'Feliciano Household', '0000-00-00', 15000, 'Residential', 'wood', 10, 0, '', 124.2626389, 8.248555556, NULL, NULL),
(231, 7, 'Hermino Household', '0000-00-00', 15000, 'Residential', 'wood', 10, 0, '', 124.2625556, 8.248416667, NULL, NULL),
(232, 4, 'Rubin Household', '0000-00-00', 15000, 'Residential', 'wood', 10, 0, '', 124.2625, 8.248361111, NULL, NULL),
(233, 7, 'Pinyo Household', '0000-00-00', 40000, 'Residential', 'wood', 18, 0, '', 124.2624167, 8.248277778, NULL, NULL),
(234, 7, 'Costiquia Household', '0000-00-00', 500000, 'Residential', 'masonry', 10, 0, '', 124.2621667, 8.2485, NULL, NULL),
(235, 4, 'Priff Household', '0000-00-00', 200000, 'Residential', 'masonry', 36, 0, '', 124.2621944, 8.248444444, NULL, NULL),
(236, 4, 'Primo Household', '0000-00-00', 50000, 'Residential', 'wood', 30, 0, '', 124.26225, 8.248638889, NULL, NULL),
(237, 4, 'Rehina Household', '0000-00-00', 15000, 'Residential', 'wood', 10, 0, '', 124.2621389, 8.248722222, NULL, NULL),
(238, 4, 'Bonita Household', '0000-00-00', 80000, 'Residential', 'wood', 20, 0, '', 124.2620833, 8.248638889, NULL, NULL),
(239, 7, 'Juditha Household', '0000-00-00', 30000, 'Residential', 'wood', 12, 0, '', 124.2619167, 8.248472222, NULL, NULL),
(240, 7, 'Arbin Household', '0000-00-00', 80000, 'Residential', 'wood', 20, 0, '', 124.2620278, 8.248555556, NULL, NULL),
(241, 7, 'Waaya Household', '0000-00-00', 30000, 'Residential', 'wood', 10, 0, '', 124.2619722, 8.248527778, NULL, NULL),
(242, 7, 'Miguel Household', '0000-00-00', 80000, 'Residential', 'wood', 18, 0, '', 124.262, 8.2485, NULL, NULL),
(243, 7, 'Ronnie Household', '0000-00-00', 100000, 'Residential', 'masonry', 36, 0, '', 124.2619167, 8.2485, NULL, NULL),
(244, 7, 'Jose Manuel Household', '0000-00-00', 100000, 'Residential', 'wood', 36, 0, '', 124.2618333, 8.248472222, NULL, NULL),
(245, 7, 'Edwin Household', '0000-00-00', 100000, 'Residential', 'wood', 18, 0, '', 124.2619722, 8.248444444, NULL, NULL),
(246, 7, 'Manuel Household', '0000-00-00', 120000, 'Residential', 'masonry', 36, 0, '', 124.2621111, 8.248305556, NULL, NULL),
(247, 7, 'Jassie Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2620278, 8.248472222, NULL, NULL),
(248, 7, 'AlienniÃ±o Household', '0000-00-00', 100000, 'Residential', 'wood', 10, 0, '', 124.2619722, 8.248361111, NULL, NULL),
(249, 7, 'Recardo_Jr Household', '0000-00-00', 100000, 'Residential', 'masonry', 32, 0, '', 124.2621389, 8.248361111, NULL, NULL),
(250, 7, 'Abdon Household', '0000-00-00', 700000, 'Residential', 'masonry', 40, 0, '', 124.2629722, 8.247972222, NULL, NULL),
(251, 7, 'Mario Household', '0000-00-00', 400000, 'Residential', 'masonry', 60, 0, '', 124.2626389, 8.248194444, NULL, NULL),
(252, 7, 'Renato Household', '0000-00-00', 200000, 'Residential', 'masonry', 36, 0, '', 124.2625833, 8.248222222, NULL, NULL),
(253, 7, 'Loe Household', '0000-00-00', 600000, 'Residential', 'masonry', 54, 0, '', 124.2623333, 8.248055556, NULL, NULL),
(254, 7, 'Edita Household', '0000-00-00', 70000, 'Residential', 'masonry', 36, 0, '', 124.2619444, 8.247833333, NULL, NULL),
(255, 7, 'Arneil Household', '0000-00-00', 100000, 'Residential', 'masonry', 38, 0, '', 124.261, 8.247388889, NULL, NULL),
(256, 7, 'Gane Household', '0000-00-00', 100000, 'Residential', 'wood', 30, 0, '', 124.2604722, 8.247388889, NULL, NULL),
(257, 7, 'Jhonmar Household', '0000-00-00', 80000, 'Residential', 'wood', 18, 0, '', 124.2605, 8.247333333, NULL, NULL),
(258, 7, 'Aloner Household', '0000-00-00', 50000, 'Residential', 'wood', 10, 0, '', 124.2604444, 8.247333333, NULL, NULL),
(259, 7, 'Samuel Household', '0000-00-00', 50000, 'Residential', 'wood', 10, 0, '', 124.2605, 8.247361111, NULL, NULL),
(260, 7, 'NiÃ±o Household', '0000-00-00', 40000, 'Residential', 'woow', 10, 0, '', 124.2604444, 8.247222222, NULL, NULL),
(261, 7, 'Jay Household', '0000-00-00', 30000, 'Residential', 'wood', 12, 0, '', 124.2604444, 8.247194444, NULL, NULL),
(262, 7, 'Juan Household', '0000-00-00', 600000, 'Residential', 'masonry', 38, 0, '', 124.2608611, 8.24725, NULL, NULL),
(263, 7, 'Raul Household', '0000-00-00', 1000000, 'Residential', 'masonry', 50, 0, '', 124.2608611, 8.24725, NULL, NULL),
(264, 7, 'Ronie Household', '0000-00-00', 200000, 'Residential', 'masonry_wood', 34, 0, '', 124.2618056, 8.247833333, NULL, NULL),
(265, 1, 'Jestony Household', '0000-00-00', 40000, 'Residential', 'wood', 20, 0, '', 124.2595556, 8.253388889, NULL, NULL),
(266, 1, 'Fediric Household', '0000-00-00', 40000, 'Residential', 'wood', 20, 0, '', 124.2664167, 8.252833333, NULL, NULL),
(267, 1, 'Ruel Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2653333, 8.252444444, NULL, NULL),
(268, 5, 'Welfredo Household', '0000-00-00', 150000, 'Residential', 'masonry', 50, 0, '', 124.2625, 8.24925, NULL, NULL),
(269, 5, 'Lloyd Household', '0000-00-00', 20000, 'Residential', 'wood', 18, 0, '', 124.2624167, 8.249277778, NULL, NULL),
(270, 5, 'Waide Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2624444, 8.249305556, NULL, NULL),
(271, 5, 'Sunday Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2625278, 8.249138889, NULL, NULL),
(272, 5, 'Arsinion Household', '0000-00-00', 15000000, 'Residential', 'masonry', 80, 0, '', 124.2626111, 8.249444444, NULL, NULL),
(273, 5, 'Rodrigo Household', '0000-00-00', 150000, 'Residential', 'masonry', 70, 0, '', 124.2625556, 8.249472222, NULL, NULL),
(274, 5, 'Romolo Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2625556, 8.249472222, NULL, NULL),
(275, 5, 'Rolando Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2625833, 8.249472222, NULL, NULL),
(276, 5, 'Jaynard Household', '0000-00-00', 100000, 'Residential', 'wood', 20, 0, '', 124.2626111, 8.249611111, NULL, NULL),
(277, 5, 'Edgar_Sr. Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2625833, 8.249638889, NULL, NULL),
(278, 3, 'Francisco Household', '0000-00-00', 60000, 'Residential', 'masonry', 24, 0, '', 124.26275, 8.249861111, NULL, NULL),
(279, 3, 'Eusticio Household', '0000-00-00', 300000, 'Residential', 'wood', 50, 0, '', 124.2627222, 8.249888889, NULL, NULL),
(280, 3, 'Emelita Household', '0000-00-00', 700000, 'Residential', 'masonry', 50, 0, '', 124.2627222, 8.249861111, NULL, NULL),
(281, 2, 'Rexie Household', '0000-00-00', 50000, 'Residential', 'wood', 15, 0, '', 124.2627222, 8.249861111, NULL, NULL),
(282, 2, 'Jerwin Household', '0000-00-00', 200000, 'Residential', 'masonry', 50, 0, '', 124.2626667, 8.250194444, NULL, NULL),
(283, 2, 'Rodel Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2626389, 8.250055556, NULL, NULL),
(284, 2, 'Luis Household', '0000-00-00', 500000, 'Residential', 'masonry', 100, 0, '', 124.2626111, 8.250027778, NULL, NULL),
(285, 2, 'Purperio Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2625278, 8.250083333, NULL, NULL),
(286, 2, 'Marino Household', '0000-00-00', 200000, 'Residential', 'masonry', 50, 0, '', 124.2624722, 8.250055556, NULL, NULL),
(287, 2, 'Efren Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2624167, 8.249833333, NULL, NULL),
(288, 2, 'Glen Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2623611, 8.249888889, NULL, NULL),
(289, 2, 'Vinanlia Household', '0000-00-00', 500000, 'Residential', 'masonry', 50, 0, '', 124.2623611, 8.249944444, NULL, NULL),
(290, 2, 'Arnold Household', '0000-00-00', 800000, 'Residential', 'masonry', 50, 0, '', 124.2624722, 8.249861111, NULL, NULL),
(291, 5, 'Celso Household', '0000-00-00', 1500000, 'Residential', 'masonry', 60, 0, '', 124.2625556, 8.24975, NULL, NULL),
(292, 5, 'Herey Household', '0000-00-00', 150000, 'Residential', 'wood', 30, 0, '', 124.2625278, 8.249666667, NULL, NULL),
(293, 5, 'Jocelyn Household', '0000-00-00', 300000, 'Residential', 'masonry', 50, 0, '', 124.2625, 8.249722222, NULL, NULL),
(294, 5, 'Michael Household', '0000-00-00', 200000, 'Residential', 'masonry', 50, 0, '', 124.2624167, 8.249722222, NULL, NULL),
(295, 5, 'Bedandino Household', '0000-00-00', 150000, 'Residential', 'masonry', 50, 0, '', 124.2623611, 8.249777778, NULL, NULL),
(296, 5, 'Julita Household', '0000-00-00', 70000, 'Residential', 'wood', 20, 0, '', 124.26225, 8.249527778, NULL, NULL),
(297, 5, 'Alexander Household', '0000-00-00', 80000, 'Residential', 'wood', 30, 0, '', 124.2623056, 8.249611111, NULL, NULL),
(298, 5, 'Junrell Household', '0000-00-00', 50000, 'Residential', 'wood', 10, 0, '', 124.2622778, 8.249638889, NULL, NULL),
(299, 5, 'Dionicio Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2622222, 8.249638889, NULL, NULL),
(300, 5, 'Elezardo Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2622222, 8.249444444, NULL, NULL),
(301, 5, 'Jerry Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2622222, 8.249472222, NULL, NULL),
(302, 5, 'Rene Household', '0000-00-00', 300000, 'Residential', 'masonry', 30, 0, '', 124.2621944, 8.249611111, NULL, NULL),
(303, 5, 'Reynaldo Household', '0000-00-00', 1000000, 'Residential', 'masonry', 45, 0, '', 124.2621667, 8.249638889, NULL, NULL),
(304, 5, 'Roberto Household', '0000-00-00', 150000, 'Residential', 'wood', 30, 0, '', 124.2618056, 8.249083333, NULL, NULL),
(305, 5, 'Ernesto Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2620278, 8.249138889, NULL, NULL),
(306, 5, 'Ciris Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.26225, 8.249194444, NULL, NULL),
(307, 5, 'Edward_Jr. Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2621389, 8.249166667, NULL, NULL),
(308, 5, 'Edwardo Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2621667, 8.24925, NULL, NULL),
(309, 5, 'Eric Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2621667, 8.249194444, NULL, NULL),
(310, 5, 'Erwin Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2621111, 8.249277778, NULL, NULL),
(311, 5, 'Salvador Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2619722, 8.24925, NULL, NULL),
(312, 5, 'Adoracion Household', '0000-00-00', 80000, 'Residential', 'wood', 60, 0, '', 124.2619444, 8.24925, NULL, NULL),
(313, 5, 'Allen Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2620833, 8.249333333, NULL, NULL),
(314, 5, 'Almer Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2620556, 8.249305556, NULL, NULL),
(315, 5, 'Geofry Household', '0000-00-00', 150000, 'Residential', 'masonry', 60, 0, '', 124.2621944, 8.249944444, NULL, NULL),
(316, 5, 'Dennis Household', '0000-00-00', 40000, 'Residential', 'wood', 12, 0, '', 124.2620278, 8.25, NULL, NULL),
(317, 5, 'Sunny Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2618889, 8.25, NULL, NULL),
(318, 5, 'Teddy Household', '0000-00-00', 40000, 'Residential', 'wood', 10, 0, '', 124.2618056, 8.249694444, NULL, NULL),
(319, 5, 'Marcian Household', '0000-00-00', 60000, 'Residential', 'wood', 20, 0, '', 124.2617222, 8.249888889, NULL, NULL),
(320, 2, 'Elsa Household', '0000-00-00', 1000000, 'Residential', 'masonry', 50, 0, '', 124.2623056, 8.250611111, NULL, NULL),
(321, 2, 'Michael Household', '0000-00-00', 500000, 'Residential', 'masonry', 40, 0, '', 124.2623333, 8.250638889, NULL, NULL),
(322, 2, 'Dennis Household', '0000-00-00', 150000, 'Residential', 'masonry', 50, 0, '', 124.2623889, 8.250694444, NULL, NULL),
(323, 2, 'Hygenus Household', '0000-00-00', 600000, 'Residential', 'masonry', 80, 0, '', 124.2626667, 8.250916667, NULL, NULL),
(324, 2, 'Asther Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2624722, 8.251222222, NULL, NULL),
(325, 2, 'Feresita Household', '0000-00-00', 500000, 'Residential', 'masonry', 40, 0, '', 124.2624722, 8.25125, NULL, NULL),
(326, 2, 'Vicente Household', '0000-00-00', 500000, 'Residential', 'masonry', 50, 0, '', 124.2625278, 8.251083333, NULL, NULL),
(327, 2, 'Herardo Household', '0000-00-00', 500000, 'Residential', 'masonry', 30, 0, '', 124.2623056, 8.250472222, NULL, NULL),
(328, 2, 'Josifina Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2622222, 8.250305556, NULL, NULL),
(329, 2, 'Nestor Household', '0000-00-00', 200000, 'Residential', '', 40, 0, '', 124.2624444, 8.25025, NULL, NULL),
(330, 2, 'Alay Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2624167, 8.250277778, NULL, NULL),
(331, 2, 'Nilva Household', '0000-00-00', 350000, 'Residential', 'masonry', 60, 0, '', 124.2621944, 8.250694444, NULL, NULL),
(332, 2, 'Winefredo Household', '0000-00-00', 50000, 'Residential', 'wood', 30, 0, '', 124.2619444, 8.25075, NULL, NULL),
(333, 2, 'Eljun Household', '0000-00-00', 350000, 'Residential', 'masonry', 60, 0, '', 124.26475, 8.250777778, NULL, NULL),
(334, 2, 'Noel Household', '0000-00-00', 100000, 'Residential', 'masonry', 40, 0, '', 124.2678056, 8.250972222, NULL, NULL),
(335, 2, 'Alice Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2615833, 8.250972222, NULL, NULL),
(336, 2, 'Wilfred Household', '0000-00-00', 0, 'Residential', 'masonry', 40, 0, '', 124.2616667, 8.251, NULL, NULL),
(337, 2, 'Ronaldo Household', '0000-00-00', 100000, 'Residential', 'masonry', 40, 0, '', 124.2616111, 8.251027778, NULL, NULL),
(338, 2, 'Elvira Household', '0000-00-00', 600000, 'Residential', 'masonry', 50, 0, '', 124.2615556, 8.251138889, NULL, NULL),
(339, 2, 'Alfredo Household', '0000-00-00', 750000, 'Residential', 'masonry', 60, 0, '', 124.2616111, 8.251777778, NULL, NULL),
(340, 2, 'Christopher Household', '0000-00-00', 50000, 'Residential', 'masonry', 50, 0, '', 124.2617222, 8.251305556, NULL, NULL),
(341, 2, 'Juan Household', '0000-00-00', 50000, 'Residential', 'masonry', 60, 0, '', 124.2619722, 8.251472222, NULL, NULL),
(342, 2, 'Maria Household', '0000-00-00', 150000, 'Residential', 'masonry', 4, 0, '', 124.2608889, 8.250416667, NULL, NULL),
(343, 3, 'Raynel Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2605278, 8.250305556, NULL, NULL),
(344, 3, 'DelapiÃ±a Household', '0000-00-00', 1000000, 'Residential', 'masonry', 50, 0, '', 124.2602778, 8.250305556, NULL, NULL),
(345, 3, 'Vince Household', '0000-00-00', 60000, 'Residential', 'wood', 10, 0, '', 124.2602222, 8.250305556, NULL, NULL),
(346, 3, 'Jenilyn Household', '0000-00-00', 30000, 'Residential', 'wood', 20, 0, '', 124.26025, 8.250083333, NULL, NULL),
(347, 3, 'Glenda Household', '0000-00-00', 500000, 'Residential', 'masonry', 40, 0, '', 124.2601028, 8.250277778, NULL, NULL),
(348, 3, 'Jipe Household', '0000-00-00', 500000, 'Residential', 'wo', 15, 0, '', 124.2595556, 8.250194444, NULL, NULL),
(349, 3, 'Marsita Household', '0000-00-00', 1000000, 'Residential', 'masonry', 50, 0, '', 124.2598333, 8.250722222, NULL, NULL),
(350, 3, 'Elmir Household', '0000-00-00', 300000, 'Residential', 'wood', 30, 0, '', 124.2598889, 8.250722222, NULL, NULL),
(351, 3, 'Emily Household', '0000-00-00', 60000, 'Residential', '6', 12, 0, '', 124.2597222, 8.250888889, NULL, NULL),
(352, 3, 'Erlinda Household', '0000-00-00', 40000, 'Residential', 'wood', 20, 0, '', 124.2597222, 8.250916667, NULL, NULL),
(353, 3, 'Guelberto_Jr. Household', '0000-00-00', 80000, 'Residential', 'masonry', 30, 0, '', 124.2595833, 8.251111111, NULL, NULL),
(354, 3, 'Ribecca Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2594722, 8.251111111, NULL, NULL),
(355, 3, 'Ray Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2595, 8.251083333, NULL, NULL),
(356, 3, 'Luciano Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2595556, 8.251, NULL, NULL),
(357, 3, 'Richard Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2595278, 8.250972222, NULL, NULL),
(358, 3, 'Plopanic Household', '0000-00-00', 100000, 'Residential', 'wood', 39, 0, '', 124.2595833, 8.250833333, NULL, NULL),
(359, 3, 'Dan_Vanteri Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2596111, 8.250944444, NULL, NULL),
(360, 3, 'Leonardo Household', '0000-00-00', 500000, 'Residential', 'masonry', 40, 0, '', 124.2593611, 8.251138889, NULL, NULL),
(361, 3, 'Pablo Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2594167, 8.251055556, NULL, NULL),
(362, 3, 'Paul Rey Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2592778, 8.251055556, NULL, NULL),
(363, 3, 'Herry Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.25925, 8.251, NULL, NULL),
(364, 3, 'Herito Household', '0000-00-00', 80000, 'Residential', 'wood', 40, 0, '', 124.2591667, 8.250944444, NULL, NULL),
(365, 3, 'Carlo Household', '0000-00-00', 50000, 'Residential', 'wood', 12, 0, '', 124.2591389, 8.250916667, NULL, NULL),
(366, 3, 'Verhil Household', '0000-00-00', 80000, 'Residential', 'wood', 50, 0, '', 124.2591667, 8.250916667, NULL, NULL),
(367, 3, 'Decideryo Household', '0000-00-00', 40000, 'Residential', 'wood', 16, 0, '', 124.2605278, 8.251, NULL, NULL),
(368, 3, 'Marvin Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2592806, 8.251138889, NULL, NULL),
(369, 3, 'Carlos Household', '0000-00-00', 40000, 'Residential', 'wood', 18, 0, '', 124.2589722, 8.250861111, NULL, NULL),
(370, 3, 'Ruel Household', '0000-00-00', 40000, 'Residential', 'wood', 20, 0, '', 124.2589167, 8.250888889, NULL, NULL),
(371, 3, 'Michael Household', '0000-00-00', 100000, 'Residential', 'wood', 30, 0, '', 124.2589167, 8.250944444, NULL, NULL),
(372, 3, 'Ariel Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.25875, 8.250861111, NULL, NULL),
(373, 3, 'Glenn Household', '0000-00-00', 100000, 'Residential', 'wood', 30, 0, '', 124.2589722, 8.251083333, NULL, NULL),
(374, 3, 'Miguelito Household', '0000-00-00', 100000, 'Residential', 'wood', 30, 0, '', 124.2589722, 8.251111111, NULL, NULL),
(375, 3, 'Richard Household', '0000-00-00', 0, 'Residential', 'masonry', 50, 0, '', 124.259, 8.251138889, NULL, NULL),
(376, 3, 'Dionesio Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2591111, 8.251194444, NULL, NULL),
(377, 3, 'Romel Household', '0000-00-00', 40000, 'Residential', 'wood', 18, 0, '', 124.2591389, 8.251, NULL, NULL),
(378, 3, 'Bartolome Household', '0000-00-00', 100000, 'Residential', 'wood', 30, 0, '', 124.2587778, 8.251138889, NULL, NULL),
(379, 3, 'Arnold Household', '0000-00-00', 100000, 'Residential', 'masonry', 40, 0, '', 124.2587778, 8.251972222, NULL, NULL),
(380, 3, 'Alfredo Household', '0000-00-00', 150000, 'Residential', 'wood', 30, 0, '', 124.25875, 8.251888889, NULL, NULL),
(381, 3, 'Roland Household', '0000-00-00', 30000, 'Residential', 'wood', 10, 0, '', 124.2588056, 8.252, NULL, NULL),
(382, 3, 'Gudofredo Household', '0000-00-00', 20000, 'Residential', 'wood', 10, 0, '', 124.2587778, 8.252, NULL, NULL),
(383, 3, 'Duglas Household', '0000-00-00', 100000, 'Residential', 'wood', 18, 0, '', 124.2586667, 8.252055556, NULL, NULL),
(384, 3, 'Leonardo Household', '0000-00-00', 70000, 'Residential', 'wood', 18, 0, '', 124.2588611, 8.252111111, NULL, NULL),
(385, 3, 'Gersiel Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.2588611, 8.252194444, NULL, NULL),
(386, 3, 'Zeo Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2588889, 8.252166667, NULL, NULL),
(387, 3, 'Rashel Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2590278, 8.252222222, NULL, NULL),
(388, 3, 'Carmilita Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.259, 8.252277778, NULL, NULL),
(389, 3, 'Ricky Household', '0000-00-00', 200000, 'Residential', 'masonry', 60, 0, '', 124.2590278, 8.252305556, NULL, NULL),
(390, 3, 'Ernie Household', '0000-00-00', 60000, 'Residential', 'wood', 40, 0, '', 124.2590278, 8.252277778, NULL, NULL),
(391, 3, 'Jessie Household', '0000-00-00', 250000, 'Residential', 'wood', 30, 0, '', 124.2591111, 8.252333333, NULL, NULL),
(392, 3, 'Ricky Household', '0000-00-00', 300000, 'Residential', 'masonry', 50, 0, '', 124.2591111, 8.252361111, NULL, NULL),
(393, 3, 'Renny_Boy Household', '0000-00-00', 60000, 'Residential', 'wood', 40, 0, '', 124.2591667, 8.252444444, NULL, NULL),
(394, 3, 'Rolando Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.2592222, 8.252416667, NULL, NULL),
(395, 3, 'Robin Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2591111, 8.252388889, NULL, NULL),
(396, 3, 'Erlito Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.2591944, 8.252472222, NULL, NULL),
(397, 3, 'Jayson Household', '0000-00-00', 30000, 'Residential', 'wood', 10, 0, '', 124.2593333, 8.252555556, NULL, NULL),
(398, 3, 'Runato Household', '0000-00-00', 20000, 'Residential', 'wood', 15, 0, '', 124.2593056, 8.252611111, NULL, NULL),
(399, 3, 'Edwin Household', '0000-00-00', 150000, 'Residential', '', 30, 0, '', 124.2593056, 8.252361111, NULL, NULL),
(400, 3, 'Armand Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2593611, 8.252277778, NULL, NULL),
(401, 3, 'Danilo Household', '0000-00-00', 200000, 'Residential', 'masonry', 320, 0, '', 124.25925, 8.252277778, NULL, NULL);
INSERT INTO `buildings` (`id`, `purok_id`, `name`, `year_constructed`, `net_value`, `building_usage`, `structure`, `area`, `no_stories`, `holding`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(402, 3, 'Joel Household', '0000-00-00', 150000, 'Residential', 'wood', 40, 0, '', 124.2591667, 8.252305556, NULL, NULL),
(403, 3, 'Wilfredo Household', '0000-00-00', 300000, 'Residential', 'masonry', 30, 0, '', 124.2591944, 8.252194444, NULL, NULL),
(404, 3, 'Raymond Household', '0000-00-00', 150000, 'Residential', 'masonry', 60, 0, '', 124.2590556, 8.252111111, NULL, NULL),
(405, 3, 'Filipe Household', '0000-00-00', 200000, 'Residential', 'masonry', 36, 0, '', 124.2590833, 8.252083333, NULL, NULL),
(406, 3, 'Real Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2590833, 8.252027778, NULL, NULL),
(407, 3, 'Jhon_Carlo Household', '0000-00-00', 200000, 'Residential', 'masonry', 60, 0, '', 124.2591111, 8.252111111, NULL, NULL),
(408, 3, 'Dominador Household', '0000-00-00', 0, 'Residential', 'masonry', 50, 0, '', 124.2591111, 8.252194444, NULL, NULL),
(409, 3, 'Danilo Household', '0000-00-00', 300000, 'Residential', 'masonry', 40, 0, '', 124.2591389, 8.252027778, NULL, NULL),
(410, 3, 'Roberto Household', '0000-00-00', 100000, 'Residential', 'masonry', 40, 0, '', 124.2591111, 8.251944444, NULL, NULL),
(411, 3, 'Danti Household', '0000-00-00', 300000, 'Residential', 'masonry', 40, 0, '', 124.2591667, 8.251861111, NULL, NULL),
(412, 3, 'Haime Household', '0000-00-00', 100000, 'Residential', 'wood', 50, 0, '', 124.25925, 8.251861111, NULL, NULL),
(413, 3, 'Alojandro Household', '0000-00-00', 60000, 'Residential', 'wood', 40, 0, '', 124.2591944, 8.251888889, NULL, NULL),
(414, 3, 'leonides Household', '0000-00-00', 40000, 'Residential', 'wood', 15, 0, '', 124.2592222, 8.251861111, NULL, NULL),
(415, 3, 'Marlui Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2591667, 8.251861111, NULL, NULL),
(416, 3, 'Rumolo Household', '0000-00-00', 100000, 'Residential', 'wood', 18, 0, '', 124.2591667, 8.251805556, NULL, NULL),
(417, 3, 'Orvelie Household', '0000-00-00', 100000, 'Residential', 'masonry', 40, 0, '', 124.2593056, 8.251777778, NULL, NULL),
(418, 3, 'Dionicio Household', '0000-00-00', 30000, 'Residential', 'wood', 10, 0, '', 124.2595, 8.251833333, NULL, NULL),
(419, 3, 'Felix Household', '0000-00-00', 100000, 'Residential', 'wood', 12, 0, '', 124.2595556, 8.25275, NULL, NULL),
(420, 3, 'Raul Household', '0000-00-00', 2000000, 'Residential', 'masonry', 80, 0, '', 124.2621944, 8.252638889, NULL, NULL),
(421, 3, 'Ruel Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.2604444, 8.251583333, NULL, NULL),
(422, 8, 'Edwardo Household', '0000-00-00', 500000, 'Residential', 'wood', 60, 0, '', 124.2593889, 8.249777778, NULL, NULL),
(423, 8, 'Hobeto Household', '0000-00-00', 1000000, 'Residential', 'masonry', 50, 0, '', 124.2592778, 8.249694444, NULL, NULL),
(424, 8, 'Herina Household', '0000-00-00', 1000000, 'Residential', 'masonry', 80, 0, '', 124.2590278, 8.247027778, NULL, NULL),
(425, 8, 'Analyn Household', '0000-00-00', 300000, 'Residential', 'masonry', 50, 0, '', 124.2589167, 8.250138889, NULL, NULL),
(426, 8, 'Rey Household', '0000-00-00', 120000, 'Residential', 'wood', 40, 0, '', 124.2590278, 8.250388889, NULL, NULL),
(427, 8, 'Pedro_Sr. Household', '0000-00-00', 200000, 'Residential', 'wood', 50, 0, '', 124.2590556, 8.250416667, NULL, NULL),
(428, 8, 'Vicente Household', '0000-00-00', 400000, 'Residential', 'wood', 70, 0, '', 124.2588889, 8.250527778, NULL, NULL),
(429, 8, 'Simeon Household', '0000-00-00', 200000, 'Residential', 'wood', 36, 0, '', 124.2588889, 8.250527778, NULL, NULL),
(430, 8, 'Fredo Household', '0000-00-00', 150000, 'Residential', 'wood', 40, 0, '', 124.2589444, 8.250611111, NULL, NULL),
(431, 8, 'Christian Household', '0000-00-00', 500000, 'Residential', 'masonry', 80, 0, '', 124.2585278, 8.250166667, NULL, NULL),
(432, 8, 'Elmer Household', '0000-00-00', 1000000, 'Residential', 'masonry', 60, 0, '', 124.2582222, 8.24975, NULL, NULL),
(433, 8, 'Leo Household', '0000-00-00', 200000, 'Residential', 'masonry', 60, 0, '', 124.2583333, 8.249666667, NULL, NULL),
(434, 8, 'Teotimo Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2587778, 8.248972222, NULL, NULL),
(435, 8, 'Rey Household', '0000-00-00', 1000000, 'Residential', 'masonry', 40, 0, '', 124.2588333, 8.249, NULL, NULL),
(436, 8, 'Eigene Household', '0000-00-00', 500000, 'Residential', 'wood', 60, 0, '', 124.2586944, 8.249083333, NULL, NULL),
(437, 8, 'Alan Household', '0000-00-00', 1000000, 'Residential', 'masonry', 60, 0, '', 124.2586389, 8.249055556, NULL, NULL),
(438, 1, 'Romeo Household', '0000-00-00', 100000, 'Residential', 'masonry', 37, 0, '', 124.2654167, 8.2535, NULL, NULL),
(439, 1, 'John_Michael Household', '0000-00-00', 100000, 'Residential', 'wood', 26, 0, '', 124.2684167, 8.251694444, NULL, NULL),
(440, 1, 'Danny Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2683889, 8.251722222, NULL, NULL),
(441, 1, 'James_Nicky Household', '0000-00-00', 150000, 'Residential', 'wood', 40, 0, '', 124.2683333, 8.251527778, NULL, NULL),
(442, 1, 'Floreine Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2681111, 8.251555556, NULL, NULL),
(443, 1, 'Joel Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.268, 8.251361111, NULL, NULL),
(444, 1, 'Eric Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.2680556, 8.251555556, NULL, NULL),
(445, 1, 'Diosdado Household', '0000-00-00', 200000, 'Residential', 'masonry', 30, 0, '', 124.2681389, 8.251388889, NULL, NULL),
(446, 1, 'Julyo Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2681111, 8.2515, NULL, NULL),
(447, 1, 'Nelson Household', '0000-00-00', 300000, 'Residential', 'masonry', 30, 0, '', 124.2678333, 8.251444444, NULL, NULL),
(448, 1, 'Pebreto Household', '0000-00-00', 100000, 'Residential', 'wood', 30, 0, '', 124.2679444, 8.251416667, NULL, NULL),
(449, 1, 'Ermenia Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2681389, 8.251527778, NULL, NULL),
(450, 1, 'Julieta Household', '0000-00-00', 100000, 'residential', 'wood', 16, 0, '', 124.2681944, 8.251, NULL, NULL),
(451, 1, 'Mark Household', '0000-00-00', 40000, 'Residential', 'wood', 12, 0, '', 124.2683056, 8.251083333, NULL, NULL),
(452, 1, 'Nio Household', '0000-00-00', 300000, 'Residential', 'masonry', 60, 0, '', 124.2682222, 8.251194444, NULL, NULL),
(453, 1, 'Henry Household', '0000-00-00', 300000, 'Residential', 'masonry', 36, 0, '', 124.2681667, 8.251305556, NULL, NULL),
(454, 1, 'Arnold Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2681944, 8.251277778, NULL, NULL),
(455, 6, 'Acioncion Household', '0000-00-00', 300000, 'Residential', 'masonry', 50, 0, '', 124.2675, 8.249972222, NULL, NULL),
(456, 6, 'Estella Household', '0000-00-00', 50000, 'Residential', 'wood', 16, 0, '', 124.2674444, 8.250027778, NULL, NULL),
(457, 6, 'Pepito Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2674444, 8.249666667, NULL, NULL),
(458, 6, 'Serhiyo Household', '0000-00-00', 5000, 'Residential', 'wood', 3, 0, '', 124.2674167, 8.24975, NULL, NULL),
(459, 6, 'Judy_Ann Household', '0000-00-00', 100000, 'Residential', 'wood', 50, 0, '', 124.2673333, 8.249583333, NULL, NULL),
(460, 6, 'Andre_Serald Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2677222, 8.249583333, NULL, NULL),
(461, 6, 'Allan Household', '0000-00-00', 150000, 'Residential', 'wood', 40, 0, '', 124.2676667, 8.249555556, NULL, NULL),
(462, 6, 'Ernisto Household', '0000-00-00', 500000, 'Residential', 'masonry', 50, 0, '', 124.2671389, 8.249333333, NULL, NULL),
(463, 6, 'Arielo Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.2669722, 8.248916667, NULL, NULL),
(464, 6, 'Juhinia Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.267, 8.248916667, NULL, NULL),
(465, 6, 'Disiderio Household', '0000-00-00', 150000, 'Residential', 'masonry', 30, 0, '', 124.2671389, 8.248944444, NULL, NULL),
(466, 6, 'Jeraldin Household', '0000-00-00', 150000, 'Residential', 'wood', 40, 0, '', 124.2671111, 8.248916667, NULL, NULL),
(467, 6, 'Lany_Roy Household', '0000-00-00', 100000, 'Residential', 'masonry', 40, 0, '', 124.2671389, 8.249, NULL, NULL),
(468, 6, 'Disiderio Household', '0000-00-00', 100000, 'Residential', 'wood', 30, 0, '', 124.2671389, 8.248916667, NULL, NULL),
(469, 6, 'Dennis Household', '0000-00-00', 150000, 'Residential', 'masonry', 40, 0, '', 124.2669722, 8.248888889, NULL, NULL),
(470, 6, 'Edwin Household', '0000-00-00', 500000, 'Residential', 'masonry', 50, 0, '', 124.2669722, 8.248944444, NULL, NULL),
(471, 6, 'Lingcob Household', '0000-00-00', 80000, 'Residential', 'wood', 30, 0, '', 124.267, 8.248861111, NULL, NULL),
(472, 6, 'Antonio Household', '0000-00-00', 100000, 'Residential', 'wood', 40, 0, '', 124.2668056, 8.249083333, NULL, NULL),
(473, 6, 'Jose Household', '0000-00-00', 100000, 'Residential', 'wood', 60, 0, '', 124.2665278, 8.249611111, NULL, NULL),
(474, 6, 'Gabino Household', '0000-00-00', 100000, 'Residential', 'wood', 22, 0, '', 124.2666111, 8.249611111, NULL, NULL),
(475, 6, 'Regina Household', '0000-00-00', 5000, 'Residential', 'wood', 40, 0, '', 124.2666111, 8.249527778, NULL, NULL),
(476, 6, 'Cornillo Household', '0000-00-00', 200000, 'Residential', 'masonry', 40, 0, '', 124.2666944, 8.249611111, NULL, NULL),
(477, 6, 'Edwin Household', '0000-00-00', 80000, 'Residential', 'wood', 30, 0, '', 124.2666944, 8.249555556, NULL, NULL),
(478, 6, 'Joel Household', '0000-00-00', 300000, 'Residential', 'wood', 40, 0, '', 124.2669722, 8.249555556, NULL, NULL),
(479, 6, 'Lito_Sr. Household', '0000-00-00', 50000, 'Residential', 'wood', 30, 0, '', 124.2662778, 8.250305556, NULL, NULL),
(480, 6, 'Jaypel Household', '0000-00-00', 500000, 'Residential', 'wood', 40, 0, '', 124.2663611, 8.25025, NULL, NULL),
(481, 6, 'Pablito_Jr. Household', '0000-00-00', 500000, 'Residential', 'masonry', 60, 0, '', 124.2668056, 8.250194444, NULL, NULL),
(482, 6, 'Jeboy Household', '0000-00-00', 50000, 'Residential', 'wood', 20, 0, '', 124.2673056, 8.2505, NULL, NULL),
(483, 6, 'Gardo Household', '0000-00-00', 500000, 'Residential', 'masonry', 50, 0, '', 124.2676667, 8.250305556, NULL, NULL),
(484, 6, 'Andrea Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2674167, 8.25025, NULL, NULL),
(485, 6, 'Husita Household', '0000-00-00', 500000, 'residential', 'wood', 50, 0, '', 124.2619167, 8.245833333, NULL, NULL),
(486, 18, 'Provir Household', '0000-00-00', 150000, 'residential', 'wood', 30, 0, '', 124.2619444, 8.245833333, NULL, NULL),
(487, 18, 'Jhoqret Household', '0000-00-00', 40000, 'residential', 'wood', 40, 0, '', 124.2621667, 8.245722222, NULL, NULL),
(488, 6, 'Rolando Household', '0000-00-00', 150000, 'residential', 'masonry', 50, 0, '', 124.2673611, 8.250472222, NULL, NULL),
(489, 18, 'Albert Household', '0000-00-00', 100000, 'residential', 'wood', 30, 0, '', 124.2622222, 8.245722222, NULL, NULL),
(490, 18, 'Jenna Household', '0000-00-00', 50000, 'residential', 'wood', 40, 0, '', 124.2624444, 8.245722222, NULL, NULL),
(491, 18, 'Danny Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, '', 124.2622778, 8.245777778, NULL, NULL),
(492, 18, 'Nicanor Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2628333, 8.24575, NULL, NULL),
(493, 18, 'Teodoro Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, '', 124.2623056, 8.245805556, NULL, NULL),
(494, 18, 'Juan Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, '', 124.2621111, 8.245944444, NULL, NULL),
(495, 18, 'Nestor Household', '0000-00-00', 150000, 'residential', 'wood', 60, 0, '', 124.2620278, 8.245944444, NULL, NULL),
(496, 18, 'Ernesto Household', '0000-00-00', 200000, 'residential', 'masonry', 50, 0, '', 124.2620556, 8.246055556, NULL, NULL),
(497, 18, 'Elbisito Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, '', 124.2619722, 8.246083333, NULL, NULL),
(498, 18, 'Reynaldo Household', '0000-00-00', 200000, 'residential', 'wood', 50, 0, '', 124.262, 8.246111111, NULL, NULL),
(499, 18, 'Mario Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2619167, 8.246194444, NULL, NULL),
(500, 18, 'Romel Household', '0000-00-00', 50000, 'residential', 'wood', 16, 0, '', 124.2618611, 8.246166667, NULL, NULL),
(501, 18, 'Alan Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2617222, 8.246166667, NULL, NULL),
(502, 18, 'Clarito Household', '0000-00-00', 0, 'residential', 'wood', 20, 0, '', 124.2618611, 8.246027778, NULL, NULL),
(503, 18, 'Arnel Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2617222, 8.245944444, NULL, NULL),
(504, 18, 'Vector Household', '0000-00-00', 0, 'residential', 'wood', 50, 0, '', 124.2619167, 8.246, NULL, NULL),
(505, 18, 'Raymundo Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, '', 124.2618611, 8.246027778, NULL, NULL),
(506, 18, 'Lhove_Bryan Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2619722, 8.24575, NULL, NULL),
(507, 18, 'Kiddy Household', '0000-00-00', 300000, 'residential', 'wood', 60, 0, '', 124.262, 8.245638889, NULL, NULL),
(508, 18, 'Erwin Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.262, 8.245722222, NULL, NULL),
(509, 18, 'Danilo Household', '0000-00-00', 200000, 'residential', 'wood', 40, 0, '', 124.2621944, 8.245416667, NULL, NULL),
(510, 18, 'Jessie Household', '0000-00-00', 100000, 'residential', 'wood', 50, 0, '', 124.2627778, 8.245333333, NULL, NULL),
(511, 18, 'Gerami Household', '0000-00-00', 80000, 'residential', 'wood', 15, 0, '', 124.2622778, 8.245055556, NULL, NULL),
(512, 18, 'Arturo Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2620278, 8.245194444, NULL, NULL),
(513, 18, 'Allan Household', '0000-00-00', 100000, 'residential', 'wood', 30, 0, '', 124.262, 8.245111111, NULL, NULL),
(514, 18, 'Rannylo Household', '0000-00-00', 20000, 'residential', 'wood', 10, 0, '', 124.2619167, 8.246277778, NULL, NULL),
(515, 18, 'Antonio Household', '0000-00-00', 80000, 'residential', 'wood', 20, 0, '', 124.2618611, 8.245416667, NULL, NULL),
(516, 18, 'Vivian Household', '0000-00-00', 50000, 'residential', 'wood', 30, 0, '', 124.2618056, 8.245416667, NULL, NULL),
(517, 18, 'Portasyon Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2618056, 8.2455, NULL, NULL),
(518, 18, 'Julieta Household', '0000-00-00', 600000, 'residential', 'masonry', 40, 0, '', 124.2618056, 8.245527778, NULL, NULL),
(519, 18, 'Dinah Household', '0000-00-00', 600000, 'residential', 'wood', 50, 0, '', 124.2618056, 8.245722222, NULL, NULL),
(520, 18, 'Jess_Roel Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2618333, 8.245722222, NULL, NULL),
(521, 18, 'Steban Household', '0000-00-00', 200000, 'residential', 'wood', 50, 0, '', 124.2617222, 8.245805556, NULL, NULL),
(522, 18, 'Gulito Household', '0000-00-00', 40000, 'residential', 'wood', 15, 0, '', 124.2616389, 8.245861111, NULL, NULL),
(523, 18, 'Milsan Household', '0000-00-00', 50000, 'residential', 'wood', 40, 0, '', 124.2616389, 8.246055556, NULL, NULL),
(524, 18, 'Fernando Household', '0000-00-00', 200000, 'residential', 'wood', 30, 0, '', 124.2616389, 8.246, NULL, NULL),
(525, 18, 'Marina Household', '0000-00-00', 50000, 'residential', 'wood', 15, 0, '', 124.2615833, 8.246194444, NULL, NULL),
(526, 18, 'Rolli Household', '0000-00-00', 50000, 'residential', 'wood', 20, 0, '', 124.2614167, 8.246111111, NULL, NULL),
(527, 18, 'Alfredo Household', '0000-00-00', 30000, 'residential', 'wood', 18, 0, '', 124.2613889, 8.246083333, NULL, NULL),
(528, 18, 'Nersiso Household', '0000-00-00', 200000, 'residential', 'masonry', 20, 0, '', 124.2614444, 8.246027778, NULL, NULL),
(529, 18, 'Editha Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.2615, 8.246, NULL, NULL),
(530, 18, 'Meluin Household', '0000-00-00', 100000, 'residential', 'wood', 12, 0, '', 124.2614444, 8.245805556, NULL, NULL),
(531, 18, 'Rodrego Household', '0000-00-00', 0, 'residential', 'wood', 20, 0, '', 124.2613889, 8.245638889, NULL, NULL),
(532, 18, 'Laberto_Jr. Household', '0000-00-00', 500000, 'residential', 'masonry', 40, 0, '', 124.2608611, 8.245666667, NULL, NULL),
(533, 18, 'Renisito Household', '0000-00-00', 100000, 'residential', 'wood', 50, 0, '', 124.2600278, 8.244472222, NULL, NULL),
(534, 18, 'Arman Household', '0000-00-00', 100000, 'residential', 'wood', 36, 0, '', 124.2600556, 8.244388889, NULL, NULL),
(535, 18, 'Roel Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2624444, 8.243416667, NULL, NULL),
(536, 18, 'Jerry Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2625556, 8.243861111, NULL, NULL),
(537, 18, 'Christina Household', '0000-00-00', 300000, 'residential', 'masonry', 40, 0, '', 124.2635, 8.243722222, NULL, NULL),
(538, 18, 'Omay Household', '0000-00-00', 200000, 'residential', 'masonry', 30, 0, '', 124.2610278, 8.245611111, NULL, NULL),
(539, 18, 'Ferlan Household', '0000-00-00', 60000, 'residential', 'wood', 25, 0, '', 124.2626667, 8.24375, NULL, NULL),
(540, 18, 'Prelancio Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.2624444, 8.244027778, NULL, NULL),
(541, 18, 'Ebahem Household', '0000-00-00', 50000, 'residential', 'wood', 30, 0, '', 124.2624167, 8.244138889, NULL, NULL),
(542, 18, 'Victor Household', '0000-00-00', 150000, 'residential', 'wood', 50, 0, 'owned', 124.2624167, 8.244111111, NULL, NULL),
(543, 18, 'Cucricio Household', '0000-00-00', 50000, 'residential', 'wood', 30, 0, 'owned', 124.2625556, 8.244138889, NULL, NULL),
(544, 18, 'Wilfredo Household', '0000-00-00', 80000, 'residential', 'wood', 20, 0, '', 124.26225, 8.244111111, NULL, NULL),
(545, 18, 'Angelica Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2626111, 8.244111111, NULL, NULL),
(546, 18, 'Freedy Household', '0000-00-00', 150000, 'residential', 'wood', 20, 0, '', 124.2626389, 8.244083333, NULL, NULL),
(547, 18, 'Juscuro Household', '0000-00-00', 50000, 'residential', 'wood', 40, 0, '', 124.2625833, 8.243972222, NULL, NULL),
(548, 18, 'Isko Household', '0000-00-00', 150000, 'residential', 'wood', 30, 0, '', 124.2626944, 8.244138889, NULL, NULL),
(549, 18, 'Allan Household', '0000-00-00', 200000, 'residential', 'wood', 54, 0, '', 124.2627222, 8.244305556, NULL, NULL),
(550, 18, 'Rosalino Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2626111, 8.24425, NULL, NULL),
(551, 18, 'Rogel Household', '0000-00-00', 150000, 'residential', 'wood', 30, 0, '', 124.2626111, 8.244222222, NULL, NULL),
(552, 18, 'Efren Household', '0000-00-00', 150000, 'residential', 'masonry', 60, 0, '', 124.2626389, 8.244222222, NULL, NULL),
(553, 18, 'Pryor Household', '0000-00-00', 300000, 'residential', 'wood', 60, 0, '', 124.26275, 8.24475, NULL, NULL),
(554, 18, 'Warren Household', '0000-00-00', 300000, 'residential', 'masonry', 40, 0, '', 124.2624167, 8.244972222, NULL, NULL),
(555, 18, 'Sanny Household', '0000-00-00', 150000, 'residential', 'wood', 60, 0, '', 124.26225, 8.24475, NULL, NULL),
(556, 18, 'Ricardo Household', '0000-00-00', 500000, 'residential', 'wood', 70, 0, 'owned', 124.2618611, 8.244722222, NULL, NULL),
(557, 18, 'Felipe Household', '0000-00-00', 200000, 'residential', 'wood', 60, 0, '', 124.2615833, 8.244694444, NULL, NULL),
(558, 18, 'Evelyn Household', '0000-00-00', 100000, 'residential', 'masonry', 40, 0, '', 124.2615, 8.244555556, NULL, NULL),
(559, 18, 'Love_Carmel Household', '0000-00-00', 150000, 'residential', 'masonry', 20, 0, '', 124.2614722, 8.244527778, NULL, NULL),
(560, 18, 'Vilma Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.2615, 8.244527778, NULL, NULL),
(561, 18, 'Elizabeth Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2614167, 8.244638889, NULL, NULL),
(562, 18, 'Nicko Household', '0000-00-00', 300000, 'residential', 'masonry', 30, 0, '', 124.2614167, 8.244416667, NULL, NULL),
(563, 18, 'Danny Household', '0000-00-00', 100000, 'residential', 'wood', 15, 0, '', 124.2615556, 8.244111111, NULL, NULL),
(564, 18, 'Expedito Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.2615, 8.243972222, NULL, NULL),
(565, 18, 'Elena Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2615278, 8.244083333, NULL, NULL),
(566, 18, 'Eduardo Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2615, 8.244111111, NULL, NULL),
(567, 18, 'Sunny Household', '0000-00-00', 200000, 'residential', 'wood', 40, 0, '', 124.2614167, 8.244055556, NULL, NULL),
(568, 18, 'Elicio Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2614167, 8.244027778, NULL, NULL),
(569, 18, 'Edgardo Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2613611, 8.244027778, NULL, NULL),
(570, 18, 'Eligario Household', '0000-00-00', 300000, 'residential', 'masonry', 58, 0, 'owned', 124.2613611, 8.243972222, NULL, NULL),
(571, 18, 'Roberto Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2612778, 8.244027778, NULL, NULL),
(572, 18, 'Losbitrose Household', '0000-00-00', 100000, 'residential', 'wood', 30, 0, '', 124.2611944, 8.243916667, NULL, NULL),
(573, 18, 'Eugene Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2614444, 8.244305556, NULL, NULL),
(574, 18, 'Allan Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.26125, 8.244472222, NULL, NULL),
(575, 18, 'Teodoro Household', '0000-00-00', 500000, 'residential', 'masonry', 60, 0, '', 124.2606944, 8.244388889, NULL, NULL),
(576, 18, 'Armando Household', '0000-00-00', 20000, 'residential', 'wood', 10, 0, '', 124.261, 8.244083333, NULL, NULL),
(577, 18, 'Edison Household', '0000-00-00', 80000, 'residential', 'wood', 10, 0, '', 124.2610556, 8.244138889, NULL, NULL),
(578, 18, 'Jeffrey Household', '0000-00-00', 40000, 'residential', 'wood', 40, 0, '', 124.2608056, 8.244305556, NULL, NULL),
(579, 18, 'Voltair Household', '0000-00-00', 50000, 'residential', 'wood', 28, 0, '', 124.2607222, 8.244194444, NULL, NULL),
(580, 18, 'Nite Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.26075, 8.244222222, NULL, NULL),
(581, 18, 'Joel Household', '0000-00-00', 100000, 'residential', 'wood', 30, 0, 'owned', 124.2606111, 8.244333333, NULL, NULL),
(582, 18, 'Arlito Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, '', 124.2605833, 8.244305556, NULL, NULL),
(583, 18, 'Danilo Household', '0000-00-00', 500000, 'residential', 'wood', 80, 0, '', 124.2604722, 8.244333333, NULL, NULL),
(584, 18, 'Edwin Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, '', 124.2606389, 8.244166667, NULL, NULL),
(585, 1, 'Gilmor Household', '0000-00-00', 70000, 'residential', 'wood', 40, 0, '', 124.2651667, 8.253638889, NULL, NULL),
(586, 18, 'Julie Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2606389, 8.244, NULL, NULL),
(587, 18, 'Troy Household', '0000-00-00', 600000, 'residential', 'masonry', 100, 0, '', 124.2607222, 8.244166667, NULL, NULL),
(588, 18, 'Emma Household', '0000-00-00', 50000, 'residential', 'wood', 40, 0, '', 124.2605, 8.243972222, NULL, NULL),
(589, 18, 'Herda Household', '0000-00-00', 100000, 'residential', 'wood', 30, 0, '', 124.2605556, 8.243944444, NULL, NULL),
(590, 18, 'Estelita Household', '0000-00-00', 30000, 'residential', 'wood', 40, 0, '', 124.2605556, 8.243861111, NULL, NULL),
(591, 18, 'Delfin Household', '0000-00-00', 50000, 'residential', 'wood', 34, 0, '', 124.2605556, 8.243833333, NULL, NULL),
(592, 18, 'Regalado Household', '0000-00-00', 40000, 'residential', 'wood', 24, 0, '', 124.2605278, 8.243861111, NULL, NULL),
(593, 18, 'Michael Household', '0000-00-00', 30000, 'residential', 'wood', 40, 0, '', 124.2604722, 8.243916667, NULL, NULL),
(594, 18, 'Duezora Household', '0000-00-00', 50000, 'residential', 'wood', 20, 0, '', 124.2605278, 8.243972222, NULL, NULL),
(595, 18, 'Edelberto Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2604167, 8.243888889, NULL, NULL),
(596, 18, 'Pabran Household', '0000-00-00', 100000, 'residential', 'masonry', 40, 0, '', 124.2604167, 8.243833333, NULL, NULL),
(597, 18, 'Vergillio Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2604444, 8.243888889, NULL, NULL),
(598, 18, 'Rudolfo Household', '0000-00-00', 10000, 'residential', 'wood', 40, 0, '', 124.2603056, 8.243777778, NULL, NULL),
(599, 18, 'Romulo Household', '0000-00-00', 30000, 'residential', 'wood', 32, 0, '', 124.2603333, 8.243777778, NULL, NULL),
(600, 18, 'Alex Household', '0000-00-00', 50000, 'residential', 'wood', 20, 0, '', 124.2603333, 8.24375, NULL, NULL),
(601, 18, 'Anatalia Household', '0000-00-00', 200000, 'residential', 'wood', 60, 0, '', 124.2602222, 8.244277778, NULL, NULL),
(602, 18, 'Christina Household', '0000-00-00', 500000, 'residential', 'wood', 60, 0, '', 124.2601667, 8.244222222, NULL, NULL),
(603, 18, 'Rodelo Household', '0000-00-00', 200000, 'residential', 'masonry', 30, 0, '', 124.2602222, 8.244166667, NULL, NULL),
(604, 18, 'Ronald Household', '0000-00-00', 50000, 'residential', 'wood', 36, 0, '', 124.2602222, 8.243972222, NULL, NULL),
(605, 18, 'Roberto Household', '0000-00-00', 50000, 'residential', 'wood', 30, 0, '', 124.2600278, 8.244222222, NULL, NULL),
(606, 18, 'Lorenzo_Jr. Household', '0000-00-00', 500000, 'residential', 'wood', 60, 0, '', 124.2598611, 8.244194444, NULL, NULL),
(607, 18, 'Lester Household', '0000-00-00', 120000, 'residential', 'masonry', 50, 0, '', 124.2598056, 8.244166667, NULL, NULL),
(608, 18, 'Marites Household', '0000-00-00', 200000, 'residential', 'wood', 60, 0, '', 124.2597778, 8.244166667, NULL, NULL),
(609, 18, 'Ricmar_Joseph Household', '0000-00-00', 100000, 'residential', 'masonry', 40, 0, '', 124.2597222, 8.244138889, NULL, NULL),
(610, 18, 'Joel Household', '0000-00-00', 100000, 'residential', 'wood', 50, 0, '', 124.2598333, 8.244, NULL, NULL),
(611, 18, 'Florenson Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, 'owned', 124.2596667, 8.244111111, NULL, NULL),
(612, 18, 'Elmo Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, 'owned', 124.2604722, 8.244111111, NULL, NULL),
(613, 18, 'Bonifacio Household', '0000-00-00', 80000, 'residential', 'wood', 30, 0, 'owned', 124.2597778, 8.243861111, NULL, NULL),
(614, 18, 'Danny Household', '0000-00-00', 50000, 'residential', 'wood', 10, 0, '', 124.2599167, 8.243861111, NULL, NULL),
(615, 18, 'Arnold Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2598056, 8.243833333, NULL, NULL),
(616, 18, 'Junjun Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, '', 124.25975, 8.243861111, NULL, NULL),
(617, 14, 'Lemuel Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2598611, 8.243694444, NULL, NULL),
(618, 14, 'Joey Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2598333, 8.243694444, NULL, NULL),
(619, 14, 'Matilde Household', '0000-00-00', 50000, 'residential', 'wood', 15, 0, '', 124.2599167, 8.243694444, NULL, NULL),
(620, 14, 'Michael Household', '0000-00-00', 100000, 'residential', 'wood', 10, 0, '', 124.2600278, 8.243694444, NULL, NULL),
(621, 14, 'Gerardo Household', '0000-00-00', 350000, 'residential', 'wood', 50, 0, '', 124.2595556, 8.244027778, NULL, NULL),
(622, 14, 'Della Household', '0000-00-00', 100000, 'residential', 'masonry', 60, 0, 'owned', 124.2594722, 8.243944444, NULL, NULL),
(623, 14, 'Maurine Household', '0000-00-00', 100000, 'residential', 'masonry', 40, 0, '', 124.2594444, 8.244027778, NULL, NULL),
(624, 14, 'Vergillio Household', '0000-00-00', 1000000, 'residential', 'masonry', 100, 0, '', 124.2594722, 8.243916667, NULL, NULL),
(625, 14, 'Julius Household', '0000-00-00', 80000, 'residential', 'wood', 40, 0, '', 124.2595, 8.243722222, NULL, NULL),
(626, 14, 'Alejandro Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2594722, 8.243722222, NULL, NULL),
(627, 14, 'John_Rich Household', '0000-00-00', 100000, 'residential', 'masonry', 50, 0, '', 124.2594167, 8.24375, NULL, NULL),
(628, 14, 'Mark_Vincent Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2594167, 8.243777778, NULL, NULL),
(629, 14, 'Bimbo Household', '0000-00-00', 300000, 'residential', 'wood', 30, 0, '', 124.2593889, 8.244, NULL, NULL),
(630, 14, 'Jever Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.25925, 8.244, NULL, NULL),
(631, 14, 'Samuel Household', '0000-00-00', 100000, 'residential', 'wood', 30, 0, '', 124.2593889, 8.243611111, NULL, NULL),
(632, 14, 'Pedro Household', '0000-00-00', 60000, 'residential', 'wood', 60, 0, 'owned', 124.2592222, 8.243666667, NULL, NULL),
(633, 14, 'Genesis_Mark Household', '0000-00-00', 100000, 'residential', 'wood', 50, 0, '', 124.2592222, 8.243861111, NULL, NULL),
(634, 14, 'Norma Household', '0000-00-00', 200000, 'residential', 'wood', 100, 0, 'owned', 124.2587778, 8.243777778, NULL, NULL),
(635, 14, 'Mervinio Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2593056, 8.244222222, NULL, NULL),
(636, 14, 'Mario Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2584722, 8.243611111, NULL, NULL),
(637, 14, 'Loreto Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2585, 8.243638889, NULL, NULL),
(638, 14, 'Benito Household', '0000-00-00', 100000, 'residential', 'wood', 20, 0, '', 124.2585556, 8.243555556, NULL, NULL),
(639, 14, 'Rupino Household', '0000-00-00', 100000, 'residential', 'wood', 15, 0, '', 124.2583333, 8.243333333, NULL, NULL),
(640, 14, 'Susano Household', '0000-00-00', 100000, 'residential', 'wood', 50, 0, '', 124.2583889, 8.2435, NULL, NULL),
(641, 14, 'Roel Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2584167, 8.243416667, NULL, NULL),
(642, 14, 'Ida Household', '0000-00-00', 200000, 'residential', 'masonry', 50, 0, '', 124.2584167, 8.243388889, NULL, NULL),
(643, 14, 'Edgar Household', '0000-00-00', 200000, 'residential', 'masonry', 50, 0, '', 124.2582222, 8.243388889, NULL, NULL),
(644, 14, 'Johnny Household', '0000-00-00', 50000, 'residential', 'wood', 20, 0, '', 124.2583333, 8.243361111, NULL, NULL),
(645, 14, 'Ferdinand Household', '0000-00-00', 150000, 'residential', 'masonry', 36, 0, '', 124.2583889, 8.243333333, NULL, NULL),
(646, 14, 'Marcelo Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2583889, 8.243444444, NULL, NULL),
(647, 14, 'Albert Household', '0000-00-00', 150000, 'residential', 'wood', 20, 0, '', 124.2583889, 8.243138889, NULL, NULL),
(648, 14, 'Vicente Household', '0000-00-00', 40000, 'residential', 'wood', 30, 0, '', 124.2590556, 8.243472222, NULL, NULL),
(649, 14, 'Leo Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2590556, 8.243527778, NULL, NULL),
(650, 14, 'Rene Household', '0000-00-00', 100000, 'residential', 'wood', 50, 0, '', 124.2590556, 8.243333333, NULL, NULL),
(651, 14, 'Roy Household', '0000-00-00', 200000, 'residential', 'masonry', 80, 0, '', 124.2591111, 8.243111111, NULL, NULL),
(652, 14, 'Pedro Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2591389, 8.243111111, NULL, NULL),
(653, 14, 'Jonathan Household', '0000-00-00', 250000, 'residential', 'wood', 40, 0, '', 124.2592778, 8.243, NULL, NULL),
(654, 14, 'Kenny Household', '0000-00-00', 100000, 'residential', 'wood', 10, 0, '', 124.2589722, 8.242944444, NULL, NULL),
(655, 14, 'Marlon Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.259, 8.24275, NULL, NULL),
(656, 14, 'Edwin Household', '0000-00-00', 50000, 'residential', 'wood', 28, 0, '', 124.2587778, 8.243138889, NULL, NULL),
(657, 19, 'Mike Household', '0000-00-00', 120000, 'residential', 'masonry', 60, 0, 'owned', 124.26275, 8.243388889, NULL, NULL),
(658, 19, 'Pomponso Household', '0000-00-00', 200000, 'residential', 'wood', 40, 0, '', 124.26275, 8.243416667, NULL, NULL),
(659, 19, 'Eddie Household', '0000-00-00', 60000, 'residential', 'wood', 34, 0, '', 124.2628333, 8.24325, NULL, NULL),
(660, 19, 'Roberta Household', '0000-00-00', 100000, 'residential', 'masonry', 40, 0, '', 124.2628056, 8.243333333, NULL, NULL),
(661, 19, 'Rosita Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2629444, 8.243361111, NULL, NULL),
(662, 19, 'Conrad Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.263, 8.243361111, NULL, NULL),
(663, 19, 'Renanto Household', '0000-00-00', 60000, 'residential', 'wood', 36, 0, '', 124.2628889, 8.243555556, NULL, NULL),
(664, 19, 'Jojit Household', '0000-00-00', 100000, 'residential', 'wood', 28, 0, '', 124.2628611, 8.243555556, NULL, NULL),
(665, 19, 'Mary_Ann Household', '0000-00-00', 40000, 'residential', 'wood', 26, 0, '', 124.2630278, 8.243583333, NULL, NULL),
(666, 19, 'Lourdes Household', '0000-00-00', 20000, 'residential', 'wood', 36, 0, '', 124.2629722, 8.243305556, NULL, NULL),
(667, 19, 'Evelyn Household', '0000-00-00', 30000, 'residential', 'wood', 40, 0, '', 124.263, 8.243555556, NULL, NULL),
(668, 19, 'Edwin Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.263, 8.24325, NULL, NULL),
(669, 19, 'Rodel Household', '0000-00-00', 30000, 'residential', 'wood', 40, 0, '', 124.2626667, 8.243305556, NULL, NULL),
(670, 19, 'Victor Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.26275, 8.243111111, NULL, NULL),
(671, 19, 'Eric Household', '0000-00-00', 40000, 'residential', 'wood', 40, 0, '', 124.2624167, 8.242944444, NULL, NULL),
(672, 19, 'Deciderio Household', '0000-00-00', 300000, 'residential', 'masonry', 40, 0, '', 124.2622222, 8.242944444, NULL, NULL),
(673, 19, 'Adonis Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2623333, 8.243166667, NULL, NULL),
(674, 19, 'Elmer Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, 'owned', 124.2621944, 8.243277778, NULL, NULL),
(675, 19, 'Niva Household', '0000-00-00', 500000, 'residential', 'masonry', 60, 0, '', 124.2620278, 8.243194444, NULL, NULL),
(676, 19, 'Jhon_Michael Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2621944, 8.243194444, NULL, NULL),
(677, 19, 'Antonio Household', '0000-00-00', 500000, 'residential', 'masonry', 60, 0, '', 124.2617778, 8.243388889, NULL, NULL),
(678, 19, 'Jennifer Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, '', 124.2616944, 8.243444444, NULL, NULL),
(679, 19, 'Erwin Household', '0000-00-00', 150000, 'residential', 'masonry', 60, 0, '', 124.2615833, 8.2435, NULL, NULL),
(680, 19, 'Armando Household', '0000-00-00', 50000, 'residential', 'wood', 40, 0, 'owned', 124.2613333, 8.243277778, NULL, NULL),
(681, 19, 'Ernesto Household', '0000-00-00', 100000, 'residential', 'wood', 28, 0, '', 124.2612778, 8.243472222, NULL, NULL),
(682, 19, 'Francisco Household', '0000-00-00', 2000, 'residential', 'wood', 16, 0, '', 124.2613333, 8.2435, NULL, NULL),
(683, 19, 'Erwin Household', '0000-00-00', 100000, 'residential', 'masonry', 40, 0, '', 124.2614722, 8.243388889, NULL, NULL),
(684, 19, 'Ritchel Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2614444, 8.243277778, NULL, NULL),
(685, 19, 'Gueli Household', '0000-00-00', 150000, 'residential', 'masonry', 60, 0, '', 124.2612778, 8.243, NULL, NULL),
(686, 19, 'Rodney Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2617222, 8.243277778, NULL, NULL),
(687, 19, 'Ricardo Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2626111, 8.242666667, NULL, NULL),
(688, 19, 'Ronald Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.26275, 8.24275, NULL, NULL),
(689, 19, 'Juvymer Household', '0000-00-00', 150000, 'residential', 'masonry', 50, 0, '', 124.2626389, 8.242694444, NULL, NULL),
(690, 19, 'Landra Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2625278, 8.2425, NULL, NULL),
(691, 19, 'Benjamin Household', '0000-00-00', 300000, 'residential', 'wood', 60, 0, 'owned', 124.2625556, 8.242277778, NULL, NULL),
(692, 19, 'Frankelina Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2625, 8.242138889, NULL, NULL),
(693, 19, 'Juan Household', '0000-00-00', 50000, 'residential', 'wood', 40, 0, '', 124.2624722, 8.242055556, NULL, NULL),
(694, 19, 'Fuljencio Household', '0000-00-00', 30000, 'residential', 'wood', 40, 0, '', 124.2624167, 8.241972222, NULL, NULL),
(695, 19, 'Leonard Household', '0000-00-00', 30000, 'residential', 'wood', 40, 0, '', 124.2621944, 8.241833333, NULL, NULL),
(696, 19, 'Damiana Household', '0000-00-00', 300000, 'residential', 'masonry', 36, 0, '', 124.2623056, 8.241805556, NULL, NULL),
(697, 19, 'Hermolina Household', '0000-00-00', 150000, 'residential', 'masonry', 70, 0, 'owned', 124.2621111, 8.241472222, NULL, NULL),
(698, 19, 'Melchor Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2620833, 8.241611111, NULL, NULL),
(699, 19, 'Alicia Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2621111, 8.241611111, NULL, NULL),
(700, 19, 'Gerald Household', '0000-00-00', 300000, 'residential', 'masonry', 45, 0, '', 124.2618611, 8.241444444, NULL, NULL),
(701, 19, 'Allan Household', '0000-00-00', 300000, 'residential', 'wood', 60, 0, '', 124.2616944, 8.241416667, NULL, NULL),
(702, 19, 'Martillano Household', '0000-00-00', 80000, 'residential', 'wood', 60, 0, '', 124.2616389, 8.241527778, NULL, NULL),
(703, 19, 'Tesie Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2615, 8.241472222, NULL, NULL),
(704, 19, 'Romulo Household', '0000-00-00', 200000, 'residential', 'wood', 60, 0, '', 124.2613889, 8.2415, NULL, NULL),
(705, 15, 'Joel Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2556944, 8.244972222, NULL, NULL),
(706, 15, 'Therisito Household', '0000-00-00', 500000, 'residential', 'masonry', 40, 0, '', 124.2560556, 8.245222222, NULL, NULL),
(707, 15, 'Leonardo Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2560556, 8.245222222, NULL, NULL),
(708, 15, 'Jessie Household', '0000-00-00', 80000, 'residential', 'wood', 30, 0, '', 124.2559167, 8.245277778, NULL, NULL),
(709, 15, 'Virgillio Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2555556, 8.2455, NULL, NULL),
(710, 15, 'Hebjer Household', '0000-00-00', 50000, 'residential', 'wood', 40, 0, '', 124.2559444, 8.245527778, NULL, NULL),
(711, 15, 'Thomas Household', '0000-00-00', 100000, 'residential', 'wood', 60, 0, '', 124.2559167, 8.245583333, NULL, NULL),
(712, 15, 'Esnayda Household', '0000-00-00', 50000, 'residential', 'wood', 10, 0, 'owned', 124.2560833, 8.245527778, NULL, NULL),
(713, 15, 'Niebes Household', '0000-00-00', 1000000, 'residential', 'masonry', 70, 0, 'owned', 124.2560833, 8.2455, NULL, NULL),
(714, 11, 'Monico Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2571667, 8.24625, NULL, NULL),
(715, 11, 'Felix Household', '0000-00-00', 60000, 'residential', 'masonry', 40, 0, '', 124.25725, 8.246194444, NULL, NULL),
(716, 11, 'Natividad Household', '0000-00-00', 50000, 'residential', 'masonry', 20, 0, '', 124.2573889, 8.246166667, NULL, NULL),
(717, 11, 'Robert Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.2574167, 8.246194444, NULL, NULL),
(718, 11, 'Arbine Household', '0000-00-00', 100000, 'residential', 'wood', 20, 0, '', 124.25725, 8.246611111, NULL, NULL),
(719, 11, 'Benjie Household', '0000-00-00', 500000, 'residential', 'masonry', 40, 0, 'owned', 124.2571389, 8.246777778, NULL, NULL),
(720, 11, 'Alfredo_Jr. Household', '0000-00-00', 150000, 'residential', 'wood', 60, 0, '', 124.2573056, 8.246916667, NULL, NULL),
(721, 11, 'Susan Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2574167, 8.246916667, NULL, NULL),
(722, 11, 'Armonil Household', '0000-00-00', 30000, 'residential', 'wood', 30, 0, '', 124.2573889, 8.247055556, NULL, NULL),
(723, 11, 'Frias Household', '0000-00-00', 150000, 'residential', 'wood', 30, 0, '', 124.2574722, 8.246972222, NULL, NULL),
(724, 11, 'Letty Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, 'owned', 124.2571111, 8.247055556, NULL, NULL),
(725, 11, 'Maxito Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2570556, 8.247027778, NULL, NULL),
(726, 11, 'Martin Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2572222, 8.247055556, NULL, NULL),
(727, 12, 'Pedro Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, 'owned', 124.2567222, 8.247111111, NULL, NULL),
(728, 12, 'Binbilo_Sr. Household', '0000-00-00', 1000000, 'residential', 'masonry', 50, 0, '', 124.25675, 8.247194444, NULL, NULL),
(729, 12, 'Dockisano Household', '0000-00-00', 100000, 'residential', 'masonry', 50, 0, '', 124.2567778, 8.247305556, NULL, NULL),
(730, 12, 'Binard Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.2567222, 8.247, NULL, NULL),
(731, 12, 'Marlon Household', '0000-00-00', 100000, 'residential', 'wood', 30, 0, '', 124.2563889, 8.247638889, NULL, NULL),
(732, 12, 'Medila Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.25625, 8.247666667, NULL, NULL),
(733, 12, 'Romel Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2562778, 8.247666667, NULL, NULL),
(734, 12, 'Jose_Ronie Household', '0000-00-00', 80000, 'residential', 'wood', 30, 0, '', 124.2563056, 8.24775, NULL, NULL),
(735, 12, 'Emanuel Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2562778, 8.24775, NULL, NULL),
(736, 12, 'Bong Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2562222, 8.24775, NULL, NULL),
(737, 12, 'Nonita Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, 'owned', 124.2561667, 8.247777778, NULL, NULL),
(738, 12, 'Fely Household', '0000-00-00', 80000, 'residential', 'wood', 20, 0, '', 124.2561667, 8.24775, NULL, NULL),
(739, 12, 'Arsenia Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2569167, 8.248361111, NULL, NULL),
(740, 12, 'Emelano Household', '0000-00-00', 200000, 'residential', 'wood', 50, 0, '', 124.2568333, 8.248027778, NULL, NULL),
(741, 8, 'Orlando Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2564167, 8.248805556, NULL, NULL),
(742, 8, 'justo_Jr Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2565, 8.248888889, NULL, NULL),
(743, 8, 'Nirekita Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2564444, 8.248833333, NULL, NULL),
(744, 8, 'Antonio Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2567222, 8.249055556, NULL, NULL),
(745, 8, 'Jessie_Sr. Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2566111, 8.248916667, NULL, NULL),
(746, 8, 'Jade Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2565833, 8.248861111, NULL, NULL),
(747, 8, 'Paolo Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2565278, 8.248861111, NULL, NULL),
(748, 8, 'Aldwin Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.25675, 8.248916667, NULL, NULL),
(749, 8, 'Jose Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, 'owned', 124.2568333, 8.248805556, NULL, NULL),
(750, 8, 'Mario Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2568333, 8.249055556, NULL, NULL),
(751, 8, 'Allan Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, 'owned', 124.2567778, 8.249111111, NULL, NULL),
(752, 8, 'Herlan Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2568611, 8.249027778, NULL, NULL),
(753, 8, 'Sonday Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2569444, 8.248694444, NULL, NULL),
(754, 8, 'Celbenz Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2569167, 8.24875, NULL, NULL),
(755, 12, 'Eduardo Household', '0000-00-00', 150000, 'residential', 'masonry', 60, 0, '', 124.2551944, 8.247527778, NULL, NULL),
(756, 12, 'Marlo Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2551111, 8.2475, NULL, NULL),
(757, 12, 'Geller Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2549722, 8.247416667, NULL, NULL),
(758, 14, 'Joan Household', '0000-00-00', 150000, 'residential', 'wood', 15, 0, '', 124.2587778, 8.243083333, NULL, NULL),
(759, 12, 'Nilo Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2547222, 8.248055556, NULL, NULL),
(760, 12, 'Senerio Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2544444, 8.248194444, NULL, NULL),
(761, 12, 'Ramel Household', '0000-00-00', 350000, 'residential', 'masonry', 40, 0, '', 124.2544444, 8.248166667, NULL, NULL),
(762, 12, 'Jeffrey Household', '0000-00-00', 300000, 'residential', 'masonry', 30, 0, '', 124.2543056, 8.248083333, NULL, NULL),
(763, 12, 'Alfredo_Jr. Household', '0000-00-00', 300000, 'residential', 'masonry', 30, 0, '', 124.2543333, 8.248, NULL, NULL),
(764, 12, 'Ancro Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2541389, 8.247916667, NULL, NULL),
(765, 12, 'Marivic Household', '0000-00-00', 150000, 'residential', 'masonry', 50, 0, '', 124.2540833, 8.247861111, NULL, NULL),
(766, 12, 'Richard Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2541111, 8.247805556, NULL, NULL),
(767, 12, 'Renato Household', '0000-00-00', 3000000, 'residential', 'masonry', 50, 0, '', 124.2541389, 8.247777778, NULL, NULL),
(768, 13, 'Francisco Household', '0000-00-00', 150000, 'residential', 'wood', 50, 0, '', 124.2539722, 8.248111111, NULL, NULL),
(769, 13, 'Elsa Household', '0000-00-00', 200000, 'residential', 'masonry', 50, 0, '', 124.2539167, 8.248083333, NULL, NULL),
(770, 13, 'Jesus Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2540278, 8.248138889, NULL, NULL),
(771, 13, 'Dolpa Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.254, 8.248166667, NULL, NULL),
(772, 13, 'Leonora Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2541111, 8.248222222, NULL, NULL),
(773, 13, 'Josepina Household', '0000-00-00', 300000, 'residential', 'masonry', 40, 0, '', 124.2540278, 8.248194444, NULL, NULL),
(774, 13, 'Juliet Household', '0000-00-00', 150000, 'residential', 'wood', 30, 0, 'owned', 124.2540556, 8.248194444, NULL, NULL),
(775, 13, 'Neil Household', '0000-00-00', 150000, 'residential', 'wood', 30, 0, '', 124.2541389, 8.248277778, NULL, NULL),
(776, 13, 'Ronan Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2541667, 8.248305556, NULL, NULL),
(777, 13, 'Donalou Household', '0000-00-00', 20000, 'residential', 'wood', 12, 0, '', 124.2541667, 8.248361111, NULL, NULL),
(778, 13, 'Nicanor Household', '0000-00-00', 60000, 'residential', 'wood', 40, 0, '', 124.2541944, 8.248333333, NULL, NULL),
(779, 13, 'Russell Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2542778, 8.248388889, NULL, NULL),
(780, 13, 'Alvin Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2543333, 8.248388889, NULL, NULL),
(781, 13, 'Wilfredo Household', '0000-00-00', 500000, 'residential', 'masonry', 60, 0, '', 124.2543056, 8.248416667, NULL, NULL),
(782, 13, 'Ricky Household', '0000-00-00', 150000, 'residential', 'masonry', 60, 0, '', 124.2543056, 8.248388889, NULL, NULL),
(783, 13, 'Angelina Household', '0000-00-00', 30000, 'residential', 'wood', 40, 0, '', 124.2542778, 8.248444444, NULL, NULL),
(784, 13, 'Ricardo Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2544167, 8.248472222, NULL, NULL),
(785, 13, 'Samuel Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.2544722, 8.2485, NULL, NULL),
(786, 13, 'Peter Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2545, 8.2485, NULL, NULL),
(787, 13, 'Efemia Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2545, 8.248555556, NULL, NULL),
(788, 13, 'Michael Household', '0000-00-00', 250000, 'residential', 'masonry', 30, 0, 'owned', 124.2545, 8.2485, NULL, NULL),
(789, 13, 'Ester Household', '0000-00-00', 1000000, 'residential', 'masonry', 60, 0, '', 124.2545833, 8.248555556, NULL, NULL),
(790, 13, 'Mae Household', '0000-00-00', 400000, 'residential', 'masonry', 40, 0, '', 124.2546111, 8.248583333, NULL, NULL),
(791, 13, 'Jaime_jr. Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2543889, 8.248666667, NULL, NULL),
(792, 13, 'Archie Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.2544444, 8.248722222, NULL, NULL),
(793, 13, 'Virginita Household', '0000-00-00', 150000, 'residential', 'masonry', 60, 0, '', 124.2544444, 8.248666667, NULL, NULL),
(794, 13, 'Timoteo Household', '0000-00-00', 1500000, 'residential', 'masonry', 50, 0, '', 124.25475, 8.248666667, NULL, NULL),
(795, 13, 'Balista Household', '0000-00-00', 200000, 'residential', 'wood', 50, 0, '', 124.2546667, 8.248666667, NULL, NULL),
(796, 13, 'Joel Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2543889, 8.248611111, NULL, NULL),
(797, 13, 'Michell Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2541944, 8.248861111, NULL, NULL),
(798, 13, 'Amador Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2540833, 8.248805556, NULL, NULL),
(799, 13, 'Ma_Fe Household', '0000-00-00', 200000, 'residential', 'wood', 60, 0, '', 124.2546944, 8.248694444, NULL, NULL),
(800, 13, 'Jocely Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2543889, 8.248888889, NULL, NULL),
(801, 13, 'Perla Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, 'owned', 124.2546944, 8.248694444, NULL, NULL),
(802, 13, 'Benjamin Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.2546389, 8.248611111, NULL, NULL),
(803, 13, 'Dixon Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2546389, 8.248722222, NULL, NULL),
(804, 13, 'Warlita Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.254, 8.248166667, NULL, NULL),
(805, 13, 'Benjie Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2540278, 8.248138889, NULL, NULL);
INSERT INTO `buildings` (`id`, `purok_id`, `name`, `year_constructed`, `net_value`, `building_usage`, `structure`, `area`, `no_stories`, `holding`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(806, 12, 'Justino Household', '0000-00-00', 130000, 'residential', 'wood', 60, 0, '', 124.2542222, 8.247527778, NULL, NULL),
(807, 12, 'Ester Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2546667, 8.247361111, NULL, NULL),
(808, 12, 'Roger Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2546389, 8.247194444, NULL, NULL),
(809, 12, 'Veronico Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2546389, 8.247166667, NULL, NULL),
(810, 12, 'Peter Household', '0000-00-00', 200000, 'residential', 'wood', 50, 0, '', 124.2548889, 8.247, NULL, NULL),
(811, 12, 'Darwin Household', '0000-00-00', 450000, 'residential', 'masonry', 50, 0, '', 124.2551944, 8.247222222, NULL, NULL),
(812, 12, 'Lemuel Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2551389, 8.247194444, NULL, NULL),
(813, 12, 'Feliza Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2551944, 8.247194444, NULL, NULL),
(814, 12, 'Allen_Cris Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, '', 124.2555833, 8.24725, NULL, NULL),
(815, 12, 'Robin Household', '0000-00-00', 300000, 'residential', 'masonry', 40, 0, '', 124.2556389, 8.247222222, NULL, NULL),
(816, 12, 'Aron_Jhon Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.25575, 8.247277778, NULL, NULL),
(817, 12, 'Esabilo Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.25575, 8.247416667, NULL, NULL),
(818, 12, 'Selvistra Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, '', 124.25625, 8.247444444, NULL, NULL),
(819, 12, 'Jose Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, 'owned', 124.2563056, 8.247277778, NULL, NULL),
(820, 12, 'Bonifacio Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2560556, 8.247722222, NULL, NULL),
(821, 12, 'Ricarda Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2560556, 8.247805556, NULL, NULL),
(822, 12, 'Marlon Household', '0000-00-00', 200000, 'residential', 'wood', 50, 0, '', 124.2560278, 8.247555556, NULL, NULL),
(823, 12, 'Virgilio Household', '0000-00-00', 100000, 'residential', 'wood', 20, 0, '', 124.2558889, 8.247861111, NULL, NULL),
(824, 12, 'Francisco Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2560278, 8.247888889, NULL, NULL),
(825, 12, 'Roberto Household', '0000-00-00', 200000, 'residential', 'masonry', 50, 0, '', 124.2560278, 8.248, NULL, NULL),
(826, 12, 'Jonver Household', '0000-00-00', 500000, 'residential', 'masonry', 68, 0, '', 124.2560556, 8.248055556, NULL, NULL),
(827, 12, 'Virgilio Household', '0000-00-00', 100000, 'residential', 'wood', 20, 0, '', 124.2560833, 8.248361111, NULL, NULL),
(828, 12, 'Glyn Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2559167, 8.248527778, NULL, NULL),
(829, 12, 'Rosita Household', '0000-00-00', 200000, 'residential', 'wood', 50, 0, '', 124.2558889, 8.248611111, NULL, NULL),
(830, 8, 'josefa Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2569722, 8.248805556, NULL, NULL),
(831, 8, 'Rey Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.25675, 8.248777778, NULL, NULL),
(832, 8, 'Saturnino_Jr Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2572222, 8.249055556, NULL, NULL),
(833, 8, 'Ransily Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2571944, 8.248638889, NULL, NULL),
(834, 8, 'Dante Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2574167, 8.248555556, NULL, NULL),
(835, 8, 'Salvador Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2575, 8.248527778, NULL, NULL),
(836, 8, 'Joseph Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2573611, 8.248527778, NULL, NULL),
(837, 8, 'Junita Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2572778, 8.248638889, NULL, NULL),
(838, 8, 'Roger Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2571667, 8.248638889, NULL, NULL),
(839, 8, 'Jerson Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2573333, 8.248722222, NULL, NULL),
(840, 8, 'Bernadette Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2573889, 8.248777778, NULL, NULL),
(841, 8, 'Nestor Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2571389, 8.248777778, NULL, NULL),
(842, 8, 'Anastasia Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, 'owned', 124.2571667, 8.248861111, NULL, NULL),
(843, 8, 'Gene Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, 'owned', 124.2569722, 8.248944444, NULL, NULL),
(844, 12, 'Romel_Vincent_Jr Household', '0000-00-00', 500000, 'residential', 'wood', 50, 0, '', 124.2548056, 8.248027778, NULL, NULL),
(845, 12, 'Nicolas Household', '0000-00-00', 600000, 'residential', 'masonry', 50, 0, '', 124.2547778, 8.248, NULL, NULL),
(846, 13, 'Cecilio Household', '0000-00-00', 2000000, 'residential', 'masonry', 50, 0, '', 124.2545833, 8.248777778, NULL, NULL),
(847, 13, 'Rogelio Household', '0000-00-00', 0, 'residential', 'wood', 30, 0, '', 124.2545278, 8.248833333, NULL, NULL),
(848, 13, 'Dennis Household', '0000-00-00', 300000, 'residential', 'masonry', 30, 0, '', 124.2543056, 8.248638889, NULL, NULL),
(849, 13, 'Mila Household', '0000-00-00', 350000, 'residential', 'masonry', 50, 0, '', 124.2542222, 8.248611111, NULL, NULL),
(850, 13, 'Felix_Sr Household', '0000-00-00', 350000, 'residential', 'masonry', 50, 0, '', 124.2541389, 8.248611111, NULL, NULL),
(851, 13, 'Pedro Household', '0000-00-00', 250000, 'residential', 'wood', 50, 0, 'owned', 124.2543056, 8.248666667, NULL, NULL),
(852, 13, 'Clapita Household', '0000-00-00', 300000, 'residential', 'wood', 50, 0, '', 124.2542778, 8.248611111, NULL, NULL),
(853, 13, 'Linang Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2541944, 8.248611111, NULL, NULL),
(854, 13, 'Salma Household', '0000-00-00', 300000, 'residential', 'masonry', 30, 0, '', 124.25425, 8.248555556, NULL, NULL),
(855, 13, 'Caironesa Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.2541389, 8.248555556, NULL, NULL),
(856, 13, 'Mario Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2540833, 8.2485, NULL, NULL),
(857, 13, 'Jimmy Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.254, 8.248472222, NULL, NULL),
(858, 13, 'Gerelene Household', '0000-00-00', 350000, 'residential', 'masonry', 50, 0, '', 124.2540556, 8.2485, NULL, NULL),
(859, 13, 'Epifania Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.254, 8.248444444, NULL, NULL),
(860, 13, 'Leonila Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2539167, 8.248361111, NULL, NULL),
(861, 13, 'Lilibeth Household', '0000-00-00', 350000, 'residential', 'masonry', 50, 0, '', 124.2539444, 8.248416667, NULL, NULL),
(862, 13, 'David Household', '0000-00-00', 2000000, 'residential', 'masonry', 60, 0, '', 124.2539167, 8.248416667, NULL, NULL),
(863, 13, 'Paterno Household', '0000-00-00', 350000, 'residential', 'masonry', 50, 0, '', 124.2538889, 8.248361111, NULL, NULL),
(864, 13, 'Rosie Household', '0000-00-00', 350000, 'residential', 'masonry', 50, 0, '', 124.2539167, 8.248388889, NULL, NULL),
(865, 13, 'Miguel Household', '0000-00-00', 100000, 'residential', 'masonry', 20, 0, '', 124.254, 8.248305556, NULL, NULL),
(866, 13, 'Joel Household', '0000-00-00', 100000, 'residential', 'wood', 10, 0, '', 124.2539167, 8.248611111, NULL, NULL),
(867, 13, 'Rene Household', '0000-00-00', 250000, 'residential', 'wood', 15, 0, '', 124.2543889, 8.248777778, NULL, NULL),
(868, 13, 'Jeffrey Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2543611, 8.248916667, NULL, NULL),
(869, 13, 'Ramilito Household', '0000-00-00', 600000, 'residential', 'masonry', 60, 0, '', 124.2541389, 8.248833333, NULL, NULL),
(870, 13, 'Dolores Household', '0000-00-00', 150000, 'residential', 'wood', 60, 0, 'owned', 124.2540278, 8.248722222, NULL, NULL),
(871, 13, 'Samuel_Joseph Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2539722, 8.24875, NULL, NULL),
(872, 13, 'Jill Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2539167, 8.248694444, NULL, NULL),
(873, 13, 'Eduardo Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2539722, 8.248694444, NULL, NULL),
(874, 13, 'Leonisa Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.25375, 8.2485, NULL, NULL),
(875, 13, 'Domingo Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2536944, 8.248666667, NULL, NULL),
(876, 13, 'Francisco Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2538056, 8.248666667, NULL, NULL),
(877, 13, 'Elvie Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, '', 124.2537222, 8.248805556, NULL, NULL),
(878, 13, 'Hermenio Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2537778, 8.248805556, NULL, NULL),
(879, 13, 'Nelfred Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2537222, 8.248833333, NULL, NULL),
(880, 13, 'Cynthia Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2538056, 8.248861111, NULL, NULL),
(881, 13, 'Wilfredo Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2538333, 8.248833333, NULL, NULL),
(882, 13, 'Ester Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2538333, 8.248888889, NULL, NULL),
(883, 13, 'Julieta Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2538889, 8.248944444, NULL, NULL),
(884, 13, 'Rosita Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.2539167, 8.249, NULL, NULL),
(885, 13, 'Romeo Household', '0000-00-00', 150000, 'residential', 'wood', 60, 0, '', 124.2539722, 8.248916667, NULL, NULL),
(886, 13, 'Evangeline Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.254, 8.248972222, NULL, NULL),
(887, 13, 'Nenita Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.25375, 8.248722222, NULL, NULL),
(888, 13, 'Maryann Household', '0000-00-00', 0, 'residential', 'masonry', 60, 0, '', 124.2541389, 8.249055556, NULL, NULL),
(889, 13, 'Loreto Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, 'owned', 124.2540556, 8.249083333, NULL, NULL),
(890, 13, 'Bonifacio Household', '0000-00-00', 500000, 'residential', 'masonry', 60, 0, '', 124.2541944, 8.249027778, NULL, NULL),
(891, 13, 'Abundio_Jr Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.25425, 8.249, NULL, NULL),
(892, 13, 'Ricky Household', '0000-00-00', 150000, 'residential', 'masonry', 46, 0, '', 124.2542778, 8.249027778, NULL, NULL),
(893, 13, 'Roberto Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2542222, 8.248916667, NULL, NULL),
(894, 13, 'Babie_Julie Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2545, 8.24875, NULL, NULL),
(895, 13, 'Rico Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2544722, 8.248527778, NULL, NULL),
(896, 13, 'Alejo Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2540278, 8.24925, NULL, NULL),
(897, 13, 'Zita Household', '0000-00-00', 400000, 'residential', 'wood', 80, 0, 'owned', 124.2545, 8.248861111, NULL, NULL),
(898, 13, 'Glenn_Mar Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, '', 124.2542778, 8.248888889, NULL, NULL),
(899, 13, 'Melandro Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, '', 124.254, 8.249083333, NULL, NULL),
(900, 13, 'Pedro_Jr. Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.2539167, 8.249166667, NULL, NULL),
(901, 13, 'Rogelio Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, 'owned', 124.2538889, 8.24925, NULL, NULL),
(902, 13, 'Marilyn Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.2541667, 8.248833333, NULL, NULL),
(903, 13, 'Genaro_Sr. Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2540556, 8.248777778, NULL, NULL),
(904, 13, 'Pio Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2541111, 8.248722222, NULL, NULL),
(905, 13, 'Roel Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.2538611, 8.248666667, NULL, NULL),
(906, 13, 'Benson_Sr. Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, '', 124.2538333, 8.248666667, NULL, NULL),
(907, 13, 'Liberato Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, '', 124.2538889, 8.248611111, NULL, NULL),
(908, 13, 'Rolando Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2539722, 8.248777778, NULL, NULL),
(909, 13, 'Reynaldo_Sr. Household', '0000-00-00', 350000, 'residential', 'masonry', 50, 0, '', 124.2538333, 8.249138889, NULL, NULL),
(910, 13, 'Tarciana Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2537778, 8.249111111, NULL, NULL),
(911, 13, 'Merlyn Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, '', 124.2536667, 8.249055556, NULL, NULL),
(912, 13, 'Rene Household', '0000-00-00', 250000, 'residential', 'masonry', 50, 0, '', 124.2536667, 8.249, NULL, NULL),
(913, 13, 'Ernesto Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, '', 124.2536111, 8.248944444, NULL, NULL),
(914, 13, 'Froilan_Francis Household', '0000-00-00', 750000, 'residential', 'masonry', 50, 0, '', 124.2538333, 8.249194444, NULL, NULL),
(915, 13, 'Louie Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, 'owned', 124.2537778, 8.249222222, NULL, NULL),
(916, 13, 'Edmundo_Sr. Household', '0000-00-00', 400000, 'residential', 'masonry', 50, 0, '', 124.25375, 8.249194444, NULL, NULL),
(917, 13, 'Jeffrey Household', '0000-00-00', 400000, 'residential', 'masonry', 50, 0, '', 124.2536944, 8.248805556, NULL, NULL),
(918, 13, 'Rosalinda Household', '0000-00-00', 80000, 'residential', 'wood', 30, 0, '', 124.2541389, 8.248972222, NULL, NULL),
(919, 8, 'Jeffrey Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.257, 8.249055556, NULL, NULL),
(920, 8, 'Melchora Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2570278, 8.248555556, NULL, NULL),
(921, 8, 'Rene Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2569722, 8.248611111, NULL, NULL),
(922, 8, 'Ernest Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2569444, 8.2485, NULL, NULL),
(923, 8, 'Tibor Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2568333, 8.248527778, NULL, NULL),
(924, 8, 'Rudy Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2569167, 8.248472222, NULL, NULL),
(925, 8, 'Ernie Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2568333, 8.248916667, NULL, NULL),
(926, 8, 'Marcelino Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2568056, 8.248944444, NULL, NULL),
(927, 8, 'Manuel Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2568333, 8.248972222, NULL, NULL),
(928, 8, 'Joselito Household', '0000-00-00', 0, '', '', 0, 0, '', 124.257, 8.248833333, NULL, NULL),
(929, 8, 'Narciso Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2567222, 8.248805556, NULL, NULL),
(930, 8, 'Emelia Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.25675, 8.248888889, NULL, NULL),
(931, 8, 'Gerry Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2567778, 8.248916667, NULL, NULL),
(932, 8, 'Alfredo Household', '0000-00-00', 150000, 'residential', 'wood', 40, 0, '', 124.2569167, 8.248833333, NULL, NULL),
(933, 23, 'Rosita Household', '0000-00-00', 10000, 'residential', 'wood', 16, 0, '', 124.2525278, 8.254861111, NULL, NULL),
(934, 23, 'Sabelo Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2464722, 8.257194444, NULL, NULL),
(935, 23, 'Rogelio Household', '0000-00-00', 500000, 'residential', 'masonry', 20, 0, '', 124.2450556, 8.257222222, NULL, NULL),
(936, 23, 'Andrew Household', '0000-00-00', 6000, 'residential', 'wood', 5, 0, '', 124.2463333, 8.258, NULL, NULL),
(937, 23, 'Alfredo Household', '0000-00-00', 10000, 'residential', 'wood', 8, 0, '', 124.2463056, 8.257777778, NULL, NULL),
(938, 23, 'Erlito Household', '0000-00-00', 10000, 'residential', 'wood', 10, 0, '', 124.2460833, 8.257694444, NULL, NULL),
(939, 23, 'Teresita Household', '0000-00-00', 10000, 'residential', 'wood', 8, 0, '', 124.2462222, 8.257777778, NULL, NULL),
(940, 23, 'Atoy Household', '0000-00-00', 10000, 'residential', 'wood', 10, 0, '', 124.2465, 8.257777778, NULL, NULL),
(941, 23, 'Delfin Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2466667, 8.257777778, NULL, NULL),
(942, 23, 'Erlito Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2464722, 8.257972222, NULL, NULL),
(943, 23, 'Reto Household', '0000-00-00', 10000, 'residential', 'wood', 10, 0, '', 124.2463056, 8.258722222, NULL, NULL),
(944, 23, 'Pablo Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2464167, 8.258777778, NULL, NULL),
(945, 23, 'Lorna Household', '0000-00-00', 10000, 'residential', 'wood', 5, 0, '', 124.2463889, 8.258777778, NULL, NULL),
(946, 23, 'Pepito_Jr Household', '0000-00-00', 10000, 'residential', 'wood', 5, 0, 'owned', 124.2468889, 8.258305556, NULL, NULL),
(947, 23, 'Boyet Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2470833, 8.258833333, NULL, NULL),
(948, 23, 'Arlyn Household', '0000-00-00', 250000, 'residential', 'masonry', 50, 0, '', 124.2480556, 8.259583333, NULL, NULL),
(949, 23, 'Edie Household', '0000-00-00', 10000, '', '', 0, 0, '', 124.2479167, 8.259694444, NULL, NULL),
(950, 23, 'Meo Household', '0000-00-00', 30000, 'residential', 'wood', 10, 0, '', 124.2480833, 8.259638889, NULL, NULL),
(951, 23, 'Arjely Household', '0000-00-00', 150000, 'residential', 'masonry', 30, 0, '', 124.2481944, 8.259555556, NULL, NULL),
(952, 23, 'Jose_Jr Household', '0000-00-00', 80000, 'residential', 'wood', 20, 0, '', 124.2481667, 8.259083333, NULL, NULL),
(953, 23, 'Ronald Household', '0000-00-00', 80000, 'residential', 'wood', 10, 0, '', 124.24825, 8.259, NULL, NULL),
(954, 23, 'Roberto Household', '0000-00-00', 50000, 'residential', 'wood', 10, 0, 'owned', 124.2481944, 8.259, NULL, NULL),
(955, 23, 'Dicky Household', '0000-00-00', 30000, 'residential', 'wood', 5, 0, '', 124.2500278, 8.258166667, NULL, NULL),
(956, 23, 'Tata Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2493333, 8.257388889, NULL, NULL),
(957, 23, 'Bebot Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2491667, 8.257333333, NULL, NULL),
(958, 23, 'Florenciano Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2491667, 8.25725, NULL, NULL),
(959, 23, 'Patricio Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2503333, 8.257861111, NULL, NULL),
(960, 23, 'Polaris Household', '0000-00-00', 150000, 'residential', 'masonry', 30, 0, '', 124.2503611, 8.257611111, NULL, NULL),
(961, 23, 'Oliver Household', '0000-00-00', 80000, 'residential', 'wood', 20, 0, '', 124.2504444, 8.2575, NULL, NULL),
(962, 23, 'Vicente Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, 'owned', 124.2506389, 8.257166667, NULL, NULL),
(963, 23, 'Thelma Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2509444, 8.257611111, NULL, NULL),
(964, 23, 'Filipe Household', '0000-00-00', 1000000, 'residential', 'masonry', 60, 0, 'owned', 124.2517222, 8.255972222, NULL, NULL),
(965, 23, 'Josiao Household', '0000-00-00', 1500000, 'residential', 'masonry', 60, 0, '', 124.2519167, 8.255833333, NULL, NULL),
(966, 23, 'Epanyo Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2521111, 8.255611111, NULL, NULL),
(967, 23, 'Fernando Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2525278, 8.255277778, NULL, NULL),
(968, 23, 'Avilino Household', '0000-00-00', 150000, 'residential', 'wood', 60, 0, '', 124.2525, 8.255388889, NULL, NULL),
(969, 23, 'Bayani Household', '0000-00-00', 150000, 'residential', 'masonry', 60, 0, 'owned', 124.2527778, 8.25525, NULL, NULL),
(970, 23, 'Tata Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2525278, 8.254805556, NULL, NULL),
(971, 23, 'Jose Household', '0000-00-00', 3000, 'residential', 'wood', 16, 0, '', 124.2524722, 8.254722222, NULL, NULL),
(972, 9, 'Roseller Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, 'owned', 124.2592778, 8.246805556, NULL, NULL),
(973, 9, 'Urbano Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2587222, 8.246388889, NULL, NULL),
(974, 9, 'Martiniana Household', '0000-00-00', 200000, 'residential', 'wood', 78, 0, '', 124.2585, 8.24675, NULL, NULL),
(975, 9, 'Napoleon Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2585833, 8.2465, NULL, NULL),
(976, 9, 'Lane Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2581389, 8.245944444, NULL, NULL),
(977, 9, 'Leonarda Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2584722, 8.247833333, NULL, NULL),
(978, 9, 'Glenda Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2586667, 8.247611111, NULL, NULL),
(979, 9, 'Ricarda Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2596111, 8.247166667, NULL, NULL),
(980, 9, 'Gilbert Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2595278, 8.246944444, NULL, NULL),
(981, 9, 'Leo_Sr Household', '0000-00-00', 0, 'residential', 'wood', 40, 0, '', 124.2583889, 8.246388889, NULL, NULL),
(982, 9, 'Milaflor Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2585833, 8.247694444, NULL, NULL),
(983, 9, 'Sthil Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2583889, 8.247888889, NULL, NULL),
(984, 9, 'Maximo Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2584444, 8.247861111, NULL, NULL),
(985, 9, 'Alvin Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.25925, 8.247555556, NULL, NULL),
(986, 9, 'Nonito Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2591389, 8.247444444, NULL, NULL),
(987, 9, 'Rasdi Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2583056, 8.247944444, NULL, NULL),
(988, 20, 'Berando Household', '0000-00-00', 0, 'residential', 'wood', 20, 0, '', 124.2518333, 8.249361111, NULL, NULL),
(989, 9, 'Custodio Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2584722, 8.247888889, NULL, NULL),
(990, 9, 'Ronnie_Joe Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2584444, 8.247972222, NULL, NULL),
(991, 9, 'Demilou Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2585556, 8.248055556, NULL, NULL),
(992, 9, 'Conrado Household', '0000-00-00', 500000, 'residential', 'masonry', 60, 0, '', 124.2585833, 8.247611111, NULL, NULL),
(993, 9, 'Edilberto Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.25875, 8.247583333, NULL, NULL),
(994, 9, 'Premitivo Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2589444, 8.247472222, NULL, NULL),
(995, 9, 'Agustin Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2591389, 8.247416667, NULL, NULL),
(996, 9, 'Melvin Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2591667, 8.24725, NULL, NULL),
(997, 9, 'Salvador_Jr Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2592222, 8.247388889, NULL, NULL),
(998, 9, 'Danilo_Sr Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.25925, 8.247444444, NULL, NULL),
(999, 9, 'Mark_Anthony Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2593056, 8.2475, NULL, NULL),
(1000, 9, 'Mary_jane Household', '0000-00-00', 0, 'residential', '', 0, 0, '', 124.2593333, 8.247527778, NULL, NULL),
(1001, 9, 'Francisca Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2593611, 8.247555556, NULL, NULL),
(1002, 9, 'Ramil Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2593889, 8.247583333, NULL, NULL),
(1003, 9, 'Benjie Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2594167, 8.247611111, NULL, NULL),
(1004, 9, 'Bienvinido Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2594167, 8.247638889, NULL, NULL),
(1005, 9, 'Warlito Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2594167, 8.247694444, NULL, NULL),
(1006, 9, 'Joan Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.25925, 8.247805556, NULL, NULL),
(1007, 9, 'James_Paul Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2592778, 8.247666667, NULL, NULL),
(1008, 9, 'Jose Household', '0000-00-00', 200000, 'residential', 'masonry', 60, 0, '', 124.2594167, 8.24725, NULL, NULL),
(1009, 9, 'Romeo Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2595278, 8.247305556, NULL, NULL),
(1010, 9, 'Jason Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2595, 8.247222222, NULL, NULL),
(1011, 9, 'Adrian Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2596111, 8.247194444, NULL, NULL),
(1012, 9, 'Benjamin Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2594444, 8.247111111, NULL, NULL),
(1013, 9, 'Jeffrey Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2594167, 8.247111111, NULL, NULL),
(1014, 9, 'Manuelito Household', '0000-00-00', 0, 'residential', 'wood', 40, 0, '', 124.2593056, 8.247138889, NULL, NULL),
(1015, 9, 'Basilio Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2592778, 8.247222222, NULL, NULL),
(1016, 9, 'Rene Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2592778, 8.247194444, NULL, NULL),
(1017, 9, 'Quirino Household', '0000-00-00', 0, 'residential', 'wood', 0, 0, '', 124.2591944, 8.247194444, NULL, NULL),
(1018, 9, 'Flaviano Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2597778, 8.247222222, NULL, NULL),
(1019, 9, 'Alain Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2593056, 8.247305556, NULL, NULL),
(1020, 9, 'Ricardo Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2590556, 8.247472222, NULL, NULL),
(1021, 9, 'Jason Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2588889, 8.247527778, NULL, NULL),
(1022, 9, 'Leopoldo Household', '0000-00-00', 0, 'residential', 'masonry', 0, 0, '', 124.2584722, 8.247666667, NULL, NULL),
(1023, 16, 'Eleno_Boy Household', '0000-00-00', 500000, 'residential', 'masonry', 68, 0, '', 124.2553333, 8.243222222, NULL, NULL),
(1024, 16, 'Rochelle Household', '0000-00-00', 250000, 'residential', 'masonry', 30, 0, '', 124.2555, 8.243333333, NULL, NULL),
(1025, 16, 'Bernon Household', '0000-00-00', 200000, 'residential', 'masonry', 30, 0, '', 124.2552778, 8.243277778, NULL, NULL),
(1026, 16, 'Junard Household', '0000-00-00', 150000, 'residential', 'masonry', 30, 0, '', 124.2556111, 8.243194444, NULL, NULL),
(1027, 16, 'Junbi Household', '0000-00-00', 150000, 'residential', 'wood', 38, 0, '', 124.256, 8.243916667, NULL, NULL),
(1028, 16, 'Phycie Household', '0000-00-00', 15000, 'residential', 'wood', 10, 0, '', 124.2560556, 8.243944444, NULL, NULL),
(1029, 16, 'Philip Household', '0000-00-00', 50000, 'residential', 'wood', 15, 0, '', 124.25525, 8.243611111, NULL, NULL),
(1030, 16, 'Harold Household', '0000-00-00', 30000, 'residential', 'wood', 30, 0, '', 124.2559722, 8.243944444, NULL, NULL),
(1031, 16, 'Julito Household', '0000-00-00', 50000, 'residential', 'wood', 15, 0, '', 124.256, 8.243916667, NULL, NULL),
(1032, 16, 'Grace Household', '0000-00-00', 20000, 'residential', 'wood', 40, 0, '', 124.2554722, 8.243527778, NULL, NULL),
(1033, 21, 'George Household', '0000-00-00', 30000, 'residential', 'wood', 30, 0, 'owned', 124.2547222, 8.246083333, NULL, NULL),
(1034, 21, 'Esteban Household', '0000-00-00', 80000, 'residential', 'wood', 40, 0, '', 124.2539444, 8.247527778, NULL, NULL),
(1035, 21, 'Roldan Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2538056, 8.247777778, NULL, NULL),
(1036, 21, 'Revelino Household', '0000-00-00', 1000000, 'residential', 'masonry', 100, 0, '', 124.2534722, 8.24775, NULL, NULL),
(1037, 21, 'Abraham Household', '0000-00-00', 1000000, 'residential', 'masonry', 100, 0, '', 124.25375, 8.247472222, NULL, NULL),
(1038, 21, 'William Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2536389, 8.247444444, NULL, NULL),
(1039, 21, 'Hubert Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2536389, 8.247444444, NULL, NULL),
(1040, 21, 'Alvin Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2536389, 8.247444444, NULL, NULL),
(1041, 21, 'Sulpicio Household', '0000-00-00', 2000000, 'residential', 'masonry', 80, 0, '', 124.2537222, 8.247222222, NULL, NULL),
(1042, 21, 'Florante Household', '0000-00-00', 100000, 'residential', 'wood', 30, 0, '', 124.2536944, 8.246277778, NULL, NULL),
(1043, 21, 'Christopher Household', '0000-00-00', 100000, 'residential', 'wood', 20, 0, '', 124.2537222, 8.246305556, NULL, NULL),
(1044, 21, 'Leopoldo Household', '0000-00-00', 1800000, 'residential', 'masonry', 30, 0, '', 124.2537778, 8.246361111, NULL, NULL),
(1045, 21, 'Carlos Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, 'owned', 124.2532778, 8.246861111, NULL, NULL),
(1046, 21, 'Michael Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2532222, 8.246916667, NULL, NULL),
(1047, 21, 'Edgar Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2531944, 8.246888889, NULL, NULL),
(1048, 21, 'Estrella Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2531667, 8.246861111, NULL, NULL),
(1049, 21, 'Bernardo Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2534444, 8.246916667, NULL, NULL),
(1050, 21, 'Sapiah Household', '0000-00-00', 1000000, 'residential', 'masonry', 100, 0, 'owned', 124.2533333, 8.247555556, NULL, NULL),
(1051, 21, 'Junie_ven Household', '0000-00-00', 500000, 'residential', 'masonry', 200, 0, '', 124.2532778, 8.248111111, NULL, NULL),
(1052, 21, 'Romero Household', '0000-00-00', 1200000, 'residential', 'masonry', 150, 0, 'owned', 124.2533056, 8.248138889, NULL, NULL),
(1053, 20, 'Manuel Household', '0000-00-00', 1500000, 'residential', 'masonry', 100, 0, 'owned', 124.2530278, 8.24925, NULL, NULL),
(1054, 20, 'Allan Household', '0000-00-00', 100000, 'residential', 'wood', 40, 0, '', 124.2531389, 8.24975, NULL, NULL),
(1055, 20, 'Richard Household', '0000-00-00', 80000, 'residential', 'wood', 50, 0, 'owned', 124.2533333, 8.249944444, NULL, NULL),
(1056, 20, 'Arnold Household', '0000-00-00', 150000, 'residential', 'wood', 30, 0, '', 124.2533056, 8.249944444, NULL, NULL),
(1057, 20, 'Antonio Household', '0000-00-00', 15000, 'residential', 'wood', 10, 0, 'owned', 124.2531944, 8.250027778, NULL, NULL),
(1058, 20, 'Arnolfo Household', '0000-00-00', 10000, 'residential', 'wood', 20, 0, 'owned', 124.2530556, 8.250111111, NULL, NULL),
(1059, 20, 'Demetria Household', '0000-00-00', 250000, 'residential', 'masonry', 35, 0, 'owned', 124.2534722, 8.249305556, NULL, NULL),
(1060, 20, 'Merlyn Household', '0000-00-00', 250000, 'residential', 'masonry', 30, 0, 'owned', 124.2534444, 8.249277778, NULL, NULL),
(1061, 20, 'Gregorio Household', '0000-00-00', 7000, 'residential', 'wood', 10, 0, '', 124.2533333, 8.250027778, NULL, NULL),
(1062, 20, 'Elojeo Household', '0000-00-00', 10000, 'residential', 'wood', 20, 0, '', 124.2531944, 8.250083333, NULL, NULL),
(1063, 20, 'Benjie_jr Household', '0000-00-00', 10000, 'residential', 'wood', 18, 0, '', 124.2532222, 8.250083333, NULL, NULL),
(1064, 20, 'Rodolfo Household', '0000-00-00', 15000, 'residential', 'wood', 20, 0, '', 124.2533333, 8.250083333, NULL, NULL),
(1065, 20, 'Serbillano Household', '0000-00-00', 5000, 'residential', 'wood', 10, 0, 'owned', 124.2533333, 8.250055556, NULL, NULL),
(1066, 20, 'Federico Household', '0000-00-00', 7000, 'residential', 'wood', 18, 0, '', 124.2532778, 8.250027778, NULL, NULL),
(1067, 20, 'Anthony Household', '0000-00-00', 10000, 'residential', 'wood', 16, 0, '', 124.25325, 8.250055556, NULL, NULL),
(1068, 20, 'Ronald Household', '0000-00-00', 80000, 'residential', 'masonry', 10, 0, '', 124.2526667, 8.249861111, NULL, NULL),
(1069, 20, 'Clark Household', '0000-00-00', 10000, 'residential', 'wood', 10, 0, '', 124.2526667, 8.24975, NULL, NULL),
(1070, 20, 'Allan Household', '0000-00-00', 100000, 'residential', 'masonry', 18, 0, 'owned', 124.2526111, 8.24975, NULL, NULL),
(1071, 20, 'Christopher Household', '0000-00-00', 250000, 'residential', 'masonry', 30, 0, '', 124.2526389, 8.24975, NULL, NULL),
(1072, 20, 'Vicente Household', '0000-00-00', 300000, 'residential', 'masonry', 40, 0, 'owned', 124.2525833, 8.249694444, NULL, NULL),
(1073, 20, 'Eddie Household', '0000-00-00', 150000, 'residential', 'masonry', 35, 0, '', 124.2526944, 8.249666667, NULL, NULL),
(1074, 20, 'Roberto_jr Household', '0000-00-00', 50000, 'residential', 'wood', 10, 0, '', 124.2528056, 8.249527778, NULL, NULL),
(1075, 20, 'Edgardo Household', '0000-00-00', 150000, 'residential', 'wood', 35, 0, '', 124.2527222, 8.249527778, NULL, NULL),
(1076, 20, 'Wenefredo Household', '0000-00-00', 70000, 'residential', 'wood', 40, 0, 'owned', 124.2525833, 8.249527778, NULL, NULL),
(1077, 20, 'Dante Household', '0000-00-00', 70000, 'residential', 'masonry', 35, 0, 'owned', 124.25275, 8.249388889, NULL, NULL),
(1078, 20, 'Lolita Household', '0000-00-00', 100000, 'residential', 'wood', 3, 0, '', 124.25275, 8.249416667, NULL, NULL),
(1079, 20, 'Natividad Household', '0000-00-00', 100000, 'residential', 'masonry', 40, 0, '', 124.2516389, 8.24975, NULL, NULL),
(1080, 20, 'Elsie Household', '0000-00-00', 30000, 'residential', 'masonry', 40, 0, 'owned', 124.2521111, 8.249638889, NULL, NULL),
(1081, 20, 'Sajid Household', '0000-00-00', 25000, 'residential', 'masonry', 20, 0, '', 124.2520278, 8.2495, NULL, NULL),
(1082, 20, 'Mila Household', '0000-00-00', 50000, 'residential', 'masonry', 20, 0, 'owned', 124.2519444, 8.249444444, NULL, NULL),
(1083, 20, 'Ricky Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, 'owned', 124.2519167, 8.249444444, NULL, NULL),
(1084, 20, 'Roel Household', '0000-00-00', 50000, 'residential', 'masonry', 30, 0, '', 124.2519722, 8.249388889, NULL, NULL),
(1085, 20, 'Roberto Household', '0000-00-00', 100000, 'residential', 'masonry', 40, 0, 'owned', 124.25175, 8.249305556, NULL, NULL),
(1086, 20, 'Arnolfo Household', '0000-00-00', 30000, 'residential', 'wood', 30, 0, '', 124.2517222, 8.249305556, NULL, NULL),
(1087, 20, 'Sofricio Household', '0000-00-00', 50000, 'residential', 'wood', 30, 0, 'owned', 124.2516667, 8.249222222, NULL, NULL),
(1088, 20, 'Magdalena Household', '0000-00-00', 30000, 'residential', 'wood', 20, 0, 'owned', 124.25175, 8.24925, NULL, NULL),
(1089, 20, 'Gorio Household', '0000-00-00', 10000, 'residential', 'wood', 15, 0, '', 124.2523333, 8.248694444, NULL, NULL),
(1090, 20, 'Jerry Household', '0000-00-00', 15000, 'residential', 'wood', 10, 0, '', 124.2523889, 8.24875, NULL, NULL),
(1091, 20, 'Arfil Household', '0000-00-00', 20000, 'residential', 'wood', 20, 0, '', 124.2524167, 8.24875, NULL, NULL),
(1092, 20, 'Fritz_Jay Household', '0000-00-00', 10000, 'residential', 'wood', 20, 0, '', 124.2524167, 8.248694444, NULL, NULL),
(1093, 16, 'Annie Household', '0000-00-00', 80000, 'residential', 'masonry', 60, 0, 'owned', 124.25625, 8.243083333, NULL, NULL),
(1094, 16, 'Clemente_jr Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, 'owned', 124.2561667, 8.242916667, NULL, NULL),
(1095, 16, 'Sarah Household', '0000-00-00', 300000, 'residential', 'masonry', 50, 0, 'owned', 124.2561389, 8.242944444, NULL, NULL),
(1096, 16, 'Rosalina Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, '', 124.2560833, 8.242916667, NULL, NULL),
(1097, 16, 'Michael Household', '0000-00-00', 0, 'residential', 'masonry', 35, 0, 'owned', 124.2561111, 8.242888889, NULL, NULL),
(1098, 16, 'Cito Household', '0000-00-00', 500000, 'residential', 'masonry', 80, 0, 'owned', 124.2560556, 8.242805556, NULL, NULL),
(1099, 16, 'Maribeth Household', '0000-00-00', 500000, 'residential', 'masonry', 40, 0, '', 124.2559167, 8.242944444, NULL, NULL),
(1100, 16, 'Estela Household', '0000-00-00', 100000, 'residential', 'masonry', 60, 0, '', 124.2558056, 8.242777778, NULL, NULL),
(1101, 16, 'Romeo Household', '0000-00-00', 50000, 'residential', 'wood', 40, 0, '', 124.2557222, 8.242833333, NULL, NULL),
(1102, 16, 'Redemptor Household', '0000-00-00', 300000, 'residential', 'masonry', 60, 0, 'owned', 124.25575, 8.242916667, NULL, NULL),
(1103, 16, 'Hans Household', '0000-00-00', 300000, 'residential', 'masonry', 30, 0, 'owned', 124.2556667, 8.242972222, NULL, NULL),
(1104, 16, 'Juliet Household', '0000-00-00', 1000000, 'residential', 'masonry', 100, 0, 'owned', 124.2556667, 8.243027778, NULL, NULL),
(1105, 16, 'Danny Household', '0000-00-00', 200000, 'residential', 'masonry', 80, 0, '', 124.2555278, 8.243083333, NULL, NULL),
(1106, 16, 'Annalou Household', '0000-00-00', 180000, 'residential', 'masonry', 100, 0, 'owned', 124.2556667, 8.243111111, NULL, NULL),
(1107, 16, 'Derrick Household', '0000-00-00', 0, 'residential', 'masonry', 30, 0, '', 124.2556111, 8.243194444, NULL, NULL),
(1108, 16, 'Jovita Household', '0000-00-00', 20000, 'commercial', 'wood', 10, 0, 'owned', 124.2556111, 8.243333333, NULL, NULL),
(1109, 16, 'Flaviano Household', '0000-00-00', 600000, 'residential', 'masonry', 100, 0, 'leased', 124.2558056, 8.243194444, NULL, NULL),
(1110, 16, 'Joefil Household', '0000-00-00', 600000, 'residential', 'masonry', 100, 0, '', 124.2558056, 8.243194444, NULL, NULL),
(1111, 16, 'Nestor Household', '0000-00-00', 500000, 'residential', 'masonry', 100, 0, 'owned', 124.2557778, 8.243388889, NULL, NULL),
(1112, 16, 'Esperi_jun Household', '0000-00-00', 250000, 'residential', 'masonry', 40, 0, 'owned', 124.2560278, 8.243055556, NULL, NULL),
(1113, 17, 'Manuel Household', '0000-00-00', 500000, 'residential', 'masonry', 75, 0, '', 124.2549167, 8.241527778, NULL, NULL),
(1114, 17, 'Josef Household', '0000-00-00', 150000, 'residential', 'masonry', 20, 0, 'owned', 124.2550556, 8.241666667, NULL, NULL),
(1115, 17, 'Solidad Household', '0000-00-00', 70000, 'residential', 'wood', 20, 0, 'owned', 124.255, 8.241388889, NULL, NULL),
(1116, 17, 'Bernard Household', '0000-00-00', 0, 'residential', 'masonry', 30, 0, 'owned', 124.2550278, 8.241527778, NULL, NULL),
(1117, 17, 'Jay Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, 'owned', 124.2552222, 8.2415, NULL, NULL),
(1118, 17, 'Devon_Christ Household', '0000-00-00', 0, 'residential', 'wood', 15, 0, '', 124.2552778, 8.2415, NULL, NULL),
(1119, 17, 'Modesto Household', '0000-00-00', 150000, 'residential', 'masonry', 60, 0, 'owned', 124.25525, 8.241527778, NULL, NULL),
(1120, 17, 'Fidel Household', '0000-00-00', 500000, 'RC', 'masonry', 80, 0, 'owned', 124.2553333, 8.241444444, NULL, NULL),
(1121, 17, 'Jomar Household', '0000-00-00', 1500000, 'residential', 'masonry', 60, 0, 'owned', 124.2553889, 8.241277778, NULL, NULL),
(1122, 17, 'Charlie Household', '0000-00-00', 50000, 'residential', 'wood', 30, 0, 'owned', 124.2554722, 8.241388889, NULL, NULL),
(1123, 17, 'Armando Household', '0000-00-00', 70000, 'residential', 'masonry', 20, 0, '', 124.2554444, 8.241361111, NULL, NULL),
(1124, 17, 'Benito Household', '0000-00-00', 80000, 'residential', 'masonry', 30, 0, 'owned', 124.2555278, 8.241222222, NULL, NULL),
(1125, 17, 'Roque Household', '0000-00-00', 15000, 'residential', 'wood', 30, 0, '', 124.2554722, 8.241388889, NULL, NULL),
(1126, 17, 'Arnel Household', '0000-00-00', 1000000, 'residential', 'masonry', 200, 0, 'owned', 124.2550278, 8.242388889, NULL, NULL),
(1127, 17, 'Allan Household', '0000-00-00', 150000, 'residential', 'masonry', 40, 0, 'owned', 124.2550278, 8.242416667, NULL, NULL),
(1128, 17, 'Pablo Household', '0000-00-00', 60000, 'residential', 'masonry', 20, 0, '', 124.2550556, 8.242138889, NULL, NULL),
(1129, 17, 'Nena Household', '0000-00-00', 70000, 'residential', 'masonry', 30, 0, '', 124.2553611, 8.242333333, NULL, NULL),
(1130, 17, 'Teresita Household', '0000-00-00', 500000, 'residential', 'masonry', 50, 0, 'owned', 124.2554722, 8.242055556, NULL, NULL),
(1131, 17, 'Danilo Household', '0000-00-00', 80000, 'residential', 'masonry', 30, 0, 'owned', 124.2555833, 8.241527778, NULL, NULL),
(1132, 17, 'Eddie Household', '0000-00-00', 0, 'residential', 'masonry', 30, 0, '', 124.2556667, 8.241555556, NULL, NULL),
(1133, 10, 'Clyde Household', '0000-00-00', 400000, 'residential', 'masonry', 49, 0, 'owned', 124.25925, 8.246166667, NULL, NULL),
(1134, 10, 'Raul Household', '0000-00-00', 6000000, 'RC', 'masonry', 65, 0, 'owned', 124.2591944, 8.246111111, NULL, NULL),
(1135, 10, 'Conchita Household', '0000-00-00', 1000000, 'residential', 'masonry', 100, 0, '', 124.2593056, 8.245861111, NULL, NULL),
(1136, 10, 'Alawya Household', '0000-00-00', 5000000, 'residential', 'masonry', 150, 0, 'owned', 124.2596111, 8.246, NULL, NULL),
(1137, 10, 'Gillerma Household', '0000-00-00', 1600000, 'residential', 'wood', 60, 0, 'owned', 124.2596389, 8.246416667, NULL, NULL),
(1138, 10, 'Eddie Household', '0000-00-00', 0, 'residential', 'masonry', 10, 0, '', 124.2598611, 8.246444444, NULL, NULL),
(1139, 10, 'Ernesto Household', '0000-00-00', 80000, 'residential', 'wood', 30, 0, 'owned', 124.2595, 8.246555556, NULL, NULL),
(1140, 10, 'Catalino Household', '0000-00-00', 20000, 'residential', 'wood', 20, 0, 'owned', 124.2603889, 8.246111111, NULL, NULL),
(1141, 10, 'Rafael Household', '0000-00-00', 70000, 'residential', 'masonry', 100, 0, 'owned', 124.2597778, 8.246916667, NULL, NULL),
(1142, 10, 'Catalina Household', '0000-00-00', 500000, 'residential', 'masonry', 80, 0, 'owned', 124.2598333, 8.247, NULL, NULL),
(1143, 10, 'Cristina Household', '0000-00-00', 600000, 'residential', 'masonry', 100, 0, 'owned', 124.2601944, 8.246666667, NULL, NULL),
(1144, 7, 'Julius_sr Household', '0000-00-00', 0, 'residential', 'masonry', 70, 0, '', 124.2607222, 8.246277778, NULL, NULL),
(1145, 18, 'Rizalina Household', '0000-00-00', 200000, 'residential', 'masonry', 40, 0, '', 124.261, 8.245638889, NULL, NULL),
(1146, 18, 'Lamberto Household', '0000-00-00', 100000, 'residential', 'masonry', 30, 0, 'owned', 124.2607778, 8.245638889, NULL, NULL),
(1147, 18, 'Rafael Household', '0000-00-00', 300000, 'residential', 'masonry', 40, 0, '', 124.2608056, 8.244972222, NULL, NULL),
(1148, 18, 'Winona Household', '0000-00-00', 2000000, 'residential', 'masonry', 60, 0, '', 124.2608056, 8.24475, NULL, NULL),
(1149, 22, 'Virginia Household', '0000-00-00', 400000, 'residential', 'masonry', 90, 0, '', 124.2688056, 8.250305556, NULL, NULL),
(1150, 22, 'Christy Household', '0000-00-00', 0, '', '', 0, 0, '', 124.26875, 8.250444444, NULL, NULL),
(1151, 22, 'Eduardo Household', '0000-00-00', 4500000, 'residential', 'masonry', 40, 0, '', 124.2685833, 8.250444444, NULL, NULL),
(1152, 22, 'Godofredo_Sr. Household', '0000-00-00', 3000000, 'residential', 'masonry', 100, 0, 'owned', 124.2683889, 8.250888889, NULL, NULL),
(1153, 22, 'Samson_Jr Household', '0000-00-00', 2500000, 'residential', 'masonry', 108, 0, '', 124.2684167, 8.250805556, NULL, NULL),
(1154, 1, 'Mark Household', '0000-00-00', 15000, 'residential', 'wood', 20, 0, 'owned', 124.2683333, 8.251111111, NULL, NULL),
(1155, 22, 'Patricio_jr Household', '0000-00-00', 700000, 'residential', 'masonry', 85, 0, '', 124.2685556, 8.251194444, NULL, NULL),
(1156, 22, 'Ronald Household', '0000-00-00', 0, '', '', 0, 0, '', 124.2686667, 8.251277778, NULL, NULL),
(1157, 22, 'Nazario_jr Household', '0000-00-00', 2000000, 'residential', 'masonry', 115, 0, 'owned', 124.2689444, 8.251527778, NULL, NULL),
(1158, 22, 'Emma Household', '0000-00-00', 800000, 'residential', 'masonry', 200, 0, 'owned', 124.2690833, 8.2515, NULL, NULL),
(1159, 22, 'Danilo Household', '0000-00-00', 800000, 'residential', 'masonry', 200, 0, '', 124.2690833, 8.2515, NULL, NULL),
(1160, 22, 'Carlito Household', '0000-00-00', 800000, 'residential', 'masonry', 200, 0, '', 124.2690833, 8.2515, NULL, NULL),
(1161, 22, 'Jeck Household', '0000-00-00', 800000, 'residential', 'masonry', 200, 0, '', 124.2690833, 8.2515, NULL, NULL),
(1162, 22, 'John Household', '0000-00-00', 400000, 'residential', 'masonry', 56, 0, 'owned', 124.2685278, 8.251, NULL, NULL),
(1163, 22, 'Allan Household', '0000-00-00', 500000, 'residential', 'masonry', 150, 0, '', 124.26875, 8.250972222, NULL, NULL),
(1164, 22, 'Dante Household', '0000-00-00', 0, 'residential', 'masonry', 40, 0, '', 124.2689722, 8.251166667, NULL, NULL),
(1165, 22, 'Guidion Household', '0000-00-00', 1000000, 'residential', 'masonry', 70, 0, 'owned', 124.2690833, 8.251333333, NULL, NULL),
(1166, 22, 'Arnold Household', '0000-00-00', 0, '', 'masonry', 36, 0, '', 124.2691389, 8.251666667, NULL, NULL),
(1167, 22, 'Sherwin Household', '0000-00-00', 250000, 'residential', 'masonry', 30, 0, 'owned', 124.2690833, 8.251777778, NULL, NULL),
(1168, 22, 'Elmer Household', '0000-00-00', 350000, 'residential', 'masonry', 44, 0, '', 124.2694167, 8.251416667, NULL, NULL),
(1169, 22, 'Lomesindo Household', '0000-00-00', 1500000, 'residential', 'masonry', 109, 0, '', 124.2693889, 8.251277778, NULL, NULL),
(1170, 22, 'Claro Household', '0000-00-00', 2000000, 'residential', 'masonry', 109, 0, '', 124.2692778, 8.251138889, NULL, NULL),
(1171, 22, 'Radja_Ali Household', '0000-00-00', 500000, 'residential', 'masonry', 142, 0, '', 124.2695, 8.251472222, NULL, NULL),
(1172, 22, 'Ibrahim Household', '0000-00-00', 600000, 'residential', 'masonry', 100, 0, '', 124.2692222, 8.251138889, NULL, NULL),
(1173, 22, 'Bayani Household', '0000-00-00', 0, 'residential', 'masonry', 200, 0, '', 124.2694167, 8.251333333, NULL, NULL),
(1174, 22, 'Leo_Richard Household', '0000-00-00', 100000, 'residential', 'masonry', 36, 0, 'owned', 124.2693333, 8.251138889, NULL, NULL),
(1175, 22, 'Adonis Household', '0000-00-00', 480000, 'residential', 'masonry', 90, 0, 'owned', 124.2693611, 8.251305556, NULL, NULL),
(1176, 22, 'Myrna Household', '0000-00-00', 600000, 'residential', 'masonry', 32, 0, '', 124.2696389, 8.251166667, NULL, NULL),
(1177, 22, 'Joffrey Household', '0000-00-00', 0, 'residential', 'masonry', 54, 0, '', 124.2695833, 8.251055556, NULL, NULL),
(1178, 22, 'Henrietto Household', '0000-00-00', 400000, 'residential', 'masonry', 36, 0, '', 124.2698333, 8.251444444, NULL, NULL),
(1179, 22, 'Cipriano Household', '0000-00-00', 800000, 'residential', 'masonry', 200, 0, '', 124.2693333, 8.251638889, NULL, NULL),
(1180, 22, 'Al\'annuar Household', '0000-00-00', 300000, 'residential', 'masonry', 36, 0, '', 124.2692778, 8.251666667, NULL, NULL),
(1181, 22, 'Vicente Household', '0000-00-00', 2500000, 'residential', 'masonry', 120, 0, '', 124.2692222, 8.252, NULL, NULL),
(1182, 15, 'Trinidad Household', '0000-00-00', 300000, 'residential', 'masonry', 80, 0, 'owned', 124.25575, 8.244805556, NULL, NULL),
(1183, 15, 'Victoria Household', '0000-00-00', 100000, 'residential', 'masonry', 70, 0, 'owned', 124.256, 8.24475, NULL, NULL),
(1184, 15, 'Andres_jr Household', '0000-00-00', 700000, 'residential', 'masonry', 40, 0, '', 124.2555556, 8.24525, NULL, NULL),
(1185, 15, 'Judy Household', '0000-00-00', 0, 'residential', 'masonry', 40, 0, 'owned', 124.2555, 8.24525, NULL, NULL),
(1186, 15, 'Angelito Household', '0000-00-00', 0, 'residential', 'wood', 10, 0, '', 124.2554444, 8.24525, NULL, NULL),
(1187, 15, 'Ranolfo Household', '0000-00-00', 250000, 'residential', 'masonry', 35, 0, 'owned', 124.2553611, 8.245138889, NULL, NULL),
(1188, 15, 'Jessie Household', '0000-00-00', 30000, 'residential', 'wood', 10, 0, '', 124.2558611, 8.245277778, NULL, NULL),
(1189, 15, 'Alfredo Household', '0000-00-00', 50000, 'residential', 'wood', 12, 0, '', 124.2558611, 8.245305556, NULL, NULL),
(1190, 15, 'Randy Household', '0000-00-00', 0, 'residential', 'masonry', 40, 0, '', 124.2553889, 8.245138889, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disasters`
--

CREATE TABLE `disasters` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `resident_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL,
  `family_identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monthly_income` int(11) NOT NULL,
  `if_other_livelihood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `livelihood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `if_4ps` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `building_id`, `family_identifier`, `monthly_income`, `if_other_livelihood`, `livelihood`, `if_4ps`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ariel Family', 2000, '0', '0', '0', NULL, NULL),
(2, 2, 'Jesser Family', 20000, '0', '0', '0', NULL, NULL),
(3, 3, 'Lucio Family', 6000, '0', '0', '0', NULL, NULL),
(4, 4, 'Flora Family', 8850, '0', '0', '0', NULL, NULL),
(5, 5, 'Francisco, jr Family', 3000, '0', '0', '0', NULL, NULL),
(6, 6, 'Francisco, sr Family', 3000, '0', '0', '0', NULL, NULL),
(7, 7, 'Hanna Mae Family', 0, '0', '0', '0', NULL, NULL),
(8, 8, 'Jesus Family', 3000, '0', '0', '0', NULL, NULL),
(9, 9, 'Manuel Family', 5000, '0', '0', '0', NULL, NULL),
(10, 10, 'Roy Family', 4000, '0', '0', '0', NULL, NULL),
(11, 11, 'Namra Family', 4500, '0', '0', '0', NULL, NULL),
(12, 12, 'Alvin Family', 4000, '0', '0', '0', NULL, NULL),
(13, 13, 'Bonifacio Family', 4000, '0', '0', '0', NULL, NULL),
(14, 14, 'Delia Family', 3000, '0', '0', '0', NULL, NULL),
(15, 15, 'Lomer Family', 7000, '0', '0', '0', NULL, NULL),
(16, 16, 'Mark Anthony Family', 7000, '0', '0', '0', NULL, NULL),
(17, 17, 'Roel Family', 3000, '0', '0', '0', NULL, NULL),
(18, 18, 'Teodoro Family', 3000, '0', '0', '0', NULL, NULL),
(19, 19, 'Eduardo Family', 3000, '0', '0', '0', NULL, NULL),
(20, 20, 'Rudyrico Family', 3000, '0', '0', '0', NULL, NULL),
(21, 21, 'Ramero Family', 3000, '0', '0', '0', NULL, NULL),
(22, 22, 'Nelson Family', 5000, '0', '0', '0', NULL, NULL),
(23, 23, 'Nicolas Family', 5000, '0', '0', '0', NULL, NULL),
(24, 24, 'Joe-Mark Family', 12000, '0', '0', '0', NULL, NULL),
(25, 25, 'Arnel Family', 4000, '0', '0', '0', NULL, NULL),
(26, 26, 'Cecilia Family', 5000, '0', '0', '0', NULL, NULL),
(27, 27, 'Cerelo Family', 4500, '0', '0', '0', NULL, NULL),
(28, 28, 'Flaviano Family', 25000, '0', '0', '0', NULL, NULL),
(29, 29, 'Bernie Family', 3000, '0', '0', '0', NULL, NULL),
(30, 30, 'Oliver Family', 7000, '0', '0', '0', NULL, NULL),
(31, 31, 'Meliton,Jr. Family', 4500, '0', '0', '0', NULL, NULL),
(32, 32, 'Rupert Johan Family', 20000, '0', '0', '0', NULL, NULL),
(33, 33, 'Sotico Family', 7500, '0', '0', '0', NULL, NULL),
(34, 34, 'Gerarda Family', 6000, '0', '0', '0', NULL, NULL),
(35, 35, 'Edsiel Family', 6000, '0', '0', '0', NULL, NULL),
(36, 36, 'Roberto Family', 1000, '0', '0', '0', NULL, NULL),
(37, 37, 'German Family', 3000, '0', '0', '0', NULL, NULL),
(38, 38, 'Adelita Family', 3000, '0', '0', '0', NULL, NULL),
(39, 39, 'Reymundo Family', 4000, '0', '0', '0', NULL, NULL),
(40, 40, 'Valentin Family', 3500, '0', '0', '0', NULL, NULL),
(41, 41, 'Melvin Family', 5000, '0', '0', '0', NULL, NULL),
(42, 42, 'Matilde Family', 20000, '0', '0', '0', NULL, NULL),
(43, 43, 'Abrendino Family', 12000, '0', '0', '0', NULL, NULL),
(44, 44, 'Reggie Family', 20000, '0', '0', '0', NULL, NULL),
(45, 45, 'Cerilo Family', 3000, '0', '0', '0', NULL, NULL),
(46, 46, 'Angelina Family', 5000, '0', '0', '0', NULL, NULL),
(47, 47, 'Christopher Family', 5000, '0', '0', '0', NULL, NULL),
(48, 48, 'Benjamin Family', 8000, '0', '0', '0', NULL, NULL),
(49, 49, 'Nick Family', 8000, '0', '0', '0', NULL, NULL),
(50, 50, 'Merlo Family', 1500, '0', '0', '0', NULL, NULL),
(51, 51, 'Christine Family', 500, '0', '0', '0', NULL, NULL),
(52, 52, 'Luzzy Family', 4000, '0', '0', '0', NULL, NULL),
(53, 53, 'Emmanuel Family', 8000, '0', '0', '0', NULL, NULL),
(54, 54, 'Fajusto Family', 7000, '0', '0', '0', NULL, NULL),
(55, 55, 'Danilo Family', 10000, '0', '0', '0', NULL, NULL),
(56, 56, 'Oliva Family', 3000, '0', '0', '0', NULL, NULL),
(57, 57, 'Danny Family', 18000, '0', '0', '0', NULL, NULL),
(58, 58, 'Robin Family', 3000, '0', '0', '0', NULL, NULL),
(59, 59, 'Dulce Family', 2500, '0', '0', '0', NULL, NULL),
(60, 60, 'David Jorte Family', 4000, '0', '0', '0', NULL, NULL),
(61, 61, 'Efren Family', 5000, '0', '0', '0', NULL, NULL),
(62, 62, 'Olimpo,Jr. Family', 4000, '0', '0', '0', NULL, NULL),
(63, 63, 'Jameson Family', 4000, '0', '0', '0', NULL, NULL),
(64, 64, 'Francisco Family', 4000, '0', '0', '0', NULL, NULL),
(65, 65, 'Domingo Family', 9000, '0', '0', '0', NULL, NULL),
(66, 66, 'Ramil Family', 3000, '0', '0', '0', NULL, NULL),
(67, 67, 'Perlito Family', 7000, '0', '0', '0', NULL, NULL),
(68, 68, 'Philip_Bryan Family', 2000, '0', '0', '0', NULL, NULL),
(69, 69, 'Arcadio Family', 4000, '0', '0', '0', NULL, NULL),
(70, 70, 'Melchor Family', 6000, '0', '0', '0', NULL, NULL),
(71, 71, 'Luisito Family', 5000, '0', '0', '0', NULL, NULL),
(72, 72, 'Julibert Family', 5000, '0', '0', '0', NULL, NULL),
(73, 73, 'Moises Family', 8000, '0', '0', '0', NULL, NULL),
(74, 74, 'Ronel Family', 10000, '0', '0', '0', NULL, NULL),
(75, 75, 'Dome Family', 3000, '0', '0', '0', NULL, NULL),
(76, 76, 'Arnolfo Family', 5000, '0', '0', '0', NULL, NULL),
(77, 77, 'Roel Family', 3000, '0', '0', '0', NULL, NULL),
(78, 78, 'Sanyboy Family', 2000, '0', '0', '0', NULL, NULL),
(79, 79, 'Jean Family', 2000, '0', '0', '0', NULL, NULL),
(80, 80, 'Andresito Family', 4000, '0', '0', '0', NULL, NULL),
(81, 81, 'Loverine Family', 1500, '0', '0', '0', NULL, NULL),
(82, 82, 'Nelson Family', 5000, '0', '0', '0', NULL, NULL),
(83, 83, 'Portonato Family', 3000, '0', '0', '0', NULL, NULL),
(84, 84, 'Julito Family', 9000, '0', '0', '0', NULL, NULL),
(85, 85, 'Rolando Family', 2000, '0', '0', '0', NULL, NULL),
(86, 86, 'Dionesio,Jr Family', 3000, '0', '0', '0', NULL, NULL),
(87, 87, 'Crecencio Family', 2000, '0', '0', '0', NULL, NULL),
(88, 88, 'Oliver Family', 5000, '0', '0', '0', NULL, NULL),
(89, 89, 'Joseph Family', 3000, '0', '0', '0', NULL, NULL),
(90, 90, 'Christhoper Family', 7000, '0', '0', '0', NULL, NULL),
(91, 91, 'Julie Family', 8000, '0', '0', '0', NULL, NULL),
(92, 92, 'Allan Family', 3000, '0', '0', '0', NULL, NULL),
(93, 93, 'Conching Family', 8000, '0', '0', '0', NULL, NULL),
(94, 94, 'Jemrelle Family', 8000, '0', '0', '0', NULL, NULL),
(95, 95, 'Danilo, sr Family', 3000, '0', '0', '0', NULL, NULL),
(96, 96, 'Fada Family', 30000, '0', '0', '0', NULL, NULL),
(97, 97, 'Danilo,jr Family', 3000, '0', '0', '0', NULL, NULL),
(98, 98, 'Wenceslao Family', 4000, '0', '0', '0', NULL, NULL),
(99, 99, 'Nelson Family', 3000, '0', '0', '0', NULL, NULL),
(100, 100, 'Richard Family', 3500, '0', '0', '0', NULL, NULL),
(101, 101, 'Francisco Family', 8000, '0', '0', '0', NULL, NULL),
(102, 102, 'Rodrigo Family', 4000, '0', '0', '0', NULL, NULL),
(103, 103, 'Nestor Family', 3000, '0', '0', '0', NULL, NULL),
(104, 104, 'Arnel Family', 4000, '0', '0', '0', NULL, NULL),
(105, 105, 'Edwin Family', 4000, '0', '0', '0', NULL, NULL),
(106, 106, 'Anthony Family', 3000, '0', '0', '0', NULL, NULL),
(107, 107, 'Domiemar Family', 3000, '0', '0', '0', NULL, NULL),
(108, 108, 'Victoria Family', 3000, '0', '0', '0', NULL, NULL),
(109, 109, 'Romeo Family', 5000, '0', '0', '0', NULL, NULL),
(110, 110, 'Robin Family', 6000, '0', '0', '0', NULL, NULL),
(111, 111, 'Danilo Family', 5000, '0', '0', '0', NULL, NULL),
(112, 112, 'Noel Family', 6000, '0', '0', '0', NULL, NULL),
(113, 113, 'Epe Family', 6000, '0', '0', '0', NULL, NULL),
(114, 114, 'Emilio Family', 4000, '0', '0', '0', NULL, NULL),
(115, 115, 'Gilacio Family', 3000, '0', '0', '0', NULL, NULL),
(116, 116, 'Arnell Family', 4000, '0', '0', '0', NULL, NULL),
(117, 117, 'Renato Family', 4000, '0', '0', '0', NULL, NULL),
(118, 118, 'Servillano Family', 3500, '0', '0', '0', NULL, NULL),
(119, 119, 'Angelito Family', 4000, '0', '0', '0', NULL, NULL),
(120, 120, 'Gabriel Family', 3000, '0', '0', '0', NULL, NULL),
(121, 121, 'Jesus Family', 5000, '0', '0', '0', NULL, NULL),
(122, 122, 'Danny Family', 3000, '0', '0', '0', NULL, NULL),
(123, 123, 'Rosalino Family', 4800, '0', '0', '0', NULL, NULL),
(124, 124, 'Danilo Family', 1500, '0', '0', '0', NULL, NULL),
(125, 125, 'Helbert Family', 8000, '0', '0', '0', NULL, NULL),
(126, 126, 'Michael Family', 3000, '0', '0', '0', NULL, NULL),
(127, 127, 'James Family', 4000, '0', '0', '0', NULL, NULL),
(128, 128, 'Gregoria Family', 4500, '0', '0', '0', NULL, NULL),
(129, 129, 'Danilo Family', 4500, '0', '0', '0', NULL, NULL),
(130, 130, 'Jessica Family', 18000, '0', '0', '0', NULL, NULL),
(131, 131, 'Dennis Family', 5000, '0', '0', '0', NULL, NULL),
(132, 132, 'Archery_2nd Family', 3000, '0', '0', '0', NULL, NULL),
(133, 133, 'Gavalier Family', 3000, '0', '0', '0', NULL, NULL),
(134, 134, 'Rochel Family', 1000, '0', '0', '0', NULL, NULL),
(135, 135, 'Galbieto Family', 4000, '0', '0', '0', NULL, NULL),
(136, 136, 'Rolly Family', 5000, '0', '0', '0', NULL, NULL),
(137, 137, 'Rennie Family', 4000, '0', '0', '0', NULL, NULL),
(138, 138, 'Jay Family', 5000, '0', '0', '0', NULL, NULL),
(139, 139, 'Alberto Family', 8000, '0', '0', '0', NULL, NULL),
(140, 140, 'Rosendo Family', 18000, '0', '0', '0', NULL, NULL),
(141, 141, 'Agapito Family', 6000, '0', '0', '0', NULL, NULL),
(142, 142, 'Ronald Family', 4000, '0', '0', '0', NULL, NULL),
(143, 143, 'Odezza Family', 8000, '0', '0', '0', NULL, NULL),
(144, 144, 'Pilipino Family', 5000, '0', '0', '0', NULL, NULL),
(145, 145, 'Danny Family', 3000, '0', '0', '0', NULL, NULL),
(146, 146, 'Jose Family', 10000, '0', '0', '0', NULL, NULL),
(147, 147, 'Celso Family', 5000, '0', '0', '0', NULL, NULL),
(148, 148, 'Golito Family', 5000, '0', '0', '0', NULL, NULL),
(149, 149, 'Robert Family', 30000, '0', '0', '0', NULL, NULL),
(150, 150, 'Wilfredo Family', 5000, '0', '0', '0', NULL, NULL),
(151, 151, 'Jose_Rufo Family', 4000, '0', '0', '0', NULL, NULL),
(152, 152, 'Jessie Family', 6000, '0', '0', '0', NULL, NULL),
(153, 153, 'Jaybert Family', 3500, '0', '0', '0', NULL, NULL),
(154, 154, 'Rasol Family', 10000, '0', '0', '0', NULL, NULL),
(155, 155, 'Alfredo Family', 6000, '0', '0', '0', NULL, NULL),
(156, 156, 'Leoracito Family', 5000, '0', '0', '0', NULL, NULL),
(157, 157, 'Debber Family', 5000, '0', '0', '0', NULL, NULL),
(158, 158, 'Pablo Family', 2000, '0', '0', '0', NULL, NULL),
(159, 159, 'Salvacio Family', 70000, '0', '0', '0', NULL, NULL),
(160, 160, 'Marlon Family', 2000, '0', '0', '0', NULL, NULL),
(161, 161, 'Romero Family', 5000, '0', '0', '0', NULL, NULL),
(162, 162, 'Lalyn Family', 8000, '0', '0', '0', NULL, NULL),
(163, 163, 'Gilberto Family', 1000, '0', '0', '0', NULL, NULL),
(164, 164, 'Eduardo Family', 3000, '0', '0', '0', NULL, NULL),
(165, 165, 'Bernardino Family', 4000, '0', '0', '0', NULL, NULL),
(166, 166, 'Christopher Family', 4000, '0', '0', '0', NULL, NULL),
(167, 167, 'Alberto Family', 8000, '0', '0', '0', NULL, NULL),
(168, 168, 'Edrick Family', 11000, '0', '0', '0', NULL, NULL),
(169, 169, 'Abraham Family', 12000, '0', '0', '0', NULL, NULL),
(170, 170, 'Teodora Family', 3000, '0', '0', '0', NULL, NULL),
(171, 171, 'Sherwin_Kim Family', 5000, '0', '0', '0', NULL, NULL),
(172, 172, 'Victor Family', 6000, '0', '0', '0', NULL, NULL),
(173, 173, 'Marianita Family', 5000, '0', '0', '0', NULL, NULL),
(174, 174, 'Erlinda Family', 4000, '0', '0', '0', NULL, NULL),
(175, 175, 'Ramon Family', 18000, '0', '0', '0', NULL, NULL),
(176, 176, 'Maine Family', 15000, '0', '0', '0', NULL, NULL),
(177, 177, 'Jun_Dexter Family', 10000, '0', '0', '0', NULL, NULL),
(178, 178, 'Kenneth Family', 12000, '0', '0', '0', NULL, NULL),
(179, 179, 'Violeta Family', 4000, '0', '0', '0', NULL, NULL),
(180, 180, 'Manuel Family', 3000, '0', '0', '0', NULL, NULL),
(181, 181, 'Antonia Family', 2500, '0', '0', '0', NULL, NULL),
(182, 182, 'Demetria Family', 2000, '0', '0', '0', NULL, NULL),
(183, 183, 'Victoriano Family', 2000, '0', '0', '0', NULL, NULL),
(184, 184, 'Charita Family', 6000, '0', '0', '0', NULL, NULL),
(185, 185, 'Lucia Family', 20000, '0', '0', '0', NULL, NULL),
(186, 186, 'George_Sr. Family', 10000, '0', '0', '0', NULL, NULL),
(187, 187, 'Amel Family', 4000, '0', '0', '0', NULL, NULL),
(188, 188, 'Ronie Family', 60000, '0', '0', '0', NULL, NULL),
(189, 189, 'Roberto Family', 3500, '0', '0', '0', NULL, NULL),
(190, 190, 'Ricardo Family', 6000, '0', '0', '0', NULL, NULL),
(191, 191, 'Anjo Family', 9000, '0', '0', '0', NULL, NULL),
(192, 192, 'Wilma Family', 2500, '0', '0', '0', NULL, NULL),
(193, 193, 'Merwin Family', 90000, '0', '0', '0', NULL, NULL),
(194, 194, 'Alfonso Family', 15000, '0', '0', '0', NULL, NULL),
(195, 195, 'Randolph Family', 10000, '0', '0', '0', NULL, NULL),
(196, 196, 'Rexan Family', 20000, '0', '0', '0', NULL, NULL),
(197, 197, 'Susana Family', 3000, '0', '0', '0', NULL, NULL),
(198, 198, 'Dennis Family', 21000, '0', '0', '0', NULL, NULL),
(199, 199, 'Jyme Family', 9000, '0', '0', '0', NULL, NULL),
(200, 200, 'Narciso Family', 2000, '0', '0', '0', NULL, NULL),
(201, 201, 'Agustin Family', 20000, '0', '0', '0', NULL, NULL),
(202, 202, 'Isagani_Jr. Family', 6000, '0', '0', '0', NULL, NULL),
(203, 203, 'Nilo_Jr. Family', 4000, '0', '0', '0', NULL, NULL),
(204, 204, 'Alex Family', 4000, '0', '0', '0', NULL, NULL),
(205, 205, 'Alberto Family', 3800, '0', '0', '0', NULL, NULL),
(206, 206, 'Danillo Family', 4000, '0', '0', '0', NULL, NULL),
(207, 207, 'Roque Family', 6000, '0', '0', '0', NULL, NULL),
(208, 208, 'Rogger Family', 3000, '0', '0', '0', NULL, NULL),
(209, 209, 'Ronilo Family', 6000, '0', '0', '0', NULL, NULL),
(210, 210, 'Wiljohn Family', 6000, '0', '0', '0', NULL, NULL),
(211, 211, 'Efharni_jr. Family', 4500, '0', '0', '0', NULL, NULL),
(212, 212, 'Roberto Family', 7000, '0', '0', '0', NULL, NULL),
(213, 213, 'Renato Family', 5000, '0', '0', '0', NULL, NULL),
(214, 214, 'Colito Family', 4000, '0', '0', '0', NULL, NULL),
(215, 215, 'Sucoro Family', 3000, '0', '0', '0', NULL, NULL),
(216, 216, 'Therisita Family', 10000, '0', '0', '0', NULL, NULL),
(217, 217, 'Lebrito Family', 10000, '0', '0', '0', NULL, NULL),
(218, 218, 'Remonito Family', 20000, '0', '0', '0', NULL, NULL),
(219, 219, 'Ignacio Family', 4000, '0', '0', '0', NULL, NULL),
(220, 220, 'Michael Family', 10000, '0', '0', '0', NULL, NULL),
(221, 221, 'Edwin_jr. Family', 4000, '0', '0', '0', NULL, NULL),
(222, 222, 'Rogelio_jr. Family', 4000, '0', '0', '0', NULL, NULL),
(223, 223, 'Oliver Family', 6000, '0', '0', '0', NULL, NULL),
(224, 224, 'Agripino Family', 6000, '0', '0', '0', NULL, NULL),
(225, 225, 'Bella Family', 3000, '0', '0', '0', NULL, NULL),
(226, 226, 'Juan Family', 5000, '0', '0', '0', NULL, NULL),
(227, 227, 'Ronillo Family', 30000, '0', '0', '0', NULL, NULL),
(228, 228, 'Bob Family', 6000, '0', '0', '0', NULL, NULL),
(229, 229, 'Susimo Family', 4000, '0', '0', '0', NULL, NULL),
(230, 230, 'Feliciano Family', 4000, '0', '0', '0', NULL, NULL),
(231, 231, 'Hermino Family', 4000, '0', '0', '0', NULL, NULL),
(232, 232, 'Rubin Family', 5000, '0', '0', '0', NULL, NULL),
(233, 233, 'Pinyo Family', 13000, '0', '0', '0', NULL, NULL),
(234, 234, 'Costiquia Family', 8000, '0', '0', '0', NULL, NULL),
(235, 235, 'Priff Family', 30000, '0', '0', '0', NULL, NULL),
(236, 236, 'Primo Family', 8000, '0', '0', '0', NULL, NULL),
(237, 237, 'Rehina Family', 3000, '0', '0', '0', NULL, NULL),
(238, 238, 'Bonita Family', 12000, '0', '0', '0', NULL, NULL),
(239, 239, 'Juditha Family', 2000, '0', '0', '0', NULL, NULL),
(240, 240, 'Arbin Family', 4000, '0', '0', '0', NULL, NULL),
(241, 241, 'Waaya Family', 4000, '0', '0', '0', NULL, NULL),
(242, 242, 'Miguel Family', 18000, '0', '0', '0', NULL, NULL),
(243, 243, 'Ronnie Family', 4000, '0', '0', '0', NULL, NULL),
(244, 244, 'Jose Manuel Family', 30000, '0', '0', '0', NULL, NULL),
(245, 245, 'Edwin Family', 8000, '0', '0', '0', NULL, NULL),
(246, 246, 'Manuel Family', 6000, '0', '0', '0', NULL, NULL),
(247, 247, 'Jassie Family', 4000, '0', '0', '0', NULL, NULL),
(248, 248, 'AlienniÃ±o Family', 2000, '0', '0', '0', NULL, NULL),
(249, 249, 'Recardo_Jr Family', 3000, '0', '0', '0', NULL, NULL),
(250, 250, 'Abdon Family', 30000, '0', '0', '0', NULL, NULL),
(251, 251, 'Mario Family', 20000, '0', '0', '0', NULL, NULL),
(252, 252, 'Renato Family', 20000, '0', '0', '0', NULL, NULL),
(253, 253, 'Loe Family', 60000, '0', '0', '0', NULL, NULL),
(254, 254, 'Edita Family', 6000, '0', '0', '0', NULL, NULL),
(255, 255, 'Arneil Family', 20000, '0', '0', '0', NULL, NULL),
(256, 256, 'Gane Family', 8000, '0', '0', '0', NULL, NULL),
(257, 257, 'Jhonmar Family', 8000, '0', '0', '0', NULL, NULL),
(258, 258, 'Aloner Family', 4000, '0', '0', '0', NULL, NULL),
(259, 259, 'Samuel Family', 4000, '0', '0', '0', NULL, NULL),
(260, 260, 'NiÃ±o Family', 5000, '0', '0', '0', NULL, NULL),
(261, 261, 'Jay Family', 3000, '0', '0', '0', NULL, NULL),
(262, 262, 'Juan Family', 30000, '0', '0', '0', NULL, NULL),
(263, 263, 'Raul Family', 30000, '0', '0', '0', NULL, NULL),
(264, 264, 'Ronie Family', 12000, '0', '0', '0', NULL, NULL),
(265, 265, 'Jestony Family', 3000, '0', '0', '0', NULL, NULL),
(266, 266, 'Fediric Family', 10000, '0', '0', '0', NULL, NULL),
(267, 267, 'Ruel Family', 35000, '0', '0', '0', NULL, NULL),
(268, 268, 'Welfredo Family', 9000, '0', '0', '0', NULL, NULL),
(269, 269, 'Lloyd Family', 8000, '0', '0', '0', NULL, NULL),
(270, 270, 'Waide Family', 7000, '0', '0', '0', NULL, NULL),
(271, 271, 'Sunday Family', 10000, '0', '0', '0', NULL, NULL),
(272, 272, 'Arsinion Family', 12000, '0', '0', '0', NULL, NULL),
(273, 273, 'Rodrigo Family', 3000, '0', '0', '0', NULL, NULL),
(274, 274, 'Romolo Family', 2500, '0', '0', '0', NULL, NULL),
(275, 275, 'Rolando Family', 8000, '0', '0', '0', NULL, NULL),
(276, 276, 'Jaynard Family', 3500, '0', '0', '0', NULL, NULL),
(277, 277, 'Edgar_Sr. Family', 10000, '0', '0', '0', NULL, NULL),
(278, 278, 'Francisco Family', 5000, '0', '0', '0', NULL, NULL),
(279, 279, 'Eusticio Family', 3500, '0', '0', '0', NULL, NULL),
(280, 280, 'Emelita Family', 5000, '0', '0', '0', NULL, NULL),
(281, 281, 'Rexie Family', 3000, '0', '0', '0', NULL, NULL),
(282, 282, 'Jerwin Family', 5000, '0', '0', '0', NULL, NULL),
(283, 283, 'Rodel Family', 4500, '0', '0', '0', NULL, NULL),
(284, 284, 'Luis Family', 8000, '0', '0', '0', NULL, NULL),
(285, 285, 'Purperio Family', 3000, '0', '0', '0', NULL, NULL),
(286, 286, 'Marino Family', 4000, '0', '0', '0', NULL, NULL),
(287, 287, 'Efren Family', 5000, '0', '0', '0', NULL, NULL),
(288, 288, 'Glen Family', 3500, '0', '0', '0', NULL, NULL),
(289, 289, 'Vinanlia Family', 10000, '0', '0', '0', NULL, NULL),
(290, 290, 'Arnold Family', 12000, '0', '0', '0', NULL, NULL),
(291, 291, 'Celso Family', 20000, '0', '0', '0', NULL, NULL),
(292, 292, 'Herey Family', 7000, '0', '0', '0', NULL, NULL),
(293, 293, 'Jocelyn Family', 10000, '0', '0', '0', NULL, NULL),
(294, 294, 'Michael Family', 5000, '0', '0', '0', NULL, NULL),
(295, 295, 'Bedandino Family', 2500, '0', '0', '0', NULL, NULL),
(296, 296, 'Julita Family', 4500, '0', '0', '0', NULL, NULL),
(297, 297, 'Alexander Family', 5000, '0', '0', '0', NULL, NULL),
(298, 298, 'Junrell Family', 3500, '0', '0', '0', NULL, NULL),
(299, 299, 'Dionicio Family', 4000, '0', '0', '0', NULL, NULL),
(300, 300, 'Elezardo Family', 3000, '0', '0', '0', NULL, NULL),
(301, 301, 'Jerry Family', 10000, '0', '0', '0', NULL, NULL),
(302, 302, 'Rene Family', 9000, '0', '0', '0', NULL, NULL),
(303, 303, 'Reynaldo Family', 10000, '0', '0', '0', NULL, NULL),
(304, 304, 'Roberto Family', 15000, '0', '0', '0', NULL, NULL),
(305, 305, 'Ernesto Family', 4000, '0', '0', '0', NULL, NULL),
(306, 306, 'Ciris Family', 6000, '0', '0', '0', NULL, NULL),
(307, 307, 'Edward_Jr. Family', 3000, '0', '0', '0', NULL, NULL),
(308, 308, 'Edwardo Family', 3000, '0', '0', '0', NULL, NULL),
(309, 309, 'Eric Family', 8000, '0', '0', '0', NULL, NULL),
(310, 310, 'Erwin Family', 5000, '0', '0', '0', NULL, NULL),
(311, 311, 'Salvador Family', 5000, '0', '0', '0', NULL, NULL),
(312, 312, 'Adoracion Family', 2000, '0', '0', '0', NULL, NULL),
(313, 313, 'Allen Family', 5000, '0', '0', '0', NULL, NULL),
(314, 314, 'Almer Family', 5000, '0', '0', '0', NULL, NULL),
(315, 315, 'Geofry Family', 40000, '0', '0', '0', NULL, NULL),
(316, 316, 'Dennis Family', 9000, '0', '0', '0', NULL, NULL),
(317, 317, 'Sunny Family', 40000, '0', '0', '0', NULL, NULL),
(318, 318, 'Teddy Family', 4000, '0', '0', '0', NULL, NULL),
(319, 319, 'Marcian Family', 3000, '0', '0', '0', NULL, NULL),
(320, 320, 'Elsa Family', 1300, '0', '0', '0', NULL, NULL),
(321, 321, 'Michael Family', 50000, '0', '0', '0', NULL, NULL),
(322, 322, 'Dennis Family', 18000, '0', '0', '0', NULL, NULL),
(323, 323, 'Hygenus Family', 20000, '0', '0', '0', NULL, NULL),
(324, 324, 'Asther Family', 9000, '0', '0', '0', NULL, NULL),
(325, 325, 'Feresita Family', 8000, '0', '0', '0', NULL, NULL),
(326, 326, 'Vicente Family', 10000, '0', '0', '0', NULL, NULL),
(327, 327, 'Herardo Family', 20000, '0', '0', '0', NULL, NULL),
(328, 328, 'Josifina Family', 18000, '0', '0', '0', NULL, NULL),
(329, 329, 'Nestor Family', 60000, '0', '0', '0', NULL, NULL),
(330, 330, 'Alay Family', 5000, '0', '0', '0', NULL, NULL),
(331, 331, 'Nilva Family', 60000, '0', '0', '0', NULL, NULL),
(332, 332, 'Winefredo Family', 8000, '0', '0', '0', NULL, NULL),
(333, 333, 'Eljun Family', 20000, '0', '0', '0', NULL, NULL),
(334, 334, 'Noel Family', 18000, '0', '0', '0', NULL, NULL),
(335, 335, 'Alice Family', 4000, '0', '0', '0', NULL, NULL),
(336, 336, 'Wilfred Family', 7000, '0', '0', '0', NULL, NULL),
(337, 337, 'Ronaldo Family', 10000, '0', '0', '0', NULL, NULL),
(338, 338, 'Elvira Family', 10000, '0', '0', '0', NULL, NULL),
(339, 339, 'Alfredo Family', 6000, '0', '0', '0', NULL, NULL),
(340, 340, 'Christopher Family', 12000, '0', '0', '0', NULL, NULL),
(341, 341, 'Juan Family', 10000, '0', '0', '0', NULL, NULL),
(342, 342, 'Maria Family', 8000, '0', '0', '0', NULL, NULL),
(343, 343, 'Raynel Family', 8000, '0', '0', '0', NULL, NULL),
(344, 344, 'DelapiÃ±a Family', 7000, '0', '0', '0', NULL, NULL),
(345, 345, 'Vince Family', 6000, '0', '0', '0', NULL, NULL),
(346, 346, 'Jenilyn Family', 7000, '0', '0', '0', NULL, NULL),
(347, 347, 'Glenda Family', 10000, '0', '0', '0', NULL, NULL),
(348, 348, 'Jipe Family', 4000, '0', '0', '0', NULL, NULL),
(349, 349, 'Marsita Family', 4500, '0', '0', '0', NULL, NULL),
(350, 350, 'Elmir Family', 7000, '0', '0', '0', NULL, NULL),
(351, 351, 'Emily Family', 6000, '0', '0', '0', NULL, NULL),
(352, 352, 'Erlinda Family', 2000, '0', '0', '0', NULL, NULL),
(353, 353, 'Guelberto_Jr. Family', 8000, '0', '0', '0', NULL, NULL),
(354, 354, 'Ribecca Family', 2500, '0', '0', '0', NULL, NULL),
(355, 355, 'Ray Family', 4000, '0', '0', '0', NULL, NULL),
(356, 356, 'Luciano Family', 1500, '0', '0', '0', NULL, NULL),
(357, 357, 'Richard Family', 2000, '0', '0', '0', NULL, NULL),
(358, 358, 'Plopanic Family', 6000, '0', '0', '0', NULL, NULL),
(359, 359, 'Dan_Vanteri Family', 4500, '0', '0', '0', NULL, NULL),
(360, 360, 'Leonardo Family', 3500, '0', '0', '0', NULL, NULL),
(361, 361, 'Pablo Family', 18000, '0', '0', '0', NULL, NULL),
(362, 362, 'Paul Rey Family', 9000, '0', '0', '0', NULL, NULL),
(363, 363, 'Herry Family', 8000, '0', '0', '0', NULL, NULL),
(364, 364, 'Herito Family', 6000, '0', '0', '0', NULL, NULL),
(365, 365, 'Carlo Family', 4000, '0', '0', '0', NULL, NULL),
(366, 366, 'Verhil Family', 5000, '0', '0', '0', NULL, NULL),
(367, 367, 'Decideryo Family', 4000, '0', '0', '0', NULL, NULL),
(368, 368, 'Marvin Family', 8000, '0', '0', '0', NULL, NULL),
(369, 369, 'Carlos Family', 2000, '0', '0', '0', NULL, NULL),
(370, 370, 'Ruel Family', 4000, '0', '0', '0', NULL, NULL),
(371, 371, 'Michael Family', 8000, '0', '0', '0', NULL, NULL),
(372, 372, 'Ariel Family', 5000, '0', '0', '0', NULL, NULL),
(373, 373, 'Glenn Family', 9000, '0', '0', '0', NULL, NULL),
(374, 374, 'Miguelito Family', 8000, '0', '0', '0', NULL, NULL),
(375, 375, 'Richard Family', 8000, '0', '0', '0', NULL, NULL),
(376, 376, 'Dionesio Family', 10000, '0', '0', '0', NULL, NULL),
(377, 377, 'Romel Family', 5000, '0', '0', '0', NULL, NULL),
(378, 378, 'Bartolome Family', 2500, '0', '0', '0', NULL, NULL),
(379, 379, 'Arnold Family', 2000, '0', '0', '0', NULL, NULL),
(380, 380, 'Alfredo Family', 8000, '0', '0', '0', NULL, NULL),
(381, 381, 'Roland Family', 4000, '0', '0', '0', NULL, NULL),
(382, 382, 'Gudofredo Family', 5000, '0', '0', '0', NULL, NULL),
(383, 383, 'Duglas Family', 10000, '0', '0', '0', NULL, NULL),
(384, 384, 'Leonardo Family', 6000, '0', '0', '0', NULL, NULL),
(385, 385, 'Gersiel Family', 8000, '0', '0', '0', NULL, NULL),
(386, 386, 'Zeo Family', 6000, '0', '0', '0', NULL, NULL),
(387, 387, 'Rashel Family', 4000, '0', '0', '0', NULL, NULL),
(388, 388, 'Carmilita Family', 6000, '0', '0', '0', NULL, NULL),
(389, 389, 'Ricky Family', 4000, '0', '0', '0', NULL, NULL),
(390, 390, 'Ernie Family', 6000, '0', '0', '0', NULL, NULL),
(391, 391, 'Jessie Family', 10000, '0', '0', '0', NULL, NULL),
(392, 392, 'Ricky Family', 80000, '0', '0', '0', NULL, NULL),
(393, 393, 'Renny_Boy Family', 4500, '0', '0', '0', NULL, NULL),
(394, 394, 'Rolando Family', 6000, '0', '0', '0', NULL, NULL),
(395, 395, 'Robin Family', 8000, '0', '0', '0', NULL, NULL),
(396, 396, 'Erlito Family', 5000, '0', '0', '0', NULL, NULL),
(397, 397, 'Jayson Family', 6000, '0', '0', '0', NULL, NULL),
(398, 398, 'Runato Family', 5000, '0', '0', '0', NULL, NULL),
(399, 399, 'Edwin Family', 10000, '0', '0', '0', NULL, NULL),
(400, 400, 'Armand Family', 6000, '0', '0', '0', NULL, NULL),
(401, 401, 'Danilo Family', 5000, '0', '0', '0', NULL, NULL),
(402, 402, 'Joel Family', 6000, '0', '0', '0', NULL, NULL),
(403, 403, 'Wilfredo Family', 5000, '0', '0', '0', NULL, NULL),
(404, 404, 'Raymond Family', 6000, '0', '0', '0', NULL, NULL),
(405, 405, 'Filipe Family', 4000, '0', '0', '0', NULL, NULL),
(406, 406, 'Real Family', 10000, '0', '0', '0', NULL, NULL),
(407, 407, 'Jhon_Carlo Family', 4000, '0', '0', '0', NULL, NULL),
(408, 408, 'Dominador Family', 10000, '0', '0', '0', NULL, NULL),
(409, 409, 'Danilo Family', 10000, '0', '0', '0', NULL, NULL),
(410, 410, 'Roberto Family', 4000, '0', '0', '0', NULL, NULL),
(411, 411, 'Danti Family', 5000, '0', '0', '0', NULL, NULL),
(412, 412, 'Haime Family', 5000, '0', '0', '0', NULL, NULL),
(413, 413, 'Alojandro Family', 2000, '0', '0', '0', NULL, NULL),
(414, 414, 'leonides Family', 6000, '0', '0', '0', NULL, NULL),
(415, 415, 'Marlui Family', 4000, '0', '0', '0', NULL, NULL),
(416, 416, 'Rumolo Family', 4000, '0', '0', '0', NULL, NULL),
(417, 417, 'Orvelie Family', 6000, '0', '0', '0', NULL, NULL),
(418, 418, 'Dionicio Family', 6000, '0', '0', '0', NULL, NULL),
(419, 419, 'Felix Family', 6000, '0', '0', '0', NULL, NULL),
(420, 420, 'Raul Family', 20000, '0', '0', '0', NULL, NULL),
(421, 421, 'Ruel Family', 3500, '0', '0', '0', NULL, NULL),
(422, 422, 'Edwardo Family', 4200, '0', '0', '0', NULL, NULL),
(423, 423, 'Hobeto Family', 15000, '0', '0', '0', NULL, NULL),
(424, 424, 'Herina Family', 20000, '0', '0', '0', NULL, NULL),
(425, 425, 'Analyn Family', 7000, '0', '0', '0', NULL, NULL),
(426, 426, 'Rey Family', 4000, '0', '0', '0', NULL, NULL),
(427, 427, 'Pedro_Sr. Family', 3000, '0', '0', '0', NULL, NULL),
(428, 428, 'Vicente Family', 6000, '0', '0', '0', NULL, NULL),
(429, 429, 'Simeon Family', 4000, '0', '0', '0', NULL, NULL),
(430, 430, 'Fredo Family', 10000, '0', '0', '0', NULL, NULL),
(431, 431, 'Christian Family', 25000, '0', '0', '0', NULL, NULL),
(432, 432, 'Elmer Family', 8000, '0', '0', '0', NULL, NULL),
(433, 433, 'Leo Family', 10000, '0', '0', '0', NULL, NULL),
(434, 434, 'Teotimo Family', 300000, '0', '0', '0', NULL, NULL),
(435, 435, 'Rey Family', 4000, '0', '0', '0', NULL, NULL),
(436, 436, 'Eigene Family', 4000, '0', '0', '0', NULL, NULL),
(437, 437, 'Alan Family', 23000, '0', '0', '0', NULL, NULL),
(438, 438, 'Romeo Family', 9000, '0', '0', '0', NULL, NULL),
(439, 439, 'John_Michael Family', 6000, '0', '0', '0', NULL, NULL),
(440, 440, 'Danny Family', 5000, '0', '0', '0', NULL, NULL),
(441, 441, 'James_Nicky Family', 4000, '0', '0', '0', NULL, NULL),
(442, 442, 'Floreine Family', 3000, '0', '0', '0', NULL, NULL),
(443, 443, 'Joel Family', 4000, '0', '0', '0', NULL, NULL),
(444, 444, 'Eric Family', 3000, '0', '0', '0', NULL, NULL),
(445, 445, 'Diosdado Family', 3000, '0', '0', '0', NULL, NULL),
(446, 446, 'Julyo Family', 3000, '0', '0', '0', NULL, NULL),
(447, 447, 'Nelson Family', 3000, '0', '0', '0', NULL, NULL),
(448, 448, 'Pebreto Family', 3000, '0', '0', '0', NULL, NULL),
(449, 449, 'Ermenia Family', 3000, '0', '0', '0', NULL, NULL),
(450, 450, 'Julieta Family', 4000, '0', '0', '0', NULL, NULL),
(451, 451, 'Mark Family', 6000, '0', '0', '0', NULL, NULL),
(452, 452, 'Nio Family', 5000, '0', '0', '0', NULL, NULL),
(453, 453, 'Henry Family', 4000, '0', '0', '0', NULL, NULL),
(454, 454, 'Arnold Family', 4000, '0', '0', '0', NULL, NULL),
(455, 455, 'Acioncion Family', 5000, '0', '0', '0', NULL, NULL),
(456, 456, 'Estella Family', 4000, '0', '0', '0', NULL, NULL),
(457, 457, 'Pepito Family', 6000, '0', '0', '0', NULL, NULL),
(458, 458, 'Serhiyo Family', 2000, '0', '0', '0', NULL, NULL),
(459, 459, 'Judy_Ann Family', 10000, '0', '0', '0', NULL, NULL),
(460, 460, 'Andre_Serald Family', 30000, '0', '0', '0', NULL, NULL),
(461, 461, 'Allan Family', 5000, '0', '0', '0', NULL, NULL),
(462, 462, 'Ernisto Family', 6000, '0', '0', '0', NULL, NULL),
(463, 463, 'Arielo Family', 6000, '0', '0', '0', NULL, NULL),
(464, 464, 'Juhinia Family', 3000, '0', '0', '0', NULL, NULL),
(465, 465, 'Disiderio Family', 6000, '0', '0', '0', NULL, NULL),
(466, 466, 'Jeraldin Family', 7000, '0', '0', '0', NULL, NULL),
(467, 467, 'Lany_Roy Family', 6000, '0', '0', '0', NULL, NULL),
(468, 468, 'Disiderio Family', 5000, '0', '0', '0', NULL, NULL),
(469, 469, 'Dennis Family', 6000, '0', '0', '0', NULL, NULL),
(470, 470, 'Edwin Family', 7000, '0', '0', '0', NULL, NULL),
(471, 471, 'Lingcob Family', 4000, '0', '0', '0', NULL, NULL),
(472, 472, 'Antonio Family', 5000, '0', '0', '0', NULL, NULL),
(473, 473, 'Jose Family', 6000, '0', '0', '0', NULL, NULL),
(474, 474, 'Gabino Family', 4000, '0', '0', '0', NULL, NULL),
(475, 475, 'Regina Family', 1500, '0', '0', '0', NULL, NULL),
(476, 476, 'Cornillo Family', 4000, '0', '0', '0', NULL, NULL),
(477, 477, 'Edwin Family', 6000, '0', '0', '0', NULL, NULL),
(478, 478, 'Joel Family', 8000, '0', '0', '0', NULL, NULL),
(479, 479, 'Lito_Sr. Family', 5000, '0', '0', '0', NULL, NULL),
(480, 480, 'Jaypel Family', 30000, '0', '0', '0', NULL, NULL),
(481, 481, 'Pablito_Jr. Family', 30000, '0', '0', '0', NULL, NULL),
(482, 482, 'Jeboy Family', 5000, '0', '0', '0', NULL, NULL),
(483, 483, 'Gardo Family', 20000, '0', '0', '0', NULL, NULL),
(484, 484, 'Andrea Family', 3000, '0', '0', '0', NULL, NULL),
(485, 485, 'Husita Family', 5000, '0', '0', '0', NULL, NULL),
(486, 486, 'Provir Family', 13000, '0', '0', '0', NULL, NULL),
(487, 487, 'Jhoqret Family', 3000, '0', '0', '0', NULL, NULL),
(488, 488, 'Rolando Family', 15000, '0', '0', '0', NULL, NULL),
(489, 489, 'Albert Family', 8000, '0', '0', '0', NULL, NULL),
(490, 490, 'Jenna Family', 3000, '0', '0', '0', NULL, NULL),
(491, 491, 'Danny Family', 10000, '0', '0', '0', NULL, NULL),
(492, 492, 'Nicanor Family', 5000, '0', '0', '0', NULL, NULL),
(493, 493, 'Teodoro Family', 8000, '0', '0', '0', NULL, NULL),
(494, 494, 'Juan Family', 6000, '0', '0', '0', NULL, NULL),
(495, 495, 'Nestor Family', 4000, '0', '0', '0', NULL, NULL),
(496, 496, 'Ernesto Family', 6000, '0', '0', '0', NULL, NULL),
(497, 497, 'Elbisito Family', 6000, '0', '0', '0', NULL, NULL),
(498, 498, 'Reynaldo Family', 8000, '0', '0', '0', NULL, NULL),
(499, 499, 'Mario Family', 5000, '0', '0', '0', NULL, NULL),
(500, 500, 'Romel Family', 5000, '0', '0', '0', NULL, NULL),
(501, 501, 'Alan Family', 4000, '0', '0', '0', NULL, NULL),
(502, 502, 'Clarito Family', 5000, '0', '0', '0', NULL, NULL),
(503, 503, 'Arnel Family', 4000, '0', '0', '0', NULL, NULL),
(504, 504, 'Vector Family', 7000, '0', '0', '0', NULL, NULL),
(505, 505, 'Raymundo Family', 5000, '0', '0', '0', NULL, NULL),
(506, 506, 'Lhove_Bryan Family', 9000, '0', '0', '0', NULL, NULL),
(507, 507, 'Kiddy Family', 8000, '0', '0', '0', NULL, NULL),
(508, 508, 'Erwin Family', 4000, '0', '0', '0', NULL, NULL),
(509, 509, 'Danilo Family', 5000, '0', '0', '0', NULL, NULL),
(510, 510, 'Jessie Family', 4000, '0', '0', '0', NULL, NULL),
(511, 511, 'Gerami Family', 8000, '0', '0', '0', NULL, NULL),
(512, 512, 'Arturo Family', 15000, '0', '0', '0', NULL, NULL),
(513, 513, 'Allan Family', 5000, '0', '0', '0', NULL, NULL),
(514, 514, 'Rannylo Family', 5000, '0', '0', '0', NULL, NULL),
(515, 515, 'Antonio Family', 2000, '0', '0', '0', NULL, NULL),
(516, 516, 'Vivian Family', 6000, '0', '0', '0', NULL, NULL),
(517, 517, 'Portasyon Family', 12000, '0', '0', '0', NULL, NULL),
(518, 518, 'Julieta Family', 5000, '0', '0', '0', NULL, NULL),
(519, 519, 'Dinah Family', 5000, '0', '0', '0', NULL, NULL),
(520, 520, 'Jess_Roel Family', 6000, '0', '0', '0', NULL, NULL),
(521, 521, 'Steban Family', 3500, '0', '0', '0', NULL, NULL),
(522, 522, 'Gulito Family', 6000, '0', '0', '0', NULL, NULL),
(523, 523, 'Milsan Family', 4000, '0', '0', '0', NULL, NULL),
(524, 524, 'Fernando Family', 10000, '0', '0', '0', NULL, NULL),
(525, 525, 'Marina Family', 4000, '0', '0', '0', NULL, NULL),
(526, 526, 'Rolli Family', 4000, '0', '0', '0', NULL, NULL),
(527, 527, 'Alfredo Family', 4000, '0', '0', '0', NULL, NULL),
(528, 528, 'Nersiso Family', 4000, '0', '0', '0', NULL, NULL),
(529, 529, 'Editha Family', 5000, '0', '0', '0', NULL, NULL),
(530, 530, 'Meluin Family', 4000, '0', '0', '0', NULL, NULL),
(531, 531, 'Rodrego Family', 3000, '0', '0', '0', NULL, NULL),
(532, 532, 'Laberto_Jr. Family', 10000, '0', '0', '0', NULL, NULL),
(533, 533, 'Renisito Family', 5000, '0', '0', '0', NULL, NULL),
(534, 534, 'Arman Family', 4000, '0', '0', '0', NULL, NULL),
(535, 535, 'Roel Family', 6000, '0', '0', '0', NULL, NULL),
(536, 536, 'Jerry Family', 6000, '0', '0', '0', NULL, NULL),
(537, 537, 'Christina Family', 3000, '0', '0', '0', NULL, NULL),
(538, 538, 'Omay Family', 20000, '0', '0', '0', NULL, NULL),
(539, 539, 'Ferlan Family', 4000, '0', '0', '0', NULL, NULL),
(540, 540, 'Prelancio Family', 10000, '0', '0', '0', NULL, NULL),
(541, 541, 'Ebahem Family', 4000, '0', '0', '0', NULL, NULL),
(542, 542, 'Victor Family', 4500, '0', '0', '0', NULL, NULL),
(543, 543, 'Cucricio Family', 4000, '0', '0', '0', NULL, NULL),
(544, 544, 'Wilfredo Family', 5000, '0', '0', '0', NULL, NULL),
(545, 545, 'Angelica Family', 4000, '0', '0', '0', NULL, NULL),
(546, 546, 'Freedy Family', 6000, '0', '0', '0', NULL, NULL),
(547, 547, 'Juscuro Family', 4000, '0', '0', '0', NULL, NULL),
(548, 548, 'Isko Family', 5000, '0', '0', '0', NULL, NULL),
(549, 549, 'Allan Family', 5000, '0', '0', '0', NULL, NULL),
(550, 550, 'Rosalino Family', 6000, '0', '0', '0', NULL, NULL),
(551, 551, 'Rogel Family', 6000, '0', '0', '0', NULL, NULL),
(552, 552, 'Efren Family', 5000, '0', '0', '0', NULL, NULL),
(553, 553, 'Pryor Family', 20000, '0', '0', '0', NULL, NULL),
(554, 554, 'Warren Family', 8000, '0', '0', '0', NULL, NULL),
(555, 555, 'Sanny Family', 4000, '0', '0', '0', NULL, NULL),
(556, 556, 'Ricardo Family', 8000, '0', '0', '0', NULL, NULL),
(557, 557, 'Felipe Family', 20000, '0', '0', '0', NULL, NULL),
(558, 558, 'Evelyn Family', 2000, '0', '0', '0', NULL, NULL),
(559, 559, 'Love_Carmel Family', 5000, '0', '0', '0', NULL, NULL),
(560, 560, 'Vilma Family', 10000, '0', '0', '0', NULL, NULL),
(561, 561, 'Elizabeth Family', 1300, '0', '0', '0', NULL, NULL),
(562, 562, 'Nicko Family', 6000, '0', '0', '0', NULL, NULL),
(563, 563, 'Danny Family', 6000, '0', '0', '0', NULL, NULL),
(564, 564, 'Expedito Family', 5000, '0', '0', '0', NULL, NULL),
(565, 565, 'Elena Family', 3000, '0', '0', '0', NULL, NULL),
(566, 566, 'Eduardo Family', 6000, '0', '0', '0', NULL, NULL),
(567, 567, 'Sunny Family', 8000, '0', '0', '0', NULL, NULL),
(568, 568, 'Elicio Family', 9000, '0', '0', '0', NULL, NULL),
(569, 569, 'Edgardo Family', 4000, '0', '0', '0', NULL, NULL),
(570, 570, 'Eligario Family', 8000, '0', '0', '0', NULL, NULL),
(571, 571, 'Roberto Family', 2000, '0', '0', '0', NULL, NULL),
(572, 572, 'Losbitrose Family', 5000, '0', '0', '0', NULL, NULL),
(573, 573, 'Eugene Family', 6000, '0', '0', '0', NULL, NULL),
(574, 574, 'Allan Family', 6000, '0', '0', '0', NULL, NULL),
(575, 575, 'Teodoro Family', 10000, '0', '0', '0', NULL, NULL),
(576, 576, 'Armando Family', 3000, '0', '0', '0', NULL, NULL),
(577, 577, 'Edison Family', 2000, '0', '0', '0', NULL, NULL),
(578, 578, 'Jeffrey Family', 4000, '0', '0', '0', NULL, NULL),
(579, 579, 'Voltair Family', 3000, '0', '0', '0', NULL, NULL),
(580, 580, 'Nite Family', 8000, '0', '0', '0', NULL, NULL),
(581, 581, 'Joel Family', 2500, '0', '0', '0', NULL, NULL),
(582, 582, 'Arlito Family', 4500, '0', '0', '0', NULL, NULL),
(583, 583, 'Danilo Family', 3000, '0', '0', '0', NULL, NULL),
(584, 584, 'Edwin Family', 8000, '0', '0', '0', NULL, NULL),
(585, 585, 'Gilmor Family', 6000, '0', '0', '0', NULL, NULL),
(586, 586, 'Julie Family', 18000, '0', '0', '0', NULL, NULL),
(587, 587, 'Troy Family', 8000, '0', '0', '0', NULL, NULL),
(588, 588, 'Emma Family', 3000, '0', '0', '0', NULL, NULL),
(589, 589, 'Herda Family', 4000, '0', '0', '0', NULL, NULL),
(590, 590, 'Estelita Family', 3000, '0', '0', '0', NULL, NULL),
(591, 591, 'Delfin Family', 4000, '0', '0', '0', NULL, NULL),
(592, 592, 'Regalado Family', 3500, '0', '0', '0', NULL, NULL),
(593, 593, 'Michael Family', 3000, '0', '0', '0', NULL, NULL),
(594, 594, 'Duezora Family', 5000, '0', '0', '0', NULL, NULL),
(595, 595, 'Edelberto Family', 5000, '0', '0', '0', NULL, NULL),
(596, 596, 'Pabran Family', 10000, '0', '0', '0', NULL, NULL),
(597, 597, 'Vergillio Family', 4000, '0', '0', '0', NULL, NULL),
(598, 598, 'Rudolfo Family', 4000, '0', '0', '0', NULL, NULL),
(599, 599, 'Romulo Family', 4000, '0', '0', '0', NULL, NULL),
(600, 600, 'Alex Family', 2500, '0', '0', '0', NULL, NULL),
(601, 601, 'Anatalia Family', 6000, '0', '0', '0', NULL, NULL),
(602, 602, 'Christina Family', 4000, '0', '0', '0', NULL, NULL),
(603, 603, 'Rodelo Family', 3400, '0', '0', '0', NULL, NULL),
(604, 604, 'Ronald Family', 3000, '0', '0', '0', NULL, NULL),
(605, 605, 'Roberto Family', 3000, '0', '0', '0', NULL, NULL),
(606, 606, 'Lorenzo_Jr. Family', 10000, '0', '0', '0', NULL, NULL),
(607, 607, 'Lester Family', 9000, '0', '0', '0', NULL, NULL),
(608, 608, 'Marites Family', 12000, '0', '0', '0', NULL, NULL),
(609, 609, 'Ricmar_Joseph Family', 4000, '0', '0', '0', NULL, NULL),
(610, 610, 'Joel Family', 4000, '0', '0', '0', NULL, NULL),
(611, 611, 'Florenson Family', 5000, '0', '0', '0', NULL, NULL),
(612, 612, 'Elmo Family', 4000, '0', '0', '0', NULL, NULL),
(613, 613, 'Bonifacio Family', 3000, '0', '0', '0', NULL, NULL),
(614, 614, 'Danny Family', 5000, '0', '0', '0', NULL, NULL),
(615, 615, 'Arnold Family', 4000, '0', '0', '0', NULL, NULL),
(616, 616, 'Junjun Family', 8000, '0', '0', '0', NULL, NULL),
(617, 617, 'Lemuel Family', 4000, '0', '0', '0', NULL, NULL),
(618, 618, 'Joey Family', 4500, '0', '0', '0', NULL, NULL),
(619, 619, 'Matilde Family', 6000, '0', '0', '0', NULL, NULL),
(620, 620, 'Michael Family', 4000, '0', '0', '0', NULL, NULL),
(621, 621, 'Gerardo Family', 5000, '0', '0', '0', NULL, NULL),
(622, 622, 'Della Family', 6000, '0', '0', '0', NULL, NULL),
(623, 623, 'Maurine Family', 2000, '0', '0', '0', NULL, NULL),
(624, 624, 'Vergillio Family', 8000, '0', '0', '0', NULL, NULL),
(625, 625, 'Julius Family', 5000, '0', '0', '0', NULL, NULL),
(626, 626, 'Alejandro Family', 4000, '0', '0', '0', NULL, NULL),
(627, 627, 'John_Rich Family', 5000, '0', '0', '0', NULL, NULL),
(628, 628, 'Mark_Vincent Family', 12000, '0', '0', '0', NULL, NULL),
(629, 629, 'Bimbo Family', 5000, '0', '0', '0', NULL, NULL),
(630, 630, 'Jever Family', 4000, '0', '0', '0', NULL, NULL),
(631, 631, 'Samuel Family', 6000, '0', '0', '0', NULL, NULL),
(632, 632, 'Pedro Family', 5000, '0', '0', '0', NULL, NULL),
(633, 633, 'Genesis_Mark Family', 4000, '0', '0', '0', NULL, NULL),
(634, 634, 'Norma Family', 5000, '0', '0', '0', NULL, NULL),
(635, 635, 'Mervinio Family', 4000, '0', '0', '0', NULL, NULL),
(636, 636, 'Mario Family', 3000, '0', '0', '0', NULL, NULL),
(637, 637, 'Loreto Family', 3000, '0', '0', '0', NULL, NULL),
(638, 638, 'Benito Family', 8000, '0', '0', '0', NULL, NULL),
(639, 639, 'Rupino Family', 3000, '0', '0', '0', NULL, NULL),
(640, 640, 'Susano Family', 4000, '0', '0', '0', NULL, NULL),
(641, 641, 'Roel Family', 4000, '0', '0', '0', NULL, NULL),
(642, 642, 'Ida Family', 6000, '0', '0', '0', NULL, NULL),
(643, 643, 'Edgar Family', 5000, '0', '0', '0', NULL, NULL),
(644, 644, 'Johnny Family', 7000, '0', '0', '0', NULL, NULL),
(645, 645, 'Ferdinand Family', 5000, '0', '0', '0', NULL, NULL),
(646, 646, 'Marcelo Family', 4000, '0', '0', '0', NULL, NULL),
(647, 647, 'Albert Family', 4500, '0', '0', '0', NULL, NULL),
(648, 648, 'Vicente Family', 5000, '0', '0', '0', NULL, NULL),
(649, 649, 'Leo Family', 18000, '0', '0', '0', NULL, NULL),
(650, 650, 'Rene Family', 7000, '0', '0', '0', NULL, NULL),
(651, 651, 'Roy Family', 12000, '0', '0', '0', NULL, NULL),
(652, 652, 'Pedro Family', 6000, '0', '0', '0', NULL, NULL),
(653, 653, 'Jonathan Family', 5000, '0', '0', '0', NULL, NULL),
(654, 654, 'Kenny Family', 4000, '0', '0', '0', NULL, NULL),
(655, 655, 'Marlon Family', 4000, '0', '0', '0', NULL, NULL),
(656, 656, 'Edwin Family', 6000, '0', '0', '0', NULL, NULL),
(657, 657, 'Mike Family', 8000, '0', '0', '0', NULL, NULL),
(658, 658, 'Pomponso Family', 18000, '0', '0', '0', NULL, NULL),
(659, 659, 'Eddie Family', 4000, '0', '0', '0', NULL, NULL),
(660, 660, 'Roberta Family', 3000, '0', '0', '0', NULL, NULL),
(661, 661, 'Rosita Family', 2000, '0', '0', '0', NULL, NULL),
(662, 662, 'Conrad Family', 6000, '0', '0', '0', NULL, NULL),
(663, 663, 'Renanto Family', 3500, '0', '0', '0', NULL, NULL),
(664, 664, 'Jojit Family', 4800, '0', '0', '0', NULL, NULL),
(665, 665, 'Mary_Ann Family', 4000, '0', '0', '0', NULL, NULL),
(666, 666, 'Lourdes Family', 3000, '0', '0', '0', NULL, NULL),
(667, 667, 'Evelyn Family', 4000, '0', '0', '0', NULL, NULL),
(668, 668, 'Edwin Family', 5000, '0', '0', '0', NULL, NULL),
(669, 669, 'Rodel Family', 4000, '0', '0', '0', NULL, NULL),
(670, 670, 'Victor Family', 4500, '0', '0', '0', NULL, NULL),
(671, 671, 'Eric Family', 4000, '0', '0', '0', NULL, NULL),
(672, 672, 'Deciderio Family', 3000, '0', '0', '0', NULL, NULL),
(673, 673, 'Adonis Family', 4000, '0', '0', '0', NULL, NULL),
(674, 674, 'Elmer Family', 4000, '0', '0', '0', NULL, NULL),
(675, 675, 'Niva Family', 80000, '0', '0', '0', NULL, NULL),
(676, 676, 'Jhon_Michael Family', 8000, '0', '0', '0', NULL, NULL),
(677, 677, 'Antonio Family', 6000, '0', '0', '0', NULL, NULL),
(678, 678, 'Jennifer Family', 4000, '0', '0', '0', NULL, NULL),
(679, 679, 'Erwin Family', 6000, '0', '0', '0', NULL, NULL),
(680, 680, 'Armando Family', 1500, '0', '0', '0', NULL, NULL),
(681, 681, 'Ernesto Family', 3500, '0', '0', '0', NULL, NULL),
(682, 682, 'Francisco Family', 2000, '0', '0', '0', NULL, NULL),
(683, 683, 'Erwin Family', 4000, '0', '0', '0', NULL, NULL),
(684, 684, 'Ritchel Family', 4000, '0', '0', '0', NULL, NULL),
(685, 685, 'Gueli Family', 2000, '0', '0', '0', NULL, NULL),
(686, 686, 'Rodney Family', 20000, '0', '0', '0', NULL, NULL),
(687, 687, 'Ricardo Family', 5000, '0', '0', '0', NULL, NULL),
(688, 688, 'Ronald Family', 20000, '0', '0', '0', NULL, NULL),
(689, 689, 'Juvymer Family', 2000, '0', '0', '0', NULL, NULL),
(690, 690, 'Landra Family', 3000, '0', '0', '0', NULL, NULL),
(691, 691, 'Benjamin Family', 4000, '0', '0', '0', NULL, NULL),
(692, 692, 'Frankelina Family', 8000, '0', '0', '0', NULL, NULL),
(693, 693, 'Juan Family', 2000, '0', '0', '0', NULL, NULL),
(694, 694, 'Fuljencio Family', 5000, '0', '0', '0', NULL, NULL),
(695, 695, 'Leonard Family', 5000, '0', '0', '0', NULL, NULL),
(696, 696, 'Damiana Family', 2000, '0', '0', '0', NULL, NULL),
(697, 697, 'Hermolina Family', 3000, '0', '0', '0', NULL, NULL),
(698, 698, 'Melchor Family', 4000, '0', '0', '0', NULL, NULL),
(699, 699, 'Alicia Family', 2000, '0', '0', '0', NULL, NULL),
(700, 700, 'Gerald Family', 6000, '0', '0', '0', NULL, NULL),
(701, 701, 'Allan Family', 4000, '0', '0', '0', NULL, NULL),
(702, 702, 'Martillano Family', 4000, '0', '0', '0', NULL, NULL),
(703, 703, 'Tesie Family', 6000, '0', '0', '0', NULL, NULL),
(704, 704, 'Romulo Family', 4000, '0', '0', '0', NULL, NULL),
(705, 705, 'Joel Family', 4000, '0', '0', '0', NULL, NULL),
(706, 706, 'Therisito Family', 15000, '0', '0', '0', NULL, NULL),
(707, 707, 'Leonardo Family', 4500, '0', '0', '0', NULL, NULL),
(708, 708, 'Jessie Family', 6000, '0', '0', '0', NULL, NULL),
(709, 709, 'Virgillio Family', 5000, '0', '0', '0', NULL, NULL),
(710, 710, 'Hebjer Family', 6000, '0', '0', '0', NULL, NULL),
(711, 711, 'Thomas Family', 4500, '0', '0', '0', NULL, NULL),
(712, 712, 'Esnayda Family', 3000, '0', '0', '0', NULL, NULL),
(713, 713, 'Niebes Family', 5000, '0', '0', '0', NULL, NULL),
(714, 714, 'Monico Family', 5000, '0', '0', '0', NULL, NULL),
(715, 715, 'Felix Family', 4000, '0', '0', '0', NULL, NULL),
(716, 716, 'Natividad Family', 5000, '0', '0', '0', NULL, NULL),
(717, 717, 'Robert Family', 4000, '0', '0', '0', NULL, NULL),
(718, 718, 'Arbine Family', 6000, '0', '0', '0', NULL, NULL),
(719, 719, 'Benjie Family', 5000, '0', '0', '0', NULL, NULL),
(720, 720, 'Alfredo_Jr. Family', 3500, '0', '0', '0', NULL, NULL),
(721, 721, 'Susan Family', 10000, '0', '0', '0', NULL, NULL),
(722, 722, 'Armonil Family', 3000, '0', '0', '0', NULL, NULL),
(723, 723, 'Frias Family', 5000, '0', '0', '0', NULL, NULL),
(724, 724, 'Letty Family', 2000, '0', '0', '0', NULL, NULL),
(725, 725, 'Maxito Family', 4000, '0', '0', '0', NULL, NULL),
(726, 726, 'Martin Family', 10000, '0', '0', '0', NULL, NULL),
(727, 727, 'Pedro Family', 6000, '0', '0', '0', NULL, NULL),
(728, 728, 'Binbilo_Sr. Family', 10000, '0', '0', '0', NULL, NULL),
(729, 729, 'Dockisano Family', 10000, '0', '0', '0', NULL, NULL),
(730, 730, 'Binard Family', 10000, '0', '0', '0', NULL, NULL),
(731, 731, 'Marlon Family', 5000, '0', '0', '0', NULL, NULL),
(732, 732, 'Medila Family', 1000, '0', '0', '0', NULL, NULL),
(733, 733, 'Romel Family', 4500, '0', '0', '0', NULL, NULL),
(734, 734, 'Jose_Ronie Family', 6000, '0', '0', '0', NULL, NULL),
(735, 735, 'Emanuel Family', 4000, '0', '0', '0', NULL, NULL),
(736, 736, 'Bong Family', 4000, '0', '0', '0', NULL, NULL),
(737, 737, 'Nonita Family', 3000, '0', '0', '0', NULL, NULL),
(738, 738, 'Fely Family', 5000, '0', '0', '0', NULL, NULL),
(739, 739, 'Arsenia Family', 1500, '0', '0', '0', NULL, NULL),
(740, 740, 'Emelano Family', 5000, '0', '0', '0', NULL, NULL),
(741, 741, 'Orlando Family', 3000, '0', '0', '0', NULL, NULL),
(742, 742, 'justo_Jr Family', 3000, '0', '0', '0', NULL, NULL),
(743, 743, 'Nirekita Family', 3000, '0', '0', '0', NULL, NULL),
(744, 744, 'Antonio Family', 4000, '0', '0', '0', NULL, NULL),
(745, 745, 'Jessie_Sr. Family', 5000, '0', '0', '0', NULL, NULL),
(746, 746, 'Jade Family', 8000, '0', '0', '0', NULL, NULL),
(747, 747, 'Paolo Family', 5000, '0', '0', '0', NULL, NULL),
(748, 748, 'Aldwin Family', 5000, '0', '0', '0', NULL, NULL),
(749, 749, 'Jose Family', 3000, '0', '0', '0', NULL, NULL),
(750, 750, 'Mario Family', 3000, '0', '0', '0', NULL, NULL),
(751, 751, 'Allan Family', 7000, '0', '0', '0', NULL, NULL),
(752, 752, 'Herlan Family', 5000, '0', '0', '0', NULL, NULL),
(753, 753, 'Sonday Family', 6000, '0', '0', '0', NULL, NULL),
(754, 754, 'Celbenz Family', 5000, '0', '0', '0', NULL, NULL),
(755, 755, 'Eduardo Family', 6000, '0', '0', '0', NULL, NULL),
(756, 756, 'Marlo Family', 6000, '0', '0', '0', NULL, NULL),
(757, 757, 'Geller Family', 3500, '0', '0', '0', NULL, NULL),
(758, 758, 'Joan Family', 6000, '0', '0', '0', NULL, NULL),
(759, 759, 'Nilo Family', 3000, '0', '0', '0', NULL, NULL),
(760, 760, 'Senerio Family', 4000, '0', '0', '0', NULL, NULL),
(761, 761, 'Ramel Family', 6000, '0', '0', '0', NULL, NULL),
(762, 762, 'Jeffrey Family', 8000, '0', '0', '0', NULL, NULL),
(763, 763, 'Alfredo_Jr. Family', 5000, '0', '0', '0', NULL, NULL),
(764, 764, 'Ancro Family', 6000, '0', '0', '0', NULL, NULL),
(765, 765, 'Marivic Family', 3000, '0', '0', '0', NULL, NULL),
(766, 766, 'Richard Family', 3500, '0', '0', '0', NULL, NULL),
(767, 767, 'Renato Family', 15000, '0', '0', '0', NULL, NULL),
(768, 768, 'Francisco Family', 8000, '0', '0', '0', NULL, NULL),
(769, 769, 'Elsa Family', 3000, '0', '0', '0', NULL, NULL),
(770, 770, 'Jesus Family', 3000, '0', '0', '0', NULL, NULL),
(771, 771, 'Dolpa Family', 2000, '0', '0', '0', NULL, NULL),
(772, 772, 'Leonora Family', 6000, '0', '0', '0', NULL, NULL),
(773, 773, 'Josepina Family', 5000, '0', '0', '0', NULL, NULL),
(774, 774, 'Juliet Family', 3000, '0', '0', '0', NULL, NULL),
(775, 775, 'Neil Family', 8000, '0', '0', '0', NULL, NULL),
(776, 776, 'Ronan Family', 4000, '0', '0', '0', NULL, NULL),
(777, 777, 'Donalou Family', 3000, '0', '0', '0', NULL, NULL),
(778, 778, 'Nicanor Family', 2000, '0', '0', '0', NULL, NULL),
(779, 779, 'Russell Family', 5000, '0', '0', '0', NULL, NULL),
(780, 780, 'Alvin Family', 5000, '0', '0', '0', NULL, NULL),
(781, 781, 'Wilfredo Family', 12000, '0', '0', '0', NULL, NULL),
(782, 782, 'Ricky Family', 6000, '0', '0', '0', NULL, NULL),
(783, 783, 'Angelina Family', 2000, '0', '0', '0', NULL, NULL),
(784, 784, 'Ricardo Family', 5000, '0', '0', '0', NULL, NULL),
(785, 785, 'Samuel Family', 8000, '0', '0', '0', NULL, NULL),
(786, 786, 'Peter Family', 4000, '0', '0', '0', NULL, NULL),
(787, 787, 'Efemia Family', 2500, '0', '0', '0', NULL, NULL),
(788, 788, 'Michael Family', 5000, '0', '0', '0', NULL, NULL),
(789, 789, 'Ester Family', 10000, '0', '0', '0', NULL, NULL),
(790, 790, 'Mae Family', 4000, '0', '0', '0', NULL, NULL),
(791, 791, 'Jaime_jr. Family', 5000, '0', '0', '0', NULL, NULL),
(792, 792, 'Archie Family', 3000, '0', '0', '0', NULL, NULL),
(793, 793, 'Virginita Family', 3000, '0', '0', '0', NULL, NULL),
(794, 794, 'Timoteo Family', 7000, '0', '0', '0', NULL, NULL),
(795, 795, 'Balista Family', 2000, '0', '0', '0', NULL, NULL),
(796, 796, 'Joel Family', 6000, '0', '0', '0', NULL, NULL),
(797, 797, 'Michell Family', 6000, '0', '0', '0', NULL, NULL),
(798, 798, 'Amador Family', 4000, '0', '0', '0', NULL, NULL),
(799, 799, 'Ma_Fe Family', 12000, '0', '0', '0', NULL, NULL),
(800, 800, 'Jocely Family', 3000, '0', '0', '0', NULL, NULL),
(801, 801, 'Perla Family', 15000, '0', '0', '0', NULL, NULL),
(802, 802, 'Benjamin Family', 3000, '0', '0', '0', NULL, NULL),
(803, 803, 'Dixon Family', 5000, '0', '0', '0', NULL, NULL),
(804, 804, 'Warlita Family', 2000, '0', '0', '0', NULL, NULL),
(805, 805, 'Benjie Family', 6000, '0', '0', '0', NULL, NULL),
(806, 806, 'Justino Family', 3400, '0', '0', '0', NULL, NULL),
(807, 807, 'Ester Family', 3000, '0', '0', '0', NULL, NULL),
(808, 808, 'Roger Family', 3400, '0', '0', '0', NULL, NULL),
(809, 809, 'Veronico Family', 4000, '0', '0', '0', NULL, NULL),
(810, 810, 'Peter Family', 5000, '0', '0', '0', NULL, NULL),
(811, 811, 'Darwin Family', 6000, '0', '0', '0', NULL, NULL),
(812, 812, 'Lemuel Family', 3500, '0', '0', '0', NULL, NULL),
(813, 813, 'Feliza Family', 1500, '0', '0', '0', NULL, NULL),
(814, 814, 'Allen_Cris Family', 5000, '0', '0', '0', NULL, NULL),
(815, 815, 'Robin Family', 4000, '0', '0', '0', NULL, NULL),
(816, 816, 'Aron_Jhon Family', 5000, '0', '0', '0', NULL, NULL),
(817, 817, 'Esabilo Family', 6000, '0', '0', '0', NULL, NULL),
(818, 818, 'Selvistra Family', 2000, '0', '0', '0', NULL, NULL),
(819, 819, 'Jose Family', 6000, '0', '0', '0', NULL, NULL),
(820, 820, 'Bonifacio Family', 4000, '0', '0', '0', NULL, NULL),
(821, 821, 'Ricarda Family', 3000, '0', '0', '0', NULL, NULL),
(822, 822, 'Marlon Family', 5000, '0', '0', '0', NULL, NULL),
(823, 823, 'Virgilio Family', 6000, '0', '0', '0', NULL, NULL),
(824, 824, 'Francisco Family', 4000, '0', '0', '0', NULL, NULL);
INSERT INTO `families` (`id`, `building_id`, `family_identifier`, `monthly_income`, `if_other_livelihood`, `livelihood`, `if_4ps`, `created_at`, `updated_at`) VALUES
(825, 825, 'Roberto Family', 5000, '0', '0', '0', NULL, NULL),
(826, 826, 'Jonver Family', 23000, '0', '0', '0', NULL, NULL),
(827, 827, 'Virgilio Family', 8000, '0', '0', '0', NULL, NULL),
(828, 828, 'Glyn Family', 5000, '0', '0', '0', NULL, NULL),
(829, 829, 'Rosita Family', 15000, '0', '0', '0', NULL, NULL),
(830, 830, 'josefa Family', 7000, '0', '0', '0', NULL, NULL),
(831, 831, 'Rey Family', 4000, '0', '0', '0', NULL, NULL),
(832, 832, 'Saturnino_Jr Family', 4500, '0', '0', '0', NULL, NULL),
(833, 833, 'Ransily Family', 3000, '0', '0', '0', NULL, NULL),
(834, 834, 'Dante Family', 5000, '0', '0', '0', NULL, NULL),
(835, 835, 'Salvador Family', 4000, '0', '0', '0', NULL, NULL),
(836, 836, 'Joseph Family', 4500, '0', '0', '0', NULL, NULL),
(837, 837, 'Junita Family', 2300, '0', '0', '0', NULL, NULL),
(838, 838, 'Roger Family', 3500, '0', '0', '0', NULL, NULL),
(839, 839, 'Jerson Family', 3000, '0', '0', '0', NULL, NULL),
(840, 840, 'Bernadette Family', 4000, '0', '0', '0', NULL, NULL),
(841, 841, 'Nestor Family', 3000, '0', '0', '0', NULL, NULL),
(842, 842, 'Anastasia Family', 5000, '0', '0', '0', NULL, NULL),
(843, 843, 'Gene Family', 8000, '0', '0', '0', NULL, NULL),
(844, 844, 'Romel_Vincent_Jr Family', 10000, '0', '0', '0', NULL, NULL),
(845, 845, 'Nicolas Family', 8000, '0', '0', '0', NULL, NULL),
(846, 846, 'Cecilio Family', 15000, '0', '0', '0', NULL, NULL),
(847, 847, 'Rogelio Family', 5000, '0', '0', '0', NULL, NULL),
(848, 848, 'Dennis Family', 4000, '0', '0', '0', NULL, NULL),
(849, 849, 'Mila Family', 3000, '0', '0', '0', NULL, NULL),
(850, 850, 'Felix_Sr Family', 6000, '0', '0', '0', NULL, NULL),
(851, 851, 'Pedro Family', 3000, '0', '0', '0', NULL, NULL),
(852, 852, 'Clapita Family', 2000, '0', '0', '0', NULL, NULL),
(853, 853, 'Linang Family', 5000, '0', '0', '0', NULL, NULL),
(854, 854, 'Salma Family', 5000, '0', '0', '0', NULL, NULL),
(855, 855, 'Caironesa Family', 2000, '0', '0', '0', NULL, NULL),
(856, 856, 'Mario Family', 4000, '0', '0', '0', NULL, NULL),
(857, 857, 'Jimmy Family', 8000, '0', '0', '0', NULL, NULL),
(858, 858, 'Gerelene Family', 8000, '0', '0', '0', NULL, NULL),
(859, 859, 'Epifania Family', 6000, '0', '0', '0', NULL, NULL),
(860, 860, 'Leonila Family', 2000, '0', '0', '0', NULL, NULL),
(861, 861, 'Lilibeth Family', 10000, '0', '0', '0', NULL, NULL),
(862, 862, 'David Family', 5000, '0', '0', '0', NULL, NULL),
(863, 863, 'Paterno Family', 6000, '0', '0', '0', NULL, NULL),
(864, 864, 'Rosie Family', 4000, '0', '0', '0', NULL, NULL),
(865, 865, 'Miguel Family', 4500, '0', '0', '0', NULL, NULL),
(866, 866, 'Joel Family', 3500, '0', '0', '0', NULL, NULL),
(867, 867, 'Rene Family', 5000, '0', '0', '0', NULL, NULL),
(868, 868, 'Jeffrey Family', 6000, '0', '0', '0', NULL, NULL),
(869, 869, 'Ramilito Family', 2500, '0', '0', '0', NULL, NULL),
(870, 870, 'Dolores Family', 5000, '0', '0', '0', NULL, NULL),
(871, 871, 'Samuel_Joseph Family', 10000, '0', '0', '0', NULL, NULL),
(872, 872, 'Jill Family', 10000, '0', '0', '0', NULL, NULL),
(873, 873, 'Eduardo Family', 3500, '0', '0', '0', NULL, NULL),
(874, 874, 'Leonisa Family', 4000, '0', '0', '0', NULL, NULL),
(875, 875, 'Domingo Family', 3000, '0', '0', '0', NULL, NULL),
(876, 876, 'Francisco Family', 5000, '0', '0', '0', NULL, NULL),
(877, 877, 'Elvie Family', 5000, '0', '0', '0', NULL, NULL),
(878, 878, 'Hermenio Family', 4000, '0', '0', '0', NULL, NULL),
(879, 879, 'Nelfred Family', 6000, '0', '0', '0', NULL, NULL),
(880, 880, 'Cynthia Family', 3000, '0', '0', '0', NULL, NULL),
(881, 881, 'Wilfredo Family', 2000, '0', '0', '0', NULL, NULL),
(882, 882, 'Ester Family', 4000, '0', '0', '0', NULL, NULL),
(883, 883, 'Julieta Family', 3000, '0', '0', '0', NULL, NULL),
(884, 884, 'Rosita Family', 2000, '0', '0', '0', NULL, NULL),
(885, 885, 'Romeo Family', 5000, '0', '0', '0', NULL, NULL),
(886, 886, 'Evangeline Family', 3000, '0', '0', '0', NULL, NULL),
(887, 887, 'Nenita Family', 5000, '0', '0', '0', NULL, NULL),
(888, 888, 'Maryann Family', 2000, '0', '0', '0', NULL, NULL),
(889, 889, 'Loreto Family', 3500, '0', '0', '0', NULL, NULL),
(890, 890, 'Bonifacio Family', 2500, '0', '0', '0', NULL, NULL),
(891, 891, 'Abundio_Jr Family', 6000, '0', '0', '0', NULL, NULL),
(892, 892, 'Ricky Family', 4000, '0', '0', '0', NULL, NULL),
(893, 893, 'Roberto Family', 6000, '0', '0', '0', NULL, NULL),
(894, 894, 'Babie_Julie Family', 4000, '0', '0', '0', NULL, NULL),
(895, 895, 'Rico Family', 5000, '0', '0', '0', NULL, NULL),
(896, 896, 'Alejo Family', 4000, '0', '0', '0', NULL, NULL),
(897, 897, 'Zita Family', 4000, '0', '0', '0', NULL, NULL),
(898, 898, 'Glenn_Mar Family', 4000, '0', '0', '0', NULL, NULL),
(899, 899, 'Melandro Family', 5000, '0', '0', '0', NULL, NULL),
(900, 900, 'Pedro_Jr. Family', 5000, '0', '0', '0', NULL, NULL),
(901, 901, 'Rogelio Family', 6000, '0', '0', '0', NULL, NULL),
(902, 902, 'Marilyn Family', 3000, '0', '0', '0', NULL, NULL),
(903, 903, 'Genaro_Sr. Family', 4500, '0', '0', '0', NULL, NULL),
(904, 904, 'Pio Family', 3000, '0', '0', '0', NULL, NULL),
(905, 905, 'Roel Family', 5000, '0', '0', '0', NULL, NULL),
(906, 906, 'Benson_Sr. Family', 4000, '0', '0', '0', NULL, NULL),
(907, 907, 'Liberato Family', 5000, '0', '0', '0', NULL, NULL),
(908, 908, 'Rolando Family', 4500, '0', '0', '0', NULL, NULL),
(909, 909, 'Reynaldo_Sr. Family', 8000, '0', '0', '0', NULL, NULL),
(910, 910, 'Tarciana Family', 3000, '0', '0', '0', NULL, NULL),
(911, 911, 'Merlyn Family', 6000, '0', '0', '0', NULL, NULL),
(912, 912, 'Rene Family', 5000, '0', '0', '0', NULL, NULL),
(913, 913, 'Ernesto Family', 8000, '0', '0', '0', NULL, NULL),
(914, 914, 'Froilan_Francis Family', 3000, '0', '0', '0', NULL, NULL),
(915, 915, 'Louie Family', 7000, '0', '0', '0', NULL, NULL),
(916, 916, 'Edmundo_Sr. Family', 5000, '0', '0', '0', NULL, NULL),
(917, 917, 'Jeffrey Family', 8000, '0', '0', '0', NULL, NULL),
(918, 918, 'Rosalinda Family', 5000, '0', '0', '0', NULL, NULL),
(919, 919, 'Jeffrey Family', 5000, '0', '0', '0', NULL, NULL),
(920, 920, 'Melchora Family', 1500, '0', '0', '0', NULL, NULL),
(921, 921, 'Rene Family', 6000, '0', '0', '0', NULL, NULL),
(922, 922, 'Ernest Family', 4000, '0', '0', '0', NULL, NULL),
(923, 923, 'Tibor Family', 3000, '0', '0', '0', NULL, NULL),
(924, 924, 'Rudy Family', 3000, '0', '0', '0', NULL, NULL),
(925, 925, 'Ernie Family', 5000, '0', '0', '0', NULL, NULL),
(926, 926, 'Marcelino Family', 4500, '0', '0', '0', NULL, NULL),
(927, 927, 'Manuel Family', 6000, '0', '0', '0', NULL, NULL),
(928, 928, 'Joselito Family', 7000, '0', '0', '0', NULL, NULL),
(929, 929, 'Narciso Family', 4500, '0', '0', '0', NULL, NULL),
(930, 930, 'Emelia Family', 6000, '0', '0', '0', NULL, NULL),
(931, 931, 'Gerry Family', 4500, '0', '0', '0', NULL, NULL),
(932, 932, 'Alfredo Family', 10000, '0', '0', '0', NULL, NULL),
(933, 933, 'Rosita Family', 3000, '0', '0', '0', NULL, NULL),
(934, 934, 'Sabelo Family', 3000, '0', '0', '0', NULL, NULL),
(935, 935, 'Rogelio Family', 3000, '0', '0', '0', NULL, NULL),
(936, 936, 'Andrew Family', 1500, '0', '0', '0', NULL, NULL),
(937, 937, 'Alfredo Family', 3000, '0', '0', '0', NULL, NULL),
(938, 938, 'Erlito Family', 2000, '0', '0', '0', NULL, NULL),
(939, 939, 'Teresita Family', 3000, '0', '0', '0', NULL, NULL),
(940, 940, 'Atoy Family', 2000, '0', '0', '0', NULL, NULL),
(941, 941, 'Delfin Family', 3000, '0', '0', '0', NULL, NULL),
(942, 942, 'Erlito Family', 3000, '0', '0', '0', NULL, NULL),
(943, 943, 'Reto Family', 5000, '0', '0', '0', NULL, NULL),
(944, 944, 'Pablo Family', 3000, '0', '0', '0', NULL, NULL),
(945, 945, 'Lorna Family', 2000, '0', '0', '0', NULL, NULL),
(946, 946, 'Pepito_Jr Family', 4000, '0', '0', '0', NULL, NULL),
(947, 947, 'Boyet Family', 3000, '0', '0', '0', NULL, NULL),
(948, 948, 'Arlyn Family', 4500, '0', '0', '0', NULL, NULL),
(949, 949, 'Edie Family', 5000, '0', '0', '0', NULL, NULL),
(950, 950, 'Meo Family', 3000, '0', '0', '0', NULL, NULL),
(951, 951, 'Arjely Family', 3000, '0', '0', '0', NULL, NULL),
(952, 952, 'Jose_Jr Family', 4000, '0', '0', '0', NULL, NULL),
(953, 953, 'Ronald Family', 4000, '0', '0', '0', NULL, NULL),
(954, 954, 'Roberto Family', 5000, '0', '0', '0', NULL, NULL),
(955, 955, 'Dicky Family', 2000, '0', '0', '0', NULL, NULL),
(956, 956, 'Tata Family', 3000, '0', '0', '0', NULL, NULL),
(957, 957, 'Bebot Family', 3000, '0', '0', '0', NULL, NULL),
(958, 958, 'Florenciano Family', 3000, '0', '0', '0', NULL, NULL),
(959, 959, 'Patricio Family', 3000, '0', '0', '0', NULL, NULL),
(960, 960, 'Polaris Family', 2000, '0', '0', '0', NULL, NULL),
(961, 961, 'Oliver Family', 3500, '0', '0', '0', NULL, NULL),
(962, 962, 'Vicente Family', 3000, '0', '0', '0', NULL, NULL),
(963, 963, 'Thelma Family', 3000, '0', '0', '0', NULL, NULL),
(964, 964, 'Filipe Family', 4000, '0', '0', '0', NULL, NULL),
(965, 965, 'Josiao Family', 1500, '0', '0', '0', NULL, NULL),
(966, 966, 'Epanyo Family', 3000, '0', '0', '0', NULL, NULL),
(967, 967, 'Fernando Family', 3000, '0', '0', '0', NULL, NULL),
(968, 968, 'Avilino Family', 3000, '0', '0', '0', NULL, NULL),
(969, 969, 'Bayani Family', 3500, '0', '0', '0', NULL, NULL),
(970, 970, 'Tata Family', 3000, '0', '0', '0', NULL, NULL),
(971, 971, 'Jose Family', 3000, '0', '0', '0', NULL, NULL),
(972, 972, 'Roseller Family', 5000, '0', '0', '0', NULL, NULL),
(973, 973, 'Urbano Family', 8000, '0', '0', '0', NULL, NULL),
(974, 974, 'Martiniana Family', 4500, '0', '0', '0', NULL, NULL),
(975, 975, 'Napoleon Family', 7000, '0', '0', '0', NULL, NULL),
(976, 976, 'Lane Family', 10000, '0', '0', '0', NULL, NULL),
(977, 977, 'Leonarda Family', 6000, '0', '0', '0', NULL, NULL),
(978, 978, 'Glenda Family', 2000, '0', '0', '0', NULL, NULL),
(979, 979, 'Ricarda Family', 5000, '0', '0', '0', NULL, NULL),
(980, 980, 'Gilbert Family', 5000, '0', '0', '0', NULL, NULL),
(981, 981, 'Leo_Sr Family', 8000, '0', '0', '0', NULL, NULL),
(982, 982, 'Milaflor Family', 4000, '0', '0', '0', NULL, NULL),
(983, 983, 'Sthil Family', 5000, '0', '0', '0', NULL, NULL),
(984, 984, 'Maximo Family', 5000, '0', '0', '0', NULL, NULL),
(985, 985, 'Alvin Family', 4500, '0', '0', '0', NULL, NULL),
(986, 986, 'Nonito Family', 4000, '0', '0', '0', NULL, NULL),
(987, 987, 'Rasdi Family', 2000, '0', '0', '0', NULL, NULL),
(988, 988, 'Berando Family', 2000, '0', '0', '0', NULL, NULL),
(989, 989, 'Custodio Family', 4000, '0', '0', '0', NULL, NULL),
(990, 990, 'Ronnie_Joe Family', 4000, '0', '0', '0', NULL, NULL),
(991, 991, 'Demilou Family', 18000, '0', '0', '0', NULL, NULL),
(992, 992, 'Conrado Family', 6000, '0', '0', '0', NULL, NULL),
(993, 993, 'Edilberto Family', 10000, '0', '0', '0', NULL, NULL),
(994, 994, 'Premitivo Family', 4000, '0', '0', '0', NULL, NULL),
(995, 995, 'Agustin Family', 4000, '0', '0', '0', NULL, NULL),
(996, 996, 'Melvin Family', 4000, '0', '0', '0', NULL, NULL),
(997, 997, 'Salvador_Jr Family', 5000, '0', '0', '0', NULL, NULL),
(998, 998, 'Danilo_Sr Family', 7000, '0', '0', '0', NULL, NULL),
(999, 999, 'Mark_Anthony Family', 5000, '0', '0', '0', NULL, NULL),
(1000, 1000, 'Mary_jane Family', 6000, '0', '0', '0', NULL, NULL),
(1001, 1001, 'Francisca Family', 3500, '0', '0', '0', NULL, NULL),
(1002, 1002, 'Ramil Family', 3000, '0', '0', '0', NULL, NULL),
(1003, 1003, 'Benjie Family', 15000, '0', '0', '0', NULL, NULL),
(1004, 1004, 'Bienvinido Family', 5000, '0', '0', '0', NULL, NULL),
(1005, 1005, 'Warlito Family', 3000, '0', '0', '0', NULL, NULL),
(1006, 1006, 'Joan Family', 4000, '0', '0', '0', NULL, NULL),
(1007, 1007, 'James_Paul Family', 5000, '0', '0', '0', NULL, NULL),
(1008, 1008, 'Jose Family', 4500, '0', '0', '0', NULL, NULL),
(1009, 1009, 'Romeo Family', 5000, '0', '0', '0', NULL, NULL),
(1010, 1010, 'Jason Family', 4000, '0', '0', '0', NULL, NULL),
(1011, 1011, 'Adrian Family', 5000, '0', '0', '0', NULL, NULL),
(1012, 1012, 'Benjamin Family', 3000, '0', '0', '0', NULL, NULL),
(1013, 1013, 'Jeffrey Family', 5000, '0', '0', '0', NULL, NULL),
(1014, 1014, 'Manuelito Family', 6000, '0', '0', '0', NULL, NULL),
(1015, 1015, 'Basilio Family', 10000, '0', '0', '0', NULL, NULL),
(1016, 1016, 'Rene Family', 6000, '0', '0', '0', NULL, NULL),
(1017, 1017, 'Quirino Family', 6000, '0', '0', '0', NULL, NULL),
(1018, 1018, 'Flaviano Family', 5000, '0', '0', '0', NULL, NULL),
(1019, 1019, 'Alain Family', 4500, '0', '0', '0', NULL, NULL),
(1020, 1020, 'Ricardo Family', 4500, '0', '0', '0', NULL, NULL),
(1021, 1021, 'Jason Family', 10000, '0', '0', '0', NULL, NULL),
(1022, 1022, 'Leopoldo Family', 3000, '0', '0', '0', NULL, NULL),
(1023, 1023, 'Eleno_Boy Family', 10000, '0', '0', '0', NULL, NULL),
(1024, 1024, 'Rochelle Family', 10000, '0', '0', '0', NULL, NULL),
(1025, 1025, 'Bernon Family', 4500, '0', '0', '0', NULL, NULL),
(1026, 1026, 'Junard Family', 6000, '0', '0', '0', NULL, NULL),
(1027, 1027, 'Junbi Family', 4500, '0', '0', '0', NULL, NULL),
(1028, 1028, 'Phycie Family', 3000, '0', '0', '0', NULL, NULL),
(1029, 1029, 'Philip Family', 10000, '0', '0', '0', NULL, NULL),
(1030, 1030, 'Harold Family', 8000, '0', '0', '0', NULL, NULL),
(1031, 1031, 'Julito Family', 6000, '0', '0', '0', NULL, NULL),
(1032, 1032, 'Grace Family', 1500, '0', '0', '0', NULL, NULL),
(1033, 1033, 'George Family', 7000, '0', '0', '0', NULL, NULL),
(1034, 1034, 'Esteban Family', 4000, '0', '0', '0', NULL, NULL),
(1035, 1035, 'Roldan Family', 3000, '0', '0', '0', NULL, NULL),
(1036, 1036, 'Revelino Family', 10000, '0', '0', '0', NULL, NULL),
(1037, 1037, 'Abraham Family', 4000, '0', '0', '0', NULL, NULL),
(1038, 1038, 'William Family', 3000, '0', '0', '0', NULL, NULL),
(1039, 1039, 'Hubert Family', 10000, '0', '0', '0', NULL, NULL),
(1040, 1040, 'Alvin Family', 10000, '0', '0', '0', NULL, NULL),
(1041, 1041, 'Sulpicio Family', 20000, '0', '0', '0', NULL, NULL),
(1042, 1042, 'Florante Family', 6000, '0', '0', '0', NULL, NULL),
(1043, 1043, 'Christopher Family', 6000, '0', '0', '0', NULL, NULL),
(1044, 1044, 'Leopoldo Family', 10000, '0', '0', '0', NULL, NULL),
(1045, 1045, 'Carlos Family', 7000, '0', '0', '0', NULL, NULL),
(1046, 1046, 'Michael Family', 5000, '0', '0', '0', NULL, NULL),
(1047, 1047, 'Edgar Family', 3000, '0', '0', '0', NULL, NULL),
(1048, 1048, 'Estrella Family', 10000, '0', '0', '0', NULL, NULL),
(1049, 1049, 'Bernardo Family', 3000, '0', '0', '0', NULL, NULL),
(1050, 1050, 'Sapiah Family', 35000, '0', '0', '0', NULL, NULL),
(1051, 1051, 'Junie_ven Family', 3000, '0', '0', '0', NULL, NULL),
(1052, 1052, 'Romero Family', 70000, '0', '0', '0', NULL, NULL),
(1053, 1053, 'Manuel Family', 10000, '0', '0', '0', NULL, NULL),
(1054, 1054, 'Allan Family', 3000, '0', '0', '0', NULL, NULL),
(1055, 1055, 'Richard Family', 4000, '0', '0', '0', NULL, NULL),
(1056, 1056, 'Arnold Family', 6000, '0', '0', '0', NULL, NULL),
(1057, 1057, 'Antonio Family', 2000, '0', '0', '0', NULL, NULL),
(1058, 1058, 'Arnolfo Family', 2000, '0', '0', '0', NULL, NULL),
(1059, 1059, 'Demetria Family', 2000, '0', '0', '0', NULL, NULL),
(1060, 1060, 'Merlyn Family', 3000, '0', '0', '0', NULL, NULL),
(1061, 1061, 'Gregorio Family', 2000, '0', '0', '0', NULL, NULL),
(1062, 1062, 'Elojeo Family', 3000, '0', '0', '0', NULL, NULL),
(1063, 1063, 'Benjie_jr Family', 2000, '0', '0', '0', NULL, NULL),
(1064, 1064, 'Rodolfo Family', 1500, '0', '0', '0', NULL, NULL),
(1065, 1065, 'Serbillano Family', 3000, '0', '0', '0', NULL, NULL),
(1066, 1066, 'Federico Family', 3000, '0', '0', '0', NULL, NULL),
(1067, 1067, 'Anthony Family', 1800, '0', '0', '0', NULL, NULL),
(1068, 1068, 'Ronald Family', 4000, '0', '0', '0', NULL, NULL),
(1069, 1069, 'Clark Family', 3000, '0', '0', '0', NULL, NULL),
(1070, 1070, 'Allan Family', 7000, '0', '0', '0', NULL, NULL),
(1071, 1071, 'Christopher Family', 3000, '0', '0', '0', NULL, NULL),
(1072, 1072, 'Vicente Family', 5000, '0', '0', '0', NULL, NULL),
(1073, 1073, 'Eddie Family', 7000, '0', '0', '0', NULL, NULL),
(1074, 1074, 'Roberto_jr Family', 2500, '0', '0', '0', NULL, NULL),
(1075, 1075, 'Edgardo Family', 10000, '0', '0', '0', NULL, NULL),
(1076, 1076, 'Wenefredo Family', 2000, '0', '0', '0', NULL, NULL),
(1077, 1077, 'Dante Family', 3500, '0', '0', '0', NULL, NULL),
(1078, 1078, 'Lolita Family', 6000, '0', '0', '0', NULL, NULL),
(1079, 1079, 'Natividad Family', 1500, '0', '0', '0', NULL, NULL),
(1080, 1080, 'Elsie Family', 2000, '0', '0', '0', NULL, NULL),
(1081, 1081, 'Sajid Family', 8000, '0', '0', '0', NULL, NULL),
(1082, 1082, 'Mila Family', 5000, '0', '0', '0', NULL, NULL),
(1083, 1083, 'Ricky Family', 3000, '0', '0', '0', NULL, NULL),
(1084, 1084, 'Roel Family', 7000, '0', '0', '0', NULL, NULL),
(1085, 1085, 'Roberto Family', 2000, '0', '0', '0', NULL, NULL),
(1086, 1086, 'Arnolfo Family', 3000, '0', '0', '0', NULL, NULL),
(1087, 1087, 'Sofricio Family', 4000, '0', '0', '0', NULL, NULL),
(1088, 1088, 'Magdalena Family', 3000, '0', '0', '0', NULL, NULL),
(1089, 1089, 'Gorio Family', 1000, '0', '0', '0', NULL, NULL),
(1090, 1090, 'Jerry Family', 3000, '0', '0', '0', NULL, NULL),
(1091, 1091, 'Arfil Family', 2000, '0', '0', '0', NULL, NULL),
(1092, 1092, 'Fritz_Jay Family', 2000, '0', '0', '0', NULL, NULL),
(1093, 1093, 'Annie Family', 5000, '0', '0', '0', NULL, NULL),
(1094, 1094, 'Clemente_jr Family', 10000, '0', '0', '0', NULL, NULL),
(1095, 1095, 'Sarah Family', 10000, '0', '0', '0', NULL, NULL),
(1096, 1096, 'Rosalina Family', 3000, '0', '0', '0', NULL, NULL),
(1097, 1097, 'Michael Family', 15000, '0', '0', '0', NULL, NULL),
(1098, 1098, 'Cito Family', 2000, '0', '0', '0', NULL, NULL),
(1099, 1099, 'Maribeth Family', 2000, '0', '0', '0', NULL, NULL),
(1100, 1100, 'Estela Family', 2500, '0', '0', '0', NULL, NULL),
(1101, 1101, 'Romeo Family', 4500, '0', '0', '0', NULL, NULL),
(1102, 1102, 'Redemptor Family', 1000, '0', '0', '0', NULL, NULL),
(1103, 1103, 'Hans Family', 3000, '0', '0', '0', NULL, NULL),
(1104, 1104, 'Juliet Family', 4000, '0', '0', '0', NULL, NULL),
(1105, 1105, 'Danny Family', 8000, '0', '0', '0', NULL, NULL),
(1106, 1106, 'Annalou Family', 10000, '0', '0', '0', NULL, NULL),
(1107, 1107, 'Derrick Family', 5000, '0', '0', '0', NULL, NULL),
(1108, 1108, 'Jovita Family', 500, '0', '0', '0', NULL, NULL),
(1109, 1109, 'Flaviano Family', 20000, '0', '0', '0', NULL, NULL),
(1110, 1110, 'Joefil Family', 6000, '0', '0', '0', NULL, NULL),
(1111, 1111, 'Nestor Family', 12000, '0', '0', '0', NULL, NULL),
(1112, 1112, 'Esperi_jun Family', 1000, '0', '0', '0', NULL, NULL),
(1113, 1113, 'Manuel Family', 36000, '0', '0', '0', NULL, NULL),
(1114, 1114, 'Josef Family', 5000, '0', '0', '0', NULL, NULL),
(1115, 1115, 'Solidad Family', 3000, '0', '0', '0', NULL, NULL),
(1116, 1116, 'Bernard Family', 10000, '0', '0', '0', NULL, NULL),
(1117, 1117, 'Jay Family', 5000, '0', '0', '0', NULL, NULL),
(1118, 1118, 'Devon_Christ Family', 3000, '0', '0', '0', NULL, NULL),
(1119, 1119, 'Modesto Family', 5000, '0', '0', '0', NULL, NULL),
(1120, 1120, 'Fidel Family', 20000, '0', '0', '0', NULL, NULL),
(1121, 1121, 'Jomar Family', 7000, '0', '0', '0', NULL, NULL),
(1122, 1122, 'Charlie Family', 1500, '0', '0', '0', NULL, NULL),
(1123, 1123, 'Armando Family', 2000, '0', '0', '0', NULL, NULL),
(1124, 1124, 'Benito Family', 3000, '0', '0', '0', NULL, NULL),
(1125, 1125, 'Roque Family', 7000, '0', '0', '0', NULL, NULL),
(1126, 1126, 'Arnel Family', 10000, '0', '0', '0', NULL, NULL),
(1127, 1127, 'Allan Family', 12000, '0', '0', '0', NULL, NULL),
(1128, 1128, 'Pablo Family', 3000, '0', '0', '0', NULL, NULL),
(1129, 1129, 'Nena Family', 3000, '0', '0', '0', NULL, NULL),
(1130, 1130, 'Teresita Family', 25000, '0', '0', '0', NULL, NULL),
(1131, 1131, 'Danilo Family', 5000, '0', '0', '0', NULL, NULL),
(1132, 1132, 'Eddie Family', 3000, '0', '0', '0', NULL, NULL),
(1133, 1133, 'Clyde Family', 15000, '0', '0', '0', NULL, NULL),
(1134, 1134, 'Raul Family', 10000, '0', '0', '0', NULL, NULL),
(1135, 1135, 'Conchita Family', 13000, '0', '0', '0', NULL, NULL),
(1136, 1136, 'Alawya Family', 25000, '0', '0', '0', NULL, NULL),
(1137, 1137, 'Gillerma Family', 8000, '0', '0', '0', NULL, NULL),
(1138, 1138, 'Eddie Family', 3000, '0', '0', '0', NULL, NULL),
(1139, 1139, 'Ernesto Family', 5000, '0', '0', '0', NULL, NULL),
(1140, 1140, 'Catalino Family', 20000, '0', '0', '0', NULL, NULL),
(1141, 1141, 'Rafael Family', 10000, '0', '0', '0', NULL, NULL),
(1142, 1142, 'Catalina Family', 3000, '0', '0', '0', NULL, NULL),
(1143, 1143, 'Cristina Family', 17000, '0', '0', '0', NULL, NULL),
(1144, 1144, 'Julius_sr Family', 6000, '0', '0', '0', NULL, NULL),
(1145, 1145, 'Rizalina Family', 3000, '0', '0', '0', NULL, NULL),
(1146, 1146, 'Lamberto Family', 7000, '0', '0', '0', NULL, NULL),
(1147, 1147, 'Rafael Family', 13000, '0', '0', '0', NULL, NULL),
(1148, 1148, 'Winona Family', 30000, '0', '0', '0', NULL, NULL),
(1149, 1149, 'Virginia Family', 18000, '0', '0', '0', NULL, NULL),
(1150, 1150, 'Christy Family', 3000, '0', '0', '0', NULL, NULL),
(1151, 1151, 'Eduardo Family', 4500, '0', '0', '0', NULL, NULL),
(1152, 1152, 'Godofredo_Sr. Family', 20000, '0', '0', '0', NULL, NULL),
(1153, 1153, 'Samson_Jr Family', 50000, '0', '0', '0', NULL, NULL),
(1154, 1154, 'Mark Family', 3000, '0', '0', '0', NULL, NULL),
(1155, 1155, 'Patricio_jr Family', 30000, '0', '0', '0', NULL, NULL),
(1156, 1156, 'Ronald Family', 3000, '0', '0', '0', NULL, NULL),
(1157, 1157, 'Nazario_jr Family', 18000, '0', '0', '0', NULL, NULL),
(1158, 1158, 'Emma Family', 7000, '0', '0', '0', NULL, NULL),
(1159, 1159, 'Danilo Family', 6000, '0', '0', '0', NULL, NULL),
(1160, 1160, 'Carlito Family', 7000, '0', '0', '0', NULL, NULL),
(1161, 1161, 'Jeck Family', 0, '0', '0', '0', NULL, NULL),
(1162, 1162, 'John Family', 16000, '0', '0', '0', NULL, NULL),
(1163, 1163, 'Allan Family', 20000, '0', '0', '0', NULL, NULL),
(1164, 1164, 'Dante Family', 10000, '0', '0', '0', NULL, NULL),
(1165, 1165, 'Guidion Family', 18000, '0', '0', '0', NULL, NULL),
(1166, 1166, 'Arnold Family', 10000, '0', '0', '0', NULL, NULL),
(1167, 1167, 'Sherwin Family', 8000, '0', '0', '0', NULL, NULL),
(1168, 1168, 'Elmer Family', 11000, '0', '0', '0', NULL, NULL),
(1169, 1169, 'Lomesindo Family', 20000, '0', '0', '0', NULL, NULL),
(1170, 1170, 'Claro Family', 37000, '0', '0', '0', NULL, NULL),
(1171, 1171, 'Radja_Ali Family', 15000, '0', '0', '0', NULL, NULL),
(1172, 1172, 'Ibrahim Family', 40000, '0', '0', '0', NULL, NULL),
(1173, 1173, 'Bayani Family', 3000, '0', '0', '0', NULL, NULL),
(1174, 1174, 'Leo_Richard Family', 30000, '0', '0', '0', NULL, NULL),
(1175, 1175, 'Adonis Family', 20000, '0', '0', '0', NULL, NULL),
(1176, 1176, 'Myrna Family', 61000, '0', '0', '0', NULL, NULL),
(1177, 1177, 'Joffrey Family', 3000, '0', '0', '0', NULL, NULL),
(1178, 1178, 'Henrietto Family', 30000, '0', '0', '0', NULL, NULL),
(1179, 1179, 'Cipriano Family', 13000, '0', '0', '0', NULL, NULL),
(1180, 1180, 'Al\'annuar Family', 30000, '0', '0', '0', NULL, NULL),
(1181, 1181, 'Vicente Family', 11000, '0', '0', '0', NULL, NULL),
(1182, 1182, 'Trinidad Family', 10000, '0', '0', '0', NULL, NULL),
(1183, 1183, 'Victoria Family', 30000, '0', '0', '0', NULL, NULL),
(1184, 1184, 'Andres_jr Family', 10000, '0', '0', '0', NULL, NULL),
(1185, 1185, 'Judy Family', 10000, '0', '0', '0', NULL, NULL),
(1186, 1186, 'Angelito Family', 1500, '0', '0', '0', NULL, NULL),
(1187, 1187, 'Ranolfo Family', 4500, '0', '0', '0', NULL, NULL),
(1188, 1188, 'Jessie Family', 3500, '0', '0', '0', NULL, NULL),
(1189, 1189, 'Alfredo Family', 14000, '0', '0', '0', NULL, NULL),
(1190, 1190, 'Randy Family', 3000, '0', '0', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `family_id` int(10) UNSIGNED NOT NULL,
  `resident_id` int(10) UNSIGNED NOT NULL,
  `relation_head` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `family_members`
--

INSERT INTO `family_members` (`family_id`, `resident_id`, `relation_head`, `created_at`, `updated_at`) VALUES
(1, 1, '', NULL, NULL),
(2, 2, '', NULL, NULL),
(3, 3, '', NULL, NULL),
(4, 4, '', NULL, NULL),
(5, 5, '', NULL, NULL),
(6, 6, '', NULL, NULL),
(7, 7, '', NULL, NULL),
(8, 8, '', NULL, NULL),
(9, 9, '', NULL, NULL),
(10, 10, '', NULL, NULL),
(11, 11, '', NULL, NULL),
(12, 12, '', NULL, NULL),
(13, 13, '', NULL, NULL),
(14, 14, '', NULL, NULL),
(15, 15, '', NULL, NULL),
(16, 16, '', NULL, NULL),
(17, 17, '', NULL, NULL),
(18, 18, '', NULL, NULL),
(19, 19, '', NULL, NULL),
(20, 20, '', NULL, NULL),
(21, 21, '', NULL, NULL),
(22, 22, '', NULL, NULL),
(23, 23, '', NULL, NULL),
(24, 24, '', NULL, NULL),
(25, 25, '', NULL, NULL),
(26, 26, '', NULL, NULL),
(27, 27, '', NULL, NULL),
(28, 28, '', NULL, NULL),
(29, 29, '', NULL, NULL),
(30, 30, '', NULL, NULL),
(31, 31, '', NULL, NULL),
(32, 32, '', NULL, NULL),
(33, 33, '', NULL, NULL),
(34, 34, '', NULL, NULL),
(35, 35, '', NULL, NULL),
(36, 36, '', NULL, NULL),
(37, 37, '', NULL, NULL),
(38, 38, '', NULL, NULL),
(39, 39, '', NULL, NULL),
(40, 40, '', NULL, NULL),
(41, 41, '', NULL, NULL),
(42, 42, '', NULL, NULL),
(43, 43, '', NULL, NULL),
(44, 44, '', NULL, NULL),
(45, 45, '', NULL, NULL),
(46, 46, '', NULL, NULL),
(47, 47, '', NULL, NULL),
(48, 48, '', NULL, NULL),
(49, 49, '', NULL, NULL),
(50, 50, '', NULL, NULL),
(51, 51, '', NULL, NULL),
(52, 52, '', NULL, NULL),
(53, 53, '', NULL, NULL),
(54, 54, '', NULL, NULL),
(55, 55, '', NULL, NULL),
(56, 56, '', NULL, NULL),
(57, 57, '', NULL, NULL),
(58, 58, '', NULL, NULL),
(59, 59, '', NULL, NULL),
(60, 60, '', NULL, NULL),
(61, 61, '', NULL, NULL),
(62, 62, '', NULL, NULL),
(63, 63, '', NULL, NULL),
(64, 64, '', NULL, NULL),
(65, 65, '', NULL, NULL),
(66, 66, '', NULL, NULL),
(67, 67, '', NULL, NULL),
(68, 68, '', NULL, NULL),
(69, 69, '', NULL, NULL),
(70, 70, '', NULL, NULL),
(71, 71, '', NULL, NULL),
(72, 72, '', NULL, NULL),
(73, 73, '', NULL, NULL),
(74, 74, '', NULL, NULL),
(75, 75, '', NULL, NULL),
(76, 76, '', NULL, NULL),
(77, 77, '', NULL, NULL),
(78, 78, '', NULL, NULL),
(79, 79, '', NULL, NULL),
(80, 80, '', NULL, NULL),
(81, 81, '', NULL, NULL),
(82, 82, '', NULL, NULL),
(83, 83, '', NULL, NULL),
(84, 84, '', NULL, NULL),
(85, 85, '', NULL, NULL),
(86, 86, '', NULL, NULL),
(87, 87, '', NULL, NULL),
(88, 88, '', NULL, NULL),
(89, 89, '', NULL, NULL),
(90, 90, '', NULL, NULL),
(91, 91, '', NULL, NULL),
(92, 92, '', NULL, NULL),
(93, 93, '', NULL, NULL),
(94, 94, '', NULL, NULL),
(95, 95, '', NULL, NULL),
(96, 96, '', NULL, NULL),
(97, 97, '', NULL, NULL),
(98, 98, '', NULL, NULL),
(99, 99, '', NULL, NULL),
(100, 100, '', NULL, NULL),
(101, 101, '', NULL, NULL),
(102, 102, '', NULL, NULL),
(103, 103, '', NULL, NULL),
(104, 104, '', NULL, NULL),
(105, 105, '', NULL, NULL),
(106, 106, '', NULL, NULL),
(107, 107, '', NULL, NULL),
(108, 108, '', NULL, NULL),
(109, 109, '', NULL, NULL),
(110, 110, '', NULL, NULL),
(111, 111, '', NULL, NULL),
(112, 112, '', NULL, NULL),
(113, 113, '', NULL, NULL),
(114, 114, '', NULL, NULL),
(115, 115, '', NULL, NULL),
(116, 116, '', NULL, NULL),
(117, 117, '', NULL, NULL),
(118, 118, '', NULL, NULL),
(119, 119, '', NULL, NULL),
(120, 120, '', NULL, NULL),
(121, 121, '', NULL, NULL),
(122, 122, '', NULL, NULL),
(123, 123, '', NULL, NULL),
(124, 124, '', NULL, NULL),
(125, 125, '', NULL, NULL),
(126, 126, '', NULL, NULL),
(127, 127, '', NULL, NULL),
(128, 128, '', NULL, NULL),
(129, 129, '', NULL, NULL),
(130, 130, '', NULL, NULL),
(131, 131, '', NULL, NULL),
(132, 132, '', NULL, NULL),
(133, 133, '', NULL, NULL),
(134, 134, '', NULL, NULL),
(135, 135, '', NULL, NULL),
(136, 136, '', NULL, NULL),
(137, 137, '', NULL, NULL),
(138, 138, '', NULL, NULL),
(139, 139, '', NULL, NULL),
(140, 140, '', NULL, NULL),
(141, 141, '', NULL, NULL),
(142, 142, '', NULL, NULL),
(143, 143, '', NULL, NULL),
(144, 144, '', NULL, NULL),
(145, 145, '', NULL, NULL),
(146, 146, '', NULL, NULL),
(147, 147, '', NULL, NULL),
(148, 148, '', NULL, NULL),
(149, 149, '', NULL, NULL),
(150, 150, '', NULL, NULL),
(151, 151, '', NULL, NULL),
(152, 152, '', NULL, NULL),
(153, 153, '', NULL, NULL),
(154, 154, '', NULL, NULL),
(155, 155, '', NULL, NULL),
(156, 156, '', NULL, NULL),
(157, 157, '', NULL, NULL),
(158, 158, '', NULL, NULL),
(159, 159, '', NULL, NULL),
(160, 160, '', NULL, NULL),
(161, 161, '', NULL, NULL),
(162, 162, '', NULL, NULL),
(163, 163, '', NULL, NULL),
(164, 164, '', NULL, NULL),
(165, 165, '', NULL, NULL),
(166, 166, '', NULL, NULL),
(167, 167, '', NULL, NULL),
(168, 168, '', NULL, NULL),
(169, 169, '', NULL, NULL),
(170, 170, '', NULL, NULL),
(171, 171, '', NULL, NULL),
(172, 172, '', NULL, NULL),
(173, 173, '', NULL, NULL),
(174, 174, '', NULL, NULL),
(175, 175, '', NULL, NULL),
(176, 176, '', NULL, NULL),
(177, 177, '', NULL, NULL),
(178, 178, '', NULL, NULL),
(179, 179, '', NULL, NULL),
(180, 180, '', NULL, NULL),
(181, 181, '', NULL, NULL),
(182, 182, '', NULL, NULL),
(183, 183, '', NULL, NULL),
(184, 184, '', NULL, NULL),
(185, 185, '', NULL, NULL),
(186, 186, '', NULL, NULL),
(187, 187, '', NULL, NULL),
(188, 188, '', NULL, NULL),
(189, 189, '', NULL, NULL),
(190, 190, '', NULL, NULL),
(191, 191, '', NULL, NULL),
(192, 192, '', NULL, NULL),
(193, 193, '', NULL, NULL),
(194, 194, '', NULL, NULL),
(195, 195, '', NULL, NULL),
(196, 196, '', NULL, NULL),
(197, 197, '', NULL, NULL),
(198, 198, '', NULL, NULL),
(199, 199, '', NULL, NULL),
(200, 200, '', NULL, NULL),
(201, 201, '', NULL, NULL),
(202, 202, '', NULL, NULL),
(203, 203, '', NULL, NULL),
(204, 204, '', NULL, NULL),
(205, 205, '', NULL, NULL),
(206, 206, '', NULL, NULL),
(207, 207, '', NULL, NULL),
(208, 208, '', NULL, NULL),
(209, 209, '', NULL, NULL),
(210, 210, '', NULL, NULL),
(211, 211, '', NULL, NULL),
(212, 212, '', NULL, NULL),
(213, 213, '', NULL, NULL),
(214, 214, '', NULL, NULL),
(215, 215, '', NULL, NULL),
(216, 216, '', NULL, NULL),
(217, 217, '', NULL, NULL),
(218, 218, '', NULL, NULL),
(219, 219, '', NULL, NULL),
(220, 220, '', NULL, NULL),
(221, 221, '', NULL, NULL),
(222, 222, '', NULL, NULL),
(223, 223, '', NULL, NULL),
(224, 224, '', NULL, NULL),
(225, 225, '', NULL, NULL),
(226, 226, '', NULL, NULL),
(227, 227, '', NULL, NULL),
(228, 228, '', NULL, NULL),
(229, 229, '', NULL, NULL),
(230, 230, '', NULL, NULL),
(231, 231, '', NULL, NULL),
(232, 232, '', NULL, NULL),
(233, 233, '', NULL, NULL),
(234, 234, '', NULL, NULL),
(235, 235, '', NULL, NULL),
(236, 236, '', NULL, NULL),
(237, 237, '', NULL, NULL),
(238, 238, '', NULL, NULL),
(239, 239, '', NULL, NULL),
(240, 240, '', NULL, NULL),
(241, 241, '', NULL, NULL),
(242, 242, '', NULL, NULL),
(243, 243, '', NULL, NULL),
(244, 244, '', NULL, NULL),
(245, 245, '', NULL, NULL),
(246, 246, '', NULL, NULL),
(247, 247, '', NULL, NULL),
(248, 248, '', NULL, NULL),
(249, 249, '', NULL, NULL),
(250, 250, '', NULL, NULL),
(251, 251, '', NULL, NULL),
(252, 252, '', NULL, NULL),
(253, 253, '', NULL, NULL),
(254, 254, '', NULL, NULL),
(255, 255, '', NULL, NULL),
(256, 256, '', NULL, NULL),
(257, 257, '', NULL, NULL),
(258, 258, '', NULL, NULL),
(259, 259, '', NULL, NULL),
(260, 260, '', NULL, NULL),
(261, 261, '', NULL, NULL),
(262, 262, '', NULL, NULL),
(263, 263, '', NULL, NULL),
(264, 264, '', NULL, NULL),
(265, 265, '', NULL, NULL),
(266, 266, '', NULL, NULL),
(267, 267, '', NULL, NULL),
(268, 268, '', NULL, NULL),
(269, 269, '', NULL, NULL),
(270, 270, '', NULL, NULL),
(271, 271, '', NULL, NULL),
(272, 272, '', NULL, NULL),
(273, 273, '', NULL, NULL),
(274, 274, '', NULL, NULL),
(275, 275, '', NULL, NULL),
(276, 276, '', NULL, NULL),
(277, 277, '', NULL, NULL),
(278, 278, '', NULL, NULL),
(279, 279, '', NULL, NULL),
(280, 280, '', NULL, NULL),
(281, 281, '', NULL, NULL),
(282, 282, '', NULL, NULL),
(283, 283, '', NULL, NULL),
(284, 284, '', NULL, NULL),
(285, 285, '', NULL, NULL),
(286, 286, '', NULL, NULL),
(287, 287, '', NULL, NULL),
(288, 288, '', NULL, NULL),
(289, 289, '', NULL, NULL),
(290, 290, '', NULL, NULL),
(291, 291, '', NULL, NULL),
(292, 292, '', NULL, NULL),
(293, 293, '', NULL, NULL),
(294, 294, '', NULL, NULL),
(295, 295, '', NULL, NULL),
(296, 296, '', NULL, NULL),
(297, 297, '', NULL, NULL),
(298, 298, '', NULL, NULL),
(299, 299, '', NULL, NULL),
(300, 300, '', NULL, NULL),
(301, 301, '', NULL, NULL),
(302, 302, '', NULL, NULL),
(303, 303, '', NULL, NULL),
(304, 304, '', NULL, NULL),
(305, 305, '', NULL, NULL),
(306, 306, '', NULL, NULL),
(307, 307, '', NULL, NULL),
(308, 308, '', NULL, NULL),
(309, 309, '', NULL, NULL),
(310, 310, '', NULL, NULL),
(311, 311, '', NULL, NULL),
(312, 312, '', NULL, NULL),
(313, 313, '', NULL, NULL),
(314, 314, '', NULL, NULL),
(315, 315, '', NULL, NULL),
(316, 316, '', NULL, NULL),
(317, 317, '', NULL, NULL),
(318, 318, '', NULL, NULL),
(319, 319, '', NULL, NULL),
(320, 320, '', NULL, NULL),
(321, 321, '', NULL, NULL),
(322, 322, '', NULL, NULL),
(323, 323, '', NULL, NULL),
(324, 324, '', NULL, NULL),
(325, 325, '', NULL, NULL),
(326, 326, '', NULL, NULL),
(327, 327, '', NULL, NULL),
(328, 328, '', NULL, NULL),
(329, 329, '', NULL, NULL),
(330, 330, '', NULL, NULL),
(331, 331, '', NULL, NULL),
(332, 332, '', NULL, NULL),
(333, 333, '', NULL, NULL),
(334, 334, '', NULL, NULL),
(335, 335, '', NULL, NULL),
(336, 336, '', NULL, NULL),
(337, 337, '', NULL, NULL),
(338, 338, '', NULL, NULL),
(339, 339, '', NULL, NULL),
(340, 340, '', NULL, NULL),
(341, 341, '', NULL, NULL),
(342, 342, '', NULL, NULL),
(343, 343, '', NULL, NULL),
(344, 344, '', NULL, NULL),
(345, 345, '', NULL, NULL),
(346, 346, '', NULL, NULL),
(347, 347, '', NULL, NULL),
(348, 348, '', NULL, NULL),
(349, 349, '', NULL, NULL),
(350, 350, '', NULL, NULL),
(351, 351, '', NULL, NULL),
(352, 352, '', NULL, NULL),
(353, 353, '', NULL, NULL),
(354, 354, '', NULL, NULL),
(355, 355, '', NULL, NULL),
(356, 356, '', NULL, NULL),
(357, 357, '', NULL, NULL),
(358, 358, '', NULL, NULL),
(359, 359, '', NULL, NULL),
(360, 360, '', NULL, NULL),
(361, 361, '', NULL, NULL),
(362, 362, '', NULL, NULL),
(363, 363, '', NULL, NULL),
(364, 364, '', NULL, NULL),
(365, 365, '', NULL, NULL),
(366, 366, '', NULL, NULL),
(367, 367, '', NULL, NULL),
(368, 368, '', NULL, NULL),
(369, 369, '', NULL, NULL),
(370, 370, '', NULL, NULL),
(371, 371, '', NULL, NULL),
(372, 372, '', NULL, NULL),
(373, 373, '', NULL, NULL),
(374, 374, '', NULL, NULL),
(375, 375, '', NULL, NULL),
(376, 376, '', NULL, NULL),
(377, 377, '', NULL, NULL),
(378, 378, '', NULL, NULL),
(379, 379, '', NULL, NULL),
(380, 380, '', NULL, NULL),
(381, 381, '', NULL, NULL),
(382, 382, '', NULL, NULL),
(383, 383, '', NULL, NULL),
(384, 384, '', NULL, NULL),
(385, 385, '', NULL, NULL),
(386, 386, '', NULL, NULL),
(387, 387, '', NULL, NULL),
(388, 388, '', NULL, NULL),
(389, 389, '', NULL, NULL),
(390, 390, '', NULL, NULL),
(391, 391, '', NULL, NULL),
(392, 392, '', NULL, NULL),
(393, 393, '', NULL, NULL),
(394, 394, '', NULL, NULL),
(395, 395, '', NULL, NULL),
(396, 396, '', NULL, NULL),
(397, 397, '', NULL, NULL),
(398, 398, '', NULL, NULL),
(399, 399, '', NULL, NULL),
(400, 400, '', NULL, NULL),
(401, 401, '', NULL, NULL),
(402, 402, '', NULL, NULL),
(403, 403, '', NULL, NULL),
(404, 404, '', NULL, NULL),
(405, 405, '', NULL, NULL),
(406, 406, '', NULL, NULL),
(407, 407, '', NULL, NULL),
(408, 408, '', NULL, NULL),
(409, 409, '', NULL, NULL),
(410, 410, '', NULL, NULL),
(411, 411, '', NULL, NULL),
(412, 412, '', NULL, NULL),
(413, 413, '', NULL, NULL),
(414, 414, '', NULL, NULL),
(415, 415, '', NULL, NULL),
(416, 416, '', NULL, NULL),
(417, 417, '', NULL, NULL),
(418, 418, '', NULL, NULL),
(419, 419, '', NULL, NULL),
(420, 420, '', NULL, NULL),
(421, 421, '', NULL, NULL),
(422, 422, '', NULL, NULL),
(423, 423, '', NULL, NULL),
(424, 424, '', NULL, NULL),
(425, 425, '', NULL, NULL),
(426, 426, '', NULL, NULL),
(427, 427, '', NULL, NULL),
(428, 428, '', NULL, NULL),
(429, 429, '', NULL, NULL),
(430, 430, '', NULL, NULL),
(431, 431, '', NULL, NULL),
(432, 432, '', NULL, NULL),
(433, 433, '', NULL, NULL),
(434, 434, '', NULL, NULL),
(435, 435, '', NULL, NULL),
(436, 436, '', NULL, NULL),
(437, 437, '', NULL, NULL),
(438, 438, '', NULL, NULL),
(439, 439, '', NULL, NULL),
(440, 440, '', NULL, NULL),
(441, 441, '', NULL, NULL),
(442, 442, '', NULL, NULL),
(443, 443, '', NULL, NULL),
(444, 444, '', NULL, NULL),
(445, 445, '', NULL, NULL),
(446, 446, '', NULL, NULL),
(447, 447, '', NULL, NULL),
(448, 448, '', NULL, NULL),
(449, 449, '', NULL, NULL),
(450, 450, '', NULL, NULL),
(451, 451, '', NULL, NULL),
(452, 452, '', NULL, NULL),
(453, 453, '', NULL, NULL),
(454, 454, '', NULL, NULL),
(455, 455, '', NULL, NULL),
(456, 456, '', NULL, NULL),
(457, 457, '', NULL, NULL),
(458, 458, '', NULL, NULL),
(459, 459, '', NULL, NULL),
(460, 460, '', NULL, NULL),
(461, 461, '', NULL, NULL),
(462, 462, '', NULL, NULL),
(463, 463, '', NULL, NULL),
(464, 464, '', NULL, NULL),
(465, 465, '', NULL, NULL),
(466, 466, '', NULL, NULL),
(467, 467, '', NULL, NULL),
(468, 468, '', NULL, NULL),
(469, 469, '', NULL, NULL),
(470, 470, '', NULL, NULL),
(471, 471, '', NULL, NULL),
(472, 472, '', NULL, NULL),
(473, 473, '', NULL, NULL),
(474, 474, '', NULL, NULL),
(475, 475, '', NULL, NULL),
(476, 476, '', NULL, NULL),
(477, 477, '', NULL, NULL),
(478, 478, '', NULL, NULL),
(479, 479, '', NULL, NULL),
(480, 480, '', NULL, NULL),
(481, 481, '', NULL, NULL),
(482, 482, '', NULL, NULL),
(483, 483, '', NULL, NULL),
(484, 484, '', NULL, NULL),
(485, 485, '', NULL, NULL),
(486, 486, '', NULL, NULL),
(487, 487, '', NULL, NULL),
(488, 488, '', NULL, NULL),
(489, 489, '', NULL, NULL),
(490, 490, '', NULL, NULL),
(491, 491, '', NULL, NULL),
(492, 492, '', NULL, NULL),
(493, 493, '', NULL, NULL),
(494, 494, '', NULL, NULL),
(495, 495, '', NULL, NULL),
(496, 496, '', NULL, NULL),
(497, 497, '', NULL, NULL),
(498, 498, '', NULL, NULL),
(499, 499, '', NULL, NULL),
(500, 500, '', NULL, NULL),
(501, 501, '', NULL, NULL),
(502, 502, '', NULL, NULL),
(503, 503, '', NULL, NULL),
(504, 504, '', NULL, NULL),
(505, 505, '', NULL, NULL),
(506, 506, '', NULL, NULL),
(507, 507, '', NULL, NULL),
(508, 508, '', NULL, NULL),
(509, 509, '', NULL, NULL),
(510, 510, '', NULL, NULL),
(511, 511, '', NULL, NULL),
(512, 512, '', NULL, NULL),
(513, 513, '', NULL, NULL),
(514, 514, '', NULL, NULL),
(515, 515, '', NULL, NULL),
(516, 516, '', NULL, NULL),
(517, 517, '', NULL, NULL),
(518, 518, '', NULL, NULL),
(519, 519, '', NULL, NULL),
(520, 520, '', NULL, NULL),
(521, 521, '', NULL, NULL),
(522, 522, '', NULL, NULL),
(523, 523, '', NULL, NULL),
(524, 524, '', NULL, NULL),
(525, 525, '', NULL, NULL),
(526, 526, '', NULL, NULL),
(527, 527, '', NULL, NULL),
(528, 528, '', NULL, NULL),
(529, 529, '', NULL, NULL),
(530, 530, '', NULL, NULL),
(531, 531, '', NULL, NULL),
(532, 532, '', NULL, NULL),
(533, 533, '', NULL, NULL),
(534, 534, '', NULL, NULL),
(535, 535, '', NULL, NULL),
(536, 536, '', NULL, NULL),
(537, 537, '', NULL, NULL),
(538, 538, '', NULL, NULL),
(539, 539, '', NULL, NULL),
(540, 540, '', NULL, NULL),
(541, 541, '', NULL, NULL),
(542, 542, '', NULL, NULL),
(543, 543, '', NULL, NULL),
(544, 544, '', NULL, NULL),
(545, 545, '', NULL, NULL),
(546, 546, '', NULL, NULL),
(547, 547, '', NULL, NULL),
(548, 548, '', NULL, NULL),
(549, 549, '', NULL, NULL),
(550, 550, '', NULL, NULL),
(551, 551, '', NULL, NULL),
(552, 552, '', NULL, NULL),
(553, 553, '', NULL, NULL),
(554, 554, '', NULL, NULL),
(555, 555, '', NULL, NULL),
(556, 556, '', NULL, NULL),
(557, 557, '', NULL, NULL),
(558, 558, '', NULL, NULL),
(559, 559, '', NULL, NULL),
(560, 560, '', NULL, NULL),
(561, 561, '', NULL, NULL),
(562, 562, '', NULL, NULL),
(563, 563, '', NULL, NULL),
(564, 564, '', NULL, NULL),
(565, 565, '', NULL, NULL),
(566, 566, '', NULL, NULL),
(567, 567, '', NULL, NULL),
(568, 568, '', NULL, NULL),
(569, 569, '', NULL, NULL),
(570, 570, '', NULL, NULL),
(571, 571, '', NULL, NULL),
(572, 572, '', NULL, NULL),
(573, 573, '', NULL, NULL),
(574, 574, '', NULL, NULL),
(575, 575, '', NULL, NULL),
(576, 576, '', NULL, NULL),
(577, 577, '', NULL, NULL),
(578, 578, '', NULL, NULL),
(579, 579, '', NULL, NULL),
(580, 580, '', NULL, NULL),
(581, 581, '', NULL, NULL),
(582, 582, '', NULL, NULL),
(583, 583, '', NULL, NULL),
(584, 584, '', NULL, NULL),
(585, 585, '', NULL, NULL),
(586, 586, '', NULL, NULL),
(587, 587, '', NULL, NULL),
(588, 588, '', NULL, NULL),
(589, 589, '', NULL, NULL),
(590, 590, '', NULL, NULL),
(591, 591, '', NULL, NULL),
(592, 592, '', NULL, NULL),
(593, 593, '', NULL, NULL),
(594, 594, '', NULL, NULL),
(595, 595, '', NULL, NULL),
(596, 596, '', NULL, NULL),
(597, 597, '', NULL, NULL),
(598, 598, '', NULL, NULL),
(599, 599, '', NULL, NULL),
(600, 600, '', NULL, NULL),
(601, 601, '', NULL, NULL),
(602, 602, '', NULL, NULL),
(603, 603, '', NULL, NULL),
(604, 604, '', NULL, NULL),
(605, 605, '', NULL, NULL),
(606, 606, '', NULL, NULL),
(607, 607, '', NULL, NULL),
(608, 608, '', NULL, NULL),
(609, 609, '', NULL, NULL),
(610, 610, '', NULL, NULL),
(611, 611, '', NULL, NULL),
(612, 612, '', NULL, NULL),
(613, 613, '', NULL, NULL),
(614, 614, '', NULL, NULL),
(615, 615, '', NULL, NULL),
(616, 616, '', NULL, NULL),
(617, 617, '', NULL, NULL),
(618, 618, '', NULL, NULL),
(619, 619, '', NULL, NULL),
(620, 620, '', NULL, NULL),
(621, 621, '', NULL, NULL),
(622, 622, '', NULL, NULL),
(623, 623, '', NULL, NULL),
(624, 624, '', NULL, NULL),
(625, 625, '', NULL, NULL),
(626, 626, '', NULL, NULL),
(627, 627, '', NULL, NULL),
(628, 628, '', NULL, NULL),
(629, 629, '', NULL, NULL),
(630, 630, '', NULL, NULL),
(631, 631, '', NULL, NULL),
(632, 632, '', NULL, NULL),
(633, 633, '', NULL, NULL),
(634, 634, '', NULL, NULL),
(635, 635, '', NULL, NULL),
(636, 636, '', NULL, NULL),
(637, 637, '', NULL, NULL),
(638, 638, '', NULL, NULL),
(639, 639, '', NULL, NULL),
(640, 640, '', NULL, NULL),
(641, 641, '', NULL, NULL),
(642, 642, '', NULL, NULL),
(643, 643, '', NULL, NULL),
(644, 644, '', NULL, NULL),
(645, 645, '', NULL, NULL),
(646, 646, '', NULL, NULL),
(647, 647, '', NULL, NULL),
(648, 648, '', NULL, NULL),
(649, 649, '', NULL, NULL),
(650, 650, '', NULL, NULL),
(651, 651, '', NULL, NULL),
(652, 652, '', NULL, NULL),
(653, 653, '', NULL, NULL),
(654, 654, '', NULL, NULL),
(655, 655, '', NULL, NULL),
(656, 656, '', NULL, NULL),
(657, 657, '', NULL, NULL),
(658, 658, '', NULL, NULL),
(659, 659, '', NULL, NULL),
(660, 660, '', NULL, NULL),
(661, 661, '', NULL, NULL),
(662, 662, '', NULL, NULL),
(663, 663, '', NULL, NULL),
(664, 664, '', NULL, NULL),
(665, 665, '', NULL, NULL),
(666, 666, '', NULL, NULL),
(667, 667, '', NULL, NULL),
(668, 668, '', NULL, NULL),
(669, 669, '', NULL, NULL),
(670, 670, '', NULL, NULL),
(671, 671, '', NULL, NULL),
(672, 672, '', NULL, NULL),
(673, 673, '', NULL, NULL),
(674, 674, '', NULL, NULL),
(675, 675, '', NULL, NULL),
(676, 676, '', NULL, NULL),
(677, 677, '', NULL, NULL),
(678, 678, '', NULL, NULL),
(679, 679, '', NULL, NULL),
(680, 680, '', NULL, NULL),
(681, 681, '', NULL, NULL),
(682, 682, '', NULL, NULL),
(683, 683, '', NULL, NULL),
(684, 684, '', NULL, NULL),
(685, 685, '', NULL, NULL),
(686, 686, '', NULL, NULL),
(687, 687, '', NULL, NULL),
(688, 688, '', NULL, NULL),
(689, 689, '', NULL, NULL),
(690, 690, '', NULL, NULL),
(691, 691, '', NULL, NULL),
(692, 692, '', NULL, NULL),
(693, 693, '', NULL, NULL),
(694, 694, '', NULL, NULL),
(695, 695, '', NULL, NULL),
(696, 696, '', NULL, NULL),
(697, 697, '', NULL, NULL),
(698, 698, '', NULL, NULL),
(699, 699, '', NULL, NULL),
(700, 700, '', NULL, NULL),
(701, 701, '', NULL, NULL),
(702, 702, '', NULL, NULL),
(703, 703, '', NULL, NULL),
(704, 704, '', NULL, NULL),
(705, 705, '', NULL, NULL),
(706, 706, '', NULL, NULL),
(707, 707, '', NULL, NULL),
(708, 708, '', NULL, NULL),
(709, 709, '', NULL, NULL),
(710, 710, '', NULL, NULL),
(711, 711, '', NULL, NULL),
(712, 712, '', NULL, NULL),
(713, 713, '', NULL, NULL),
(714, 714, '', NULL, NULL),
(715, 715, '', NULL, NULL),
(716, 716, '', NULL, NULL),
(717, 717, '', NULL, NULL),
(718, 718, '', NULL, NULL),
(719, 719, '', NULL, NULL),
(720, 720, '', NULL, NULL),
(721, 721, '', NULL, NULL),
(722, 722, '', NULL, NULL),
(723, 723, '', NULL, NULL),
(724, 724, '', NULL, NULL),
(725, 725, '', NULL, NULL),
(726, 726, '', NULL, NULL),
(727, 727, '', NULL, NULL),
(728, 728, '', NULL, NULL),
(729, 729, '', NULL, NULL),
(730, 730, '', NULL, NULL),
(731, 731, '', NULL, NULL),
(732, 732, '', NULL, NULL),
(733, 733, '', NULL, NULL),
(734, 734, '', NULL, NULL),
(735, 735, '', NULL, NULL),
(736, 736, '', NULL, NULL),
(737, 737, '', NULL, NULL),
(738, 738, '', NULL, NULL),
(739, 739, '', NULL, NULL),
(740, 740, '', NULL, NULL),
(741, 741, '', NULL, NULL),
(742, 742, '', NULL, NULL),
(743, 743, '', NULL, NULL),
(744, 744, '', NULL, NULL),
(745, 745, '', NULL, NULL),
(746, 746, '', NULL, NULL),
(747, 747, '', NULL, NULL),
(748, 748, '', NULL, NULL),
(749, 749, '', NULL, NULL),
(750, 750, '', NULL, NULL),
(751, 751, '', NULL, NULL),
(752, 752, '', NULL, NULL),
(753, 753, '', NULL, NULL),
(754, 754, '', NULL, NULL),
(755, 755, '', NULL, NULL),
(756, 756, '', NULL, NULL),
(757, 757, '', NULL, NULL),
(758, 758, '', NULL, NULL),
(759, 759, '', NULL, NULL),
(760, 760, '', NULL, NULL),
(761, 761, '', NULL, NULL),
(762, 762, '', NULL, NULL),
(763, 763, '', NULL, NULL),
(764, 764, '', NULL, NULL),
(765, 765, '', NULL, NULL),
(766, 766, '', NULL, NULL),
(767, 767, '', NULL, NULL),
(768, 768, '', NULL, NULL),
(769, 769, '', NULL, NULL),
(770, 770, '', NULL, NULL),
(771, 771, '', NULL, NULL),
(772, 772, '', NULL, NULL),
(773, 773, '', NULL, NULL),
(774, 774, '', NULL, NULL),
(775, 775, '', NULL, NULL),
(776, 776, '', NULL, NULL),
(777, 777, '', NULL, NULL),
(778, 778, '', NULL, NULL),
(779, 779, '', NULL, NULL),
(780, 780, '', NULL, NULL),
(781, 781, '', NULL, NULL),
(782, 782, '', NULL, NULL),
(783, 783, '', NULL, NULL),
(784, 784, '', NULL, NULL),
(785, 785, '', NULL, NULL),
(786, 786, '', NULL, NULL),
(787, 787, '', NULL, NULL),
(788, 788, '', NULL, NULL),
(789, 789, '', NULL, NULL),
(790, 790, '', NULL, NULL),
(791, 791, '', NULL, NULL),
(792, 792, '', NULL, NULL),
(793, 793, '', NULL, NULL),
(794, 794, '', NULL, NULL),
(795, 795, '', NULL, NULL),
(796, 796, '', NULL, NULL),
(797, 797, '', NULL, NULL),
(798, 798, '', NULL, NULL),
(799, 799, '', NULL, NULL),
(800, 800, '', NULL, NULL),
(801, 801, '', NULL, NULL),
(802, 802, '', NULL, NULL),
(803, 803, '', NULL, NULL),
(804, 804, '', NULL, NULL),
(805, 805, '', NULL, NULL),
(806, 806, '', NULL, NULL),
(807, 807, '', NULL, NULL),
(808, 808, '', NULL, NULL),
(809, 809, '', NULL, NULL),
(810, 810, '', NULL, NULL),
(811, 811, '', NULL, NULL),
(812, 812, '', NULL, NULL),
(813, 813, '', NULL, NULL),
(814, 814, '', NULL, NULL),
(815, 815, '', NULL, NULL),
(816, 816, '', NULL, NULL),
(817, 817, '', NULL, NULL),
(818, 818, '', NULL, NULL),
(819, 819, '', NULL, NULL),
(820, 820, '', NULL, NULL),
(821, 821, '', NULL, NULL),
(822, 822, '', NULL, NULL),
(823, 823, '', NULL, NULL),
(824, 824, '', NULL, NULL),
(825, 825, '', NULL, NULL),
(826, 826, '', NULL, NULL),
(827, 827, '', NULL, NULL),
(828, 828, '', NULL, NULL),
(829, 829, '', NULL, NULL),
(830, 830, '', NULL, NULL),
(831, 831, '', NULL, NULL),
(832, 832, '', NULL, NULL),
(833, 833, '', NULL, NULL),
(834, 834, '', NULL, NULL),
(835, 835, '', NULL, NULL),
(836, 836, '', NULL, NULL),
(837, 837, '', NULL, NULL),
(838, 838, '', NULL, NULL),
(839, 839, '', NULL, NULL),
(840, 840, '', NULL, NULL),
(841, 841, '', NULL, NULL),
(842, 842, '', NULL, NULL),
(843, 843, '', NULL, NULL),
(844, 844, '', NULL, NULL),
(845, 845, '', NULL, NULL),
(846, 846, '', NULL, NULL),
(847, 847, '', NULL, NULL),
(848, 848, '', NULL, NULL),
(849, 849, '', NULL, NULL),
(850, 850, '', NULL, NULL),
(851, 851, '', NULL, NULL),
(852, 852, '', NULL, NULL),
(853, 853, '', NULL, NULL),
(854, 854, '', NULL, NULL),
(855, 855, '', NULL, NULL),
(856, 856, '', NULL, NULL),
(857, 857, '', NULL, NULL),
(858, 858, '', NULL, NULL),
(859, 859, '', NULL, NULL),
(860, 860, '', NULL, NULL),
(861, 861, '', NULL, NULL),
(862, 862, '', NULL, NULL),
(863, 863, '', NULL, NULL),
(864, 864, '', NULL, NULL),
(865, 865, '', NULL, NULL),
(866, 866, '', NULL, NULL),
(867, 867, '', NULL, NULL),
(868, 868, '', NULL, NULL),
(869, 869, '', NULL, NULL),
(870, 870, '', NULL, NULL),
(871, 871, '', NULL, NULL),
(872, 872, '', NULL, NULL),
(873, 873, '', NULL, NULL),
(874, 874, '', NULL, NULL),
(875, 875, '', NULL, NULL),
(876, 876, '', NULL, NULL),
(877, 877, '', NULL, NULL),
(878, 878, '', NULL, NULL),
(879, 879, '', NULL, NULL),
(880, 880, '', NULL, NULL),
(881, 881, '', NULL, NULL),
(882, 882, '', NULL, NULL),
(883, 883, '', NULL, NULL),
(884, 884, '', NULL, NULL),
(885, 885, '', NULL, NULL),
(886, 886, '', NULL, NULL),
(887, 887, '', NULL, NULL),
(888, 888, '', NULL, NULL),
(889, 889, '', NULL, NULL),
(890, 890, '', NULL, NULL),
(891, 891, '', NULL, NULL),
(892, 892, '', NULL, NULL),
(893, 893, '', NULL, NULL),
(894, 894, '', NULL, NULL),
(895, 895, '', NULL, NULL),
(896, 896, '', NULL, NULL),
(897, 897, '', NULL, NULL),
(898, 898, '', NULL, NULL),
(899, 899, '', NULL, NULL),
(900, 900, '', NULL, NULL),
(901, 901, '', NULL, NULL),
(902, 902, '', NULL, NULL),
(903, 903, '', NULL, NULL),
(904, 904, '', NULL, NULL),
(905, 905, '', NULL, NULL),
(906, 906, '', NULL, NULL),
(907, 907, '', NULL, NULL),
(908, 908, '', NULL, NULL),
(909, 909, '', NULL, NULL),
(910, 910, '', NULL, NULL),
(911, 911, '', NULL, NULL),
(912, 912, '', NULL, NULL),
(913, 913, '', NULL, NULL),
(914, 914, '', NULL, NULL),
(915, 915, '', NULL, NULL),
(916, 916, '', NULL, NULL),
(917, 917, '', NULL, NULL),
(918, 918, '', NULL, NULL),
(919, 919, '', NULL, NULL),
(920, 920, '', NULL, NULL),
(921, 921, '', NULL, NULL),
(922, 922, '', NULL, NULL),
(923, 923, '', NULL, NULL),
(924, 924, '', NULL, NULL),
(925, 925, '', NULL, NULL),
(926, 926, '', NULL, NULL),
(927, 927, '', NULL, NULL),
(928, 928, '', NULL, NULL),
(929, 929, '', NULL, NULL),
(930, 930, '', NULL, NULL),
(931, 931, '', NULL, NULL),
(932, 932, '', NULL, NULL),
(933, 933, '', NULL, NULL),
(934, 934, '', NULL, NULL),
(935, 935, '', NULL, NULL),
(936, 936, '', NULL, NULL),
(937, 937, '', NULL, NULL),
(938, 938, '', NULL, NULL),
(939, 939, '', NULL, NULL),
(940, 940, '', NULL, NULL),
(941, 941, '', NULL, NULL),
(942, 942, '', NULL, NULL),
(943, 943, '', NULL, NULL),
(944, 944, '', NULL, NULL),
(945, 945, '', NULL, NULL),
(946, 946, '', NULL, NULL),
(947, 947, '', NULL, NULL),
(948, 948, '', NULL, NULL),
(949, 949, '', NULL, NULL),
(950, 950, '', NULL, NULL),
(951, 951, '', NULL, NULL),
(952, 952, '', NULL, NULL),
(953, 953, '', NULL, NULL),
(954, 954, '', NULL, NULL),
(955, 955, '', NULL, NULL),
(956, 956, '', NULL, NULL),
(957, 957, '', NULL, NULL),
(958, 958, '', NULL, NULL),
(959, 959, '', NULL, NULL),
(960, 960, '', NULL, NULL),
(961, 961, '', NULL, NULL),
(962, 962, '', NULL, NULL),
(963, 963, '', NULL, NULL),
(964, 964, '', NULL, NULL),
(965, 965, '', NULL, NULL),
(966, 966, '', NULL, NULL),
(967, 967, '', NULL, NULL),
(968, 968, '', NULL, NULL),
(969, 969, '', NULL, NULL),
(970, 970, '', NULL, NULL),
(971, 971, '', NULL, NULL),
(972, 972, '', NULL, NULL),
(973, 973, '', NULL, NULL),
(974, 974, '', NULL, NULL),
(975, 975, '', NULL, NULL),
(976, 976, '', NULL, NULL),
(977, 977, '', NULL, NULL),
(978, 978, '', NULL, NULL),
(979, 979, '', NULL, NULL),
(980, 980, '', NULL, NULL),
(981, 981, '', NULL, NULL),
(982, 982, '', NULL, NULL),
(983, 983, '', NULL, NULL),
(984, 984, '', NULL, NULL),
(985, 985, '', NULL, NULL),
(986, 986, '', NULL, NULL),
(987, 987, '', NULL, NULL),
(988, 988, '', NULL, NULL),
(989, 989, '', NULL, NULL),
(990, 990, '', NULL, NULL),
(991, 991, '', NULL, NULL),
(992, 992, '', NULL, NULL),
(993, 993, '', NULL, NULL),
(994, 994, '', NULL, NULL),
(995, 995, '', NULL, NULL),
(996, 996, '', NULL, NULL),
(997, 997, '', NULL, NULL),
(998, 998, '', NULL, NULL),
(999, 999, '', NULL, NULL),
(1000, 1000, '', NULL, NULL),
(1001, 1001, '', NULL, NULL),
(1002, 1002, '', NULL, NULL),
(1003, 1003, '', NULL, NULL),
(1004, 1004, '', NULL, NULL),
(1005, 1005, '', NULL, NULL),
(1006, 1006, '', NULL, NULL),
(1007, 1007, '', NULL, NULL),
(1008, 1008, '', NULL, NULL),
(1009, 1009, '', NULL, NULL),
(1010, 1010, '', NULL, NULL),
(1011, 1011, '', NULL, NULL),
(1012, 1012, '', NULL, NULL),
(1013, 1013, '', NULL, NULL),
(1014, 1014, '', NULL, NULL),
(1015, 1015, '', NULL, NULL),
(1016, 1016, '', NULL, NULL),
(1017, 1017, '', NULL, NULL),
(1018, 1018, '', NULL, NULL),
(1019, 1019, '', NULL, NULL),
(1020, 1020, '', NULL, NULL),
(1021, 1021, '', NULL, NULL),
(1022, 1022, '', NULL, NULL),
(1023, 1023, '', NULL, NULL),
(1024, 1024, '', NULL, NULL),
(1025, 1025, '', NULL, NULL),
(1026, 1026, '', NULL, NULL),
(1027, 1027, '', NULL, NULL),
(1028, 1028, '', NULL, NULL),
(1029, 1029, '', NULL, NULL),
(1030, 1030, '', NULL, NULL),
(1031, 1031, '', NULL, NULL),
(1032, 1032, '', NULL, NULL),
(1033, 1033, '', NULL, NULL),
(1034, 1034, '', NULL, NULL),
(1035, 1035, '', NULL, NULL),
(1036, 1036, '', NULL, NULL),
(1037, 1037, '', NULL, NULL),
(1038, 1038, '', NULL, NULL),
(1039, 1039, '', NULL, NULL),
(1040, 1040, '', NULL, NULL),
(1041, 1041, '', NULL, NULL),
(1042, 1042, '', NULL, NULL),
(1043, 1043, '', NULL, NULL),
(1044, 1044, '', NULL, NULL),
(1045, 1045, '', NULL, NULL),
(1046, 1046, '', NULL, NULL),
(1047, 1047, '', NULL, NULL),
(1048, 1048, '', NULL, NULL),
(1049, 1049, '', NULL, NULL),
(1050, 1050, '', NULL, NULL),
(1051, 1051, '', NULL, NULL),
(1052, 1052, '', NULL, NULL),
(1053, 1053, '', NULL, NULL),
(1054, 1054, '', NULL, NULL),
(1055, 1055, '', NULL, NULL),
(1056, 1056, '', NULL, NULL),
(1057, 1057, '', NULL, NULL),
(1058, 1058, '', NULL, NULL),
(1059, 1059, '', NULL, NULL),
(1060, 1060, '', NULL, NULL),
(1061, 1061, '', NULL, NULL),
(1062, 1062, '', NULL, NULL),
(1063, 1063, '', NULL, NULL),
(1064, 1064, '', NULL, NULL),
(1065, 1065, '', NULL, NULL),
(1066, 1066, '', NULL, NULL),
(1067, 1067, '', NULL, NULL),
(1068, 1068, '', NULL, NULL),
(1069, 1069, '', NULL, NULL),
(1070, 1070, '', NULL, NULL),
(1071, 1071, '', NULL, NULL),
(1072, 1072, '', NULL, NULL),
(1073, 1073, '', NULL, NULL),
(1074, 1074, '', NULL, NULL),
(1075, 1075, '', NULL, NULL),
(1076, 1076, '', NULL, NULL),
(1077, 1077, '', NULL, NULL),
(1078, 1078, '', NULL, NULL),
(1079, 1079, '', NULL, NULL),
(1080, 1080, '', NULL, NULL),
(1081, 1081, '', NULL, NULL),
(1082, 1082, '', NULL, NULL),
(1083, 1083, '', NULL, NULL),
(1084, 1084, '', NULL, NULL),
(1085, 1085, '', NULL, NULL),
(1086, 1086, '', NULL, NULL),
(1087, 1087, '', NULL, NULL),
(1088, 1088, '', NULL, NULL),
(1089, 1089, '', NULL, NULL),
(1090, 1090, '', NULL, NULL),
(1091, 1091, '', NULL, NULL),
(1092, 1092, '', NULL, NULL),
(1093, 1093, '', NULL, NULL),
(1094, 1094, '', NULL, NULL),
(1095, 1095, '', NULL, NULL),
(1096, 1096, '', NULL, NULL),
(1097, 1097, '', NULL, NULL),
(1098, 1098, '', NULL, NULL),
(1099, 1099, '', NULL, NULL),
(1100, 1100, '', NULL, NULL),
(1101, 1101, '', NULL, NULL),
(1102, 1102, '', NULL, NULL),
(1103, 1103, '', NULL, NULL),
(1104, 1104, '', NULL, NULL),
(1105, 1105, '', NULL, NULL),
(1106, 1106, '', NULL, NULL),
(1107, 1107, '', NULL, NULL),
(1108, 1108, '', NULL, NULL),
(1109, 1109, '', NULL, NULL),
(1110, 1110, '', NULL, NULL),
(1111, 1111, '', NULL, NULL),
(1112, 1112, '', NULL, NULL),
(1113, 1113, '', NULL, NULL),
(1114, 1114, '', NULL, NULL),
(1115, 1115, '', NULL, NULL),
(1116, 1116, '', NULL, NULL),
(1117, 1117, '', NULL, NULL),
(1118, 1118, '', NULL, NULL),
(1119, 1119, '', NULL, NULL),
(1120, 1120, '', NULL, NULL),
(1121, 1121, '', NULL, NULL),
(1122, 1122, '', NULL, NULL),
(1123, 1123, '', NULL, NULL),
(1124, 1124, '', NULL, NULL),
(1125, 1125, '', NULL, NULL),
(1126, 1126, '', NULL, NULL),
(1127, 1127, '', NULL, NULL),
(1128, 1128, '', NULL, NULL),
(1129, 1129, '', NULL, NULL),
(1130, 1130, '', NULL, NULL),
(1131, 1131, '', NULL, NULL),
(1132, 1132, '', NULL, NULL),
(1133, 1133, '', NULL, NULL),
(1134, 1134, '', NULL, NULL),
(1135, 1135, '', NULL, NULL),
(1136, 1136, '', NULL, NULL),
(1137, 1137, '', NULL, NULL),
(1138, 1138, '', NULL, NULL),
(1139, 1139, '', NULL, NULL),
(1140, 1140, '', NULL, NULL),
(1141, 1141, '', NULL, NULL),
(1142, 1142, '', NULL, NULL),
(1143, 1143, '', NULL, NULL),
(1144, 1144, '', NULL, NULL),
(1145, 1145, '', NULL, NULL),
(1146, 1146, '', NULL, NULL),
(1147, 1147, '', NULL, NULL),
(1148, 1148, '', NULL, NULL),
(1149, 1149, '', NULL, NULL),
(1150, 1150, '', NULL, NULL),
(1151, 1151, '', NULL, NULL),
(1152, 1152, '', NULL, NULL),
(1153, 1153, '', NULL, NULL),
(1154, 1154, '', NULL, NULL),
(1155, 1155, '', NULL, NULL),
(1156, 1156, '', NULL, NULL),
(1157, 1157, '', NULL, NULL),
(1158, 1158, '', NULL, NULL),
(1159, 1159, '', NULL, NULL),
(1160, 1160, '', NULL, NULL),
(1161, 1161, '', NULL, NULL),
(1162, 1162, '', NULL, NULL),
(1163, 1163, '', NULL, NULL),
(1164, 1164, '', NULL, NULL),
(1165, 1165, '', NULL, NULL),
(1166, 1166, '', NULL, NULL),
(1167, 1167, '', NULL, NULL),
(1168, 1168, '', NULL, NULL),
(1169, 1169, '', NULL, NULL),
(1170, 1170, '', NULL, NULL),
(1171, 1171, '', NULL, NULL),
(1172, 1172, '', NULL, NULL),
(1173, 1173, '', NULL, NULL),
(1174, 1174, '', NULL, NULL),
(1175, 1175, '', NULL, NULL),
(1176, 1176, '', NULL, NULL),
(1177, 1177, '', NULL, NULL),
(1178, 1178, '', NULL, NULL),
(1179, 1179, '', NULL, NULL),
(1180, 1180, '', NULL, NULL),
(1181, 1181, '', NULL, NULL),
(1182, 1182, '', NULL, NULL),
(1183, 1183, '', NULL, NULL),
(1184, 1184, '', NULL, NULL),
(1185, 1185, '', NULL, NULL),
(1186, 1186, '', NULL, NULL),
(1187, 1187, '', NULL, NULL),
(1188, 1188, '', NULL, NULL),
(1189, 1189, '', NULL, NULL),
(1190, 1190, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flood_maps`
--

CREATE TABLE `flood_maps` (
  `id` int(10) UNSIGNED NOT NULL,
  `barangay_id` int(10) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `return_period` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shape` geometry DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flood_maps`
--

INSERT INTO `flood_maps` (`id`, `barangay_id`, `level`, `return_period`, `created_at`, `updated_at`, `shape`) VALUES
(1, 1, 1, 25, NULL, NULL, '\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0ރ��\0_@Y]��t @�n���_@�œ��t @��]��_@f6��t @{x�\0_@J����t @ރ��\0_@Y]��t @\0\0\0\0\0\0\0\0\02�|y_@�j��u @F�Aw_@���u @?(�Bw_@`��-u @��}y_@w�Ct-u @2�|y_@�j��u @\0\0\0\0\0\0\0\0\0�P�}_@�y\n�u @�6�{_@��W�u @��{_@$��e-u @/�}_@f��W-u @�P�}_@�y\n�u @\0\0\0\0\0\0\0\0\0F��`_@���?u @��z�^_@��^�?u @߅E�^_@����Qu @�_�`_@\\u��Qu @F��`_@���?u @\0\0\0\0\0\0\0\0\0@��`_@O���u @Ｅ�^_@�v��u @�}p�^_@b~͘u @\0֊�`_@��5��u @@��`_@O���u @\0\0\0\0\0\0\0\0\0���LF_@�g�\\v @�\0�D_@ov�]v @#A�D_@gL�nv @�I�NF_@���nv @���LF_@�g�\\v @\0\0\0\0\0\0\0\0\0u�xD_@F�움v @�k]�A_@�0��v @��\'�A_@\\@�q�v @��BD_@!\Z�c�v @u�xD_@F�움v @\0\0\0\0\0\0\0\0\0�	�{Q_@k�գv @��@O_@����v @�l_BO_@��r��v @��z}Q_@r4,��v @�	�{Q_@k�գv @\0\0\0\0\0\0\0\0\0^�?_@��� w @�Bt=_@��]� w @)�v=_@\0~��2w @�X(�?_@.���2w @^�?_@��� w @\0\0\0\0\0\0\0\0\0\0<D�"_@d�w��w @.(� _@L���w @��� _@�oX��w @R�\r�"_@F2{�w @\0<D�"_@d�w��w @\0\0\0\0\0\0\0\0\0��z_@z#K�,x @�?\n_@�ǆ�,x @QGXA\n_@t�(�>x @	�t|_@��~>x @��z_@z#K�,x @\0\0\0\0\0\0\0\0\02�_�_@N����| @��#�_@�B���| @��%�_@�`t�| @k��`�_@G5f�| @2�_�_@N����| @\0\0\0\0\0\0\0\0\0y=ָf_@�|�| @�ʷ}d_@�����| @�+�d_@�§| @����f_@S���| @y=ָf_@�|�| @\0\0\0\0\0\0\0\0\08�1jm_@\n;��| @�/k_@�w�ϕ| @���0k_@P0��| @�lm_@�㚈�| @;�!�o_@�1z�| @��O�o_@䘄��| @8�1jm_@\n;��| @\0\0\0\0\0\0\0\0\0$\'�Vv_@�P��| @�t_@�#���| @�|^t_@*�]�| @��|Xv_@e��N�| @$\'�Vv_@�P��| @\0\0\0\0\0\0\0\0\0��&_@�����| @y��F(_@��`��| @��E(_@�+��| @\0\n&_@�:9�| @��&_@�����| @\0\0\0\0\0\0\0\0\0��&_@�����| @F0��#_@y�D��| @k%��#_@�>޼�| @��\r&_@8vl��| @��&_@�����| @\0\0\0\0\0\0\0\0\0���|�_@Z��L�| @rp�A�_@n@�Z�| @R�XC�_@~Us"�| @:�x~�_@�>�| @���|�_@Z��L�| @\0\0\0\0\0\0\0\0\0�a�\r�_@�\n��.} @�q��_@�\'ŕ.} @�O9��_@�Sh]@} @̨Y�_@0\'4O@} @�a�\r�_@�\n��.} @\0\0\0\0\0\0\0\0\0�W�ۍ_@!a��} @�����_@g�} @�wv��_@P�/��} @�R�ݍ_@��|�} @�W�ۍ_@!a��} @\0\0\0\0\0\0\0\0\0Yr��I_@{���} @�2��G_@�~���} @D\ng�G_@�!i�} @}V��I_@�G�Z�} @Yr��I_@{���} @\0\0\0\0\0\0\0\0\0a���_@3�O|�} @�����_@��w��} @�s���_@��R�} @p��_@[��C�} @a���_@3�O|�} @\0\0\0\0\0\0\0\0\0�j�o_@�1�+�} @��K�m_@s�|:�} @�l�m_@EY�} @�<�o_@ө���} @K�[�q_@Ô��} @�#��q_@�,}�} @�j�o_@�1�+�} @\0\0\0\0\0\0	\0\0\0r��sv_@S�{\0�} @V�8t_@����} @~0{:t_@\Z���} @�m�uv_@�9��} @̨��x_@���} @����z_@MH��} @3��z_@�y�} @״�x_@?���} @r��sv_@S�{\0�} @\0\0\0\0\0\0	\0\0\0���s�_@u��\r)~ @��q�_@~�5F~ @�4 ��_@~8~ @ ;Y��_@�Ogp~ @g8p�_@w	�~~ @��5�_@[]��~ @��6�_@�1_T~ @f¤8�_@K)~ @���s�_@u��\r)~ @\0\0\0\0\0\0\0\0\0�n�!�_@��T~ @�Uz�_@�0=b~ @}\\A�_@���)~ @e�_@�z��(~ @[�)%�_@#�[�(~ @�b#�_@�B�~ @�n�!�_@��T~ @\0\0\0\0\0\0\0\0\0Ǡ�,_@�	݋~ @<��*_@^Q�~ @IQ�*_@Ku�a0~ @�q�,_@�OvS0~ @Ǡ�,_@�	݋~ @\0\0\0\0\0\0	\0\0\0�y"�_@)�B~ @�R�_@�V}�0~ @%�2�_@����0~ @b�W_@^�0~ @���_@���\01~ @*��_@�g�B~ @���X_@���B~ @5��_@�ˇ�B~ @�y"�_@)�B~ @\0\0\0\0\0\0\0\0\0y��!_@#�PcB~ @0��_@N��qB~ @(6R�_@	�\\9T~ @R&r�!_@7�*T~ @u��#_@�wT~ @����#_@U�TB~ @y��!_@#�PcB~ @\0\0\0\0\0\0\0\0\0�j�_@g��T~ @qlr�_@�`q�T~ @IB�_@�mff~ @X&b!_@�ܛWf~ @a/�\\_@��+If~ @g�Z_@C���T~ @�j�_@g��T~ @\0\0\0\0\0\0\0\0\0�y"�_@)�B~ @�Y��_@��dT~ @g;��_@�J,f~ @a>�\r_@B��f~ @�O_@�?VT~ @.cB\n_@� ��B~ @�y"�_@)�B~ @\0\0\0\0\0\0\0\0\0\Z�p_@�_�f~ @���4	_@��W�f~ @�x�6	_@R��Xx~ @v��q_@2��Jx~ @\Z�p_@�_�f~ @\0\0\0\0\0\0\0\0\0"<�L_@�h���~ @�!�_@�\r��~ @WR_@�ͦt�~ @�=rN_@�5f�~ @"<�L_@�h���~ @\0\0\0\0\0\0\0\0\0b�#_@��Cs�~ @�j��!_@�ݶ��~ @�!_@?fPI�~ @���#_@�x�:�~ @b�#_@��Cs�~ @\0\0\0\0\0\0\0\0\0t�b�*_@��G�~ @ �Bt(_@�]V�~ @R�v(_@)l��~ @g�2�*_@�M��~ @t�b�*_@��G�~ @\0\0\0\0\0\0	\0\0\06�8	_@�2� �~ @��`�_@�L�.�~ @wZ0�_@͒���~ @`��\0_@��.��~ @�$ <	_@����~ @�h@w_@��Q��~ @>�pu_@!ٷٛ~ @�/�s_@���~ @6�8	_@�2� �~ @\0\0\0\0\0\0\0\0\0���_@7���~ @���a_@����~ @�d�c_@b��g�~ @��_@��"Y�~ @��_@v�J�~ @�1�_@�$��~ @���_@7���~ @\0\0\0\0\0\0\0\0\0�X9٤_@��4��~ @���_@�\r�~ @�埢_@e.��~ @^�ۤ_@A����~ @�X9٤_@��4��~ @\0\0\0\0\0\0\0\0\0x(8��_@�r�O @=K�_@�L�*O @Q��L�_@w��` @m���_@�"�` @x(8��_@�r�O @\0\0\0\0\0\0\0\0\0��5�(_@x��L @�AM&_@��g�L @���N&_@N!�^ @�5�(_@����^ @��5�(_@x��L @\0\0\0\0\0\0\0\0\0�ꦍ(_@�9�@� @�\'�R&_@��3O� @�xVT&_@8�� @�&V&_@fVfޥ @�G�(_@���ϥ @gHw�(_@3vX� @�ꦍ(_@�9�@� @\0\0\0\0\0\0\0\0\0���!_@qN�� @*Ĥ_@���	� @�X��_@F][ѷ @�G��!_@���· @5�$_@n�s�� @	�$_@���� @���!_@qN�� @\0\0\0\0\0\0\0\0\0�6�!�_@���,<� @E���_@�};<� @0�H��_@���N� @fnk#�_@���M� @�6�!�_@���,<� @\0\0\0\0\0\0\0\0\0�m��_@����L� @�!�K\r_@k�L� @�@�M\r_@���^� @��_@G�l�^� @�m��_@����L� @\0\0\0\0\0\0\0\0\0�W���_@��q� @���&�_@Yȃq� @�4%�_@9�%�_� @)��_@d�a�_� @�W���_@��q� @\0\0\0\0\0\0\0\0\0�W���_@��q� @Cʸ��_@?�q� @b�_@91�g�� @݈���_@�̥Y�� @�W���_@��q� @\0\0\0\0\0\0\0\0\0�<��_@Pk%��� @���z�_@B�`�� @�|�_@��͸� @�fݷ�_@D�Ǿ�� @�<��_@Pk%��� @\0\0\0\0\0\0\0\0\0gͭ\Z�_@�\\i�� @����_@f��w�� @}�T��_@�v;?ʀ @Fw�_@[��0ʀ @gͭ\Z�_@�\\i�� @\0\0\0\0\0\0\0\0\0�]W�_@x9�ހ @�w3��_@�=�ހ @Z�k��_@�F�>̀ @>�HU�_@N3M̀ @�]W�_@x9�ހ @\0\0\0\0\0\0\0\0\0���_@!=~"̀ @{��˝_@���0̀ @��V͝_@�Q�݀ @��y�_@�"�݀ @���_@!=~"̀ @\0\0\0\0\0\0\0\0\0�]W�_@x9�ހ @\ZB��_@���"ހ @ʹ�_@=��� @�Y|�_@��&�� @[��Z�_@�?��� @���X�_@�=T�� @�]W�_@x9�ހ @\0\0\0\0\0\0\0\0\0]��6_@�.N�� @a��_@kRu\\�� @��y�_@�$� @�u�8_@�"�� @]��6_@�.N�� @\0\0\0\0\0\0\0\0\0�<�L3_@�A�� @ƃ�1_@\\���� @>�}1_@p�+k!� @�J�N3_@���\\!� @�<�L3_@�A�� @\0\0\0\0\0\0\0\0\0AQa�(_@ޝ�/� @�h?|&_@3��=� @"�~&_@���-� @H�1�(_@ت\Z�,� @AQa�(_@ޝ�/� @\0\0\0\0\0\0\0\0\0_��_@���\n{� @���_@��4{� @��S�_@������ @�w_@9��Ҍ� @_��_@���\n{� @\0\0\0\0\0\0\0\0\0�t�_@��VԱ� @i�P��_@�ёⱁ @O���_@�\n4�Á @x@=!�_@i%��Á @�t�_@��VԱ� @\0\0\0\0\0\0\0\0\0,��#_@������ @�o߃!_@%t*�� @�)��!_@ϫ���� @p��#_@������ @,��#_@������ @\0\0\0\0\0\0	\0\0\0+x��\Z_@��� @\\�\n�\Z_@u�@�Ӂ @9._@����Ӂ @�c_@Y��� @�J@�\Z_@P���� @2��_@l�� @=��_@]/��Ӂ @H��_@2�\'�� @+x��\Z_@��� @\0\0\0\0\0\0\0\0\0T��._@�VT\r� @io�,_@�t�� @So��,_@>X>��� @>q��,_@�9ު� @���._@|���� @���._@�*���� @T��._@�VT\r� @\0\0\0\0\0\0\0\0\0�L֋>_@��p�� @!��P<_@��.�� @eS~R<_@�4�F� @ش��>_@�/�8� @�L֋>_@��p�� @\0\0\0\0\0\0\0\0\0\'J�W_@i���<� @i�f�T_@�lE\0=� @�2�T_@�,��N� @�FVW_@����N� @\'J�W_@i���<� @\0\0\0\0\0\0\0\0\0�d;Eb_@~V�<� @�\n`_@W���<� @�,�`_@]H�N� @�Gb_@�e�qN� @�d;Eb_@~V�<� @\0\0\0\0\0\0\0\0\0 L)�G_@�d�`� @زHE_@^���`� @+M�IE_@��R�r� @8��G_@���r� @ L)�G_@�d�`� @\0\0\0\0\0\0\0\0\0�xp�K_@K���`� @g�L�I_@q�`� @C��I_@-{��r� @M9<�K_@˵d�r� @�xp�K_@K���`� @\0\0\0\0\0\0	\0\0\0o��R_@8ser� @�,۪R_@�7ԝ`� @<��oP_@�%�`� @cw�qP_@���sr� @X�_6N_@���r� @��+8N_@�s�I�� @�SOsP_@\r�b;�� @[�r�R_@��-�� @o��R_@8ser� @\0\0\0\0\0\0\0\0\0�G�$W_@,�n�� @)���T_@�`��� @ښb�T_@�_敂 @mL�&W_@w7\rؕ� @�G�$W_@,�n�� @\0\0\0\0\0\0\0\0\0���[_@���� @���_Y_@�W�� @���aY_@f�ɕ� @��͜[_@�Ch��� @���[_@���� @\0\0\0\0\0\0\0\0\0}_@4���� @a���z_@wg+�� @U��z_@{�� @���}_@�r`䔂 @}_@4���� @\0\0\0\0\0\0\0\0\0�r\0�_@y����� @��;�_@�M���� @�v�9�_@��Ղ� @����_@Í\\も @�r\0�_@y����� @\0\0\0\0\0\0\0\0\0�r\0�_@y����� @�NŃ_@[\'T��� @ތǃ_@��񀦂 @!?�_@K�r�� @�r\0�_@y����� @\0\0\0\0\0\0\0\0\0����_@�<�Z�� @D���_@��$i�� @1��_@"s�0�� @B!�\0_@��"�� @����_@�<�Z�� @\0\0\0\0\0\0\0\0\0$\r}�\r_@�\n?�� @\0YO_@�OM�� @yX#Q_@bS�͂ @JrG�\r_@�`�͂ @$\r}�\r_@�\n?�� @\0\0\0\0\0\0\0\0\0��č�_@b��V�� @�L�R_@\Z�Be�� @�<nT_@�	�,ʂ @��_@8l�ʂ @��č�_@b��V�� @\0\0\0\0\0\0\0\0\01�~zP_@Z#�Y˂ @Q�Z?N_@R/h˂ @��&AN_@���/݂ @]�J|P_@D�|!݂ @1�~zP_@Z#�Y˂ @\0\0\0\0\0\0\0\0\0Fr�-W_@�Ç�܂ @����T_@���݂ @W�^�T_@b�x�� @���/W_@�a&�� @Fr�-W_@�Ç�܂ @\0\0\0\0\0\0\0\0\0hW6�x_@|Hav� @�jov_@����� @�1�pv_@MJWL#� @g+�x_@���=#� @hW6�x_@|Hav� @\0\0\0\0\0\0\0\0\0��b�_@�ܟ4(� @o!>�_@��B(� @Hz�_@$�w\n:� @P2+�_@3�B�9� @��b�_@�ܟ4(� @\0\0\0\0\0\0\0\0\07O�m_@n���#� @j3+Ik_@T�\n�#� @ͼ�Jk_@P�[5� @?��m_@ŜRM5� @7O�m_@n���#� @\0\0\0\0\0\0\0\0\0U���_@��O�K� @�E�n�_@���K� @؈Mp�_@�N\'�]� @d^r��_@d��]� @U���_@��O�K� @\0\0\0\0\0\0\0\0\0C���_@`�\r�K� @h�aѸ_@�hD�K� @Ll*Ӹ_@�K�`]� @�5O�_@ّ�R]� @C���_@`�\r�K� @\0\0\0\0\0\0\0\0\0�����_@]\\g`K� @\rЂ�_@ 8�nK� @6Ø��_@��A6]� @�����_@L\n(]� @�����_@]\\g`K� @\0\0\0\0\0\0\0\0\0��<K�_@�3o� @���_@@cS\Zo� @8u��_@�2�ဃ @eVM�_@��Ӏ� @��<K�_@�3o� @\0\0\0\0\0\0\0\0\0)9:A�_@�8,z� @L&^|�_@�z�z� @c�z�_@<,):h� @��k?�_@kڐHh� @)9:A�_@�8,z� @\0\0\0\0\0\0\0\0\0)9:A�_@�8,z� @J�_@���z� @����_@�.拃 @��C�_@7��׋� @)9:A�_@�8,z� @\0\0\0\0\0\0\0\0\0��a�`_@l�-�� @Av>�^_@]��� @�{�^_@�2G噃 @��3�`_@��֙� @��a�`_@l�-�� @\0\0\0\0\0\0\0\0\0i��ݸ_@Sr�ȃ @�Yܸ_@��G�� @ÿLڸ_@�r�� @�\'��_@WU���� @!N�_@�=LU�� @/ݸ��_@�#�ȃ @i��ݸ_@Sr�ȃ @\0\0\0\0\0\0\0\0\0i��ݸ_@Sr�ȃ @7��߸_@�F[�ك @:��\Z�_@L $�ك @��_@F[�\0ȃ @i��ݸ_@Sr�ȃ @\0\0\0\0\0\0\0\0\0G�a_@��H�� @��<�_@|k��� @���_@P�1�� @��,_@0�� @G�a_@��H�� @\0\0\0\0\0\0\0\0\0?O΄�_@�jZ� � @�I�_@�1�� � @r�qK�_@�6g2� @bP���_@P��X2� @?O΄�_@�jZ� � @\0\0\0\0\0\0\0\0\0�v�_@��Ve� @n�QL_@H;�s� @�tN_@�I@;0� @~A�_@���,0� @�v�_@��Ve� @\0\0\0\0\0\0\0\0\0IT=�_@��n�g� @���_@�i��g� @�����_@d�Kiy� @�v�_@��[y� @IT=�_@��n�g� @\0\0\0\0\0\0\0\0\0>�\Z|�_@��;�� @c,�@�_@f�w�� @�_�B�_@�ܜ� @f��}�_@��͜� @>�\Z|�_@��;�� @\0\0\0\0\0\0\0\0\0��h�_@�	I͊� @�[�-�_@i\\�ۊ� @S�T/�_@�@(��� @�Uzj�_@��ꔜ� @��h�_@�	I͊� @\0\0\0\0\0\0\0\0\0_����_@i/y�� @��Һ�_@��C��� @�4���_@��N�� @����_@X�@�� @_����_@i/y�� @\0\0\0\0\0\0\0\0\0�J�r_@&��Ǆ @�&|p_@H{-�Ǆ @�5�}p_@� �yل @ڌ�r_@��=kل @�J�r_@&��Ǆ @\0\0\0\0\0\0\0\0\0q����_@߫��� @��Ŭ�_@�4�� @�����_@\0��l�� @/U���_@zW�^�� @q����_@߫��� @\0\0\0\0\0\0\0\0\0��2�_@�R�� @ϻУ_@���� @�u�ѣ_@��v��� @b�\r�_@v3��� @��2�_@�R�� @\0\0\0\0\0\0\0\0\0Gs�L�_@��\no� @x4��_@��}� @7�Z�_@�V4E0� @��~N�_@��60� @Gs�L�_@��\no� @\0\0\0\0\0\0\0\0\0�M��_@Za_R<� @k�\'g�_@rL�`<� @�}�h�_@��@(N� @���_@�\0\ZN� @�M��_@Za_R<� @\0\0\0\0\0\0\0\0\0w���_@�Y�5<� @źs��_@tD<� @��=��_@�s�N� @�c\Z�_@R��M� @w���_@�Y�5<� @\0\0\0\0\0\0\0\0\0|o��_@�1a`� @J�H��_@r\n�\Z`� @2���_@#�A�q� @,�8��_@���q� @|o��_@�1a`� @\0\0\0\0\0\0\0\0\0�9�j�_@�N��_� @�!�/�_@%�!�_� @\'�^1�_@��q� @%��l�_@�̃�q� @�9�j�_@�N��_� @\0\0\0\0\0\0\0\0\0ɻϦ_@��=(_� @x��k\0_@Pł6_� @�#tm\0_@5y#�p� @�,��_@�3��p� @ɻϦ_@��=(_� @\0\0\0\0\0\0\0\0\0$�>��_@���8�� @�zp�_@���F�� @�>�q�_@�:h�� @ ���_@L�\'\0�� @$�>��_@���8�� @\0\0\0\0\0\0\0\0\0D*�!�_@���� @��d��_@W�E*�� @u�.��_@"D�� @�U#�_@(0�㦅 @D*�!�_@���� @\0\0\0\0\0\0\0\0\0��5��_@�$eVʅ @�Lb�_@�#�dʅ @\nJ�c�_@WH,܅ @�����_@�H܅ @��5��_@�$eVʅ @\0\0\0\0\0\0\0\0\0����_@��N��� @B ��_@�\r��� @gZV��_@��l� @��/��_@�~�� @����_@��N��� @\0\0\0\0\0\0\0\0\0����_@��N��� @�1�z�_@s���� @��|�_@|�0�� @֗÷�_@�8�� @����_@��N��� @\0\0\0\0\0\0\0\0\0֗÷�_@�8�� @�v���_@Ò�u#� @�WW��_@��2=5� @7~��_@��.5� @����_@�wPg#� @�+���_@v-��� @֗÷�_@�8�� @\0\0\0\0\0\0\0\0\0M���_@��ݭ"� @n��_@�-$�"� @v�M�_@\'�ă4� @\Z t�_@�d~u4� @M���_@��ݭ"� @');
INSERT INTO `flood_maps` (`id`, `barangay_id`, `level`, `return_period`, `created_at`, `updated_at`, `shape`) VALUES
(2, 1, 2, 25, NULL, NULL, '\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0\0\0T��d\\_@�OEC5t @�,h)Z_@H��Q5t @N�2+Z_@��+Gt @�Lf\\_@�q�\nGt @T��d\\_@�OEC5t @\0\0\0\0\0\0\0\0\0�0�^_@�>�Xt @٨h\\_@Z���Xt @;�i\\_@�%�jt @ټ��^_@�ދjt @�0�^_@�>�Xt @\0\0\0\0\0\0\0\0\0/1�c_@�M���t @���`_@�:��t @�Kt�`_@�2wԟt @�� c_@N6/Ɵt @/1�c_@�M���t @\0\0\0\0\0\0\0\0\0�6�%c_@ ��t @�l��`_@�W+�t @�&��`_@�����t @g��\'c_@�Į��t @�6�%c_@ ��t @\0\0\0\0\0\0\0\0\0=oMn_@���t @/KUl_@�?���t @�D l_@�ቫ�t @M:On_@^�?��t @=oMn_@���t @\0\0\0\0\0\0\0\0\0�6�{_@��W�u @2�|y_@�j��u @��}y_@w�Ct-u @��{_@$��e-u @�6�{_@��W�u @\0\0\0\0\0\0\0\0\0���^_@��.u @\'�}\\_@o..u @p�`\\_@&t��?u @��z�^_@��^�?u @���^_@��.u @\0\0\0\0\0\0\0\0\0x`e�r_@�.�f?u @�f	u_@�y{X?u @=k�Dw_@�_/J?u @?(�Bw_@`��-u @�0�u_@� ܐ-u @�6��r_@��\'�-u @x`e�r_@�.�f?u @\0\0\0\0\0\0\0\0\0x`e�r_@�.�f?u @XK�p_@�}u?u @�v�p_@E��<Qu @�0�r_@N�f.Qu @x`e�r_@�.�f?u @\0\0\0\0\0\0	\0\0\0@��`_@O���u @�<��`_@�6�/uu @y6c_@c~�!uu @��D4c_@f�\rZcu @�r*�`_@WVhcu @�@�^_@X��vcu @��ڿ^_@��>>uu @Ｅ�^_@�v��u @@��`_@O���u @\0\0\0\0\0\0	\0\0\0��1fQ_@��	z�u @v!+O_@�fO��u @i��,O_@��O�u @`*�gQ_@`̩A�u @\r��iQ_@J	�u @�L�S_@L���u @T��S_@A|c3�u @�7L�S_@(K�k�u @��1fQ_@��	z�u @\0\0\0\0\0\0\0\0\0�*A�_@=�{�u @���_@O���u @y��_@9±Qv @��B�_@n\'}Cv @�%~�_@3\'H5v @��E|�_@aL�m�u @�*A�_@=�{�u @\0\0\0\0\0\0\0\0\0�\\_@j$��v @q�K�\\_@�5���u @af�^_@۝��u @���^_@/����u @!�a_@zI���u @EK�a_@)v�u @}�?c_@�o��u @��:=c_@�,@�u @�w a_@ɠuN�u @�^_@92�\\�u @���\\_@;^k�u @8� �\\_@�gf��u @�@;�^_@(K��u @�}p�^_@b~͘u @�#V�\\_@�n�ۘu @��;MZ_@�u @�i!X_@�WU��u @��X_@p���u @���U_@\\<Ϊu @,��U_@��ܕ�u @\'�f�U_@;�|]�u @cF�X_@��5O�u @�ʛRZ_@)�@�u @1zfTZ_@N+��u @�+1VZ_@x+.��u @\\��WZ_@�)Ηv @�4�X_@2��v @�ݫX_@�Եmv @��YZ_@�%n_v @J�\\_@�&Qv @�\\_@j$��v @\0\0\0\0\0\0\0\0\0ֱ4KF_@.��6Kv @)�O�H_@��(Kv @dI��H_@�s�`9v @�hjIF_@�&o9v @ֱ4KF_@.��6Kv @\0\0\0\0\0\0	\0\0\0z�j�J_@k�<\ZKv @�s��L_@�P�Kv @[�7O_@�m��Jv @r@�rQ_@t%k�Jv @ķ�pQ_@��\'9v @,��5O_@�)69v @���L_@A�VD9v @�\'��J_@-k�R9v @z�j�J_@k�<\ZKv @\0\0\0\0\0\0\0\0\0ֱ4KF_@.��6Kv @��D_@g�\nEKv @�\0�D_@ov�]v @���LF_@�g�\\v @ֱ4KF_@.��6Kv @\0\0\0\0\0\0\0\0\0z�j�J_@k�<\ZKv @)�O�H_@��(Kv @���H_@RW"�\\v @��4�J_@�/��\\v @z�j�J_@k�<\ZKv @\0\0\0\0\0\0\0\0\0#A�D_@gL�nv @\\6��A_@i��nv @�k]�A_@�0��v @u�xD_@F�움v @#A�D_@gL�nv @\0\0\0\0\0\0\0\0\0�,˶S_@lEǣv @k�\0�S_@�����v @���U_@\'�]�v @��P�U_@B��)�v @�k)X_@��u�v @�\0�dZ_@��-\r�v @�>�bZ_@��Env @P�`Z_@%�}\\v @E��%X_@��5�\\v @g�$X_@���Jv @��U_@Hd��Jv @�b&�U_@\'O=9v @\\��S_@�R�9v @�#֭S_@�w$�Jv @-���S_@H�Ĩ\\v @"˅tQ_@�W�\\v @�j9O_@ԯQ�\\v @	Y5;O_@���nv @���<O_@|-�T�v @��\ZxQ_@1�KF�v @0w�yQ_@V��\r�v @�	�{Q_@k�գv @�,˶S_@lEǣv @\0\0\0\0\0\0\0\0\0�O<��_@9S�v @�� j�_@�hO�v @d��k�_@�x���v @[���_@�S���v @�O<��_@9S�v @\0\0\0\0\0\0\r\0\0\0g��1;_@�^��v @k40;_@�}��v @o�Ok=_@1z:��v @O��i=_@�Ǚ�v @٠�?_@ MV�v @&�֢?_@)��G�v @/u�g=_@�U�v @7>�,;_@�<d�v @�Sj.;_@���+�v @�\rO�8_@n�:�v @��8_@(^��v @B%��8_@�-a��v @g��1;_@�^��v @\0\0\0\0\0\0	\0\0\0P��D�_@�7Ff�v @L^�	�_@�"}t�v @�r�_@��<�v @ϖ�F�_@6��-�v @�<���_@\0i��v @T�ż�_@U�y�v @`)���_@�0�I�v @V���_@�X�v @P��D�_@�7Ff�v @\0\0\0\0\0\0\0\0\0�`��4_@/����v @���E2_@�9\'��v @I�ZG2_@6Ȼ�v @)Vv�4_@\0����v @�`��4_@/����v @\0\0\0\0\0\0\0\0\0�"�Z_@�"��v @\r�k\n_@��"��v @`�4!\n_@��ă�v @�4P\\_@)&�u�v @v�k�_@B%Og�v @����_@�1���v @�"�Z_@�"��v @\0\0\0\0\0\0\0\0\0���_@NY�v @�Zyo�_@8�8g�v @V�Aq�_@��.w @{e]��_@CH� w @���_@NY�v @\0\0\0\0\0\0\0\0\0Cᓭ?_@gy�w @�`��A_@�85�w @��A_@��v @j�ɫ?_@d��-�v @Cᓭ?_@gy�w @\0\0\0\0\0\0\0\0\0Cᓭ?_@gy�w @�_xr=_@�/�w @�Bt=_@��]� w @^�?_@��� w @Cᓭ?_@gy�w @\0\0\0\0\0\0\0\0\0�`��A_@�85�w @1�y�A_@��ծ w @E2�%D_@��� w @���#D_@o���w @�`��A_@�85�w @\0\0\0\0\0\0\0\0\0~���J_@���u w @�I�J_@� �w @{�R�J_@�=���v @�f7�H_@�����v @�l�H_@��%-�v @7�Q[F_@��j;�v @B�]F_@�@�v @MY�^F_@t���w @���H_@Nf�w @l@̛H_@+�� w @X��`F_@9L� w @d{bF_@�}�Y2w @2���H_@D\0�K2w @�@��J_@"a=2w @~���J_@���u w @\0\0\0\0\0\0\0\0\0��C�A_@�Hvv2w @�X(�?_@.���2w @ї�?_@�*[LDw @[=�A_@��>Dw @��C�A_@�Hvv2w @\0\0\0\0\0\0\0\0\0�v>_@����Vw @��\0_@���Vw @��_@�\'��hw @���?_@�p�hw @�v>_@����Vw @\0\0\0\0\0\0\0\0\0�\n��+_@r��[hw @�ۨ�-_@��Mhw @����-_@W��Vw @Q:à+_@��Q�Vw @�\n��+_@r��[hw @\0\0\0\0\0\0\0\0\0�\n��+_@r��[hw @�7qg)_@�Y3jhw @!�:i)_@6��1zw @��V�+_@0�#zw @�\n��+_@r��[hw @\0\0\0\0\0\0	\0\0\0��^� _@Ȭ��w @���~ _@3Ht2�w @X�"_@w95$�w @R�"_@w�\\zw @Oj�| _@���jzw @���A_@G{yzw @zyC_@t�@�w @X�BE_@�eT�w @��^� _@Ȭ��w @\0\0\0\0\0\0\0\0\0��F_@���w @�ú�_@�Q�z�w @���_@�$&��w @���D_@q�_��w @��F_@���w @\0\0\0\0\0\0%\0\0\0/��l)_@����w @��k)_@r�u��w @!�:i)_@6��1zw @l.\'_@ĳ@zw @�bU,\'_@�ysxhw @�7qg)_@�Y3jhw @t�e)_@z-��Vw @���c)_@���Dw @��b)_@��O3w @Ɵ/�+_@�w3w @��e�+_@�Tn=!w @9\r��+_@�/�uw @�Fҗ+_@�,��v @����-_@{{��v @��#�-_@�aJ��v @���+_@�ߊ��v @��Z)_@�����v @���\'_@��\n�v @��$_@�I�v @+��$_@P���v @�7�!\'_@���v @��d#\'_@O9M�w @d�.%\'_@�}�Y!w @V��$_@��-h!w @k���$_@kK�/3w @����"_@�q>3w @�y��"_@�ЯEw @UT�"_@/.Q�Vw @���"_@Z��hw @��9�$_@T4��hw @�7�$_@�}TNzw @����$_@D���w @ؕ��$_@�\n�ݝw @�G`�$_@N8��w @�Q|3\'_@(U���w @��1\'_@h!Wϝw @/��l)_@����w @\0\0\0\0\0\0\0\0\0/��l)_@����w @�Y�n)_@�����w @�_��+_@3wz�w @]��+_@tֲ�w @/��l)_@����w @\0\0\0\0\0\0\0\0\0R�\r�"_@F2{�w @��� _@�oX��w @Ge�� _@*��P�w @����"_@��B�w @R�\r�"_@F2{�w @\0\0\0\0\0\0\0\0\0˫�_@�D��w @wG�_@i9�3�w @�c�_@O7f%�w @˰_@��)�w @�d�_@��O�w @d\Z�_@�M懌w @���_@�"��w @uU��_@�g�]�w @SD~�_@AZ\0l�w @41bl_@M�;z�w @5W+n_@��A�w @[53\n_@-\rP�w @�P�4\n_@n	��w @�m�6\n_@�]��w @2��q_@R�!��w @.Նs_@�Ø�w @=��_@�ʇ��w @��٬_@�����w @˫�_@�D��w @\0\0\0\0\0\0\0\0\0��4�"_@0a��x @E�j�"_@����w @q�N� _@̈́<��w @�a2N_@��{��w @��hL_@�!�&�w @��L_@h�5�w @�_@�,���w @����_@�h�\n�w @�[0�_@��VC�w @��_@`��Q�w @q��__@��_�w @ZB�a_@ׯs\'�w @D��c_@�U�x @����_@����x @rnp�_@jy�\Zx @�Ќ�_@�t;�\Zx @1�_@���\Zx @��_@C�[�x @v��O_@c��x @L��Q_@Y�}\Zx @��� _@\'3o\Zx @�E��"_@��?a\Zx @��4�"_@0a��x @\0\0\0\0\0\0\0\0\0ȵ_@��,x @���_@��Қ,x @�\0,_@!֕�,x @qg_@	�X~,x @,\nTe_@���\Zx @�7*_@�$��\Zx @�Kn(_@�pR�x @1�Q�_@^&�	x @�;�_@��0�\Zx @]���_@Im�\Zx @ȵ_@��,x @\0\0\0\0\0\0\0\0\0�?\n_@�ǆ�,x @�r_@F��,x @��;_@�d�>x @QGXA\n_@t�(�>x @�?\n_@�ǆ�,x @\0\0\0\0\0\0\0\0\0ȵ_@��,x @��z_@z#K�,x @	�t|_@��~>x @�T��_@��p>x @ȵ_@��,x @\0\0\0\0\0\0\0\0\0*��� _@B� 7,x @")�S_@ʼ_E,x @��XU_@m\r>x @�:u� _@P���=x @*��� _@B� 7,x @\0\0\0\0\0\0\0\0\0*rT�_@���~?x @�gU�_@���?x @���_@K��TQx @�e:V�_@���FQx @*rT�_@���~?x @\0\0\0\0\0\0\0\0\0$�<j�_@�u��Px @��/�_@����Px @Z��0�_@qu�bx @yNl�_@�<�bx @$�<j�_@�u��Px @\0\0\0\0\0\0\0\0\0Z��0�_@qu�bx @;����_@]���bx @����_@�|Ortx @�W�2�_@(�dtx @Z��0�_@qu�bx @\0\0\0\0\0\0\0\0\0B�Wm�_@8p�ux @�o�_@j�?ֆx @��<��_@��Ȇx @�t��_@/�h\0ux @B�Wm�_@8p�ux @\0\0\0\0\0\0\0\0\0����_@�|Ortx @?�w��_@���tx @\\w@��_@b�)H�x @�G]��_@���9�x @����_@�|Ortx @\0\0\0\0\0\0\0\0\0d{�5M_@�����x @#�4M_@�s]8rx @&X��J_@�դFrx @\'�ӽH_@���Trx @�w��H_@���x @����J_@��D�x @d{�5M_@�����x @\0\0\0\0\0\0\0\0\0�o�_@j�?ֆx @��4�_@{�r�x @���_@���x @^#���_@7�H��x @��5�_@��x @��p�_@��❘x @�o�_@j�?ֆx @\0\0\0\0\0\0\0\0\0^#���_@7�H��x @-,���_@�o{Șx @�/Y��_@}���x @�3v��_@[9쁪x @^#���_@7�H��x @\0\0\0\0\0\0\r\0\0\0ڽ��?_@��D�x @Y,�?_@i;�U�x @H��=_@�K�c�x @c$ڙ=_@�ȉ+�x @숽^;_@E��9�x @w�#9_@J�H�x @,k%9_@mr��x @Kև`;_@�\ro�x @~~��=_@�C*�x @�$��?_@��x @���B_@�~�֧x @RUB_@<#��x @ڽ��?_@��D�x @\0\0\0\0\0\0\0\0\0Eaxt�_@�)-�x @�k���_@lG��x @3ͭ�_@�0RW�x @�5�r�_@��e�x @Eaxt�_@�)-�x @\0\0\0\0\0\0\0\0\0d{�5M_@�����x @�,�7M_@;��Ǖx @��l9M_@ڢ=��x @$�7;M_@j��V�x @:TvO_@���H�x @�p�Q_@r=M:�x @�}��S_@�l,�x @|���S_@�dd�x @J��Q_@ Q�r�x @x�tO_@�����x @��rO_@��U��x @�AۭQ_@�b\r��x @�v�Q_@[rm�x @��pO_@����x @d{�5M_@�����x @\0\0\0\0\0\0\0\0\0u��=_@�T�X�x @W�<_@ӷD��x @�h2w_@����x @�LO�_@���t�x @�ƅ�_@�E\'��x @ᛢ�_@�螺x @���_@�QGרx @5}�_@Gݥ�x @���_@�?��x @`�q_@�<",�x @�D�6_@r�_:�x @��8_@�w�x @��e�_@E�>�x @�I�_@g�{�x @w_�_@�U�x @���_@����x @���\0_@����x @��_@2�#g�x @u��=_@�T�X�x @\0\0\0\0\0\0\0\0\0��yO_@a����x @t��Q_@����x @��;�Q_@�\'��x @�xO_@��5�x @��yO_@a����x @\0\0\0\0\0\0\0\0\0u��=_@�T�X�x @�a�?_@�� �x @�`�z_@W\nJ�x @���x_@�~�J�x @u��=_@�T�X�x @\0\0\0\0\0\0\0\0\0��F�n_@�\rY��x @�&*|l_@UϦ��x @F��}l_@��E��x @R�n_@|&���x @��F�n_@�\rY��x @\0\0\0\0\0\0	\0\0\0����_@ƍ<�x @U��P�_@Y��J�x @�?�R�_@ہg�x @�قT�_@P#\n�y @uKV�_@�¬�y @��h��_@�{u�y @<���_@����y @�`׍�_@Z0�x @����_@ƍ<�x @\0\0\0\0\0\0	\0\0\0Q��?�_@�dy @ژ��_@��� y @{��_@E�6�y @�w�A�_@��y @��C�_@|��\'y @�o�~�_@��}�\'y @���|�_@`���y @�M{�_@�6y @Q��?�_@�dy @\0\0\0\0\0\0\0\0\0�˓�_@�]�[7y @Im��_@��%y @\0B��_@��$�%y @�v�_@$Q�i7y @�˓�_@�]�[7y @\0\0\0\0\0\0	\0\0\0�\'|��_@��k�8y @ !���_@��\'y @��W�_@���!\'y @\n�^Y�_@���8y @AJA�_@����8y @|9	 �_@s_s�Jy @�&[�_@wA�Jy @�0D��_@7)�Jy @�\'|��_@��k�8y @\0\0\0\0\0\0\0\0\0���_@��z�7y @�\r��_@ʷ\\Iy @AX!_@���MIy @�<_@	?�7y @���_@��z�7y @\0\0\0\0\0\0\0\0\0�˓�_@�]�[7y @�,]�_@�\r+#Iy @Koz\r_@l��Iy @��_@2LM7y @�˓�_@�]�[7y @\0\0\0\0\0\0)\0\0\0��yO_@a����x @��>M_@\\���x @���@M_@�Ľ��x @��zK_@Փ��x @�$^�H_@l�L��x @ySA�F_@����x @T�$TD_@����x @.�B_@\'� ��x @	���?_@��f�x @�D��?_@�\r�\0y @�^��=_@i�L�\0y @�b�=_@���y @1--�=_@qf�h$y @�,J�?_@��GZ$y @���?_@�l��y @S��B_@�ya�y @�)gB_@\'�L$y @�,J�?_@��GZ$y @`��?_@e$�!6y @w�1 B_@b�6y @��N[D_@ܚ[6y @��k�F_@ҽ�5y @�Z6�F_@�紾Gy @��\0�F_@�U�Yy @M�H_@ۭ\rxYy @�kS�H_@��m�Gy @����H_@F{��5y @���K_@6Ӆ�5y @XzpK_@��%�Gy @-��IM_@��ݓGy @\0���O_@>��Gy @ҚǿQ_@�ULwGy @���Q_@�y��5y @^�1�Q_@��#y @�g�Q_@"�l y @"JO_@|u�.y @V}O_@؃g\0y @�+��Q_@��X\0y @.UѶQ_@�,��x @	��{O_@$�u��x @��yO_@a����x @\0\0\0��O_@eU�#y @�߂O_@�R��5y @���GM_@��=�5y @���EM_@}ȝ$y @��O_@eU�#y @\0\0\0\0\0\0\0\0\0+���e_@�S��Fy @]���c_@���Gy @��z�c_@=*��Xy @���e_@��I�Xy @+���e_@�S��Fy @\0\0\0\0\0\0\0\0\0M�H_@ۭ\rxYy @���H_@ĭ?ky @d�K_@%�e1ky @�4;K_@���iYy @M�H_@ۭ\rxYy @\0\0\0\0\0\0\0\0\0��#�_@�>�Nny @�{��_@���\\ny @`nC��_@�\\�$�y @a%�_@B�]�y @��#�_@�>�Nny @\0\0\0\0\0\0\0\0\0�-�p�_@�H�[y @t��5�_@��F\\y @�R4�_@��?Jy @8�/o�_@�sn1Jy @�Ngm�_@?��i8y @��I2�_@�x8y @ܐ,��_@�6�8y @�.��_@�j�8y @cw׽�_@�\r\\Jy @�����_@�MJy @=���_@��{\\y @7����_@���my @Q�M��_@/���y @$�k9�_@���y @N�7�_@T���my @f��r�_@?��my @�-�p�_@�H�[y @\0\0\0\0\0\0\0\0\0c�~a\n_@F��~y @\\_@JBM�~y @�Қ_@���ly @D5�_\n_@�E��ly @c�~a\n_@F��~y @\0\0\0\0\0\0\0\0\0�v;_@���\\}y @E�9t;_@�yT�ky @�v99_@����ky @���:9_@i:k}y @�v;_@���\\}y @\0\0\0\0\0\0\0\0\0�S!�=_@f�N}y @��>�?_@({i@}y @�t�?_@�(�xky @��V�=_@��ky @�S!�=_@f�N}y @\0\0\0\0\0\0\0\0\0�;@�O_@��ky @�#MM_@��#ky @���NM_@����|y @��O_@�t�|y @�;@�O_@��ky @\0\0\0\0\0\0\0\0\0�\Z�$�_@��΀y @:l�&�_@4�h��y @�5�a�_@��;��y @5��_�_@�ϗ��y @�\Z�$�_@��΀y @\0\0\0\0\0\0\0\0\0�c�N�_@4^��y @�,�L�_@^A_�y @����_@�.+�y @�J��_@v��my @�,K�_@x"�ny @�i�_@���ny @�CG�_@w�LN\\y @��)��_@�\\\\y @>;��_@�z�j\\y @���\\�_@:��x\\y @곶^�_@N7�@ny @�Gԙ�_@`�U2ny @�����_@��"$ny @Z����_@�5��y @�V���_@���y @Agd��_@Jc���y @����_@�qi��y @B���_@�\Z6��y @�c�N�_@4^��y @\0\0\0\0\0\0\0\0\0s��_@�]�Iy @�S�[�_@y���Iy @!� �_@���Jy @{�j��_@OJy @f���_@ɖ_M8y @�����_@F̕[8y @�%M��_@�8#Jy @8�/o�_@�sn1Jy @�-�p�_@�H�[y @-���_@�Y��[y @�"ޭ�_@�~�my @�����_@��G�my @� $�_@���my @���%�_@x��]y @�0���_@�k�ky @У���_@Q� zy @\'o��_@��A�y @�����_@��3�y @�RU��_@��/��y @�r)�_@j���y @m��d�_@�s�ޢy @�9���_@K��Тy @����_@�0��y @G���_@��DAy @T��_@,�ymy @�d���_@����[y @s��_@�]�Iy @\0\0\0\0\0\0\0\0\0*|_@x��y @N\0�y_@�\'c��y @T���y_@��\\�y @���+|_@Y �M�y @;g~_@��_?�y @�0:e~_@�b�w�y @*|_@x��y @\0\0\0\0\0\0\0\0\0�_��_@b��L�y @!Rtۂ_@[�y @S@݂_@m��"�y @�m]�_@,j�y @�_��_@b��L�y @\0\0\0\0\0\0\0\0\0c�g�_@E�l�y @%2J��_@��{�y @�S��_@^�B�y @�0�_@Gm|4�y @��MR�_@��H&�y @���P�_@�x�^�y @c�g�_@E�l�y @\0\0\0\0\0\0\0\0\0��럘_@\0o���y @D\n%��_@�����y @�B^��_@�=2�y @�!|ך_@&$�y @%�Bٚ_@$��y @\n�`�_@6̐ݤy @���_@���y @, ��_@\ZOGN�y @�O�՚_@Gp\\�y @��Ӛ_@�u˔oy @L�\'Қ_@��&�]y @�`К_@ḱLy @�\Z�Κ_@��=:y @S{|��_@�JL:y @�8C��_@f1�Ly @`�	��_@)O�]y @v=�[�_@\Z$w�]y @9�]�_@H�oy @��y_�_@h�x�y @��[$�_@��膁y @�~"&�_@UˍN�y @�,�\'�_@��2�y @�ܯ)�_@2��ݶy @r�v+�_@��|��y @ŗ�f�_@?�T��y @��d�_@\\ʯ϶y @��럘_@\0o���y @\0\0\0\0\0\0\0\0\0��럘_@\0o���y @����_@gG,��y @x��ܚ_@w{�y @P�	ۚ_@�^��y @��럘_@\0o���y @\0\0\0\0\0\0\0\0\0����_@gG,��y @ŗ�f�_@?�T��y @nX[h�_@��^�y @�ly��_@��P�y @����_@gG,��y @\0\0\0\0\0\0\0\0\0\0��\ZK_@!��y @���K_@[�%��y @B��WM_@4O���y @�i�O_@�O���y @��6�O_@�t���y @�#VM_@�d=	�y @\0��\ZK_@!��y @\0\0\0\0\0\0\0\0\0U��/|_@�j���y @gwc�y_@~I?��y @qK/�y_@W�ݲ�y @�L1|_@\r���y @U��/|_@�j���y @\0\0\0\0\0\0	\0\0\0����_@\r\r1�y @)����_@�Z?�y @/���_@̣��y @�_���_@?���y @>��1�_@*�L��y @Ѻ�l�_@�a���y @�\'k�_@��X�y @��/�_@��"�y @����_@\r\r1�y @\0\0\0\0\0\0\0\0\0�չ�_@���y @0\r��_@�C��y @�G�|�_@�w#\'�y @�"�~�_@M���y @�չ�_@���y @\0\0\0\0\0\0\0\0\0z+�C�_@C����y @]2{�_@�\\(�y @��B\n�_@n���y @��`E�_@{����y @z+�C�_@C����y @\0\0\0\0\0\0\0\0\0�|��_@Al���y @�d"��_@R���y @��Y��_@>�\'�y @@H���_@��N`�y @�ys}�_@��n�y @<�;�_@t�\'6�y @�|��_@Al���y @\0\0\0\0\0\0\0\0\0�.5%_@dv�(z @��"_@��6z @P���"_@�&��z @���6%_@�q?�z @�.5%_@dv�(z @\0\0\0\0\0\0\0\0\0+�"_@s��pz @yO��_@���~z @�q��_@Mh��z @��y�_@��T0z @ʗ�_@�?`F0z @e��$_@�"80z @+�"_@s��pz @\0\0\0\0\0\0\0\0\0{�?�=_@5}RSz @��!�;_@\Z��az @$v�;_@Q�8)/z @�6\n�=_@���\Z/z @{�?�=_@5}RSz @\0\0\0\0\0\0\0\0\0ʩy[M_@>`�y @�\\ K_@��en�y @\Z�&"K_@��6z @���#K_@����z @Rb_M_@��\\�z @�A�`M_@K���.z @���O_@�w��.z @-�O_@Ҧ�z @b�O_@�sz @�D]M_@��\'z @ʩy[M_@>`�y @\0\0\0\0\0\0	\0\0\0|B�6|_@U�h�	z @�Ӓ�y_@��	\nz @��^�y_@�X�z @J+|8|_@?��z @H:|_@#��-z @s�eu~_@wT|-z @褙s~_@�z @^��q~_@�d�	z @|B�6|_@U�h�	z @\0\0\0\0\0\0	\0\0\01�l�_@AiN\'?z @GC�(�_@���?z @[Χc�_@?�\n?z @ס�a�_@��	C-z @Ww`�_@��k{z @��$�_@־�z @�#�&�_@�/]Q-z @)���_@f�_-z @1�l�_@AiN\'?z @\0\0\0\0\0\0\0\0\0����"_@l/"�/z @Ն� _@}�c�/z @��P� _@Ф�Az @\n�\Z� _@��cSz @�8#_@�:dUSz @��n�"_@)6ÍAz @����"_@l/"�/z @\0\0\0\0\0\0\0\0\0��!b0_@�I28Az @�\'._@�vFAz @f)�(._@��Sz @L�c0_@���Rz @��!b0_@�I28Az @\0\0\0\0\0\0\0\0\0}�;_@zG��@z @$v�;_@Q�8)/z @���L9_@H�~7/z @GK9_@u;�oz @��9I9_@��=�z @q�W�;_@�/��z @��;_@��W��y @�soG9_@�[���y @H\r�E9_@����y @�{�\n7_@�\0B\'�y @�#�7_@�{�_�y @5���4_@��m�y @W�i�4_@&��5�y @x54�4_@^E\'��y @����4_@����z @����4_@�ch�z @\Z��2_@S߬�z @o`u�2_@�zMb/z @�W`0_@Ơ�p/z @��!b0_@�I28Az @Ҩ?�2_@��)Az @�}]�4_@�y�Az @�\'�4_@~J�Rz @�E7_@d��Rz @(Q{7_@yd\rAz @Q"�N9_@�@z @}�;_@zG��@z @\0\0\0\0\0\0\0\0\0}�;_@zG��@z @�n��;_@��y�Rz @�H��=_@�_3�Rz @� �@_@���Rz @���<B_@ϭ��Rz @\0S;B_@���@z @p�E9B_@4We�.z @�\'�?_@�C�/z @Ӊ��?_@�L�@z @����=_@^��@z @}�;_@zG��@z @\0\0\0\0\0\0\0\0\0e��F_@�eqRz @Nl4�H_@-)�bRz @��i�H_@�-.�@z @�ڞ�H_@D0��.z @M$��F_@rM��.z @X�K�F_@�Zv�@z @e��F_@�eqRz @\0\0\0\0\0\0	\0\0\0�����_@<��hz @zd܈�_@JC�TVz @F#��_@H�X�Dz @���K�_@����Dz @���_@Ԙ��Dz @����_@�UqVz @o�f�_@�l�8hz @�=�O�_@ů�*hz @�����_@<��hz @\0\0\0\0\0\0\0\0\0����_@����Sz @�Ą�_@-=�Sz @kkN�_@M��rez @tl�_@/Idez @����_@����Sz @\0\0\0\0\0\0\0\0\0f)�(._@��Sz @A��+_@|JZSz @�gz�+_@���dz @K\\�*._@5���dz @f)�(._@��Sz @\0\0\0\0\0\0\0\0\0 pdM_@�<FRz @6:R)K_@9��TRz @�+K_@�p%dz @e�:fM_@�Y�\rdz @ pdM_@�<FRz @\0\0\0\0\0\0	\0\0\01�l�_@AiN\'?z @\Z\'O��_@�5?z @f/��_@}Z?�Pz @�9絀_@����bz @G��_@�0��bz @؈",�_@&/8�bz @eV*�_@ܙ�Pz @<�8�_@\r���Pz @1�l�_@AiN\'?z @\0\0\0\0\0\0\0\0\0H���Z_@�z�cz @�ЍX_@)�h�cz @�/��X_@}�uz @\0	��Z_@��uz @H���Z_@�z�cz @\0\0\0\0\0\0\0\0\0Qv�#_@>��vz @�j�� _@n���vz @dUx� _@�鈺�z @�m�#_@�<G��z @Qv�#_@>��vz @\0\0\0\0\0\0\0\0\0�?Ԡ2_@�A/�dz @�N�e0_@!�s�dz @���g0_@9�vz @6�Ji0_@ڴV�z @W�h�2_@=fpH�z @����2_@��πvz @�?Ԡ2_@�A/�dz @\0\0\0\0\0\0\r\0\0\0e��F_@�eqRz @z��wD_@x<^Rz @���<B_@ϭ��Rz @!��>B_@�EUdz @|��@_@n�cdz @NTR@_@.\'-+vz @�Cp@B_@*��vz @E�:BB_@@ ��z @g�X}D_@�>ևz @��v�F_@[z�Ǉz @~��F_@~uV\0vz @q[�F_@�n�8dz @e��F_@�eqRz @\0\0\0\0\0\0\0\0\0�gz�+_@���dz @q\\�)_@�2>�dz @n�&�)_@�߹vz @�{\'_@��!�vz @���|\'_@��z @f��~\'_@$�cW�z @@ɺ�)_@� I�z @ש�)_@=���z @���+_@�<s�z @���+_@!O�:�z @�\0�/._@Ζ�,�z @�,.._@S��d�z @1�b,._@�7X�vz @ϏD�+_@�Л�vz @�gz�+_@���dz @\0\0\0\0\0\0\0\0\0#z�S9_@�F\0Vvz @���7_@��Edvz @��\Z7_@�M�+�z @wXo7_@���z @Vi�W9_@�	A�z @���U9_@����z @#z�S9_@�F\0Vvz @\0\0\0\0\0\0\0\0\0�Xf�X_@��U�z @wpHVV_@7�c�z @��XV_@�̒+�z @��1�X_@͊G�z @�Xf�X_@��U�z @\0\0\0\0\0\0\0\0\0ˤl�_@օ��z @˓§�_@�k�z @�P���_@�\\�\Z�z @y��j�_@�H!)�z @ˤl�_@օ��z @\0\0\0\0\0\0\0\0\0ܽ�.�_@�d���z @!o���_@��2��z @i���_@(�k��z @��q��_@�/��z @�Q���_@{�t�z @y��0�_@ӥ�f�z @ܽ�.�_@�d���z @\0\0\0\0\0\0\0\0\0�AB� _@��)��z @�\Z$�_@�Lk��z @���_@\ZfX�z @H0� _@y��I�z @�AB� _@��)��z @\0\0\0\0\0\0\0\0\0E�:BB_@@ ��z @"�@_@�Z��z @NTR@_@.\'-+vz @�b4�=_@��s9vz @��i�=_@L��qdz @.�K�;_@���dz @�o�;_@�L�Gvz @����;_@��Z�z @\0���=_@�/�z @���=_@:q�șz @���@_@��m��z @�0�\n@_@�\r��z @gF�EB_@6b�s�z @֘DB_@JB&��z @E�:BB_@@ ��z @\0\0\0&\0\0\0�\0\0+�"_@s��pz @�\n^_@��Abz @b�\'�_@tTz @\'}�_@�v�0z @�_�_@_e\r0z @�E�_@���Ez @��c\Z_@Q�7z @�?-\Z_@uJ%�/z @*��\Z_@����Az @L�N_@�Q��Az @o�2�_@�E�Az @��h�_@���/z @�&��_@`z @BUՃ_@\r6bSz @���_@�	���y @�9)� _@1?�}�y @:__� _@� ߵ�y @���� _@\0\0>��y @D�˷ _@Pݜ&�y @;<��"_@��[�y @5�.%_@�t\Z\n�y @-N$i\'_@ ����y @zSZg\'_@&�74�y @=�<,%_@%oyB�y @[�"_@�ƺP�y @��� _@���^�y @J	8� _@ÑZ��y @�8n� _@�h�Ϗy @����"_@+�x��y @N���"_@�z��}y @S\Z�&%_@!R��}y @Yo�a\'_@��T�}y @d�c\'_@����y @���)_@�����y @Cǭ�)_@.�T^�y @��w�)_@���%�y @\'�A�)_@v���y @-N$i\'_@ ����y @�J�j\'_@�y��y @�I�l\'_@�\Z��y @FJ�n\'_@�}�R�y @v���)_@�yD�y @�j�)_@��z @S4�)_@�ֺ�z @�Qr\'_@W��z @WX�s\'_@�@��/z @a�u\'_@?(?qAz @,@Ȱ)_@���bAz @T��+_@-��TAz @,��+_@λ�/z @�Q�+_@`�w�z @��o#._@:�4�z @^\\�^0_@���z @�$�\\0_@IHP�z @�q�!._@`��z @ռ��+_@�$��z @����+_@bV66�y @|���+_@ą�n�y @�!._@hiR`�y @�F._@U����y @dW0_@4n��y @|��2_@9\\*|�y @ط�2_@J����y @���2_@J��y @��4_@%�޲y @1z(7_@zl`вy @��7_@D�\0��y @FB9_@x����y @���C9_@�s\\Q�y @H\r�E9_@����y @��;_@k�\n�y @��;_@��W��y @N���=_@����y @e,u�=_@�-��z @{�?�=_@5}RSz @-b]�?_@�Ez @Yђ�?_@��k}z @Mt�5B_@h�$oz @�{7B_@�(�6z @���rD_@R�}(z @?�pD_@���`z @�loD_@��=��y @��8mD_@�}���y @)?2B_@S����y @��P0B_@�ZD�y @T"nkD_@�V�	�y @��8mD_@�}���y @LV�F_@|V��y @(� �F_@����y @5��F_@-�Rz @(Q	�H_@)/NDz @_�>�H_@+�|�y @��s�H_@�%��y @���H_@�n��y @V��H_@$�%�y @\0��\ZK_@!��y @{�0K_@���O�y @9��H_@<.^�y @�>��F_@�ul�y @�+�F_@��դ�y @hAfD_@?���y @���gD_@q�z�y @��iD_@�-]B�y @�.B_@"�P�y @v~�,B_@B���y @4��?_@�fJ��y @򵀶=_@R����y @�=��=_@I$�ݠy @���=_@=�O�y @�S!�=_@f�N}y @�v;_@���\\}y @�y�w;_@D[�$�y @6*�<9_@Ŋ�2�y @Ԇ{>9_@	{��y @P(^7_@���y @pؓ7_@�TA�y @��v�4_@8�cO�y @�C��4_@�\ZÇ}y @a��4_@z"�ky @�ć2_@�Yf�ky @|���2_@�	�}y @s�qN0_@ГJ�}y @ɉ�L0_@�ө�ky @�ć2_@�Yf�ky @����2_@w��Zy @<��4_@Sׁ�Yy @��4�6_@��=�Yy @[ R79_@���Yy @�Ior;_@���Yy @��p;_@ߏHy @2��n;_@�s>6y @�+m;_@ҝ�v$y @}(�19_@�o�$y @y�39_@[��L6y @g��6_@Qu�Z6y @�R��4_@ċ@i6y @���4_@�⟡$y @���4_@8��y @@��6_@�@��y @%#��6_@�[�$y @}(�19_@�o�$y @��(09_@�v�y @>�^.9_@;V��\0y @^�A�6_@`�\Zy @zcw�6_@�z<�x @V�Z�4_@�۽J�x @.S��4_@�*��x @�|sy2_@ɍ`��x @`�V>0_@5����x @��9._@!#��x @���+_@�U(��x @`�R�+_@�c���x @�!6�)_@M!��x @<6l�)_@(;�x @RoON\'_@OfiI�x @g�2%_@I�W�x @~��"_@@��e�x @��� _@��*t�x @� _@��;�x @{�c_@Y�J�x @�\r�(_@�=KX�x @�R*_@V���x @��5�_@��+.�x @�X��_@����x @�]�_@d��x @W髷_@!9��y @�ߎ|_@����y @Y`X~_@�\Z��y @/�!�_@�.i%y @|?�_@_&�Z%y @�\'\\�_@,G�L%y @�%�_@&�R7y @gf��_@\r��Hy @���_@�l��Zy @����_@��6kly @FSL�_@t&�2~y @��\Z_@ �y��y @ԍ��_@м��y @]+��_@�#ZСy @�ʋ�_@����y @olU�_@0�_�y @}�7�_@��m�y @Gm�_@�b}5�y @���V_@��C�y @�!�_@]�Q�y @>y��_@�A8`�y @���_@�����y @��_@A�гy @���_@{a2߳y @�.�_@v���y @�"e\n_@���%�y @��Gc\n_@��+^�y @c�~a\n_@F��~y @la&_@�tƤ~y @\nӗ$_@g�$�ly @�nz�_@ȍ`�ly @�]�_@���ly @h�?s_@�?�my @9�vq_@�65@[y @�㓬_@ �1[y @��ʪ_@�$XjIy @r�o_@�+�xIy @R!�4�_@n�͆Iy @��2�_@��+�7y @�ө��_@H�e�7y @*����_@��&y @h�0�_@ґ��%y @��2�_@��+�7y @�]�m_@��7y @ڟ�_@�&��7y @���_@��z�7y @-�U�_@����%y @����_@h�6y @��_@�C��y @�z�_@,_Y/y @�b��_@%�=y @"=��_@���u�x @0H_@jx�g�x @�N_@����x @Q�_@��s��x @��g�_@\0\n���x @\'K�_@�	���x @�.c_@�$�x @(�_@��^�x @�H&�_@���I�x @�0+��_@Om�W�x @�Eb��_@�0T��x @"]���_@��ȗx @ʇ|��_@�,�֗x @�����_@C�H�x @����_@���Gtx @��m�_@0@�Utx @"�o�_@J���x @�z4�_@��+�x @�G]��_@���9�x @��%��_@�|��x @z	��_@"��x @)?��_@�a�x @ʤ#��_@k�`V�x @h[��_@#��tx @v��_@���bx @�uD�_@-,R�bx @@3�B�_@1x�\rQx @���@�_@(�F?x @�	��_@�BT?x @���_@]!��-x @7�_@�W��x @5�S=�_@�OǶx @�)?�_@\nj~-x @���@�_@(�F?x @5O|�_@�5�7?x @����_@�C�)?x @�QU��_@���a-x @��q��_@2c�S-x @�:���_@��"�x @��)�_@�9�}x @=�d�_@�6�ox @q��f�_@/�U7-x @��sh�_@�\r��>x @$�<j�_@�u��Px @�+Y��_@s�a�Px @��u��_@��(�Px @"���_@r���>x @P���_@9M�\Z-x @_�ǡ�_@�*)-x @G����_@�zax @.�5��_@Boؙ	x @�^R��_@����	x @|7��_@��ASx @P���_@9M�\Z-x @C�\0�_@\n�-x @��7�_@J�Ex @�)TQ_@&3�6x @�7�O_@�-o	x @���_@��`	x @�ވ_@4�P��w @PG�M_@�Њ��w @�X�K_@]����w @�l0J_@�eF�w @X�gH_@�-�P�w @��F_@���w @0n��_@�.;��w @�IK\r�_@�x�^�w @=/��_@�^m�w @����_@�N{�w @�J��_@�u���w @��-Z�_@7����w @Y+eX�_@jB��w @jP���_@�\n\n�w @C����_@R�g$�w @\Z���_@\0.�\\{w @�\'��_@��"�iw @�c^��_@I��Ww @�qBQ�_@���Ww @~}&�_@�^��Ww @5��_@S�iw @Y���_@�ȿiw @����_@3���iw @A���_@�\\Xw @_�\n��_@XQ&�Ww @a�A��_@#��0Fw @ciy��_@��h4w @��]��_@�tw4w @�Aa�_@�}M�4w @q�%&�_@� ��4w @��	��_@F^��4w @0���_@u6�4w @��t�_@/�!�4w @�(�9�_@q�U�4w @c<���_@=^��4w @;���_@�9�#w @`4���_@Vl!#w @�P���_@�9L/#w @�E҄�_@��gw @=\n��_@\0���v @&��_@��ґ�v @��A��_@ꟃ�v @��y��_@(����v @�]��_@V�/��v @�╺�_@����v @�1z�_@��v @�.�}�_@\0�I�v @&.�{�_@�wx��v @b/"z�_@�%չ�v @��?�_@� Ȧv @���_@��8֦v @�0#�_@3C��v @����_@�c��v @�&��_@!�*�v @���_@~���v @?����_@��i�v @�[���_@g\r��v @j�{��_@�A>��v @���_@~���v @�[�R�_@��\0�v @6�|�_@���v @�,a��_@�*�v @�E��_@�Y+�v @�*\r��_@w���v @��Ԥ�_@π���v @�y���_@�,r��v @�+�_@UsB��v @�\'V�_@kT��v @@�C��_@���v @e6_��_@6�s�v @�\'��_@�bT;�v @����_@x���v @Ҷ��_@V���v @�����_@nn���v @_+[�_@c!���v @Kd�Y�_@ɉY�v @����_@�ǉ-�v @"���_@F��;�v @�d��_@T�I�v @2Hm�_@� X�v @ڟ�k�_@.It��v @��i�_@]o���v @�W�.�_@w����v @�����_@-��v @@I��_@�Ѭ�v @���_@�ut�v @p����_@�袂�v @��؀�_@�`А�v @,A���_@�ttX\0w @�Z�G�_@T��f\0w @p�KI�_@��E.w @�	K�_@����#w @ad�L�_@��5w @�p���_@i�`�5w @6{��_@��2�5w @����_@���hGw @i���_@��z0Yw @#E���_@j��>Yw @�ٽ��_@�wGw @���N�_@�2�Gw @ad�L�_@��5w @�U��_@�޺�5w @����_@8	_�Gw @��iع_@)���Gw @��0ڹ_@*�/iYw @����_@%\\wYw @��۠�_@�Z\0?kw @*���_@��}w @�Іg�_@���}w @ZNi�_@T�t܎w @�5k�_@6��w @��/�_@0�D��w @���1�_@jD�y�w @U����_@����w @K�j��_@0\n�O�w @=�1��_@�q]�w @V;��_@l��%�w @�P���_@}�,��w @�g�®_@oѴ�w @_����_@�>���w @��M��_@���x @9���_@l=ERx @�1Ʈ_@JO\ZDx @�[N�_@���5x @�k<�_@�B�\'x @�:�_@��`x @=��u�_@���Qx @�T�s�_@2�N��w @H���_@!<"|�w @��2�_@�q�m�w @����_@��5x @bAݰ�_@o�Cx @z����_@�jx @�Շw�_@�#�x @�Oy�_@Kb;�.x @XP2>�_@d�g�.x @Å�_@\0Y��.x @1��Ǯ_@��/x @��ی�_@���/x @\Z�Q�_@�Q(/x @��S�_@�۸�@x @|@i�_@���@x @f;0\Z�_@���Rx @J8��_@-J,�dx @�=��_@�EV�dx @�/��_@h��bvx @�#h�_@*�x @�\rK��_@>�8�x @���_@��m\0�x @l�ج�_@�ȫx @��_@��蹫x @#��_@^���x @4��_@j�1I�x @�f��_@��[W�x @�ϟ��_@�A���x @l�ج�_@�ȫx @˰�q�_@�<֫x @i��s�_@ۿ���x @�sIu�_@"w�e�x @�&,:�_@;��s�x @���;�_@�cS;�x @�ع=�_@�&��x @#?�x�_@�����x @�\'�z�_@��s�y @e��?�_@/��y @?c�_@?���y @-*�_@D�j�y @0�˚_@MA��y @}R�̚_@�8v(y @9���_@.rh(y @>��	�_@<�/:y @�S�D�_@��!:y @�qC�_@$b�Y(y @��+~�_@��K(y @7e|�_@�?�y @A����_@t�uy @��I��_@��=(y @����_@��7:y @:���_@��a:y @�ݹ��_@a@�Ky @-Ѐ��_@1窢]y @��G��_@�Ojoy @Z�e��_@�r%\\oy @��,£_@�#�y @���ã_@>�n�y @ӑ�ţ_@H&��y @�s�\0�_@Ay褤y @�_��_@��Cݒy @!3/:�_@��ϒy @�h8�_@��t�y @مs�_@m+I��y @���q�_@�Ƥ1oy @jeܬ�_@�y#oy @�����_@�l�y @��j��_@�����y @bMu�_@����y @�1w�_@��y @�\r2��_@fz�y @�I���_@`\nB�y @a�x�_@+M6P�y @Zv�=�_@��a^�y @�?�_@�@&�y @��KA�_@�����y @�C�_@{O��y @�0~�_@l\\#��y @M2��_@���n�y @�k���_@�l6z @�ݼ�_@_�?(z @u����_@@,\Zz @0���_@e_�� z @f@�4�_@<J�� z @ۣ�6�_@�k.�2z @�e���_@��[�2z @��Q��_@���pDz @�q3¬_@3�,Dz @��ì_@���FVz @��Ŭ_@(uhz @�����_@<��hz @��j��_@�E�yz @�uLQ�_@$r�yz @e�S�_@x\\��z @42��_@�\Z꫋z @��Pɬ_@�s���z @�ˬ_@"�ae�z @�6�_@�4W�z @L"UA�_@X\nI�z @��C�_@���z @�(;~�_@�&}�z @��Y��_@��N��z @!1���_@]֪,�z @����_@$|�z @8�-�_@/M�z @Yܖ/�_@S��׮z @�i�j�_@gT�ɮz @��ӥ�_@�a���z @�6��_@ѫ��z @%{D��_@��I,�z @��b��_@���z @�X��_@��z @W���_@πEHyz @a��Q�_@>�:yz @oğS�_@���z @9.���_@X���z @����_@,�T�z @����_@r�"׊z @\Z��_@�ƞ�z @�t�A�_@�[���z @?��|�_@oL`��z @~�7{�_@\\���z @W!V��_@\0����z @2t��_@�U��z @�E���_@���xz @��*�_@�~�xz @ے,�_@��!��z @2t��_@�U��z @o�<��_@��e�z @�O��_@��,t�z @R���_@��;�z @����_@�-�z @m#0�_@�g�z @^�Ak�_@o3�z @9\nm�_@D\r�ؿz @/�(��_@�ʿz @�Q`��_@����z @�~��_@�x���z @N3G��_@kSk��z @r�e�_@+^5��z @�.��_@��z @홻W�_@�G\\حz @Vڒ�_@��%ʭz @�l��_@���z @~�H��_@s8�:�z @F���_@!�=sxz @�����_@�њ�fz @)�P�_@gDѹfz @�bR�_@Qt�xz @��C�_@�$��xz @�F{�_@�Q�fz @)�P�_@gDѹfz @t��N�_@k~.�Tz @)\'��_@O��Tz @�N\r��_@�R��Tz @��D��_@��Cz @��b��_@���Bz @�t+\0�_@y$��Tz @���_@Ի,�fz @M=�_@���fz @��>�_@L��Hxz @tƼ�_@Q�Vxz @?����_@e�exz @n&g��_@-A�,�z @_r��_@[�q�z @U��@�_@�!:�z @�vlB�_@���כz @�ˊ}�_@*l�ɛz @L�{�_@��z @�>�y�_@�_:xz @|{0x�_@��rfz @�gv�_@y�\Z�Tz @���t�_@&x�Bz @��9�_@���Bz @�4�7�_@�z\r*1z @6=�r�_@Ġ�1z @{C���_@a�\r1z @�\r���_@��?�Bz @����_@�Bz @�����_@Ot��Tz @�م��_@�8�Tz @��N��_@`��dfz @"x��_@\',xz @^�5��_@�$�xz @A����_@�y��z @>�-�_@!W׉z @ܽ�.�_@�d���z @�\nj�_@ٖ���z @>;h�_@�bɉz @>NY��_@T?㺉z @B�w��_@$����z @�@��_@��Jt�z @��^�_@��f�z @o(�_@�ϱ-�z @�XFX�_@Q\\v�z @v�d�_@^�:�z @gl��_@e��I�z @/���_@vp\\;�z @af��_@�s�z @m�_@~e�z @�FE_@Lܝwz @P�{_@�:�ez @�\r�=_@����ez @.jc?_@ q��wz @��z\n_@�0b�wz @��J|\n_@��I�z @�"i�_@%�:�z @�L��_@�	�,�z @.�P�_@��)��z @�[\Z�_@\'˻�z @@�81_@^y���z @��Vl_@tM��z @̀ n_@n��f�z @�>�_@�^�X�z @l]�_@�~oJ�z @�U��_@�8΂�z @{���_@r�,��z @N��\Z_@�쬚z @\Z\Z_@B�K�z @/<U_@�׈z @8NrS_@��iwz @�<T\Z_@jR�wz @�)6�_@�Y�+wz @+�_@Z�):wz @��_@\\W��z @�k��_@M�lɚz @�:�j_@��ךz @Ӛ�h_@�\n�z @�t�-_@F�I�z @|��+_@�Vwz @8T*_@��ez @�E��_@g�D�ez @	5ֳ_@Zez @?��_@�O��Sz @g��v\n_@���Sz @ZV%u\n_@�&}*Bz @B[:_@p8�8Bz @�>8_@�vq0z @� �_@`U0z @�V�_@@��z @l���_@�j�z @��o�_@��M�z @��Q�_@5�\rz @��3H�_@\0��\Z\rz @y�jF�_@�{"S�y @��D�_@�s���y @v��_@�EE}�y @T[�}_@BK���y @07-|_@�N��y @�J�_@\\����y @��h�_@�\0���y @��1�_@G�+��y @AsO/_@���y @�!mj\n_@/۲|�y @\0{6l\n_@��TD�y @f4T�_@.n6�y @8��_@����y @^`;�_@tz{��y @�"Y_@hv=��y @ѥ"!_@��ިz @+�"_@s��pz @\0\0\0�|�_@�c"~z @]��_@	���y @,�\Z_@�nA��y @m͙\r\Z_@(��oz @�|�_@�c"~z @\0\0\0��vZ_@����y @�T�X_@Đ]�y @˓_@<���y @נ��_@�=���y @��vZ_@����y @\'\0\0�d"��_@R���y @����_@��6�\rz @@͂�_@�,m�\rz @�|��_@Al���y @���E�_@��\0�y @���\n�_@�16\Z�y @�=\0	�_@�O�R�y @x\\���_@u��`�y @*\Z��_@��%��y @کQ��_@r����y @�S���_@۩�	�y @��k��_@�P�y @�3��_@�W���y @YT�_@T����y @�F��_@y���y @�v���_@S\n�y @-����_@09��y @ʽ���_@a|)��y @X�fi�_@yF\\��y @��H.�_@	����y @���,�_@�H�4�y @���*�_@|�Gm�y @�3���_@x�y{�y @$c��_@L8C�y @}+��_@��\n�y @�\n���_@�d��y @�չ�_@���y @]���_@�?9��y @��d��_@��oz @`�F��_@�~z @?���_@(��E z @��,��_@\Z4�7 z @3����_@�#�1z @ɻ���_@ ��Cz @󆞇�_@ ���Cz @�օ�_@�,U\r2z @?���_@(��E z @��H�_@���S z @���\r�_@�Yb z @/�\n�_@�o�z @�����_@䟨z @��$��_@�*���y @���_@��+��y @M��X�_@?[��y @;!W�_@�d�5�y @\n:�_@ G�C�y @��;\Z�_@J[B|�y @t�_@dm���y @�5Vݷ_@\'����y @���۷_@��(��y @�;�ٷ_@+ʄ3�y @�i���_@d��A�y @��p��_@k�V	�y @$�Re�_@�7��y @ٕ�c�_@�O�y @̿m(�_@B%\r^�y @:l�&�_@4�h��y @�_@Z����y @\\��_@�H�܀y @�\Z�$�_@��΀y @\n�#�_@׈ oy @7��_@�Moy @W�2�_@5��M]y @l}P!�_@�P|?]y @�1��_@:�wKy @&���_@��3�9y @�q�X�_@�(�9y @`W�_@��b�\'y @}���_@d���\'y @�Z3\Z�_@�Z� y @��߮_@��/y @��Nݮ_@~5sgy @!l�_@[GYy @�Z3\Z�_@�Z� y @��PU�_@�Ⱦy @9n��_@ёy @K��˷_@�sd�y @f;�ɷ_@�_�.y @}��Ƿ_@�Ig�x @ɀߌ�_@�Iu�x @�\'��_@B`���x @���O�_@g)һ�x @����_@����x @�W�_@LDZ�x @��׮_@�2��x @��1֮_@���H�x @Y���_@AR\rW�x @�M��_@d�h��x @�v���_@xx�Ǚx @rZ���_@� \0�x @�h�Ю_@f���x @���Ү_@����x @üjԮ_@C|=��x @z��_@��s�x @���\r�_@�]m��x @���H�_@8A��x @-G�_@���Շx @q�3��_@{pǇx @�����_@����x @���H�_@8A��x @5�J�_@�w�d�x @�\'�_@�ܸV�x @.{���_@�\n]�x @���·_@�/�x @�G���_@�܋H�x @ye���_@w^:�x @.����_@��x @�@���_@�����x @�	nķ_@`���x @�m5Ʒ_@�1x��x @}��Ƿ_@�Ig�x @4$\Z�_@��X�x @��R�_@s�J��x @��o<�_@ʣ��x @v�:�_@��x��x @���8�_@O���x @:!�s�_@*k��x @e��u�_@�XJ��x @�3�w�_@�D�t�x @�q���_@��f�x @����_@ã��x @�	\0��_@���x @Vh8��_@_�Hɼx @�E��_@��w׼x @޲S��_@6���x @�!���_@�0H�x @�ĩ�_@w���x @^����_@�A]r�x @����_@��-d�x @"2�!�_@��+�x @?7�\\�_@�\r��x @^:\0��_@a�q�x @<�Ǚ�_@��תx @ď��_@�7���x @}�r`�_@�s鬼x @�b:b�_@B#�t�x @�W��_@�\\f�x @E�t��_@g\',X�x @Չ<��_@\0���x @�Y�_@K���x @�ؑ�_@9�I�x @Q���_@�W��x @�\r�L�_@�#&t�x @�!K�_@C����x @�7WI�_@�:��x @�2t��_@֘x @->���_@�\n�x @XK��_@f�fGux @+��_@X�49ux @���_@�]+ux @x�U��_@|_ccx @y�r0�_@�[,Ucx @��:2�_@���ux @B�Wm�_@8p�ux @{��k�_@�A�Fcx @�x�i�_@�VQx @k��.�_@!��Qx @[��,�_@;���?x @G�\Z+�_@E�B�-x @z����_@/u.x @�����_@�o�?x @O8���_@��J�?x @�@��_@�<�\Z.x @K��_@��Sx @	��w�_@�5ax @$�4v�_@R��\nx @sWQ��_@pp`�\nx @K��_@��Sx @!�5��_@���Dx @��m��_@o.}\nx @x�\'�_@9�n\nx @0�R)�_@@P�6x @G�\Z+�_@E�B�-x @;7f�_@ݪ�-x @��S��_@�Y��-x @Z����_@39\Zx @rM���_@.�x @��p��_@����-x @�#��_@��t�-x @k©R�_@^@�-x @*rT�_@���~?x @�����_@B�p?x @8W��_@��P8Qx @�e:V�_@���FQx @��X�_@�(cx @����_@��]cx @�?��_@��\0�tx @��v �_@8����x @�Y��_@��׹�x @��<��_@��Ȇx @���_@g���x @?�!��_@�{��x @x/���_@�\rI�x @�t���_@���x @�z��_@�d��x @n�]��_@�[���x @��@v�_@�8���x @Eaxt�_@�)-�x @�T[9�_@D|\\;�x @�5�7�_@�F�s�x @�3v��_@[9쁪x @�E>��_@o~�I�x @)Z\0�_@t�2�x @hp��_@k���x @FF���_@%���x @�Qy��_@����x @����_@RAy��x @���>�_@�F��x @{�{@�_@�=�Yy @$�{�_@��Ky @�Ya}�_@ɳXy @z�)�_@g���&y @��F��_@���&y @.�~��_@�$y @����_@���y @�2�.�_@�2��y @ܐ�0�_@�^�&y @\0�k�_@��(�&y @�Ngm�_@?��i8y @�����_@F̕[8y @&1���_@\\�&y @˹��_@o6P�y @lD+��_@ih�y @�h�_@�	�y @\Z�Ef�_@ *@K�x @�b��_@R�\n=�x @lD+��_@ih�y @xH��_@�aw�y @����_@��.�x @�y���_@g�1g�x @�_���_@-�gu�x @tC}d�_@pH���x @��b�_@�d���x @Uϗ\'�_@�q/��x @d{�%�_@�|��x @t)$�_@)��:�x @q!$_�_@��,�x @��`�_@�~W��x @��b�_@�d���x @B�ѝ�_@��ĭ�x @ۂ	��_@�"�x @��&��_@S�׻x @r^��_@?�I�x @x�z�_@�k�x @Z�C�_@�$�ɻx @;	�_@�X��x @�)O�_@�8"��x @`M�_@(���x @�y}��_@��H��x @�r���_@G9��x @�c��_@���f�x @��+��_@FHV.�x @����_@�����x @��_@�����x @�.?�_@{����x @o��@�_@��*�y @�R�B�_@�E�hy @{#�D�_@\0�o0&y @��QF�_@�7y @\n�4�_@��J8y @C�k	�_@,�>&y @�N��_@�M�L&y @X��_@�ɂ8y @)���_@=��"8y @s��_@�]�Iy @ ���_@�C%�Iy @�o��_@2��Iy @�9��_@�k��[y @���I�_@�V�[y @yy�K�_@��Nmy @��Ɇ�_@+�@my @l��_@՚y[y @�i��_@\Z�j[y @N�;��_@�3�\\[y @���_@\\L$my @�����_@E���~y @c͖\0�_@]����y @�Ey��_@E����y @�=B��_@��l��y @F�$��_@ū���y @z���_@��H_�y @[��R�_@�S�m�y @<H��_@HW�{�y @�{�_@n�]C�y @�јT�_@n�$5�y @>�aV�_@�����y @��*X�_@o3i��y @X��_@�e���y @\0���_@2���y @�η��_@��}��y @���_@?���y @�|m�_@P���y @�.^2�_@��%��y @�J@��_@�]��y @�d"��_@R���y @\0\0\0hH��_@˛/��y @�t��_@�b���y @s1���_@DuS��y @]1f��_@�����y @���	�_@�;���y @^M�_@�S]a�y @F3/��_@�ŗo�y @,7���_@+�97\rz @WTږ�_@ttE\rz @.]��_@���}�y @hH��_@˛/��y @\0\0\0R\ZU��_@�_C�\rz @�m��_@]\\��z @ib�\\�_@��\Z�z @�7[�_@a�wz @R\ZU��_@�_C�\rz @\0\0\0�����_@\rR�pz @����_@���\rz @��&4�_@�\\Ț\rz @P�Do�_@ޡ��\rz @ā\rq�_@T"3Tz @?��5�_@��jbz @�����_@\rR�pz @\0\0\0:����_@�Q�~z @s|��_@��{F1z @9^��_@?��T1z @�����_@���z @:����_@�Q�~z @\0\0\0��?K�_@F��b1z @�}M�_@`��*Cz @�^��_@g��8Cz @��!�_@��q1z @��?K�_@F��b1z @\0\0\0��%��_@��\rDz @�S휾_@��^�Uz @�a�_@|c��Uz @�``�_@���Dz @л?^�_@|�FT2z @ˇ!#�_@��ub2z @`�Y!�_@=�њ z @�\\��_@�.�z @|w�Z�_@J��z @�x\\�_@f� z @�=���_@ws~ z @��]��_@�;F2z @�|��_@,P�72z @��C��_@-��Cz @��%��_@��\rDz @\0\0\0�����_@z�vFDz @�t��_@��\ZVz @.�Uu�_@��HVz @R�s�_@��TDz @�����_@z�vFDz @\0\0\0dz_@�O_&�y @���x_@�N�^�y @{d}=�_@a>�l�y @S�;�_@�+V��y @���v_@�K��y @��u_@Gy�~y @�/&�_@>�~y @lX�_@����y @��_@�[�z�y @�U*(_@Khl�y @,��)_@2\n4�y @���_@F?FB�y @`I��_@\0!�	�y @5���_@ �#�y @dz_@�O_&�y @\0\0\0�Kl_@?O�%y @u;Rj_@���!y @�co�_@p%ry @�8�_@)\'�%y @�Kl_@?O�%y @\0\0\0�����_@aݮ�x @5���_@��:��x @��)�_@���x @��d_@�����x @!�f_@�h��x @��+�_@\0)���x @�����_@aݮ�x @\0\0\0��[]�_@\Z�e�x @j�[�_@)�n��x @�F���_@��9��x @�x��_@i�V�x @��[]�_@\Z�e�x @	\0\0\0ɐÝ�_@\n�R\nx @7l���_@����w @�I3��_@ݱO��w @��O��_@�9��w @m\'l�_@�[��w @zc4�_@�i�n�w @����_@�u.6\nx @%\Z���_@�rbD\nx @ɐÝ�_@\n�R\nx @\0\0\0W�Pa�_@�Wn��w @��_�_@J���w @�\\���_@H��\n�w @�����_@�[��w @χ���_@@_���w @%m��_@L6��w @W�Pa�_@�Wn��w @\0\0\0���\\�_@	�R��w @�[�_@u����w @��1��_@�ŀ��w @�j���_@�$��w @���\\�_@	�R��w @GZ�^�_@�����w @��k`�_@��Q�w @c���_@�lC�w @�O��_@�x @!c��_@����x @1��c�_@����x @�<3b�_@n�>x @��\'�_@vUl\'x @%0O%�_@�A�_�w @�̇#�_@�+$��w @�j�!�_@����w @���\\�_@	�R��w @\0\0\0}��7�_@\'0|�w @J��5�_@ȣ�P�w @d�p�_@���B�w @����_@�.v4�w @)v���_@����w @Q��r�_@�K\n�w @}��7�_@\'0|�w @\0\0\0"ȇ��_@��9m�w @݂O��_@e.�4�w @3��_@K\rC�w @Sk��_@ZZi{�w @"ȇ��_@��9m�w @\0\0\0����_@����w @(bN��_@�R��w @r�j�_@��#��w @�b2�_@��Ǘ�w @����_@����w @\0\0\0Ӝ1��_@L��l�w @$�i��_@�M/��w @����_@%����w @5�M��_@\r��^�w @Ӝ1��_@L��l�w @\r\0\0\0VF6��_@�h@x @����_@���Qx @�>��_@�K��Qx @�����_@/���cx @��W�_@>��cx @�>o�_@�n��cx @p��\Z�_@;�B\rRx @����_@�՞E@x @k��S�_@lo7@x @߄��_@�?)@x @��Q��_@k�a.x @��n��_@o�kS.x @VF6��_@�h@x @	\0\0\0���?�_@)��@x @���A�_@�%�~Rx @���|�_@�؃pRx @��~�_@�(8dx @\0�C�_@�mTFdx @Mk�_@�d�Tdx @xߣ�_@{\r܌Rx @����_@F�7�@x @���?�_@)��@x @\0\0\0:$���_@�汾Ky @*0���_@�nV�]y @*����_@�݀�]y @��׼�_@VF��Ky @:$���_@�汾Ky @\0\0\0>���_@f��(z @��2��_@�<a�y @��P�_@��S�y @�\Z �_@��\Zz @>���_@f��(z @\0\0\0\'��1�_@ZiՋ�y @	�0�_@92��y @6�.k�_@"����y @��l�_@��}�y @\'��1�_@ZiՋ�y @\0\0\0�Z�M�_@���qBz @^��_@cocBz @\Z�v�_@��+Tz @K�XO�_@؅L9Tz @��!Q�_@���\0fz @��_@Զ)fz @����_@%���wz @ix���_@Q��wz @"I���_@�A�wz @Fǟ�_@��+fz @�!�d�_@��9fz @-�b�_@��6rTz @�D���_@��cTz @Fǟ�_@��+fz @�h���_@q�dfz @�Z��_@k�UTz @}n:�_@q��GTz @K�XO�_@؅L9Tz @�Z�M�_@���qBz @�Uq�_@���Bz @�NS��_@}N �Bz @�D���_@n/~�0z @C?��_@~�C�0z @�7�K�_@��0z @�Z�M�_@���qBz @\0\0\0��>��_@;r�fz @\\-��_@�-�xz @7��e�_@�J�xz @y� d�_@���fz @��>��_@;r�fz @\r\0\0\0\\���_@ƶ\nO�w @����_@��8]�w @ᬆW�_@ wfk�w @~F�U�_@^f£�w @��ې�_@qȔ��w @�����_@�f��w @\\���_@ƶ\nO�w @R���_@c>�@�w @(�C�_@�`�2�w @u��E�_@(1Q��w @�?�\n�_@���w @Uކ��_@p���w @\\���_@ƶ\nO�w @\0\0\0U�_@0~$�w @��L}�_@Z�\\�w @�h��_@���N�w @=1���_@��z@�w @��L��_@f�w @ߣ0��_@`tN�w @U�_@0~$�w @\0\0\0��f��_@Ά�΍w @iǞ��_@�\\I|w @���_@n��{w @��_@�����w @��f��_@Ά�΍w @\0\0\0p�@�_@y���{w @��?�_@��>#jw @b�*z�_@��\njw @�%�{�_@���{w @p�@�_@y���{w @\0\0\0�[��_@�">jjw @�VJ�_@�}�1|w @z-.��_@#h@|w @?f��_@\0�oxjw @�[��_@�">jjw @\0\0\0��-f�_@��Ҕjw @�,fd�_@y�.�Xw @�@���_@����Xw @L J��_@�s��jw @��-f�_@��Ҕjw @	\0\0\0�|��_@��5�Xw @�k*��_@%���Fw @9iF��_@��_�Fw @�db\0�_@߀,�Fw @�]~;�_@����Fw @��F=�_@�ڛ[Xw @��*�_@s��iXw @����_@�xXw @�|��_@��5�Xw @\0\0\0x;�_@�.zLGw @�J9�_@�Qք5w @��ft�_@Sk�v5w @����_@�xh5w @�9J��_@��0Gw @�*.v�_@�8K>Gw @x;�_@�.zLGw @\0\0\0i��%_@��p%y @j�#%_@p��=y @�@W\'_@ï�/y @��\nY\'_@;�/�$y @i��%_@��p%y @\0\0\0\0\0\0\0\0\0���2_@���׫z @{a�l0_@���z @��n0_@v����z @w�ǩ2_@�\rR��z @���2_@���׫z @\0\0\0\0\0\0\0\0\0՗�T_@���9�z @V�*T_@�>r�z @�v_T_@t\\��uz @s�A�Q_@ѳ�uz @�#�O_@��2�uz @��hM_@�1|�uz @F��,K_@�X��uz @���H_@��uz @�Ք�H_@���z @v�_�H_@GN��z @A{*�H_@[��H�z @ވH2K_@O�:�z @V�}0K_@�!s�z @6��kM_@�ۻd�z @{�fmM_@��[,�z @\Z���O_@���z @����Q_@����z @y�m�Q_@v�g׼z @��� T_@��ɼz @U��T_@�K}�z @՗�T_@���9�z @\0\0\0\0\0\0	\0\0\0r�s�_@P�X��z @��}�_@B����z @L�B�_@Ջ�ȯz @�UD�_@^f���z @\\6	�_@�ީ��z @�\n�_@��Nf�z @p�F�_@�>&X�z @߱:��_@OQ�I�z @r�s�_@P�X��z @\0\0\0\0\0\0\0\0\0r�e�_@+^5��z @[.. �_@T\'�u�z @?�L[�_@���g�z @�%�Y�_@^���z @r�e�_@+^5��z @\0\0\0\0\0\0\0\0\0Q�㾀_@�����z @�Ń~_@�nH��z @����~_@u���z @�����_@�O�r�z @Q�㾀_@�����z @\0\0\0\0\0\0\r\0\0\0ˤl�_@օ��z @=\0�1�_@��z @s3i��_@�Lf\r�z @�R5��_@�թz @,S3�_@�f�Ʃz @�Y5�_@��O��z @�s��_@�����z @�����_@�UAd�z @���6�_@D��U�z @�z	r�_@1�G�z @#>=p�_@���z @�qn�_@��]��z @ˤl�_@օ��z @\0\0\0\0\0\0\0\0\0��ՙ;_@+|��z @h���=_@�a5��z @SG)�=_@�(��z @9�;_@���-�z @��ՙ;_@+|��z @\0\0\0\0\0\0\0\0\0�ԃ�D_@W����z @��eIB_@���z @[0KB_@µ���z @�N�D_@��^��z @�ԃ�D_@W����z @\0\0\0\0\0\0\0\0\0\Z��G�_@A��z @����_@���-�z @٪��_@�����z @���I�_@��o��z @�pȄ�_@�F��z @G���_@>��z @\Z��G�_@A��z @\0\0\0\0\0\0\0\0\0�^4�_@޿$��z @�4?��_@��N��z @�.��_@t���z @�\n%6�_@JVɮ�z @�^4�_@޿$��z @\0\0\0\0\0\0\0\0\0��ՙ;_@+|��z @�_�^9_@3w��z @Q�`9_@]�b��z @�0��;_@�e��z @��ՙ;_@+|��z @\0\0\0\0\0\0\0\0\0���֔_@�9��z @�k��_@�J���z @38��_@>/-��z @�Vؔ_@m�ր�z @���֔_@�9��z @\0\0\0\0\0\0\0\0\0"W�n_@�[t�z @��8�l_@W ���z @A��l_@\rJJ{ @��"�n_@v�;{ @"W�n_@�[t�z @\0\0\0\0\0\0	\0\0\0ԛ7�F_@8l�u�z @>W�D_@�����z @��D_@�՞K{ @�l�F_@�bV={ @�?��F_@W�{ @��I_@�n��{ @6� \0I_@�\r/{ @j�U�H_@@�mg�z @ԛ7�F_@8l�u�z @\0\0\0\0\0\0\0\0\0ogOO__@�B�{ @,1]_@�l�{ @�~�]_@�jv{ @��\ZQ__@!��g{ @�9�a_@�EqY{ @��m�a_@�ґ{ @ogOO__@�B�{ @\0\0\0\0\0\0\0\0\0c7V��_@�`�h\Z{ @�;7M�_@$��v\Z{ @��N�_@HZ^>,{ @���_@W50,{ @c7V��_@�`�h\Z{ @\0\0\0\0\0\0\0\0\0��v�_@]�iI{ @\0�X��_@L��W{ @W�$��_@T�\\&{ @#C�_@��&{ @��v�_@]�iI{ @\0\0\0\0\0\0\0\0\0���e�_@��,{ @���*�_@ߋ;{ @�Ma,�_@���&{ @pvg�_@��\\�%{ @����_@���%{ @�Ѡ�_@6�h{ @���e�_@��,{ @\0\0\0\0\0\0\0\0\0�@6*\Z_@	V��({ @)��_@�6�({ @�y��_@�0ؿ:{ @\0,\Z_@E~��:{ @�@6*\Z_@	V��({ @\0\0\0\0\0\0\r\0\0\0G�d�Q_@rօ�{ @���Q_@,0��{ @1�{�O_@��0{ @7�F�O_@�T��{ @$N(xM_@�m\Z�{ @kI�yM_@-1��\'{ @<��O_@�p�\'{ @\r0�Q_@�z%�\'{ @�#��Q_@��L9{ @]�-T_@�z>9{ @�kN+T_@��v\'{ @YJ�)T_@t�:�{ @G�d�Q_@rօ�{ @\0\0\0\0\0\0\0\0\0�\'�R__@��]/\'{ @��]_@���=\'{ @�)�]_@�J9{ @��T__@���8{ @�\'�R__@��]/\'{ @\0\0\0\0\0\0\0\0\0Ez�y�_@Rw�>P{ @��w�_@x1?w>{ @�۬<�_@��d�>{ @9��~_@�<��>{ @WT~_@a�/[P{ @�Fs>�_@"?\nMP{ @Ez�y�_@Rw�>P{ @\0\0\0\0\0\0\0\0\0�)"�_@p��={ @�ǘ_@�+��={ @��Ș_@�T�O{ @�-��_@\r�*�O{ @�)"�_@p��={ @\0\0\0\0\0\0\0\0\0�l	��_@<�<{ @A��Q�_@N�P�<{ @&��S�_@N��\\N{ @(�ю�_@�3�NN{ @�l	��_@<�<{ @\0\0\0\0\0\0\0\0\0Ez�y�_@Rw�>P{ @��X{�_@��b{ @2x��_@C~c�a{ @«���_@�I�0P{ @Ez�y�_@Rw�>P{ @\0\0\0\0\0\0\0\0\0�/�Dh_@�\'M\\{ @u��Bh_@�%d�J{ @��~j_@]wJ{ @�TI|j_@=\'v�8{ @A�*Ah_@"Ž8{ @��f_@c��8{ @/H��c_@�a�8{ @�ƹ�c_@+\n�J{ @./�f_@�ʲ�J{ @���	f_@$�Q[\\{ @�/�Dh_@�\'M\\{ @\0\0\0\0\0\0	\0\0\0�E�}M_@��0K{ @��jBK_@�C?K{ @7�5DK_@\0a�]{ @²\0FK_@�+��n{ @L��GK_@��"��{ @�O�M_@��؇�{ @�J�M_@k*9�n{ @CGTM_@3o��\\{ @�E�}M_@��0K{ @\0\0\0\0\0\0\0\0\0��X{�_@��b{ @��9@�_@c��b{ @rq\Z~_@�"b{ @D-��{_@>�0b{ @����{_@]���s{ @�ه�{_@l�D��{ @93N�{_@mZꇗ{ @��m\n~_@��y�{ @�E�_@��k�{ @H��C�_@�2���{ @�7�~_@Z���{ @���~_@�dz�s{ @w"\0B�_@��T�s{ @no}�_@��.�s{ @��X{�_@��b{ @\0\0\0\0\0\0\0\0\0�l���_@zy]�{ @��˻�_@�SO�{ @�D��_@�େ�{ @���~�_@�<ԕ�{ @�l���_@zy]�{ @\0\0\0\0\0\0\0\0\0�l���_@zy]�{ @�E�_@��k�{ @�zSG�_@��D3�{ @	�r��_@��%�{ @�l���_@zy]�{ @\0\0\0\0\0\0\0\0\0�Tm�Z_@���{ @|�N�X_@�\0�{ @��X_@�j�ϣ{ @��8�Z_@	�R��{ @�Tm�Z_@���{ @\0\0\0\0\0\0\0\0\0ʀ�n_@h�x�{ @�6b�l_@�(A��{ @��-�l_@��N�{ @|�L�n_@�ޏ@�{ @w0k8q_@�U?2�{ @E[�6q_@���j�{ @ʀ�n_@h�x�{ @\0\0\0\0\0\0\0\0\0���~_@)���{ @Qj�J�_@�Z���{ @��I�_@����{ @�o�\r~_@��	�{ @���~_@)���{ @\0\0\0\0\0\0\r\0\0\0����c_@��}��{ @�8ɘa_@\Z��Α{ @����a_@{�j��{ @�2`�a_@��	^�{ @C�~�c_@��O�{ @\0vJ�c_@��Z�{ @}7if_@�	�{ @���Oh_@y���{ @�P�Mh_@!3�{ @��f_@�mA�{ @��f_@��y�{ @\rqf_@�/��{ @����c_@��}��{ @\0\0\0\0\0\0\0\0\0�w�յ_@u��n�{ @x���_@�I�|�{ @U�{��_@}*`D�{ @"$�׵_@��06�{ @�w�յ_@u��n�{ @\0\0\0\0\0\0\0\0\04��8�_@<�h�{ @5p��_@\\�\'�{ @c!8��_@��=��{ @G�W:�_@X\Z��{ @4��8�_@<�h�{ @\0\0\0\0\0\0\r\0\0\0���~_@)���{ @K��{_@����{ @9�g�{_@����{ @m.�{_@~W%n�{ @��M~_@���_�{ @�amN�_@8��Q�{ @����_@5��C�{ @��Ą_@�֌5�{ @��_@ǲ�m�{ @w~Ƈ�_@�[|�{ @�L�_@q�4��{ @�I�~_@g}Z��{ @���~_@)���{ @\0\0\0\0\0\0	\0\0\0��>w�_@�Q}��{ @�O^��_@��J��{ @Q�}��_@c�~�{ @����_@�ht��{ @�u���_@W#���{ @�(ή�_@�	��{ @;���_@�^���{ @.�vu�_@p����{ @��>w�_@�Q}��{ @\0\0\0\0\0\0\0\0\0��>w�_@�Q}��{ @W|<�_@f����{ @ey�=�_@d�Rp\0| @��y�_@t� b\0| @��>w�_@�Q}��{ @\0\0\0\0\0\0\0\0\0I�� �_@�慇/| @�>��_@pk�/| @{ʒ�_@r�]A| @斱"�_@Ez"OA| @I�� �_@�慇/| @\0\0\0\0\0\0\0\0\0z�:�_@Up�+l| @xZ �_@�Ssl| @�T��_@���UZ| @�ws�_@4��cZ| @z�:�_@Up�+l| @\0\0\0\0\0\0\0\0\0�_^��_@�A| @\'}?]�_@�;w�A| @�~_�_@Y��S| @���`�_@�Ա�e| @�~���_@�~W|e| @n+��_@�B��S| @�_^��_@�A| @\0\0\0\0\0\0\0\0\0xZ �_@�Ssl| @��!"�_@!��}| @�A]�_@B:��}| @�_z[�_@)�Gl| @xZ �_@�Ssl| @\0\0\0\0\0\0\0\0\0��X*1_@&���s| @�ewe3_@��!�s| @G#�c3_@B���a| @J��(1_@K��a| @��X*1_@&���s| @\0\0\0\0\0\0\0\0\0��#�_@7�N�{| @�n���_@�(��{| @�z���_@Q+��| @a0�%�_@�����| @��#�_@7�N�{| @\0\0\0\0\0\0\0\0\0��X*1_@&���s| @T:�._@ 	�s| @�~\n�._@�r���| @B��,_@)���| @�K�z*_@�-���| @_�|*_@�!s�| @��~A(_@����| @C�NC(_@\0�-I�| @Ttm~*_@n6�:�| @_(��,_@ClH,�| @N��,_@���d�| @����._@��;V�| @�N�-1_@5S�G�| @L),1_@7�.��| @��X*1_@&���s| @\0\0\0\0\0\0	\0\0\0y�z`_@����| @�f\\�]_@��n&�| @C�-�]_@9��| @�&L	`_@d��ߧ| @-�jDb_@�iѧ| @�+�d_@�§| @�ʷ}d_@�����| @+V�Bb_@�qv	�| @y�z`_@����| @\0\0\0\0\0\0\0\0\0�/k_@�w�ϕ| @���h_@�N�ݕ| @T(��h_@���| @���0k_@P0��| @�/k_@�w�ϕ| @\0\0\0\0\0\0\0\0\0����z_@Czj�| @��ɑx_@_�x�| @]��x_@r@�| @%ʹ�z_@Ĝ1�| @����z_@Czj�| @\0\0\0\0\0\0\0\0\0/����_@���I�| @t"��_@�yށ}| @�9ᄨ_@�l�}| @�O�I�_@��9�}| @#c��_@#g�}| @�\n��_@u���k| @�(�ѡ_@����k| @�t�ӡ_@�哺}| @U�a��_@�B��}| @�A]�_@B:��}| @2�_�_@N����| @k��`�_@G5f�| @K�_@��X�| @AM���_@EC��| @�c�ء_@����| @0ס_@�s�I�| @\Z0�_@+��;�| @�x��_@��S�| @�ؾ�_@�����| @e��P�_@��ʼ�| @6�O�_@�o&��| @ PM�_@�J�-�| @ʶ�K�_@�#�e�| @�����_@���W�| @/����_@���I�| @\0\0\0\0\0\0\0\0\0K�\'�_@���J�| @��l��_@Gx�X�| @��5��_@\0�o �| @x����_@����| @J�+�_@�����| @�gU)�_@��4�| @K�\'�_@���J�| @\0\0\0\0\0\0\0\0\0RU�T�_@k9�o�| @V,k�_@�~�| @N`8�_@.�E�| @�WV�_@�;W7�| @��v��_@�\0�(�| @M|���_@.^a�| @RU�T�_@k9�o�| @\0\0\0\0\0\0\0\0\0�!��@_@u-��| @���>_@�ѣ��| @�	R�>_@��<��| @��p�@_@=X�q�| @�!��@_@u-��| @\0\0\0\0\0\0\0\0\0W��_@�X�| @O��D_@_7��| @��F_@__1ܸ| @�\r灁_@�p�͸| @W��_@�X�| @\0\0\0\0\0\0\0\0\0Y�ݍ�_@�)m��| @{��R�_@�o���| @��T�_@\Z3LZ�| @u��_@P�L�| @Y�ݍ�_@�)m��| @\0\0\0\0\0\0\0\0\0�����_@�5��| @���޾_@7���| @]�ݾ_@�r`��| @\n�硼_@QF���| @�����_@�5��| @\0\0\0\0\0\0\0\0\0\0pR�_@=�K�| @�*�S�_@�pE�| @#!��_@�C\r�| @��А�_@~����| @�����_@aw��| @�(��_@����| @*H�_@��| @��_@�>��| @Q�0B�_@X���| @��g@�_@([b��| @<�{�_@Ǘ(��| @��y�_@X��| @�>�_@���| @J\'�_@%Z� �| @�A_��_@�B2/�| @�Y?��_@��j=�| @\0pR�_@=�K�| @\0\0\0\0\0\0\0\0\0<}U2�_@-\nY�| @=x�0�_@c��F�| @�§k�_@�na8�| @GǦ�_@��*�| @�����_@�ib�| @��i�_@�/�p�| @Bu�.�_@�n�| @x5��_@�Gx��| @?A��_@T��Ŭ| @3���_@eK4Ԭ| @��|��_@��ћ�| @�]}�_@��*��| @j>B�_@Tr���| @:D�_@�� ��| @��*�_@�G�q�| @,�I��_@�)oc�| @�+i��_@j�U�| @�#6��_@���| @<}U2�_@-\nY�| @\0\0\0\0\0\0\0\0\0�Er�_@�i�"�| @*3p�_@$�:[�| @��`n�_@t����| @�\\B3�_@lC\'��| @č5�_@�)�i�| @���6�_@wU1�| @�Er�_@�i�"�| @\0\0\0\0\0\0\0\0\0��~�D_@��ܑ�| @�*_}B_@C&��| @g*B_@!�g�| @���B_@�e/�| @+��D_@Z:!�| @��I�D_@n|Y�| @��~�D_@��ܑ�| @\0\0\0\0\0\0\0\0\0�Er�_@�i�"�| @O��s�_@V<h��| @,���_@-"���| @��#��_@z_M�| @�Er�_@�i�"�| @\0\0\0\0\0\0Q\0\0\0n�V�_@B�0J�| @��6��_@dy[X�| @��o��_@趐�| @�ޏ�_@^���| @n�V�_@B�0J�| @\Zw\'�_@�)<�| @��%�_@�`t�| @��#�_@�B���| @����_@l~纏| @>��_@g�B�}| @z�:�_@Up�+l| @�\Z��_@�\'�9l| @�᫖_@�m~| @���p�_@+ �~| @ڵ�r�_@\'�<׏| @Ѭh7�_@ �f�| @M�/9�_@����| @����_@`75��| @>w���_@/�ق�| @�d��_@�~J�| @�Td�_@�p#�| @NF+�_@9*���| @��\nʍ_@c����| @Ҫꎋ_@��\Z��| @��#��_@[v.�| @��R�_@׸�<�| @>�<P�_@���t�| @��uN�_@��T��| @U�U�_@�}��| @���_@���| @��nք_@����| @�L�Ԅ_@r�Z:�| @�a��_@\r3,�| @�t�J�_@�| @ʅ��_@x���| @��A��_@��=H~| @>�z��_@�ǘ�l| @��ZG�_@F��l| @86�E�_@�&�Z| @�It\n�_@`D�Z| @P�:�_@T\r�l| @��\Zф_@ɗ�l| @t���_@��7�l| @�Z�_@�{^�l| @}wY�_@�G��Z| @��MW�_@&8I| @Oh�U�_@��np7| @+�g\Z~_@��~7| @.~_@�K:FI| @&�{_@!`TI| @:���{_@hv[| @K���{_@�ɪ�l| @Wpa�{_@�\ZP�~| @t��!~_@Z*�~| @���\\�_@6��~| @h^�_@sިV�| @��.`�_@�N�| @\Z@�a�_@�8��| @~r��_@�;�׳| @�ܞ�_@$Vq��| @�P�ل_@��I��| @�\0�ۄ_@���X�| @���݄_@�� �| @i��_@@�k�| @Z�S�_@�C�| @�\'�U�_@����| @��WW�_@�j��} @ax��_@�d�} @Xɘ͍_@lC;w} @�/��_@N�i} @�9��_@��l��| @z�B�_@��B��| @�K@�_@u7���| @���>�_@L���| @�Τy�_@hD���| @�Ŵ�_@ꕤ��| @�@��_@Ёy��| @�v+�_@N��| @xG>)�_@ՙ��| @"�_@��| @n�V�_@B�0J�| @\0\0\0\0\0\0\0\0\0�ù��_@����| @ݵ���_@>9R��| @9�b��_@��[\n} @�����_@��M\n} @���\n�_@�Ȃ?\n} @����_@Tp�w�| @�ù��_@����| @\0\0\0\0\0\0\0\0\0<��_@j�n�	} @25���_@�H��	} @	�l��_@�"M�} @��� �_@�Y�} @<��_@j�n�	} @\0\0\0\0\0\0\0\0\0�����_@hG�} @�.���_@����} @�^��_@�*>�} @7�}��_@��} @�����_@hG�} @\0\0\0\0\0\0\0\0\0 ��_@1S���| @�gȰ�_@��z��| @򹚲�_@c�k} @Ga��_@��\\} @ ��_@1S���| @\0\0\0\0\0\0\0\0\0`����_@��} @;:�j�_@[�,�} @�؜l�_@ғ} @�xcn�_@�3w[0} @����_@d�OM0} @~W���_@*���} @`����_@��} @\0\0\0\0\0\0\0\0\0ݫ�H�_@T�\\y.} @�у�_@\'�\'k.} @p�	��_@ʠ��} @Z�F�_@py��} @ݫ�H�_@T�\\y.} @\0\0\0\0\0\0\0\0\0ݫ�H�_@T�\\y.} @�a�\r�_@�\n��.} @̨Y�_@0\'4O@} @��yJ�_@��@@} @ݫ�H�_@T�\\y.} @\0\0\0\0\0\01\0\0\0��25�_@���@.} @]~��_@���N.} @GJ��_@���} @.����_@M�v�\n} @߸�1�_@[�@�\n} @�;j3�_@1��x} @��25�_@���@.} @�\0Sp�_@[P2.} @�>s��_@!#$.} @�����_@jqv\\} @)o�n�_@F�j} @���l�_@͂\n�\n} @F��_@��Ӕ\n} @�����_@jqv\\} @����_@7?N} @\0\'��_@����\n} @�9��_@�����| @��Y�_@�k°�| @�G"�_@�ex\n} @xfBY�_@�-j\n} @ݥyW�_@K����| @A�U�_@����| @�\Z�_@����| @"2��_@8}!�| @@���_@��Y�| @\0pR�_@=�K�| @Z�VP�_@�S\0��| @�\0�N�_@G�]��| @t.n�_@	[�ʟ| @\\�6�_@\Z�7��| @_���_@�>o��| @d���_@����| @ɦ���_@��Hv�| @��e�_@�`��| @_�*�_@e����| @��_��_@9>��| @\0�?��_@t� ��| @R�y�_@�U��| @�.�z�_@�����| @���|�_@Z��L�| @:�x~�_@�>�| @$����_@�|	�| @�ea��_@�p��\n} @��)��_@�bO�} @0:��_@^R�\\.} @�����_@@�$@} @q����_@,}_@} @aG�6�_@�T)@} @��25�_@���@.} @\0\0\0Řз�_@��f>�| @c5��_@���v�| @�9(��_@�(�h�| @�����_@c10�| @Řз�_@��f>�| @\0\0\08�/�_@u\r���| @%�.�_@�6�!�| @X�0i�_@���| @�Q�j�_@o�g��| @8�/�_@u\r���| @\0\0\0\0\0\0G\0\0\0�����_@�5��| @��h�_@OGg��| @�Xo-�_@�^���| @�/O�_@����| @%e��_@�^%!�| @����_@b��Y�| @O���_@	�ݑ�| @��ױ�_@���| @���_@�Ijؠ| @��t�_@���| @�v(s�_@J��| @��8�_@M%-�| @h����_@!T;�| @/����_@���I�| @�%�ê_@��&�| @�%���_@���| @Q�w\0�_@\n�ʲ| @;�_@�m��| @8b_=�_@���| @�J?�_@z�?��| @)��_@���Y�| @d\'?�_@��K�| @���@�_@}�X�| @�N�B�_@5����| @��}D�_@߀��} @I?��_@��p�} @%�e��_@��\\} @�EF�_@x[Dj} @\0M\rH�_@4�1/} @��I�_@q\n��@} @�i���_@�;\\�@} @��-��_@�t�#/} @�N��_@�O�/} @�ln��_@z�W/} @Ɏ4�_@i�&�.} @�V6�_@�m��@} @+�8�_@9n�R} @�\0?s�_@��<zR} @Dr_��_@8�\nlR} @�u���_@�=g�@} @�ط�_@m\r5�@} @���_@Lu�]R} @kO�$�_@�ϥOR} @[9�"�_@gw�@} @2��]�_@�{�y@} @��_�_@��rAR} @�$��_@�S?3R} @���_@�\Z�k@} @{�P��_@.���.} @�q��_@�\'ŕ.} @Aݨ��_@��!�} @䛈��_@��U�} @�XhZ�_@���} @�;�X�_@��"} @Ir���_@<b�} @�J���_@� M�| @�r��_@��>�| @����_@��~} @��\0\n�_@�J�\n} @k�8�_@~��0�| @R�XC�_@~Us"�| @rp�A�_@n@�Z�| @MYp�_@�i�| @*@P��_@�c8w�| @\r%0��_@\n�k��| @�U�_@���| @� �V�_@�CB[�| @����_@lui�| @!Ǘ�_@cY�w�| @P�w��_@�Kم�| @�����_@�5��| @\0\0\0\0\0\0\0\0\0�|e`�_@���Q} @9��^�_@ʕ�?} @���\\�_@�r�-} @g��!�_@�)�.} @<o|#�_@b�L�?} @+E%�_@�H�Q} @�|e`�_@���Q} @\0\0\0\0\0\0\0\0\0dR�:�_@:�;} @E����_@l07�;} @��g�_@ALՄM} @���<�_@e�vM} @�{�w�_@�*hM} @��u�_@k���;} @dR�:�_@:�;} @\0\0\0\0\0\0\0\0\0Q�$��_@m\'�Q} @����_@T�^�Q} @�%Ͱ�_@�+{c} @^����_@m��lc} @Q�$��_@m\'�Q} @\0\0\0\0\0\0\0\0\0�|e`�_@���Q} @WG.b�_@��YPc} @ףN��_@k� Bc} @�̅��_@{~zQ} @�|e`�_@���Q} @\0\0\0\0\0\0\0\0\0��kvK_@J�Z�N} @��K;I_@�ƥ�N} @r�=I_@�gE�`} @%�6xK_@l��`} @��V�M_@�_��`} @����M_@��N} @��kvK_@J�Z�N} @\0\0\0\0\0\0\0\0\0�����_@5���c} @+V���_@���c} @��q��_@N���u} @�\n���_@��Q�u} @�����_@5���c} @\0\0\0\0\0\0\0\0\0s�9_@����r} @��!�;_@���r} @��A>_@�W�r} @�v>_@E	��`} @1�V�;_@��\0a} @~�6�9_@��Ia} @s�9_@����r} @\0\0\0\0\0\0\0\0\0�Zuw�_@���Pu} @��T<�_@l�_u} @�v>�_@�z�&�} @��=y�_@��}�} @�Zuw�_@���Pu} @\0\0\0\0\0\0\0\0\0���_@���\0o} @�`vU�_@Ցo} @{�DW�_@�r�ր} @?.d��_@��PȀ} @���_@���\0o} @\0\0\0\0\0\0\0\0\0$��_@*�6��} @M�R�_@�k��} @�JP�_@�gЈ} @�*�_@$T�ވ} @$��_@*�6��} @\0\0\0\0\0\0\r\0\0\0s�9_@����r} @�W�e7_@y�1�r} @g�g7_@��ѳ�} @4�vi7_@p�q{�} @�Ak7_@�C�} @��a�9_@%��4�} @l��;_@�݀&�} @!\\�>_@�7�} @r�\Z>_@XɗP�} @�>_@�����} @�e��;_@m�@��} @�?̢9_@�����} @s�9_@����r} @\0\0\0\0\0\0\0\0\0��2�_@�}\'+�} @.FA0�_@�c�} @��r.�_@(��n} @�-S��_@�W�n} @��!��_@s��q�} @_A���_@��9�} @�л�_@��G�} @#���_@ϒ��} @;ξ��_@�j)�} @ew�3�_@����} @��2�_@�}\'+�} @\0\0\0\0\0\0\0\0\0$��_@*�6��} @�W�ۍ_@!a��} @�R�ݍ_@��|�} @8O^ߍ_@냪C�} @�4\Z�_@\n=�5�} @�+��_@ ��m�} @$��_@*�6��} @\0\0\0\0\0\0\0\0\0�j�/�_@���5�} @��-�_@��&n�} @�}i�_@���_�} @|g=��_@,e�Q�} @�wv��_@P�/��} @��Ug�_@yY��} @��4,�_@���} @���_@츪��} @a���_@3�O|�} @p��_@[��C�} @�j�/�_@���5�} @\0\0\0\0\0\0\0\0\0�4\Z�_@\n=�5�} @h@F�_@��$��} @�0gW�_@����} @v���_@<����} @�����_@f~*�} @��U�_@��U\'�} @�4\Z�_@\n=�5�} @\0\0\0\0\0\0\0\0\0�M%�_@02O�} @jY��_@�"y�} @WM˧�_@����} @�N��_@r����} @�M%�_@02O�} @\0\0\0\0\0\0\0\0\0�Uz�_@�0=b~ @ ;Y��_@�Ogp~ @�4 ��_@~8~ @}\\A�_@���)~ @�Uz�_@�0=b~ @\0\0\0\0\0\0\0\0\0)�^��_@d�F~ @�=r�_@6�U~ @[�t�_@��~ @^z\'��_@ؼx~ @)�^��_@d�F~ @\0\0\0\0\0\0\0\0\0��6�_@�1_T~ @�����_@�/�b~ @6����_@-*)~ @f¤8�_@K)~ @��6�_@�1_T~ @\0\0\0\0\0\0\0\0\0�4 ��_@~8~ @��q�_@~�5F~ @���s�_@u��\r)~ @�0箋_@����(~ @�4 ��_@~8~ @\0\0\0\0\0\0\0\0\0l,i%�_@��~ @eTH��_@�?\0~ @YN��_@�Y��&~ @ 32\'�_@::��&~ @l,i%�_@��~ @\0\0\0\0\0\0\0\0\0[�)%�_@#�[�(~ @e�_@�z��(~ @�o��_@�+�:~ @���&�_@�i\0�:~ @[�)%�_@#�[�(~ @\0\0\0\0\0\0\0\0\0�g��_@��&~ @�~�u�_@�gT�&~ @?a�w�_@����8~ @�V���_@3h��8~ @�g��_@��&~ @\0\0\0\0\0\0\0\0\0)r��X_@���#~ @2�V_@O�R�#~ @�y`�V_@��5~ @?��X_@)���5~ @)r��X_@���#~ @\0\0\0\0\0\0\0\0\0�iw<�_@�/�8~ @=pV�_@�bh�8~ @);�_@��\n�J~ @kA@>�_@�;ҁJ~ @�iw<�_@�/�8~ @\0\0\0\0\0\0\0\0\0�6��M_@��\'�5~ @젽�K_@\ZCt�5~ @~鈏K_@c��G~ @����M_@�7ǸG~ @�6��M_@��\'�5~ @\0\0\0\0\0\0\0\0\0��O��_@�و3~ @�n��_@6�uPE~ @θ=��_@d�BE~ @]2p�_@�${z3~ @��O��_@�و3~ @\0\0\0\0\0\0\0\0\0�h�l�_@�Z2V~ @� !k�_@�fjD~ @��\00�_@:��xD~ @�/�1�_@�Xf@V~ @�h�l�_@�Z2V~ @\0\0\0\0\0\0\0\0\0�JbE_@ز4�B~ @.cB\n_@� ��B~ @�O_@�?VT~ @�C2G_@Zc�GT~ @(6R�_@	�\\9T~ @0��_@N��qB~ @�JbE_@ز4�B~ @\0\0\0\0\0\0\0\0\04T�K_@�-��Y~ @ׂ3VI_@}Y��Y~ @���WI_@N۞dk~ @���K_@ٟRVk~ @4T�K_@�-��Y~ @\0\0\0\0\0\0\0\0\0lR�\r_@�|�T~ @�i2n_@3O�T~ @\Z�p_@�_�f~ @3"�\r_@��ztf~ @lR�\r_@�|�T~ @\0\0\0\0\0\0\0\0\0Laҕ_@}�!sT~ @g�Z_@C���T~ @a/�\\_@��+If~ @f6��_@D��:f~ @g;��_@�J,f~ @�Y��_@��dT~ @Laҕ_@}�!sT~ @\0\0\0\0\0\0\0\0\0�kMU�_@^��In~ @D,\Z�_@�/Xn~ @����_@\n���~ @hW�_@�|��~ @�kMU�_@^��In~ @\0\0\0\0\0\0	\0\0\0^7���_@a���g~ @�/��_@�-9V~ @T���_@4��#V~ @�h�l�_@�Z2V~ @N��n�_@� ��g~ @��p�_@��9�y~ @_N���_@�aղy~ @��ݩ�_@p�9�g~ @^7���_@a���g~ @\0\0\0\0\0\0\0\0\0^7���_@a���g~ @�����_@�xp�y~ @���!�_@h*�y~ @�v �_@��o�g~ @^7���_@a���g~ @\0\0\0\0\0\0\0\0\0c�z��_@^���~ @�>���_@^���~ @z����_@u�.�~ @s���_@;?<�~ @c�z��_@^���~ @\0\0\0\0\0\0\0\0\0"+��_@[e�y~ @��\\��_@M�$h~ @3%}��_@��eh~ @�����_@d��NV~ @����_@0$-]V~ @Gyn��_@W�kV~ @�d�~�_@s��D~ @r0�C�_@ABV�D~ @n8NE�_@�X�yV~ @mBG�_@gm�Ah~ @oN�H�_@�*	z~ @v\\�J�_@O��Ћ~ @��؅�_@��c~ @�(���_@Y�\0��~ @����_@g����~ @xWK��_@!��y~ @"+��_@[e�y~ @\0\0\0\0\0\0\0\0\0�����_@�xp�y~ @_N���_@�aղy~ @�z��_@�qz�~ @����_@8l�~ @�����_@�xp�y~ @\0\0\0\0\0\0\0\0\0c�z��_@^���~ @1�Yl�_@�~ @�-"n�_@��٣~ @��C��_@n��ˣ~ @c�z��_@^���~ @\0\0\0\0\0\0\0\0\0sX��\r_@+ͮ�~ @�/�s_@���~ @>�pu_@!ٷٛ~ @�\0��\r_@��H˛~ @sX��\r_@+ͮ�~ @\0\0\0\0\0\0\0\0\0�T_@�U)��~ @"<�L_@�h���~ @�=rN_@�5f�~ @�b��_@S��W�~ @�!_@?fPI�~ @�j��!_@�ݶ��~ @�T_@�U)��~ @\0\0\0\0\0\0\0\0\0đ"9&_@��d�~ @b�#_@��Cs�~ @���#_@�x�:�~ @5��:&_@*%j,�~ @R�v(_@)l��~ @ �Bt(_@�]V�~ @đ"9&_@��d�~ @\0\0\0\0\0\0\0\0\0���3_@"��~ @S��`1_@�u��~ @�C�b1_@��#�~ @�V��3_@�ڭ՚~ @���3_@"��~ @\0\0\0\0\0\0\0\0\0WR_@�ͦt�~ @�1�_@�$��~ @��_@v�J�~ @\r"_@��@<�~ @WR_@�ͦt�~ @\0\0\0\0\0\0\0\0\0��"P�_@%��\'�~ @�C��_@X�7�~ @T�c��_@���\n�~ @�4��_@�2q��~ @Z����_@�W�4�~ @����_@�z9m�~ @4R���_@D�{�~ @�}���_@#�8C�~ @)�t��_@���Q�~ @�~TN�_@���_�~ @��"P�_@%��\'�~ @\0\0\0\0\0\0\0\0\0�I�\'�_@\0�H*�~ @\\���_@��8�~ @���_@�$A\0�~ @mz�)�_@�����~ @�I�\'�_@\0�H*�~ @\0\0\0\0\0\0\0\0\0?��~_@lǿ��~ @�b��|_@����~ @�Մ�|_@@����~ @���~_@{�]��~ @2��*�_@�t�~ @��(�_@��i��~ @?��~_@lǿ��~ @\0\0\0\0\0\0\0\0\0�\r���_@y�\\V�~ @�?�P�_@!�d�~ @kR�_@4�R,�~ @\'狍�_@���~ @�\r���_@y�\\V�~ @\0\0\0\0\0\0\0\0\0��P�_@FU���~ @�0��_@�I9��~ @�+���_@w�֝�~ @��_@��{��~ @q�>-�_@\Z ��~ @�q+�_@f����~ @��P�_@FU���~ @\0\0\0\0\0\0\0\0\0/���_@c���~ @$�ܤ_@ދn��~ @�b�ޤ_@j{V�~ @�4��_@>{�G�~ @/���_@c���~ @\0\0\0\0\0\0\0\0\0O��\Z�_@+.��	 @���߇_@�>�	 @�t��_@��۟ @	z��_@�Ճ� @O��\Z�_@+.��	 @\0\0\0\0\0\0\0\0\0�q�B�_@��(�	 @�g�_@6���	 @�{4	�_@ X @wUD�_@��I @jpv�_@Ӻk; @&^�}�_@Nq�s	 @�q�B�_@��(�	 @\0\0\0\0\0\0\0\0\0p�R{�_@�\rJ� @b1@�_@ll�� @���A�_@�\'l1 @�(}�_@��]1 @p�R{�_@�\rJ� @\0\0\0\0\0\0\0\0\0�A}�_@7{!Y- @�/\\�_@�yg- @��(�_@4/? @�J �_@�� ? @�A}�_@7{!Y- @\0\0\0\0\0\0	\0\0\0A�݄�_@��C�P @����_@�G��> @��G�_@��\0�> @�~"F�_@�ic- @iv�_@�k�- @.s��_@��Z�> @�q��_@G3��P @���I�_@���P @A�݄�_@��C�P @\0\0\0\0\0\0\0\0\0�i:�%_@^RlS @���#_@�c�zS @�f�#_@��8Be @g��%_@�{�3e @�i:�%_@^RlS @\0\0\0\0\0\0\0\0\0A�݄�_@��C�P @�ͪ��_@;��Yb @�����_@�υKb @�����_@Q��P @A�݄�_@��C�P @\0\0\0\0\0\0\0\0\0�����_@�υKb @\0!�Ù_@o�"t @$V���_@č�t @S ���_@�m*=b @�����_@�υKb @\0\0\0\0\0\0\0\0\0k�:�_@���;s @Ri��_@���Is @�/7�_@u��� @m�_@/F7ٖ @�A&>�_@�%�ʖ @�UX<�_@��9� @k�:�_@���;s @\0\0\0\0\0\0\0\0\0�lM��_@�^�� @�:+r�_@K���� @i��s�_@Üį @d���_@�hn�� @�lM��_@�^�� @\0\0\0\0\0\0\0\0\0���_@�_)�� @����_@tꐺ� @�����_@�:,�� @�����_@��s� @���_@�_)�� @\0\0\0\0\0\0\0\0\0����_@���o� @�ܰ�_@q~� @`���_@\'w�E� @�q��_@=��7� @j��(�_@�SX)� @i!\'�_@�l�a� @����_@���o� @\0\0\0\0\0\0\0\0\0i�_@���D� @��r�_@Wc,S� @h�<�_@���\Z� @z�^_@�q�� @i�_@���D� @\0\0\0\0\0\0\0\0\0!j�_@:�V� @N��.�_@�\\e� @���0�_@z��,� @/��k�_@�X�� @!j�_@:�V� @\0\0\0\0\0\0�\0\0\0���_@rR� @��0�_@��s*� @]�a�_@���b� @w��_@4>�� @eh�=�_@�Ҍ� @���?�_@0wmT� @���z�_@ҝF� @�W�x�_@sg~� @E���_@*��o� @��%��_@zM`�q @�w�_@m̶q @�5u�_@��1�_ @;�:�_@�{��_ @^&���_@�` @|L���_@�s\Z` @�3��_@��RN @�d��_@x;CaN @���K�_@3?�oN @���I�_@�P�< @��$H�_@u`w�* @GSE��_@6|\r�* @�Mv��_@y�r\n @�I��_@���B @!H�}�_@��<{�~ @rH	|�_@�䡳�~ @�)��_@��7��~ @�KJ��_@_i͖�~ @9�j-�_@&�b��~ @-�9/�_@�L�O�~ @yZj�_@8�A�~ @8�)l�_@�,	 @EBJ��_@��� @Å��_@%~[� @�$:��_@�G� @�v	��_@�ˉ{* @����_@&N$C< @e��"�_@���4< @t��$�_@�R�M @z��_\0_@����M @�5\Z^\0_@MqJ&< @��:�_@e��< @Zmk�_@y�BP* @���_@���A* @����_@su:z @����_@B�� @M~̓_@s�\r� @D��_@).�� @��_@����~ @�	��_@X�s��~ @T�-�_@,7�1�~ @�$\rU\0_@KoF@�~ @���V\0_@8���~ @W	��_@r�M�~ @^���_@�A�N�~ @�9���_@��]�~ @�����_@"���~ @}�-��_@���Ϳ~ @yH\r��_@-{Vܿ~ @p��d�_@2���~ @ʺc�_@M\'#�~ @}d�\'�_@�Y�1�~ @+���_@�\0�?�~ @\n�\r��_@/bx�~ @w���_@�`̆�~ @�]�t�_@�,6��~ @}U�v�_@��\\�~ @�{;�_@ɓ:k�~ @A�9�_@ڒ���~ @�����_@����~ @�bl��_@�.q��~ @U4;��_@�N��~ @��\Z��_@�t��~ @RL��_@�c�Μ~ @�H}��_@�1>�~ @��\\K�_@���~ @ݬ<�_@L\r$�~ @�[��_@�@t2�~ @��M��_@K��jy~ @d{-��_@�\\?yy~ @��^��_@^磱g~ @]�>[�_@X�	�g~ @(3\r]�_@Wv��y~ @���!�_@h*�y~ @�\\�#�_@��]�~ @����_@8l�~ @Ami��_@���3�~ @yI��_@��B�~ @�z��_@�qz�~ @�KZr�_@��Ո�~ @��p�_@��9�y~ @ȫk5�_@C��y~ @��97�_@��9��~ @�/9�_@N��^�~ @��(t�_@\\fqP�~ @~��u�_@$\r�~ @d��_@�q�	�~ @����_@�D��~ @9\'���_@~�ߘ�~ @F����_@�z��~ @�&���_@*(R�~ @؋���_@Jo{`�~ @�a{�_@�P�n�~ @�H0}�_@9|6�~ @x�P��_@(�~ @[��_@���� @ʤ�~�_@��� @�H0}�_@9|6�~ @Q�B�_@Ƒ�D�~ @s��C�_@�T| @\Z2��_@���\Z @�u���_@yZD) @^�j��_@�:�� @~v�\n�_@H[|� @�Y�_@�)�+ @ÐzG�_@�Գ�+ @��HI�_@ڑOc= @��i��_@k��T= @x(8��_@�r�O @�Y��_@�2!O @��\'��_@\r̼�` @�xH��_@�W�` @%�y��_@:���N @�{���_@� 8= @A\0���_@�s�p+ @��3�_@#�b+ @AT�5�_@+�)= @�*�p�_@\Z�S= @V�\r��_@a��= @�ܭ�_@�:��N @�H���_@J�#�` @��y��_@��cr @��Xv�_@��%rr @��\'x�_@�I�9� @/�=�_@��\'H� @t�>�_@U]�� @�1�y�_@��\\� @F��_@B��� @dX8��_@9�� @ڟi��_@���� @`��)�_@��� @�hY+�_@�<&֕ @�vzf�_@%��Ǖ @KIh�_@%Y�� @dj��_@_]��� @�F9��_@�n�H� @�+��_@�}&� @8\\)��_@�<�� @��J�_@\'�S�� @0�kX�_@���� @�ጓ�_@��� @�ɽ��_@�G�� @s����_@�y\0� @���_@rR� @\0\0\0,�$��_@�e|| @|�U��_@�?��~ @�v��_@�x��~ @[iE��_@��n @�F��_@�5 @ݕ��_@��D @,�$��_@�e|| @\0\0\0jF�_@��\n�~ @F]w�_@X�zB�~ @;ߗR�_@\r�4�~ @,_���_@�%�~ @�)���_@F��~ @!�fT�_@�&���~ @jF�_@��\n�~ @\0\0\0�6�`�_@$z��~ @���^�_@G�@O�~ @����_@���@�~ @��ʛ�_@�@v�~ @*���_@�Ю~ @��xb�_@��wޮ~ @�6�`�_@$z��~ @\0\0\0\0\0\0\0\0\0���_@rR� @�0�	�_@��� @�T�D�_@#`=�� @�!C�_@?��� @���_@rR� @\0\0\0\0\0\0	\0\0\07���_@�F�� @��_@�o%� @\nOSĔ_@��ɶ� @~�\ZƔ_@�m~� @�\r�ǔ_@<F� @"y�_@g��7� @�=�_@ر@p� @��u��_@C}��� @7���_@�F�� @\0\0\0\0\0\0\0\0\0E���_@*��o� @��ĵ�_@�^�7� @[ꓷ�_@Y�/�� @4���_@�/�� @�Q���_@��]�� @\n�S��_@F�� @`�t1�_@�ۊq� @�ED3�_@�;%9� @�len\0_@q��*� @��l\0_@V<c� @�n�j\0_@6ꂛ� @0a�/�_@�y� @��-�_@�V� @��,�_@���\Z� @ώ���_@�()� @n0��_@7B�a� @E���_@*��o� @\0\0\0\0\0\0\r\0\0\0�_�h_@FA��� @�&?�j_@;}� @P�`3m_@4w�n� @W��1m_@�I�� @bz�/m_@�Ī�� @mD�-m_@4h� @`���j_@%�_&� @O��h_@iԲ4� @� ��h_@PQ�� @�Φ�j_@/=��� @��r�j_@*���� @2?Q�h_@����� @�_�h_@FA��� @\0\0\0\0\0\0\0\0\0�(�Z�_@m�f�� @�e�X�_@�+�"� @����_@h�)1� @����_@�x��� @L2c�_@ �%� @�A��_@���� @ S��_@}�!�� @@�0�_@�|��� @]gR!�_@��b�� @w�s\\�_@��� @�(�Z�_@m�f�� @\0\0\0\0\0\0\0\0\0��n��_@ 8�� @�nM��_@\\r��� @�s��_@K�j� @��<��_@XL�[� @��n��_@ 8�� @\0\0\0\0\0\0\0\0\02z�\Z_@���� @�"Xl_@��8�� @�y"n_@r�U� @��D�\Z_@�|�G� @2z�\Z_@���� @\0\0\0\0\0\0\0\0\0�6e��_@�%) � @(=���_@�.�X\0� @`�t��_@���f\0� @L�C��_@���.� @�6e��_@�%) � @\0\0\0\0\0\0\0\0\0��^�s_@��&�&� @����s_@�t�� @s�p�q_@UM�� @]�Npo_@7�1(� @Cro_@���&� @�=�q_@0�{�&� @��^�s_@��&�&� @\0\0\0\0\0\0\0\0\01B��_@�1�%� @��#¢_@:�ӥ%� @��E��_@(v�%� @� x��_@�[��� @��V��_@�6�� @��4��_@� ��� @1B��_@�1�%� @\0\0\0\0\0\0\0\0\0��zo�_@\n	k=� @2��m�_@G�H+� @��2�_@�(�V+� @skX4�_@*:�=� @��zo�_@\n	k=� @\0\0\0\0\0\0\0\0\0��^�s_@��&�&� @]+�s_@�Ě8� @�@M%v_@�_o�8� @�̀#v_@L��&� @��^�s_@��&�&� @\0\0\0\0\0\0\0\0\01B��_@�1�%� @��K�_@���%� @*�M�_@	�*�7� @��ψ�_@���{7� @1B��_@�1�%� @\0\0\0\0\0\0\0\0\0�6e��_@�%) � @�24��_@�\Z��#� @=0��_@�\r_�5� @G�$(�_@���5� @M$Fc�_@���5� @\rwa�_@����#� @���_�_@��T� @[Uɚ�_@D��� @h5���_@|O-\0� @ ���_@Bu�\0� @԰���_@o-�� @H\n�_@,��� @�a-L�_@<ϧ�� @~^J�_@�6\r\0� @I׎H�_@ћr:� @��F�_@��r� @�c��_@��C�� @�0}��_@����� @mYL��_@�IW� @w+��_@��e� @~�	\\�_@�Ct� @���]�_@A�;\0� @쑷"�_@�X$J\0� @\\��$�_@$@�� @�6e��_@�%) � @\0\0\0\0\0\0\0\0\0Z��_@q�"6� @���_@@X<�G� @�@�P�_@�p��G� @��O�_@�:6� @Z��_@q�"6� @\0\0\0\0\0\0\0\0\0�:0�_@��-5� @���_@|�<5� @�5���_@z9�G� @����_@>�0�F� @2#!>�_@TO��F� @�Q<�_@��(5� @�:0�_@��-5� @\0\0\0\0\0\0�\0\0�_�h_@FA��� @O���f_@�\r�� @���Fd_@�t3�� @�\rEd_@�ݔ�� @p�	b_@S���� @E b_@�&H\'� @�ACd_@�D�� @�\rEd_@�ݔ�� @��/�f_@��B�� @�pc~f_@U��\n� @>a�|f_@rC� @,�uAd_@�WQ� @Tb_@.|�_� @l2�__@���m� @���]_@��K|� @��T[_@㐜�� @�d�Y_@r��� @��Y_@I�MѼ @��5Y_@��	� @d\'jY_@�B� @��H�V_@��_P� @�L�V_@���� @`��T_@��M&� @�\'�T_@�^� @��cR_@���l� @��dR_@��4� @���fR_@<�� @�X��T_@�� @�\0��T_@���� @�KhhR_@��� @n�F-P_@��)�� @S{+P_@E��\n� @8z�)P_@�l�B� @�ڍ�M_@r�9Q� @�YY�M_@���� @��7�K_@��&\'� @> �K_@����� @&c�{I_@|N�� @�̬}I_@����� @!�BG_@����� @F3iE_@�zL�� @��E_@\'�� @��@G_@�\\`� @�H�>G_@���C� @��(=G_@C�!|� @ט];G_@���� @�C�9G_@���� @�ϳtI_@�ߕއ @�1vI_@�>5�� @~�JxI_@T��m� @9l�K_@�F�_� @zȠ�K_@��痙 @M]��M_@�N��� @��\'P_@�>L{� @��cR_@���l� @�9aR_@g�^�� @h&P_@���� @��L$P_@��\r�u @�h+�M_@��[�u @N�	�K_@LY�v @\0p�rI_@�v @-qI_@(WOd @��>�K_@\nAd @G�_�M_@=��2d @�{��M_@�DkR @���M_@��}�@ @�[�P_@�:0�@ @��P_@c\0��. @�!@XR_@$�B�. @��ZR_@��@ @��,�T_@3��x@ @�HN�V_@�Dj@ @a���V_@����. @��V_@Jy� @�a��V_@�ig @n�Y_@�? @P�@Y_@�=y=�~ @S�a?[_@��)/�~ @v;�=[_@�Ɋg�~ @62uY_@:�u�~ @\Z��\0Y_@4;��~ @���;[_@J���~ @v;�=[_@�Ɋg�~ @�B�x]_@��:Y�~ @��v]_@����~ @�z�__@��K��~ @7�@�__@����~ @{�u]_@$���~ @���9[_@��L��~ @\0���X_@�+���~ @�B�X_@�!��~ @̡F�X_@�^W�~ @	xg6[_@��I�~ @CL�q]_@UL�:�~ @���o]_@V] s�~ @\r��m]_@El��|~ @t(%l]_@$y��j~ @l�E�__@��j~ @z�__@`��\rY~ @I���a_@(���X~ @c~f�a_@wB�j~ @Y&�d_@���j~ @5Sd_@̡��|~ @�!d_@�c/H�~ @��?\\f_@�E�9�~ @)�^f_@��|�~ @aS,�h_@Kb+�~ @�M��h_@\rʺ�~ @#JĜh_@��h��~ @�H��h_@R8J�~ @�H\\�h_@�Х�~ @NK(�h_@agD��~ @�O��h_@���\n @�8�hf_@\\�4�\n @�2�jf_@a��v @V��h_@2��h @�^��h_@� 0. @@.klf_@T/r>. @�+7nf_@9�@ @�hX�h_@����? @Su$�h_@�8]�Q @���h_@���c @(���h_@K�Nu @�0�sf_@z��\\u @�6guf_@0�$� @����h_@�8� @�T�h_@U�ݘ @p� �h_@��u�� @���h_@�Vm� @-~�j_@c�^� @z0,m_@�	nP� @��c*m_@D�ψ� @b�eo_@��{z� @]%�co_@��ݲ� @���ao_@�Q?� @���&m_@��� @���(m_@�F1�� @�5v�j_@���Ϙ @���j_@d�� @���&m_@��� @�T�$m_@P{�1u @�� `o_@���#u @J{T^o_@͡\\c @��u�q_@gˮMc @[���q_@��Q @�F�\\o_@�Fd�Q @��Zo_@g���? @�Hݕq_@L2r�? @[���q_@��Q @\Z���s_@sS�wQ @L��s_@W�Z?c @�`�v_@��1c @��\rv_@`�giQ @�A\rIx_@��[Q @K��Jx_@:�"c @����z_@-y[c @C4�|_@w�c @�v=�~_@n��b @��p�~_@y�0Q @�\\��~_@Րsh? @���3�_@Z? @y�5�_@�!Q @.N�p�_@�cQ @���n�_@�-�K? @����_@��n=? @j;��_@� �u- @/mn��_@\\3� @�cMk�_@Ԇ�� @9\Zm�_@O[(�- @��1�_@0�- @NX,0�_@�K�� @�cMk�_@Ԇ�� @HĀi�_@F���	 @��_.�_@�eC\n @��>�~_@i��\n @�@r�~_@y��I�~ @KQ�|_@�QX�~ @S0{z_@��f�~ @��cyz_@^���~ @q�B>x_@��]��~ @ģv<x_@�ǿ��~ @L�:x_@��!�~ @o��8x_@�k�V�~ @-��u_@x��d�~ @hv��u_@:v,�~ @Q�Uv_@�Q��~ @<"v_@�����~ @(]�v_@D�P��~ @��v_@���J\n @\\���s_@KOCY\n @1_��s_@	���~ @�s_@����~ @��4�s_@|vh�~ @��h�s_@*�:�~ @�b��s_@��+s�~ @-��u_@x��d�~ @����u_@��9��~ @��$�u_@�R�Ս~ @�^X�u_@�\r�\r|~ @{y3x_@�Ѩ�{~ @׳�1x_@_�\n8j~ @�G�lz_@}�)j~ @���|_@�aj~ @�@��|_@)��{~ @|���~_@<���{~ @�i�~_@ͳ\rj~ @|�.�_@\0��i~ @�xb�_@*�7X~ @��A�~_@O�mEX~ @ˇu�~_@���}F~ @���~_@,�1�4~ @����_@Y�ۧ4~ @���_@V�=�"~ @M�0�_@?��~ @(D�~_@�j�&~ @���~_@�}��"~ @#Q��|_@���"~ @��|_@�yJ5~ @ޡ�cz_@�"�C~ @�M�(x_@yf�Q~ @����u_@tDG`~ @a�n�s_@μ�n~ @4ENwq_@���|~ @�-<o_@�|@�~ @ي\rm_@Ē�~ @�*��j_@��~ @|�̊h_@\Z"6�~ @Kd�Of_@�8��~ @��d_@����~ @�k�a_@�4(�~ @�+K�__@�\Zx�~ @}�*c]_@����~ @JQ\n([_@\n�~ @ ��)[_@µ�#~ @j�d]_@�f�#~ @	��__@d�#~ @�Y7�a_@Ǩ#~ @��Wd_@#�v�#~ @ʡ#d_@��b5~ @}!DSf_@b��S5~ @Uf_@ocG~ @�v�d_@�N�)G~ @ʡ#d_@��b5~ @ �a_@.�ep5~ @a��__@��~5~ @�W��__@��TFG~ @Bōh]_@���TG~ @�0m-[_@��bG~ @��8/[_@�ܒ*Y~ @l1�X_@4��8Y~ @2���V_@�]0GY~ @�úV_@��k~ @�d�T_@��k~ @���DR_@��k+k~ @j#MFR_@��\n�|~ @�^,P_@�HX}~ @���P_@���Ȏ~ @�4�P_@�䖐�~ @�T��M_@\Z䞠~ @�m�M_@st�f�~ @��L�K_@T�t�~ @��K_@�o<�~ @v�K_@�!�~ @�k�bI_@�[�~ @g��dI_@C.���~ @:	YfI_@�����~ @5�7+G_@X���~ @F(-G_@8q�w @Wo�.G_@\n�%? @i��0G_@�h�/ @!jx�D_@��/ @p�C�D_@\r��@ @fK"�B_@����@ @�~�B_@�h��R @���D_@@�P�R @+��D_@l�kd @����B_@��;zd @�~�B_@�h��R @)̂@_@����R @\\��G>_@��2�R @�5�<_@`�}�R @�DT<_@�I�d @%V<_@�\n�lv @����9_@�h{v @O�2�9_@|�g�d @��g�9_@A���R @=Ü�9_@��\'$A @F(�\n<_@���A @��<_@��=N/ @�(<_@*3�� @f]<_@Ih�� @-I~@>_@.�� @ 7�>>_@�D��~ @�<_@X�^��~ @�p�9_@0���~ @�ޥ�9_@��>�~ @��<_@X̾/�~ @\'�<>_@v�t!�~ @;>_@��Y�~ @���;_@H�h�~ @:1�;_@((��~ @�R9>_@}\05��~ @;>_@��Y�~ @�->v@_@\'�K�~ @�st@_@-s��~ @���r@_@A�J��~ @��7>_@�:�ʲ~ @���5>_@Ps��~ @!��p@_@7���~ @`���B_@{1`�~ @е2�B_@���~ @B�g�B_@v� W}~ @�h��D_@M��H}~ @�@��D_@P!6�k~ @��G_@!��rk~ @��G_@�K�Y~ @_\Z��D_@B���Y~ @$cѤB_@0{��Y~ @�|��B_@�+��k~ @��{k@_@��˝k~ @詰i@_@z,�Y~ @��.>_@!@v�Y~ @��Z0>_@�k~ @�$:�;_@��_�k~ @�X�9_@�]��k~ @PA�9_@�JI�}~ @�fÀ7_@�h��}~ @]D��7_@5c2f�~ @�ZmG5_@+{t�~ @coL3_@d�Â�~ @�53_@�cJ�~ @���3_@ɺ�~ @����0_@��K �~ @z���0_@�����~ @��j�._@��3��~ @Q5�._@K�ӽ�~ @B\0�._@�t��~ @�5!�0_@\0:,w�~ @\n���0_@W�>�~ @�ʠ._@�KM�~ @�e,_@��[[�~ @?�**_@��i�~ @B�R,*_@�MC1 @��1�\'_@� �? @�#��\'_@x* @�.*_@8��� @�>i,_@�L�� @�0`�._@��T� @���0_@��� @����0_@�ql @S�3_@%$� @�٢\Z3_@sĿ @���0_@��� @�OL�0_@����/ @�0_@z�L]A @���._@s�kA @;�l,_@���yA @�n,_@��|AS @�l��._@�53S @�/��._@�+��d @�ip,_@u	e @]4r,_@=F��v @\0�s,_@�q]�� @� �._@Bf�� @΃�._@Q��Q� @�2\r�0_@Z�lC� @\n��0_@�\r� @�N��._@Q�U� @���w,_@5Ý\'� @�P_y,_@��=� @�*{,_@)޶� @���|,_@�-~~� @ú�._@��5p� @���._@���7� @\Z|�0_@��)� @�h%03_@�C� @�V�13_@����� @SNm5_@�$��� @�C4�7_@P�� @7V�9_@���� @n(x<_@�ĺ�� @��Y>_@\'�o�� @,��@_@��#�� @^��@_@M��� @���B_@�P8�� @��4	E_@���� @5`VDG_@�&��� @�8xI_@r�Q�� @l��K_@\\f~� @��M_@�m�o� @���0P_@+ha� @�$/P_@��ș� @b�3jR_@5z�� @:�U�T_@�\Z+}� @jw�V_@��n� @v"C�V_@͑z6� @�dY_@��*(� @3�0Y_@����� @��RZ[_@8y�� @�\\t�]_@G(�� @D.��__@I��� @�b�__@V�u�� @���\rb_@7\Z$~� @��Ob_@���E\'� @��qJd_@"�p7\'� @��=Ld_@�,�8� @e�_�f_@���8� @\Z�+�f_@�[�J� @z�M�h_@�\n�J� @�\Z�h_@x�q\\� @\'<k_@��Rc\\� @��o�j_@���J� @����j_@r:�8� @h���j_@��w\'� @����h_@6*�\Z\'� @��h_@ƶ,S� @�_�h_@FA��� @\0\0\0+�U5_@\\2{� @J�S5_@�8�� @݌\Z�7_@��� @��;�9_@�hH� @,��9_@8C� @�z�7_@��1� @+�U5_@\\2{� @\0\0\0)6��7_@ct7� @d2Ӣ7_@��po� @|���9_@�Z&a� @��9_@T�(� @)6��7_@ct7� @\0\0\0�K�._@�� @J��._@?��� @���0_@�ҽ @�m�0_@PM�� @�K�._@�� @\0\0\03r�7_@s\Z�� @N7��7_@�>�P� @_���9_@�6�B� @�ٓ�9_@�G\n� @3r�7_@s\Z�� @\0\0\0t�@K>_@�Fr^v @h�uI>_@ٕҖd @�;��@_@\n|��d @�fb�@_@b\'Pv @t�@K>_@�Fr^v @\0\0\0�E�9_@n)�~ @ez�9_@���~ @�\n��;_@�{?�~ @�f�;_@S�ز~ @�E�9_@n)�~ @\0\0\0V��;_@u��I�~ @\Z�;_@���}~ @��%2>_@�ݵs}~ @���3>_@��U;�~ @V��;_@u��I�~ @\0\0\0J�=m_@���X~ @l�qm_@�mn�F~ @���m_@���(5~ @?�?o_@.{}\Z5~ @� �Ao_@U��F~ @L��|q_@M��F~ @��~~q_@ǅg�X~ @�J�q_@1�cj~ @\ZP*Eo_@��Xqj~ @{7^Co_@uq��X~ @J�=m_@���X~ @\0\0\0Dpȓh_@�yO�j~ @�d��h_@��c|~ @�sZf_@�?r|~ @P̧Xf_@rޠ�j~ @Dpȓh_@�yO�j~ @\0\0\0�7�s_@��P|~ @A��s_@�8��~ @�<�q_@ٸB�~ @m�q_@�T�*|~ @�7�s_@��P|~ @\0\0\0��#Wo_@�(�= @>��Xo_@�\'. @\0��m_@��z. @�m_@�Z�K @��#Wo_@�(�= @\0\0\0\0\0\0\0\0\0��;bx_@��EJ� @��\'v_@�p\rTJ� @�,�(v_@O��\\� @�\'dx_@ǝU\r\\� @��;bx_@��EJ� @\0\0\0\0\0\0\0\0\0���_@���_� @Cʸ��_@?�q� @�W���_@��q� @)��_@d�a�_� @���_@���_� @\0\0\0\0\0\0\0\0\0��a_@���^� @le�%_@g\'�_� @�F�\'_@V`��p� @ɶ�b_@�Z�p� @�$�_@�e�p� @�)9�_@Lw�^� @��a_@���^� @\0\0\0\0\0\0\0\0\0\'<k_@��Rc\\� @N`k_@5S�*n� @/r*>m_@w]�n� @2,^<m_@��T\\� @\'<k_@��Rc\\� @\0\0\0\0\0\0\0\0\0���&�_@Yȃq� @�W���_@��q� @݈���_@�̥Y�� @[!�(�_@ijK�� @���&�_@Yȃq� @\0\0\0\0\0\0\0\0\0u�8�\Z_@cU�-p� @�Kw_@���;p� @���x_@�3��� @V�\Z_@��W��� @u�8�\Z_@cU�-p� @\0\0\0\0\0\0\0\0\02��9_@d��eo� @F���7_@L�to� @	���7_@#��;�� @����9_@��c-�� @2��9_@d��eo� @\0\0\0\0\0\0	\0\0\0"`�E_@�A�倀 @���E_@��Go� @��E_@Hy�V]� @Ut��B_@9�d]� @+I��@_@�As]� @���@_@��:o� @�ǡ�B_@୔,o� @sm�B_@� 4� @"`�E_@�A�倀 @\0\0\0\0\0\0\0\0\0݈���_@�̥Y�� @b�_@91�g�� @�K��_@LO�/�� @��m��_@2�G!�� @݈���_@�̥Y�� @\0\0\0\0\0\0\0\0\0�M��_@������ @�6&�_@`$ҏ� @�GX߶_@��\n~� @rk6��_@�>�~� @�M��_@������ @\0\0\0\0\0\0	\0\0\0"`�E_@�A�倀 @s�ZE_@Т���� @�*&E_@�&u�� @��HVG_@���f�� @�}TG_@�N9��� @W]��I_@��됒� @��ӍI_@�RLɀ� @Ѡ�RG_@��׀� @"`�E_@�A�倀 @\0\0\0\0\0\0\0\0\0�M��_@������ @�b�j�_@\\� @*:�l�_@������ @2ҧ�_@#�!��� @�M��_@������ @\0\0\0\0\0\0\0\0\0Wɠ_@b��\0�� @8�~�|_@� �� @�HK�|_@��ִ� @n}m_@ψfȴ� @Wɠ_@b��\0�� @\0\0\0\0\0\0\0\0\0�&]X\r_@luiɀ @l��_@j�1[ɀ @]���_@9���� @t��V\r_@U�ԡ�� @�&]X\r_@luiɀ @\0\0\0\0\0\0\0\0\0�)�}R_@"�O�� @w(|R_@γ�W�� @��J�T_@a�`I�� @-x�T_@���� @�)�}R_@"�O�� @�޿R_@g��浀 @�9�T_@�ޞص� @w���T_@L�=�ǀ @.c��V_@K��ǀ @ƒ�V_@[�Nʵ� @`�8�V_@Vï�� @��l�V_@D�;�� @�-��V_@!�qs�� @��~�T_@�	�� @D?��T_@�#�n� @���T_@���\\� @wj�vR_@p��\0]� @NM�;P_@K�"]� @m�n=P_@p���n� @��LN_@<��n� @�VN_@�̯��� @��:?P_@��`��� @�3AP_@�\0f�� @���BP_@}�-�� @�)�}R_@"�O�� @\0\0\0\0\0\0\r\0\0\0C�ӣ]_@�*�� @���]_@�uH�� @��f[_@��V�� @�p�h[_@�wo�� @g5�-Y_@u_�,�� @�[/Y_@�1_��� @�V}j[_@�:检 @�>Il[_@������ @�(n[_@5�Kuǀ @P�7�]_@>�fǀ @��k�]_@�[��� @񜟥]_@�ݼף� @C�ӣ]_@�*�� @\0\0\0\0\0\0\r\0\0\0���C�_@����݀ @���A�_@�N̀ @���|�_@��̀ @&�\Z��_@����ˀ @�S��_@WI0�� @�:���_@�Z�h�� @�Phy�_@�$�v�� @k"0{�_@��y>�� @*\r@�_@]U�L�� @�/��_@Tc�Z�� @���_@!=~"̀ @��y�_@�"�݀ @���C�_@����݀ @\0\0\0\0\0\0\0\0\0}�T��_@�v;?ʀ @`���_@�>�܀ @��@�_@Ꮯ�ۀ @Fw�_@[��0ʀ @}�T��_@�v;?ʀ @\0\0\0\0\0\0\0\0\08Ǽ��_@�g�ʀ @��W�_@rҿ"ʀ @\n�cY�_@k{a�ۀ @b[���_@B#�ۀ @8Ǽ��_@�g�ʀ @\0\0\0\0\0\0\0\0\0�&]X\r_@luiɀ @:_@��wɀ @��_@S�Y?ۀ @T\'Z\r_@�J1ۀ @�&]X\r_@luiɀ @\0\0\0\0\0\0\0\0\0灝DP_@b$>��� @�"{	N_@�.��� @M�FN_@K,�ǀ @�_\rN_@te˒ـ @%�4HP_@�;|�ـ @,iFP_@31ݼǀ @灝DP_@b$>��� @\0\0\0\0\0\0\0\0\0V���5_@*�0ڀ @S�a�5_@:���� @�^��7_@��l�� @�<��7_@S+�!ڀ @V���5_@*�0ڀ @\0\0\0\0\0\0\0\0\0���K�_@ґ�Հ @����_@��w�Հ @�����_@�#��Հ @ʄo��_@�P{�� @����_@��� @4��M�_@g���� @���K�_@ґ�Հ @\0\0\0\0\0\0\0\0\0w�FJ_@+�F��� @�$_@������ @l�_@x0,]� @�>L_@a,�N� @w�FJ_@+�F��� @\0\0\0\0\0\0\0\0\0�vx_@R)��\r� @$9tx_@@>��� @�9v_@��9 �� @+A�:v_@c���\r� @�vx_@R)��\r� @\0\0\0\0\0\0\0\0\0�_�I�_@�hDz� @`?��_@.�y�� @:�b�_@*�P$� @`օK�_@_�A$� @�_�I�_@�hDz� @\0\0\0\0\0\0\0\0\0_����_@6��$� @��X��_@����#� @��{��_@�+e�#� @�\n���_@���� @_����_@6��$� @\0\0\0\0\0\0\0\0\0�vx_@R)��\r� @�U�wx_@U�� @.���z_@�Ȓ� @�4(�z_@�D*�\r� @�vx_@R)��\r� @\0\0\0\0\0\0\0\0\0\'����_@ɴN�� @Ƒ���_@\'���� @Eꅍ�_@;EO�� @k)���_@&i�� @\'����_@ɴN�� @\0\0\0\0\0\0\0\0\0��nz&_@^p^v	� @�\rM?$_@7�ӄ	� @y~A$_@�\ZmL� @�h?|&_@3��=� @��nz&_@^p^v	� @\0\0\0\0\0\0\r\0\0\0\0j��_@~8�34� @AL\n�_@�D l"� @�0@�_@ZO�� @�v�_@�W���� @����_@�]=� @�9��_@��#� @�DS�_@�� ��� @�p0q_@�c��� @q�r_@_-�� @Ys�t_@B��"� @�`�_@c�bz"� @�q��_@~�B4� @\0j��_@~8�34� @\0\0\0\0\0\0\0\0\0k)���_@&i�� @��v��_@s�c/� @�ژ�_@�� U/� @�f��_@]\'��� @k)���_@&i�� @\0\0\0\0\0\0\0\0\0\'Ȧ)�_@Ӓ�}� @ۡ���_@i�P�� @�FS��_@-\'�S� @�!��_@ኇ/� @�-D-�_@�< \r/� @�yu+�_@��E� @\'Ȧ)�_@Ӓ�}� @\0\0\0\0\0\0\0\0\0�_z�_@(�2�0� @�G=?�_@����0� @�~\nA�_@��+�B� @�-|�_@c��uB� @�_z�_@(�2�0� @\0\0\0\0\0\0\0\0\0�JsS�_@G5F;0� @��@U�_@��B� @�ic��_@qe��A� @��_@^��,0� @�JsS�_@G5F;0� @\0\0\0\0\0\0\0\0\0R%|�7_@G��D� @SG�7_@3�*�V� @�8j:_@jQ߈V� @a��:_@�?�D� @R%|�7_@G��D� @\0\0\0\0\0\0\0\0\0��O��_@s�sgB� @�-|�_@c��uB� @�K�}�_@��l=T� @2���_@�/T� @��O��_@s�sgB� @\0\0\0\0\0\0�\0\0\0��@U�_@��B� @�}\Z�_@��AB� @��P�_@|+�I0� @�t.ݢ_@��X0� @c�`ۢ_@��f�� @�E��_@�}�� @��P�_@|+�I0� @�JsS�_@G5F;0� @��Q�_@q��s� @S�ǌ�_@9KJe� @�W�ǫ_@K��V� @��ɫ_@��0� @}��_@l�&0� @��_@���H� @��>�_@��� @J+a<�_@3��r� @,/>�_@T*:� @oWQy�_@J!�+� @�q�w�_@��,d� @)��u�_@]|���� @��װ�_@S/��� @��	��_@)\r��� @���s�_@�&��� @��r�_@1�W\r׀ @U�Kp�_@�u�Eŀ @�~n�_@�~�� @*:�l�_@������ @<@�1�_@&1�ġ� @\r\\3�_@����� @Y:��_@ҽߚ�� @i���_@�8|bŀ @~����_@��*׀ @Af���_@يx8׀ @��«_@�\0� @��^��_@h�t� @��<L�_@���� @�oJ�_@x7U׀ @y�L�_@:��c׀ @3�*Ԣ_@K��q׀ @�<]Ң_@�-W�ŀ @e;��_@|���ŀ @���_@��Q�׀ @�b�]�_@TH��׀ @��\\�_@xa�ŀ @�KZ�_@�xu��� @Wv)�_@j�\r�� @�[�_@�.�� @T:�_@��T�� @J���_@/�b�� @>��k�_@�Iq�� @��(j�_@8����� @��[h�_@ZY�~� @5]�f�_@j)r\Zm� @�H���_@��m� @�㟗_@F�yD[� @��ۙ_@s�6[� @��&�_@�o�\'[� @�xY�_@�j$`I� @�*��_@�c��7� @;ijי_@��7� @��H��_@}:?�7� @\'���_@�`�|I� @��b�_@f�7�I� @�3�\'�_@-���I� @�P�)�_@�0a[� @ool+�_@�E�(m� @X�9-�_@(�j�~� @˓�_@EK��~� @=����_@��\r� @���{�_@n�y� @R��}�_@�㐀 @��~B�_@��p� @��@�_@z;�)� @?��>�_@-�5bm� @�z�_@�7�Sm� @ٍ(��_@�L�Em� @�J�_@��\'7m� @�m}�_@���o[� @x�[��_@���}[� @o�9x�_@�>�[� @b�=�_@�<��[� @T���_@�L�[� @D��ƅ_@-�I�[� @�Ņ_@xU��I� @�-剃_@t��I� @2񱋃_@�;��[� @ȶ~��_@-�?�m� @�\\R�_@�ٗ�m� @\0�P�_@�\Z��[� @\n\rn_@�Q�[� @�:_@�b�m� @C��|_@��F�m� @i���z_@�C��m� @���ex_@l���m� @W5�gx_@���� @�Gâz_@{/;�� @�ޏ�z_@V�U�� @����|_@v<�G�� @A�\Z_@��*9�� @�0�U�_@�Q�*�� @u��W�_@w\nq� @�咃_@��䢀 @0᱔�_@������ @̰~��_@�8Tsƀ @)s\\[�_@�u��ƀ @8)]�_@�(JI؀ @��"_@j�W؀ @���#_@��?� @�J��|_@`�-� @��}�|_@R.5��� @�a�%_@΍���� @���`�_@������ @�+囃_@�-��� @��ׅ_@\rJԻ�� @4�:Յ_@ߺ6�� @Y�\\�_@7���� @2��_@�@؀ @�U�I�_@��؀ @}OK�_@���� @�����_@�*�� @M�n��_@�rǐ�� @��;��_@�dX\r� @����_@\'- � @2+ǎ_@d��� @|�M�_@�L� @��\Z�_@����0� @�G=?�_@����0� @�p=�_@�d��� @C��x�_@۫��� @�_z�_@(�2�0� @\':���_@�֟0� @��O��_@s�sgB� @�\rr�_@��YB� @r��-�_@r��JB� @Q\r�h�_@b�\\<B� @!��j�_@�^�T� @����_@az��S� @`���_@80=�S� @���_@W���S� @��W�_@�j�S� @��@U�_@��B� @\0\0\0L����_@yg2�׀ @��)��_@��+ƀ @w�K��_@�s:ƀ @���_@����׀ @L����_@yg2�׀ @\0\0\0G���_@�z�0� @U��_@���� @]��)�_@���� @f$�+�_@@�0� @G���_@�z�0� @\0\0\0�]�G�_@ IHƀ @�gF�_@������ @�<�\n�_@U��� @\r�υ_@�\0^��� @�5΅_@�i�բ� @�U)	�_@��gǢ� @�sKD�_@�1��� @��m�_@}}���� @��:��_@��Qr�� @F���_@JL�9ƀ @�]�G�_@ IHƀ @\0\0\0Q]:̅_@\r�"�� @��mʅ_@4�F� @����_@�j,8� @�p\\�_@������ @Q]:̅_@\r�"�� @\0\0\0\0\0\0\r\0\0\0.���z_@�Ȓ� @˃��z_@4�eZ1� @g.��z_@m�"C� @�Z�z_@����T� @Ą}�|_@~J�T� @&@J�|_@���f� @��l0_@n׏�f� @�,�._@�%��T� @[f�,_@�qTC� @9�+_@�=1� @��|_@j�L1� @�^�|_@��p�� @.���z_@�Ȓ� @\0\0\0\0\0\0\0\0\02���_@�/T� @�1꺗_@U���e� @\'���_@T�P�e� @�l?��_@��� T� @2���_@�/T� @\0\0\0\0\0\0\0\0\0Qh�{�_@��T8/� @u"�@�_@��F/� @C��B�_@��VA� @*XD�_@F2��R� @y�z�_@����R� @I��_@�r\'�d� @4�k��_@���d� @�机�_@�S%�R� @�Hθ�_@���@� @���}�_@�v��@� @Qh�{�_@��T8/� @\0\0\0\0\0\0\0\0\0���nL_@0���O� @���3J_@7\'1�O� @"6�5J_@�@�ta� @.1�pL_@�Lfa� @���nL_@0���O� @\0\0\0\0\0\0\0\0\0�k�6-_@g��s� @��q/_@���s� @\'���1_@�ϡ�s� @��+�1_@S\n	b� @�![�1_@�BpLP� @E9n/_@G��ZP� @�dhl/_@� O�>� @iF1-_@�bơ>� @��u/-_@}w-�,� @g�S�*_@D��,� @H�1�(_@ت\Z�,� @"�~&_@���-� @ki�&_@��)�>� @�찁&_@O�P� @e�Ҽ(_@��L�P� @��*_@68�wP� @���*_@*/o?b� @I��4-_@B3�0b� @�k�6-_@g��s� @\0\0\0\0\0\0\0\0\0G���B_@���y� @�i�@_@��8�y� @�5�@_@OFش�� @�X�B_@�⊦�� @G���B_@���y� @\0\0\0\0\0\0\0\0\0�k�6-_@g��s� @�G��*_@$t� @�!t�(_@�~t� @��D�(_@��݅� @��f�*_@��΅� @��8-_@{�)��� @�k�6-_@g��s� @\0\0\0\0\0\0\0\0\0�β�_@F�Gp�� @�Iֺ�_@D�b�� @hx\r��_@Z�l��� @�\n�}�_@�I���� @�β�_@F�Gp�� @\0\0\0\0\0\0\0\0\0r���_@_�E�� @����_@)YMS�� @�����_@o��\Z�� @"���_@д�� @r���_@_�E�� @\0\0\0\0\0\0\0\0��N�_@�|)�� @��_@8�7�� @[��ؿ_@ƎCF�� @*��ֿ_@p��~� @���_@�Dp� @���L�_@\r:�a� @��N�_@�|)�� @J;��_@��� @��\Z��_@��{S� @��<��_@�EE� @�`��_@]���� @\'����_@ɴN�� @����_@����� @�"=�_@�ꃷ� @�O;�_@�S���� @��-\0�_@�M��� @�_��_@;3�6� @�����_@e�oր @v�n��_@R�{}ր @AC���_@��ߵĀ @�ѽ�_@D @�����_@�,�߲� @�@���_@��z�Ā @�����_@e�oր @���7�_@��`ր @���r�_@uQKRր @�����_@r�Cր @�Nů�_@��� @�]���_@���� @�j	&�_@���� @¾:$�_@R�\'ր @����_@��~5ր @�!J��_@��mĀ @x,(��_@��I|Ā @05q�_@	į�Ā @��7o�_@�4ò� @<�Y��_@����� @��{��_@��G��� @�!J��_@��mĀ @�l"�_@&|_Ā @<�]�_@��QĀ @ü\\_�_@8�ր @��~��_@iTH\nր @v����_@��BĀ @�����_@��D4Ā @����_@`n�%Ā @\n�J�_@6�sĀ @���K�_@ґ�Հ @����_@;0��Հ @t�(��_@�h;�Հ @�����_@\rW։� @�����_@\ZCqQ�� @��\0�_@��C�� @��\n<�_@{D�4�� @�,w�_@�,1&�� @C�N��_@���� @s���_@Z`�\n� @�&��_@��� @�f���_@突n.� @�����_@p�)`.� @ �\0.�_@<�Q.� @��/�_@��W@� @�m�1�_@�\'��Q� @ʪ�l�_@r*��Q� @����_@U��Q� @6_���_@)��c� @�ڂ��_@��LSu� @,-���_@T��Du� @�}�!�_@KRp6u� @��#�_@_�\n��� @�o�^�_@�̛ @X��\\�_@��(u� @�*\Z[�_@\'ng`c� @����_@&�nc� @V(�_@��;�Q� @;�X�_@����?� @�6��_@|��?� @�n��_@�c}�?� @?@�j�_@��\n@� @��"i�_@SAPC.� @O�D��_@���4.� @�g��_@eTu&.� @m6�\Z�_@`E.� @����_@��lP� @ؘ���_@>��^� @\n�u��_@ϕHm� @����_@�+��\n� @��֞�_@Ϳ��� @מ���_@�E���� @�\Z���_@�@�\n� @���_@��҈\n� @����_@��lP� @f��S�_@���A� @&���\0_@R͏3� @� .�\0_@]��k\n� @� R�_@H]dz\n� @Z�<P�_@� ʲ�� @�~^�\0_@Xu[��� @�o��_@{d��� @�^�_@��|��� @0���_@[��� @���:_@�s�� @�cv	_@���� @��Ft	_@��h�Ԁ @Rbh�_@je��Ԁ @]@8�_@�G��� @�\ZZ�\r_@(J!�� @\r�{\'_@��w� @]ɝb_@�>i� @��md_@���0�� @����_@_�e"�� @����_@-��Z� @���_@�K2�Ԁ @	��`_@�j��Ԁ @{��%_@$�Ԁ @�/��\r_@�w��Ԁ @ G��\r_@���� @��#_@<_|� @���^_@ȵ\n� @q�-]_@��p�� @rpO�_@@���� @pq�_@.����� @hƒ_@k�簀 @��b_@AW�� @���K_@@� @^T��_@q̑ @{�v�_@F�eYԀ @�S��_@߻�JԀ @̤h�_@?�� @�l�\0"_@^� @\Z3�;$_@ʈ��� @���9$_@�S.Ԁ @P��!_@�:}<Ԁ @����!_@(��t @L`8$_@%of @��:6$_@6�՞�� @��j4$_@5�<מ� @B3�2$_@#l��� @���0$_@-\nH{� @`Y��!_@��~V{� @�݆�_@��d{� @���_@P�Y�i� @%(�}_@Sͫi� @A�sB_@�@�i� @Y@R_@j���i� @j�0�_@\'&�i� @xP�_@M��i� @oUߒ_@��1�{� @�ͽW_@�̣�{� @�C�_@"7�{� @/�z�\r_@�;��{� @�J�\r_@� ��� @V�(�_@wǐ��� @�am	_@���� @�*�n	_@�\n���� @��3_@�\n��� @Aғ�_@��z��� @�"r�_@D�鯟� @��A�_@�ڃw�� @�	 �\0_@��򅱀 @ܣ�\0_@��MÀ @@��\0_@\'Հ @^f�L�_@Š�#Հ @���J�_@�]�[À @xI�H�_@�a��� @D��\r�_@CϢ�� @���_@tijÀ @��{�_@��2Հ @�Y��_@��q@Հ @�6���_@�$�xÀ @�ch��_@[oD�À @%�7��_@���NՀ @^�`�_@h�K]Հ @��$�_@�e�kՀ @�$#�_@���À @����_@�퉲À @��3��_@J�걀 @����_@^�Z��� @\\��o�_@�,��� @� n�_@�g+@�� @��Ql�_@���x�� @��/1�_@!Z���� @Q�`/�_@-�`�|� @<;?��_@*���|� @w5p��_@e�/k� @�1���_@��>Y� @ ���_@d��LY� @ �N��_@���k� @��,|�_@�#k� @�^z�_@�h[Y� @�g<?�_@���iY� @Q�\Z�_@��9xY� @��K�_@�X��G� @�j*��_@Oq�G� @�,���_@Ү��Y� @�����_@R�<Nk� @\n���_@���?k� @�n��_@6�o}� @�����_@�#�}� @�����_@R�<Nk� @:C���_@q��\\k� @�׍�_@7q	�Y� @\\�R�_@��p�Y� @�D��_@��ױY� @��r��_@IV>�Y� @�.A��_@��هk� @oy��_@@�k� @����_@"��]}� @_;�i�_@�yAl}� @���g�_@�ᥤk� @oy��_@@�k� @D�P��_@����Y� @s���_@��H� @���_@�٢�G� @,����_@U[16� @Z��_@q�"6� @�w(�_@�x[$� @�Y�_@�j�� @�S{K�_@�M�� @]Ü��_@�/�v� @�rk��_@5�7>$� @����_@��/$� @�0���_@?�4h� @w��_@nf��\0� @:� ��_@���� @_	R��_@��b� @�0��_@�(�� @�xF�_@�1.� @W�@D�_@��f� @FrB�_@�>��� @���@�_@��^ק @����_@�(�� @��_@_�)� @����_@���,� @�o���_@���d� @A����_@YcX�r @e�ԉ�_@�½�r @m���_@�"�` @Q��L�_@w��` @��N�_@4�"�r @���_@#P��r @0���_@���\0a @����_@;�Oa @Z`���_@\0гGO @�n���_@,yVO @>��_@4�{�= @!��_@ ���+ @=�I��_@��C� @[�{��_@�ħ7 @��ZW�_@p�\nF @�4:�_@rhmT @&p��_@ˡ�b @�t���_@$�k*\Z @��Ƨ�_@���8\Z @�����_@u1q @&p��_@ˡ�b @�mK��_@e�3��~ @5%l\Z�_@�Vь�~ @�ڌU�_@v�n~�~ @���S�_@k�Ҷ�~ @���Q�_@P�6��~ @��"P�_@%��\'�~ @6�_@M�5�~ @�q���_@�_D�~ @h����_@���R�~ @���_@[k$��~ @Dw��_@3��|�~ @��3�_@g�`n�~ @��e�_@d�Ħ�~ @U��_@T�(ߋ~ @��\r�_@1��z~ @����_@�~�Oh~ @/����_@�*R^h~ @�M���_@Eq�lh~ @�i퓿_@�-�V~ @��\r��_@����V~ @7�?��_@���D~ @���_@��z�D~ @]�Q��_@��3~ @�ʃ��_@>VBN!~ @��_@N\n��~ @ٕQ�_@s��~ @�cS�_@��\\!~ @_�C�_@P4k!~ @0�u�_@��f�~ @G�U۸_@ڏƱ~ @Y�5��_@�%�~ @jme�_@���~ @X	�f�_@/�!�!~ @4��_@�{!~ @��У�_@�_O3~ @m����_@��E~ @":l��_@���V~ @1�Kl�_@J��V~ @*�n�_@Jܓ�h~ @%3�o�_@ll0|z~ @���4�_@�`��z~ @�a�6�_@b�+R�~ @��s��_@���`�~ @4X���_@)��z~ @���4�_@�`��z~ @s-�2�_@����h~ @�����_@�?Q�h~ @\0h���_@�X��h~ @K�꺭_@��W~ @�n��_@6�uPE~ @Z"�}�_@eh�^E~ @M���_@p;p&W~ @B���_@j\r�h~ @��wF�_@ZZj�h~ @M6�D�_@�y�4W~ @Kى	�_@JR*CW~ @FziΤ_@CņQW~ @�1�̤_@&��E~ @���ʤ_@�L�3~ @j0��_@kk�3~ @ڃ��_@�_�{E~ @��B�_@�0mE~ @Z"�}�_@eh�^E~ @j�/|�_@U�6�3~ @��O��_@�و3~ @8}���_@_G<�!~ @ﭢ�_@�l޲!~ @�+��_@�A�~ @��_@1��#�} @�,:�_@99\\�} @&5Z&�_@A(�M�} @�;za�_@��K?�} @��Gc�_@9P��} @��g��_@Ld���} @@���_@n��0�} @rB�׸_@���"�} @\r��ո_@X�Z�} @��Ը_@\r�T��} @��>�_@����} @rq\r�_@a�X��} @T^��_@����} @퐃и_@R��} @��c��_@^�z�} @�CZ�_@�"� �} @�$�_@�Z7/�} @2G�_@�,�=�} @�o䨭_@X��K�} @E��m�_@K�OZ�} @ɺ�2�_@�A�h�} @L݄��_@R}w�} @��d��_@iSd��} @KE��_@�ÿ��} @$F��_@>�\\[�} @�U�G�_@��i�} @�t�I�_@�4U1�} @r߄�_@}\n�"�} @⟬��_@�*���} @�����_@3�;��} @F�ä_@��أ�} @��y��_@�H4��} @⟬��_@�*���} @��K�_@�d���} @�t�I�_@�4U1�} @�u��_@M��?�} @�c��_@��x�} @Po�ћ_@�m��} @y���_@��Ɣ�} @�q_��_@�Qd\\�} @�l?]�_@V�j�} @�Z_�_@�S[2�} @ G�#�_@�@�} @�e"�_@py�} @�\\��_@��o��} @�Q߫�_@�>ȕ�} @�D�p�_@�; ��} @���r�_@V�k�} @��Xt�_@��[3�} @V�x��_@x%�} @���_@����} @��e�_@�H��} @��\'�_@7����} @C�R)�_@Y\0��~ @U1sd�_@��3�~ @1=�b�_@+���} @�hƝ�_@Sh<��} @ei���_@��z~ @r��ڛ_@�l~ @\Z��ܛ_@�4"~ @���_@�"�%"~ @�.�R�_@�g"~ @uk።_@�	"~ @a����_@����3~ @�Y�T�_@L5�3~ @On�_@�W_�3~ @�.;�_@/���E~ @�[V�_@�X��E~ @5�(X�_@Jz>nW~ @>I��_@���_W~ @1W��_@T�\'i~ @&�㖢_@��z~ @�Ҥ_@L���z~ @g`�Ӥ_@:�]��~ @����_@1��~ @�hJ�_@����~ @6�2��_@2�F}�~ @2a\0��_@�r�D�~ @3�͈�_@�;��~ @5U���_@U��~ @;�h��_@�ƹ��~ @��ǭ_@3�[��~ @HWɭ_@\rh�T�~ @�$˭_@���~ @�gE�_@�6�~ @�/fA�_@�����~ @U��|�_@�#x��~ @EA�z�_@ܡ�)�~ @8��x�_@\Z?b�~ @s9��_@�u�S�~ @�|>��_@��B��~ @.�w�_@H����~ @(1Pu�_@sӯ~ @$��s�_@��i�~ @	���_@E\r\n��~ @��p��_@���į~ @�P��_@�F��~ @_�_@a�}�~ @��,�_@�gE�~ @s9��_@�u�S�~ @@�ٵ�_@��{�~ @����_@�[��~ @�{u��_@�˴� @�@C��_@�9Qr\Z @�d��_@���c\Z @��1��_@�H�+, @��R3�_@ʆ,, @��sn�_@�^�, @r����_@��i\0, @T�b��_@t��= @9�0��_@E%��O @ęr�_@%��O @��s�_@��ea @���8�_@�_ta @k�:�_@���;s @��u�_@=<-s @\r�̰�_@�p�s @�����_@x�v� @�h��_@��� @�6��_@�Үu� @�m{�_@��� @a0�?�_@�cr�� @� �A�_@��Z� @�j�|�_@7��K� @j�~�_@L$I� @Ծҹ�_@z	�� @�̠��_@�!��� @T,���_@�� �� @Ӊ�1�_@����� @X��3�_@��Yw� @I���_@5���� @�g^��_@��XM� @��,��_@.��� @t����_@����$� @��¿_@�n��$� @���_@�^W#� @{酽_@+��1� @^����_@��U�$� @�����_@����6� @��S��_@g��H� @H�!��_@�**PZ� @��_@�B�l� @�н��_@Xb�}� @O拒�_@qk���� @iǭͿ_@֣���� @M��˿_@ ���}� @2�ʿ_@V�c	l� @�J3�_@u�\0�k� @�e�_@Q�d3Z� @���_@*��kH� @D����_@�,�6� @�m�:�_@wYɕ6� @!��<�_@Fe]H� @�ֆ>�_@v0%Z� @���y�_@�f�Z� @)I�w�_@1�OH� @-����_@�l�@H� @0���_@|�82H� @-5?)�_@���#H� @ϝ\r+�_@0�o�Y� @u�,�_@�Q�k� @u�.�_@D��z}� @ج���_@L�}� @��f��_@��p�}� @DE}�_@Kե}� @�^�_@��pm�� @���C�_@���{�� @����_@�v8��� @dם\n�_@}h�Q�� @��{Ͽ_@�7`�� @�Jѿ_@��\'�� @(��_@�66�� @r2���_@W���Ā @�Oę�_@y�n�ր @Co���_@��\n�� @XLp`�_@^m�� @a>b�_@�t	c�� @�wd�_@u��*� @!�.��_@��B� @�����_@����� @\nˢ�_@`�z�/� @�T�ݿ_@fh�/� @:��߿_@{W�dA� @���\Z�_@�OVA� @�.��_@gj�S� @yÉ�_@�DO,S� @\0Vg��_@㸲:S� @�5��_@��Ne� @>m�_@�ѱe� @�)�n�_@1�M�v� @�N�p�_@n�韈� @��ѫ�_@������ @Jx��_@�"��� @����_@��J�� @W�#�_@��Z<�� @\n"�_@���t�� @��H �_@�#�v� @�Ak[�_@����v� @���_@��Y�v� @�A���_@���v� @�����_@�%Y�d� @�B�_@C��d� @��5	�_@�X�R� @Ee��_@�y��R� @��D��_@��!+A� @M�"��_@0ǆ9A� @�DT��_@?�q/� @��1T�_@V�O�/� @�cR�_@����� @b]�P�_@���� @��N�_@�|)�� @\0\0\0]�#�_@U�\0�� @ɦ"�_@s9e� @�\']�_@�\'\0�\0� @g�X[�_@��d/� @7H7 �_@���=� @��h�_@~�-v� @?�Y�_@>��g� @�׻W�_@�.-�� @tݒ�_@��Ǒ� @�����_@R�cY� @?�Y�_@>��g� @g�X[�_@��d/� @�z��_@�� � @�~H��_@f���\0� @�\']�_@�\'\0�\0� @��^�_@�˛�� @]�#�_@U�\0�� @�i�%�_@)���$� @��p\'�_@�N8\\6� @S9O��_@*�j6� @z���_@�j�$� @�����_@�e�� @]�#�_@U�\0�� @\0\0\0yN��_@����\0� @༼�_@�3� @�G�_@���� @k���_@��e�� @<΄�_@-�\0�\0� @]��I�_@@�g�\0� @yN��_@����\0� @\r\0\0\0sHy��_@F���� @9�G��_@X��� @�>&��_@�~��� @΁���_@iV�Z� @���_@�.L� @�7���_@u��� @��«�_@�+."� @�S�p�_@r�0� @��n�_@Z\'�h� @N�m�_@1@Z�� @	�6k�_@�V��� @��W��_@u�Z�� @sHy��_@F���� @\0\0\0\n�\\��_@5���~ @7Ύ��_@��\\\Z�~ @an���_@f7��~ @�l}��_@�\\���~ @\n�\\��_@5���~ @\0\0\0�c�Կ_@	��ր @�9ӿ_@��o�Ā @4?:�_@0F�Ā @!v�_@�1��ր @�c�Կ_@	��ր @\r\0\0\0I����_@��3�� @�X���_@y�$�� @~f{��_@�[6�À @\\�Y��_@�x��À @I����_@��3�� @�h��_@a.oA�� @�����_@V*�y�� @N���_@:$9��� @	��}�_@��|� @%���_@u�4�|� @,���_@�ϣ�� @9����_@B�jk�� @I����_@��3�� @\0\0\0�1�_@?�A}� @[�b�_@�/syk� @͓�T�_@�(kk� @B@SV�_@Ɓ�2}� @�1�_@?�A}� @\0\0\0����_@����� @��%��_@P~�.� @�<G.�_@ۧ� � @Pb0�_@Т!�� @����_@����� @	\0\0\0�r�U�_@���ع @@T�_@��� @���_@�Z� @��/�_@�־W� @��PR�_@|#ZI� @`�q��_@r\n�:� @c:@��_@F��� @j���_@J,ʹ @�r�U�_@���ع @\0\0\0V���_@�)�Ha @��Q��_@�@�O @�r#�_@���rO @��@%�_@�y:a @V���_@�)�Ha @\0\0\0ۇM*�_@+�7�~ @��(�_@u��o�~ @�H�c�_@��!a�~ @,ne�_@�\Z�(�~ @ۇM*�_@+�7�~ @\0\0\0�\n�$�_@��I��~ @�:#�_@����~ @�6^�_@��L\n�~ @�`�_@�?�ѝ~ @�\n�$�_@��I��~ @\0\0\0�	��_@_���~ @7��\0�_@��`��~ @���ŭ_@J\0���~ @�r�í_@]I"��~ @�	��_@_���~ @\0\0\0���_@����À @�9���_@�R��Հ @P�s�_@���Հ @;dl8�_@F�f�Հ @�G�6�_@����À @�&�q�_@��`�À @���_@����À @\0\0\0\0\0\0\0\0\0�o�^�_@�̛ @��`�_@ �5��� @U�Xb�_@S#�~�� @00{�\0_@��`p�� @�{��\0_@&�ƨ�� @O�ۙ\0_@��,ᆁ @�o�^�_@�̛ @\0\0\0\0\0\0	\0\0\0�N�p�_@n�韈� @���5�_@��L��� @��Z7�_@d��u�� @��(9�_@6ބ=�� @�:�_@�� �� @\Z�v�_@����� @O�Kt�_@��!/�� @�u}r�_@��g�� @�N�p�_@n�韈� @\0\0\0\0\0\0\0\0\0��\'�_@�k�с @���%�_@)?A�� @w�+$�_@Y��y�� @=�^"�_@w1��� @�� �_@��fꉁ @�n�_@+y���� @!L��_@��� @P;��_@�9|?x� @����_@�"1x� @��_@�y�if� @����_@s�+[f� @g�*�_@[q��T� @���_@��T� @A+;ޅ_@#rJ�B� @L���_@j���B� @�u夃_@�A�T� @;��i�_@+љ�T� @%��k�_@@s7�f� @~\\m�_@P�Mx� @ξ92_@&�-\\x� @��4_@�4�#�� @�V)o�_@N�r�� @�1�p�_@=Mݛ� @��r�_@筤�� @e�孃_@��T��� @\Z޲��_@�f�]�� @g���_@��O�� @�Ƣ�_@7_6с @��\'�_@�k�с @\0\0\0	\0\0\0�\0\0\0R%|�7_@G��D� @����7_@���3� @���:_@h��2� @[�\0:_@ρ\02!� @�L+;<_@$��#!� @�`9<_@\\� @U̔7<_@��u��� @T(r�9_@lB���� @R�O�7_@-���� @Q�,�5_@9|W��� @O0\nK3_@�\0���� @N��1_@8���� @׆1_@>L� @����._@]�"� @\\Bח,_@+�0� @��\\*_@�(?� @���Z*_@���wڀ @��Y*_@���Ȁ @w�A�,_@$��Ȁ @-\nd�._@��U�Ȁ @摆\n1_@xu�Ȁ @^�Q1_@�Z�Lڀ @�tG3_@P[b>ڀ @V���5_@*�0ڀ @W�ˀ5_@0xhȀ @�7_@�t-ZȀ @N�"�7_@D����� @��W�7_@��ʤ� @�Ɍ�7_@�DN�� @Znj{5_@Tј�� @Yc�y5_@��I�� @YZ�w5_@�2Y�o� @o�<3_@:��o� @1�:3_@�W�]� @���0_@-�L�]� @ߧ��._@���]� @�j��,_@����]� @�+^N*_@�>\'^� @k�;(_@B:o^� @E��%_@ж^� @b��#_@-\0�,^� @�\Z�a!_@��D;^� @%��c!_@y)�p� @>Y}(_@͝+p� @�Ѳ&_@X/�I^� @����_@f.�W^� @�9n�\Z_@��f^� @u�8�\Z_@cU�-p� @Y[�_@p�qp� @�}%�_@k(灀 @��G*_@1\n�؁� @NEje!_@G��ʁ� @����#_@��>��� @�JW�#_@��ރ�� @v�4g!_@�%��� @\nn,_@�tl��� @����_@R����� @�}%�_@k(灀 @V�\Z_@��W��� @7�͵\Z_@pj���� @��z_@��=˓� @h��?_@�ɂٓ� @��RA_@0p#��� @�p0_@�h��� @0��_@��w�� @��	_@�|�>ɀ @Ze�_@�,Jۀ @�l�_@���ۀ @{J�_@���"ۀ @�B�_@�ss�� @X��[\r_@i\'��� @���]\r_@�X��� @��_\r_@����� @����_@��y� @X���_@��pk� @�J�_@|У�� @�$_@������ @�Y\r_@����� @"t|H_@����� @w�FJ_@+�F��� @p�i�_@�7y�� @W+��_@A�`�� @����\Z_@��\Z�� @g^��\Z_@	x�j�� @a��_@kRu\\�� @]��6_@�.N�� @�u�8_@�"�� @��y�_@�$� @A�V�\Z_@�[2� @�4�_@�¡@� @�>L_@a,�N� @��M_@�ć"� @�Ǹ_@5��$"� @$��_@+�3"� @�s�_@m�UA"� @�F=�_@?��4� @vT\Zc\r_@_�:4� @0Pa\r_@���O"� @��_\r_@����� @4\rc$_@�G<�� @�5-&_@�-�]"� @;`�\'_@�~%4� @\0j��_@~8�34� @����_@�)b�E� @{�h�_@a�W� @6�2�_@���i� @���_@c��i� @5��{_@a�)�i� @g��}_@̊�n{� @���_@\'�k6�� @�n]D_@�֭D�� @�q\'F_@l�N�� @kw�G_@7\0�Ӱ� @�~�I_@��� @�\Z�\0_@Uө @*b\0_@�=tqԁ @�>��_@��ԁ @����_@z WG� @�,\0_@�Z9� @��OM_@./�*� @;��K_@�!2cԁ @O���_@��Tԁ @%�ބ_@؟N� @���_@���Ű� @� 8�_@j�j��� @vA�_@� @ǟ%�_@w��p @{���_@oki8ԁ @�88_@��%*ԁ @�H6_@2�b @��~4_@�䚰� @+��2_@6>CӞ� @]F��_@Wខ @�n�_@��� @�䣺_@�((�� @��ٸ_@=�`{� @����_@��DR{� @7 /_@��D{� @ECj\r_@E½5{� @�jf�_@ۑy\'{� @���_@��4{� @_��_@���\n{� @�w_@9��Ҍ� @�B�X_@*KČ� @���V_@N���z� @���_@�d�z� @�l(�_@�X�&i� @t{K�\Z_@];~i� @\0�n_@>�7\ni� @���A_@h���h� @��|!_@ۀ��h� @��׷#_@��a�h� @=���%_@���h� @�q��%_@\\ӹ�z� @5��/(_@Dq�z� @�[�1(_@)SR�� @�?��%_@�Y`�� @n!m�#_@0+�n�� @M�7�#_@cWB6�� @t��!_@k:�D�� @YJ�!_@���|�� @n!m�#_@0+�n�� @�`��#_@���z� @:M~!_@��I�z� @�7\\C_@���z� @C�&E_@Zl1��� @���F_@���R�� @�W�_@Q�a�� @�$��\Z_@1�_o�� @���\Z_@����� @	m��_@9S��� @���_@Zͥ}�� @&uR�_@kEFE�� @2��_@l�� @�J@�\Z_@P���� @�c_@Y��� @J�J_@KH��� @�)��!_@ϫ���� @�o߃!_@%t*�� @,��#_@������ @��%�%_@1)�﯁ @k���%_@�A:��� @��7(_@t��� @/77r*_@�@���� @Jlp*_@[Gӯ� @�{��,_@ܽ�į� @�uZ�,_@��^��� @��}�._@��~�� @��H�._@ʀ�EӁ @}q%�,_@3��SӁ @io�,_@�t�� @T��._@�VT\r� @?7\'1_@��	�� @+kZb3_@���� @�F�`3_@�2)Ӂ @�l%1_@�j7Ӂ @Z�#1_@8D�o�� @���!1_@�y*��� @r�\n 1_@$����� @P�-[3_@@ҝ� @.Q�5_@Q��Ý� @4څ�5_@�AU��� @8���5_@f��4z� @<��5_@��mh� @@k$�5_@E\'v�V� @EJY�5_@�o��D� @R%|�7_@G��D� @\0\0\07m6R3_@W2!�D� @o�T3_@����V� @���1_@Hf�V� @*�1_@d�k�D� @7m6R3_@W2!�D� @\0\0\0��O�_@��ɀ @����_@���=�� @Ԋ�/_@�B�/�� @7r1_@�M�Ȁ @��O�_@��ɀ @\0\0\0m��1_@�l��� @��1_@������ @&B3_@�ӂ礀 @c�C3_@׭"��� @m��1_@�l��� @\0\0\0����._@�Q��h� @4�Q�._@�3�_z� @ݙ.�,_@`��mz� @�c�,_@l?�h� @����._@�Q��h� @\0\0\0�)B�#_@�e!PE� @qw�#_@G/��3� @JO��%_@D9z3� @�e�%_@\0k�AE� @�)B�#_@�e!PE� @	\0\0\0����\Z_@��3� @�i��\Z_@�W=�E� @�t��_@V��E� @��Ȋ_@����3� @����_@*KB"� @`!�\Z_@l��!� @�9D�_@K\'��!� @6�_@��V�3� @����\Z_@��3� @\0\0\0��Z�._@��uy!� @ɏ�._@��ձ� @ƃ�1_@\\���� @�<�L3_@�A�� @�J�N3_@���\\!� @>�}1_@p�+k!� @��Z�._@��uy!� @\0\0\0?m�,_@�)�� @1�7�,_@&��!� @�(b*_@�2�!� @([�&(_@��P�!� @����%_@��!� @ ���#_@����!� @��u!_@�l(�!� @{>�s!_@]"�� @Y��q!_@��?�� @UR�#_@W�1�� @S\n:�%_@��X#�� @���%_@���� @��\'%(_@M���� @~MJ`*_@�&h�� @?m�,_@�)�� @\0\0\0\0\0\0\0\0\0�.َ_@�/��Ё @�qa׎_@��.�� @F�Վ_@��N�� @���_@DS6@�� @\0��K�_@���1�� @|����_@kL~#�� @�v/��_@�?�[�� @��J�_@,f=j�� @;���_@\'�x�� @��\r�_@������ @���ю_@MDW��� @}�ӎ_@=�􆛁 @�O���_@�wO��� @���]�_@p���� @��N_�_@�bGk�� @��a�_@ͻ�2�� @���b�_@���Ё @��\'�_@�k�с @/ɒ)�_@��y�� @\0͵d�_@�g�� @��؟�_@s�ĳ� @���_@#T\'�Ё @�.َ_@�/��Ё @\0\0\0\0\0\0\0\0\0�.َ_@�/��Ё @���ڎ_@Nei�� @d��_@q�\r�� @�Q�_@z�p�Ё @�.َ_@�/��Ё @\0\0\0\0\0\0\0\0\0S��?_@P�j́ @�q��<_@v�>ý @����<_@�B�@ށ @5�\Z?_@b�\\2ށ @S��?_@P�j́ @\0\0\0\0\0\0\0\0\0���ڎ_@Nei�� @��؟�_@s�ĳ� @�󥡌_@��a{� @&\0�܎_@�m� @���ڎ_@Nei�� @\0\0\0\0\0\0!\0\0\0W�#�_@��Z<�� @/��%�_@���� @tO�`�_@����� @M��b�_@��-��� @E��\'�_@�n�˽� @9?_�_@6��ٽ� @����_@��Z�� @�Mn��_@��� �� @+�<��_@�yZ轁 @��\n��_@ h��ρ @���w�_@��Y�ρ @�$�y�_@����� @S�ش�_@KT�w� @����_@?b.i� @��-�_@ȅ��ρ @^JP)�_@�=.�ρ @y�+�_@y\n�Z� @	oAf�_@�LeL� @��h�_@�� @=�2��_@՛� @�<d��_@�)\0>� @���_@Ҡ�/� @�ѩ�_@(�4!� @zI��_@B$�Yρ @R��_@@����� @S���_@{cc��� @����_@���ث� @�����_@-竁 @�*��_@�g��� @�\'\\��_@M��W�� @˙9]�_@��Zf�� @��_�_@KL�-�� @W�#�_@��Z<�� @\0\0\0\0\0\0\0\0\0�^��_@��g� @&��R�_@�]�� @0�T�_@��i�� @Z���_@�� @�^��_@��g� @\0\0\0\0\0\0\0\0\0��by*_@*(�� @>q��,_@�9ު� @So��,_@>X>��� @�\n�w*_@  ���� @��by*_@*(�� @\0\0\0\0\0\0\0\0\0�2��_@$k�A� @AS�_@ �NP� @V`�T�_@U��� @�s���_@�m�	� @�2��_@$k�A� @\0\0\0\0\0\0\0\0\0��by*_@*(�� @\\�?>(_@�q�� @�v\n@(_@}��\Z� @��-{*_@&\0Ȁ\Z� @��by*_@*(�� @\0\0\0\0\0\0\0\0\0���f_@3&q�� @�8�f_@���6� @p��zd_@K	\'E� @w>�|d_@<b�� @���f_@3&q�� @\0\0\0\0\0\0\0\0\0�	�_@Hr�� @:�E�_@+3��� @�"˗_@H�2�� @���̗_@t��� @�	�_@Hr�� @\0\0\0\0\0\0\0\0\0��+_@�+�� @���_@³�� @�sq�_@L{�,� @��-_@~�5�,� @��+_@�+�� @\0\0\0\0\0\0\0\0\0�v\n@(_@}��\Z� @���&_@�Z�\Z� @Wp��#_@�R��\Z� @1C��#_@�nCs,� @\'Ա&_@2��d,� @c�A(_@�}�V,� @�v\n@(_@}��\Z� @\0\0\0\0\0\0;\0\0\07���_@��Lͬ� @�/��_@U[锾� @��&�_@TM���� @���(�_@H�&NЁ @�h�_@��\\Ё @�E��_@��jЁ @k[x��_@�H��� @�ɪ��_@9G�۬� @7���_@��Lͬ� @����_@����� @(:ݬ�_@ň�� @����_@B�qL�� @���o�_@���Z�� @�}n�_@�	3�w� @���2�_@����w� @�h/1�_@����e� @\'���_@T�P�e� @u1���_@��w� @G����_@��J�w� @�����_@\0�煉� @�(b��_@�0D��� @�v/��_@�?�[�� @d;R��_@<��M�� @��_@j�!�� @ngB��_@����� @����_@ �aξ� @���×_@���ܾ� @��_@j�!�� @|����_@kL~#�� @Nʈ�_@4W뾁 @8�M�_@*�w��� @tO�_@���Ё @ l���_@�_��Ё @��d��_@�fUz� @�2��_@$k�A� @TUɗ_@n��3� @���Ǘ_@���k� @|���_@�j�]� @<��=�_@F�=O� @^!�?�_@֩�� @��hA�_@S}w�� @Ƭ�|�_@�a�� @�;Y~�_@�#��� @�Q|��_@��W�� @h�I��_@�B�P)� @0m��_@"<�B)� @�e���_@ӛ�z� @J���_@q�[�� @��_@\0U��� @W\',�_@�`�� @%^Y*�_@��� @�G|e�_@�c� @鋮c�_@�d�?Ё @�fў�_@�{g1Ё @%���_@-\0�i�� @���a�_@��*x�� @\Z`�_@KL���� @�V�$�_@R��� @7���_@��Lͬ� @\0\0\0\0\0\0-\0\0\02��_@l�� @׫�]_@�, @{Y�"_@�`r) @!��_@��7 @�g}�_@�=X�Ӂ @�Z�_@�!�\rԁ @��6s\r_@��ԁ @��\0u\r_@�_��� @w�9_@���� @*��_@LJ\n\0� @�4�\0	_@#\'���� @>�`�_@d����� @(�*�_@�}��	� @�E�_@ԓҫ	� @j��P_@3D�	� @���R_@�K��� @��\0_@ѥ��� @�\0_@֎W�	� @l�\0_@�u�\0�� @Չ���_@$K��� @����_@�s��	� @V�x��_@����	� @l�B��_@)|�� @�wf��_@J�:�� @bq0��_@þ�e-� @8m���_@-�|-?� @�,\0_@��:?� @��AV_@@T�?� @+�wT_@�PWI-� @���_@v�;-� @�0��_@<L�,-� @��_@f0e� @6�	_@���V� @^><?_@��H� @��q=_@\\ �	� @Q��x\r_@��r	� @���_@,d	� @���_@U:V	� @`3�_@�|���� @�5(_@�T��� @�:k&_@����� @f��a_@��m�� @H��_@2�\'�� @=��_@]/��Ӂ @2��_@l�� @\0\0\0\0\0\0\0\0\0�r(�]_@�9^�*� @[���]_@u���<� @�\n`_@W���<� @��K`_@B�*� @�r(�]_@�9^�*� @\0\0\0\0\0\0\0\0\0���f_@3&q�� @vڵ�f_@nm�*� @C.��f_@����<� @����h_@��X<� @j/��h_@���*� @���h_@p��� @���f_@3&q�� @\0\0\0\0\0\0	\0\0\0�;Y~�_@�#��� @�#6C�_@�N�� @�	�_@Hr�� @��	�_@S�|)� @ѧE�_@�m)� @�-�F�_@m�M5;� @�_�_@Ϡ�&;� @��&��_@1�R_)� @�;Y~�_@�#��� @\0\0\0\0\0\0\0\0\0�K�l�_@)��%)� @�.�1�_@�54)� @0�]3�_@�^��:� @��n�_@	}r�:� @�K�l�_@)��%)� @\0\0\0\0\0\0\0\0\0	Y�#_@L��:>� @��#�#_@ݟ�P� @a�G\n&_@6�:�O� @ŵ|&_@<��,>� @	Y�#_@L��:>� @\0\0\0\0\0\0\0\0\0���~d_@\Z�c�*� @�*oCb_@���*� @�d;Eb_@~V�<� @�Gb_@�e�qN� @�+�d_@�`�cN� @��^�d_@�\r�<� @���~d_@\Z�c�*� @\0\0\0\0\0\0\0\0\0����h_@��X<� @��q�h_@%�FN� @_�3k_@��8N� @�ɸnm_@qRL*N� @fM�lm_@C>�b<� @���1k_@��q<� @����h_@��X<� @\0\0\0\0\0\0\0\0\07q\r�_@F�<�K� @�>\r�_@�j��9� @����_@�>	�9� @)c���_@+���K� @7q\r�_@F�<�K� @\0\0\0\0\0\0\0\0\0h�_@j�[-P� @�0��\Z_@"9�;P� @��_�\Z_@��Cb� @���_@�/��a� @h�_@j�[-P� @\0\0\0\0\0\0\0\0\0�]�G_@=��O� @�\Z:FE_@�,O� @زHE_@^���`� @ L)�G_@�d�`� @�]�G_@=��O� @\0\0\0\0\0\0\0\0\0A�]�_@�\'s�K� @�,�"�_@r���K� @.�O$�_@�Yu�]� @\n�r_�_@���]� @A�]�_@�\'s�K� @\0\0\0\0\0\0	\0\0\07q\r�_@F�<�K� @�:��_@���\\]� @XS�K�_@��oN]� @"j"��_@s�@]� @�~E��_@���1]� @J�v��_@4�jK� @G�S��_@L�kxK� @A}0J�_@�cԆK� @7q\r�_@F�<�K� @\0\0\0\0\0\0	\0\0\0	�H#�_@HȃK� @�%��_@�?�!K� @�����_@���\\� @>�%�_@N{�\\� @��:`�_@X���\\� @��]��_@�;F�\\� @҆���_@���J� @�k^�_@�K� @	�H#�_@HȃK� @\0\0\0\0\0\0\0\0\08m���_@-�|-?� @��֤�_@\n��;?� @��i�_@+��I?� @<�|k�_@��Q� @��Fm�_@	TB�b� @Кo�_@V��t� @��4��_@���t� @��j��_@��\0�b� @�����_@�_Q� @\rk���_@��P� @8m���_@-�|-?� @\0\0\0\0\0\0\0\0\0P��!t_@����_� @0��q_@��=�_� @�ɘ�q_@s�ۜq� @�G�#t_@�߄�q� @P��!t_@����_� @\0\0\0\0\0\0\0\0\0�����_@�F*q� @��翃_@�{b_� @�Ą�_@>x�p_� @����_@\\�r8q� @�����_@�F*q� @\0\0\0\0\0\0\0\0\0�����_@"�a�o� @��̙�_@�y�4^� @����_@�M)mL� @D�!Ӵ_@��^L� @|E�_@�@dPL� @�ChI�_@�!BL� @��G�_@^"ez:� @\0-���_@?�l:� @�_@��e�(� @@� �_@����� @[��C�_@�-�� @t��E�_@!ɲ(� @�ܨ\n�_@� ,�(� @΅ϴ_@����(� @���ʹ_@���� @�����_@}�T� @b�b��_@����(� @4�0��_@[��:� @��\r[�_@���:� @ɞ�\\�_@�;�{L� @�p�!�_@���L� @�`�#�_@k�Q^� @ݛ�^�_@�w\'C^� @�w`�_@l��\np� @�����_@"�a�o� @\0\0\0\0\0\0\r\0\0\0�+�7�_@;j�]� @�T�r�_@�>��]� @}ƴt�_@H�B�o� @(�ׯ�_@]J�zo� @j{	��_@��A�]� @��:��_@���K� @��q�_@!��K� @�vIo�_@n�o2:� @8g&4�_@{��@:� @�U��_@͑9O:� @>����_@�a�L� @g��5�_@�pL� @�+�7�_@;j�]� @\0\0\0\0\0\0\0\0\0�}u�_@���n� @&��s�_@��_]� @۽Ѯ�_@$��\\� @.���_@�QZ0K� @:��q�_@���>K� @D��6�_@�C/MK� @K����_@b$�[K� @��h��_@&4#]� @l��8�_@�5�]� @��Z:�_@�%e�n� @�}u�_@���n� @\0\0\0\0\0\0\0\0\0�ߣ�_@el�\\� @2߀��_@9�ٯ\\� @�CP��_@�twn� @\ZQs�_@�in� @w\\�N�_@_C�Zn� @i��L�_@,���\\� @�ߣ�_@el�\\� @\0\0\0\0\0\0\0\0\0����_@.�"v\\� @����_@����\\� @�e���_@�I+Ln� @&m���_@��=n� @����_@.�"v\\� @\0\0\0\0\0\0\0\0\0�C.7k_@�/��q� @��\n�h_@��3�q� @L&��h_@��ѝ�� @��8k_@�M|��� @�Itm_@��&��� @��Qrm_@�t��q� @�C.7k_@�/��q� @\0\0\0\0\0\0	\0\0\0�����_@�F*q� @K��Ã_@���� @����_@Í\\も @�v�9�_@��Ղ� @j��t�_@�Ƃ� @X�s�_@��	�p� @h[�7�_@��d\rq� @w����_@�+�q� @�����_@�F*q� @\0\0\0\0\0\0\0\0\0}ƴt�_@H�B�o� @ϐ�9�_@x&��o� @�+�7�_@;j�]� @�\0���_@�/q�]� @��|��_@����]� @lKý_@�kq�o� @Yn��_@���o� @��<\0�_@�Ũm�� @	�_;�_@��C_�� @{:�v�_@ɕ�P�� @}ƴt�_@H�B�o� @\0\0\0\0\0\0\0\0\0wEv�_@!kon� @�u";�_@s�� n� @�(�<�_@�y�� @�6x�_@�|	�� @wEv�_@!kon� @\0\0\0\0\0\0\0\0\0�k�7�_@0g>�� @\\q�r�_@��%0�� @��p�_@�Ȅh�� @f��5�_@<��v�� @�k�7�_@0g>�� @\0\0\0\0\0\0\0\0\0�0��\Z_@"9�;P� @$���\Z_@9�t>� @�2�_@��e>� @h�_@j�[-P� @��X_@�7P� @bB\0�!_@��P� @Ox5�!_@��+I>� @	Y�#_@L��:>� @1C��#_@�nCs,� @9�j�!_@h΋�,� @DGU_@k�ӏ,� @O�#\Z_@�\\�,� @��X_@?{�\Z� @�K5�\Z_@51��\Z� @Z���\Z_@>�b�,� @iPܣ_@T��,� @m妥_@��I�>� @�;�j_@H.��>� @��Ml_@[�0XP� @8Rn_@]�b� @u��o_@E�q�s� @u�4_@�·�s� @푉6_@eAX��� @�p�q_@&���� @�xs_@�b�v�� @z웮_@g�kh�� @zMѬ_@*Eˠ�� @w��_@��*�s� @v<�_@���b� @r|q�_@!�IP� @�0��\Z_@"9�;P� @\0\0\0\0\0\0\0\0\0v�.01_@�(�=� @��._@�es�=� @c/��._@?/�O� @H��._@����a� @�bl�._@3�RJs� @e7�._@���� @3F[71_@yo��� @�q&91_@7!G˖� @5CJt3_@������ @r3_@��[��� @�Գp3_@hU�-s� @��51_@��<s� @V��31_@�hta� @���11_@�MȬO� @v�.01_@�(�=� @\0\0\0\0\0\0\0\0\0��ܱ�_@a���� @h\0�_@��q�� @��2�_@��既� @b��_@��K��� @��ܱ�_@a���� @\0\0\0\0\0\0\0\0\0�����_@"�a�o� @��h��_@F��Á� @?�ش_@�I���� @����_@a8��� @�}�_@�g�n�� @N�P�_@�	q`�� @�gċ�_@6F\rR�� @м�ƽ_@��C�� @mŽ_@BE\r|�� @�$���_@�^q��� @#��N�_@�՘�� @��M�_@�9�o� @<f��_@VX��o� @|$�ִ_@1��o� @�����_@"�a�o� @\0\0\0\0\0\0\0\0\0}��_@=#j��� @1d���_@@����� @�Y���_@}�n��� @���_@�z�� @}��_@=#j��� @\0\0\0\0\0\0\r\0\0\0�`��	_@�&oY�� @�^ğ	_@fՑ� @#_��	_@�;�m� @�g�b_@~0��m� @�n�\'_@�W�m� @�s��_@H��m� @�L[�_@/)�� @�B8�\0_@�v��� @��\0_@Vv3��� @i(+�_@��� @*=N+_@�Rv�� @�Oqf_@1��g�� @�`��	_@�&oY�� @\0\0\0\0\0\0\0\0\0��*_@*O\'��� @[�L(_@�=q�� @�bN(_@�+̨� @���*_@�-ǽ�� @��*_@*O\'��� @\0\0\0\0\0\0\0\0\0��`_@������ @U��]_@\n1��� @����]_@a��t�� @38�`_@t `f�� @��`_@������ @\0\0\0\0\0\0\0\0\0��ܱ�_@a���� @��v�_@|HD��� @�C�x�_@Ά�U�� @�ѩ��_@�G�� @��ܱ�_@a���� @\0\0\0\0\0\0\0\0\0JGc�_@�9�T�� @ٕ#(�_@��0c�� @<��)�_@B��*�� @ppe�_@B9q�� @��7��_@�\'�� @��j��_@�7wF�� @JGc�_@�9�T�� @\0\0\0\0\0\0\0\0\0�^5R�_@��鑂 @�9�_@ʹ;��� @���_@� ֿ�� @��T�_@�]h��� @�^5R�_@��鑂 @\0\0\0\0\0\0\0\0\0�`��	_@�&oY�� @bdd�	_@)�!�� @���_@!Ö�� @J��_@[;$�� @�{�_@f��<�� @Po��_@g�J�� @�`��	_@�&oY�� @\0\0\0\0\0\0	\0\0\0�k�7�_@0g>�� @sd\\��_@r��L�� @/9&��_@�NI�� @�"��_@�"�� @�����_@�$+껂 @����_@��ۻ� @�0;�_@]��ͻ� @gMJ9�_@�t�� @�k�7�_@0g>�� @\0\0\0\0\0\0	\0\0\0�xs_@�b�v�� @eT8_@̽���� @�)0�_@�>��� @����_@�<�Z�� @B!�\0_@��"�� @R(�;_@g�9�� @ܞ:_@"8�L�� @*�Bu_@��R>�� @�xs_@�b�v�� @\0\0\0\0\0\0\0\0\0ތǃ_@��񀦂 @�����_@yxK��� @��č�_@b��V�� @���ȃ_@���H�� @�5�_@��4:�� @!?�_@K�r�� @ތǃ_@��񀦂 @\0\0\0\0\0\0\0\0\0���_@��=碂 @���T_@�M���� @�ܝV_@��J��� @����_@�w׮�� @���_@��=碂 @\0\0\0\0\0\0\0\0\0���w3_@��:L�� @}μ<1_@�~�Z�� @���>1_@*&"̂ @���y3_@�u�̂ @���w3_@��:L�� @\0\0\0\0\0\0	\0\0\0��b<_@ �hK�� @n�\':_@*\Z�Y�� @�nL):_@]�U!�� @щ(�7_@D_�/�� @����7_@\0�A�˂ @l�+:_@}���˂ @K�;f<_@<���˂ @Rpd<_@�M�� @��b<_@ �hK�� @\0\0\0\0\0\0\0\0\0���f_@�\\�� @*OL�f_@9&c;�� @V��f_@o��s�� @����f_@��&��� @�5��f_@�u��q� @��Åd_@����q� @����d_@uL{��� @�alLb_@���ȃ� @;�8Nb_@��m��� @�K\\�d_@���� @ٞ(�d_@`߷I�� @���d_@�%V�� @�4�Qb_@Ȉ��� @�Sb_@��H�ʂ @k�iUb_@�.�܂ @���d_@A���܂ @�z��f_@/�=�܂ @���f_@����ʂ @���f_@�\\�� @\0\0\0\0\0\0\0\0\0Մˠ_@�vUɂ @U?a��_@hC�cɂ @W�.��_@r�q+ۂ @ˆR͠_@�ۂ @Մˠ_@�vUɂ @\0\0\0\0\0\0\0\0\0���	_@j܈YƂ @�f��_@�\Z�gƂ @j���_@&��/؂ @�_@6"!؂ @���	_@j܈YƂ @\0\0\0\0\0\0\0\0\0C�y`_@���ʂ @g�U�]_@ِ�˂ @,"�]_@���܂ @�H��]_@q-�� @V2`_@��ل� @��E\Z`_@(K;�܂ @C�y`_@���ʂ @\0\0\0\0\0\0\0\0\0���}�_@[5��ۂ @]�B�_@by�ۂ @�D�D�_@���� @��_@\\kVt� @���}�_@[5��ۂ @\0\0\0\0\0\0\0\0\0b�9�_@�u[�� @}+^	_@ z� @�ٓ	_@ bv��� @;�T_@)�1��� @�B܏\r_@p���� @�s\0�_@�,���� @�5�_@ɛ�ނ @p��\r_@�L�ނ @ڲ�R_@���ނ @yX#Q_@bS�͂ @�<�	_@6�4#͂ @E��	_@:���ނ @�_��_@���ނ @��o�_@X����� @b�9�_@�u[�� @\0\0\0\0\0\0\0\0\0����	_@i�o?� @7�o_@���M� @58Qq_@��{�� @��t�	_@�~	�� @����	_@i�o?� @\0\0\0\0\0\0\r\0\0\0WQ�_@�h8؂ @��F_@K��؂ @H_@�F�� @Sþ�_@ ��� @S7��_@��j��� @u���_@�7���� @����_@O3v�� @��6"_@��h�� @Zx(5"_@O�o�� @>�_@��� @��_@�\\�� @���_@u���ׂ @WQ�_@�h8؂ @\0\0\0\0\0\0\0\0\0��b�[_@�Ƚ0� @����[_@bNi\0� @�]ʥ[_@�р�� @%p�jY_@��ӯ� @c�rlY_@�Xrw\0� @��>nY_@2�?� @��b�[_@�Ƚ0� @\0\0\0\0\0\0\0\0\0՗��o_@���� @����q_@F�h�� @���q_@���� @��ٻo_@5"��� @՗��o_@���� @\0\0\0\0\0\0\0\0\0ǆ��z_@�\\��� @V�}_@Rkt�� @�?�}_@K���� @�c��z_@(�j��� @ǆ��z_@�\\��� @n���x_@��%�� @k�i�x_@E�î�� @hW6�x_@|Hav� @IBZ�z_@��h� @)+~ }_@3��Y� @�[_@�VK� @��Y_@������ @�����_@R�^u�� @��+��_@�W��� @q#X_@^�� @)/;V_@�}�ۂ @�<nT_@�	�,ʂ @�J}_@<A9;ʂ @�n}_@V��܂ @���z_@�/܂ @ǆ��z_@�\\��� @\0\0\0\0\0\0\0\0\0�P�&_@��\r� @l�3�(_@��;\r� @��b�(_@o\'�<�� @Ś?�&_@�\ZK�� @�P�&_@��\r� @\0\0\0\0\0\07\0\0\0b�9�_@�u[�� @H��_@�e��� @6iK�_@Ј���� @�-\'h_@�B��� @��-\0_@���� @<����_@������ @�o���_@-\n� @�,�{�_@��K� @T�q@�_@�r�$� @	�M�_@��2� @�V)��_@�=A� @҆_��_@�my߂ @UÃ�_@?-k߂ @���_@\n�͂ @ต��_@e�̱͂ @"�q��_@��͂ @NH;��_@.��߂ @�R�_@���߂ @R���_@Bh-�߂ @Հ���_@,tl�߂ @����_@�\rz� @t�s��_@��L�� @�\\=��_@�j�O� @��i�_@V�,^� @���-�_@�jl� @�/�_@Z�4� @X����_@�+JB� @�)u��_@�i�P� @��>��_@�J)\'� @c��_@���	\'� @���1�_@�J��&� @)�l�_@�1p�&� @ہ�j�_@�%� @����_@�� @e]+��_@7;Q	� @��a��_@���A� @�\Z�\Z�_@�zp3� @�n��_@l��k� @5��S�_@5q�]� @z��_@?�OO� @��ΐ�_@M��� @�(���_@	��� @�����_@x�Q�� @k_��_@��� @>�D�_@��ϳ� @*�_@�H��� @�{N��_@�EL�� @���_@�\\�^&� @��<��_@��P&� @#Ra2\0_@�hB&� @�/�0\0_@��z� @y��k_@�ڃl� @W�ߦ_@�@@^� @7.�_@2A�O� @b�9�_@�u[�� @\0\0\0\0\0\0\0\0\0՗��o_@���� @�m_@��� @7O�m_@n���#� @�8s�o_@��]w#� @՗��o_@���� @\0\0\0\0\0\0\0\0\0�jov_@����� @�{�3t_@�l�� @6�5t_@79�Z#� @�1�pv_@MJWL#� @�jov_@����� @\0\0\0\0\0\0#\0\0\0~�6��_@6�!� @uth��_@E_P�� @��D]�_@ڐ��� @0!"�_@�\\�� @��R �_@rd|�� @�1/�_@Һ�*�� @�\\��_@��{�� @�٫�_@��\0� @���_@q�B9�� @�k=��_@���q� @��m�_@�	�� @��Kk�_@��l�ڂ @O+(0�_@>���ڂ @���_@:�0�ڂ @�����_@�̜� @^㮻�_@�.�� @��๩_@w���ڂ @b�~�_@����ڂ @/<���_@#\0��� @��gE�_@�~��� @��C\n�_@A�O�� @]��_@���� @Ub5G�_@l����� @KY��_@Mh+��� @=�|��_@nt�r�� @.~���_@�\Zid�� @�un��_@�a,� @�2�5�_@v��� @3�p�_@�]A� @e\0�r�_@���!� @�ŧ��_@��z�!� @D���_@���!� @�J�#�_@�R��!� @\n_�_@OwP�!� @~�6��_@6�!� @\0\0\0\0\0\0	\0\0\0�~��_@�<p\\� @�9Қ_@��֔\r� @����_@�b�\r� @�I%�_@�Pɾ�� @���_@�X=��� @[��]_@������ @�׮__@�}J�\r� @�a_@J��j� @�~��_@�<p\\� @\0\0\0\0\0\0\0\0\0�P�&_@��\r� @�\0�s$_@��*!\r� @﫽u$_@h���� @��&_@��L�� @�P�&_@��\r� @\0\0\0\0\0\0\0\0\0l�3�(_@��;\r� @c�(_@����� @��\'\'+_@�\\�� @ Kb-_@<(�� @�3z`-_@�tK�� @1�V%+_@����� @l�3�(_@��;\r� @\0\0\0\0\0\0\0\0\0Q�[/_@M�%� @��7�,_@8�$%� @|��,_@m�z�6� @�\'/_@�/�6� @Q�[/_@M�%� @\0\0\0\0\0\0\0\0\0��_@�.˒4� @��_@�6o�4� @�F��_@�Ҽ"� @h�"��_@%.�"� @��_@�.˒4� @\0\0\0\0\0\0\0\0\0~�6��_@6�!� @���_@�\n�V3� @��(׽_@�S#H3� @ԪL�_@{7�93� @@<~�_@4�"r!� @��Zս_@����!� @~�6��_@6�!� @\0\0\0\0\0\0\0\0\0�o�3_@��6� @pRKI1_@���6� @ڑK1_@���H� @�:�3_@�7�H� @�o�3_@��6� @\0\0\0\0\0\0\0\0\0�I�@_@�-�k6� @V�$�>_@W�z6� @][�>_@��AH� @���@_@�]f3H� @�I�@_@�-�k6� @\0\0\0\0\0\0\0\0\0hٜ�x_@�I:�F� @fЭx_@���5� @���rv_@�5� @7�xtv_@����F� @hٜ�x_@�I:�F� @\0\0\0\0\0\0	\0\0\0B�_�_@�%\Z� � @f�$�_@5,�� � @�G�&�_@\nT�2� @���a�_@�=��2� @��c�_@TPqD� @�����_@���bD� @��՜�_@1�K�2� @|���_@й�� � @B�_�_@�%\Z� � @\0\0\0\0\0\0\0\0\0�>�_@G�"�I� @S\Z\Zq_@Ӎf�I� @�O�r_@p�[� @���_@���|[� @�>�_@G�"�I� @\0\0\0\0\0\0\0\0\0�ՐNk_@��X� @����m_@A���X� @�\'��o_@��7�X� @���o_@��G� @he�m_@��G� @3H�Lk_@:G#G� @�ՐNk_@��X� @\0\0\0\0\0\0\0\0\0hٜ�x_@�I:�F� @k�i�x_@��הX� @^э�z_@Q�X� @����z_@p�F� @hٜ�x_@�I:�F� @\0\0\0\0\0\0\0\0\0��_@�.˒4� @/��K�_@P�&�4� @����_@�큯4� @k"u�_@�8wF� @�\'�M�_@���hF� @�ZfO�_@6a0X� @�j���_@X�"X� @�x�Ō_@�l�X� @�+�Ì_@�RLF� @�*���_@�ZhZF� @��_@�.˒4� @\0\0\0\0\0\0\0\0\0�h��_@�gvJW� @IX�<�_@�Y<W� @�K�:�_@"+xtE� @�h���_@I)ڂE� @�h��_@�gvJW� @\0\0\0\0\0\0\0\0\0UUd��_@q١a2� @g�@N�_@C�p2� @��P�_@cç7D� @��Q�_@r�B�U� @����_@)f��U� @r�3��_@ՠ<)D� @UUd��_@q١a2� @\0\0\0\0\0\0\0\0\0S�	��_@�x��C� @����_@���C� @�`���_@\\t��U� @���_@��K�U� @S�	��_@�x��C� @\0\0\0\0\0\0\0\0\0�S?�/_@��h0� @W�d-_@��|v0� @���e-_@4�>B� @Ը�g-_@�6�T� @�3�/_@�\Z5�S� @f��1_@<���S� @%#(4_@�A�S� @ݗKT6_@�d��S� @�\no�8_@�L�S� @>{��:_@n�ѮS� @��=_@V�S� @A��=_@Iܽ�A� @`J��:_@�J9�A� @w杍8_@�S��A� @��zR6_@��.B� @�W4_@�3�B� @�4_@سK0� @ղb�1_@�{�Y0� @�S?�/_@��h0� @\0\0\0\0\0\0\0\0=6�_@t��]� @��+q�_@��_�\\� @��bo�_@�f�5K� @�����_@��\'K� @��P��_@�Z&�\\� @_;u��_@zr��\\� @�8���_@&JK� @��� �_@��K� @�"�_@�$��\\� @٨�]�_@qw�\\� @~��[�_@�8��J� @z3\Z��_@�.��J� @z�>��_@M�^�J� @{{c\r�_@��"�J� @~�H�_@Ү��J� @�����_@�\r��J� @Qa��_@B!�8� @����_@(*��8� @��>��_@�J)\'� @	\Z��_@�2f&\'� @���D�_@Q��4\'� @ϾF�_@��D�8� @�:��_@0ހ\n9� @��	�_@^��B\'� @�r���_@��\ZQ\'� @2燓�_@5�U_\'� @�YcX�_@���m\'� @N�>�_@G�{\'� @�8\Z��_@Kf�\'� @<Q��_@�c�� @`�,��_@Ų��� @�,j�_@���� @��.�_@~��� @�x�0�_@�a��\'� @I߇��_@����\'� @����_@8NG�� @�M���_@���3� @��Ѷ�_@��A� @�	��_@�:z� @˛�y�_@�q�� @��x�_@+����� @>��<�_@���� @���_@F�<��� @8�\n\0�_@[��ς @�$�ĸ_@F��#ς @��ø_@�-\\�� @\nL���_@t�bj�� @��0��_@eʿ��� @ߌK�_@����� @a*DI�_@,R陂 @�kh��_@E�ۙ� @��0��_@eʿ��� @�&U��_@>���� @�py��_@X�S��� @����_@<\n���� @#�5�_@\Z�z��� @���7�_@�mx�� @���r�_@P��i�� @C\\�p�_@:�C��� @�0o�_@�ڇ� @`�T��_@��i̇� @�y��_@"\'2��� @O5� �_@�*���� @�Y�[�_@9����� @_��Y�_@9�u� @�/X�_@�|d� @��S��_@��Cd� @�犑�_@){�<R� @y�_@Z��t@� @;9���_@zm\\�.� @���_@H�#�.� @�8T��_@���� @�Y���_@f��� @�\0�_@�o�� @?5���_@�\0:�� @��	:�_@n��+�� @7��;�_@��k�\n� @�ڛ=�_@Y@�� @Q�d?�_@����.� @��-A�_@\0�RJ@� @R�Q|�_@�<@� @��z�_@O�vt.� @���x�_@|>Ԭ� @g��v�_@��1�\n� @�b\Z��_@����\n� @�t��_@�֙�� @�����_@0<f.� @{_���_@U6X.� @�>��_@�	_�� @�>��_@�ڼ�\n� @�u��_@թ\Z�� @d��&�_@ؕ���� @�]�a�_@ ���� @S���_@�<h��� @*���_@T8�� @�b:��_@��\0� @ϰ��_@��+��� @LW\'�_@�L��� @����_@�/��\n� @?eP�_@�Ts\n� @��JN�_@�;���� @X��L�_@Bf�� @�.�J�_@��nՁ @ڷۅ�_@<71Ձ @�G��_@�l�FÁ @��5��_@x�Q8Á @�Fl��_@��p�� @�͢��_@�C��� @�,���_@�OК�� @�����_@>�.Ӎ� @�&3��_@��|� @ �i��_@75�Cj� @�݌,�_@\n�5j� @�R�*�_@bnX� @�z�e�_@���_X� @K�d�_@,F+�F� @�QSb�_@����4� @^v��_@��J�4� @�����_@zR��"� @�#��_@C�3� @x��_@���$� @�m<��_@/\']�� @rO_�_@[��N�� @ǝ��_@!TF�� @��\n�_@�ۤ�ۀ @t��E�_@�0e�ۀ @�$D�_@����ɀ @�A[B�_@�X""�� @i�}}�_@"g��� @.)�{�_@�AL�� @I�ֶ�_@ɿ\0>�� @K���_@�m_v�� @��/��_@��h�� @�e��_@r�}��� @՛��_@E��p� @Z\0���_@��:_� @H����_@�k{_� @90�t�_@�u�-_� @,�j9�_@��;_� @!XH��_@X:J_� @d�~��_@ZϘ�M� @V\\��_@x�אM� @!Œ��_@�5�;� @�mp��_@�Qt�;� @��9��_@���M� @��K�_@��S�M� @NI�_@"@��;� @��+�_@����;� @�Ob�_@��M,*� @-�?��_@��:*� @![	��_@x�,<� @����_@��i<� @t���_@d��H*� @�W�Z�_@NW*� @/��\\�_@\0�<� @�6�!�_@���,<� @fnk#�_@���M� @�4%�_@9�%�_� @���&�_@Yȃq� @rm b�_@���uq� @ٷ�c�_@w�-=�� @[!�(�_@ijK�� @�`�*�_@f�� @?�e�_@����� @�R|g�_@N�q̦� @�Ei�_@����� @<�".�_@6�O��� @��Y,�_@V��ڦ� @��6��_@���覀 @�<��_@Pk%��� @�fݷ�_@D�Ǿ�� @�|�_@��͸� @���z�_@B�`�� @Ek(y�_@�]�=�� @�Q_w�_@0v�� @b�_@91�g�� @Cʸ��_@?�q� @�:�u�_@i\0z�q� @-%�s�_@����_� @���_@���_� @��&��_@���N� @�i]��_@S�XI<� @e\0;p�_@e�W<� @��qn�_@-�*� @��l�_@!�N�� @3˧�_@|Q�� @�M���_@�{��*� @Z����_@e{s*� @��_@��?e*� @Z��_@)ݝ�� @l����_@*J٫� @|\\$��_@0-7�� @��F�_@����� @Z��_@)ݝ�� @J2Y�_@y\nb�� @��hW�_@���� @_��U�_@�\0� @�����_@Z���� @?����_@ft��� @B�\Z��_@y�� @�����_@�\0@*� @T>/��_@Y�b� @j)\rR�_@��p� @��CP�_@p\08�� @j�zN�_@=��� @�X�_@�m�� @E���_@�S/(� @��m��_@Tj6� @�����_@�(�n� @Ʃ���_@��}� @�K��_@��D� @i�)`�_@}#�R� @�`^�_@�<�� @Ʃ���_@��}� @�����_@�v`�x @lė\\�_@t���x @���Z�_@�=��f @����_@p�1\ng @�\r��_@:~�BU @BF���_@���PU @�|���_@]o_U @,�~l�_@p�9mU @��j�_@�>��C @%.�h�_@����1 @ z�-�_@�,�1 @ĩ��_@��c�1 @���_@�H�2  @�s���_@,I�@  @�����_@��Uy @=�x�_@��� @���=�_@�4 @4���_@���� @1��\0�_@D�T��~ @����_@\ZI���~ @<����_@@A�"�~ @�1��_@V7D[�~ @�8��_@�M�~ @O0Z8�_@z�>�~ @���6�_@(�6w�~ @Jp��_@l��~ @��N��_@]+���~ @@a-��_@��ա�~ @˯���_@|�xi�~ @�+�K�_@�]�w�~ @ko�M�_@�P?�~ @��z�_@I��M�~ @�GY׼_@�5�[�~ @ǰ7��_@u�i�~ @F�o��_@�H��~ @�w���_@Ĥ��~ @i��]�_@e~���~ @wd"�_@!�	��~ @��B�_@5�;�~ @\0{�_@ 8�=�~ @�Y��_@��K�~ @k����_@\\&��~ @�5pm�_@"W��~ @�_�k�_@�m�ʒ~ @���0�_@���ؒ~ @�5�.�_@�>@�~ @�p�,�_@�}�Io~ @8�h�_@.\rl;o~ @�:��_@�6;-o~ @EG[޳_@��	o~ @Ί|�_@rY�o~ @����_@��4I]~ @����_@�M��K~ @�v�ڳ_@�K~ @4�ٳ_@�7�9~ @�q❱_@�DP�9~ @M�\Z��_@֚�(~ @̆�`�_@3�(~ @Np�%�_@�e\r+(~ @n-�\'�_@�.��9~ @��g)�_@��T�K~ @��F�_@���K~ @�n�_@]�(�]~ @/.�_@6LX�]~ @z��y�_@l|��]~ @̦�>�_@�F��]~ @`��_@���]~ @����_@r�@L~ @㢠Ɵ_@@�nL~ @L0�ğ_@Ae�G:~ @)����_@���U:~ @N����_@[�S�(~ @o9)��_@�r��~ @�K�_@�h��~ @��@I�_@�8\r~ @�{yG�_@UԓE�} @pyX�_@�E�S�} @7�\n�_@����} @�?pϖ_@V�G��} @�͖_@�v���} @v���_@<����} @eFO��_@|s��} @K.Y�_@&����} @Dg�Z�_@e8C~�} @=]��_@Vn��} @<Q��_@�����} @�Uz�_@�0=b~ @�n�!�_@��T~ @i��\\�_@���E~ @���^�_@�H�\r~ @�b#�_@�B�~ @[�)%�_@#�[�(~ @��J`�_@��0�(~ @��b�_@�P՜:~ @��c�_@��ydL~ @�Y���_@�CNVL~ @i����_@��^~ @5ň��_@g ��o~ @�$�ݖ_@�\rk�o~ @jqߖ_@�i��~ @��8�_@\\óf�~ @���_@X.�~ @�~!�_@[t+ �~ @N\0CY�_@h��~ @Ke\n[�_@���ٶ~ @��+��_@=u˶~ @ke�_@HB��~ @��ӟ_@�K��~ @�ԟ_@=_�L�~ @��֟_@�p3�~ @0���_@���~ @`E��_@n����~ @��T�_@L�L� @ŠvP�_@r�� @�D>R�_@���N! @�`��_@�j�@! @��Ȩ_@�b2! @�Iʨ_@[[�2 @�}k�_@���2 @�U�@�_@V��2 @s+�{�_@�:t�2 @�E�y�_@,��! @�	��_@�,��  @eA��_@���1 @��b�_@\Z��# @��*�_@�Um�  @���_@���2 @GҺ�_@`O�zD @��.�_@��lD @�-�_@��ޤ2 @�n6h�_@�ի�2 @�:X��_@Z�x�2 @�z޼_@BAEz2 @�8B�_@�~�AD @�n\n�_@{��	V @^P,�_@��W�U @m\rd�_@���3D @��V�_@�4�%D @�/NX�_@BQ#�U @;\rp��_@(���U @����_@bQ��U @�SZ��_@�L\\�g @:|�_@�&�g @\n�D\r�_@ώ�Qy @�/\r�_@�vl� @���_@k\\� @i����_@�2E� @�|��_@*&趮 @��D��_@T�~� @��f�_@�!Up� @�ӈO�_@��b� @\\dQQ�_@���)� @�3/�_@T�7� @u���_@�ޚ�� @PA��_@R�=�� @*ˈ�_@����� @ rf��_@W��� @4�.��_@4��d� @l���_@���r� @��Ԩ�_@��:+� @Er���_@\0�\\,+� @R����_@�u��<� @^z���_@gV��N� @N�e��_@kb��N� @t���_@:r5=� @��zo�_@\n	k=� @@\\Cq�_@��N� @8� 6�_@cIC�N� @�*�7�_@V�`� @��s�_@W��`� @B9�t�_@�Tgr� @�����_@�<Yr� @i���_@��Jr� @�/<&�_@ƀ�<r� @��^a�_@W�z.r� @9u���_@9.C r� @�Ÿ��_@<��X`� @�X���_@��hJ`� @����_@ilr� @~���_@�D�r� @L}��_@��u˃� @�%�O�_@5=��� @B�zQ�_@W�߄�� @JX�_@�\\��� @�5��_@$�P��� @����_@\0����� @\n�ۡ�_@�++w�� @�T���_@i;�h�� @����_@�ѕ0�� @JF���_@���>�� @�q�h�_@�kM�� @%Ǹf�_@}�b��� @A��+�_@{ۙ��� @c1s��_@ȚС�� @\\�;��_@osi�� @QU��_@OA1ˀ @B����_@p��܀ @2����_@��[�� @\Z^��_@����\0� @q;��_@�R5�\0� @����_@I,�]� @,~���_@J}l� @����_@?d�3$� @�q��_@#IT�5� @�NNM�_@wS�	6� @��O�_@�E-�G� @#F�P�_@6ИY� @���_@���Y� @D��ں_@�W;�Y� @�Eu��_@�Op�Y� @t�Qd�_@d��Y� @�b�_@�\nH� @e[�`�_@��^B6� @��^�_@>Q�z$� @���#�_@�O�$� @�\r"�_@�L�� @H�0]�_@��� @��h[�_@(�t�\0� @Q�Y�_@���#� @��W�_@�r.\\݀ @��V�_@6��ˀ @���\Z�_@�澢ˀ @w��_@3bj݀ @OB}�_@H}2� @#uE �_@lŨ�\0� @�W"�_@�>�� @�1Z�_@W�8@� @m\r��_@���x݀ @T��߱_@�1�ˀ @8�ޱ_@�N鹀 @��ޢ�_@���� @;�g�_@\Z��� @���,�_@�$��� @��`.�_@۰��ˀ @[�=�_@e��ˀ @h���_@��^�݀ @p�⹦_@�\\��݀ @�����_@4�� @��r��_@;��N� @�|O��_@��]� @\nQ,G�_@3r9k� @��H�_@C4�2� @���\r�_@��\rA� @\\��ҝ_@e�=O� @+��Н_@Z���� @�#	�_@!�iy� @�cA\n�_@��ű� @�@ϝ_@>���� @��V͝_@�Q�݀ @�w3��_@�=�ހ @�]W�_@x9�ހ @���X�_@�=T�� @[��Z�_@�?��� @�Y|�_@��&�� @��C!�_@L�y� @�y#�_@�oA%� @��$�_@	7� @���&�_@m&��H� @^8b(�_@�-[�Z� @���c�_@%+,�Z� @\'SMe�_@� �Ql� @��g�_@st~� @I��h�_@Ꮑ @�O�j�_@������ @Y�kl�_@��_p�� @_����_@R-0b�� @�lW��_@:	�)Ł @�*��_@�w�ց @&�欛_@κ�� @_����_@������ @�qv��_@+dcH� @�7>��_@�5� @g5b�_@r��� @X\n*�_@{}z�/� @E���_@u;�A� @-���_@^��XS� @����_@7�e e� @�qI��_@�h	�v� @k�m1�_@w=��v� @�53�_@��{��� @���4�_@އi�� @Bv�6�_@�)�0�� @�g�8�_@�f��� @g[U:�_@\0h\n�ς @�P<�_@���� @\n�Aw�_@�|y� @X�	y�_@\r�A� @���z�_@[(�� @E���_@q���� @P����_@0,4�� @U����_@ݠ׉(� @�`���_@5��{(� @K�s��_@THC:� @EF�1�_@l�5:� @�z`3�_@���K� @R�(5�_@{@[�]� @؈Mp�_@�N\'�]� @�E�n�_@���K� @U���_@��O�K� @d^r��_@d��]� @؈Mp�_@�N\'�]� @�r�_@���}o� @m�:��_@�%�oo� @��_�_@#Yaao� @�1��_@4:��]� @��!�_@B��]� @��\\�_@��S}]� @qK�^�_@y��Do� @�%Ι�_@��6o� @����_@�o]� @Ll*Ӹ_@�K�`]� @h�aѸ_@�hD�K� @C���_@`�\r�K� @!T�G�_@"��|K� @\rЂ�_@ 8�nK� @�����_@]\\g`K� @�x��_@�\Z/RK� @�+>4�_@�s�CK� @=6�_@t��]� @!\0\0\0,re�_@�<�/� @�*�c�_@��t�� @`"Ξ�_@\Z�B�� @ )��_@y^�� @*ئ_@�^m� @��M�_@>�:�� @/��_@���+�� @`��L�_@��d�� @��͇�_@f�1�� @�����_@���� @䡹į_@of��� @�ځƯ_@��D�� @	Jȯ_@���W/� @�n�_@@ճI/� @aX6�_@�WA� @-���_@78��R� @����_@�f��d� @�A�\n�_@�@hv� @�W�_@#��/�� @#[3ѯ_@\r&>�� @��ү_@�]��� @[ח�_@mp��� @� ��_@:)LL�� @x��Z�_@��Z�� @&���_@Y��h�� @u���_@��v� @�j6�_@�+l�d� @�C�_@�ޞ�d� @6Jߦ_@�b�S� @\n\Z&��_@��-.S� @�\Z^��_@,�fA� @�	:g�_@�ۻtA� @,re�_@�<�/� @[\0\0\0x@=!�_@i%��Á @O���_@�\n4�Á @+.���_@x�n�Á @J8���_@��Ձ @d��q�_@��J�Ձ @x6�_@P���Ձ @��4�_@�X��Á @Ƀ���_@"��Á @��g��_@�T�Á @��0��_@���Ձ @�\'\r��_@8�/�Ձ @�]D��_@���Á @��g��_@�T�Á @����_@	�)�� @D�{��_@�|�7�� @�β�_@F�Gp�� @cR�D�_@��~�� @њ�B�_@�8ݶ�� @9��@�_@��:�|� @AH!|�_@V��|� @�Xz�_@�`k� @+�{��_@T�\'k� @K�D��_@_h��|� @Xh��_@����|� @ge�-�_@L�X�|� @NT/�_@:�}�� @9�0��_@&;4��� @����_@���S�� @�Iֺ�_@D�b�� @����_@	�)�� @����_@�/y�� @K%�2�_@��?\r�� @��4�_@�X��Á @��o�_@i���Á @+.���_@x�n�Á @&-��_@�A�� @i�P��_@�ёⱁ @�����_@o��\Z�� @�d��_@	�))�� @����_@;��a�� @�ң�_@\\[�|� @z��h�_@07�|� @��f�_@��|�j� @c	��_@n\nC�j� @�c,��_@k��j� @�p���_@���|� @��\Z�_@�rp}|� @�O�_@�@εj� @W���_@�,�X� @�ͩQ�_@���X� @r��O�_@p�NG� @H���_@\\�\nG� @�:��_@`�qB5� @�N�_@�ϬP5� @�j��_@���^5� @�~��_@�։&G� @�O���_@wO�4G� @\0w��_@ib�BG� @�$���_@K\\{5� @�H���_@�"m5� @�j��_@���^5� @$Y+�_@�dE�#� @qlNL�_@U�\n�#� @�}q��_@S��z#� @�:��_@`�qB5� @�]��_@ 645� @3߀��_@+�%5� @�%J�_@���F� @!�&��_@�\n��F� @H���_@\\�\nG� @�͌�_@J˵�X� @$;���_@�z�X� @�n�_@��=�X� @����_@���|j� @#y���_@>�j� @!����_@�\Z�R|� @�i_��_@���`|� @�<U�_@�e5o|� @��\Z�_@�rp}|� @r���_@_�E�� @SAW�_@݅�6�� @�k�X�_@�y��� @l���_@O>� @����_@�෱� @5��Z�_@8�Ʊ� @�t�_@��VԱ� @x@=!�_@i%��Á @��`\\�_@Mڽ�Á @\r�)^�_@R�_UՁ @d#�_@�L�cՁ @x@=!�_@i%��Á @\0\0\0��{��_@�+e�#� @��D��_@I��5� @��!��_@�@�5� @�G��_@��{G� @"\r�v�_@~�\Z�G� @eУ;�_@,|R�G� @�l=�_@d.�_Y� @�4I�_@�,nY� @���\0�_@&ǉ�G� @eУ;�_@,|R�G� @�"�9�_@�ǯ�5� @w8�_@�\r	$� @T�5s�_@���#� @��lq�_@\n�23� @_����_@6��$� @/7Ǫ�_@�SX]\0� @�<���_@� O\0� @�@\r!�_@r�@\0� @\\B0\\�_@�h�2\0� @\ZBS��_@��t$\0� @Y6��_@�V�� @�)�]�_@��P�� @W�"�_@q�� @\n��$�_@�h,�#� @��{��_@�+e�#� @\r\0\0\0P2+�_@3�B�9� @Hz�_@$�w\n:� @o!>�_@��B(� @��b�_@�ܟ4(� @P2+�_@3�B�9� @]�OY�_@��\r�9� @�u�W�_@`�j&(� @D���_@l�4(� @l�t��_@\n���9� @�=��_@��z�K� @�\\[�_@����K� @���_@���K� @P2+�_@3�B�9� @\0\0\0�i%G�_@��*��� @o\n\\E�_@���ş� @m��_@�K��� @`�H��_@���~�� @�i%G�_@��*��� @-\0\0\0p�jp�_@F3���� @�H5�_@����� @/V7�_@��y�� @�W���_@(��� @\nW���_@	��� @�"��_@g�O��� @�%��_@��� @��[��_@�r� @��8��_@�ƭ� @��o��_@�N܀ @��L��_@�F\\܀ @FÃ~�_@,ڤ�ʀ @ɒ���_@&�i�ʀ @��o��_@�N܀ @&����_@�\0�?܀ @rs�1�_@��1܀ @�I�l�_@kW#܀ @\r���_@��\Z܀ @�1��_@�xMʀ @}�T��_@�v;?ʀ @����_@f��w�� @�����_@)����� @�V��_@`���� @gͭ\Z�_@�\\i�� @8��U�_@`\'[�� @5��_@R��L�� @8Ǽ��_@�g�ʀ @Є���_@��Bʀ @�%���_@g!��ۀ @b[���_@B#�ۀ @��O��_@��ģ� @o-[�_@^"�� @U=\n �_@aFA�� @?`���_@��� @*�ĩ�_@J]��� @��n�_@2P��� @p�jp�_@F3���� @D捫�_@�0^��� @Ұ��_@�� ��� @�Ez��_@���]� @]MW��_@J\0l� @s� ��_@�ѡ3#� @��s�_@=��A#� @�R4r�_@H=z� @p�jp�_@F3���� @\0\0\0(�{�_@&s��܀ @�X��_@��ڿ܀ @º5��_@��܀ @��l��_@3upˀ @�ޏ��_@�e8�ʀ @h���_@����ʀ @(�{�_@&s��܀ @]y�X�_@ˈi�܀ @�_���_@�80�܀ @�C���_@����܀ @&\n�_@�g�x܀ @�/��_@�^@� @�;�\r�_@2�\0\0� @�?v��_@�$;\0� @�@���_@�ԘN� @�O���_@+��\\� @�\\gZ�_@��k� @�gD�_@��Dy� @(�{�_@&s��܀ @\0\0\0�H��_@/T�ʀ @�OR��_@ٱ��� @xu�_@��w鸀 @E>�_@#\Z�ʀ @�H��_@/T�ʀ @\0\0\0�HL��_@�}�v�� @�����_@o�]��� @NC��_@���� @�n�_@�f�h�� @�HL��_@�}�v�� @\0\0\0��)�_@L�\'Y� @�~�+�_@N=��j� @t.���_@,>��j� @�V���_@��L5Y� @��)�_@L�\'Y� @\0\0\0�XF�_@w�"F�� @�� H�_@M0�\rā @p/��_@���ā @a����_@�94*ā @[���_@�t�b�� @��4�_@�2ZT�� @�XF�_@w�"F�� @\0\0\0v�%��_@KQ��$� @w�]��_@ſI� @��5�_@���� @|�H7�_@�O��$� @v�%��_@KQ��$� @\0\0\0�y��_@NZ+� @����_@���c� @k>��_@�/�� @n	��_@��ۍ� @�@��_@�9�� @��b*�_@[���� @��+,�_@#F�� @U��-�_@ٕDG� @�[���_@M~U� @�K���_@>� � @�y��_@NZ+� @��A��_@�u��� @���_@�5� @��V~�_@��9� @�y��_@NZ+� @\0\0\0��=�_@����� @;٢?�_@Ƃ��� @����_@����� @���_@P��� @��=�_@����� @\0\0\0&<p�_@��~�x @�uGn�_@>^�4g @�Mi��_@��&g @2!2��_@�kF�x @&<p�_@��~�x @\0\0\0���D�_@ܺM�U @�\rC�_@fܪ�C @��.~�_@)�t�C @o��_@\ZW�U @���D�_@ܺM�U @\0\0\0*�DA�_@��%2 @i|?�_@6e]  @�Ɲz�_@�.O  @"Rf|�_@��2 @*�DA�_@��%2 @	\0\0\04fZ�_@��k  @3�"�_@��=32 @A��_@GTsA2 @QVߏ�_@h�O2 @b��T�_@�]2 @�F�R�_@e�9�  @����_@�V�  @�8��_@�R�y  @4fZ�_@��k  @\0\0\0[ұܼ_@���  @#��ڼ_@���� @�P�_@��� @����_@L.n�  @[ұܼ_@���  @\r\0\0\0�$XI�_@�-�h�~ @���G�_@7꠶~ @n���_@����~ @�ӽ�_@I����~ @d���_@�[v�~ @�Ҽ��_@\n��=�~ @┄��_@L��~ @YL��_@G��~ @[�*è_@�!w��~ @��b��_@pN��~ @�^A��_@�"�~ @��K�_@$"20�~ @�$XI�_@�-�h�~ @\0\0\0Hy�\n�_@:�t�~ @���_@����~ @�\\D�_@�C��~ @���E�_@T>F٤~ @Hy�\n�_@:�t�~ @\0\0\0m�ږ_@P"HL~ @�_Tؖ_@"�}�:~ @�u�_@^�Qr:~ @E�<�_@���9L~ @m�ږ_@P"HL~ @\0\0\0�\Z�_@K�ڔ� @hoQ�_@|�v�� @��sP�_@�9�� @`}=R�_@��˔� @�\Z�_@K�ڔ� @\0\0\0\0\0\0\0\0\0h{a��_@���n� @�K���_@)���n� @�����_@L\n(]� @6Ø��_@��A6]� @h{a��_@���n� @\0\0\0\0\0\0\0\0\0=6�_@t��]� @�H���_@A��]� @I\Z���_@�Ct�n� @���7�_@H};�n� @=6�_@t��]� @\0\0\0\0\0\0\0\0\0�\'��o_@��7�X� @Х�o_@)�Օj� @=�r_@(~�j� @�M��q_@PJ�X� @�\'��o_@��7�X� @\0\0\0\0\0\0\0\0\0�ZfO�_@6a0X� @\nIB�_@���>X� @�q�_@��Yj� @[�3Q�_@Pm��i� @�ZfO�_@6a0X� @\0\0\0\0\0\0\0\0\0�i+zA_@��ŻA� @??_@�B�A� @�V�@?_@�6ڑS� @���B?_@�crYe� @S\Z�}A_@A\n�Je� @ ��{A_@!�]�S� @�i+zA_@��ŻA� @\0\0\0\0\0\0\0\0\0@�C�E_@%(dfS� @�) �C_@�=�tS� @���C_@�Jy<e� @��E_@�%�-e� @@�C�E_@%(dfS� @\0\0\0\0\0\0\0\0\0h{a��_@���n� @��<K�_@�3o� @eVM�_@��Ӏ� @�5*��_@;O�ŀ� @h{a��_@���n� @\0\0\0\0\0\0\0\0\0(��9\0_@4��`m� @uWe��_@[�.om� @-w/\0�_@���6� @�T;\0_@޿�(� @(��9\0_@4��`m� @\0\0\0\0\0\0\0\0\0�d��#_@��#D~� @Y��(&_@��5~� @���&&_@":nl� @l��#_@\0�|l� @�d��#_@��#D~� @\0\0\0\0\0\0\0\0\0�P�L_@�S�e� @��[jJ_@�\0e� @�q-lJ_@̅��v� @��P�L_@�\Z�v� @�ct�N_@�S��v� @���N_@Y��d� @�P�L_@�S�e� @\0\0\0\0\0\0\0\0\0���_@������ @��@<�_@W�x��� @)\Zw:�_@����� @�ZR��_@P��� @���_@������ @\0\0\0\0\0\0\0\0\0�lS��_@ИZ�� @l����_@@>��m� @��d`�_@���m� @�.b�_@-���� @�\n\'�_@��ڨ� @C��(�_@iq|p�� @q��c�_@Cd<b�� @�A��_@Y��S�� @��A��_@��E�� @�f�_@8�y7�� @:v�P�_@68)�� @�z�N�_@#�a� @b͜�_@ˠ�o� @�x��_@��~� @�lS��_@ИZ�� @\0\0\0\0\0\0\0\0\0�d��#_@��#D~� @C�x�!_@|mR~� @I�C�!_@~~\r\Z�� @�_h�#_@����� @�d��#_@��#D~� @\0\0\0\0\0\0\0\0\0>m�_@���{� @�IɌ_@���{� @�kˌ_@s��j�� @̝:�_@7$\\�� @��^A�_@8��M�� @�a�?�_@��)�{� @>m�_@���{� @\0\0\0\0\0\0	\0\0\0�M�XS_@(���v� @�ٗQ_@�!�v� @r�iQ_@̳t�� @%�ZS_@�$4f�� @я��U_@��W�� @x��W_@��3I�� @�/�W_@�)��v� @��ޓU_@ٌ�v� @�M�XS_@(���v� @\0\0\0\0\0\0\0\0\0\\����_@�Vm��� @[�%��_@^���t� @ai��_@:d�t� @a4�F�_@T���t� @W���_@�u{�t� @FĘБ_@@�u� @2�kґ_@s�φ� @\n3�\r�_@�D��� @�v�H�_@n����� @��Ճ�_@v����� @\\����_@�Vm��� @\0\0\0\0\0\0\0\0\0֠i�_@ǟ��� @�z�-�_@��N�� @D�/�_@Jb�۞� @.O�j�_@�C�͞� @֠i�_@ǟ��� @\0\0\0\0\0\0\0\0\0eVM�_@��Ӏ� @8u��_@�2�ဃ @���_@������ @�\'�ظ_@Z�Ϸ�� @�5_��_@kƒ� @B:b�_@�<Ԓ� @f�d�_@ׁߛ�� @�@�e�_@�y�c�� @!N�_@�=LU�� @�\'��_@WU���� @ÿLڸ_@�r�� @�Yܸ_@��G�� @c:�_@1��8�� @w�q�_@�;q�� @.��P�_@>mc�� @��N�_@��a��� @eVM�_@��Ӏ� @\0\0\0\0\0\0\0\0\0��T1_@���}�� @�Y�/_@?�틡� @t��\Z/_@�=�S�� @R8�U1_@=$AE�� @��T1_@���}�� @\0\0\0\0\0\0\0\0\02M,]p_@!C+q�� @�"n_@=%��� @�:�#n_@��FG�� @���^p_@��8�� @2M,]p_@!C+q�� @\0\0\0\0\0\0\r\0\0\0\\����_@�Vm��� @eV���_@�]�� @x��_@@��$�� @�\r���_@��� @ߠ���_@�vN�� @Q�7�_@���?�� @�/6r�_@�B[1�� @c�bp�_@���i�� @)�n�_@<e0�t� @3�k3�_@_潰t� @L�H��_@�K�t� @6��_@;����� @\\����_@�Vm��� @\0\0\0\0\0\0\0\0\0��~_@��6Ń @W���!_@x�pŃ @R�ٷ!_@O|M��� @M��!_@o~�ᡃ @:�z_@ǿ� @y�|_@=͖��� @��~_@��6Ń @\0\0\0\0\0\0\0\0\0�$j"�_@wf���� @�Y� �_@�Z$8�� @�nv��_@;�F�� @��R��_@��U�� @�2"��_@����� @�,F��_@�V.�� @�$j"�_@wf���� @\0\0\0\0\0\0\0\0\0c:�_@1��8�� @��_@F[�\0ȃ @:��\Z�_@L $�ك @A��U�_@���ك @�(T�_@s�I�ǃ @�j_R�_@�&�*�� @c:�_@1��8�� @\0\0\0\0\0\0\0\0\0	\r&5�_@�p�2ԃ @EfJp�_@n#b$ԃ @�|n�_@���\\ @oeX3�_@x�$k @	\r&5�_@�p�2ԃ @\0\0\0\0\0\0\0\0\0�$j"�_@wf���� @D�9$�_@)pX�у @��]_�_@�\n�у @q\Z�]�_@�N� @�$j"�_@wf���� @\0\0\0\0\0\0\0\0\0	�>j�_@%��9ك @�/�_@p�!Hك @g��0�_@��� @M�l�_@��� @	�>j�_@%��9ك @\0\0\0\0\0\0\0\0\0~ȭ�_@��2ك @V����_@=Ooك @&R��_@�W�� @w�_@����� @~ȭ�_@��2ك @\0\0\0\0\0\0\0\0\0Nh߂v_@�8�Ճ @�E��v_@���� @��пx_@����� @���x_@�G\'\nՃ @Nh߂v_@�8�Ճ @\0\0\0\0\0\0\0\0\0��\\�_@����ԃ @��� �_@#G	�ԃ @Dƫ"�_@��{� @W>�]�_@Z�Jm� @��\\�_@����ԃ @\0\0\0\0\0\0\0\0\0	\r&5�_@�p�2ԃ @̱��_@�X Aԃ @�N���_@��� @���6�_@f^�� @	\r&5�_@�p�2ԃ @\0\0\0\0\0\0\0\0\0�3Բ�_@�H�y̓ @�Ȱw�_@7�̓ @rU�y�_@��O߃ @�̧��_@n�"A߃ @�3Բ�_@�H�y̓ @\0\0\0\0\0\0	\0\0\0\nҽ�,_@�W��� @-���,_@p���� @[` /_@l�� @�L/_@�w��փ @Q`\'�,_@�J�փ @��*_@��c�փ @�ͩ*_@q�� @���*_@5(���� @\nҽ�,_@�W��� @\0\0\0\0\0\0	\0\0\0\\0ʒ3_@2$��ă @���W1_@��Ń @ �pY1_@x?��փ @�&<[1_@���� @�y]1_@eR�c�� @�J,�3_@�rU�� @��`�3_@Ӎ� @����3_@/�3�փ @\\0ʒ3_@2$��ă @\0\0\0\0\0\0\0\0\0�����_@���ԃ @�Aqo_@P\Z�ԃ @R>q_@�x��� @ads_@$�Tn�� @?�/��_@�6�_�� @�b��_@��\\�� @�����_@���ԃ @\0\0\0\0\0\0\0\0\0�N���_@��� @����_@��� @�vx_@3n���� @|���_@��Y��� @�N���_@��� @\0\0\0\0\0\0\0\0\0��<��_@0���� @�r�_@-���� @\n��s�_@�X���� @�E\n��_@%�;��� @��<��_@0���� @\0\0\0\0\0\0	\0\0\0��]_�_@�\n�у @k�-a�_@_��� @��b�_@"�H�� @�!��_@3\r�9�� @E�E�\0_@~�9+�� @7�u�\0_@>�c� @��Q��_@1\'r� @���_@?w�у @��]_�_@�\n�у @\0\0\0\0\0\0\0\0\0���*�_@��$߃ @QB��_@{�2߃ @`��_@6)��� @�j�,�_@g���� @���*�_@��$߃ @\0\0\0\0\0\0\0\0\0��*��_@��}�� @��O��_@.jC�� @\\�t4�_@��� @�ث2�_@�Mf��� @9����_@}\'���� @��a��_@I����� @��*��_@��}�� @\0\0\0\0\0\0\0\0\0]�eZ�_@i:��� @�o@�_@��v��� @5�	!�_@��f� @��.\\�_@���W� @]�eZ�_@i:��� @\0\0\0\0\0\0\0\0\0��_@N�+� @�4��_@�Q9� @��q�_@�9�\0�� @��<�_@|k��� @G�a_@��H�� @��\r_@�ۨ��� @��_@N�+� @\0\0\0\0\0\0\r\0\0\0��~_@��6Ń @\Z,[C_@b��Ń @�&E_@M�U׃ @��F_@(�� @�ǻH_@�`��� @���J_@�*\0�� @����_@��� @o���_@d���� @\\��!_@_���� @[�:�!_@�i-\0� @3��_@;�v� @��J�_@���F׃ @��~_@��6Ń @\0\0\0\0\0\0\0\0\0��*��_@��}�� @P��_@��� @?O΄�_@�jZ� � @m���_@�= � � @��*��_@��}�� @\0\0\0\0\0\0\0\0\0�����_@ cUt� @De���_@�}��� @G����_@��3J � @����_@�e�; � @�����_@ cUt� @\0\0\0\0\0\01\0\0\0�3}p�_@	��\r� @;]�n�_@e��� @	jة�_@.���� @����_@�":� @��l�_@�McH� @��k�_@����؃ @h��/�_@P;�؃ @(����_@� B�؃ @h��_@����ƃ @�&��_@5��ƃ @z8�|�_@��ƃ @�Ջ~�_@����؃ @x�fC�_@�n��؃ @H�A�_@f�]\0ǃ @z8�|�_@��ƃ @A��z�_@�|}*�� @���?�_@��8�� @�Ӯ�_@.A�F�� @5T��_@�X�� @���_@������ @b���_@7g�ő� @Py���_@:���� @<���_@�\n8U�� @�e��_@�nuc�� @�@S�_@�l�q�� @M)�_@��� @�w��_@a�Gǃ @~ȭ�_@��2ك @���V�_@<F�\0ك @Or	U�_@�ZT9ǃ @�j.��_@�L+ǃ @&aS��_@���ǃ @\r���_@%�{�؃ @�����_@)��؃ @���V�_@<F�\0ك @/�X�_@�/��� @]�eZ�_@i:��� @����_@/����� @�˯��_@-9�s�� @����_@e1�e�� @S��F�_@��BW�� @��_@��I�� @G���_@R��� @��\r��_@�?f� @_�2��_@<�&�\r� @����_@�Ȼ� @l�!7�_@%䇭� @�X5�_@}��\r� @�3}p�_@	��\r� @\0\0\0\0\0\0\0\0\0����_@��� @�v�_@��Ve� @]���!_@$D\rW� @]���!_@�Rm�� @����_@��� @\0\0\0\0\0\0\0\0\0���<_@����� @4:fK:_@�A)�� @��1M:_@��ȹ� @,�V�<_@�z�� @���<_@����� @\0\0\0\0\0\0\0\0\0�	�@_@�ʝ��� @]���@_@��<�� @)f��@_@��ێ� @�B�9C_@�U��� @��7C_@PN�� @��-6C_@�DN��� @�	�@_@�ʝ��� @\0\0\0\0\0\0M\0\0\0}W�$_@�w�� @O��$_@��C� @����$_@$�U|� @���N"_@nc͊� @��L"_@�w4�Ѓ @�� _@^���Ѓ @f)y�_@Ua"�Ѓ @^���_@�S��� @ɸ��_@R��&�� @-�`^_@��u5�� @�=#_@��C�� @�%�_@�"`R�� @;F��_@P��`�� @�$�_@�y;��� @&\Zp_@������ @4C�4_@̓#��� @�\r3_@�� @j;��_@Ux���� @4mż	_@wp�� @����_@��� @��}F_@FCU(�� @8ĭD_@,��`�� @���	_@�?-o�� @33f�\0_@ʗ�}�� @AH��\0_@��x� @|�r��_@��u�x� @��NV�_@*��x� @�+�_@\r+V�x� @EC[�_@�g� @6�7��_@r�+(g� @%���_@��6g� @\r�g�_@��	Eg� @^��i�_@&\r�y� @:z��_@�\'5�x� @S%���_@�X�Ŋ� @�����_@��_��� @Ӳ���_@��~�� @0���_@�L�p�� @�m�Y�_@\Zb�� @�B�[�_@��)�� @*��_@�hC�� @&�\0_@�V��� @\'\0��\0_@u3lԿ� @+��\0_@�\r�у @���_@�v��у @X��K_@/z"у @��J_@G����� @=�MH_@P�ףּ @C�q�_@T�|ᭃ @��A�_@�l��� @���_@��pу @s�5�	_@iO=bу @X�e�	_@����� @C���	_@�\nӭ� @?j��_@�ĭ� @���_@��0��� @Ԁ�6_@��}�� @w�}8_@��VEу @�s_@���6у @j�Ů_@�4n(у @؋��_@�o�у @Dv\r%_@�D�у @��&_@O�� @.�b_@�ާ�� @�c�c_@�A�� @�c��_@���}� @�a\Z�_@�uTo� @�\0��_@.}�6� @��Ơ_@�dE� @C�e_@y.�S� @�psg_@2Ss� @K���_@��� @����_@X���� @\'�� _@B��� @��T"_@d\Z��� @��\'�$_@�M �� @}W�$_@�w�� @\0\0\0\0\0\0\0\0\0��B��_@�� � @H���_@�@ � @^��_@�V��1� @kH��_@O���1� @��B��_@�� � @\0\0\0\0\0\0\0\0\0]���!_@$D\rW� @]�f�!_@�3�0� @����#_@�c0� @�}��#_@�/�H� @]���!_@$D\rW� @\0\0\0\0\0\0\0\0\0ـ\\N_@��� @��� L_@Hfm�� @&��I_@�s��� @�H�I_@ޔ7փ @4�ߨG_@�,pEփ @Pv��G_@M\r� @lIw�G_@����� @�C�G_@��L�� @���G_@)��c� @��ڱG_@U��+/� @���I_@<�9/� @"�3�I_@��U� @@�g�I_@+��� @_��I_@bP]��� @Q��"L_@^3��� @Cz�]N_@������ @ـ\\N_@��� @\0\0\0\0\0\0?\0\0Nh߂v_@�8�Ճ @��v_@���PÃ @��Ev_@a�D��� @{�x}v_@:���� @8�{v_@��	��� @�3�yv_@R�k2|� @u��>t_@~�@|� @�r_@��O|� @�tcr_@����� @d(?�o_@�@%�� @q{r�o_@�as]|� @Х�o_@)�Օj� @����m_@e|,�j� @\0e]Pk_@���j� @�ՐNk_@��X� @��li_@(1;�X� @>,9i_@�C��j� @|��f_@�/�j� @[i��f_@�.͖|� @���d_@Y�"�|� @JԘeb_@l�w�|� @��t*`_@�[��|� @05�(`_@�.�j� @�u�cb_@,s��j� @�\0bb_@�1;$Y� @�K$�d_@B�Y� @�{H�f_@x�Y� @�|�f_@T��?G� @��W�d_@>HNG� @q��d_@fة�5� @�fg^b_@���5� @O�3`b_@f�\\G� @�%`_@�h�jG� @�n��]_@p}EyG� @����]_@ ��@Y� @j��]_@�@�k� @��_�[_@��k� @�w��[_@��7OY� @�CǮ[_@R,��G� @���[_@���5� @0�]_@���5� @F�R�]_@ݱ�#� @}���]_@�Hj"� @��b�[_@�Ƚ0� @��.�[_@{A\\�#� @��\npY_@Wk�$� @*��4W_@r/$� @v���T_@̍T#$� @����T_@e�[� @�*�T_@�<�\0� @8�N1W_@��ą\0� @���/W_@�a&�� @W�^�T_@b�x�� @�:�R_@\Z[��� @\0�n�R_@�+݂ @����T_@���݂ @Fr�-W_@�Ç�܂ @�T�hY_@h>5�܂ @�;gY_@\0�� ˂ @�2�[_@L�C˂ @��e�[_@vO�J�� @s$BeY_@��X�� @8vcY_@\0�Y��� @�ə�[_@����� @��͜[_@�Ch��� @���aY_@f�ɕ� @���_Y_@�W�� @���[_@���� @[*%�]_@��v僂 @�Y�]_@/<�r� @�ڌ�]_@��9V`� @^�\r`_@Pu�G`� @�,�`_@]H�N� @\Z���]_@?��N� @�=��[_@!�N� @�Ui�[_@Y��d`� @�o5�[_@w/+,r� @��^Y_@�}:r� @S�E\\Y_@D �r`� @E"!W_@q81�`� @�FVW_@����N� @�2�T_@�,��N� @i�f�T_@�lE\0=� @\'J�W_@i���<� @�FVW_@����N� @�yZY_@i�@�N� @乭XY_@~��<� @���VY_@�=+� @��[_@}�\r+� @�r(�]_@�9^�*� @�S\\�]_@���7� @�`_@�l)� @�z�`_@�0�a� @S�`_@��/��� @f��]_@3����� @"7��]_@,!p� @��l�[_@��s~� @C�ISY_@Z�Ō� @\r�}QY_@.H\'��� @�㠌[_@(ն�� @f��]_@3����� @���]_@:��� @��Ԋ[_@r�6�� @ة�OY_@��� @���MY_@���5ҁ @���W_@Ҋ;Dҁ @�y�W_@�G�� @Hk�T_@+\Z� @Xd��T_@>��Rҁ @0=|�R_@��`ҁ @YaP_@��-oҁ @��5&N_@)�}}ҁ @���K_@��͋ҁ @���I_@~��ҁ @j0��I_@ �a� @Dֆ�I_@�[)�� @��cxG_@\r��7�� @}�vG_@��\np� @��t;E_@�OY~� @=(�9E_@���ҁ @g[�tG_@��k�ҁ @O�\0sG_@8|���� @935qG_@�M-�� @�6E_@�{\'�� @D�F4E_@�[�_�� @e�#�B_@�4*n�� @����B_@V��5�� @S�˿@_@D�� @����>_@�#dR�� @� t�>_@ސ\Z�� @��?�>_@����ҁ @��\n�>_@bdB�� @۞�N<_@wJ��� @!��P<_@��.�� @�L֋>_@��p�� @ش��>_@�/�8� @M��@_@��3*� @����@_@�o�b�� @�,.�@_@���� @�pQ\0C_@g��� @2�C_@��FT�� @�q�C_@���� @6�?E_@m��\r� @�]�@E_@%�6�� @Q��C_@>7��� @�q�C_@���� @M��@_@��3*� @���@_@���� @�\\�@_@|hr�+� @�~\'�@_@M��=� @���>_@)Q_�=� @�8�>_@���+� @�m�>_@>� \0\Z� @ش��>_@�/�8� @eS~R<_@�4�F� @!��P<_@��.�� @q��:_@�P{��� @��Z:_@��\ZU� @q@&:_@TV�\Z� @��\Z:_@�Y�+� @r�:_@�S��=� @�[��7_@W�E�=� @o�d�7_@�G�O� @*�/�7_@�ЄIa� @�>��7_@�W$s� @��":_@0��s� @��B]<_@��r� @>\n_<_@�(*��� @�u�`<_@x�Ƀ�� @��b<_@ �hK�� @�ȝ>_@X\\=�� @&3��>_@S���� @,�_�>_@;�Y�˂ @K�;f<_@<���˂ @�6h<_@�G�݂ @�9�,:_@�a��݂ @i��.:_@��3x� @ҫ�i<_@`�i� @#�k<_@b��1� @�z0:_@v1�?� @eyE2:_@X�r� @��4:_@\'��$� @*���7_@�,_�$� @���7_@���6� @���7_@U�lH� @[2_�5_@T��zH� @N�*�5_@)t�BZ� @B���5_@��)\nl� @5I��5_@�e��}� @)���5_@8�h��� @}*�8_@ϯ��� @4�|8_@��R�� @N%�@:_@�rmD�� @ɣlB:_@K��� @�H8_@�uZ\Z�� @r#�5_@N��(�� @����5_@�/G�ă @�	8_@����ă @Y��\n8_@K3��փ @m�8_@�8q� @��u8_@���8�� @���I:_@���*�� @>+�G:_@̯�b� @i��<_@�j�T� @�z��<_@3�;�� @���<_@����� @���>_@���� @�A�>_@���\r�� @�	�@_@�ʝ��� @�Y=�@_@���7� @��q�@_@A�_pփ @�M�>_@,��~փ @�g��>_@8d�ă @��\\<_@��]�ă @�9�}<_@"����� @e��{<_@rl6�� @#%�y<_@�\'�n�� @�.x<_@���}� @qS�>_@Ǔ��}� @ly��>_@�Z��k� @�cv<_@�A�k� @_��t<_@M�Z� @�r<_@\0PH� @ڔ\0q<_@��c�6� @�5o<_@�_��$� @V�im<_@�%�� @I���>_@8��� @=ܱ�@_@Ȉ�� @pI��@_@���� @��\Z�@_@�YJM� @�)O�@_@���݂ @~ sC_@��\\w݂ @�>C_@"��>� @�Y\nC_@��� @�g.XE_@��K�\0� @#�YE_@a��� @0��C_@\r:�� @=ܱ�@_@Ȉ�� @q}�@_@\0�\'�$� @��� C_@q1ٕ$� @v��[E_@!��$� @�r�]E_@�)O6� @H���G_@#n�@6� @/��G_@k:y$� @��I_@<o�j$� @����I_@�b�26� @����I_@T(�G� @�oq�I_@jC��Y� @���L_@��v�Y� @)�aL_@��{k� @�r-L_@)l�B}� @pS�L_@�ES\n�� @6�L_@!�Ѡ� @�\Z�L_@�򐙲� @���VN_@6�?��� @��XN_@�q�Ră @l�MZN_@�3}\Zփ @ـ\\N_@��� @+>�P_@,\Z��� @�&r�P_@9j+փ @<�R_@";��Ճ @G���R_@��:6ă @R���R_@L��n�� @0&#U_@�~I`�� @vWU_@�窘�� @���U_@�Nю� @�U_@ҳm	}� @�<�=W_@T�|� @<W_@�y|3k� @�K:W_@e��kY� @�=ouY_@f��]Y� @�f;wY_@Iw)%k� @�yY_@���|� @a��zY_@�pf��� @��|Y_@��|�� @�[ķ[_@@S�m�� @��[_@?�O5�� @�l~Y_@)b�C�� @,S8�Y_@��Aă @p��Y_@;K��Ճ @��ЃY_@��~�� @��HW_@�,Ҩ� @	JxJW_@��pp�� @����Y_@�+b�� @���[_@�F�S�� @�_��[_@��*�� @��]_@G��}� @�P��]_@W�tE�� @���[_@�F�S�� @���[_@<�g� @8Z�[_@���� @z�~�]_@\\���� @�:`_@�\\�� @][�8`_@��\n� @�sb_@\\bi�\n� @l�ub_@��� @��wb_@���.� @���d_@?Pq.� @B���f_@��b.� @Y��f_@��[�� @�=�d_@?�� @�� �d_@.��\n� @�ET�d_@�u\Z�� @��x�f_@���� @spE�f_@9��\n� @"j%i_@�g�\n� @w��#i_@������ @���!i_@Ŋ+6� @��\\k_@���\'� @`(�^k_@��r��� @I��m_@#���� @\Z�m_@��}� @�nM�m_@��QՃ @>�q�o_@���CՃ @E;��o_@���{Ã @ۭ�\nr_@d"�mÃ @q�Et_@a;_Ã @��Gt_@1��&Ճ @Nh߂v_@�8�Ճ @\0\0\0{ ��m_@J4�±� @J|�m_@gI��� @Y��o_@:�쟃 @e00r_@H�Wޟ� @��r_@�X���� @O���o_@w�L��� @{ ��m_@J4�±� @\0\0\0���R_@���Y� @��6�R_@D���G� @�Z�T_@j֑�G� @��&�T_@�w0zY� @���R_@���Y� @\0\0\0 �~8W_@�X?�G� @�β6W_@)Š�5� @��qY_@m�M�5� @]�sY_@qu�G� @ �~8W_@�X?�G� @3\0\0\01�~zP_@Z#�Y˂ @��xP_@`R?��� @��vP_@U�ʧ� @5�\n�R_@�YO��� @H�>�R_@`����� @�1uP_@8��� @�SOsP_@\r�b;�� @��+8N_@�s�I�� @X�_6N_@���r� @M9<�K_@˵d�r� @C��I_@-{��r� @M��I_@F�Sf�� @O���G_@��t�� @8��G_@���r� @+M�IE_@��R�r� @��KE_@�񂄂 @ӇhME_@T!�J�� @?�DC_@���X�� @�4yC_@ן@��� @��C_@�h��r� @��C_@�/a� @\0�C_@��b:O� @�\Z:FE_@�,O� @1�nDE_@cRud=� @��G_@T�&V=� @�]�G_@=��O� @�1��I_@�dvO� @���K_@��&O� @�xp�K_@K���`� @��4N_@˟u�`� @X�_6N_@���r� @cw�qP_@���sr� @<��oP_@�%�`� @�,۪R_@�7ԝ`� @o��R_@8ser� @[�r�R_@��-�� @H�>�R_@`����� @ښb�T_@�_敂 @)���T_@�`��� @�G�$W_@,�n�� @mL�&W_@w7\rؕ� @ښb�T_@�_敂 @��.�T_@������ @5�\n�R_@�YO��� @#�ֳR_@H� @���R_@�ތK˂ @1�~zP_@Z#�Y˂ @]�J|P_@D�|!݂ @��&AN_@���/݂ @Q�Z?N_@R/h˂ @1�~zP_@Z#�Y˂ @\0\0\0����I_@�V�G=� @���I_@/F8�+� @�B\r�K_@G��q+� @o���K_@��9=� @����I_@�V�G=� @\0\0\0���T_@[��8+� @���T_@�q� @BW�W_@r�b� @�O�W_@�&U*+� @���T_@[��8+� @\0\0\0\0\0\0\0\0\02`e�_@�D��-� @�8c�_@^$"�� @Vv(�_@�~�� @��)�_@�L�-� @2`e�_@�D��-� @\0\0\0\0\0\0	\0\0\0�ƕ_@s��m� @�\nFĕ_@�4U�	� @6�!��_@���	� @�_@aTP|� @/z�O�_@�I��� @���Q�_@h+KR-� @ܙ���_@�&�C-� @�8�Ǖ_@���5-� @�ƕ_@s��m� @\0\0\0\0\0\0\0\0\0����_@��x�*� @�����_@\Z���� @l���_@0�D� @z��d�_@��� @n�f�_@��O�� @�Qmh�_@)��*� @����_@��x�*� @\0\0\0\0\0\0\0\0\0DQ��_@:b��%� @�I?��_@�`#� @:�X�_@\Z8�1� @��Y�_@$��%� @DQ��_@:b��%� @\0\0\0\0\0\0\0\0\0	jة�_@.���� @M���_@D#e�\r� @�3}p�_@	��\r� @�Gr�_@�ZG�� @2l��_@Kk�� @$6��_@@��X1� @DJ[��_@�LfJ1� @fy�%�_@+�$<1� @�{J\'�_@���C� @�ob�_@1g��B� @�픝�_@��@�B� @�#���_@O���B� @�����_@1�\\1� @��ʛ�_@���1� @��\0��_@:��W� @5��^�_@�:Af� @�x�#�_@Q[�t� @Bz�!�_@f2�\r� @�d���_@��#�\r� @�t���_@/����� @	jة�_@.���� @\0\0\0\0\0\0\0\0\0[j_�_@/j��0� @/G:M\0_@M���0� @��O\0_@Lnv�B� @��)�_@�12�B� @[j_�_@/j��0� @\0\0\0\0\0\0\0\0\0d�{<&_@MT��A� @h��w(_@QUm�A� @\Z��u(_@����/� @�h\nt(_@�-,� @Qt�8&_@�x:� @ڍ�:&_@�0� @d�{<&_@MT��A� @\0\0\0\0\0\0\0\0\02`e�_@�D��-� @���f�_@jc\\S?� @�c���_@	��D?� @Y	*��_@6�b}-� @2`e�_@�D��-� @\0\0\0\0\0\0\0\0\0�q�k�_@m�4l� @J�i0�_@�u�z� @7�=2�_@�YB&� @/R4�_@z��	8� @b5o�_@�_�7� @�9am�_@��3&� @�q�k�_@m�4l� @\0\0\0\0\0\0\0\0\0�#���_@O���B� @�N���_@\\���T� @M���_@�)[�T� @�W��_@2E��B� @�#���_@O���B� @\0\0\0\0\0\0\0\0\0fe�v_@EuB� @l=�;	_@�c�B� @�c=	_@��KT� @��x_@(̽<T� @fe�v_@EuB� @\0\0\0\0\0\0\0\0\0f-�_@����=� @U�A�_@��B�=� @W��_@ʊ��O� @̥4/�_@�rx�O� @f-�_@����=� @\0\0\0\0\0\0	\0\0\0+���`_@3�~(� @�^_@�2"(� @8s�^_@Oi��9� @v���`_@��9� @� i�`_@�嬢K� @��c_@�)�K� @��\nc_@\r���9� @���c_@��(� @+���`_@3�~(� @\0\0\0\0\0\0	\0\0\0DQ��_@:b��%� @�Z疵_@O.��7� @}f���_@P�zI� @>�ӷ_@վ�kI� @���_@��\\I� @ˢ.\r�_@]ue�7� @��\nҷ_@���7� @{�6з_@�Hc�%� @DQ��_@:b��%� @\0\0\0\0\0\0	\0\0\0�N���_@\\���T� @�_��_@?��T� @4�9d�_@[z$�T� @��)�_@��f�T� @��*�_@X��f� @��f�_@x�ńf� @�+)��_@�Ƃvf� @t{N��_@[�?hf� @�N���_@\\���T� @\0\0\0\0\0\0	\0\0\0d�{<&_@MT��A� @_�V$_@���A� @"�!$_@3ɢ�S� @Y���!_@4�S� @U���!_@q��ue� @��$_@آBge� @u�@&_@v��Xe� @��F>&_@h X�S� @d�{<&_@MT��A� @\0\0\0\0\0\0\0\0\0�s��&_@	arM� @T>��$_@���)M� @�\rk�$_@_���^� @JP��&_@��^� @�s��&_@	arM� @\0\0\0\0\0\0\0\0\0�u��C_@�;1_L� @*Zp�A_@�ȮmL� @��A�A_@\r�F5^� @��e�C_@Q,�&^� @�u��C_@�;1_L� @\0\0\0\0\0\0\0\0\0��y��_@p�%hU� @�Tc�_@W~cvU� @4e�_@�Y>g� @yq�f�_@�2�y� @����_@��i�x� @�mC��_@\Z��/g� @��y��_@p�%hU� @\0\0\0\0\0\0\r\0\0\0!�2�_@�E��e� @;�g�_@e�S� @�"�_@�r��S� @SE�_@zX)B� @�i�_@]<�I0� @l\\��_@��W0� @T+��_@��qB� @Sx�_@F+�-B� @v�B�_@|dZ�S� @��\r�_@����e� @�aأ_@�К�w� @���_@nkRvw� @!�2�_@�E��e� @\0\0\0\0\0\0\0\0\0�"HU_@�o�Yw� @�^m�_@��vKw� @�c��_@@�փe� @94}S_@Gi �e� @�"HU_@�o�Yw� @\0\0\0\0\0\0)\0\0\0��1M:_@��ȹ� @2�8_@���� @�_�8_@\'鵏/� @�l��5_@��/� @��~�5_@��eA� @�XJ�5_@�`B-S� @�I%�3_@2ҏ;S� @�8\0f1_@���IS� @��4d1_@�_=�A� @}�)/_@����A� @܆D\'/_@�e��/� @<:y%/_@�J� @�KT�,_@(�� @�\r��,_@�A�G� @/*d�*_@e�BV� @E[/�*_@���� @Z���*_@�A��/� @n�Ų*_@��!�A� @h��w(_@QUm�A� @��ky(_@�\r�S� @7{(_@K̬Je� @�3\\�*_@XHa<e� @����*_@y��tS� @O��,_@T�ufS� @&�*/_@g�)XS� @�x�,/_@�e� @L��g1_@�Y|e� @��3_@�>/e� @t��5_@ʽ��d� @cL��5_@���v� @�r8_@E"3�v� @�+V:_@6��v� @�`T:_@��E�d� @!p�R:_@M�S� @Qeo8_@ۉ�S� @��8_@�:UWA� @���P:_@M\rIA� @���<_@Gz�:A� @m@"�<_@\ZHs/� @+Q�N:_@��g�/� @��1M:_@��ȹ� @\0\0\0\0\0\0\0\0\0o���:_@jU(p� @i��"=_@���p� @by� =_@+�@R^� @.K��:_@�<�`^� @o���:_@jU(p� @\0\0\0\0\0\0\0\0\0�"HU_@�o�Yw� @V�"\Z_@e�	hw� @\0��_@?��/�� @W_@�s`!�� @�"HU_@�o�Yw� @\0\0\0\0\0\0\0\0\0�+V:_@6��v� @�-�W:_@���g�� @�\\�<_@F.5Y�� @n�P�<_@]��v� @�+V:_@6��v� @\0\0\0\0\0\0\0\0\0 ��XW_@NYd��� @��\rWW_@����u� @��2�Y_@��q�u� @�zf�Y_@���d� @`5��Y_@�95HR� @�FuSW_@��VR� @�QW_@��@� @���OW_@HL�.� @�NW_@y���� @�xDLW_@�(8� @ԺU_@RbF� @���U_@��\0� @N�U_@e��.� @+��R_@\rH��.� @F_�R_@\rސ�@� @�b+�R_@�q/sR� @�UPU_@�o�dR� @��\ZU_@��z,d� @���R_@��:d� @���R_@��lv� @D��U_@r�u� @ߴU_@9𷻇� @ ��XW_@NYd��� @\0\0\0\0\0\0�\0\0\0׶b�_@>ٛ�s� @£��_@-��\nb� @���ߩ_@�|cCP� @@7�\Z�_@7�\05P� @j�_@��dm>� @�O�_@�ȥ,� @�v*ܩ_@u+�,� @����_@��,� @E�7��_@���\Z� @�i��_@�T3	� @b�ة_@���$	� @y[�֩_@)rV]�� @wV�ԩ_@�6��� @vS$ө_@��Ӄ @J\0��_@,��Ӄ @2��_@�Y� @xRVѩ_@P�� @vS$ө_@��Ӄ @��H�_@㻿Ӄ @g��_@X�� @S;K�_@���x� @��lI�_@_gY�Ӄ @�.���_@���Ӄ @<X_��_@q��j� @S;K�_@���x� @�"	M�_@���@�� @/���_@�<�N�� @�Ӳ�_@�f�	� @qC�N�_@ܻ-	� @f�P�_@����\Z� @;�ɋ�_@��f�\Z� @����_@��,� @���Ȳ_@2$�z,� @sX�Ʋ_@�-�\Z� @U Ų_@�4g�� @����_@M���� @��-��_@�.2�� @;�Qò_@>:�#�� @#����_@�=/\\� @t���_@�>��Ӄ @.����_@��/�Ӄ @J��5�_@�~�wӃ @�G�7�_@L^g?� @Ǔ�r�_@\n�1� @/�t�_@������ @�H㯻_@�9��� @n��_@nB���� @�+&�_@%yn��� @Ok]$�_@���� @"��_�_@H�l�� @���_@*6�� @�Tט�_@��j!Ӄ @x���_@�1�Y�� @��,��_@8fhK�� @�;^��_@��̃�� @5S��_@�eu�� @�Q\r�_@�4=�� @1\'uH�_@���.�� @�h�F�_@�G�f�� @\'��D�_@��b��� @Ӳ��_@5���� @��,~�_@��_ɋ� @L&^|�_@�z�z� @)9:A�_@�8,z� @��C�_@7��׋� @����_@�.拃 @J�_@���z� @)9:A�_@�8,z� @��k?�_@kڐHh� @c�z�_@<,):h� @L&^|�_@�z�z� @m���_@EW\\�y� @�����_@����y� @����_@��Xh� @��+�_@"��h� @d�g�_@�y�\0h� @��B��_@���g� @��s��_@�́*V� @�Oe�_@h�8V� @�,*�_@��TGV� @�B��_@>m�UV� @9j9��_@�9"�D� @n���_@���D� @u�F��_@�N��2� @h%#u�_@�3W�2� @Wk�9�_@����2� @D����_@��%\03� @�\r\r��_@�U�8!� @K\\���_@Q��F!� @��ņ�_@]7WU!� @1���_@9��3� @�npM�_@:�X+3� @ԪL�_@{7�93� @l�_@��YE� @Q�>O�_@�X��D� @4�b��_@a��D� @����_@�(�D� @�R�\0�_@O@��D� @��;�_@QZ�D� @9Μ=�_@�y��V� @��x�_@��\\�V� @M�G�_@�"�Vh� @�#��_@_eh� @�X���_@X��,z� @�eΏ�_@�a;z� @yp�T�_@�6�Iz� @Ey��_@��,Xz� @�b޽_@:S�fz� @��0�_@�\r..�� @����_@(�<�� @ք>��_@�H�tz� @��\Zh�_@��[�z� @W��,�_@���z� @�D(+�_@�$�h� @E7Lf�_@���h� @��}d�_@M$�V� @?Z)�_@�(�W� @�6�_@���W� @�1��_@�OW� @�D��_@���WE� @�, v�_@:�fE� @\nF�w�_@K�-W� @IX�<�_@�Y<W� @�f�>�_@���i� @6jt�_@!�i� @�h��_@�gvJW� @�v�Ʃ_@��XW� @�^��_@\'R9gW� @̜���_@P���E� @���_@i�\0�3� @dܞL�_@�Qa�3� @ĳlN�_@1���E� @��H�_@P(^�E� @W��_@����W� @���٠_@��Z�W� @��Ξ�_@�a��W� @�T���_@d�Vhi� @-Jxe�_@�Q�vi� @��Eg�_@��R>{� @֠i�_@ǟ��� @��7��_@2+���� @�[ߠ_@�P0錃 @��)�_@��̰�� @�x��_@Xix�� @7=ӧ�_@�QɆ�� @Y����_@��eN @�D��_@��@ @9���_@li�1 @��\r[�_@}�D# @\Z��\\�_@����Ӄ @���^�_@�P}�� @�B�#�_@�D��� @L!S%�_@y�z��� @!\'�_@\nP	� @���(�_@�~�� @q^��_@#<&� @e6��_@B���,� @]f�_@Q"M�>� @�nA��_@����>� @��{�_@�\r�>� @�$�?�_@�Vm�>� @}��A�_@��	�P� @�%��_@Ki�P� @��n�_@��~b� @U\rJ͕_@+�d�b� @3o|˕_@�:��P� @��W��_@��&�P� @��2U�_@���P� @PyeS�_@9�?� @k�@�_@�E(?� @�݌_@��6?� @���ތ_@��?�P� @7?\Z�_@[���P� @���_@���b� @y�\0W�_@��!�b� @�G%��_@͐Úb� @D��_@�Z`bt� @w�ϕ_@e�Tt� @�}<\n�_@L��Et� @�,\n�_@�J?\r�� @�/G�_@A����� @x�S��_@����� @���_@�R�(t� @*⪻�_@L�\Zt� @�ݹ�_@˖�Rb� @T���_@=\0�Db� @S����_@l"t� @xp�1�_@`��s� @��&0�_@�%6b� @;Kk�_@ǡ�\'b� @k�o��_@��ab� @��=��_@���s� @׶b�_@>ٛ�s� @	\0\0\0���E�_@�$!"�� @8�D�_@B\0�Z�� @\r�&�_@�M"L�� @T��_@�b��� @���E�_@�$!"�� @@͞G�_@G���� @ݐz�_@���� @��\n�_@��0�� @���E�_@�$!"�� @\0\0\0\0\0\0\0\0\0׶b�_@>ٛ�s� @��0�_@H8��� @іU �_@kQՋ�� @�t��_@69�s� @׶b�_@>ٛ�s� @\0\0\0\0\0\0\0\0\0�{�)_@W�*�p� @�.`�&_@xڣ�p� @�1�&_@\Z�<r�� @�hU)_@/��c�� @�{�)_@W�*�p� @\0\0\0\0\0\0\0\0\0o���:_@jU(p� @p_��8_@w�6p� @�S�8_@��i��� @��w�:_@��� @o���:_@jU(p� @\0\0\0\0\0\0	\0\0\0d҃J_@n�M�]� @B�HH_@���	^� @��JH_@,�d�o� @���J_@G���o� @j�u�J_@o}��� @����L_@��{�� @�;��L_@�nf�o� @���L_@����]� @d҃J_@n�M�]� @\0\0\0\0\0\0	\0\0\0�հ�_@�pY�� @[���_@��\0n� @o��s�_@!�Nn� @z�8�_@���n� @~����_@$d,n� @�i��_@���� @�	�:�_@	�o�� @F�u�_@Ʊ��� @�հ�_@�pY�� @\0\0\0\0\0\0\0\0\0:`���_@}�l� @9��u�_@���l� @#Vw�_@��>\\~� @��y��_@+G�M~� @:`���_@}�l� @\0\0\0\0\0\0\0\0\0��o�_@�v���� @5^�4�_@<#K\n�� @�n6�_@5��і� @���q�_@��Ö� @z���_@����� @����_@�c}턄 @��o�_@�v���� @\0\0\0\0\0\0\0\0\0�հ�_@�pY�� @�?���_@s@� @\rG��_@��c��� @sL�(�_@Em�r�� @C�\'�_@I�A�� @����_@��͹� @�հ�_@�pY�� @\0\0\0\0\0\0\0\0\0���_@	�I��� @Q��_@��龬� @���Z_@0v���� @�\\Ε_@ѰV��� @f[�_@C��ښ� @��X_@v\0隄 @���_@	�I��� @\0\0\0\0\0\0\0\0\0P�5�_@.���� @Wpk��_@�=[��� @]V9��_@?��b�� @�B^7�_@)h�T�� @P�5�_@.���� @\0\0\0\0\0\0\0\0\0іU �_@kQՋ�� @��#"�_@�jqS�� @���#�_@�\r�� @��_�_@�I��� @U�H]�_@\\BE�� @�_z[�_@�8r}�� @іU �_@kQՋ�� @\0\0\0\0\0\0\0\0\0��JM+_@y���� @X&)_@�D\\+�� @*I�)_@���� @��O+_@gn{䥄 @��JM+_@y���� @\0\0\0\0\0\0\0\0\0�!#NH_@d\'�`�� @\\��F_@�o�� @�n�F_@r��6�� @���OH_@��+(�� @�!#NH_@d\'�`�� @\0\0\0\0\0\0\0\0\0�+E\'Z_@3�쒄 @�� �W_@:���� @\'���W_@9�¤� @6)Z_@*c(��� @	{;d\\_@�\'���� @dib\\_@b�ޒ� @�+E\'Z_@3�쒄 @\0\0\0\0\0\0\0\0\0sL�(�_@Em�r�� @���*�_@/m:�� @Ѳ�e�_@��+�� @����_@�S�� @%Q8��_@��U�� @�Od�_@��Jd�� @sL�(�_@Em�r�� @\0\0\0\0\0\0\0\0\0t\Z6��_@���M�� @��W�_@�[�[�� @9�X�_@��#�� @f�Z�_@A�4뿄 @��ɕ�_@��ܿ� @�����_@ȁS�� @t\Z6��_@���M�� @\0\0\0\0\0\0	\0\0\0�Bw��_@�OÆ�� @G�Q��_@L���� @U���_@���\\�� @�yA��_@F7dN�� @g �_@<Y @�� @]��[\0_@f�1�� @�A�Y\0_@�L;j�� @jÜ�_@"�x�� @�Bw��_@�OÆ�� @\0\0\0\0\0\0\0\0\0���_@	�I��� @\0��_@?��/�� @�z��_@ݎ�=�� @�+��_@�;L�� @��m�_@�4��� @�Hl_@ES#"�� @<:#1_@k0�� @c���_@"_�>�� @�tغ\r_@aL�L�� @���\r_@����� @/���_@üR�� @�)��_@Q�;� @\\��4_@ ����� @���2_@%Z��� @m[n_@���鬄 @��o_@$�c��� @)��_@]���� @�8�_@�c{۬� @�.^�_@��2ͬ� @�S��_@<���� @���_@	�I��� @\0\0\0\0\0\0\0\0\0���#�_@�\r�� @(���_@+Tp)�� @F��_@y� @z�%�_@��⺄ @���#�_@�\r�� @\0\0\0\0\0\0\0\0\0����`_@�~���� @�_�^_@�#��� @��1�^_@T��^�� @K1V�`_@F�7P�� @����`_@�~���� @\0\0\0\0\0\0\0\0\0��Z�}_@@��ˣ� @k6�{_@�$]ڣ� @�6	�{_@	󡵄 @\nj-�}_@�<k��� @��Z�}_@@��ˣ� @\0\0\0\0\0\0\0\0\0���*�_@/m:�� @����_@�G�H�� @��r�_@A��� @���,�_@��� @���*�_@/m:�� @\0\0\0\0\0\0\r\0\0\01-H�_@Pˀ꾄 @��}�_@�P�"�� @Y(XF	_@؁&1�� @��2_@JMl?�� @(9\r�_@�M�� @���_@̲�[�� @���_@�k�#�� @���_@Y\\R�� @���_@���Є @#��_@�~��Є @r(�_@!��� @ѫ"H	_@���� @1-H�_@Pˀ꾄 @\0\0\0\0\0\0\0\0\0F��_@y� @$v��_@(�n��� @�.Qt�_@��\r�� @r2v�_@�Mm�̄ @p4D��_@�\'�̄ @j4i�_@˛��̄ @F��_@y� @\0\0\0\0\0\0\0\0\0�Ľ�_@q}��Ʉ @\\��_@VD��Ʉ @���_@�S��� @\\�_@(}^�� @�Ľ�_@q}��Ʉ @\0\0\0\0\0\0\0\0\0`�3O_@�-EĶ� @�-�L_@E�Ҷ� @���L_@�\\�Ȅ @�YO_@y�܋Ȅ @Q�)@Q_@$d\\}Ȅ @6�W>Q_@�ĵ�� @`�3O_@�-EĶ� @\0\0\0\0\0\0\0\0\0ONg̣_@:�cƄ @���ʣ_@^�!��� @�o��_@���� @�0C��_@�NFrƄ @ONg̣_@:�cƄ @\0\0\0\0\0\0\0\0\09#�_@ڶ�� @>7^�_@��wz� @��m\\�_@�ֲф @��G!�_@�;�ф @9#�_@ڶ�� @\0\0\0\0\0\0\0\0\09!_\0_@K��� @��F�_@��ز� @�z|�_@�"8�Є @��V]\0_@��|�Є @9!_\0_@K��� @\0\0\0\0\0\0	\0\0\0�)��_@Q�;� @��m�\r_@�$:ܾ� @1-H�_@Pˀ꾄 @o��_@�C!�Є @�S݆_@���y� @���\r_@��zk� @�K8�\r_@ǍڣЄ @��]�_@�q��Є @�)��_@Q�;� @\0\0\0\0\0\0\0\0\0&N\n$_@R#"��� @G�(�!_@��l̚� @@���!_@����� @�\\Ε_@ѰV��� @�_��_@O��i�� @�dd�_@���1Є @1߉�!_@eAL#Є @(�T�!_@,��� @!xz$_@r\\��� @\Z��L&_@�6V�� @���J&_@T{�Є @dW�$_@B�Є @�8�\r$_@�aM�� @�$_@������ @&N\n$_@R#"��� @\0\0\0\0\0\0\0\0\0&"�_@��p̄ @8 �ز_@r\Z̄ @ur�ڲ_@oT�Fބ @(u��_@�Q8ބ @&"�_@��p̄ @\0\0\0\0\0\0\0\0\0��t>_@F���Ʉ @Q�O_@��Zʄ @�w _@����ۄ @�!E@_@�}�ۄ @��t>_@F���Ʉ @\0\0\0\0\0\0\0\0\0�Ľ�_@q}��Ʉ @�+�y_@�Pn�Ʉ @��i{_@�^�ۄ @~o��_@�{��ۄ @�Ľ�_@q}��Ʉ @\0\0\0\0\0\0\0\0\0�qTe_@{.��Ǆ @3�Lc_@� K	Ȅ @�c_@e%��ل @�dCVe_@#^�ل @�qTe_@{.��Ǆ @\0\0\0\0\0\0\0\0\0y�l_@V�8�Ǆ @1���i_@-��Ǆ @�$��i_@�T�ل @ၰl_@p�ϖل @y�l_@V�8�Ǆ @\0\0\0\0\0\0\0\0\0���jy_@�)�?ل @cԮ�{_@x- 1ل @�ܣ{_@I׉iǄ @·hy_@��xǄ @���jy_@�)�?ل @\0\0\0\0\0\0\0\0\0����_@��v)Ƅ @���}�_@`�8Ƅ @�v��_@P���ׄ @��˺�_@���ׄ @����_@��v)Ƅ @\0\0\0\0\0\0\0\0\0�6�q�_@r�� @$pz6�_@p���� @��C8�_@��Q��� @\Z�is�_@��{�� @�����_@\0��l�� @��Ŭ�_@�4�� @�6�q�_@r�� @\0\0\0\0\0\0+\0\0\0����_@��x�*� @s�a��_@��X<� @�x1��_@vl�N� @:o��_@!FF�_� @�gѪ�_@��q� @��o�_@�vQ�q� @��|q�_@-\\넃� @j�Ls�_@d?�L�� @�^q��_@��>�� @]A��_@\r���� @��e�\0_@ũ;��� @&6�\0_@Wiվ�� @ŤZ(_@�c��� @`Ec_@�;𡸄 @4nOe_@�ىiʄ @�t�_@��[ʄ @/QD�_@�&�"܄ @Ni�	_@!r<܄ @e��_@�W�܄ @�^\Z_@)�a�� @o͂U_@2�� @ym�S_@G�S�ۄ @��Q_@kz�/ʄ @Ѳ�_@�E!ʄ @J6�_@�T�Y�� @��P_@~!h�� @�YAN_@������ @��_@����� @.@��	_@��o��� @a�Ӝ_@0|�˦� @�~�_@��I�� @���__@����� @�^_@�U#K�� @�\\�"_@��Y�� @i���\0_@n$h�� @4���\0_@�^n�q� @�%�\0_@���_� @��U�\0_@��:N� @�&z_@���N� @��_@~/;<� @�υ�\0_@�I<� @�е�\0_@�2�*� @����_@��x�*� @\0\0\0\0\0\0\0\0\0���jy_@�)�?ل @�4f/w_@$�/Nل @��81w_@�3�� @�J]ly_@��>� @���jy_@�)�?ل @\0\0\0\0\0\0\0\0\0_W��_@8��� @�k��_@�ل @1!��}_@q˗"ل @����}_@�.�� @_W��_@8��� @\0\0\0\0\0\0\0\0\0�N��_@塆e؄ @m���_@=/t؄ @S�Y��_@$��;� @~�}�_@�-� @�N��_@塆e؄ @\0\0\0\0\0\0\0\0\0=��2�_@~�� @��1�_@�=��ׄ @ʸ���_@\'�z�ׄ @m����_@>��� @=��2�_@~�� @\0\0\0\0\0\0\0\0\0�G�&_@\0j�� @�9z(_@`\n�� @ޟc_@�W��� @���a_@b �� @�G�&_@\0j�� @\0\0\0\0\0\0\0\0\0 	 �!_@��� @bu��_@d^��� @��Ş_@�Dv�� @!��!_@z�+z� @��$_@���k� @ޚE$_@�%A�� @ 	 �!_@��� @\0\0\0\0\0\0\0\0\0j��G_@��Cٙ� @O?��I_@%��ʙ� @13��I_@?~���� @��m�G_@��⠫� @j��G_@��Cٙ� @��|�E_@�ה癄 @ܷH�E_@M�3��� @3��E_@���v�� @��9�G_@R��h�� @���G_@�z 0τ @� +�I_@?�!τ @�\Z��I_@\'�m��� @��\0J_@���� @��J_@�G�x� @,��=L_@g@Yj� @���;L_@L���� @�{:L_@���� @-uP8L_@�/}τ @�p�6L_@q{�K�� @���qN_@�L�=�� @e�άP_@e�9/�� @0��P_@:!�g�� @��6�P_@������ @�nN_@+�N��� @��ElN_@?R�懄 @�n 1L_@R��� @mM��I_@��S�� @�]/�I_@��;v� @0G\n�G_@TDJv� @M*ֺG_@+ ��� @j��G_@��Cٙ� @\0\0\0\0\0\0\0\0\0o͂U_@2�� @i/SW_@������ @�w�_@\Z�x�� @B���_@0<x�� @o͂U_@2�� @\0\0\0\0\0\0	\0\0\0ڌ�r_@��=kل @�5�}p_@� �yل @���p_@\r�ZA� @�[��p_@Je��� @f�¼r_@��j��� @�:��t_@����� @Q��t_@stM$� @��A�t_@��\\ل @ڌ�r_@��=kل @\0\0\0\0\0\0\0\0\0:���_@J�g�� @��E�_@�\n�� @�SG�_@��Z�� @tw��_@n��K�� @0ʛ��_@R�q=�� @X�Ȼ�_@0�u� @:���_@J�g�� @\0\0\0\0\0\0\0\0\0=��2�_@~�� @��4�_@+�c�� @=�o�_@Q݀T�� @n�_@ �� @=��2�_@~�� @\0\0\0\0\0\0\0\0\09!_\0_@K��� @2��#�_@@b�� @P����_@i\0��� @~���_@�ф @b��_@��H$ф @mD���_@Ɨ��� @���r�_@W�,�� @ѼTt�_@����� @�v�_@g�n�� @R	�w�_@��Q� @����_@�d�B� @��4��_@���4� @�vZ)�_@�rD&� @&B�d\0_@��� @��b\0_@�"_P� @])�\'�_@���^� @�hj��_@=��l� @~�D��_@�w+{� @vtz��_@Έ��� @*���_@��F�� @���%�_@)��� @t��`\0_@�b��� @9!_\0_@K��� @\0\0\0\0\0\0\r\0\0\0��4Z_@}�a� @<�12Z_@���� @Vm\\_@%+���� @��k\\_@d��� @�˱i\\_@��k�ل @�`�.Z_@�4�\nڄ @m�h�W_@�9pڄ @!�D�U_@���\'ڄ @�|�U_@�:��� @��:�W_@~��� @j\0\r�W_@�ڞ��� @�	��W_@J(6p� @��4Z_@}�a� @\0\0\0\0\0\0\0\0\0_W��_@8��� @�D��_@Tj;��� @C4p!�_@���j� @T��\\�_@n=H\\� @��Z�_@���� @\\敄_@�i(��� @�e\nц_@�P�w�� @�Q7φ_@<N�� @B�[\n�_@b�}�� @ł��_@h���؄ @@d͆_@fIr�؄ @n0�ˆ_@~B� Ǆ @�"�Ɇ_@�9FY�� @)�ǆ_@{.���� @��ƌ�_@�9��� @�����_@�g�� @x�uS�_@��Yv�� @eآQ�_@�[î�� @��~�_@�YL��� @F�Q�_@��ℵ� @��$\Z�_@$�xLǄ @��HU�_@b��=Ǆ @��W�_@օل @��X�_@���� @_W��_@8��� @\0\0\0\0\0\0\0\0\0ONg̣_@:�cƄ @\n;Σ_@�rL+؄ @ϻУ_@���� @��2�_@�R�� @b�\r�_@v3��� @�u�ѣ_@��v��� @t1�ӣ_@��\r� @���_@�U|s\r� @���I�_@86�d\r� @�*H�_@�#W��� @�4O��_@�Ǝ�� @�T{��_@.�1�� @�#WF�_@���� @sR�D�_@4�,؄ @C,_	�_@M�؄ @�i��_@��\'UƄ @ONg̣_@:�cƄ @\0\0\0\0\0\0\0\0\0>|(�_@<�[7�� @�J��_@�j�E�� @�lج�_@��\r\r� @\n���_@�5��� @>|(�_@<�[7�� @\0\0\0\0\0\0\0\0\0���_@ޱ?�� @W��_@é0� @_{�҆_@�Q4?� @^���_@sz�M� @h���_@�T � @.��Ԇ_@NP� � @���_@ޱ?�� @\0\0\0\0\0\0\0\0\0J1���_@S��;� @\r�,�_@��;� @~�$+�_@s>��)� @�����_@�y)�)� @J1���_@S��;� @\0\0\0\0\0\0\0\0\0��ĵ_@�q�P)� @�~��_@G�|;� @�M��_@�3\n;� @r\Z�-_@1	��:� @�",_@�	J4)� @�b��_@�p�B)� @��ĵ_@�q�P)� @\0\0\0\0\0\0	\0\0\0�&�_@��U�:� @�tL�!_@C�:� @�9r\Z$_@Y5��:� @�$_@|t �(� @U��$_@���3� @\n;��!_@��A� @����_@�(P� @�[�_@�\n�)� @�&�_@��U�:� @\0\0\0\0\0\0\0\0\0.ѽ_@�_��"� @�T��_@�k�"� @��|�_@���4� @�⡿_@�S��4� @.ѽ_@�_��"� @\0\0\0\0\0\0	\0\0\0���_@ޱ?�� @�/��_@��տ1� @��L�_@|�J�1� @}.�_@���1� @R���_@�C)�� @/�J��_@�t�� @HK&I�_@��"� @�|�J�_@����� @���_@ޱ?�� @\0\0\0\0\0\0\0\0\0�M��_@Za_R<� @����_@�콊*� @(^e�_@,���*� @�T�c�_@�A\\�� @���a�_@s��	� @BȤ&�_@�� @�"�$�_@(vXP�� @9#�_@ڶ�� @q����_@߫��� @/U���_@zW�^�� @��~��_@�\09&� @�Y��_@�w4� @J33u�_@K��B� @y��v�_@�wW\n� @�7�x�_@R<��*� @�/��_@����*� @r����_@�\\�<� @����_@5�}<� @�d���_@}��DN� @:r�-�_@yc�6N� @�}�h�_@��@(N� @k�\'g�_@rL�`<� @�M��_@Za_R<� @\0\0\0\0\0\0\0\0\0J1���_@S��;� @�H���_@:8�;� @��m��_@���M� @x���_@7*k�M� @J1���_@S��;� @\0\0\0\0\0\0\0\0\0<�]ף_@~n61� @E9��_@h��1� @G���_@y[�B� @-q1٣_@����B� @<�]ף_@~n61� @\0\0\0\0\0\0\0\0\0��s?_@\n|fE� @�ݛ8=_@���tE� @Vm:=_@���<W� @5�u?_@.W� @��s?_@\n|fE� @\0\0\0\0\0\0\0\0\0t�N�_@De�xC� @2X{�_@;�k�C� @�N�_@�qOU� @�sP�_@�=v@U� @t�N�_@De�xC� @\0\0\0\0\0\0\0\0\0�!�/�_@%�!�_� @|o��_@�1a`� @,�8��_@���q� @\'�^1�_@��q� @�!�/�_@%�!�_� @\0\0\0\0\0\0\0\0\0�r��_@�tT� @d6NQ�_@l@�T� @�"S�_@Nt�Jf� @J�F��_@S�D<f� @�r��_@�tT� @\0\0\0\0\0\0\0\0\0��y�_@=��|S� @x�>�_@@m�S� @�0�@�_@\0:Se� @���{�_@P�iDe� @��y�_@=��|S� @\0\0\0\0\0\0\0\0\0�B���_@�	��v� @�a���_@�A9\'e� @1�ֶ�_@Ӥ�5e� @�ҫ��_@�|e�v� @�B���_@�	��v� @\0\0\0\0\0\0\0\0\0�����_@UeW��� @%	�_@py���� @u>�_@�s,)w� @~���_@�O�7w� @�����_@UeW��� @\0\0\0\0\0\0\0\0\0�B���_@�	��v� @&���_@��`��� @4��0�_@��ǧ�� @J��.�_@�04�v� @�B���_@�	��v� @\0\0\0\0\0\0\0\0\0^:�^_@y�8�y� @.,z\\_@�?�\0z� @u]�{\\_@_Sȋ� @Ð�}\\_@R|ꏝ� @��޸^_@J�f��� @jF�^_@��Ϲ�� @^:�^_@y�8�y� @\0\0\0\0\0\0\0\0\0�����_@UeW��� @^ʒ�_@l��\r�� @䰞��_@��՚� @\nE���_@�x�ƚ� @�����_@UeW��� @\0\0\0\0\0\0\0\0\0%	�_@py���� @%��\n�_@%}T��� @:gF�_@����� @b�7D�_@�\')∅ @%	�_@py���� @\0\0\0\0\0\0\0\0\04��0�_@��ǧ�� @&��2�_@�[o�� @9z��_@͓�}�� @o�N��_@�U�E�� @"�s4�_@�L�6�� @��o�_@d�U(�� @�m�_@D<�`�� @ݜ��_@�w(R�� @���_@|M�C�� @l�0�_@a��4�� @&UZ�_@v�X&�� @S�X�_@�b�^�� @`y[�_@�H`m�� @d7��_@"��{�� @^���_@�㔊�� @N\Z�k�_@�.��� @4��0�_@��ǧ�� @\0\0\0\0\0\0\0\0\0B���_@�~��� @_���_@~���� @��l��_@��V�� @hA��_@Y~|G�� @	�I�_@���8�� @(�G�_@=\rQq�� @B���_@�~��� @\0\0\0\0\0\0\0\0\0��o�_@d�U(�� @�mq�_@u~�ｅ @�����_@ �Oὅ @g����_@�	��� @��o�_@d�U(�� @\0\0\0\0\0\0\0\0\0w�N��_@9�P߫� @P*\\�_@�)�� @��]�_@?���� @%$��_@�䦽� @w�N��_@9�P߫� @\0\0\0\0\0\0\0\0\0Pqa�G_@�}0S�� @s;�E_@cU�a�� @`m�E_@�!)ȅ @�iӡE_@�߿�م @����G_@��m�م @px-�G_@/4�\Zȅ @Pqa�G_@�}0S�� @\0\0\0\0\0\0\0\0\0\r1"��_@��Qپ� @q���_@z��羅 @��х�_@�zy�Ѕ @{i���_@�I�Ѕ @\r1"��_@��Qپ� @\0\0\0\0\0\0\0\0\0�����_@ �Oὅ @��f��_@4(�υ @�s���_@"�H�υ @UU���_@�O�ҽ� @�����_@ �Oὅ @\0\0\0\0\0\0\0\0\0��3!l_@§\r�҅ @���i_@-���҅ @�H��i_@\Zo*W� @�e#l_@�M�H� @��3!l_@§\r�҅ @\0\0\0\0\0\0\0\0\0b�}�p_@wS\0d҅ @��X\\n_@�0�r҅ @,�+^n_@��:� @ȘP�p_@�ٖ+� @b�}�p_@wS\0d҅ @\0\0\0\0\0\0\0\0\05EjC_@�O��� @��/A_@_]���� @n��0A_@�:?d� @�*lC_@D��U� @5EjC_@�O��� @\0\0\0\0\0\0\0\0\0�e2��_@�=��� @R�\rv�_@�%S� @0��w�_@����� @/���_@;�R�� @�e2��_@�=��� @\0\0\0\0\0\0\0\0\0�� _@���E� @�#��\r_@OF� @���\r_@����W� @ȑ�"_@Y�W� @3�]_@�?�W� @�N&\\_@!#p�E� @�� _@���E� @\0\0\0\0\0\0+\0\0\0�2��_@���n� @�!\r_�_@>�$}� @�9]�_@�х @s�^��_@f��х @�2��_@���n� @WՏ_@W"`� @ں�ӏ_@�yv�х @�[�я_@c��п� @�x���_@.m߿� @�(���_@�q��� @,�䒍_@�AP�� @�W�_@!��^�� @|��U�_@��7��� @�\Z�_@å�� @�A��_@h�Xm�� @�rv�_@��{�� @֚I�_@��yC�� @���_@��� @-����_@_���� @��ʫ�_@4�0�х @�\Z���_@��ƨ� @V>q��_@��\\p�� @lO��_@���a�� @��i�_@o�g)� @�<�_@!d��� @��a)�_@��q�� @�!5+�_@k��*� @�TZf�_@?�{�*� @<���_@@m�*� @��R��_@;�T<� @� xޏ_@�M�E<� @�Z��_@\Zk7<� @8�p�_@3�\0�M� @��V�_@��r�M� @���T�_@���(<� @�\r�R�_@NHa*� @	�Q�_@܁��� @�l��_@v�?�� @t�"�_@i��� @���؏_@�l7�� @k*׏_@�ȡ\'�� @wv��_@�V.6�� @�2��_@���n� @\0\0\0\0\0\0\0\0\0x���_@��_�i� @@���_@_H\0�{� @H�9_@�M��{� @v��7_@���i� @x���_@��_�i� @\0\0\0\0\0\0\0\0\0�u��_@P��M� @=����_@B���;� @����_@ ,��;� @���_@�^�)� @��͵�_@!o�	*� @����_@�MYB� @��x�_@{*�P� @�Ǩz�_@�[~*� @���?�_@\'�\r\'*� @p�^�_@��5*� @&ڊ�_@�n� @��eǘ_@-]�|� @R^9ɘ_@�+D*� @-7��_@\0�R*� @��珖_@��O\Z<� @�\\���_@����M� @n��̘_@yV�M� @	@�Θ_@���_� @}��	�_@�\\�_� @���D�_@���}_� @K$��_@_�=o_� @�aI��_@Nƭ`_� @e9��_@:�B(q� @{�B��_@tM�q� @��g3�_@�U!q� @�#�n�_@h���p� @z%�l�_@"�4_� @n)�j�_@�#fmM� @���/�_@ua�{M� @u��_@M9��M� @�u��_@P��M� @\0\0\0\0\0\0\0\0\0�y���_@��W�:� @�x�V�_@�P�:� @�K\\X�_@�/�uL� @!1Z�_@�=^� @e�\\�_@��p� @�+��_@Fa�o� @EP��_@uz�o� @5T{��_@��^� @ae���_@��RXL� @�Y���_@��fL� @�y���_@��W�:� @\0\0\0\0\0\0#\0\0\0[�)[w_@aH�� @Z�VYw_@��<r� @<|�y_@�).r� @QJ��y_@f�f`� @b��Ww_@��u`� @q��Uw_@���N� @D��\Zu_@��N� @\r=f�r_@$#��N� @�u��r_@���=� @:n�p_@�Z�=� @��Hgn_@� =� @�\Zven_@xX+� @9q�cn_@}�� @@0~(l_@�3h�� @?�X�i_@x��� @9�3�g_@kot�� @�&a�g_@ٯ��� @��;ue_@#%c� @@�:c_@�4�� @�;c_@��� @�=c_@��+� @���xe_@����+� @�+�g_@�,�+� @�صg_@^�K=� @�8��g_@��8O� @���i_@G��O� @-:��i_@�.I�`� @I��/l_@��½`� @]$�jn_@��;�`� @9��ln_@a.�vr� @��nn_@��h>�� @���p_@�6�/�� @K���r_@5UY!�� @�& u_@��� @[�)[w_@aH�� @\0\0\0\0\0\0	\0\0\0�vJ?A_@6�5��� @5qzC_@�䒝� @��xC_@�EEˋ� @�vC_@���z� @{\ruC_@}�<h� @k��9A_@�mYJh� @8��;A_@�>�z� @~~=A_@{\r�ً� @�vJ?A_@6�5��� @\0\0\0\0\0\0\0\0\0��ތ_@�3��� @=�Q_@xGh��� @�7�S_@K\\�� @���_@���M�� @��ތ_@�3��� @\0\0\0\0\0\0\0\0\0�vJ?A_@6�5��� @k�#?_@�K���� @o��?_@�%&w�� @�qAA_@ޤ�h�� @�vJ?A_@6�5��� @\0\0\0\r\0\0\0E\0\0x���_@��_�i� @�M	�_@�Z�X� @�>�_@��=F� @UTe4_@ �.F� @���o	_@�� F� @iA�m	_@���X4� @��_@���J4� @��_@���"� @ՓC�\r_@���t"� @��x�\r_@�� �� @\n?�_@l[؞� @(��V_@J���� @���T_@������ @Wo�_@&\'8��� @��	_@��� @5�/S_@�uO� @�HV�_@���� @�c��_@�{f+ۅ @Q���_@�Dۅ @��_@ħ�ۅ @�(�=_@��\0ۅ @�4�?_@��)�� @�z_@�߹� @x��|_@n�~��� @B�A_@xɏ�� @��m_@����� @��8_@폳e� @k��_@�[�s� @r{��_@_�;"� @]�\n_@݃S-"� @Fc*E_@�B	"� @�v�F_@"%��3� @)��_@�u��3� @���\r_@�e��E� @�\ne_@KS3�W� @�o>�_@;]}�W� @�o	�_@~XZi� @�0_@�>�Ki� @Q&�_@�(s{� @�q��_@�Q�!{� @����_@�0{� @�x�_@����� @)�C�_@B G��� @�{j�_@�=���� @�u��_@�H]錆 @\Z7�_@ی� @���O_@�q�̌� @E��_@6m}��� @�H�_@���z� @�8o�_@DJ��z� @���!_@щF�z� @����!_@�ަi� @�A�8$_@��Zi� @�%7$_@*�<W� @M�Lr&_@*�n.W� @�,�p&_@�,�fE� @T���(_@�i�XE� @Kܩ(_@��3� @`׵n&_@��/�3� @��l&_@N��!� @���(_@PbC�!� @Kܩ(_@��3� @̼�*_@�͕�3� @�O7�*_@~X��!� @��k�*_@D�V�� @�:�-_@7�	�� @��\Z-_@�j�� @��U/_@Ia�� @�!T/_@}G� @W\rVR/_@��څ @-9|�1_@���qڅ @Я��1_@JY�ȅ @����3_@*��ȅ @���6_@8MS�ȅ @G1\06_@��Ŷ� @�e�5_@\n���� @1��5_@X�u6�� @���78_@f�&(�� @;V�58_@?��`�� @��(48_@f�o� @�]28_@�7I�]� @@ׂm:_@���]� @�(�k:_@�Z�K� @O|�i:_@Qͻ3:� @)+�<_@�_l%:� @�sE�<_@�J�](� @��y�<_@13.�� @k��<_@���� @����>_@Hu?�� @���>_@{i��� @�<�>_@�[1� @�]p�>_@�Kbiτ @ߥ��>_@�9á�� @����>_@q%$ګ� @-���<_@�{s諄 @�`�[:_@�l���� @�i 8_@s��� @��4"8_@b:�̽� @A7\0$8_@?{O�τ @	���5_@����τ @L�5_@o�ڽ� @���3_@�=L齄 @<��p1_@����� @�3�5/_@a���� @\\�y�,_@�G3�� @����,_@���L�� @�4��,_@�#􄚄 @�꽻*_@z<@��� @Ꞙ�(_@7�� @�l�~(_@�:�و� @�+�C&_@Px7舄 @f�$_@�O���� @&N\n$_@R#"��� @	QsE&_@*<ׯ�� @�x>G&_@��vw�� @5�c�(_@j�+i�� @�+��*_@��Z�� @�nT�*_@�"�� @���*_@�τ @���*_@~���� @D��*_@�T^y� @\\���(_@�U��� @��[�(_@^�IO� @\\6P&_@ߧ�]� @��R&_@E]5%� @!��S&_@���(� @���U&_@��t�:� @�9r\Z$_@Y5��:� @�f=$_@$�_�L� @��!_@g��L� @I��_@����L� @�&�_@��U�:� @F�\0i_@�,��:� @���j_@\Z@�L� @�/_@V��L� @y:��_@]���L� @�^Z�_@���L� @�@%�_@�Ƽ�^� @�V�_@А�^� @4j�D_@��M�^� @��C_@����L� @G�4~_@�fe�L� @��i|_@;�&;� @�ܞz_@(\r%_)� @��ĵ_@�q�P)� @����_@yQ<�� @��.�_@�.��� @\r�T�_@MS�� @0���_@"8��� @�G�&_@\0j�� @CX�$_@���� @�j#_@�)NЄ @�~N!_@l㉆�� @�)�_@��Ҕ�� @r���_@�s\\Є @Chά_@ ��jЄ @�q_@{yЄ @�]�6_@�K�Є @xN8_@�7�N� @��(�_@=�3]� @���\r_@��zk� @����\r_@�Y3� @�駈_@\n/bA� @0B�M	_@���O� @���K	_@z\Z�� @��_@�N�� @��\\_@G��]� @-\'_@�9�%� @ח�_@W�/�� @����_@e�u�� @�^�_@N��3� @@�۝_@�:\ZB� @`��_@��	� @&B�d\0_@��� @}�Jf\0_@?���)� @��h\0_@VWA�;� @��:�_@�@��;� @}tp�_@;�[�)� @~H��_@j)�)� @_�`�_@`Ķ�;� @?:+�_@E]WRM� @�L�_@8�`M� @ɻϦ_@��=(_� @�,��_@�3��p� @��d�_@\'�~��� @\n/�_@Zv�� @b�q\0_@��d��� @�\\�r\0_@s�U�� @C+�7�_@��Jc�� @���5�_@U٩��� @����_@\Zr� @x~���_@�2��� @�Sp��_@2rvƔ� @����_@1����� @�<̽�_@�Ƒ��� @[X���_@7�M₅ @8r4�_@\Z	Ԃ� @���5�_@U٩��� @b�q\0_@��d��� @�>o\0_@�*�ł� @�#tm\0_@5y#�p� @x��k\0_@Pł6_� @&��0�_@5��D_� @��]��_@K�S_� @��7��_@�Pa_� @��m��_@���M� @�G}�_@ح�M� @�]}{�_@��Q�;� @�2�y�_@?��*� @R	�w�_@��Q� @ 6�<�_@K�R_� @�R�>�_@=��&*� @\rqW@�_@є�;� @S�1�_@݄��;� @\0���_@<�x�M� @����_@����M� @����_@��<� @��A��_@ͫxC*� @ĉw��_@���{� @�`��_@�S�m� @?S���_@[8��� @�G	��_@�\ZS�� @,/9�_@?��� @��d7�_@�o� @���r�_@W�,�� @Jx�p�_@�Ƌ2ф @Y�n�_@���j�� @���3�_@�n-y�� @2ؚ5�_@��@ф @6u��_@O�Oф @�=?��_@��� @����_@?��$� @����_@~*��� @Jʽ��_@j���� @s����_@x�� @�aN�_@�d��� @q�+P�_@��Z�� @Ͼ�Q�_@%��_*� @����_@`��Q*� @���_@�[<� @+��S�_@<=�\'<� @Ͼ�Q�_@%��_*� @����_@=n*� @w���_@�Y�5<� @�c\Z�_@R��M� @��=��_@�s�N� @źs��_@tD<� @�M��_@Za_R<� @���_@�\0\ZN� @�}�h�_@��@(N� @�9�j�_@�N��_� @$P��_@�D��_� @&���_@"�C�q� @&<���_@�3�q� @����_@|��b�� @�A��_@��cT�� @D*�!�_@���� @�U#�_@(0�㦅 @u�.��_@"D�� @��d��_@W�E*�� @$�>��_@���8�� @ ���_@L�\'\0�� @[Ү�_@�X�Ǹ� @��s�_@r�	ָ� @/�uu�_@3$��ʅ @]�?w�_@�Le܅ @�%<�_@��s܅ @��=�_@.&.;� @}��?�_@F��\0� @�ivA�_@Aq�� @��|�_@|�0�� @�1�z�_@s���� @����_@��N��� @��/��_@�~�� @gZV��_@��l� @B ��_@�\r��� @����_@��N��� @֗÷�_@�8�� @�+���_@v-��� @����_@�wPg#� @7~��_@��.5� @�WW��_@��2=5� @�:!��_@T@�G� @x��_@�u�X� @����_@iJ4�X� @=����_@|�Յj� @�ϥ��_@~�vM|� @���8�_@��4?|� @���:�_@S,��� @j�`<�_@�XwΟ� @���w�_@35��� @��Qy�_@�և�� @�{�_@�8wOÆ @��B��_@,`4AÆ @��i��_@�!�2Æ @y��,�_@�}�$Æ @M�g�_@�siÆ @#\rߢ�_@&%Æ @���_@A9�@�� @�;��_@3s?2�� @BKq��_@ε�j�� @�`J��_@Nl�x�� @�\r���_@H�B��� @ȼ���_@=̡�{� @�m��_@�\0"j� @���^�_@E0j� @gg�\\�_@L6�hX� @� !��_@�#`ZX� @��G��_@��LX� @�1��_@Bq�j� @�����_@�4]�{� @c���_@W����� @����_@�鸔�� @�3��_@v�Y\\�� @1�b�_@MG�#�� @�-�_@�� @�TT�_@�QU� @G��R�_@����� @\\���\0_@��n�� @(��\0_@C/�?�� @x��_@f�1�� @{MB�_@.`�i�� @|�w�_@��F�{� @~-��_@�W��i� @x���_@��_�i� @\0\0\0Z���_@T��� @K���_@V���� @D0���_@�d�� @n&��_@���܅ @#{L�_@���܅ @���_@��!�� @Z���_@T��� @�CT�_@~���� @�y�U�_@�� J� @Z��W�_@�{�#� @��eY�_@�fb�4� @)0[�_@vO�F� @�z	 �_@��F�F� @N����_@�#��F� @����_@���4� @K?�_@���4� @�u�_@�� #� @��\Z�_@��cX� @Z���_@T��� @\0\0\0v�M�_@\'�ă4� @n��_@�-$�"� @M���_@��ݭ"� @\Z t�_@�d~u4� @v�M�_@\'�ă4� @\0\0\0T?ah	_@�c�� @���f	_@��n:� @��_@A�\',� @����_@�\n���� @T?ah	_@�c�� @\0\0\0��I�_@Q`�V� @Q�_@�[�ۅ @Ϣ�)_@�k�ۅ @j;p+_@t�H� @��I�_@Q`�V� @\0\0\0�~��!_@G�iF�� @A^��_@BѴT�� @h�_@ƠTɅ @_PYw_@�_�*Ʌ @U3<_@t��8Ʌ @N�_@��3GɅ @{�A�_@J���� @�h:_@��Iq�� @�;�u_@l��b�� @A^��_@BѴT�� @\Z?�_@����� @�R�!_@K��~�� @�~��!_@G�iF�� @ʜ\0\'$_@{A8�� @�&b&_@�`�)�� @�s[`&_@�2b�� @���(_@8��S�� @W�L�(_@n\Z��� @�&b&_@�`�)�� @�\0�c&_@�r�ȅ @��($_@���ȅ @3�*$_@�]�څ @`�p�!_@:��څ @L<�!_@��H�� @���_@�9��� @��J�_@;n��څ @`�p�!_@:��څ @t���!_@6|	Ʌ @�~��!_@G�iF�� @\0\0\0P�\0�_@_��\0ʅ @���_@��q�ۅ @M����_@1\n��ۅ @ZP���_@4ʅ @P�\0�_@_��\0ʅ @\0\0\0��5��_@�$eVʅ @�����_@�H܅ @\nJ�c�_@WH,܅ @�Lb�_@�#�dʅ @��5��_@�$eVʅ @\0\0\0����*_@��E�� @�/��*_@�d�}�� @C,-_@�q�o�� @�&(K/_@N`a�� @���L/_@��(�� @��-_@�L7�� @����*_@��E�� @\0\0\0(X{^�_@\\�dզ� @�`�\\�_@�|�\r�� @n�ח�_@������ @�����_@��"Ǧ� @(X{^�_@\\�dզ� @\0\0\0bصE�_@b�wEq� @���C�_@���}_� @=��_@	��o_� @s�ۀ�_@,�47q� @bصE�_@b�wEq� @\0\0\0݆SW�_@7�߶_� @2xY�_@�~q� @,[��_@DNq� @�v-�_@�� �_� @݆SW�_@7�߶_� @	\0\0\0����,_@S�k� @x�,_@�cr�� @2$E�,_@����τ @h�j7/_@�)��τ @���r1_@�9�τ @�k[t1_@\\�؆� @�59/_@ߦ%�� @�U;/_@"�\\� @����,_@S�k� @');
INSERT INTO `flood_maps` (`id`, `barangay_id`, `level`, `return_period`, `created_at`, `updated_at`, `shape`) VALUES
(3, 1, 3, 25, NULL, NULL, '\0\0\0\0\0\0\0b\0\0\0\0\0\0\0\0\0\0\0\0�� c_@N6/Ɵt @�Kt�`_@�2wԟt @p�>�`_@J)��t @�X"c_@�ύ�t @�� c_@N6/Ɵt @\0\0\0\0\0\0\0\0\0���\\�_@	�R��w @�j���_@�$��w @��1��_@�ŀ��w @�[�_@u����w @���\\�_@	�R��w @\0\0\0\0\0\0\0\0\0r�j�_@��#��w @(bN��_@�R��w @����_@����w @�b2�_@��Ǘ�w @r�j�_@��#��w @\0\0\0\0\0\0	\0\0\0���\\�_@	�R��w @�j�!�_@����w @�̇#�_@�+$��w @%0O%�_@�A�_�w @��\'�_@vUl\'x @�<3b�_@n�>x @��k`�_@��Q�w @GZ�^�_@�����w @���\\�_@	�R��w @\0\0\0\0\0\0\0\0\0�Oy�_@Kb;�.x @�Շw�_@�#�x @z����_@�jx @bAݰ�_@o�Cx @����_@��5x @��2�_@�q�m�w @H���_@!<"|�w @�T�s�_@2�N��w @=��u�_@���Qx @�:�_@��`x @�k<�_@�B�\'x @�[N�_@���5x @�1Ʈ_@JO\ZDx @9���_@l=ERx @k�O�_@�o`x @\Z�Q�_@�Q(/x @��ی�_@���/x @1��Ǯ_@��/x @Å�_@\0Y��.x @XP2>�_@d�g�.x @�Oy�_@Kb;�.x @\0\0\0\0\0\0\0\0\0���@�_@(�F?x @�)?�_@\nj~-x @5�S=�_@�OǶx @7�_@�W��x @���_@]!��-x @�	��_@�BT?x @���@�_@(�F?x @\0\0\0\0\0\0\0\0\0���@�_@(�F?x @@3�B�_@1x�\rQx @�uD�_@-,R�bx @v��_@���bx @h[��_@#��tx @ʤ#��_@k�`V�x @\\w@��_@b�)H�x @?�w��_@���tx @����_@�|Ortx @;����_@]���bx @Z��0�_@qu�bx @��/�_@����Px @$�<j�_@�u��Px @��sh�_@�\r��>x @q��f�_@/�U7-x @=�d�_@�6�ox @��)�_@�9�}x @�:���_@��"�x @��q��_@2c�S-x @�QU��_@���a-x @����_@�C�)?x @5O|�_@�5�7?x @���@�_@(�F?x @\0\0\0\0\0\0\0\0\0��_@��蹫x @l�ج�_@�ȫx @�ϟ��_@�A���x @�f��_@��[W�x @4��_@j�1I�x @#��_@^���x @��_@��蹫x @\0\0\0\0\0\0\0\0\0A����_@t�uy @7e|�_@�?�y @��+~�_@��K(y @:���_@��a:y @����_@��7:y @��I��_@��=(y @A����_@t�uy @\0\0\0\0\0\0\0\0\0:$���_@�汾Ky @��׼�_@VF��Ky @*����_@�݀�]y @*0���_@�nV�]y @:$���_@�汾Ky @\0\0\0\0\0\0\0\0\0jeܬ�_@�y#oy @���q�_@�Ƥ1oy @مs�_@m+I��y @�����_@�l�y @jeܬ�_@�y#oy @\0\0\0\0\0\0\0\0\0�����_@z�vFDz @R�s�_@��TDz @.�Uu�_@��HVz @�t��_@��\ZVz @�����_@z�vFDz @\0\0\0\0\0\0\0\0\0���x_@��| @ob�Tv_@S�n��| @$\'�Vv_@�P��| @��ɑx_@_�x�| @���x_@��| @\0\0\0\0\0\0\0\0\0���h_@�N�ݕ| @y=ָf_@�|�| @����f_@S���| @T(��h_@���| @���h_@�N�ݕ| @\0\0\0\0\0\0\0\0\0�t�I�_@�4U1�} @�U�G�_@��i�} @�c��_@��x�} @�u��_@M��?�} @�t�I�_@�4U1�} @\0\0\0\0\0\0\0\0\0�t�I�_@�4U1�} @��K�_@�d���} @⟬��_@�*���} @r߄�_@}\n�"�} @�t�I�_@�4U1�} @\0\0\0\0\0\0\0\0\0⟬��_@�*���} @��y��_@�H4��} @F�ä_@��أ�} @�����_@3�;��} @⟬��_@�*���} @\0\0\0\0\0\0\0\0\0ʡ#d_@��b5~ @�v�d_@�N�)G~ @Uf_@ocG~ @}!DSf_@b��S5~ @ʡ#d_@��b5~ @\0\0\0\0\0\0\0\0\0�	��_@_���~ @�r�í_@]I"��~ @���ŭ_@J\0���~ @7��\0�_@��`��~ @�	��_@_���~ @\0\0\0\0\0\0\0\0\0;>_@��Y�~ @�R9>_@}\05��~ @:1�;_@((��~ @���;_@H�h�~ @;>_@��Y�~ @\0\0\0\0\0\0\0\0\0B\0�._@�t��~ @��c,_@L����~ @�e,_@��[[�~ @�ʠ._@�KM�~ @\n���0_@W�>�~ @�5!�0_@\0:,w�~ @B\0�._@�t��~ @\0\0\0\0\0\0\0\0\0���0_@��� @�٢\Z3_@sĿ @S�3_@%$� @����0_@�ql @���0_@��� @\0\0\0\0\0\0\0\0\0݌\Z�7_@��� @J�S5_@�8�� @+�U5_@\\2{� @�z�7_@��1� @,��9_@8C� @��;�9_@�hH� @݌\Z�7_@��� @\0\0\0\0\0\0\0\0\04fZ�_@��k  @�8��_@�R�y  @A��_@GTsA2 @3�"�_@��=32 @4fZ�_@��k  @\0\0\0\0\0\0\0\0\0�Ɲz�_@�.O  @i|?�_@6e]  @*�DA�_@��%2 @"Rf|�_@��2 @�Ɲz�_@�.O  @\0\0\0\0\0\0\0\0\0��*�_@�Um�  @��b�_@\Z��# @eA��_@���1 @�	��_@�,��  @�E�y�_@,��! @s+�{�_@�:t�2 @E�ж�_@"�B�2 @�󘸱_@VE�D @GҺ�_@`O�zD @���_@���2 @��*�_@�Um�  @\0\0\0\0\0\0\0\0\0�:X��_@Z�x�2 @�n6h�_@�ի�2 @��i�_@y2O^D @b ��_@�PD @�8B�_@�~�AD @�z޼_@BAEz2 @�:X��_@Z�x�2 @\0\0\0\0\0\0\0\0\0�~�B_@�h��R @����B_@��;zd @+��D_@l�kd @���D_@@�P�R @�~�B_@�h��R @\0\0\0\0\0\0\0\0\0�r#�_@���rO @��Q��_@�@�O @V���_@�)�Ha @��@%�_@�y:a @�r#�_@���rO @\0\0\0\0\0\0S\0\0\0�~�B_@�h��R @fK"�B_@����@ @p�C�D_@\r��@ @!jx�D_@��/ @i��0G_@�h�/ @Wo�.G_@\n�%? @F(-G_@8q�w @5�7+G_@X���~ @:	YfI_@�����~ @g��dI_@C.���~ @�k�bI_@�[�~ @v�K_@�!�~ @��K_@�o<�~ @��L�K_@T�t�~ @�m�M_@st�f�~ @�T��M_@\Z䞠~ @�4�P_@�䖐�~ @���P_@���Ȏ~ @�^,P_@�HX}~ @j#MFR_@��\n�|~ @���DR_@��k+k~ @�d�T_@��k~ @�úV_@��k~ @2���V_@�]0GY~ @l1�X_@4��8Y~ @��8/[_@�ܒ*Y~ @�0m-[_@��bG~ @Bōh]_@���TG~ @�W��__@��TFG~ @a��__@��~5~ @ �a_@.�ep5~ @ʡ#d_@��b5~ @��Wd_@#�v�#~ @�Y7�a_@Ǩ#~ @	��__@d�#~ @j�d]_@�f�#~ @ ��)[_@µ�#~ @)r��X_@���#~ @?��X_@)���5~ @�y`�V_@��5~ @��?zT_@X@�5~ @\\?R_@|���5~ @^��P_@����5~ @�6��M_@��\'�5~ @����M_@�7ǸG~ @~鈏K_@c��G~ @4T�K_@�-��Y~ @���K_@ٟRVk~ @���WI_@N۞dk~ @��G_@!��rk~ @�@��D_@P!6�k~ @�h��D_@M��H}~ @B�g�B_@v� W}~ @е2�B_@���~ @`���B_@{1`�~ @!��p@_@7���~ @���5>_@Ps��~ @��7>_@�:�ʲ~ @���r@_@A�J��~ @�st@_@-s��~ @�->v@_@\'�K�~ @;>_@��Y�~ @\'�<>_@v�t!�~ @��<_@X̾/�~ @�ޥ�9_@��>�~ @�p�9_@0���~ @�<_@X�^��~ @ 7�>>_@�D��~ @-I~@>_@.�� @f]<_@Ih�� @�(<_@*3�� @��<_@��=N/ @F(�\n<_@���A @=Ü�9_@��\'$A @��g�9_@A���R @O�2�9_@|�g�d @����9_@�h{v @%V<_@�\n�lv @�DT<_@�I�d @�5�<_@`�}�R @\\��G>_@��2�R @)̂@_@����R @�~�B_@�h��R @\0\0\0\0\0\0\0\0\0�;��@_@\n|��d @h�uI>_@ٕҖd @t�@K>_@�Fr^v @�fb�@_@b\'Pv @�;��@_@\n|��d @\0\0\0\0\0\0\0\0\0_���9_@�6�B� @N7��7_@�>�P� @3r�7_@s\Z�� @�ٓ�9_@�G\n� @_���9_@�6�B� @\0\0\0\0\0\0\0\0\0��u�_@=<-s @k�:�_@���;s @�UX<�_@��9� @�A&>�_@�%�ʖ @a0�?�_@�cr�� @�m{�_@��� @�6��_@�Үu� @�h��_@��� @�����_@x�v� @\r�̰�_@�p�s @��u�_@=<-s @\0\0\0\0\0\0\0\0\0�ӈO�_@��b� @��f�_@�!Up� @�3/�_@T�7� @\\dQQ�_@���)� @�ӈO�_@��b� @\0\0\0\0\0\0\0\0\0|���9_@�Z&a� @d2Ӣ7_@��po� @)6��7_@ct7� @��9_@T�(� @|���9_@�Z&a� @\0\0\0\0\0\0\0\0\0�\rEd_@�ݔ�� @�ACd_@�D�� @E b_@�&H\'� @p�	b_@S���� @�\rEd_@�ݔ�� @\0\0\0\0\0\0\0\0\0�\rEd_@�ݔ�� @���Fd_@�t3�� @O���f_@�\r�� @��/�f_@��B�� @�\rEd_@�ݔ�� @\0\0\0\0\0\0\0\0\0��zo�_@\n	k=� @skX4�_@*:�=� @8� 6�_@cIC�N� @@\\Cq�_@��N� @��zo�_@\n	k=� @\0\0\0\0\0\0	\0\0\0��zo�_@\n	k=� @t���_@:r5=� @N�e��_@kb��N� @^z���_@gV��N� @R����_@�u��<� @Er���_@\0�\\,+� @��Ԩ�_@��:+� @2��m�_@G�H+� @��zo�_@\n	k=� @\0\0\0\0\0\0\0\0\0oy��_@@�k� @�.A��_@��هk� @��r��_@IV>�Y� @�D��_@��ױY� @\\�R�_@��p�Y� @�׍�_@7q	�Y� @:C���_@q��\\k� @�����_@R�<Nk� @�,���_@Ү��Y� @�j*��_@Oq�G� @����_@�#n�G� @�@�P�_@�p��G� @���_@@X<�G� @Z��_@q�"6� @,����_@U[16� @���_@�٢�G� @s���_@��H� @D�P��_@����Y� @oy��_@@�k� @\0\0\0\0\0\0\0\0\0u�8�\Z_@cU�-p� @V�\Z_@��W��� @�}%�_@k(灀 @Y[�_@p�qp� @u�8�\Z_@cU�-p� @\0\0\0\0\0\0\0\0\0oy��_@@�k� @���g�_@�ᥤk� @_;�i�_@�yAl}� @����_@"��]}� @oy��_@@�k� @\0\0\0\0\0\0\0\0\0͓�T�_@�(kk� @[�b�_@�/syk� @�1�_@?�A}� @B@SV�_@Ɓ�2}� @͓�T�_@�(kk� @\0\0\0\0\0\0\0\0\0�����_@R�<Nk� @�����_@�#�}� @�n��_@6�o}� @\n���_@���?k� @�����_@R�<Nk� @\0\0\0\0\0\0	\0\0\0�}%�_@k(灀 @����_@R����� @\nn,_@�tl��� @v�4g!_@�%��� @�JW�#_@��ރ�� @����#_@��>��� @NEje!_@G��ʁ� @��G*_@1\n�؁� @�}%�_@k(灀 @\0\0\0\0\0\0\0\0\0�Jѿ_@��\'�� @��{Ͽ_@�7`�� @dם\n�_@}h�Q�� @����_@�v8��� @���C�_@���{�� @�^�_@��pm�� @DE}�_@Kե}� @��f��_@��p�}� @ج���_@L�}� @u�.�_@D��z}� @u�,�_@�Q�k� @ϝ\r+�_@0�o�Y� @-5?)�_@���#H� @0���_@|�82H� @-����_@�l�@H� @)I�w�_@1�OH� @���y�_@�f�Z� @�ֆ>�_@v0%Z� @!��<�_@Fe]H� @�m�:�_@wYɕ6� @D����_@�,�6� @���_@*��kH� @�e�_@Q�d3Z� @�J3�_@u�\0�k� @2�ʿ_@V�c	l� @M��˿_@ ���}� @iǭͿ_@֣���� @O拒�_@qk���� @��Y��_@�|�n�� @(��_@�66�� @�Jѿ_@��\'�� @\0\0\0\0\0\0	\0\0\0I����_@��3�� @9����_@B�jk�� @,���_@�ϣ�� @%���_@u�4�|� @	��}�_@��|� @N���_@:$9��� @�����_@V*�y�� @�h��_@a.oA�� @I����_@��3�� @\0\0\0\0\0\0\0\0\0�U)	�_@��gǢ� @�5΅_@�i�բ� @\r�υ_@�\0^��� @�<�\n�_@U��� @�gF�_@������ @�]�G�_@ IHƀ @F���_@JL�9ƀ @��:��_@��Qr�� @��m�_@}}���� @�sKD�_@�1��� @�U)	�_@��gǢ� @\0\0\0\0\0\0\0\0\0I����_@��3�� @\\�Y��_@�x��À @~f{��_@�[6�À @�X���_@y�$�� @I����_@��3�� @\0\0\0\0\0\0\0\0\0w�K��_@�s:ƀ @��)��_@��+ƀ @L����_@yg2�׀ @���_@����׀ @w�K��_@�s:ƀ @\0\0\0\0\0\0\0\0\0�v/��_@�?�[�� @|����_@kL~#�� @��_@j�!�� @d;R��_@<��M�� @�v/��_@�?�[�� @\0\0\0\0\0\0\0\0\0��_@j�!�� @���×_@���ܾ� @����_@ �aξ� @ngB��_@����� @��_@j�!�� @\0\0\0\0\0\0\0\0\0�.َ_@�/��Ё @���_@#T\'�Ё @��؟�_@s�ĳ� @���ڎ_@Nei�� @�.َ_@�/��Ё @\0\0\0\0\0\0\0\0\0f��]_@3����� @�㠌[_@(ն�� @\r�}QY_@.H\'��� @C�ISY_@Z�Ō� @��l�[_@��s~� @"7��]_@,!p� @f��]_@3����� @\0\0\0\0\0\0\0\0\0BW�W_@r�b� @���T_@�q� @���T_@[��8+� @�O�W_@�&U*+� @BW�W_@r�b� @\0\0\0\0\0\0\0\0\0�\Z:FE_@�,O� @�]�G_@=��O� @��G_@T�&V=� @1�nDE_@cRud=� @�\Z:FE_@�,O� @\0\0\0\0\0\0\0\0\0}ƴt�_@H�B�o� @�T�r�_@�>��]� @�+�7�_@;j�]� @ϐ�9�_@x&��o� @}ƴt�_@H�B�o� @\0\0\0\0\0\0!\0\0\0��ү_@�]��� @#[3ѯ_@\r&>�� @�W�_@#��/�� @�A�\n�_@�@hv� @����_@�f��d� @-���_@78��R� @aX6�_@�WA� @�n�_@@ճI/� @	Jȯ_@���W/� @�ځƯ_@��D�� @䡹į_@of��� @�����_@���� @��͇�_@f�1�� @`��L�_@��d�� @/��_@���+�� @��M�_@>�:�� @*ئ_@�^m� @ )��_@y^�� @`"Ξ�_@\Z�B�� @�*�c�_@��t�� @,re�_@�<�/� @�	:g�_@�ۻtA� @�\Z^��_@,�fA� @\n\Z&��_@��-.S� @6Jߦ_@�b�S� @�C�_@�ޞ�d� @�j6�_@�+l�d� @u���_@��v� @&���_@Y��h�� @x��Z�_@��Z�� @� ��_@:)LL�� @[ח�_@mp��� @��ү_@�]��� @\0\0\0\0\0\0\0\0\0�\Z:FE_@�,O� @\0�C_@��b:O� @��C_@�/a� @��C_@�h��r� @�4yC_@ן@��� @?�DC_@���X�� @ӇhME_@T!�J�� @��KE_@�񂄂 @+M�IE_@��R�r� @زHE_@^���`� @�\Z:FE_@�,O� @\0\0\0\0\0\0\0\0\0��0��_@eʿ��� @�kh��_@E�ۙ� @a*DI�_@,R陂 @ߌK�_@����� @��0��_@eʿ��� @\0\0\0\0\0\0\0\0\0��b<_@ �hK�� @Rpd<_@�M�� @K�;f<_@<���˂ @,�_�>_@;�Y�˂ @&3��>_@S���� @�ȝ>_@X\\=�� @��b<_@ �hK�� @\0\0\0\0\0\0	\0\0\0,"�]_@���܂ @�5��[_@S��܂ @�]ʥ[_@�р�� @����[_@bNi\0� @���]_@	��Z\0� @�u�`_@�xL\0� @V2`_@��ل� @�H��]_@q-�� @,"�]_@���܂ @\0\0\0\0\0\0\0\0\0=ܱ�@_@Ȉ�� @0��C_@\r:�� @#�YE_@a��� @�g.XE_@��K�\0� @�Y\nC_@��� @�>C_@"��>� @~ sC_@��\\w݂ @�)O�@_@���݂ @��\Z�@_@�YJM� @pI��@_@���� @=ܱ�@_@Ȉ�� @\0\0\0\0\0\0\0\0\0�1/�_@Һ�*�� @���_@q�B9�� @�٫�_@��\0� @�\\��_@��{�� @�1/�_@Һ�*�� @\0\0\0\0\0\0\0\0\0��>��_@�J)\'� @����_@(*��8� @�,��_@L͍�8� @c��_@���	\'� @��>��_@�J)\'� @\0\0\0\0\0\0\0\0\0k�i�x_@��הX� @hٜ�x_@�I:�F� @7�xtv_@����F� @�T9t_@����F� @�q!;t_@4���X� @v�Evv_@Ut0�X� @k�i�x_@��הX� @\0\0\0\0\0\0\0\0\0k�i�x_@��הX� @p�6�x_@��u\\j� @(�Z�z_@��Nj� @^э�z_@Q�X� @k�i�x_@��הX� @\0\0\0\0\0\0\0\0\0\\����_@�Vm��� @6��_@;����� @L�H��_@�K�t� @[�%��_@^���t� @\\����_@�Vm��� @\0\0\0\0\0\0\0\0\0���E�_@�$!"�� @T��_@�b��� @\r�&�_@�M"L�� @8�D�_@B\0�Z�� @���E�_@�$!"�� @\0\0\0\0\0\0\0\0\0���E�_@�$!"�� @��\n�_@��0�� @ݐz�_@���� @@͞G�_@G���� @���E�_@�$!"�� @\0\0\0\0\0\0\0\0\0xRVѩ_@P�� @2��_@�Y� @J\0��_@,��Ӄ @vS$ө_@��Ӄ @xRVѩ_@P�� @\0\0\0\0\0\0\0\0\0�.���_@���Ӄ @��lI�_@_gY�Ӄ @S;K�_@���x� @<X_��_@q��j� @�.���_@���Ӄ @\0\0\0\0\0\0\0\0\0.����_@��/�Ӄ @t���_@�>��Ӄ @#����_@�=/\\� @����_@Ȁ�M� @�G�7�_@L^g?� @J��5�_@�~�wӃ @.����_@��/�Ӄ @\0\0\0\0\0\0=\0\0\0��n�_@��~b� @�%��_@Ki�P� @}��A�_@��	�P� @�$�?�_@�Vm�>� @��{�_@�\r�>� @�nA��_@����>� @]f�_@Q"M�>� @e6��_@B���,� @q^��_@#<&� @���(�_@�~�� @!\'�_@\nP	� @L!S%�_@y�z��� @�B�#�_@�D��� @���^�_@�P}�� @\Z��\\�_@����Ӄ @��\r[�_@}�D# @9���_@li�1 @�D��_@��@ @Y����_@��eN @7=ӧ�_@�QɆ�� @�x��_@Xix�� @��)�_@��̰�� @�[ߠ_@�P0錃 @��7��_@2+���� @֠i�_@ǟ��� @.O�j�_@�C�͞� @D�/�_@Jb�۞� @ؿ�1�_@����� @���l�_@��(��� @�|n�_@���\\ @EfJp�_@n#b$ԃ @	\r&5�_@�p�2ԃ @���6�_@f^�� @�N���_@��� @|���_@��Y��� @�vx_@3n���� @����_@��� @�x���_@l�y%� @��S��_@ǩ��� @6�!��_@���	� @�\nFĕ_@�4U�	� @�ƕ_@s��m� @�8�Ǖ_@���5-� @ܙ���_@�&�C-� @���Q�_@h+KR-� @/z�O�_@�I��� @���M�_@�e�	� @t��_@K�n�	� @���_@���� @xK�ٌ_@�i�� @}�Nی_@�o-� @Y	*��_@6�b}-� @�c���_@	��D?� @�݌_@��6?� @k�@�_@�E(?� @PyeS�_@9�?� @��2U�_@���P� @��W��_@��&�P� @3o|˕_@�:��P� @U\rJ͕_@+�d�b� @��n�_@��~b� @\0\0\0\n��s�_@�X���� @�r�_@-���� @��<��_@0���� @�E\n��_@%�;��� @\n��s�_@�X���� @\0\0\0\0\0\0\0\0\0n�f�_@��O�� @z��d�_@��� @l���_@0�D� @�!��_@3\r�9�� @��b�_@"�H�� @k�-a�_@_��� @��]_�_@�\n�у @D�9$�_@)pX�у @�$j"�_@wf���� @�,F��_@�V.�� @����_@p��у @�����_@l�b�� @�r���_@���d�� @�8���_@�,� @�\0U��_@�0�� @K8y+�_@9���� @I-�_@��Z�*� @��/�_@�~�t<� @���0�_@z�<N� @���2�_@Is(`� @{~�4�_@Wj��q� @��o�_@�vQ�q� @�gѪ�_@��q� @:o��_@!FF�_� @�x1��_@vl�N� @s�a��_@��X<� @����_@��x�*� @�Qmh�_@)��*� @n�f�_@��O�� @\0\0\0\0\0\0\0\0\0j��G_@��Cٙ� @��m�G_@��⠫� @13��I_@?~���� @O?��I_@%��ʙ� @j��G_@��Cٙ� @\0\0\0\0\0\0\0\0\0���_@̲�[�� @�A�Y\0_@�L;j�� @]��[\0_@f�1�� @���_@�k�#�� @���_@̲�[�� @\0\0\0\0\0\0\0\0\0F��_@y� @(���_@+Tp)�� @���#�_@�\r�� @��#"�_@�jqS�� @іU �_@kQՋ�� @��0�_@H8��� @׶b�_@>ٛ�s� @��=��_@���s� @k�o��_@��ab� @;Kk�_@ǡ�\'b� @��&0�_@�%6b� @xp�1�_@`��s� @S����_@l"t� @T���_@=\0�Db� @�ݹ�_@˖�Rb� @*⪻�_@L�\Zt� @���_@�R�(t� @x�S��_@����� @�!��_@\0c��� @��F��_@/���� @�g��_@�xXq�� @]V9��_@?��b�� @Wpk��_@�=[��� @P�5�_@.���� @�B^7�_@)h�T�� @�7,9�_@�2�� @�.Qt�_@��\r�� @$v��_@(�n��� @F��_@y� @\0\0\0\0\0\0\0\0\0݆SW�_@7�߶_� @�v-�_@�� �_� @,[��_@DNq� @2xY�_@�~q� @݆SW�_@7�߶_� @\0\0\0\0\0\0\0\0\0�����_@UeW��� @~���_@�O�7w� @����_@��YFw� @^ʒ�_@l��\r�� @�����_@UeW��� @\0\0\0\0\0\0\0\0\0n�ח�_@������ @�`�\\�_@�|�\r�� @(X{^�_@\\�dզ� @�����_@��"Ǧ� @n�ח�_@������ @\0\0\0\0\0\0\0\0\0C,-_@�q�o�� @�/��*_@�d�}�� @����*_@��E�� @��-_@�L7�� @���L/_@��(�� @�&(K/_@N`a�� @C,-_@�q�o�� @\0\0\0\0\0\0\0\0\0A^��_@BѴT�� @�~��!_@G�iF�� @�R�!_@K��~�� @\Z?�_@����� @A^��_@BѴT�� @\0\0\0\0\0\0\0\0\0�&b&_@�`�)�� @W�L�(_@n\Z��� @���(_@8��S�� @�s[`&_@�2b�� @�&b&_@�`�)�� @\0\0\0\0\0\0	\0\0\0�����_@UeW��� @\nE���_@�x�ƚ� @_���_@~���� @B���_@�~��� @(�G�_@=\rQq�� @:gF�_@����� @%��\n�_@%}T��� @%	�_@py���� @�����_@UeW��� @\0\0\0\0\0\0	\0\0\0A^��_@BѴT�� @�;�u_@l��b�� @�h:_@��Iq�� @{�A�_@J���� @N�_@��3GɅ @U3<_@t��8Ʌ @_PYw_@�_�*Ʌ @h�_@ƠTɅ @A^��_@BѴT�� @\0\0\0\0\0\0\0\0\0�mq�_@u~�ｅ @��o�_@d�U(�� @"�s4�_@�L�6�� @(}H6�_@������ @�mq�_@u~�ｅ @\0\0\0\0\0\0	\0\0\0�&b&_@�`�)�� @ʜ\0\'$_@{A8�� @�~��!_@G�iF�� @t���!_@6|	Ʌ @`�p�!_@:��څ @3�*$_@�]�څ @��($_@���ȅ @�\0�c&_@�r�ȅ @�&b&_@�`�)�� @\0\0\0\0\0\0\0\0\0�mq�_@u~�ｅ @o!Bs�_@u}�υ @��f��_@4(�υ @�����_@ �Oὅ @�mq�_@u~�ｅ @\0\0\0\0\0\0�\0\0\\����_@�Vm��� @��Ճ�_@v����� @�v�H�_@n����� @\n3�\r�_@�D��� @2�kґ_@s�φ� @R�H��_@�;\'ކ� @j[%\\�_@���솃 @z!�_@�;��� @����_@I3�	�� @�q���_@�dN�� @y�o�_@�0�&�� @g�t4�_@�_5�� @��G6�_@������ @:$�_@��}�� @8�\0�}_@m�\Z�� @In݄{_@�(�� @U�Iy_@�7�� @W��w_@5:�E�� @T-s�t_@�M T�� @G�O�r_@@��b�� @2M,]p_@!C+q�� @���^p_@��8�� @�:�#n_@��FG�� @ݸ��k_@Љ�U�� @�4��i_@=�Od�� @��prg_@�p�r�� @�t�pg_@\0i<��� @]�z5e_@����� @|W�b_@\\�Bș� @��3�`_@��֙� @�{�^_@�2G噃 @Av>�^_@]��� @��\ZG\\_@��1,�� @��Z_@�˲:�� @x��W_@��3I�� @я��U_@��W�� @%�ZS_@�$4f�� @r�iQ_@̳t�� @�ٗQ_@�!�v� @�ct�N_@�S��v� @��P�L_@�\Z�v� @�q-lJ_@̅��v� @��[jJ_@�\0e� @Ht8/H_@��~e� @��E_@�%�-e� @���C_@�Jy<e� @�) �C_@�=�tS� @ ��{A_@!�]�S� @S\Z�}A_@A\n�Je� @���B?_@�crYe� @�V�@?_@�6ڑS� @??_@�B�A� @A��=_@Iܽ�A� @��=_@V�S� @>{��:_@n�ѮS� @�\no�8_@�L�S� @ݗKT6_@�d��S� @%#(4_@�A�S� @f��1_@<���S� @�3�/_@�\Z5�S� @Ը�g-_@�6�T� @���e-_@4�>B� @W�d-_@��|v0� @�S?�/_@��h0� @�fn�/_@�;k�� @ Kb-_@<(�� @��\'\'+_@�\\�� @c�(_@����� @l�3�(_@��;\r� @�P�&_@��\r� @��&_@��L�� @﫽u$_@h���� @�\0�s$_@��*!\r� @���8"_@�͡/\r� @��6"_@��h�� @����_@O3v�� @u���_@�7���� @S7��_@��j��� @Sþ�_@ ��� @H_@�F�� @��F_@K��؂ @�_@6"!؂ @j���_@&��/؂ @�f��_@�\Z�gƂ @��_@/�c��� @����_@�w׮�� @�ܝV_@��J��� @���T_@�M���� @J��_@[;$�� @���_@!Ö�� @bdd�	_@)�!�� @�`��	_@�&oY�� @�Oqf_@1��g�� @*=N+_@�Rv�� @i(+�_@��� @��\0_@Vv3��� @�B8�\0_@�v��� @�6x�_@�|	�� @�(�<�_@�y�� @�u";�_@s�� n� @ur���_@&N/n� @&m���_@��=n� @�e���_@�I+Ln� @����_@����\\� @i��L�_@,���\\� @w\\�N�_@_C�Zn� @\ZQs�_@�in� @�CP��_@�twn� @2߀��_@9�ٯ\\� @��]��_@�;F�\\� @��:`�_@X���\\� @>�%�_@N{�\\� @�����_@���\\� @۽Ѯ�_@$��\\� @&��s�_@��_]� @�}u�_@���n� @��Z:�_@�%e�n� @l��8�_@�5�]� @��h��_@&4#]� @K����_@b$�[K� @J�v��_@4�jK� @�~E��_@���1]� @"j"��_@s�@]� @XS�K�_@��oN]� @�:��_@���\\]� @7q\r�_@F�<�K� @)c���_@+���K� @Sǘ�_@S�K� @A�]�_@�\'s�K� @\n�r_�_@���]� @.�O$�_@�Yu�]� @�,�"�_@r���K� @�^��_@h\'@�K� @��:��_@���K� @j{	��_@��A�]� @(�ׯ�_@]J�zo� @}ƴt�_@H�B�o� @{:�v�_@ɕ�P�� @	�_;�_@��C_�� @��<\0�_@�Ũm�� @Yn��_@���o� @lKý_@�kq�o� @��|��_@����]� @ʤY��_@=�9�]� @��\'��_@�u��o� @��M�_@�9�o� @#��N�_@�՘�� @�$���_@�^q��� @mŽ_@BE\r|�� @м�ƽ_@��C�� @�gċ�_@6F\rR�� @N�P�_@�	q`�� @�}�_@�g�n�� @����_@a8��� @?�ش_@�I���� @��h��_@F��Á� @�����_@"�a�o� @�w`�_@l��\np� @ݛ�^�_@�w\'C^� @�`�#�_@k�Q^� @�p�!�_@���L� @G@��_@/�M�L� @�#c�_@�A�_^� @`	1�_@̚�\'p� @��\r��_@�v�5p� @�o�s�_@:�GDp� @��r�_@�t�|^� @��Np�_@���L� @��n�_@	}r�:� @0�]3�_@�^��:� @�.�1�_@�54)� @0m��_@"<�B)� @h�I��_@�B�P)� @�Q|��_@��W�� @�;Y~�_@�#��� @��&��_@1�R_)� @�_�_@Ϡ�&;� @�-�F�_@m�M5;� @ѧE�_@�m)� @��	�_@S�|)� @�	�_@Hr�� @���̗_@t��� @�"˗_@H�2�� @:�E�_@+3��� @�	�_@Hr�� @�#6C�_@�N�� @�;Y~�_@�#��� @Ƭ�|�_@�a�� @��hA�_@S}w�� @^!�?�_@֩�� @<��=�_@F�=O� @|���_@�j�]� @���Ǘ_@���k� @TUɗ_@n��3� @�2��_@$k�A� @�s���_@�m�	� @V`�T�_@U��� @AS�_@ �NP� @�2��_@$k�A� @��d��_@�fUz� @ l���_@�_��Ё @tO�_@���Ё @8�M�_@*�w��� @Nʈ�_@4W뾁 @|����_@kL~#�� @\0��K�_@���1�� @���_@DS6@�� @F�Վ_@��N�� @�qa׎_@��.�� @�.َ_@�/��Ё @�Q�_@z�p�Ё @d��_@q�\r�� @���ڎ_@Nei�� @&\0�܎_@�m� @�󥡌_@��a{� @��؟�_@s�ĳ� @\0͵d�_@�g�� @/ɒ)�_@��y�� @��\'�_@�k�с @�Ƣ�_@7_6с @g���_@��O�� @\Z޲��_@�f�]�� @e�孃_@��T��� @��r�_@筤�� @�1�p�_@=Mݛ� @�V)o�_@N�r�� @��4_@�4�#�� @ξ92_@&�-\\x� @~\\m�_@P�Mx� @%��k�_@@s7�f� @;��i�_@+љ�T� @�u夃_@�A�T� @L���_@j���B� @A+;ޅ_@#rJ�B� @���_@��T� @g�*�_@[q��T� @����_@s�+[f� @��_@�y�if� @����_@�"1x� @P;��_@�9|?x� @!L��_@��� @�n�_@+y���� @�� �_@��fꉁ @=�^"�_@w1��� @w�+$�_@Y��y�� @���%�_@)?A�� @��\'�_@�k�с @���b�_@���Ё @��a�_@ͻ�2�� @��N_�_@�bGk�� @���]�_@p���� @�O���_@�wO��� @5ז�_@*�͉� @���ю_@MDW��� @��\r�_@������ @;���_@\'�x�� @��J�_@,f=j�� @�v/��_@�?�[�� @�(b��_@�0D��� @�����_@\0�煉� @G����_@��J�w� @u1���_@��w� @\'���_@T�P�e� @�1꺗_@U���e� @2���_@�/T� @�K�}�_@��l=T� @�-|�_@c��uB� @�~\nA�_@��+�B� @�G=?�_@����0� @��\Z�_@����0� @|�M�_@�L� @2+ǎ_@d��� @����_@\'- � @��;��_@�dX\r� @M�n��_@�rǐ�� @�����_@�*�� @}OK�_@���� @�U�I�_@��؀ @2��_@�@؀ @Y�\\�_@7���� @4�:Յ_@ߺ6�� @��ׅ_@\rJԻ�� @�+囃_@�-��� @���`�_@������ @�a�%_@΍���� @��}�|_@R.5��� @�J��|_@`�-� @���#_@��?� @��"_@j�W؀ @8)]�_@�(JI؀ @)s\\[�_@�u��ƀ @̰~��_@�8Tsƀ @0᱔�_@������ @�咃_@��䢀 @u��W�_@w\nq� @�0�U�_@�Q�*�� @A�\Z_@��*9�� @����|_@v<�G�� @�ޏ�z_@V�U�� @�Gâz_@{/;�� @W5�gx_@���� @���ex_@l���m� @�\'dx_@ǝU\r\\� @�,�(v_@O��\\� @��\'v_@�p\rTJ� @�@M%v_@�_o�8� @]+�s_@�Ě8� @��^�s_@��&�&� @�=�q_@0�{�&� @Cro_@���&� @]�Npo_@7�1(� @���no_@�y�`� @P�`3m_@4w�n� @�&?�j_@;}� @�_�h_@FA��� @��h_@ƶ,S� @����h_@6*�\Z\'� @h���j_@��w\'� @����j_@r:�8� @��o�j_@���J� @\'<k_@��Rc\\� @2,^<m_@��T\\� @/r*>m_@w]�n� @N`k_@5S�*n� @\'<k_@��Rc\\� @�\Z�h_@x�q\\� @z�M�h_@�\n�J� @\Z�+�f_@�[�J� @e�_�f_@���8� @��=Ld_@�,�8� @��qJd_@"�p7\'� @��Ob_@���E\'� @���\rb_@7\Z$~� @�b�__@V�u�� @D.��__@I��� @�\\t�]_@G(�� @��RZ[_@8y�� @3�0Y_@����� @�dY_@��*(� @v"C�V_@͑z6� @jw�V_@��n� @:�U�T_@�\Z+}� @b�3jR_@5z�� @�$/P_@��ș� @���0P_@+ha� @��M_@�m�o� @l��K_@\\f~� @�8xI_@r�Q�� @5`VDG_@�&��� @��4	E_@���� @���B_@�P8�� @^��@_@M��� @,��@_@��#�� @��Y>_@\'�o�� @n(x<_@�ĺ�� @7V�9_@���� @�C4�7_@P�� @SNm5_@�$��� @�V�13_@����� @�h%03_@�C� @\Z|�0_@��)� @���._@���7� @ú�._@��5p� @���|,_@�-~~� @�*{,_@)޶� @�P_y,_@��=� @���w,_@5Ý\'� @�N��._@Q�U� @΃�._@Q��Q� @� �._@Bf�� @\0�s,_@�q]�� @]4r,_@=F��v @�ip,_@u	e @�/��._@�+��d @�l��._@�53S @�n,_@��|AS @;�l,_@���yA @���._@s�kA @�0_@z�L]A @�OL�0_@����/ @���0_@��� @�0`�._@��T� @�>i,_@�L�� @�.*_@8��� @�#��\'_@x* @}���\'_@<���/ @7P��%_@�Y�/ @��o�%_@����A @�i:�%_@^RlS @g��%_@�{�3e @�f�#_@��8Be @�뭅#_@�=�	w @�rx�#_@�yш @��VL!_@q��߈ @�@!N!_@/`�� @)��O!_@��\0o� @���_@{mF}� @i�_@���D� @z�^_@�q�� @h�<�_@���\Z� @d�_@p�m�� @Cp�\Z_@����� @,Я�\Z_@�JS�� @2z�\Z_@���� @��D�\Z_@�|�G� @�y"n_@r�U� @�[\03_@�d� @�;��_@�+br� @[{��_@T�:)� @��r�_@߲�;� @`�P�_@U��;� @;�\Z�_@ff��L� @�m��_@����L� @��_@G�l�^� @�@�M\r_@���^� @��}_@���^� @��[�_@�E5�^� @�)9�_@Lw�^� @�$�_@�e�p� @ɶ�b_@�Z�p� @�F�\'_@V`��p� @՛��_@E��p� @�e��_@r�}��� @��/��_@��h�� @K���_@�m_v�� @I�ֶ�_@ɿ\0>�� @.)�{�_@�AL�� @i�}}�_@"g��� @�A[B�_@�X""�� @�$D�_@����ɀ @t��E�_@�0e�ۀ @��\n�_@�ۤ�ۀ @ǝ��_@!TF�� @rO_�_@[��N�� @�m<��_@/\']�� @x��_@���$� @�#��_@C�3� @�����_@zR��"� @^v��_@��J�4� @�QSb�_@����4� @K�d�_@,F+�F� @�z�e�_@���_X� @�R�*�_@bnX� @�݌,�_@\n�5j� @ �i��_@75�Cj� @�&3��_@��|� @�����_@>�.Ӎ� @�,���_@�OК�� @�͢��_@�C��� @�Fl��_@��p�� @��5��_@x�Q8Á @�G��_@�l�FÁ @ڷۅ�_@<71Ձ @�.�J�_@��nՁ @X��L�_@Bf�� @��JN�_@�;���� @?eP�_@�Ts\n� @����_@�/��\n� @LW\'�_@�L��� @ϰ��_@��+��� @�b:��_@��\0� @*���_@T8�� @S���_@�<h��� @�]�a�_@ ���� @d��&�_@ؕ���� @�u��_@թ\Z�� @�>��_@�ڼ�\n� @�>��_@�	_�� @{_���_@U6X.� @�����_@0<f.� @�t��_@�֙�� @�b\Z��_@����\n� @g��v�_@��1�\n� @���x�_@|>Ԭ� @��z�_@O�vt.� @R�Q|�_@�<@� @��-A�_@\0�RJ@� @Q�d?�_@����.� @�ڛ=�_@Y@�� @7��;�_@��k�\n� @��	:�_@n��+�� @?5���_@�\0:�� @�\0�_@�o�� @�Y���_@f��� @�8T��_@���� @���_@H�#�.� @;9���_@zm\\�.� @y�_@Z��t@� @�犑�_@){�<R� @��S��_@��Cd� @�/X�_@�|d� @_��Y�_@9�u� @�Y�[�_@9����� @O5� �_@�*���� @�y��_@"\'2��� @`�T��_@��i̇� @�0o�_@�ڇ� @C\\�p�_@:�C��� @���r�_@P��i�� @���7�_@�mx�� @#�5�_@\Z�z��� @����_@<\n���� @�py��_@X�S��� @�&U��_@>���� @��0��_@eʿ��� @\nL���_@t�bj�� @��ø_@�-\\�� @�$�ĸ_@F��#ς @8�\n\0�_@[��ς @���_@F�<��� @>��<�_@���� @��x�_@+����� @˛�y�_@�q�� @�	��_@�:z� @��Ѷ�_@��A� @�M���_@���3� @����_@8NG�� @I߇��_@����\'� @�x�0�_@�a��\'� @��.�_@~��� @�,j�_@���� @`�,��_@Ų��� @<Q��_@�c�� @�8\Z��_@Kf�\'� @N�>�_@G�{\'� @�YcX�_@���m\'� @2燓�_@5�U_\'� @�r���_@��\ZQ\'� @��	�_@^��B\'� @�:��_@0ހ\n9� @ϾF�_@��D�8� @���D�_@Q��4\'� @	\Z��_@�2f&\'� @��>��_@�J)\'� @�)u��_@�i�P� @X����_@�+JB� @�/�_@Z�4� @���-�_@�jl� @��i�_@V�,^� @�\\=��_@�j�O� @t�s��_@��L�� @����_@�\rz� @Հ���_@,tl�߂ @R���_@Bh-�߂ @�R�_@���߂ @NH;��_@.��߂ @"�q��_@��͂ @ต��_@e�̱͂ @���_@\n�͂ @����_@��ۻ� @�����_@�$+껂 @�"��_@�"�� @/9&��_@�NI�� @sd\\��_@r��L�� @�k�7�_@0g>�� @f��5�_@<��v�� @��p�_@�Ȅh�� @Кo�_@V��t� @��Fm�_@	TB�b� @<�|k�_@��Q� @��i�_@+��I?� @��֤�_@\n��;?� @8m���_@-�|-?� @bq0��_@þ�e-� @�wf��_@J�:�� @l�B��_@)|�� @V�x��_@����	� @����_@�s��	� @Չ���_@$K��� @l�\0_@�u�\0�� @�,\0_@�Z9� @����_@z WG� @�>��_@��ԁ @*b\0_@�=tqԁ @�\Z�\0_@Uө @�~�I_@��� @kw�G_@7\0�Ӱ� @�q\'F_@l�N�� @�n]D_@�֭D�� @���_@\'�k6�� @g��}_@̊�n{� @5��{_@a�)�i� @���_@c��i� @6�2�_@���i� @{�h�_@a�W� @����_@�)b�E� @\0j��_@~8�34� @�q��_@~�B4� @�`�_@c�bz"� @Ys�t_@B��"� @q�r_@_-�� @�p0q_@�c��� @�DS�_@�� ��� @�9��_@��#� @����_@�]=� @�v�_@�W���� @�0@�_@ZO�� @AL\n�_@�D l"� @\0j��_@~8�34� @;`�\'_@�~%4� @�5-&_@�-�]"� @4\rc$_@�G<�� @��_\r_@����� @���]\r_@�X��� @X��[\r_@i\'��� @�B�_@�ss�� @{J�_@���"ۀ @�l�_@���ۀ @Ze�_@�,Jۀ @��	_@�|�>ɀ @0��_@��w�� @�p0_@�h��� @��RA_@0p#��� @h��?_@�ɂٓ� @��z_@��=˓� @7�͵\Z_@pj���� @V�\Z_@��W��� @���x_@�3��� @�Kw_@���;p� @u�8�\Z_@cU�-p� @�9n�\Z_@��f^� @����_@f.�W^� @�Ѳ&_@X/�I^� @>Y}(_@͝+p� @%��c!_@y)�p� @�\Z�a!_@��D;^� @b��#_@-\0�,^� @E��%_@ж^� @k�;(_@B:o^� @�+^N*_@�>\'^� @�j��,_@����]� @ߧ��._@���]� @���0_@-�L�]� @1�:3_@�W�]� @o�<3_@:��o� @YZ�w5_@�2Y�o� @Yc�y5_@��I�� @Znj{5_@Tј�� @�Ɍ�7_@�DN�� @��W�7_@��ʤ� @N�"�7_@D����� @�7_@�t-ZȀ @�<��7_@S+�!ڀ @�^��7_@��l�� @R�O�7_@-���� @T(r�9_@lB���� @U̔7<_@��u��� @�`9<_@\\� @�L+;<_@$��#!� @[�\0:_@ρ\02!� @���:_@h��2� @����7_@���3� @R%|�7_@G��D� @a��:_@�?�D� @�8j:_@jQ߈V� @SG�7_@3�*�V� @R%|�7_@G��D� @EJY�5_@�o��D� @@k$�5_@E\'v�V� @<��5_@��mh� @8���5_@f��4z� @4څ�5_@�AU��� @.Q�5_@Q��Ý� @P�-[3_@@ҝ� @��\\3_@�ߙ�� @�$�^3_@�ya�� @�F�`3_@�2)Ӂ @+kZb3_@���� @a�%d3_@?�^��� @���e3_@�P�� @$N�*1_@�YI�� @�k�,1_@��U\Z� @�c.1_@�׈,� @v�.01_@�(�=� @���11_@�MȬO� @V��31_@�hta� @��51_@��<s� @�Գp3_@hU�-s� @r3_@��[��� @5CJt3_@������ @�q&91_@7!G˖� @3F[71_@yo��� @e7�._@���� @��._@�@�ٖ� @����._@8\02��� @a�/_@m��h�� @d/_@�xq0̂ @�,//_@�1�݂ @[U�/_@�谿� @��/_@��P�� @���\n/_@zP�N� @Q�[/_@M�%� @�\'/_@�/�6� @�>�/_@�\\ϥH� @As�/_@eomZ� @E��L1_@<#_Z� @��N1_@��&l� @\\xP1_@�kb�}� @��CR1_@�\0��� @��T1_@���}�� @R8�U1_@=$AE�� @���W1_@��Ń @\\0ʒ3_@2$��ă @����3_@/�3�փ @��`�3_@Ӎ� @�J,�3_@�rU�� @���3_@�� @6Û3_@k���� @����5_@�=d�� @�l��5_@��/� @�_�8_@\'鵏/� @2�8_@���� @��1M:_@��ȹ� @4:fK:_@�A)�� @���<_@����� @�z��<_@3�;�� @i��<_@�j�T� @>+�G:_@̯�b� @���I:_@���*�� @��u8_@���8�� @m�8_@�8q� @Y��\n8_@K3��փ @�	8_@����ă @����5_@�/G�ă @r#�5_@N��(�� @�H8_@�uZ\Z�� @ɣlB:_@K��� @N%�@:_@�rmD�� @4�|8_@��R�� @}*�8_@ϯ��� @)���5_@8�h��� @5I��5_@�e��}� @B���5_@��)\nl� @N�*�5_@)t�BZ� @[2_�5_@T��zH� @���7_@U�lH� @���7_@���6� @*���7_@�,_�$� @��4:_@\'��$� @eyE2:_@X�r� @�z0:_@v1�?� @#�k<_@b��1� @ҫ�i<_@`�i� @i��.:_@��3x� @�9�,:_@�a��݂ @�6h<_@�G�݂ @K�;f<_@<���˂ @l�+:_@}���˂ @����7_@\0�A�˂ @щ(�7_@D_�/�� @�nL):_@]�U!�� @n�\':_@*\Z�Y�� @��b<_@ �hK�� @�u�`<_@x�Ƀ�� @>\n_<_@�(*��� @��B]<_@��r� @��":_@0��s� @�>��7_@�W$s� @*�/�7_@�ЄIa� @o�d�7_@�G�O� @�[��7_@W�E�=� @r�:_@�S��=� @��\Z:_@�Y�+� @q@&:_@TV�\Z� @��Z:_@��\ZU� @q��:_@�P{��� @!��P<_@��.�� @۞�N<_@wJ��� @��\n�>_@bdB�� @��?�>_@����ҁ @� t�>_@ސ\Z�� @����>_@�#dR�� @S�˿@_@D�� @����B_@V��5�� @e�#�B_@�4*n�� @D�F4E_@�[�_�� @�6E_@�{\'�� @935qG_@�M-�� @O�\0sG_@8|���� @g[�tG_@��k�ҁ @=(�9E_@���ҁ @��t;E_@�OY~� @}�vG_@��\np� @j0��I_@ �a� @���I_@~��ҁ @���K_@��͋ҁ @��5&N_@)�}}ҁ @YaP_@��-oҁ @0=|�R_@��`ҁ @Xd��T_@>��Rҁ @Hk�T_@+\Z� @�y�W_@�G�� @���W_@Ҋ;Dҁ @���MY_@���5ҁ @ة�OY_@��� @��Ԋ[_@r�6�� @���]_@:��� @f��]_@3����� @S�`_@��/��� @�z�`_@�0�a� @�`_@�l)� @��K`_@B�*� @�*oCb_@���*� @���~d_@\Z�c�*� @w>�|d_@<b�� @E�Ab_@�8� @��?b_@��zS� @p��zd_@K	\'E� @�8�f_@���6� @���f_@3&q�� @���h_@p��� @j/��h_@���*� @����h_@��X<� @���1k_@��q<� @fM�lm_@C>�b<� @�ɸnm_@qRL*N� @�1ܩo_@�P�N� @ڼ��o_@S��_� @0��q_@��=�_� @P��!t_@����_� @�G�#t_@�߄�q� @���^v_@e�-�q� @�x�`v_@�\\�G�� @��ϛx_@��s9�� @a���z_@wg+�� @}_@4���� @�+J}_@�3%Uq� @��mK_@rJ�Fq� @����_@\\�r8q� @�Ą�_@>x�p_� @��翃_@�{b_� @�����_@�F*q� @w����_@�+�q� @h[�7�_@��d\rq� @X�s�_@��	�p� @j��t�_@�Ƃ� @b��_@��K��� @��2�_@��既� @h\0�_@��q�� @ٕ#(�_@��0c�� @JGc�_@�9�T�� @��j��_@�7wF�� @��7��_@�\'�� @�d��_@h�շ� @��(ݗ_@?�SǷ� @v�L�_@X����� @�\r\Z\Z�_@�m��ɂ @��=U�_@z4rɂ @U?a��_@hC�cɂ @Մˠ_@�vUɂ @ˆR͠_@�ۂ @=\'v�_@�\r�ۂ @�řC�_@�S\0ۂ @b�~�_@����ڂ @��๩_@w���ڂ @���_@:�0�ڂ @O+(0�_@>���ڂ @��Kk�_@��l�ڂ @��m�_@�	�� @�k=��_@���q� @	a�_@ҰCc� @�1/�_@Һ�*�� @��R �_@rd|�� @0!"�_@�\\�� @��D]�_@ڐ��� @uth��_@E_P�� @~�6��_@6�!� @��Zս_@����!� @@<~�_@4�"r!� @ԪL�_@{7�93� @�npM�_@:�X+3� @1���_@9��3� @��ņ�_@]7WU!� @K\\���_@Q��F!� @�\r\r��_@�U�8!� @D����_@��%\03� @Wk�9�_@����2� @h%#u�_@�3W�2� @u�F��_@�N��2� @n���_@���D� @9j9��_@�9"�D� @�B��_@>m�UV� @�,*�_@��TGV� @�Oe�_@h�8V� @��s��_@�́*V� @"m���_@��V� @�2��_@�d�\rV� @��Q�_@r�B�U� @��P�_@cç7D� @g�@N�_@C�p2� @UUd��_@q١a2� @@����_@�`6S2� @"8W��_@��\ZD� @��z�_@u*eD� @\'����_@���D2� @A�:�_@u>^62� @���u�_@���\'2� @D�w�_@��C� @����_@���C� @S�	��_@�x��C� @���_@��K�U� @l��*�_@��݋U� @�V�,�_@:xSg� @\r�g�_@��	Eg� @%���_@��6g� @6�7��_@r�+(g� @EC[�_@�g� @�+�_@\r+V�x� @��NV�_@*��x� @|�r��_@��u�x� @AH��\0_@��x� @33f�\0_@ʗ�}�� @���	_@�?-o�� @8ĭD_@,��`�� @��}F_@FCU(�� @����_@��� @4mż	_@wp�� @j;��_@Ux���� @�\r3_@�� @4C�4_@̓#��� @&\Zp_@������ @�$�_@�y;��� @;F��_@P��`�� @�%�_@�"`R�� @�=#_@��C�� @-�`^_@��u5�� @ɸ��_@R��&�� @^���_@�S��� @f)y�_@Ua"�Ѓ @�� _@^���Ѓ @��L"_@�w4�Ѓ @���N"_@nc͊� @����$_@$�U|� @O��$_@��C� @}W�$_@�w�� @��\'�$_@�M �� @^���$_@�!��)� @�pɒ$_@1�Qb;� @T>��$_@���)M� @�s��&_@	arM� @JP��&_@��^� @�.`�&_@xڣ�p� @�{�)_@W�*�p� @�hU)_@/��c�� @X&)_@�D\\+�� @��JM+_@y���� @��O+_@gn{䥄 @*@�-_@T�֥� @ho�-_@1i�� @���/_@����� @�޷�1_@D0t� @~���1_@���)�� @V84_@��`�� @%Z/s6_@,z��� @j ^q6_@/MEp� @p_��8_@w�6p� @o���:_@jU(p� @.K��:_@�<�`^� @by� =_@+�@R^� @i��"=_@���p� @[�]?_@�\r\\p� @HG�A_@%���o� @��A�A_@\r�F5^� @*Zp�A_@�ȮmL� @�u��C_@�;1_L� @؎�F_@5I�PL� @��\rF_@�)K^� @B�HH_@���	^� @d҃J_@n�M�]� @���L_@����]� @�;��L_@�nf�o� @����L_@��{�� @j�u�J_@o}��� @ jG�J_@�)R�� @�\Z�J_@���� @���J_@4�Dᶄ @�-�L_@E�Ҷ� @`�3O_@�-EĶ� @6�W>Q_@�ĵ�� @A|yS_@�*D��� @*[�wS_@[��ߤ� @Ww�uS_@�9�� @����U_@x?�	�� @�� �W_@:���� @�+E\'Z_@3�쒄 @dib\\_@b�ޒ� @	{;d\\_@�\'���� @�_�^_@�#��� @����`_@�~���� @K1V�`_@F�7P�� @�e(�`_@���Ȅ @3�Lc_@� K	Ȅ @�qTe_@{.��Ǆ @�dCVe_@#^�ل @��g�g_@�ٳل @�$��i_@�T�ل @1���i_@-��Ǆ @y�l_@V�8�Ǆ @�YAn_@�j��Ǆ @�&|p_@H{-�Ǆ @Tzp_@�Ӗ굄 @kUx�r_@m�ܵ� @ϐ��t_@C�͵� @\'��+w_@O���� @z�fy_@�[{��� @�6	�{_@	󡵄 @k6�{_@�$]ڣ� @��Z�}_@@��ˣ� @��~�_@�YL��� @eآQ�_@�[î�� @��ƌ�_@�9��� @)�ǆ_@{.���� @�\rƆ_@`!\Zʑ� @ <�_@����� @�i��_@���� @~����_@$d,n� @z�8�_@���n� @o��s�_@!�Nn� @[���_@��\0n� @�հ�_@�pY�� @����_@��͹� @C�\'�_@I�A�� @sL�(�_@Em�r�� @�Od�_@��Jd�� @%Q8��_@��U�� @����_@�S�� @��/ܚ_@f3��� @�S�_@�o8\0�� @�wR�_@�F�� @\'wKT�_@�?��� @�o��_@���� @���ʣ_@^�!��� @ONg̣_@:�cƄ @�i��_@��\'UƄ @C,_	�_@M�؄ @sR�D�_@4�,؄ @*��B�_@bߗFƄ @���}�_@`�8Ƅ @����_@��v)Ƅ @��˺�_@���ׄ @ʸ���_@\'�z�ׄ @��1�_@�=��ׄ @=��2�_@~�� @n�_@ �� @�*0��_@`�Y~� @�J��_@�j�E�� @>|(�_@<�[7�� @\n���_@�5��� @����_@�ք�� @ِ���_@(��� @�lج�_@��\r\r� @,�q�_@�\r� @)�6�_@<��*\r� @ͥk��_@-t99\r� @f_G��_@R��G\r� @�#��_@��[V\r� @�4O��_@�Ǝ�� @�*H�_@�#W��� @���I�_@86�d\r� @���_@�U|s\r� @t1�ӣ_@��\r� @R�գ_@<@�I� @<�]ף_@~n61� @-q1٣_@����B� @	�U�_@�;�B� @ʶ)�_@N�БT� @d6NQ�_@l@�T� @�r��_@�tT� @J�F��_@S�D<f� @��\Z��_@���x� @_@��nˉ� @�q�_@|��� @�e���_@3l�Z�� @~\\j��_@DZ-"�� @�$�Ҭ_@\nЛ�� @��\r�_@�	�� @��H�_@&�w��� @q���_@z��羅 @\r1"��_@��Qپ� @{i���_@�I�Ѕ @C4��_@W�R�Ѕ @�F��_@�%�ʾ� @�r��_@��)�� @�j���_@6�;�� @,\r�1�_@�8-�� @���l�_@�m�� @�K��_@�l��� @3�0��_@nC�� @\0v\\��_@�\Z�9�� @��_@*�+�� @���\Z�_@À�cw� @���_@V9�e� @�}�S�_@��[�e� @��\'R�_@e��S� @В�_@��\\�S� @�/�_@1��B� @��\n��_@;�]B� @+e枾_@xh�)B� @�	��_@��]b0� @?��a�_@�4�p0� @�k`�_@�]�� @��=��_@o�ɚ� @��a��_@\0�4�� @x4��_@��}� @Gs�L�_@��\no� @��~N�_@��60� @V<���_@�\Z	(0� @��w��_@�H��A� @[L��_@~t1�S� @q� ��_@8��~e� @E[E��_@�7/pe� @�i�_@�k�ae� @�0�@�_@\0:Se� @x�>�_@@m�S� @��y�_@=��|S� @���{�_@P�iDe� @1�ֶ�_@Ӥ�5e� @�a���_@�A9\'e� @�B���_@�	��v� @J��.�_@�04�v� @4��0�_@��ǧ�� @N\Z�k�_@�.��� @^���_@�㔊�� @d7��_@"��{�� @`y[�_@�H`m�� @S�X�_@�b�^�� @&UZ�_@v�X&�� @P*\\�_@�)�� @w�N��_@9�P߫� @%$��_@�䦽� @V�H��_@A-H��� @����_@�k�_υ @B�_@�?Qυ @}?m�_@\n櫉�� @B�\r�_@w�«� @���_@ׂ���� @�0�	�_@$N�2�� @���_@`_kv� @��B�_@��ˣd� @�4m�_@��8�R� @���_@�f�A� @̖�\0�_@�\'M/� @�J���_@��~�� @	��_@j��� @�����_@LK��� @����_@ ���� @����_@H(��� @��%��_@\'��K� @��H�_@�}�Z� @Vh,F�_@k�ք @!w�_@K��ք @�h3	�_@��	�Ą @���_@��Ą @D�:��_@��!�� @����_@O�/�� @���U�_@�DB>�� @��T�_@y��v�� @��_@?G��� @h<���_@;ߓ�� @Ge���_@m�v��� @n�ݠ�_@���ڏ� @\nݹe�_@!z鏄 @��*�_@����� @Xn�(�_@��|0~� @�����_@�I?~� @��y��_@+G�M~� @#Vw�_@��>\\~� @9��u�_@���l� @/�]:�_@Ż?�l� @�8�_@>e��Z� @��e��_@M@�Z� @nB��_@�W��Z� @��m��_@ �?1I� @L!J��_@���?I� @�u&J�_@�\ZgNI� @�CRH�_@:�҆7� @ˢ.\r�_@]ue�7� @���_@��\\I� @>�ӷ_@վ�kI� @}f���_@P�zI� @�Z疵_@O.��7� @DQ��_@:b��%� @��Y�_@$��%� @�\Z��_@Fd&� @�\n� �_@$P��7� @�_|�_@dH>�7� @��X��_@����7� @b5o�_@�_�7� @/R4�_@z��	8� @7�=2�_@�YB&� @J�i0�_@�u�z� @�q�k�_@m�4l� @F��i�_@î��� @���g�_@�\n��� @�j�,�_@g���� @`��_@6)��� @QB��_@{�2߃ @�̧��_@n�"A߃ @rU�y�_@��O߃ @�Ȱw�_@7�̓ @?\\�<�_@�O��̓ @�޹:�_@f�ϻ� @�|���_@J3�ݻ� @�\r���_@��� @x��_@@��$�� @eV���_@�]�� @\\����_@�Vm��� @	\0\0\0��\nc_@\r���9� @��c_@�)�K� @� i�`_@�嬢K� @v���`_@��9� @8s�^_@Oi��9� @�^_@�2"(� @+���`_@3�~(� @���c_@��(� @��\nc_@\r���9� @	\0\0\0��՜�_@1�K�2� @�����_@���bD� @��c�_@TPqD� @���a�_@�=��2� @�G�&�_@\nT�2� @f�$�_@5,�� � @B�_�_@�%\Z� � @|���_@й�� � @��՜�_@1�K�2� @	\0\0\0�a_@J��j� @�׮__@�}J�\r� @[��]_@������ @���_@�X=��� @�I%�_@�Pɾ�� @����_@�b�\r� @�9Қ_@��֔\r� @�~��_@�<p\\� @�a_@J��j� @\0\0\058Qq_@��{�� @7�o_@���M� @����	_@i�o?� @��t�	_@�~	�� @58Qq_@��{�� @\0\0\0���_@� ֿ�� @�9�_@ʹ;��� @�^5R�_@��鑂 @��T�_@�]h��� @���_@� ֿ�� @\0\0\0�Y���_@}�n��� @1d���_@@����� @}��_@=#j��� @���_@�z�� @�Y���_@}�n��� @\0\0\0���w3_@��:L�� @���y3_@�u�̂ @���>1_@*&"̂ @}μ<1_@�~�Z�� @���w3_@��:L�� @\0\0\0�o�3_@��6� @�:�3_@�7�H� @ڑK1_@���H� @pRKI1_@���6� @�o�3_@��6� @\0\0\0�5�@_@OFش�� @�i�@_@��8�y� @G���B_@���y� @�X�B_@�⊦�� @�5�@_@OFش�� @\0\0\0.���z_@�Ȓ� @�U�wx_@U�� @�vx_@R)��\r� @+A�:v_@c���\r� @�9v_@��9 �� @$9tx_@@>��� @�vx_@R)��\r� @�4(�z_@�D*�\r� @.���z_@�Ȓ� @�^�|_@��p�� @��|_@j�L1� @9�+_@�=1� @[f�,_@�qTC� @�,�._@�%��T� @��l0_@n׏�f� @&@J�|_@���f� @Ą}�|_@~J�T� @�Z�z_@����T� @g.��z_@m�"C� @˃��z_@4�eZ1� @.���z_@�Ȓ� @\0\0\0M�FN_@K,�ǀ @�"{	N_@�.��� @灝DP_@b$>��� @,iFP_@31ݼǀ @%�4HP_@�;|�ـ @�_\rN_@te˒ـ @M�FN_@K,�ǀ @\r\0\0\0���2Y_@�М�ǀ @��&1Y_@J���� @�[/Y_@�1_��� @g5�-Y_@u_�,�� @�p�h[_@�wo�� @��f[_@��V�� @���]_@�uH�� @C�ӣ]_@�*�� @񜟥]_@�ݼף� @��k�]_@�[��� @P�7�]_@>�fǀ @�(n[_@5�Kuǀ @���2Y_@�М�ǀ @\0\0\0�HK�|_@��ִ� @8�~�|_@� �� @Wɠ_@b��\0�� @n}m_@ψfȴ� @�HK�|_@��ִ� @\0\0\0��l�V_@D�;�� @`�8�V_@Vï�� @ƒ�V_@[�Nʵ� @.c��V_@K��ǀ @w���T_@L�=�ǀ @�9�T_@�ޞص� @�޿R_@g��浀 @�)�}R_@"�O�� @���BP_@}�-�� @�3AP_@�\0f�� @��:?P_@��`��� @�VN_@�̯��� @��LN_@<��n� @m�n=P_@p���n� @NM�;P_@K�"]� @wj�vR_@p��\0]� @���T_@���\\� @D?��T_@�#�n� @��~�T_@�	�� @�-��V_@!�qs�� @��l�V_@D�;�� @\0\0\0"`�E_@�A�倀 @Ѡ�RG_@��׀� @��ӍI_@�RLɀ� @W]��I_@��됒� @�}TG_@�N9��� @��HVG_@���f�� @�*&E_@�&u�� @s�ZE_@Т���� @"`�E_@�A�倀 @sm�B_@� 4� @�ǡ�B_@୔,o� @���@_@��:o� @+I��@_@�As]� @Ut��B_@9�d]� @��E_@Hy�V]� @���E_@��Go� @"`�E_@�A�倀 @\0\0\02��9_@d��eo� @����9_@��c-�� @	���7_@#��;�� @F���7_@L�to� @2��9_@d��eo� @	\0\0\0�&]X\r_@luiɀ @T\'Z\r_@�J1ۀ @��_@S�Y?ۀ @:_@��wɀ @�&]X\r_@luiɀ @t��V\r_@U�ԡ�� @]���_@9���� @l��_@j�1[ɀ @�&]X\r_@luiɀ @\0\0\0\0\0\0\0\0\0Ϣ�)_@�k�ۅ @Q�_@�[�ۅ @��I�_@Q`�V� @j;p+_@t�H� @Ϣ�)_@�k�ۅ @\0\0\0\0\0\0\0\0\0`�p�!_@:��څ @��J�_@;n��څ @���_@�9��� @L<�!_@��H�� @`�p�!_@:��څ @\0\0\0\0\0\0\0\0\0Z���_@T��� @���_@��!�� @#{L�_@���܅ @n&��_@���܅ @D0���_@�d�� @K���_@V���� @Z���_@T��� @\0\0\0\0\0\0\0\0\0��_@A�\',� @���f	_@��n:� @T?ah	_@�c�� @����_@�\n���� @��_@A�\',� @\0\0\0\0\0\0\r\0\0\0Z���_@T��� @��\Z�_@��cX� @�u�_@�� #� @K?�_@���4� @����_@���4� @N����_@�#��F� @�z	 �_@��F�F� @)0[�_@vO�F� @��eY�_@�fb�4� @Z��W�_@�{�#� @�y�U�_@�� J� @�CT�_@~���� @Z���_@T��� @\0\0\0\0\0\0\0\0\0�vJ?A_@6�5��� @�qAA_@ޤ�h�� @�&=|C_@��Z�� @5qzC_@�䒝� @�vJ?A_@6�5��� @\0\0\0\0\0\0\0\0\01�b�_@MG�#�� @�3��_@v�Y\\�� @����_@�鸔�� @c���_@W����� @�����_@�4]�{� @�1��_@Bq�j� @��G��_@��LX� @� !��_@�#`ZX� @gg�\\�_@L6�hX� @���^�_@E0j� @�m��_@�\0"j� @ȼ���_@=̡�{� @�\r���_@H�B��� @�`J��_@Nl�x�� @BKq��_@ε�j�� @�;��_@3s?2�� @���_@A9�@�� @#\rߢ�_@&%Æ @���_@�.�� @�-�_@�� @1�b�_@MG�#�� @\0\0\0\0\0\0-\0\0�vJ?A_@6�5��� @~~=A_@{\r�ً� @8��;A_@�>�z� @k��9A_@�mYJh� @��\Z8A_@񚺂V� @ԮN6A_@���D� @��4A_@��|�2� @;Ӷ2A_@��+!� @n��0A_@�:?d� @��/A_@_]���� @5EjC_@�O��� @uAyhC_@�B��� @�O�fC_@3q�م @�iӡE_@�߿�م @`m�E_@�!)ȅ @s;�E_@cU�a�� @Pqa�G_@�}0S�� @0l��G_@�đ��� @i��G_@�	�Ò� @�g��G_@MT��� @�h1�G_@6��4o� @�ke�G_@5�m]� @(�J_@���^]� @7 �	J_@)*&�K� @R\Z�J_@�t��9� @n\'J_@��(� @�[J_@nJ@� @��J_@�G�x� @��\0J_@���� @�\Z��I_@\'�m��� @� +�I_@?�!τ @���G_@�z 0τ @��9�G_@R��h�� @3��E_@���v�� @ܷH�E_@M�3��� @��|�E_@�ה癄 @j��G_@��Cٙ� @M*ֺG_@+ ��� @0G\n�G_@TDJv� @�]/�I_@��;v� @mM��I_@��S�� @�n 1L_@R��� @��ElN_@?R�懄 @�nN_@+�N��� @��6�P_@������ @0��P_@:!�g�� @�(�R_@�6HY�� @��[�R_@����� @��U_@ElV��� @ߴU_@9𷻇� @D��U_@r�u� @���R_@��lv� @���R_@��:d� @��\ZU_@��z,d� @�UPU_@�o�dR� @�b+�R_@�q/sR� @F_�R_@\rސ�@� @+��R_@\rH��.� @N�U_@e��.� @���U_@��\0� @ԺU_@RbF� @�xDLW_@�(8� @	JxJW_@��pp�� @��HW_@�,Ҩ� @��ЃY_@��~�� @p��Y_@;K��Ճ @,S8�Y_@��Aă @�l~Y_@)b�C�� @��[_@?�O5�� @�[ķ[_@@S�m�� @��|Y_@��|�� @a��zY_@�pf��� @�yY_@���|� @�f;wY_@Iw)%k� @�=ouY_@f��]Y� @�K:W_@e��kY� @<W_@�y|3k� @�<�=W_@T�|� @�U_@ҳm	}� @���U_@�Nю� @vWU_@�窘�� @0&#U_@�~I`�� @R���R_@L��n�� @G���R_@��:6ă @<�R_@";��Ճ @�&r�P_@9j+փ @+>�P_@,\Z��� @ـ\\N_@��� @Cz�]N_@������ @Q��"L_@^3��� @_��I_@bP]��� @@�g�I_@+��� @"�3�I_@��U� @���I_@<�9/� @��ڱG_@U��+/� @���G_@)��c� @�C�G_@��L�� @lIw�G_@����� @Pv��G_@M\r� @4�ߨG_@�,pEփ @�H�I_@ޔ7փ @&��I_@�s��� @��� L_@Hfm�� @ـ\\N_@��� @l�MZN_@�3}\Zփ @��XN_@�q�Ră @���VN_@6�?��� @�\Z�L_@�򐙲� @6�L_@!�Ѡ� @pS�L_@�ES\n�� @�r-L_@)l�B}� @)�aL_@��{k� @���L_@��v�Y� @�oq�I_@jC��Y� @����I_@T(�G� @����I_@�b�26� @��I_@<o�j$� @/��G_@k:y$� @H���G_@#n�@6� @�r�]E_@�)O6� @v��[E_@!��$� @��� C_@q1ٕ$� @q}�@_@\0�\'�$� @=ܱ�@_@Ȉ�� @I���>_@8��� @V�im<_@�%�� @�5o<_@�_��$� @ڔ\0q<_@��c�6� @�r<_@\0PH� @_��t<_@M�Z� @�cv<_@�A�k� @ly��>_@�Z��k� @qS�>_@Ǔ��}� @�.x<_@���}� @#%�y<_@�\'�n�� @e��{<_@rl6�� @�9�}<_@"����� @��\\<_@��]�ă @�g��>_@8d�ă @�M�>_@,��~փ @��q�@_@A�_pփ @�Y=�@_@���7� @�	�@_@�ʝ��� @��-6C_@�DN��� @��7C_@PN�� @�B�9C_@�U��� @)f��@_@��ێ� @]���@_@��<�� @�	�@_@�ʝ��� @�A�>_@���\r�� @���>_@���� @���<_@����� @,�V�<_@�z�� @��1M:_@��ȹ� @+Q�N:_@��g�/� @m@"�<_@\ZHs/� @���<_@Gz�:A� @���P:_@M\rIA� @��8_@�:UWA� @Qeo8_@ۉ�S� @!p�R:_@M�S� @�`T:_@��E�d� @�+V:_@6��v� @n�P�<_@]��v� @�\\�<_@F.5Y�� @��<_@V� �� @-���<_@�{s諄 @����>_@q%$ګ� @ߥ��>_@�9á�� @�]p�>_@�Kbiτ @�<�>_@�[1� @���>_@{i��� @����>_@Hu?�� @k��<_@���� @��y�<_@13.�� @�sE�<_@�J�](� @)+�<_@�_l%:� @O|�i:_@Qͻ3:� @�(�k:_@�Z�K� @@ׂm:_@���]� @�]28_@�7I�]� @��(48_@f�o� @;V�58_@?��`�� @���78_@f�&(�� @1��5_@X�u6�� @�e�5_@\n���� @G1\06_@��Ŷ� @���6_@8MS�ȅ @����3_@*��ȅ @Я��1_@JY�ȅ @-9|�1_@���qڅ @W\rVR/_@��څ @�!T/_@}G� @��U/_@Ia�� @��\Z-_@�j�� @�:�-_@7�	�� @��k�*_@D�V�� @�O7�*_@~X��!� @̼�*_@�͕�3� @Kܩ(_@��3� @T���(_@�i�XE� @�,�p&_@�,�fE� @M�Lr&_@*�n.W� @�%7$_@*�<W� @�A�8$_@��Zi� @����!_@�ަi� @���!_@щF�z� @�8o�_@DJ��z� @�H�_@���z� @E��_@6m}��� @���O_@�q�̌� @\Z7�_@ی� @�u��_@�H]錆 @�{j�_@�=���� @)�C�_@B G��� @�x�_@����� @����_@�0{� @�q��_@�Q�!{� @Q&�_@�(s{� @�0_@�>�Ki� @�o	�_@~XZi� @�o>�_@;]}�W� @�\ne_@KS3�W� @���\r_@�e��E� @)��_@�u��3� @�v�F_@"%��3� @Fc*E_@�B	"� @]�\n_@݃S-"� @r{��_@_�;"� @k��_@�[�s� @��8_@폳e� @��m_@����� @B�A_@xɏ�� @x��|_@n�~��� @�z_@�߹� @�4�?_@��)�� @�(�=_@��\0ۅ @��_@ħ�ۅ @Q���_@�Dۅ @�c��_@�{f+ۅ @�HV�_@���� @5�/S_@�uO� @��	_@��� @Wo�_@&\'8��� @���T_@������ @(��V_@J���� @\n?�_@l[؞� @��x�\r_@�� �� @ՓC�\r_@���t"� @��_@���"� @��_@���J4� @iA�m	_@���X4� @���o	_@�� F� @UTe4_@ �.F� @�>�_@��=F� @�M	�_@�Z�X� @x���_@��_�i� @v��7_@���i� @H�9_@�M��{� @@���_@_H\0�{� @x���_@��_�i� @~-��_@�W��i� @|�w�_@��F�{� @{MB�_@.`�i�� @x��_@f�1�� @(��\0_@C/�?�� @\\���\0_@��n�� @G��R�_@����� @�TT�_@�QU� @�{�\0_@�J� @m��_@���� @N�_@�\n�� @0��@_@ �:� @�|	_@�3� @��=�_@</�� @��d�\r_@�by @�ɋ-_@��k @���h_@��\\ @��٣_@W#�N @��\0�_@�!=@ @lu\'\Z_@U��1 @V[NU_@�# @D?u�_@�\\ @2!��_@�  @!�"_@2"���� @��A$_@��x��� @�}&_@�+��� @�7�(_@������ @�l^�*_@�,���� @�B�.-_@�0C��� @��i/_@������ @��Ҥ1_@����� @dE�1_@%�ͯ� @�.�3_@2����� @��T6_@j/h��� @�{T8_@�E��� @F��:_@R�Ǔ�� @B��<_@Aw��� @o��?_@�%&w�� @k�#?_@�K���� @�vJ?A_@6�5��� @\0\0\0][�>_@��AH� @V�$�>_@W�z6� @�I�@_@�-�k6� @���@_@�]f3H� @][�>_@��AH� @\0\0\0��ތ_@�3��� @���_@���M�� @�7�S_@K\\�� @=�Q_@xGh��� @��ތ_@�3��� @\0\0\0���\r_@����W� @�#��\r_@OF� @�� _@���E� @�N&\\_@!#p�E� @3�]_@�?�W� @ȑ�"_@Y�W� @���\r_@����W� @');

-- --------------------------------------------------------

--
-- Table structure for table `household_heads`
--

CREATE TABLE `household_heads` (
  `building_id` int(10) UNSIGNED NOT NULL,
  `resident_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `household_heads`
--

INSERT INTO `household_heads` (`building_id`, `resident_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 8, NULL, NULL),
(9, 9, NULL, NULL),
(10, 10, NULL, NULL),
(11, 11, NULL, NULL),
(12, 12, NULL, NULL),
(13, 13, NULL, NULL),
(14, 14, NULL, NULL),
(15, 15, NULL, NULL),
(16, 16, NULL, NULL),
(17, 17, NULL, NULL),
(18, 18, NULL, NULL),
(19, 19, NULL, NULL),
(20, 20, NULL, NULL),
(21, 21, NULL, NULL),
(22, 22, NULL, NULL),
(23, 23, NULL, NULL),
(24, 24, NULL, NULL),
(25, 25, NULL, NULL),
(26, 26, NULL, NULL),
(27, 27, NULL, NULL),
(28, 28, NULL, NULL),
(29, 29, NULL, NULL),
(30, 30, NULL, NULL),
(31, 31, NULL, NULL),
(32, 32, NULL, NULL),
(33, 33, NULL, NULL),
(34, 34, NULL, NULL),
(35, 35, NULL, NULL),
(36, 36, NULL, NULL),
(37, 37, NULL, NULL),
(38, 38, NULL, NULL),
(39, 39, NULL, NULL),
(40, 40, NULL, NULL),
(41, 41, NULL, NULL),
(42, 42, NULL, NULL),
(43, 43, NULL, NULL),
(44, 44, NULL, NULL),
(45, 45, NULL, NULL),
(46, 46, NULL, NULL),
(47, 47, NULL, NULL),
(48, 48, NULL, NULL),
(49, 49, NULL, NULL),
(50, 50, NULL, NULL),
(51, 51, NULL, NULL),
(52, 52, NULL, NULL),
(53, 53, NULL, NULL),
(54, 54, NULL, NULL),
(55, 55, NULL, NULL),
(56, 56, NULL, NULL),
(57, 57, NULL, NULL),
(58, 58, NULL, NULL),
(59, 59, NULL, NULL),
(60, 60, NULL, NULL),
(61, 61, NULL, NULL),
(62, 62, NULL, NULL),
(63, 63, NULL, NULL),
(64, 64, NULL, NULL),
(65, 65, NULL, NULL),
(66, 66, NULL, NULL),
(67, 67, NULL, NULL),
(68, 68, NULL, NULL),
(69, 69, NULL, NULL),
(70, 70, NULL, NULL),
(71, 71, NULL, NULL),
(72, 72, NULL, NULL),
(73, 73, NULL, NULL),
(74, 74, NULL, NULL),
(75, 75, NULL, NULL),
(76, 76, NULL, NULL),
(77, 77, NULL, NULL),
(78, 78, NULL, NULL),
(79, 79, NULL, NULL),
(80, 80, NULL, NULL),
(81, 81, NULL, NULL),
(82, 82, NULL, NULL),
(83, 83, NULL, NULL),
(84, 84, NULL, NULL),
(85, 85, NULL, NULL),
(86, 86, NULL, NULL),
(87, 87, NULL, NULL),
(88, 88, NULL, NULL),
(89, 89, NULL, NULL),
(90, 90, NULL, NULL),
(91, 91, NULL, NULL),
(92, 92, NULL, NULL),
(93, 93, NULL, NULL),
(94, 94, NULL, NULL),
(95, 95, NULL, NULL),
(96, 96, NULL, NULL),
(97, 97, NULL, NULL),
(98, 98, NULL, NULL),
(99, 99, NULL, NULL),
(100, 100, NULL, NULL),
(101, 101, NULL, NULL),
(102, 102, NULL, NULL),
(103, 103, NULL, NULL),
(104, 104, NULL, NULL),
(105, 105, NULL, NULL),
(106, 106, NULL, NULL),
(107, 107, NULL, NULL),
(108, 108, NULL, NULL),
(109, 109, NULL, NULL),
(110, 110, NULL, NULL),
(111, 111, NULL, NULL),
(112, 112, NULL, NULL),
(113, 113, NULL, NULL),
(114, 114, NULL, NULL),
(115, 115, NULL, NULL),
(116, 116, NULL, NULL),
(117, 117, NULL, NULL),
(118, 118, NULL, NULL),
(119, 119, NULL, NULL),
(120, 120, NULL, NULL),
(121, 121, NULL, NULL),
(122, 122, NULL, NULL),
(123, 123, NULL, NULL),
(124, 124, NULL, NULL),
(125, 125, NULL, NULL),
(126, 126, NULL, NULL),
(127, 127, NULL, NULL),
(128, 128, NULL, NULL),
(129, 129, NULL, NULL),
(130, 130, NULL, NULL),
(131, 131, NULL, NULL),
(132, 132, NULL, NULL),
(133, 133, NULL, NULL),
(134, 134, NULL, NULL),
(135, 135, NULL, NULL),
(136, 136, NULL, NULL),
(137, 137, NULL, NULL),
(138, 138, NULL, NULL),
(139, 139, NULL, NULL),
(140, 140, NULL, NULL),
(141, 141, NULL, NULL),
(142, 142, NULL, NULL),
(143, 143, NULL, NULL),
(144, 144, NULL, NULL),
(145, 145, NULL, NULL),
(146, 146, NULL, NULL),
(147, 147, NULL, NULL),
(148, 148, NULL, NULL),
(149, 149, NULL, NULL),
(150, 150, NULL, NULL),
(151, 151, NULL, NULL),
(152, 152, NULL, NULL),
(153, 153, NULL, NULL),
(154, 154, NULL, NULL),
(155, 155, NULL, NULL),
(156, 156, NULL, NULL),
(157, 157, NULL, NULL),
(158, 158, NULL, NULL),
(159, 159, NULL, NULL),
(160, 160, NULL, NULL),
(161, 161, NULL, NULL),
(162, 162, NULL, NULL),
(163, 163, NULL, NULL),
(164, 164, NULL, NULL),
(165, 165, NULL, NULL),
(166, 166, NULL, NULL),
(167, 167, NULL, NULL),
(168, 168, NULL, NULL),
(169, 169, NULL, NULL),
(170, 170, NULL, NULL),
(171, 171, NULL, NULL),
(172, 172, NULL, NULL),
(173, 173, NULL, NULL),
(174, 174, NULL, NULL),
(175, 175, NULL, NULL),
(176, 176, NULL, NULL),
(177, 177, NULL, NULL),
(178, 178, NULL, NULL),
(179, 179, NULL, NULL),
(180, 180, NULL, NULL),
(181, 181, NULL, NULL),
(182, 182, NULL, NULL),
(183, 183, NULL, NULL),
(184, 184, NULL, NULL),
(185, 185, NULL, NULL),
(186, 186, NULL, NULL),
(187, 187, NULL, NULL),
(188, 188, NULL, NULL),
(189, 189, NULL, NULL),
(190, 190, NULL, NULL),
(191, 191, NULL, NULL),
(192, 192, NULL, NULL),
(193, 193, NULL, NULL),
(194, 194, NULL, NULL),
(195, 195, NULL, NULL),
(196, 196, NULL, NULL),
(197, 197, NULL, NULL),
(198, 198, NULL, NULL),
(199, 199, NULL, NULL),
(200, 200, NULL, NULL),
(201, 201, NULL, NULL),
(202, 202, NULL, NULL),
(203, 203, NULL, NULL),
(204, 204, NULL, NULL),
(205, 205, NULL, NULL),
(206, 206, NULL, NULL),
(207, 207, NULL, NULL),
(208, 208, NULL, NULL),
(209, 209, NULL, NULL),
(210, 210, NULL, NULL),
(211, 211, NULL, NULL),
(212, 212, NULL, NULL),
(213, 213, NULL, NULL),
(214, 214, NULL, NULL),
(215, 215, NULL, NULL),
(216, 216, NULL, NULL),
(217, 217, NULL, NULL),
(218, 218, NULL, NULL),
(219, 219, NULL, NULL),
(220, 220, NULL, NULL),
(221, 221, NULL, NULL),
(222, 222, NULL, NULL),
(223, 223, NULL, NULL),
(224, 224, NULL, NULL),
(225, 225, NULL, NULL),
(226, 226, NULL, NULL),
(227, 227, NULL, NULL),
(228, 228, NULL, NULL),
(229, 229, NULL, NULL),
(230, 230, NULL, NULL),
(231, 231, NULL, NULL),
(232, 232, NULL, NULL),
(233, 233, NULL, NULL),
(234, 234, NULL, NULL),
(235, 235, NULL, NULL),
(236, 236, NULL, NULL),
(237, 237, NULL, NULL),
(238, 238, NULL, NULL),
(239, 239, NULL, NULL),
(240, 240, NULL, NULL),
(241, 241, NULL, NULL),
(242, 242, NULL, NULL),
(243, 243, NULL, NULL),
(244, 244, NULL, NULL),
(245, 245, NULL, NULL),
(246, 246, NULL, NULL),
(247, 247, NULL, NULL),
(248, 248, NULL, NULL),
(249, 249, NULL, NULL),
(250, 250, NULL, NULL),
(251, 251, NULL, NULL),
(252, 252, NULL, NULL),
(253, 253, NULL, NULL),
(254, 254, NULL, NULL),
(255, 255, NULL, NULL),
(256, 256, NULL, NULL),
(257, 257, NULL, NULL),
(258, 258, NULL, NULL),
(259, 259, NULL, NULL),
(260, 260, NULL, NULL),
(261, 261, NULL, NULL),
(262, 262, NULL, NULL),
(263, 263, NULL, NULL),
(264, 264, NULL, NULL),
(265, 265, NULL, NULL),
(266, 266, NULL, NULL),
(267, 267, NULL, NULL),
(268, 268, NULL, NULL),
(269, 269, NULL, NULL),
(270, 270, NULL, NULL),
(271, 271, NULL, NULL),
(272, 272, NULL, NULL),
(273, 273, NULL, NULL),
(274, 274, NULL, NULL),
(275, 275, NULL, NULL),
(276, 276, NULL, NULL),
(277, 277, NULL, NULL),
(278, 278, NULL, NULL),
(279, 279, NULL, NULL),
(280, 280, NULL, NULL),
(281, 281, NULL, NULL),
(282, 282, NULL, NULL),
(283, 283, NULL, NULL),
(284, 284, NULL, NULL),
(285, 285, NULL, NULL),
(286, 286, NULL, NULL),
(287, 287, NULL, NULL),
(288, 288, NULL, NULL),
(289, 289, NULL, NULL),
(290, 290, NULL, NULL),
(291, 291, NULL, NULL),
(292, 292, NULL, NULL),
(293, 293, NULL, NULL),
(294, 294, NULL, NULL),
(295, 295, NULL, NULL),
(296, 296, NULL, NULL),
(297, 297, NULL, NULL),
(298, 298, NULL, NULL),
(299, 299, NULL, NULL),
(300, 300, NULL, NULL),
(301, 301, NULL, NULL),
(302, 302, NULL, NULL),
(303, 303, NULL, NULL),
(304, 304, NULL, NULL),
(305, 305, NULL, NULL),
(306, 306, NULL, NULL),
(307, 307, NULL, NULL),
(308, 308, NULL, NULL),
(309, 309, NULL, NULL),
(310, 310, NULL, NULL),
(311, 311, NULL, NULL),
(312, 312, NULL, NULL),
(313, 313, NULL, NULL),
(314, 314, NULL, NULL),
(315, 315, NULL, NULL),
(316, 316, NULL, NULL),
(317, 317, NULL, NULL),
(318, 318, NULL, NULL),
(319, 319, NULL, NULL),
(320, 320, NULL, NULL),
(321, 321, NULL, NULL),
(322, 322, NULL, NULL),
(323, 323, NULL, NULL),
(324, 324, NULL, NULL),
(325, 325, NULL, NULL),
(326, 326, NULL, NULL),
(327, 327, NULL, NULL),
(328, 328, NULL, NULL),
(329, 329, NULL, NULL),
(330, 330, NULL, NULL),
(331, 331, NULL, NULL),
(332, 332, NULL, NULL),
(333, 333, NULL, NULL),
(334, 334, NULL, NULL),
(335, 335, NULL, NULL),
(336, 336, NULL, NULL),
(337, 337, NULL, NULL),
(338, 338, NULL, NULL),
(339, 339, NULL, NULL),
(340, 340, NULL, NULL),
(341, 341, NULL, NULL),
(342, 342, NULL, NULL),
(343, 343, NULL, NULL),
(344, 344, NULL, NULL),
(345, 345, NULL, NULL),
(346, 346, NULL, NULL),
(347, 347, NULL, NULL),
(348, 348, NULL, NULL),
(349, 349, NULL, NULL),
(350, 350, NULL, NULL),
(351, 351, NULL, NULL),
(352, 352, NULL, NULL),
(353, 353, NULL, NULL),
(354, 354, NULL, NULL),
(355, 355, NULL, NULL),
(356, 356, NULL, NULL),
(357, 357, NULL, NULL),
(358, 358, NULL, NULL),
(359, 359, NULL, NULL),
(360, 360, NULL, NULL),
(361, 361, NULL, NULL),
(362, 362, NULL, NULL),
(363, 363, NULL, NULL),
(364, 364, NULL, NULL),
(365, 365, NULL, NULL),
(366, 366, NULL, NULL),
(367, 367, NULL, NULL),
(368, 368, NULL, NULL),
(369, 369, NULL, NULL),
(370, 370, NULL, NULL),
(371, 371, NULL, NULL),
(372, 372, NULL, NULL),
(373, 373, NULL, NULL),
(374, 374, NULL, NULL),
(375, 375, NULL, NULL),
(376, 376, NULL, NULL),
(377, 377, NULL, NULL),
(378, 378, NULL, NULL),
(379, 379, NULL, NULL),
(380, 380, NULL, NULL),
(381, 381, NULL, NULL),
(382, 382, NULL, NULL),
(383, 383, NULL, NULL),
(384, 384, NULL, NULL),
(385, 385, NULL, NULL),
(386, 386, NULL, NULL),
(387, 387, NULL, NULL),
(388, 388, NULL, NULL),
(389, 389, NULL, NULL),
(390, 390, NULL, NULL),
(391, 391, NULL, NULL),
(392, 392, NULL, NULL),
(393, 393, NULL, NULL),
(394, 394, NULL, NULL),
(395, 395, NULL, NULL),
(396, 396, NULL, NULL),
(397, 397, NULL, NULL),
(398, 398, NULL, NULL),
(399, 399, NULL, NULL),
(400, 400, NULL, NULL),
(401, 401, NULL, NULL),
(402, 402, NULL, NULL),
(403, 403, NULL, NULL),
(404, 404, NULL, NULL),
(405, 405, NULL, NULL),
(406, 406, NULL, NULL),
(407, 407, NULL, NULL),
(408, 408, NULL, NULL),
(409, 409, NULL, NULL),
(410, 410, NULL, NULL),
(411, 411, NULL, NULL),
(412, 412, NULL, NULL),
(413, 413, NULL, NULL),
(414, 414, NULL, NULL),
(415, 415, NULL, NULL),
(416, 416, NULL, NULL),
(417, 417, NULL, NULL),
(418, 418, NULL, NULL),
(419, 419, NULL, NULL),
(420, 420, NULL, NULL),
(421, 421, NULL, NULL),
(422, 422, NULL, NULL),
(423, 423, NULL, NULL),
(424, 424, NULL, NULL),
(425, 425, NULL, NULL),
(426, 426, NULL, NULL),
(427, 427, NULL, NULL),
(428, 428, NULL, NULL),
(429, 429, NULL, NULL),
(430, 430, NULL, NULL),
(431, 431, NULL, NULL),
(432, 432, NULL, NULL),
(433, 433, NULL, NULL),
(434, 434, NULL, NULL),
(435, 435, NULL, NULL),
(436, 436, NULL, NULL),
(437, 437, NULL, NULL),
(438, 438, NULL, NULL),
(439, 439, NULL, NULL),
(440, 440, NULL, NULL),
(441, 441, NULL, NULL),
(442, 442, NULL, NULL),
(443, 443, NULL, NULL),
(444, 444, NULL, NULL),
(445, 445, NULL, NULL),
(446, 446, NULL, NULL),
(447, 447, NULL, NULL),
(448, 448, NULL, NULL),
(449, 449, NULL, NULL),
(450, 450, NULL, NULL),
(451, 451, NULL, NULL),
(452, 452, NULL, NULL),
(453, 453, NULL, NULL),
(454, 454, NULL, NULL),
(455, 455, NULL, NULL),
(456, 456, NULL, NULL),
(457, 457, NULL, NULL),
(458, 458, NULL, NULL),
(459, 459, NULL, NULL),
(460, 460, NULL, NULL),
(461, 461, NULL, NULL),
(462, 462, NULL, NULL),
(463, 463, NULL, NULL),
(464, 464, NULL, NULL),
(465, 465, NULL, NULL),
(466, 466, NULL, NULL),
(467, 467, NULL, NULL),
(468, 468, NULL, NULL),
(469, 469, NULL, NULL),
(470, 470, NULL, NULL),
(471, 471, NULL, NULL),
(472, 472, NULL, NULL),
(473, 473, NULL, NULL),
(474, 474, NULL, NULL),
(475, 475, NULL, NULL),
(476, 476, NULL, NULL),
(477, 477, NULL, NULL),
(478, 478, NULL, NULL),
(479, 479, NULL, NULL),
(480, 480, NULL, NULL),
(481, 481, NULL, NULL),
(482, 482, NULL, NULL),
(483, 483, NULL, NULL),
(484, 484, NULL, NULL),
(485, 485, NULL, NULL),
(486, 486, NULL, NULL),
(487, 487, NULL, NULL),
(488, 488, NULL, NULL),
(489, 489, NULL, NULL),
(490, 490, NULL, NULL),
(491, 491, NULL, NULL),
(492, 492, NULL, NULL),
(493, 493, NULL, NULL),
(494, 494, NULL, NULL),
(495, 495, NULL, NULL),
(496, 496, NULL, NULL),
(497, 497, NULL, NULL),
(498, 498, NULL, NULL),
(499, 499, NULL, NULL),
(500, 500, NULL, NULL),
(501, 501, NULL, NULL),
(502, 502, NULL, NULL),
(503, 503, NULL, NULL),
(504, 504, NULL, NULL),
(505, 505, NULL, NULL),
(506, 506, NULL, NULL),
(507, 507, NULL, NULL),
(508, 508, NULL, NULL),
(509, 509, NULL, NULL),
(510, 510, NULL, NULL),
(511, 511, NULL, NULL),
(512, 512, NULL, NULL),
(513, 513, NULL, NULL),
(514, 514, NULL, NULL),
(515, 515, NULL, NULL),
(516, 516, NULL, NULL),
(517, 517, NULL, NULL),
(518, 518, NULL, NULL),
(519, 519, NULL, NULL),
(520, 520, NULL, NULL),
(521, 521, NULL, NULL),
(522, 522, NULL, NULL),
(523, 523, NULL, NULL),
(524, 524, NULL, NULL),
(525, 525, NULL, NULL),
(526, 526, NULL, NULL),
(527, 527, NULL, NULL),
(528, 528, NULL, NULL),
(529, 529, NULL, NULL),
(530, 530, NULL, NULL),
(531, 531, NULL, NULL),
(532, 532, NULL, NULL),
(533, 533, NULL, NULL),
(534, 534, NULL, NULL),
(535, 535, NULL, NULL),
(536, 536, NULL, NULL),
(537, 537, NULL, NULL),
(538, 538, NULL, NULL),
(539, 539, NULL, NULL),
(540, 540, NULL, NULL),
(541, 541, NULL, NULL),
(542, 542, NULL, NULL),
(543, 543, NULL, NULL),
(544, 544, NULL, NULL),
(545, 545, NULL, NULL),
(546, 546, NULL, NULL),
(547, 547, NULL, NULL),
(548, 548, NULL, NULL),
(549, 549, NULL, NULL),
(550, 550, NULL, NULL),
(551, 551, NULL, NULL),
(552, 552, NULL, NULL),
(553, 553, NULL, NULL),
(554, 554, NULL, NULL),
(555, 555, NULL, NULL),
(556, 556, NULL, NULL),
(557, 557, NULL, NULL),
(558, 558, NULL, NULL),
(559, 559, NULL, NULL),
(560, 560, NULL, NULL),
(561, 561, NULL, NULL),
(562, 562, NULL, NULL),
(563, 563, NULL, NULL),
(564, 564, NULL, NULL),
(565, 565, NULL, NULL),
(566, 566, NULL, NULL),
(567, 567, NULL, NULL),
(568, 568, NULL, NULL),
(569, 569, NULL, NULL),
(570, 570, NULL, NULL),
(571, 571, NULL, NULL),
(572, 572, NULL, NULL),
(573, 573, NULL, NULL),
(574, 574, NULL, NULL),
(575, 575, NULL, NULL),
(576, 576, NULL, NULL),
(577, 577, NULL, NULL),
(578, 578, NULL, NULL),
(579, 579, NULL, NULL),
(580, 580, NULL, NULL),
(581, 581, NULL, NULL),
(582, 582, NULL, NULL),
(583, 583, NULL, NULL),
(584, 584, NULL, NULL),
(585, 585, NULL, NULL),
(586, 586, NULL, NULL),
(587, 587, NULL, NULL),
(588, 588, NULL, NULL),
(589, 589, NULL, NULL),
(590, 590, NULL, NULL),
(591, 591, NULL, NULL),
(592, 592, NULL, NULL),
(593, 593, NULL, NULL),
(594, 594, NULL, NULL),
(595, 595, NULL, NULL),
(596, 596, NULL, NULL),
(597, 597, NULL, NULL),
(598, 598, NULL, NULL),
(599, 599, NULL, NULL),
(600, 600, NULL, NULL),
(601, 601, NULL, NULL),
(602, 602, NULL, NULL),
(603, 603, NULL, NULL),
(604, 604, NULL, NULL),
(605, 605, NULL, NULL),
(606, 606, NULL, NULL),
(607, 607, NULL, NULL),
(608, 608, NULL, NULL),
(609, 609, NULL, NULL),
(610, 610, NULL, NULL),
(611, 611, NULL, NULL),
(612, 612, NULL, NULL),
(613, 613, NULL, NULL),
(614, 614, NULL, NULL),
(615, 615, NULL, NULL),
(616, 616, NULL, NULL),
(617, 617, NULL, NULL),
(618, 618, NULL, NULL),
(619, 619, NULL, NULL),
(620, 620, NULL, NULL),
(621, 621, NULL, NULL),
(622, 622, NULL, NULL),
(623, 623, NULL, NULL),
(624, 624, NULL, NULL),
(625, 625, NULL, NULL),
(626, 626, NULL, NULL),
(627, 627, NULL, NULL),
(628, 628, NULL, NULL),
(629, 629, NULL, NULL),
(630, 630, NULL, NULL),
(631, 631, NULL, NULL),
(632, 632, NULL, NULL),
(633, 633, NULL, NULL),
(634, 634, NULL, NULL),
(635, 635, NULL, NULL),
(636, 636, NULL, NULL),
(637, 637, NULL, NULL),
(638, 638, NULL, NULL),
(639, 639, NULL, NULL),
(640, 640, NULL, NULL),
(641, 641, NULL, NULL),
(642, 642, NULL, NULL),
(643, 643, NULL, NULL),
(644, 644, NULL, NULL),
(645, 645, NULL, NULL),
(646, 646, NULL, NULL),
(647, 647, NULL, NULL),
(648, 648, NULL, NULL),
(649, 649, NULL, NULL),
(650, 650, NULL, NULL),
(651, 651, NULL, NULL),
(652, 652, NULL, NULL),
(653, 653, NULL, NULL),
(654, 654, NULL, NULL),
(655, 655, NULL, NULL),
(656, 656, NULL, NULL),
(657, 657, NULL, NULL),
(658, 658, NULL, NULL),
(659, 659, NULL, NULL),
(660, 660, NULL, NULL),
(661, 661, NULL, NULL),
(662, 662, NULL, NULL),
(663, 663, NULL, NULL),
(664, 664, NULL, NULL),
(665, 665, NULL, NULL),
(666, 666, NULL, NULL),
(667, 667, NULL, NULL),
(668, 668, NULL, NULL),
(669, 669, NULL, NULL),
(670, 670, NULL, NULL),
(671, 671, NULL, NULL),
(672, 672, NULL, NULL),
(673, 673, NULL, NULL),
(674, 674, NULL, NULL),
(675, 675, NULL, NULL),
(676, 676, NULL, NULL),
(677, 677, NULL, NULL),
(678, 678, NULL, NULL),
(679, 679, NULL, NULL),
(680, 680, NULL, NULL),
(681, 681, NULL, NULL),
(682, 682, NULL, NULL),
(683, 683, NULL, NULL),
(684, 684, NULL, NULL),
(685, 685, NULL, NULL),
(686, 686, NULL, NULL),
(687, 687, NULL, NULL),
(688, 688, NULL, NULL),
(689, 689, NULL, NULL),
(690, 690, NULL, NULL),
(691, 691, NULL, NULL),
(692, 692, NULL, NULL),
(693, 693, NULL, NULL),
(694, 694, NULL, NULL),
(695, 695, NULL, NULL),
(696, 696, NULL, NULL),
(697, 697, NULL, NULL),
(698, 698, NULL, NULL),
(699, 699, NULL, NULL),
(700, 700, NULL, NULL),
(701, 701, NULL, NULL),
(702, 702, NULL, NULL),
(703, 703, NULL, NULL),
(704, 704, NULL, NULL),
(705, 705, NULL, NULL),
(706, 706, NULL, NULL),
(707, 707, NULL, NULL),
(708, 708, NULL, NULL),
(709, 709, NULL, NULL),
(710, 710, NULL, NULL),
(711, 711, NULL, NULL),
(712, 712, NULL, NULL),
(713, 713, NULL, NULL),
(714, 714, NULL, NULL),
(715, 715, NULL, NULL),
(716, 716, NULL, NULL),
(717, 717, NULL, NULL),
(718, 718, NULL, NULL),
(719, 719, NULL, NULL),
(720, 720, NULL, NULL),
(721, 721, NULL, NULL),
(722, 722, NULL, NULL),
(723, 723, NULL, NULL),
(724, 724, NULL, NULL),
(725, 725, NULL, NULL),
(726, 726, NULL, NULL),
(727, 727, NULL, NULL),
(728, 728, NULL, NULL),
(729, 729, NULL, NULL),
(730, 730, NULL, NULL),
(731, 731, NULL, NULL),
(732, 732, NULL, NULL),
(733, 733, NULL, NULL),
(734, 734, NULL, NULL),
(735, 735, NULL, NULL),
(736, 736, NULL, NULL),
(737, 737, NULL, NULL),
(738, 738, NULL, NULL),
(739, 739, NULL, NULL),
(740, 740, NULL, NULL),
(741, 741, NULL, NULL),
(742, 742, NULL, NULL),
(743, 743, NULL, NULL),
(744, 744, NULL, NULL),
(745, 745, NULL, NULL),
(746, 746, NULL, NULL),
(747, 747, NULL, NULL),
(748, 748, NULL, NULL),
(749, 749, NULL, NULL),
(750, 750, NULL, NULL),
(751, 751, NULL, NULL),
(752, 752, NULL, NULL),
(753, 753, NULL, NULL),
(754, 754, NULL, NULL),
(755, 755, NULL, NULL),
(756, 756, NULL, NULL),
(757, 757, NULL, NULL),
(758, 758, NULL, NULL),
(759, 759, NULL, NULL),
(760, 760, NULL, NULL),
(761, 761, NULL, NULL),
(762, 762, NULL, NULL),
(763, 763, NULL, NULL),
(764, 764, NULL, NULL),
(765, 765, NULL, NULL),
(766, 766, NULL, NULL),
(767, 767, NULL, NULL),
(768, 768, NULL, NULL),
(769, 769, NULL, NULL),
(770, 770, NULL, NULL),
(771, 771, NULL, NULL),
(772, 772, NULL, NULL),
(773, 773, NULL, NULL),
(774, 774, NULL, NULL),
(775, 775, NULL, NULL),
(776, 776, NULL, NULL),
(777, 777, NULL, NULL),
(778, 778, NULL, NULL),
(779, 779, NULL, NULL),
(780, 780, NULL, NULL),
(781, 781, NULL, NULL),
(782, 782, NULL, NULL),
(783, 783, NULL, NULL),
(784, 784, NULL, NULL),
(785, 785, NULL, NULL),
(786, 786, NULL, NULL),
(787, 787, NULL, NULL),
(788, 788, NULL, NULL),
(789, 789, NULL, NULL),
(790, 790, NULL, NULL),
(791, 791, NULL, NULL),
(792, 792, NULL, NULL),
(793, 793, NULL, NULL),
(794, 794, NULL, NULL),
(795, 795, NULL, NULL),
(796, 796, NULL, NULL),
(797, 797, NULL, NULL),
(798, 798, NULL, NULL),
(799, 799, NULL, NULL),
(800, 800, NULL, NULL),
(801, 801, NULL, NULL),
(802, 802, NULL, NULL),
(803, 803, NULL, NULL),
(804, 804, NULL, NULL),
(805, 805, NULL, NULL),
(806, 806, NULL, NULL),
(807, 807, NULL, NULL),
(808, 808, NULL, NULL),
(809, 809, NULL, NULL),
(810, 810, NULL, NULL),
(811, 811, NULL, NULL),
(812, 812, NULL, NULL),
(813, 813, NULL, NULL),
(814, 814, NULL, NULL),
(815, 815, NULL, NULL),
(816, 816, NULL, NULL),
(817, 817, NULL, NULL),
(818, 818, NULL, NULL),
(819, 819, NULL, NULL),
(820, 820, NULL, NULL),
(821, 821, NULL, NULL),
(822, 822, NULL, NULL),
(823, 823, NULL, NULL),
(824, 824, NULL, NULL),
(825, 825, NULL, NULL),
(826, 826, NULL, NULL),
(827, 827, NULL, NULL),
(828, 828, NULL, NULL),
(829, 829, NULL, NULL),
(830, 830, NULL, NULL),
(831, 831, NULL, NULL),
(832, 832, NULL, NULL),
(833, 833, NULL, NULL),
(834, 834, NULL, NULL),
(835, 835, NULL, NULL),
(836, 836, NULL, NULL),
(837, 837, NULL, NULL),
(838, 838, NULL, NULL),
(839, 839, NULL, NULL),
(840, 840, NULL, NULL),
(841, 841, NULL, NULL),
(842, 842, NULL, NULL),
(843, 843, NULL, NULL),
(844, 844, NULL, NULL),
(845, 845, NULL, NULL),
(846, 846, NULL, NULL),
(847, 847, NULL, NULL),
(848, 848, NULL, NULL),
(849, 849, NULL, NULL),
(850, 850, NULL, NULL),
(851, 851, NULL, NULL),
(852, 852, NULL, NULL),
(853, 853, NULL, NULL),
(854, 854, NULL, NULL),
(855, 855, NULL, NULL),
(856, 856, NULL, NULL),
(857, 857, NULL, NULL),
(858, 858, NULL, NULL),
(859, 859, NULL, NULL),
(860, 860, NULL, NULL),
(861, 861, NULL, NULL),
(862, 862, NULL, NULL),
(863, 863, NULL, NULL),
(864, 864, NULL, NULL),
(865, 865, NULL, NULL),
(866, 866, NULL, NULL),
(867, 867, NULL, NULL),
(868, 868, NULL, NULL),
(869, 869, NULL, NULL),
(870, 870, NULL, NULL),
(871, 871, NULL, NULL),
(872, 872, NULL, NULL),
(873, 873, NULL, NULL),
(874, 874, NULL, NULL),
(875, 875, NULL, NULL),
(876, 876, NULL, NULL),
(877, 877, NULL, NULL),
(878, 878, NULL, NULL),
(879, 879, NULL, NULL),
(880, 880, NULL, NULL),
(881, 881, NULL, NULL),
(882, 882, NULL, NULL),
(883, 883, NULL, NULL),
(884, 884, NULL, NULL),
(885, 885, NULL, NULL),
(886, 886, NULL, NULL),
(887, 887, NULL, NULL),
(888, 888, NULL, NULL),
(889, 889, NULL, NULL),
(890, 890, NULL, NULL),
(891, 891, NULL, NULL),
(892, 892, NULL, NULL),
(893, 893, NULL, NULL),
(894, 894, NULL, NULL),
(895, 895, NULL, NULL),
(896, 896, NULL, NULL),
(897, 897, NULL, NULL),
(898, 898, NULL, NULL),
(899, 899, NULL, NULL),
(900, 900, NULL, NULL),
(901, 901, NULL, NULL),
(902, 902, NULL, NULL),
(903, 903, NULL, NULL),
(904, 904, NULL, NULL),
(905, 905, NULL, NULL),
(906, 906, NULL, NULL),
(907, 907, NULL, NULL),
(908, 908, NULL, NULL),
(909, 909, NULL, NULL),
(910, 910, NULL, NULL),
(911, 911, NULL, NULL),
(912, 912, NULL, NULL),
(913, 913, NULL, NULL),
(914, 914, NULL, NULL),
(915, 915, NULL, NULL),
(916, 916, NULL, NULL),
(917, 917, NULL, NULL),
(918, 918, NULL, NULL),
(919, 919, NULL, NULL),
(920, 920, NULL, NULL),
(921, 921, NULL, NULL),
(922, 922, NULL, NULL),
(923, 923, NULL, NULL),
(924, 924, NULL, NULL),
(925, 925, NULL, NULL),
(926, 926, NULL, NULL),
(927, 927, NULL, NULL),
(928, 928, NULL, NULL),
(929, 929, NULL, NULL),
(930, 930, NULL, NULL),
(931, 931, NULL, NULL),
(932, 932, NULL, NULL),
(933, 933, NULL, NULL),
(934, 934, NULL, NULL),
(935, 935, NULL, NULL),
(936, 936, NULL, NULL),
(937, 937, NULL, NULL),
(938, 938, NULL, NULL),
(939, 939, NULL, NULL),
(940, 940, NULL, NULL),
(941, 941, NULL, NULL),
(942, 942, NULL, NULL),
(943, 943, NULL, NULL),
(944, 944, NULL, NULL),
(945, 945, NULL, NULL),
(946, 946, NULL, NULL),
(947, 947, NULL, NULL),
(948, 948, NULL, NULL),
(949, 949, NULL, NULL),
(950, 950, NULL, NULL),
(951, 951, NULL, NULL),
(952, 952, NULL, NULL),
(953, 953, NULL, NULL),
(954, 954, NULL, NULL),
(955, 955, NULL, NULL),
(956, 956, NULL, NULL),
(957, 957, NULL, NULL),
(958, 958, NULL, NULL),
(959, 959, NULL, NULL),
(960, 960, NULL, NULL),
(961, 961, NULL, NULL),
(962, 962, NULL, NULL),
(963, 963, NULL, NULL),
(964, 964, NULL, NULL),
(965, 965, NULL, NULL),
(966, 966, NULL, NULL),
(967, 967, NULL, NULL),
(968, 968, NULL, NULL),
(969, 969, NULL, NULL),
(970, 970, NULL, NULL),
(971, 971, NULL, NULL),
(972, 972, NULL, NULL),
(973, 973, NULL, NULL),
(974, 974, NULL, NULL),
(975, 975, NULL, NULL),
(976, 976, NULL, NULL),
(977, 977, NULL, NULL),
(978, 978, NULL, NULL),
(979, 979, NULL, NULL),
(980, 980, NULL, NULL),
(981, 981, NULL, NULL),
(982, 982, NULL, NULL),
(983, 983, NULL, NULL),
(984, 984, NULL, NULL),
(985, 985, NULL, NULL),
(986, 986, NULL, NULL),
(987, 987, NULL, NULL),
(988, 988, NULL, NULL),
(989, 989, NULL, NULL),
(990, 990, NULL, NULL),
(991, 991, NULL, NULL),
(992, 992, NULL, NULL),
(993, 993, NULL, NULL),
(994, 994, NULL, NULL),
(995, 995, NULL, NULL),
(996, 996, NULL, NULL),
(997, 997, NULL, NULL),
(998, 998, NULL, NULL),
(999, 999, NULL, NULL),
(1000, 1000, NULL, NULL),
(1001, 1001, NULL, NULL),
(1002, 1002, NULL, NULL),
(1003, 1003, NULL, NULL),
(1004, 1004, NULL, NULL),
(1005, 1005, NULL, NULL),
(1006, 1006, NULL, NULL),
(1007, 1007, NULL, NULL),
(1008, 1008, NULL, NULL),
(1009, 1009, NULL, NULL),
(1010, 1010, NULL, NULL),
(1011, 1011, NULL, NULL),
(1012, 1012, NULL, NULL),
(1013, 1013, NULL, NULL),
(1014, 1014, NULL, NULL),
(1015, 1015, NULL, NULL),
(1016, 1016, NULL, NULL),
(1017, 1017, NULL, NULL),
(1018, 1018, NULL, NULL),
(1019, 1019, NULL, NULL),
(1020, 1020, NULL, NULL),
(1021, 1021, NULL, NULL),
(1022, 1022, NULL, NULL),
(1023, 1023, NULL, NULL),
(1024, 1024, NULL, NULL),
(1025, 1025, NULL, NULL),
(1026, 1026, NULL, NULL),
(1027, 1027, NULL, NULL),
(1028, 1028, NULL, NULL),
(1029, 1029, NULL, NULL),
(1030, 1030, NULL, NULL),
(1031, 1031, NULL, NULL),
(1032, 1032, NULL, NULL),
(1033, 1033, NULL, NULL),
(1034, 1034, NULL, NULL),
(1035, 1035, NULL, NULL),
(1036, 1036, NULL, NULL),
(1037, 1037, NULL, NULL),
(1038, 1038, NULL, NULL),
(1039, 1039, NULL, NULL),
(1040, 1040, NULL, NULL),
(1041, 1041, NULL, NULL),
(1042, 1042, NULL, NULL),
(1043, 1043, NULL, NULL),
(1044, 1044, NULL, NULL),
(1045, 1045, NULL, NULL),
(1046, 1046, NULL, NULL),
(1047, 1047, NULL, NULL),
(1048, 1048, NULL, NULL),
(1049, 1049, NULL, NULL),
(1050, 1050, NULL, NULL),
(1051, 1051, NULL, NULL),
(1052, 1052, NULL, NULL),
(1053, 1053, NULL, NULL),
(1054, 1054, NULL, NULL),
(1055, 1055, NULL, NULL),
(1056, 1056, NULL, NULL),
(1057, 1057, NULL, NULL),
(1058, 1058, NULL, NULL),
(1059, 1059, NULL, NULL),
(1060, 1060, NULL, NULL),
(1061, 1061, NULL, NULL),
(1062, 1062, NULL, NULL),
(1063, 1063, NULL, NULL),
(1064, 1064, NULL, NULL),
(1065, 1065, NULL, NULL),
(1066, 1066, NULL, NULL),
(1067, 1067, NULL, NULL),
(1068, 1068, NULL, NULL),
(1069, 1069, NULL, NULL),
(1070, 1070, NULL, NULL),
(1071, 1071, NULL, NULL),
(1072, 1072, NULL, NULL),
(1073, 1073, NULL, NULL),
(1074, 1074, NULL, NULL),
(1075, 1075, NULL, NULL),
(1076, 1076, NULL, NULL),
(1077, 1077, NULL, NULL),
(1078, 1078, NULL, NULL),
(1079, 1079, NULL, NULL),
(1080, 1080, NULL, NULL),
(1081, 1081, NULL, NULL),
(1082, 1082, NULL, NULL),
(1083, 1083, NULL, NULL),
(1084, 1084, NULL, NULL),
(1085, 1085, NULL, NULL),
(1086, 1086, NULL, NULL),
(1087, 1087, NULL, NULL),
(1088, 1088, NULL, NULL),
(1089, 1089, NULL, NULL),
(1090, 1090, NULL, NULL),
(1091, 1091, NULL, NULL),
(1092, 1092, NULL, NULL),
(1093, 1093, NULL, NULL),
(1094, 1094, NULL, NULL),
(1095, 1095, NULL, NULL),
(1096, 1096, NULL, NULL),
(1097, 1097, NULL, NULL),
(1098, 1098, NULL, NULL),
(1099, 1099, NULL, NULL),
(1100, 1100, NULL, NULL),
(1101, 1101, NULL, NULL),
(1102, 1102, NULL, NULL),
(1103, 1103, NULL, NULL),
(1104, 1104, NULL, NULL),
(1105, 1105, NULL, NULL),
(1106, 1106, NULL, NULL),
(1107, 1107, NULL, NULL),
(1108, 1108, NULL, NULL),
(1109, 1109, NULL, NULL),
(1110, 1110, NULL, NULL),
(1111, 1111, NULL, NULL),
(1112, 1112, NULL, NULL),
(1113, 1113, NULL, NULL),
(1114, 1114, NULL, NULL),
(1115, 1115, NULL, NULL),
(1116, 1116, NULL, NULL),
(1117, 1117, NULL, NULL),
(1118, 1118, NULL, NULL),
(1119, 1119, NULL, NULL),
(1120, 1120, NULL, NULL),
(1121, 1121, NULL, NULL),
(1122, 1122, NULL, NULL),
(1123, 1123, NULL, NULL),
(1124, 1124, NULL, NULL),
(1125, 1125, NULL, NULL),
(1126, 1126, NULL, NULL),
(1127, 1127, NULL, NULL),
(1128, 1128, NULL, NULL),
(1129, 1129, NULL, NULL),
(1130, 1130, NULL, NULL),
(1131, 1131, NULL, NULL),
(1132, 1132, NULL, NULL),
(1133, 1133, NULL, NULL),
(1134, 1134, NULL, NULL),
(1135, 1135, NULL, NULL),
(1136, 1136, NULL, NULL),
(1137, 1137, NULL, NULL),
(1138, 1138, NULL, NULL),
(1139, 1139, NULL, NULL),
(1140, 1140, NULL, NULL),
(1141, 1141, NULL, NULL),
(1142, 1142, NULL, NULL),
(1143, 1143, NULL, NULL),
(1144, 1144, NULL, NULL),
(1145, 1145, NULL, NULL),
(1146, 1146, NULL, NULL),
(1147, 1147, NULL, NULL),
(1148, 1148, NULL, NULL),
(1149, 1149, NULL, NULL),
(1150, 1150, NULL, NULL),
(1151, 1151, NULL, NULL),
(1152, 1152, NULL, NULL),
(1153, 1153, NULL, NULL),
(1154, 1154, NULL, NULL),
(1155, 1155, NULL, NULL),
(1156, 1156, NULL, NULL),
(1157, 1157, NULL, NULL),
(1158, 1158, NULL, NULL),
(1159, 1159, NULL, NULL),
(1160, 1160, NULL, NULL),
(1161, 1161, NULL, NULL),
(1162, 1162, NULL, NULL),
(1163, 1163, NULL, NULL),
(1164, 1164, NULL, NULL),
(1165, 1165, NULL, NULL),
(1166, 1166, NULL, NULL),
(1167, 1167, NULL, NULL),
(1168, 1168, NULL, NULL),
(1169, 1169, NULL, NULL),
(1170, 1170, NULL, NULL),
(1171, 1171, NULL, NULL),
(1172, 1172, NULL, NULL),
(1173, 1173, NULL, NULL),
(1174, 1174, NULL, NULL),
(1175, 1175, NULL, NULL),
(1176, 1176, NULL, NULL),
(1177, 1177, NULL, NULL),
(1178, 1178, NULL, NULL),
(1179, 1179, NULL, NULL),
(1180, 1180, NULL, NULL),
(1181, 1181, NULL, NULL),
(1182, 1182, NULL, NULL),
(1183, 1183, NULL, NULL),
(1184, 1184, NULL, NULL),
(1185, 1185, NULL, NULL),
(1186, 1186, NULL, NULL),
(1187, 1187, NULL, NULL),
(1188, 1188, NULL, NULL),
(1189, 1189, NULL, NULL),
(1190, 1190, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_16_064419_create_province_table', 1),
('2016_03_16_064448_create_municipality_table', 1),
('2016_03_16_064501_create_barangay_table', 1),
('2016_03_16_064512_create_barangay_admin_table', 1),
('2016_03_16_064539_create_purok_table', 1),
('2016_03_16_064555_create_purok_boundary_table', 1),
('2016_03_16_064610_create_flood_map_table', 1),
('2016_03_16_064638_create_household_table', 1),
('2016_03_16_064652_create_family_table', 1),
('2016_03_16_064707_create_resident_table', 1),
('2016_03_16_064743_create_household_head_table', 1),
('2016_03_16_064800_create_family_member_table', 1),
('2016_03_16_073039_add_shape_to_flood_maps', 1),
('2016_03_16_073046_add_shape_to_purok_boundarys', 1);

-- --------------------------------------------------------

--
-- Table structure for table `municipalities`
--

CREATE TABLE `municipalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `municipalities`
--

INSERT INTO `municipalities` (`id`, `province_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iligan City', '2016-03-27 08:00:00', '2016-03-29 00:56:12'),
(2, 1, 'Bacolod', '2016-03-27 08:00:00', '2016-03-27 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Lanao del Norte', '2016-03-26 21:37:00', '2016-03-27 02:47:24'),
(2, 'Zamboanga del Norte', '2016-03-26 21:39:00', '2016-03-27 13:40:14'),
(3, 'Misamis Occidental', '2016-03-26 16:58:10', '2016-03-27 02:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `puroks`
--

CREATE TABLE `puroks` (
  `id` int(10) UNSIGNED NOT NULL,
  `barangay_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `president` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `population` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `puroks`
--

INSERT INTO `puroks` (`id`, `barangay_id`, `name`, `description`, `president`, `population`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Proper Hinaplanon', 'Ronald Galorio', 387, NULL, NULL),
(2, 1, '2', 'Katipunana', 'Carmelita Ermac', 134, NULL, NULL),
(3, 1, '2A', 'Green Village', 'Cherry Pepito', 241, NULL, NULL),
(4, 1, '2B', 'Katipunan', 'Lorna Capangpangan', 68, NULL, NULL),
(5, 1, '2C', 'Katipunan', 'Perla Cornero', 92, NULL, NULL),
(6, 1, '3', 'Cabugason', 'Orlando Apungan', 57, NULL, NULL),
(7, 1, '3_Dao', 'Dao', 'Rudy Maglasang', 110, NULL, NULL),
(8, 1, '3A', 'Pioneer Village', 'Wilson Divino', 172, NULL, NULL),
(9, 1, '4', 'Tambo', 'Judith Ermac', 87, NULL, NULL),
(10, 1, '4A', 'Tambo', 'Catalina Gohel', 22, NULL, NULL),
(11, 1, '5', 'Tambo', 'Francesca Heyrana', 79, NULL, NULL),
(12, 1, '5A', 'Tambo', 'Marlon Mariquit', 223, NULL, NULL),
(13, 1, '5B', 'Neopoda', 'Wilfredo Banaag', 123, NULL, NULL),
(14, 1, '6', 'Tambo', 'Manuel Rico', 141, NULL, NULL),
(15, 1, '6A', 'Tambo', 'Victoria Tabuco', 105, NULL, NULL),
(16, 1, '6B', 'Tambo', 'Eleno Boy Luveros', 224, NULL, NULL),
(17, 1, '6C', 'Tambo', 'Gloria Hernando', 139, NULL, NULL),
(18, 1, '7', 'Tambo', 'Virgilia Rico', 204, NULL, NULL),
(19, 1, '8', 'Tambo', 'Leonila Arnoco', 78, NULL, NULL),
(20, 1, '9', 'Bayug Riverside', 'Norma Gaite', 183, NULL, NULL),
(21, 1, '9A', 'Bayug', 'Nilda Saldia', 120, NULL, NULL),
(22, 1, 'Phase 3&5', 'Bahayan', 'Lomesindo Caparida', 36, NULL, NULL),
(23, 1, '1_8', 'Bayug Island', '', 42, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purok_boundaries`
--

CREATE TABLE `purok_boundaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `purok_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shape` geometry DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purok_boundaries`
--

INSERT INTO `purok_boundaries` (`id`, `purok_id`, `created_at`, `updated_at`, `shape`) VALUES
(1, 1, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0#\0\0\0�`��_@�-PBW� @�XL�_@�h�h�� @��\n��_@�KG�˂ @�քW�_@�ee�߂ @��N�_@<l�Q� @�R�I�_@̣J�� @��\r,�_@o���}� @�Y��_@\rN�K� @�۳��_@\\O��8� @ܡ�._@%Q�f%� @��Ǻ_@p,2�� @�(\\	\n_@�{�܍� @ߙ��_@^�{� @����_@�/uk�� @�lX_@��>eԁ @�+�_@OQ�\0ā @*s\\�&_@�5���� @1I��-_@\Z��� @F��N3_@������ @˜�A8_@����.� @�v�6_@\r�Kƀ @R<�/_@�O垀 @���*_@W�Ot� @��s _@��u<[� @\n���_@(��"S� @:�0_@Μ?Vc� @X��b\n_@����d� @�0|�_@�o�0�� @8�X�_@a�1~�� @�3d�_@���\0� @	$�z�_@�\'ߎK� @f>���_@������ @���_@��<Ѱ� @�Ë�_@�r܁ @�`��_@�-PBW� @'),
(2, 2, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\03�j��_@\n�-!~� @�C��_@z"��� @	�b�_@�Y�� @��fи_@�U7�� @	$�z�_@�\'ߎK� @�3d�_@���\0� @8�X�_@a�1~�� @�N@�_@��&h�� @V����_@���{�� @`����_@3)�h� @���.�_@"]�I� @j��U�_@�\0U�\n� @i����_@��u� @D�z�_@���� @��_@"��� @Uo�|�_@HH�w� @\n��l�_@�,Tz� @3�e�_@$X�d� @y�m�_@�J�<� @3�j��_@\n�-!~� @'),
(3, 3, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0	$�z�_@�\'ߎK� @��fи_@�U7�� @	�b�_@�Y�� @�C��_@z"��� @3�j��_@\n�-!~� @y�cȹ_@\r�,U"� @Mx���_@#�y�� @q�#:�_@��b� @Bo��_@�+�+� @\'"Dߖ_@��C�R� @�ll_@bs��� @i�=�q_@Р��d� @�/ �x_@ˋ�Dˁ @?KpG~_@\\uo�� @mф_@�7��(� @�`��_@�-PBW� @�Ë�_@�r܁ @���_@��<Ѱ� @f>���_@������ @	$�z�_@�\'ߎK� @'),
(4, 4, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0\rf_�_@E9�` @NL	�_@�t�Y� @𑿄�_@"��� @D�z�_@���� @��_@LO�%[ @�F��\n_@ç�-h~ @�\'��_@�x9�  @\rf_�_@E9�` @'),
(5, 5, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\03�j��_@\n�-!~� @y�m�_@�J�<� @3�e�_@$X�d� @\n��l�_@�,Tz� @Uo�|�_@HH�w� @��_@"��� @𑿄�_@"��� @鑿��_@"��� @OL	�_@�t�Y� @\rf_�_@E9�` @q�#:�_@��b� @Mx���_@#�y�� @y�cȹ_@\r�,U"� @3�j��_@\n�-!~� @3�j��_@\n�-!~� @'),
(6, 6, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0X��b\n_@����d� @\n���_@(��"S� @��s _@��u<[� @���*_@W�Ot� @���*_@W�Ot� @�n2�3_@\0�K�� @�@��+_@h�Π� @.*�1)_@�&�*S @\0��_@BO�%[ @N�̳_@]$�5Z @\ZD�z�_@���� @k����_@��u� @l��U�_@�\0U�\n� @���.�_@!]�I� @^����_@.)�h� @X8k�_@��C�� @�0|�_@�o�0�� @X��b\n_@����d� @'),
(7, 7, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0q�#:�_@��b� @\rf_�_@E9�` @�\'��_@�x9�  @O}�|_@$Gh~ @)X3_@��g~ @���	_@+�Wr<~ @�����_@�*��~ @T&��_@���Y4~ @;mR�_@Z��H~ @c�k�_@�N�G~ @߼�5�_@Q |�=~ @BA��_@b=�.~ @�w���_@Q.v~ @���_@�H���} @��M�_@2�	~ @}�I]�_@L�E��} @��O\n�_@E!tT~ @����_@�!_�~ @���_@"ڐg�~ @M� ��_@����? @M� ��_@����? @q�#:�_@��b� @'),
(8, 8, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0�ll_@bs��� @\'"Dߖ_@��C�R� @Bo��_@�+�+� @q�#:�_@��b� @M� ��_@����? @���_@"ڐg�~ @����_@�!_�~ @7"P	�_@QǸh% @u&-�_@��J��~ @���W_@߄�� @\nP}{[_@�lB�.� @J�=�b_@l��?T� @J�=�b_@l��?T� @�ll_@bs��� @'),
(9, 9, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0����_@�!_�~ @��<�_@���M|~ @��<�_@���M|~ @�l���_@@�s&V~ @��*Ҍ_@���|\0~ @u��΃_@��)T�} @?�)V�_@z0q~ @�+p�_@G�-.)~ @�o2�_@7nN~~ @�5s�v_@G�C9�~ @ϵքu_@��o	�~ @����t_@��br�~ @u&-�_@��J��~ @u&-�_@��J��~ @7"P	�_@QǸh% @����_@�!_�~ @'),
(10, 10, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0����_@�!_�~ @��O\n�_@E!tT~ @}�I]�_@L�E��} @i3�%�_@��B�n} @��o*�_@Y%�On} @�䆹�_@���} @K �u�_@V���| @K �u�_@V���| @K �u�_@V���| @u��΃_@��)T�} @u��΃_@��)T�} @��*Ҍ_@���|\0~ @�l���_@@�s&V~ @��<�_@���M|~ @����_@�!_�~ @'),
(11, 11, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0�o2�_@7nN~~ @�+p�_@G�-.)~ @�+p�_@G�-.)~ @?�)V�_@z0q~ @u��΃_@��)T�} @u��΃_@��)T�} @\npC�r_@	�_k�} @dVB�__@>�;!~ @dVB�__@>�;!~ @se�"j_@U/��~ @?Y��p_@ �;j~ @����t_@��br�~ @ϵքu_@��o	�~ @�5s�v_@G�C9�~ @�o2�_@7nN~~ @'),
(12, 12, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0u&-�_@��J��~ @����t_@��br�~ @����t_@��br�~ @?Y��p_@ �;j~ @se�"j_@U/��~ @dVB�__@>�;!~ @�/UeT_@j>�n�} @n\0~?_@ b�V�~ @��yHM_@�(�J @���W_@߄�� @u&-�_@��J��~ @'),
(13, 13, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0	\0\0\0\nP}{[_@�lB�.� @\nP}{[_@�lB�.� @���W_@߄�� @��yHM_@�(�J @n\0~?_@ b�V�~ @9�>5_@O�f�i @9�>5_@O�f�i @e�{WO_@�Z�/� @\nP}{[_@�lB�.� @'),
(14, 14, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0K �u�_@V���| @K �u�_@V���| @�䆹�_@���} @Iۊ��_@VC3�| @�h6��_@P5P�| @�&���_@���֚| @\\\n�_@r����| @a�vT�_@��	|�{ @��s�_@��Sy|{ @M�-{�_@qnrt{ @�xTWw_@4es~�| @K �u�_@V���| @'),
(15, 15, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0K �u�_@V���| @K �u�_@V���| @�xTWw_@4es~�| @�K�J__@:��@} @=��U_@p�Q/P} @tT�rP_@	�M�k} @�/UeT_@j>�n�} @dVB�__@>�;!~ @\npC�r_@	�_k�} @u��΃_@��)T�} @K �u�_@V���| @'),
(16, 16, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0�K�J__@:��@} @�xTWw_@4es~�| @M�-{�_@qnrt{ @��.��_@vZ��{ @�X�_}_@��\\U{ @�Z�r_@�߅�%{ @3޾R_@&{�d�| @3޾R_@&{�d�| @q)yW_@����| @�E�X]_@@	��| @�K�J__@:��@} @'),
(17, 17, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\r\0\0\03޾R_@&{�d�| @3޾R_@&{�d�| @�Z�r_@�߅�%{ @�<�g_@��Y�{ @���^_@��\'A{ @):{V_@%/�k{ @SJˊ?_@�k���{ @$��9_@���W| @��=_@�@�| @8�ؼA_@�zf�3| @=�P�H_@�\\AZ| @�!~N_@놏\nt| @3޾R_@&{�d�| @'),
(18, 18, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0���_@�H���} @�Q<�_@~�SI�} @x(-\\�_@�bWT�} @\Z���_@kJ�x} @hi}0�_@����I} @(gT��_@`p`�(} @#lY�_@�b�	} @�2��_@m���| @�G8�_@�(3��| @]d~�_@?���| @E��_@����| @�p��_@�u)�| @\\\n�_@r����| @�&���_@���֚| @�h6��_@P5P�| @Iۊ��_@VC3�| @�䆹�_@���} @��o*�_@Y%�On} @}�I]�_@L�E��} @��M�_@2�	~ @���_@�H���} @'),
(19, 19, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0\\\n�_@r����| @�p��_@�u)�| @E��_@����| @]d~�_@?���| @�G8�_@�(3��| @����_@)��d| @��u��_@!,��0| @�b�7�_@C(�V| @s���_@�����{ @&c|�_@\Z�M��{ @r��.�_@`dK�{ @�.�\\�_@�O��}{ @a�vT�_@��	|�{ @\\\n�_@r����| @'),
(20, 20, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0e�{WO_@�Z�/� @9�>5_@O�f�i @9�>5_@O�f�i @�c�/_@��i�~ @�@9_@��\\�~ @���_@�1���~ @o�?�_@&\\O�~ @�?ӹ_@�Lz�* @�0�D\Z_@��c�u @��:~_@���� @�G�1_@\'��� @b]5&_@�Rz�� @*��_@nE��	� @)� 0!_@�zu�� @u��c _@��/� @@\Z_@��E+1� @~g�A_@5^5T0� @e�{WO_@�Z�/� @'),
(21, 21, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0�/UeT_@j>�n�} @����Q_@,!�} @6�=-K_@��~�} @l.�._@�uL~ @�͑�(_@��3~ @l�qR_@6��!j~ @�c�/_@��i�~ @Sų%_@�s�h�~ @9�>5_@O�f�i @ޑf?_@��^��~ @�/UeT_@j>�n�} @'),
(22, 22, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0˜�A8_@����.� @T��>_@㝍� @�F$A_@���� @l��OL_@�m��� @��P�I_@4G>o� @/u�	G_@/�#�΀ @�nD_@�I��� @\\wXC_@.n�Z�� @�W�}B_@�k{�E� @g�0o;_@+�aX� @��Dn9_@ߥ��[� @;v��7_@�*{�O� @`��4_@�4�\'� @�n2�3_@\0�K�� @���*_@W�Ot� @R<�/_@�O垀 @�v�6_@\r�Kƀ @˜�A8_@����.� @'),
(23, 23, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0P\0\0\0:�wL_@�\rҽ�� @/�Y�_@�rϽ� @�)l?_@��ID� @����\0_@��1� @�ڵ��_@ǫ�U6� @�jܶ�_@���f� @%ت��_@\Z���i� @0ܾ.�_@.e��m� @k�3?�_@K��� @.�V�_@���eӁ @qO��_@MPdρ @	��k�_@-��#ʁ @^��p�_@^�8QÁ @l��u�_@��ف @�3�l�_@m���� @+��|�_@�5{��� @\\iyB�_@b#l� @ev�_@��7Z9� @��ۏ�_@:�#�Z� @P���_@zunc� @���C�_@�1w� @�K��_@+�b��� @F2e�_@XS��� @AVTj�_@��@\Z�� @�e�\Z�_@��o� @l����_@F���\'� @�mf�_@��v��� @��C�_@m��1σ @�h%2�_@J�z�� @5�#e�_@�:~M� @(S��_@ΐP�2� @�ċ	�_@�\ZHI=� @\\<�\0�_@�Ka:c� @�s��_@�� b�� @�;\'B�_@�K%ل @_���_@V�~�� @(�)�_@I,{� @L�T�_@u�O�� @�����_@��؍�� @S�:7�_@�{D:� @5iJJ�_@�{Pd!� @�,� �_@���?� @�0,��_@�Q:�\\� @Dl=�_@�P��� @��,w�_@0׊]�� @u[=�_@V4g�� @ʓ{?_@\\���ԇ @��Mq_@��4L� @ �yM_@\r���)� @�B�(_@(��NN� @����<_@X�-� @�㌮C_@��x� @�}]�F_@��g�� @\n��H_@.\ZзE� @���G_@�bB� @~(�qC_@+�E�ń @g\\j�@_@�w�!�� @L�|�>_@6%���� @VB�0<_@Q�d�e� @!L��6_@����+� @\0��3_@i)�� @3�3_@�GWU�� @7Ld4_@ԕ�\0� @��.�3_@������ @x�s84_@M�:Ё� @h���5_@��R?� @(	=_@�]mSՁ @��"?_@h�� @Ȕ͡=_@���:H� @:ER7=_@Eì[� @{�	>_@Ё<8� @x��%@_@��1lĀ @ft�f@_@����� @�۽�?_@;9��|� @\n�S�@_@^�i�Y� @~g�A_@5^5T0� @@\Z_@��E+1� @�YQ_@I���<� @\Z�f�\r_@�aW�j� @:�wL_@�\rҽ�� @');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `civil_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occupation_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occupation_specific` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `if_voter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `if_disabled` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `first_name`, `last_name`, `middle_name`, `birthdate`, `gender`, `civil_status`, `contact_number`, `education`, `occupation_category`, `occupation_specific`, `if_voter`, `if_disabled`, `created_at`, `updated_at`) VALUES
(1, 'Ariel', 'Argiente', 'Cuizon', '1975-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Permanent', '0', '0', NULL, NULL),
(2, 'Jesser', 'Simbaco', 'Chua', '1963-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(3, 'Lucio', 'Abiol', 'Collamar', '1969-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(4, 'Flora', 'Simbaco', 'Tabano', '1959-11-12', 'Female', 'Widow', '', 'College', 'None', '', '0', '0', NULL, NULL),
(5, 'Francisco, jr', 'Catalan', 'Licop', '1980-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Permanent', '0', '0', NULL, NULL),
(6, 'Francisco, sr', 'Catalan', 'Unsay', '1953-11-12', 'Male', 'Married', '', 'HS', 'Taxi driver', 'Casual', '0', '0', NULL, NULL),
(7, 'Hanna Mae', 'Daud', 'Suog', '1997-11-12', 'Female', 'Single', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(8, 'Jesus', 'Daud', 'Cabegas', '1956-11-12', 'Male', 'Living-in', '', 'HS', 'Driver', 'Permanent', '0', '0', NULL, NULL),
(9, 'Manuel', 'Maguiran', 'delaConcepcion', '1944-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(10, 'Roy', 'Maguiran', 'E', '1971-11-12', 'Male', 'Married', '', 'College', 'Business', 'Self_employed', '0', '0', NULL, NULL),
(11, 'Namra', 'Cali', 'Mangansam', '1966-11-12', 'Male', 'Married', '', 'HS', 'Monitoring', 'Casual', '0', '0', NULL, NULL),
(12, 'Alvin', 'Bado', 'Aguilo', '1988-11-12', 'Male', 'Living_in', '', 'Vocational', 'Welder', 'Casual', '0', '0', NULL, NULL),
(13, 'Bonifacio', 'Bado', 'Penaflor', '1963-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
(14, 'Delia', 'Salvador', 'Romanillos', '1959-11-12', 'Female', 'Separated', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(15, 'Lomer', 'Cagobcob', 'G', '1966-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Self_employed', '0', '0', NULL, NULL),
(16, 'Mark Anthony', 'Bation', 'Aguilo', '1989-11-12', 'Male', 'Living_in', '', 'Vocational', 'Welder', 'permanent', '0', '0', NULL, NULL),
(17, 'Roel', 'Libumfacil', 'Aguilo', '1970-11-12', 'Male', 'Married', '', 'Elementary', 'Welder', 'Casual', '0', '0', NULL, NULL),
(18, 'Teodoro', 'Sumile', 'Ligan', '1964-11-12', 'Male', 'Married', '', 'College', 'Bus Inspector', 'Permanent', '0', '0', NULL, NULL),
(19, 'Eduardo', 'Fabroa', 'Galorio', '1962-11-12', 'Male', 'Married', '', 'College', 'Business', 'Permanent', '0', '0', NULL, NULL),
(20, 'Rudyrico', 'Duran', 'Dalogdog', '1956-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(21, 'Ramero', 'Salig', 'Bughaw', '1956-11-12', 'Male', 'Married', '', 'Vocational', 'None', '', '0', '0', NULL, NULL),
(22, 'Nelson', 'Salig', 'Bughaw', '1963-11-12', 'Male', 'Married', '', 'College', 'engineering', 'Self_employed', '0', '0', NULL, NULL),
(23, 'Nicolas', 'Remo', 'Olivero', '1955-11-12', 'Male', 'Married', '', 'College', 'safety_officer', 'Permanent', '0', '0', NULL, NULL),
(24, 'Joe-Mark', 'Salado', 'Eroy', '1987-11-12', 'Male', 'Married', '', 'College', 'Instructor', 'Casual', '0', '0', NULL, NULL),
(25, 'Arnel', 'Uy', 'Bado', '1972-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(26, 'Cecilia', 'Fernandez', '', '1965-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(27, 'Cerelo', 'Aguinot', 'Gabresa', '1989-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(28, 'Flaviano', 'Gonzaga', 'Gabayan', '1951-11-12', 'Male', 'Married', '', 'Vocational', 'None', 'Self_employed', '0', '0', NULL, NULL),
(29, 'Bernie', 'Simbaco', 'Chua', '1971-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(30, 'Oliver', 'Garma', 'Villarosa', '1978-11-12', 'Male', 'Married', '', 'College', 'Aircon_tech', 'Permanent', '0', '0', NULL, NULL),
(31, 'Meliton,Jr.', 'Bation', '', '1963-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Permanent', '0', '0', NULL, NULL),
(32, 'Rupert Johan', 'Bado', 'Quito', '1979-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(33, 'Sotico', 'Capangpangan', 'Gersale', '1960-11-12', 'Male', 'Married', '', 'College', 'Business', 'Self_employed', '0', '0', NULL, NULL),
(34, 'Gerarda', 'Cloma', 'Capangpangan', '1962-11-12', 'Female', 'Widow', '', 'College', 'Business', 'Self_employed', '0', '0', NULL, NULL),
(35, 'Edsiel', 'Borbon', 'Legaspi', '1980-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Permanent', '0', '0', NULL, NULL),
(36, 'Roberto', 'Sebaria', 'Balaba', '1959-11-12', 'Male', 'Married', '', 'Vocational', 'None', '', '0', '0', NULL, NULL),
(37, 'German', 'Lumboy', 'Zulueta', '1961-11-12', 'Male', 'Living_in', '', 'HS', 'Collector', 'Permanent', '0', '0', NULL, NULL),
(38, 'Adelita', 'Soledad', 'Gagati', '1963-11-12', 'Female', 'Married', '', 'College', 'Business', 'Self_employed', '0', '0', NULL, NULL),
(39, 'Reymundo', 'YaÃ±ez', 'Nacua', '1972-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(40, 'Valentin', 'Reco', 'Opog', '1966-11-12', 'Male', 'Living_in', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(41, 'Melvin', 'Hatague', 'Perocho', '1977-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Permanent', '0', '0', NULL, NULL),
(42, 'Matilde', 'Llanes', 'Bado', '1941-11-12', 'Female', 'Widow', '', 'College', 'None', 'Self_employed', '0', '0', NULL, NULL),
(43, 'Abrendino', 'Albiento', 'Dejeto', '1972-11-12', 'Male', 'Married', '', 'College', 'private_employee', 'Casual', '0', '0', NULL, NULL),
(44, 'Reggie', 'Bado', 'Ybarlie', '1985-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(45, 'Cerilo', 'Bado', 'Roca', '1960-11-12', 'Male', 'Married', '', 'HS', 'Fish_vendor', 'Self_employed', '0', '0', NULL, NULL),
(46, 'Angelina', 'Saliot', 'Calibo', '1944-11-12', 'Female', 'Widow', '', 'College', 'Business', 'Self_employed', '0', '0', NULL, NULL),
(47, 'Christopher', 'Hulgin', 'Rosario', '1966-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'Self_employed', '0', '0', NULL, NULL),
(48, 'Benjamin', 'Garting', 'Legaspi', '1980-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Permanent', '0', '0', NULL, NULL),
(49, 'Nick', 'Garting', 'Legaspi', '1988-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'Permanent', '0', '0', NULL, NULL),
(50, 'Merlo', 'Bado', 'Alecanda', '1988-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Permanent', '0', '0', NULL, NULL),
(51, 'Christine', 'Bardillas', 'Dalogdog', '1979-11-12', 'Female', 'Living_in', '', 'HS', 'Dressmaker', 'Self_employed', '0', '0', NULL, NULL),
(52, 'Luzzy', 'Fabroa', 'Eroy', '1963-11-12', 'Female', 'Widow', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(53, 'Emmanuel', 'Verano', 'Dalogdog', '1962-11-12', 'Male', 'Married', '', 'College', 'salesman', 'Permanent', '0', '0', NULL, NULL),
(54, 'Fajusto', 'Milancio', 'Bail', '1956-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(55, 'Danilo', 'Aguilo', 'Bado', '1964-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(56, 'Oliva', 'Bado', 'Narisma', '1944-11-12', 'Female', 'Widow', '', 'College', 'None', '', '0', '0', NULL, NULL),
(57, 'Danny', 'Bahian', 'Labadan', '1981-11-12', 'Male', 'Married', '', 'Vocational', 'Employee', 'Permanent', '0', '0', NULL, NULL),
(58, 'Robin', 'Bado', 'Mutya', '1970-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(59, 'Dulce', 'Esteban', 'delMar', '1964-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'Self_employed', '0', '0', NULL, NULL),
(60, 'David Jorte', 'Villarta', 'Villarin', '1989-11-12', 'Male', 'Single', '', 'College', 'Collector', 'Permanent', '0', '0', NULL, NULL),
(61, 'Efren', 'Abarca ', 'Talirongan', '1985-11-12', 'Male', 'Single', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(62, 'Olimpo,Jr.', 'Bado', 'Taguno', '1986-11-12', 'Male', 'Married', '', 'HS', 'Tailor', 'Self_employed', '0', '0', NULL, NULL),
(63, 'Jameson', 'Babano', 'Aresgo', '1987-11-12', 'Male', 'Living_in', '', 'HS', 'Printer', 'Self_employed', '0', '0', NULL, NULL),
(64, 'Francisco', 'Arado', 'Domatican', '1957-11-12', 'Male', 'Married', '', 'HS', 'Employee', 'permanent', '0', '0', NULL, NULL),
(65, 'Domingo', 'Balag', 'Romblon', '1960-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'permanent', '0', '0', NULL, NULL),
(66, 'Ramil', 'Arellano', 'Magsayo', '1969-11-12', 'Male', 'Single', '', 'College', 'None', '', '0', '0', NULL, NULL),
(67, 'Perlito', 'Perez', 'Pocdol', '1967-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Permanent', '0', '0', NULL, NULL),
(68, 'Philip_Bryan', 'Fenis', 'Perez', '1990-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(69, 'Arcadio', 'Canlolobo', 'Siarez', '1963-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(70, 'Melchor', 'CaÃ±arez', 'Racoma', '1970-11-12', 'Male', 'Living_in', '', 'HS', 'mason', 'per_day', '0', '0', NULL, NULL),
(71, 'Luisito', 'Anislag', 'Mabini', '1960-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(72, 'Julibert', 'Reluya', 'Actiua', '1982-11-12', 'Male', 'Living_in', '', 'Vocational', 'Const_worker', 'Permanent', '0', '0', NULL, NULL),
(73, 'Moises', 'Salvalosa', 'Maril', '1973-11-12', 'Male', 'Married', '', 'College', 'Welder', 'Permanent', '0', '0', NULL, NULL),
(74, 'Ronel', 'Naquila', 'Plaza', '1988-11-12', 'Male', 'Married', '', 'HS', 'Automechanic', 'permanent', '0', '0', NULL, NULL),
(75, 'Dome', 'Dacuya', 'Somiti', '1980-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
(76, 'Arnolfo', 'Arguilles', 'Rabino', '1967-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(77, 'Roel', 'Naquila', 'Plaza', '1981-11-12', 'Male', 'Married', '', 'College', 'Mechanic', 'permanent', '0', '0', NULL, NULL),
(78, 'Sanyboy', 'Tadle', 'Loguillano', '1971-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(79, 'Jean', 'Chavez', 'Dignos', '1961-11-12', 'Female', 'Single', '', 'College', 'None', '', '0', '0', NULL, NULL),
(80, 'Andresito', 'Suganog', 'Asinero', '1969-11-12', 'Male', 'Married', '', 'College', 'Electrician', 'Casual', '0', '0', NULL, NULL),
(81, 'Loverine', 'Siarza', 'Tugonon', '1988-11-12', 'Male', 'Living_in', '', 'HS', 'Helper', 'Casual', '0', '0', NULL, NULL),
(82, 'Nelson', 'Siarza', 'Salzos', '1961-11-12', 'Male', 'Separated', '', 'HS', 'Caretaker', 'permanent', '0', '0', NULL, NULL),
(83, 'Portonato', 'Quirino', 'Dag_uma', '1968-11-12', 'Male', 'Married', '', 'HS', 'mason', 'Casual', '0', '0', NULL, NULL),
(84, 'Julito', 'Albiento', 'Dejeto', '1971-11-12', 'Male', 'Separated', '', 'Vocational', 'Machinist', 'permanent', '0', '0', NULL, NULL),
(85, 'Rolando', 'Libumfacil', 'Villamor', '1974-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(86, 'Dionesio,Jr', 'Bado', 'Wade', '1968-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(87, 'Crecencio', 'Bangus', 'Carawi', '1959-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(88, 'Oliver', 'Awitin', 'Galunsay', '1986-11-12', 'Male', 'Married', '', 'Vocational', 'Business', 'self_employed', '0', '0', NULL, NULL),
(89, 'Joseph', 'Bardillas', 'Dalogdog', '1971-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(90, 'Christhoper', 'Tingcang', 'Laway', '1987-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(91, 'Julie', 'Bangus', 'Carawi', '1963-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'permanent', '0', '0', NULL, NULL),
(92, 'Allan', 'Remegio', 'Partolan', '1957-11-12', 'Male', 'Married', '', 'College', 'Painter', 'self_employed', '0', '0', NULL, NULL),
(93, 'Conching', 'Areola', 'Abatikin', '1957-11-12', 'Female', 'Widow', '', 'College', 'Employee', 'permanent', '0', '0', NULL, NULL),
(94, 'Jemrelle', 'Diola', 'Abong', '1987-11-12', 'Male', 'Living_in', '', 'Vocational', 'Machinist', 'per_day', '0', '0', NULL, NULL),
(95, 'Danilo, sr', 'Bado', 'Eslit', '1965-11-12', 'Male', 'Married', '', 'HS', 'Electrician', 'permanent', '0', '0', NULL, NULL),
(96, 'Fada', 'Sola', 'Adiong', '1963-11-12', 'Male', 'Married', '', 'College', 'Police', 'permanent', '0', '0', NULL, NULL),
(97, 'Danilo,jr', 'Bado', 'Villanueva', '1990-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(98, 'Wenceslao', 'Bordaje', 'Elejorde', '2013-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'permanent', '0', '0', NULL, NULL),
(99, 'Nelson', 'Elejorde', 'Sasiny', '1976-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(100, 'Richard', 'Bado', 'Wade', '1967-11-12', 'Male', 'Married', '', 'HS', 'Printer', 'self_employed', '0', '0', NULL, NULL),
(101, 'Francisco', 'Cabandog', 'Nellas', '1971-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'permanent', '0', '0', NULL, NULL),
(102, 'Rodrigo', 'Esma', 'Cababahay', '1951-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(103, 'Nestor', 'Buca', 'Rosario', '1959-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'permanent', '0', '0', NULL, NULL),
(104, 'Arnel', 'Alaya_ay', 'Gamil', '1990-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(105, 'Edwin', 'Buca', 'Lezardo', '1981-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'Casual', '0', '0', NULL, NULL),
(106, 'Anthony', 'Tabimina', 'Nadaya', '1977-11-12', 'Male', 'Married', '', 'College', 'engineer', 'permanent', '0', '0', NULL, NULL),
(107, 'Domiemar', 'Cababan', 'Gales', '1992-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'per_day', '0', '0', NULL, NULL),
(108, 'Victoria', 'Cababan', 'Pepito', '1957-11-12', 'Female', 'Widow', '', 'HS', 'Beautician', 'self_employed', '0', '0', NULL, NULL),
(109, 'Romeo', 'Alivio', 'Lopez', '1971-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'permanent', '0', '0', NULL, NULL),
(110, 'Robin', 'Ramos', 'Zibre', '1980-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(111, 'Danilo', 'Ragadio', 'Sumikad', '1969-11-12', 'Male', 'Living_in', '', 'Elementary', 'Driver', 'permanent', '0', '0', NULL, NULL),
(112, 'Noel', 'Apongan', 'Bado', '1961-11-12', 'Male', 'Married', '', 'College', 'Electrician', 'permanent', '0', '0', NULL, NULL),
(113, 'Epe', 'Cando ', 'Boromeo', '1971-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(114, 'Emilio', 'Pa-ausbo', 'Gallito', '1970-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'permanent', '0', '0', NULL, NULL),
(115, 'Gilacio', 'Gallito', 'Hawan', '1940-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(116, 'Arnell', 'Gallito', 'Zalsos', '1973-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(117, 'Renato', 'Daniar', 'Simeni', '1975-11-12', 'Male', 'Living_in', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(118, 'Servillano', 'Permacio', 'Remiticado', '1962-11-12', 'Male', 'Married', '', 'HS', 'Checker', 'permanent', '0', '0', NULL, NULL),
(119, 'Angelito', 'Zalsos', 'Animo', '1982-11-12', 'Male', 'Living_in', '', 'HS', 'Welder', 'Casual', '0', '0', NULL, NULL),
(120, 'Gabriel', 'Jala', 'Lapuz', '1988-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(121, 'Jesus', 'Permacio', 'Menyosa', '1973-11-12', 'Male', 'Living_in', '', 'Elementary', 'Farmer', 'self_employed', '0', '0', NULL, NULL),
(122, 'Danny', 'Nadayag', 'Permacio', '1985-11-12', 'Male', 'Married', '', 'College', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(123, 'Rosalino', 'Permacio', 'Pemiticado', '1952-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(124, 'Danilo', 'Nadayag', 'Zalsos', '1964-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(125, 'Helbert', 'Uy', 'Bocoyo', '1962-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(126, 'Michael', 'Vicente', 'Somanoy', '1985-11-12', 'Male', 'Married', '', 'College', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(127, 'James', 'Lozano', 'Carita', '1982-11-12', 'Male', 'Living_in', '', 'College', 'Welder', 'Casual', '0', '0', NULL, NULL),
(128, 'Gregoria', 'Macalong', 'Gallito', '1963-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(129, 'Danilo', 'Manlupig', 'Abarca', '1951-11-12', 'Male', 'Widow', '', 'HS', 'Painter', 'self_employed', '0', '0', NULL, NULL),
(130, 'Jessica', 'Antibo', 'Laureti', '1951-11-12', 'Female', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(131, 'Dennis', 'Gabores', 'Martinez', '1986-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(132, 'Archery_2nd', 'Agapay', 'Raso', '1991-11-12', 'Male', 'Living_in', '', 'College', 'None', '', '0', '0', NULL, NULL),
(133, 'Gavalier', 'Rico', 'Restaoro', '1977-11-12', 'Male', 'Living_in', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(134, 'Rochel', 'Rico', 'Balles', '1977-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(135, 'Galbieto', 'Rico', 'Abarca', '1949-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(136, 'Rolly', 'Cloma', 'Tagopa', '1969-11-12', 'Male', 'Living_in', '', 'HS', 'Mechanic', 'Permanent', '0', '0', NULL, NULL),
(137, 'Rennie', 'Manogaz', 'Canoos', '1983-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(138, 'Jay', 'Bayoloses', 'Caballer', '1979-11-12', 'Male', 'Married', '', 'HS', 'Tireman', 'Permanent', '0', '0', NULL, NULL),
(139, 'Alberto', 'Cabaktulan', 'Solan', '1954-11-12', 'Male', 'Married', '', 'College', 'Driver', 'Casual', '0', '0', NULL, NULL),
(140, 'Rosendo', 'Rotaquio', 'Malubay', '1945-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(141, 'Agapito', 'Fernandez', 'Anor', '1964-11-12', 'Male', 'Married', '', 'Vocational', 'Operator', 'Casual', '0', '0', NULL, NULL),
(142, 'Ronald', 'Borga', 'Caparida', '1989-11-12', 'Male', 'Living_in', '', 'College', 'None', '', '0', '0', NULL, NULL),
(143, 'Odezza', 'Ordinaria', 'Disgis', '1977-11-12', 'Female', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(144, 'Pilipino', 'Fernandez', 'Anor', '1958-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(145, 'Danny', 'Gabando', 'Tugon', '1971-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(146, 'Jose', 'Bardillas', 'Ulclaver', '1959-11-12', 'Male', 'Married', '', 'Elementary', 'Driver', 'Casual', '0', '0', NULL, NULL),
(147, 'Celso', 'Baroga', 'Dag-uman', '1964-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'Casual', '0', '0', NULL, NULL),
(148, 'Golito', 'Elago', 'Fernandez', '1968-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'Permanent', '0', '0', NULL, NULL),
(149, 'Robert', 'Rosal', 'Manulat', '1976-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'Casual', '0', '0', NULL, NULL),
(150, 'Wilfredo', 'Fabillaran', 'Suarez', '1973-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'Casual', '0', '0', NULL, NULL),
(151, 'Jose_Rufo', 'Ebasan', 'Bado', '1970-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(152, 'Jessie', 'Losanto', 'Neo', '1981-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Permanent', '0', '0', NULL, NULL),
(153, 'Jaybert', 'Losanto', 'Ebasan', '1965-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(154, 'Rasol', 'Guiling', 'Bunay', '1964-11-12', 'Male', 'Married', '', 'College', 'Labor', '', '0', '0', NULL, NULL),
(155, 'Alfredo', 'Gapo', 'Mercader', '1950-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(156, 'Leoracito', 'Ebasan', 'Bado', '1965-11-12', 'Male', 'Married', '', 'Vocational', 'maintenance', 'Permanent', '0', '0', NULL, NULL),
(157, 'Debber', 'Bado', 'Lopez', '1991-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(158, 'Pablo', 'Dayday', 'Batutay', '1961-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(159, 'Salvacio', 'Pepito', 'Lozano', '1964-11-12', 'Female', 'Widow', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(160, 'Marlon', 'Batucan', 'Cavarida', '1959-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(161, 'Romero', 'Lozano', 'Anor', '1959-11-12', 'Male', 'Married', '', 'HS', 'Painter', 'self_employed', '0', '0', NULL, NULL),
(162, 'Lalyn', 'Briones', 'Alvia', '1958-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(163, 'Gilberto', 'Reco', 'Abarca', '1948-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(164, 'Eduardo', 'Reco', 'Abarca', '1956-11-12', 'Male', 'Separated', '', 'College', 'Electrician', 'self_employed', '0', '0', NULL, NULL),
(165, 'Bernardino', 'Solidad', 'Gabati', '1958-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(166, 'Christopher', 'Uy', 'Bonayon', '1972-11-12', 'Male', 'Married', '', 'College', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(167, 'Alberto', 'Bado', 'Lomongo', '1950-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(168, 'Edrick', 'Reco', 'Benadowan', '1979-11-12', 'Male', 'Living_in', '', 'Vocational', 'maintenance', 'Permanent', '0', '0', NULL, NULL),
(169, 'Abraham', 'Ersando', 'Racasa', '1984-11-12', 'Male', 'Married', '', 'College', 'Bodyguard', 'Permanent', '0', '0', NULL, NULL),
(170, 'Teodora', 'Balocan', 'Morales', '1955-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(171, 'Sherwin_Kim', 'Cabahug', 'Mandi', '1983-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(172, 'Victor', 'Buca', 'Rosario', '1958-11-12', 'Male', 'Married', '', 'HS', 'Bodybuilder', 'Casual', '0', '0', NULL, NULL),
(173, 'Marianita', 'Florez', 'Anor', '1938-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(174, 'Erlinda', 'Alivio', 'Perediz', '1945-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(175, 'Ramon', 'Nacario', 'Abarca', '1964-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(176, 'Maine', 'Leonor', 'Caryo', '1941-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(177, 'Jun_Dexter', 'Libre', 'Magigo', '1991-11-12', 'Male', 'Married', '', 'Vocational', 'Painter', 'Casual', '0', '0', NULL, NULL),
(178, 'Kenneth', 'Modesiyo', 'Anor', '1987-11-12', 'Male', 'Living_in', '', 'College', 'Electrician', 'Casual', '0', '0', NULL, NULL),
(179, 'Violeta', 'Ardiente', 'Lozano', '1963-11-12', 'Female', 'Widow', '', 'College', 'Helper', 'Casual', '0', '0', NULL, NULL),
(180, 'Manuel', 'Echavez', 'Neri', '1961-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(181, 'Antonia', 'Jorudis', 'Berondo', '1952-11-12', 'Female', 'Widow', '', 'College', 'None', '', '0', '0', NULL, NULL),
(182, 'Demetria', 'Ardiente', 'Lozano', '1946-11-12', 'Female', 'Single', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(183, 'Victoriano', 'Nario', 'Nacario', '1955-11-12', 'Male', 'Living_in', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(184, 'Charita', 'Dayday', 'Buca', '1961-11-12', 'Female', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(185, 'Lucia', 'Espoma', 'Suson', '1961-11-12', 'Female', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(186, 'George_Sr.', 'Eslit', 'Ramos', '1960-11-12', 'Male', 'Married', '', 'College', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(187, 'Amel', 'Abdul', 'Otto', '1974-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(188, 'Ronie', 'Casas', 'Sumapig', '1969-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(189, 'Roberto', 'Paramo', 'Marano', '1950-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(190, 'Ricardo', 'Ermac', 'Awitan', '1951-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(191, 'Anjo', 'Better', 'Ermac', '1987-11-12', 'Male', 'Living_in', '', 'Elementary', 'Mechanic', 'permanent', '0', '0', NULL, NULL),
(192, 'Wilma', 'Bagday', 'Ermac', '1972-11-12', 'Female', 'Widow', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(193, 'Merwin', 'Muncal', 'Dango', '1982-11-12', 'Male', 'Living_in', '', 'College', 'Engineer', 'permanent', '0', '0', NULL, NULL),
(194, 'Alfonso', 'Muncal', 'Reyes', '1950-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(195, 'Randolph', 'Henson', 'Bulahog', '1965-11-12', 'Male', 'Married', '', 'College', 'Govt_Employee', 'permanent', '0', '0', NULL, NULL),
(196, 'Rexan', 'Bahian', 'Maglasang', '1979-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(197, 'Susana', 'Bahian', 'Maglasang', '1960-11-12', 'Female', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(198, 'Dennis', 'Bahian', 'Maglasang', '1983-11-12', 'Male', 'Living_in', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(199, 'Jyme', 'Tungao', 'Romulo', '1968-11-12', 'Male', 'Married', '', 'College', 'Admin_aid', 'permanent', '0', '0', NULL, NULL),
(200, 'Narciso', 'Geralde', 'Ragasajo', '1956-11-12', 'Male', 'Married', '', 'Vocational', 'None', '', '0', '0', NULL, NULL),
(201, 'Agustin', 'Jungalan', 'Camingawan', '1941-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(202, 'Isagani_Jr.', 'Laorito', 'Alcantara', '1981-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(203, 'Nilo_Jr.', 'Dompalis', 'Guintaason', '1986-11-12', 'Male', 'Living_in', '', 'HS', 'Helper', 'Casual', '0', '0', NULL, NULL),
(204, 'Alex', 'Nacor', 'Capangpangan', '1982-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(205, 'Alberto', 'Anor', 'Mariquit', '1966-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(206, 'Danillo', 'Labang', 'Pahayal', '1976-11-12', 'Male', 'Married', '', 'HS', 'Vendor', 'self_employed', '0', '0', NULL, NULL),
(207, 'Roque', 'Daniel', 'Garcia', '1989-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'Permanent', '0', '0', NULL, NULL),
(208, 'Rogger', 'Liken', 'Sutit', '1963-11-12', 'Male', 'Married', '', 'Elementary', 'Upholstery', 'self_employed', '0', '0', NULL, NULL),
(209, 'Ronilo', 'Ablon', 'Calantas', '1976-11-12', 'Male', 'Married', '', 'College', 'Driver', 'Casual', '0', '0', NULL, NULL),
(210, 'Wiljohn', 'Nobillos', 'Okima', '1981-11-12', 'Male', 'Married', '', 'College', 'Gasman', 'Casual', '0', '0', NULL, NULL),
(211, 'Efharni_jr.', 'Dilima', 'Rabaja', '1988-11-12', 'Male', 'Living_in', '', 'HS', 'salesman', 'Permanent', '0', '0', NULL, NULL),
(212, 'Roberto', 'Maglasang', 'Ermac', '1973-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'Permanent', '0', '0', NULL, NULL),
(213, 'Renato', 'Ermac', 'Caballero', '1981-11-12', 'Male', 'Living_in', '', 'HS', 'Helper', 'Casual', '0', '0', NULL, NULL),
(214, 'Colito', 'Renes', 'Salde', '1960-11-12', 'Male', 'Married', '', 'Vocational', 'None', '', '0', '0', NULL, NULL),
(215, 'Sucoro', 'Rives', 'Salde', '1931-11-12', 'Female', 'Married', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(216, 'Therisita', 'Gabayan', 'Dadang', '1954-11-12', 'Female', 'Widow', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(217, 'Lebrito', 'Capangpangan', 'Reco', '1963-11-12', 'Male', 'Married', '', 'Vocational', 'Business', 'self_employed', '0', '0', NULL, NULL),
(218, 'Remonito', 'Tyson', 'Panatag', '1953-11-12', 'Male', 'Married', '', 'College', 'Engineer', 'Permanent', '0', '0', NULL, NULL),
(219, 'Ignacio', 'Bilayo', 'Quimor', '1949-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(220, 'Michael', 'Lacuto', 'Amatunding', '1972-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(221, 'Edwin_jr.', 'Gabisay', 'A', '1992-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(222, 'Rogelio_jr.', 'Denolong', 'Balgoa', '1958-11-12', 'Male', 'Married', '', 'College', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(223, 'Oliver', 'Labial', 'Tacbobo', '1990-11-12', 'Male', 'Living_in', '', 'Vocational', 'Factory_worker', 'Casual', '0', '0', NULL, NULL),
(224, 'Agripino', 'Balatayo', 'Sobrado', '1960-11-12', 'Male', 'Married', '', 'HS', 'Vendor', 'self_employed', '0', '0', NULL, NULL),
(225, 'Bella', 'Badar', 'Ometer', '1951-11-12', 'Female', 'Widow', '', 'HS', 'Vendor', 'self_employed', '0', '0', NULL, NULL),
(226, 'Juan', 'Tamayo', 'Sanoy', '1977-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(227, 'Ronillo', 'Apas', 'Capulac', '1961-11-12', 'Male', 'Married', '', 'College', 'Doctor', 'permanent', '0', '0', NULL, NULL),
(228, 'Bob', 'Rujo', 'Cutab', '1980-11-12', 'Male', 'Married', '', 'HS', 'Vendor', 'self_employed', '0', '0', NULL, NULL),
(229, 'Susimo', 'Rujo', 'Roylo', '1941-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(230, 'Feliciano', 'Labang', 'Himina', '1949-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(231, 'Hermino', 'Dolira', 'Labadan', '1954-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(232, 'Rubin', 'Maglasang', 'Sidino', '1988-11-12', 'Male', 'Living_in', '', 'College', 'Helper', 'Casual', '0', '0', NULL, NULL),
(233, 'Pinyo', 'Paloma', 'Roxax', '1961-11-12', 'Male', 'Married', '', 'Vocational', 'Self_Business', 'self_employed', '0', '0', NULL, NULL),
(234, 'Costiquia', 'Aligarmi', 'Anuca', '1953-11-12', 'Female', 'Widow', '', 'College', 'Vendor', 'self_employed', '0', '0', NULL, NULL),
(235, 'Priff', 'Macalong', 'Maglasang', '1990-11-12', 'Male', 'Living_in', '', 'College', 'Business', 'permanent', '0', '0', NULL, NULL),
(236, 'Primo', 'Ermac', 'Cozano', '1964-11-12', 'Male', 'Married', '', 'HS', 'Driver', '', '0', '0', NULL, NULL),
(237, 'Rehina', 'Subido', 'Egiha', '1946-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(238, 'Bonita', 'Ermac', 'Maglasang', '1967-11-12', 'Female', 'Widow', '', 'HS', 'Reprter', 'permanent', '0', '0', NULL, NULL),
(239, 'Juditha', 'Sas', 'Maglasang', '1951-11-12', 'Female', 'Widow', '', 'College', 'None', '', '0', '0', NULL, NULL),
(240, 'Arbin', 'Manlapig', 'Sagrado', '1980-11-12', 'Male', 'Married', '', 'HS', 'Barber', 'self_employed', '0', '0', NULL, NULL),
(241, 'Waaya', 'Bation', 'Maglasang', '1954-11-12', 'Female', 'Married', '', 'Elementary', 'House Keeper', 'none', '0', '0', NULL, NULL),
(242, 'Miguel', 'Maglasang', 'Anor', '1963-11-12', 'Male', 'Married', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(243, 'Ronnie', 'Elleso', 'Difiesta', '1982-11-12', 'Male', 'Married', '', 'Vocational', 'None', 'none', '0', '0', NULL, NULL),
(244, 'Jose Manuel', 'Ablin', 'Ferre', '1984-11-12', 'Male', 'Married', '', 'College', 'nurse', '', '0', '0', NULL, NULL),
(245, 'Edwin', 'Balido', 'Baculio', '1977-11-12', 'Male', 'Married', '', 'Vocational', 'Amacist', 'permanent', '0', '0', NULL, NULL),
(246, 'Manuel', 'Bacaro', 'Bargos', '1938-11-12', 'Male', 'Married', '', 'HS', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(247, 'Jassie', 'Sumile', 'Babani', '1990-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(248, 'AlienniÃ±o', 'Dionaldo', 'Maglasang', '1982-11-12', 'Male', 'Married', '', 'College', 'None', 'none', '0', '0', NULL, NULL),
(249, 'Recardo_Jr', 'Cabanlito', 'Sabadoya', '1982-11-12', 'Male', 'Married', '', 'College', 'None', 'none', '0', '0', NULL, NULL),
(250, 'Abdon', 'Maglasang', 'Mamuron', '1943-11-12', 'Male', 'Married', '', 'College', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(251, 'Mario', 'Maglasang', 'Mahurog', '1956-11-12', 'Male', 'Married', '', 'College', 'Retired', '', '0', '0', NULL, NULL),
(252, 'Renato', 'Cabadan', 'Nambatac', '1977-11-12', 'Male', 'Married', '', 'HS', 'Business', 'Casual', '0', '0', NULL, NULL),
(253, 'Loe', 'Gulang', 'dela_Santos', '1979-11-12', 'Male', 'Married', '', 'College', 'Seaman', 'permanent', '0', '0', NULL, NULL),
(254, 'Edita', 'Maglasang', 'Apaz', '1961-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(255, 'Arneil', 'Verano', 'Oliveros', '1968-11-12', 'Male', 'Separated', '', 'Vocational', 'Proprietor', 'self_employed', '0', '0', NULL, NULL),
(256, 'Gane', 'Ruawidas', 'Ditacamilto', '1983-11-12', 'Male', 'Living_in', '', 'College', 'Diser', 'permanent', '0', '0', NULL, NULL),
(257, 'Jhonmar', 'Ramos', 'Tubio', '1987-11-12', 'Male', 'Living_in', '', 'Vocational', 'Aircon_maintinance', 'Casual', '0', '0', NULL, NULL),
(258, 'Aloner', 'Mabime', 'YaÃ±ez', '1971-11-12', 'Male', 'Married', '', 'Vocational', 'Labor', 'Casual', '0', '0', NULL, NULL),
(259, 'Samuel', 'Llanez', 'YaÃ±ez', '1946-11-12', 'Male', 'Married', '', 'Elementary', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(260, 'NiÃ±o', 'Jocsing', 'Gabino', '1983-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(261, 'Jay', 'Llanez', 'YaÃ±ez', '1953-11-12', 'Male', 'Separated', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(262, 'Juan', 'YaÃ±ez', 'Maglasang', '1975-11-12', 'Male', 'Widow', '', 'College', 'Engineer', 'permanent', '0', '0', NULL, NULL),
(263, 'Raul', 'Gracia', 'Sanchez', '1961-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(264, 'Ronie', 'Maglasang', 'Ermac', '1962-11-12', 'Male', 'Married', '', 'College', 'Electrician', '', '0', '0', NULL, NULL),
(265, 'Jestony', 'Aneora', 'Bado', '1983-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(266, 'Fediric', 'Togonon', 'Yarag', '1967-11-12', 'Male', 'Married', '', 'College', 'pipe_fitter', 'permanent', '0', '0', NULL, NULL),
(267, 'Ruel', 'Roardilas', 'Pabre', '1971-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(268, 'Welfredo', 'Barrette', 'Esabagas', '1955-11-12', 'Male', 'Married', '', 'College', 'Retired', '', '0', '0', NULL, NULL),
(269, 'Lloyd', 'Barrette', 'Salingay', '1983-11-12', 'Male', 'Married', '', 'College', 'Diser', 'permanent', '0', '0', NULL, NULL),
(270, 'Waide', 'Montor', 'Muhamad', '1979-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'permanent', '0', '0', NULL, NULL),
(271, 'Sunday', 'Delpin', 'Alima', '1973-11-12', 'Male', 'Married', '', 'Vocational', 'Utility', 'permanent', '0', '0', NULL, NULL),
(272, 'Arsinion', 'Gamotia', 'Tamayo', '1941-11-12', 'Male', 'Married', '', 'HS', 'Retired', '', '0', '0', NULL, NULL),
(273, 'Rodrigo', 'Camiroy', 'Sapyo', '1964-11-12', 'Male', 'Single', '', 'HS', 'None', 'none', '0', '0', NULL, NULL),
(274, 'Romolo', 'Camiroy', 'Sapyo', '1965-11-12', 'Male', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(275, 'Rolando', 'Camiroy', 'Sapyo', '1962-11-12', 'Male', 'Single', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(276, 'Jaynard', 'Alfecha', 'Lugonsad', '1989-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(277, 'Edgar_Sr.', 'Remigio', 'Partolan', '1954-11-12', 'Male', 'Married', '', 'College', 'City-government', 'permanent', '0', '0', NULL, NULL),
(278, 'Francisco', 'Antony', 'Singuran', '1982-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(279, 'Eusticio', 'Herira', 'Ermac', '1951-11-12', 'Male', 'Single', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(280, 'Emelita', 'Herira', 'Macalaying', '1953-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(281, 'Rexie', 'Ermac', 'Barode', '1983-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(282, 'Jerwin', 'Wasawas', 'Pitogo', '1988-11-12', 'Male', 'Married', '', 'College', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(283, 'Rodel', 'Salaan', 'Ermac', '1981-11-12', 'Male', 'Married', '', 'Elementary', 'Partime_Labor', 'Casual', '0', '0', NULL, NULL),
(284, 'Luis', 'Dutolyo', 'Ardiente', '1965-11-12', 'Male', 'Married', '', 'College', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(285, 'Purperio', 'Malinguit', 'Omandam', '1988-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(286, 'Marino', 'Ermac', 'Losano', '1968-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(287, 'Efren', 'Lagrada', 'Gumisada', '1961-11-12', 'Male', 'Married', '', 'HS', 'Barangay_Employee', 'Casual', '0', '0', NULL, NULL),
(288, 'Glen', 'Ermac', 'Castillon', '1975-11-12', 'Male', 'Married', '', 'HS', 'None', 'Casual', '0', '0', NULL, NULL),
(289, 'Vinanlia', 'Castillon', 'Ermac', '1952-11-12', 'Female', 'Married', '', 'HS', 'Retired', '', '0', '0', NULL, NULL),
(290, 'Arnold', 'Respecia', 'Calibo', '1972-11-12', 'Male', 'Married', '', 'College', 'Govt_Employee', 'Casual', '0', '0', NULL, NULL),
(291, 'Celso', 'Mainit', 'Vargas', '1969-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(292, 'Herey', 'Sapyot', 'Plati', '1980-11-12', 'Male', 'Living_in', '', 'HS', 'salesman', '', '0', '0', NULL, NULL),
(293, 'Jocelyn', 'Alfecha', 'Lagunsad', '1978-11-12', 'Female', 'Single', '', 'College', 'None', '', '0', '0', NULL, NULL),
(294, 'Michael', 'Odgudia', 'Rabuyo', '1972-11-12', 'Male', 'Married', '', 'College', 'Vendor', 'self_employed', '0', '0', NULL, NULL),
(295, 'Bedandino', 'Respisya', 'June', '1943-11-12', 'Male', 'Married', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(296, 'Julita', 'Cenas', 'Egues', '1973-11-12', 'Female', 'Married', '', 'College', 'Vendor', 'self_employed', '0', '0', NULL, NULL),
(297, 'Alexander', 'Diango', 'Ermac', '1981-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(298, 'Junrell', 'Hinon', 'Rilimari', '1984-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', '', '0', '0', NULL, NULL),
(299, 'Dionicio', 'Albatera', 'Calo', '1979-11-12', 'Male', 'Married', '', 'HS', 'Barber', 'Permanent', '0', '0', NULL, NULL),
(300, 'Elezardo', 'Danamaria', 'Bergonia', '1972-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(301, 'Jerry', 'Ermac', 'Dag-uman', '1976-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(302, 'Rene', 'Bantilan', 'Angay', '1972-11-12', 'Male', 'Married', '', 'College', 'Secuirity', 'Permanent', '0', '0', NULL, NULL),
(303, 'Reynaldo', 'Ermac', 'Lacanariya', '1957-11-12', 'Male', 'Married', '', 'College', 'Forklift_operator', 'Permanent', '0', '0', NULL, NULL),
(304, 'Roberto', 'Ermac', 'Ract', '1972-11-12', 'Male', 'Married', '', 'College', 'pipe_fitter', 'Casual', '0', '0', NULL, NULL),
(305, 'Ernesto', 'Tabangcoran', 'Malopange', '1974-11-12', 'Male', 'Married', '', 'no_education', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(306, 'Ciris', 'Casira', 'Pastor', '1983-11-12', 'Male', 'Married', '', 'Vocational', 'steel_man', 'Permanent', '0', '0', NULL, NULL),
(307, 'Edward_Jr.', 'Diango', 'Ermac', '1978-11-12', 'Male', 'Living_in', '', 'HS', 'Welder', 'Permanent', '0', '0', NULL, NULL),
(308, 'Edwardo', 'Diango', 'Nabong', '1955-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(309, 'Eric', 'Masirin', 'Manggubat', '1979-11-12', 'Male', 'Married', '', 'HS', 'ICC_constructor', 'Casual', '0', '0', NULL, NULL),
(310, 'Erwin', 'Ruiz', 'Gapor', '1969-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(311, 'Salvador', 'Nano', 'Pangalo', '1975-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(312, 'Adoracion', 'Ermac', 'Domadag', '1976-11-12', 'Female', 'Single', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(313, 'Allen', 'Corniro', 'Cout', '1977-11-12', 'Female', 'Widow', '', 'College', 'saleslady', 'Casual', '0', '0', NULL, NULL),
(314, 'Almer', 'Ermac', 'Dumadag', '1977-11-12', 'Male', 'Married', '', 'Elementary', 'Driver', 'Casual', '0', '0', NULL, NULL),
(315, 'Geofry', 'Nantes', 'Susoh', '1970-11-12', 'Male', 'Married', '', 'College', 'None', 'self_employed', '0', '0', NULL, NULL),
(316, 'Dennis', 'Lagunsad', 'Joloyohoy', '1974-11-12', 'Male', 'S', '', 'College', 'Welder', 'Casual', '0', '0', NULL, NULL),
(317, 'Sunny', 'Corniro', 'Quilohano', '1975-11-12', 'Male', 'Married', '', 'College', 'Seaman', 'permanent', '0', '0', NULL, NULL),
(318, 'Teddy', 'Quigol', 'Gonzaga', '1978-11-12', 'Male', 'Married', '', 'Elementary', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(319, 'Marcian', 'Ermac', 'Lacio', '1944-11-12', 'Male', 'Married', '', 'HS', 'None', 'self_employed', '0', '0', NULL, NULL),
(320, 'Elsa', 'Anggot', 'Larot', '1951-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(321, 'Michael', 'Lupiz', 'delos_Reyes', '1977-11-12', 'Male', 'Married', '', 'College', 'Seaman', 'Casual', '0', '0', NULL, NULL),
(322, 'Dennis', 'Larot', 'Castillon', '1976-11-12', 'Male', 'Married', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(323, 'Hygenus', 'Stomata', 'Romanigos', '1964-11-12', 'Male', 'Widow', '', 'College', 'Business', '', '0', '0', NULL, NULL),
(324, 'Asther', 'Canggas', 'Dawis', '1981-11-12', 'Male', 'Married', '', 'College', 'Mansonry', 'per_day', '0', '0', NULL, NULL),
(325, 'Feresita', 'Orante', 'Lahoylahoy', '1945-11-12', 'Female', 'Widow', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(326, 'Vicente', 'Myro', 'Castillon', '1965-11-12', 'Male', 'Married', '', 'College', 'Business', '', '0', '0', NULL, NULL),
(327, 'Herardo', 'Rerera', 'Burda', '1970-11-12', 'Male', 'Married', '', 'College', 'OFW', '', '0', '0', NULL, NULL),
(328, 'Josifina', 'Anino', 'Jacerna', '1939-11-12', 'Female', 'Widow', '', 'College', 'None', 'self_employed', '0', '0', NULL, NULL),
(329, 'Nestor', 'Bagamaspad', 'Bultallo', '1963-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(330, 'Alay', 'Magamaspad', 'Bulotardo', '1969-11-12', 'Male', 'Married', '', 'HS', '', 'self_employed', '0', '0', NULL, NULL),
(331, 'Nilva', 'Quinain', 'Lomongo', '1954-11-12', 'Female', 'Widow', '', 'College', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(332, 'Winefredo', 'Buscano', 'Martines', '1955-11-12', 'Male', 'Married', '', 'Elementary', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(333, 'Eljun', 'Ocop', 'Buma-a', '1962-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(334, 'Noel', 'Nari', 'Darunay', '1965-11-12', 'Male', 'Married', '', 'College', 'supervisor', 'Permanent', '0', '0', NULL, NULL),
(335, 'Alice', 'Lozano', 'Bado', '1974-11-12', 'Female', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(336, 'Wilfred', 'Timo', 'delosario', '1991-11-12', 'Male', 'Married', '', 'HS', 'Gasboy', 'Permanent', '0', '0', NULL, NULL),
(337, 'Ronaldo', 'Roque', 'Manyabo', '1983-11-12', 'Male', 'Married', '', 'College', 'Globe_agent', 'Permanent', '0', '0', NULL, NULL),
(338, 'Elvira', 'Anoy', 'Lozano', '1965-11-12', 'Male', 'Widow', '', 'Vocational', 'cashier', 'Permanent', '0', '0', NULL, NULL),
(339, 'Alfredo', 'Lozano', 'Anor', '1965-11-12', 'Male', 'Married', '', 'College', 'None', 'self_employed', '0', '0', NULL, NULL),
(340, 'Christopher', 'Robrigo', 'Salaan', '1965-11-12', 'n', 's', '', 'HS', 'Famili_driver', 'Permanent', '0', '0', NULL, NULL),
(341, 'Juan', 'Rosal', 'dela_Rosa', '1968-11-12', 'Male', 'Married', '', 'HS', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(342, 'Maria', 'Go', 'Dy', '1946-11-12', 'Female', 'Widow', '', 'College', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(343, 'Raynel', 'Capangpangan', 'Sino', '1985-11-12', 'Male', 'Married', '', 'College', 'Diser', 'Permanent', '0', '0', NULL, NULL),
(344, 'DelapiÃ±a', 'Villaver', 'Cantomaria', '1964-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
(345, 'Vince', 'Cagas', 'Risonabli', '1982-11-12', 'Male', 'Living_in', '', 'HS', 'Welder', 'Casual', '0', '0', NULL, NULL),
(346, 'Jenilyn', 'Alivio', 'Quidlat', '1976-11-12', 'Male', 'Single', '', 'HS', 'Business', 'Casual', '0', '0', NULL, NULL),
(347, 'Glenda', 'Basilgo', 'Cabahug', '1962-11-12', 'Female', 'Single', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(348, 'Jipe', 'Kulita', 'Santander', '1984-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(349, 'Marsita', 'Uy', 'Alicabo', '1936-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(350, 'Elmir', 'Lacio', 'Quidlat', '1970-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(351, 'Emily', 'Virtudez', 'Lacio', '1969-11-12', 'Female', 'Married', '', 'HS', 'saleslady', 'Casual', '0', '0', NULL, NULL),
(352, 'Erlinda', 'Virtudez', 'Orasion', '1944-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(353, 'Guelberto_Jr.', 'Duran', 'Soco', '1985-11-12', 'Male', 'Living_in', '', 'College', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(354, 'Ribecca', 'Duran', 'Soco', '1959-11-12', 'Female', 'Widow', '', 'HS', 'house_wife', '', '0', '0', NULL, NULL),
(355, 'Ray', 'Tahuda', 'Ebaray', '1980-11-12', 'Male', 'Married', '', 'Vocational', 'None', '', '0', '0', NULL, NULL),
(356, 'Luciano', 'Soco', 'Mariquit', '1950-11-12', 'Female', 'Married', '', 'College', 'farming', 'self_employed', '0', '0', NULL, NULL),
(357, 'Richard', 'Sulipan', 'Bongabang', '1966-11-12', 'Male', 'Living_in', '', 'College', 'None', '', '0', '0', NULL, NULL),
(358, 'Plopanic', 'Mahusay', 'Limpangog', '1959-11-12', 'Male', 'Married', '', 'College', 'Driver', '', '0', '0', NULL, NULL),
(359, 'Dan_Vanteri', 'Ramonis', 'Suco', '1983-11-12', 'Male', 'Living_in', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(360, 'Leonardo', 'Cabahug', 'Mariquit', '1954-11-12', 'Male', 'Married', '', 'Elementary', 'CBO', 'Casual', '0', '0', NULL, NULL),
(361, 'Pablo', 'Alcala', 'Gwarin', '1954-11-12', 'Male', 'Married', '', 'College', 'Soldier', 'self_employed', '0', '0', NULL, NULL),
(362, 'Paul Rey', 'Alcala', 'Fuentes', '1994-11-12', 'Male', 'Living_in', '', 'Vocational', 'Canning', '', '0', '0', NULL, NULL),
(363, 'Herry', 'Fuentes', 'Cabor', '1950-11-12', 'Male', 'Married', '', 'College', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(364, 'Herito', 'Fuentes', 'Cadang', '1981-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', '', '0', '0', NULL, NULL),
(365, 'Carlo', 'dela_PeÃ±a', 'Cabahug', '1979-11-12', 'Male', 'Living_in', '', 'HS', 'farming', 'Casual', '0', '0', NULL, NULL),
(366, 'Verhil', 'Mata', 'Cabahug', '1981-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(367, 'Decideryo', 'Lucero', 'Tibes', '1968-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(368, 'Marvin', 'Fernandez', 'Ceberyo', '1982-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(369, 'Carlos', 'Cabahug', 'Mariquit', '1953-11-12', 'Male', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(370, 'Ruel', 'Abdan', 'Cabang', '1975-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(371, 'Michael', 'Pimentel', 'Austero', '1978-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(372, 'Ariel', 'Silada', 'Divina', '1964-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(373, 'Glenn', 'Luloguban', 'Oblemar', '1988-11-12', 'Male', 'Married', '', 'College', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(374, 'Miguelito', 'Cabahug', 'Mariquit', '1974-11-12', 'Male', 'Married', '', 'College', 'Contructual', 'Casual', '0', '0', NULL, NULL),
(375, 'Richard', 'Lahoylahoy', 'Maglasang', '1979-11-12', 'Male', 'Married', '', 'HS', 'Business', 'Casual', '0', '0', NULL, NULL),
(376, 'Dionesio', 'Wagas', 'Silute', '1981-11-12', 'Male', 'Married', '', 'Vocational', 'Secuirity', 'Casual', '0', '0', NULL, NULL),
(377, 'Romel', 'Cabahug', 'Midilo', '1989-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(378, 'Bartolome', 'Cabahug', 'Mariquit', '1956-11-12', 'Male', 'Married', '', 'Elementary', 'farming', 'self_employed', '0', '0', NULL, NULL),
(379, 'Arnold', 'Heyrana', 'Ridundo', '1970-11-12', 'Male', 'Living_in', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(380, 'Alfredo', 'Cabahug', '', '1977-11-12', 'Male', 'Single', '', 'Elementary', 'Const_worker', 'Permanent', '0', '0', NULL, NULL),
(381, 'Roland', 'Cabahug', 'Gabunya', '1985-11-12', 'Male', 'Living_in', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(382, 'Gudofredo', 'Cabahug', 'Mariquit', '1959-11-12', 'Male', 'Married', '', 'HS', 'farming', 'self_employed', '0', '0', NULL, NULL),
(383, 'Duglas', 'Garcia', 'Binsolga', '1975-11-12', 'Male', 'Living_in', '', 'College', 'triller_driver', 'Permanent', '0', '0', NULL, NULL),
(384, 'Leonardo', 'Aguilar', 'Dilima', '1982-11-12', 'Male', 'Married', '', 'Elementary', 'lumpia_maker', 'Casual', '0', '0', NULL, NULL),
(385, 'Gersiel', 'Talhedo', 'Bercide', '1977-11-12', 'Male', 'Married', '', 'College', 'Bus_driver', 'pe', '0', '0', NULL, NULL),
(386, 'Zeo', 'Abran', 'Cabahug', '1970-11-12', 'Male', 'Married', '', 'College', 'Welder', 'Casual', '0', '0', NULL, NULL),
(387, 'Rashel', 'Ugna', 'Baringas', '1971-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(388, 'Carmilita', 'Omalay', 'Andos', '1969-11-12', 'Male', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(389, 'Ricky', 'Apique', 'Gapor', '1977-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(390, 'Ernie', 'Pipito', 'Puterti', '1962-11-12', 'Male', 'Married', '', 'HS', 'Porter', 'Casual', '0', '0', NULL, NULL),
(391, 'Jessie', 'Ometer', 'Camingao', '1974-11-12', 'Male', 'Married', '', 'HS', 'lumpia_rapper', 'Permanent', '0', '0', NULL, NULL),
(392, 'Ricky', 'Sakin', 'Jemika', '1974-11-12', 'Male', 'Married', '', 'HS', 'Business', 'Casual', '0', '0', NULL, NULL),
(393, 'Renny_Boy', 'Pipito', 'Puterti', '1978-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL);
INSERT INTO `residents` (`id`, `first_name`, `last_name`, `middle_name`, `birthdate`, `gender`, `civil_status`, `contact_number`, `education`, `occupation_category`, `occupation_specific`, `if_voter`, `if_disabled`, `created_at`, `updated_at`) VALUES
(394, 'Rolando', 'Jayson', 'Austero', '1965-11-12', 'Male', 'Married', '', 'Elementary', 'delivery_boy', 'self_employed', '0', '0', NULL, NULL),
(395, 'Robin', 'Cacinero', 'Cabisoris', '1955-11-12', 'Male', 'Married', '', 'College', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(396, 'Erlito', 'Pasco', 'Quimod', '1961-11-12', 'Male', 'Living_in', '', 'HS', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(397, 'Jayson', 'Alcaras', 'Bawigas', '1980-11-12', 'Male', 'Single', '', 'HS', 'lumpia_maker', 'Casual', '0', '0', NULL, NULL),
(398, 'Runato', 'Siapel', 'Baricuatro', '1951-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(399, 'Edwin', 'Aguinod', 'Tumanpony', '1970-11-12', '', 'Married', '', 'Elementary', 'Driver', 'permanent', '0', '0', NULL, NULL),
(400, 'Armand', 'Dag-uman', 'Yabug', '1967-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(401, 'Danilo', 'Bantayan', 'Panoayan', '1972-11-12', 'Male', 'Married', '', 'Elementary', 'scraffer', 'self_employed', '0', '0', NULL, NULL),
(402, 'Joel', 'Siapel', 'Bantilis', '1974-11-12', 'Male', 'Married', '', 'HS', 'Driver', '', '0', '0', NULL, NULL),
(403, 'Wilfredo', 'Bontilaw', 'Dabogo', '1965-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(404, 'Raymond', 'Jayzoy', 'Estiro', '1964-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(405, 'Filipe', 'Pacada', 'Tanduyan', '1964-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(406, 'Real', 'Cabahug', 'Moncelo', '1980-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'per_day', '0', '0', NULL, NULL),
(407, 'Jhon_Carlo', 'Dag-uman', 'Callo', '1987-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(408, 'Dominador', 'Dag-uman', 'Yabo', '1960-11-12', 'Male', 'Married', '', 'HS', 'Checker_PSAK', 'permanent', '0', '0', NULL, NULL),
(409, 'Danilo', 'Austero', 'Mata', '1972-11-12', 'Male', 'Married', '', 'HS', 'driver_electrical', 'p', '0', '0', NULL, NULL),
(410, 'Roberto', 'Villa_Hermosa', 'Limpangog', '1962-11-12', 'Male', 'Married', '', 'Elementary', 'fisherman', 'permanent', '0', '0', NULL, NULL),
(411, 'Danti', 'Saploy', 'Yurom', '1974-11-12', 'Male', 'Married', '', 'HS', 'hopia_rapper', 'Casual', '0', '0', NULL, NULL),
(412, 'Haime', 'Rubia', 'Perez', '1951-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(413, 'Alojandro', 'Galbes', 'Acusar', '1962-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(414, 'leonides', 'Rubia', 'Rivas', '1989-11-12', 'Male', 'Married', '', 'Vocational', 'beaker', 'permanent', '0', '0', NULL, NULL),
(415, 'Marlui', 'Repicio', 'Demicillo', '1984-11-12', 'Male', 'Living_in', '', 'HS', 'hopia_rapper', 'Casual', '0', '0', NULL, NULL),
(416, 'Rumolo', 'Matahong', 'Demicillo', '1987-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(417, 'Orvelie', 'Apique', 'Gapor', '1974-11-12', 'Male', 'Married', '', 'HS', 'lupia_baker', 'Permanent', '0', '0', NULL, NULL),
(418, 'Dionicio', 'Sumandora', 'Dalion', '1988-11-12', 'Male', 'Living_in', '', 'HS', 'lumpia_rapper', 'Casual', '0', '0', NULL, NULL),
(419, 'Felix', 'Quidlat', 'Nillamo', '1986-11-12', 'Male', 'Living_in', '', 'Elementary', 'rapper_maker', 'Casual', '0', '0', NULL, NULL),
(420, 'Raul', 'Chen_Foo', 'Lozano', '1971-11-12', 'Male', 'Married', '', 'College', 'regular_retailer', 'self_employed', '0', '0', NULL, NULL),
(421, 'Ruel', 'Benabawan', 'Loreto', '1981-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(422, 'Edwardo', 'Malonhaw', 'Sembao', '1961-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(423, 'Hobeto', 'Florez', 'Kabele', '1963-11-12', 'Male', 'Married', '', 'College', 'driver_machine', 'Permanent', '0', '0', NULL, NULL),
(424, 'Herina', 'Gallena', 'Arauni', '1951-11-12', 'Female', 'Widow', '', 'College', 'retired', 'self_employed', '0', '0', NULL, NULL),
(425, 'Analyn', 'Bado', 'Magsayo', '1977-11-12', 'Female', 'Single', '', 'College', 'secretary', 'Permanent', '0', '0', NULL, NULL),
(426, 'Rey', 'Lipasan', 'Coneras', '1981-11-12', 'Male', 'Married', '', 'HS', 'barber', 'Casual', '0', '0', NULL, NULL),
(427, 'Pedro_Sr.', 'Bado', 'Magsayo', '1954-11-12', 'Female', 'Married', '', 'Elementary', 'farming', 'self_employed', '0', '0', NULL, NULL),
(428, 'Vicente', 'Ondong', 'Makapas', '1969-11-12', 'Male', 'Married', '', 'HS', 'driver', 'self_employed', '0', '0', NULL, NULL),
(429, 'Simeon', 'Lopez', 'Mokoy', '1983-11-12', 'Male', 'Living_in', '', 'HS', 'barber', 'Casual', '0', '0', NULL, NULL),
(430, 'Fredo', 'Fagaloyon', 'Bado', '1957-11-12', 'Male', 'Married', '', 'HS', 'line_man', 'Permanent', '0', '0', NULL, NULL),
(431, 'Christian', 'Iguado', 'Tanyeri', '2013-11-12', 'Male', 'Single', '', 'College', 'professor', 'Permanent', '0', '0', NULL, NULL),
(432, 'Elmer', 'Sacapan', 'Nagal', '1955-11-12', 'Male', 'Married', '', 'College', 'retired', 'self_employed', '0', '0', NULL, NULL),
(433, 'Leo', 'Suminget', 'Maglangit', '1945-11-12', 'Male', 'Married', '', 'College', 'retired', 'self_employed', '0', '0', NULL, NULL),
(434, 'Teotimo', 'Saraosad', 'Gelakomi', '1940-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(435, 'Rey', 'Lopera', 'Olandria', '1973-11-12', 'Male', 'Married', '', 'College', 'Business', 'Permanent', '0', '0', NULL, NULL),
(436, 'Eigene', 'Lopera', 'Olandria', '1971-11-12', 'Male', 'Married', '', 'Vocational', 'Labor', 'Casual', '0', '0', NULL, NULL),
(437, 'Alan', 'Lopera', 'Olandria', '1974-11-12', 'Male', 'Married', '', 'College', 'OFW', '', '0', '0', NULL, NULL),
(438, 'Romeo', 'Alivio', 'Lopez', '1970-11-12', 'Male', 'Married', '', 'HS', 'OFW', 'Casual', '0', '0', NULL, NULL),
(439, 'John_Michael', 'Cebusana', 'Malonhaw', '1988-11-12', 'Male', 'Married', '', 'College', 'electrician', 'Casual', '0', '0', NULL, NULL),
(440, 'Danny', 'Surigao', 'Orsomal', '1971-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(441, 'James_Nicky', 'Abelosa', 'Calimpong', '1991-11-12', 'Male', 'Living_in', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(442, 'Floreine', 'Laurente', 'Permacio', '1966-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(443, 'Joel', 'Laurenti', 'Permacio', '1972-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(444, 'Eric', 'Laurenti', 'Permacio', '1983-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(445, 'Diosdado', 'Baran', 'Fernandez', '1961-11-12', 'Male', 'Married', '', 'Elementary', 'gardening', 'self_employed', '0', '0', NULL, NULL),
(446, 'Julyo', 'Laurenti', 'Permacio', '1983-11-12', 'Male', 'Single', '', 'Elementary', 'labor', 'self_employed', '0', '0', NULL, NULL),
(447, 'Nelson', 'Cadampong', 'Nanaman', '1953-11-12', 'Male', 'Living_in', '', 'Elementary', 'panday_mason', 'self_employed', '0', '0', NULL, NULL),
(448, 'Pebreto', 'Laurenti', 'Permacio', '1973-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(449, 'Ermenia', 'Antiro', 'Magbasa', '1985-11-12', 'Female', 'Widow', '', 'Elementary', 'house_wife', '', '0', '0', NULL, NULL),
(450, 'Julieta', 'Laurenti', 'Antibo', '1955-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(451, 'Mark', 'Sierra', 'Tapales', '1982-11-12', 'Male', 'Married', '', 'College', 'Machinist', 'per_day', '0', '0', NULL, NULL),
(452, 'Nio', 'Dayundong', 'ArceÃ±a', '1981-11-12', 'Male', 'Living_in', '', 'College', 'Secuirity', 'permanent', '0', '0', NULL, NULL),
(453, 'Henry', 'Sator', 'Laurenti', '1973-11-12', 'Male', 'Married', '', 'Vocational', 'driver', 'Casual', '0', '0', NULL, NULL),
(454, 'Arnold', 'Sator', 'Laurenti', '1966-11-12', 'Male', 'Married', '', 'HS', 'driver', '', '0', '0', NULL, NULL),
(455, 'Acioncion', 'Curpos', 'Estilone', '1968-11-12', 'Female', 'Widow', '', 'HS', 'business', 'self_employed', '0', '0', NULL, NULL),
(456, 'Estella', 'Cabiling', 'Lozano', '1968-11-12', 'Female', 'Widow', '', 'Elementary', 'Business', 'Casual', '0', '0', NULL, NULL),
(457, 'Pepito', 'Corpuz', 'Capangpangan', '1945-11-12', 'Male', 'Married', '', 'Elementary', 'retired', 'self_employed', '0', '0', NULL, NULL),
(458, 'Serhiyo', 'Pezon', 'Basonido', '1957-11-12', 'Male', 'Living_in', '', 'College', 'jobless', '', '0', '0', NULL, NULL),
(459, 'Judy_Ann', 'Putalan', 'Corpuz', '1987-11-12', 'Female', 'Married', '', 'Vocational', 'None', 'Casual', '0', '0', NULL, NULL),
(460, 'Andre_Serald', 'Bado', 'YbaÃ±ez', '1988-11-12', 'Male', 'Living_in', '', 'College', 'seaman', 'Casual', '0', '0', NULL, NULL),
(461, 'Allan', 'Bado', 'RoaÃ±ez', '1963-11-12', 'Male', 'Widow', '', 'HS', 'driver', '', '0', '0', NULL, NULL),
(462, 'Ernisto', 'Castillon', 'Angat', '1956-11-12', 'Male', 'Married', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(463, 'Arielo', 'Legotan', 'Makipig', '1977-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(464, 'Juhinia', 'Torreon', 'Torrionava', '1988-11-12', 'Female', 'Widow', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(465, 'Disiderio', 'Aguilar', 'Ramahilyas', '1954-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(466, 'Jeraldin', 'Aguilar', 'Terrado', '1983-11-12', 'Female', 'Single', '', 'HS', '', '', '0', '0', NULL, NULL),
(467, 'Lany_Roy', 'Empasis', 'Salvador', '1984-11-12', 'Male', 'Living_in', '', 'HS', 'driver', 'self_employed', '0', '0', NULL, NULL),
(468, 'Disiderio', 'Aguilar', 'Terado', '1991-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(469, 'Dennis', 'Capuno', 'Lozano', '1979-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(470, 'Edwin', 'Empasis', 'Bagninay', '1977-11-12', 'Male', 'Married', '', 'Elementary', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(471, 'Lingcob', 'Yascer', 'Alawe', '1994-11-12', 'Male', 'Living_in', '', 'College', 'None', '', '0', '0', NULL, NULL),
(472, 'Antonio', 'Salde', 'Lopez', '1968-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(473, 'Jose', 'Ermac', 'Teliba', '1971-11-12', 'Male', 'Married', '', 'HS', 'bus', 'pe', '0', '0', NULL, NULL),
(474, 'Gabino', 'Ermac', 'Teliba', '1973-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(475, 'Regina', 'Ermac', 'Diliba', '1935-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(476, 'Cornillo', 'Ermac', 'Teliba', '1963-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(477, 'Edwin', 'Reroma', 'Aluador', '1986-11-12', 'Male', 'Married', '', 'HS', 'driver', 'Permanent', '0', '0', NULL, NULL),
(478, 'Joel', 'Capitan', 'Canabi', '1968-11-12', 'Male', 'Married', '', 'College', 'Machinist', 'per', '0', '0', NULL, NULL),
(479, 'Lito_Sr.', 'Torreon', 'Turriunba', '1969-11-12', 'Male', 'Married', '', 'Elementary', 'panday_mason', 'self_employed', '0', '0', NULL, NULL),
(480, 'Jaypel', 'Torreon', 'Jabines', '1988-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(481, 'Pablito_Jr.', 'Hubernadas', 'Jaurigue', '1985-11-12', 'Male', 'Married', '', '', 'Seafarer', '', '0', '0', NULL, NULL),
(482, 'Jeboy', 'Ermac', 'Lozano', '1977-11-12', 'Male', 'Married', '', 'HS', 'fish_vendor', '', '0', '0', NULL, NULL),
(483, 'Gardo', 'Apongan', 'Bado', '1959-11-12', 'Male', 'Married', '', 'College', 'retired', '', '0', '0', NULL, NULL),
(484, 'Andrea', 'Apongan', 'Bado', '1928-11-12', 'Female', 'Widow', '', 'HS', '', 'self_employed', '0', '0', NULL, NULL),
(485, 'Husita', 'Pepito', 'MonaÃ±es', '1952-11-12', 'Female', 'Widow', '', 'HS', 'house_wife', '', '0', '0', NULL, NULL),
(486, 'Provir', 'Tore', 'Pairat', '1985-11-12', 'Male', 'Single', '', 'College', 'teacher', 'permanent', '0', '0', NULL, NULL),
(487, 'Jhoqret', 'Quinte', 'Varga', '1984-11-12', 'Male', 'Living_in', '', 'HS', 'salesboy', '', '0', '0', NULL, NULL),
(488, 'Rolando', 'Apongan', 'Bado', '1946-11-12', 'Male', 'Married', '', 'College', 'retired', '', '0', '0', NULL, NULL),
(489, 'Albert', 'Aso', 'Garcia', '1979-11-12', 'Male', 'Living_in', '', 'Vocational', 'glass_intoller', 'permanent', '0', '0', NULL, NULL),
(490, 'Jenna', 'Payas', 'Oropisa', '1981-11-12', 'Female', 'Married', '', 'College', 'saleslady', 'Casual', '0', '0', NULL, NULL),
(491, 'Danny', 'Legaspi', 'Cagaanan', '1980-11-12', 'Male', 'Married', '', 'HS', 'operator', 'Casual', '0', '0', NULL, NULL),
(492, 'Nicanor', 'Pepito', 'Juntilla', '1974-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(493, 'Teodoro', 'Aniasco', 'Coiroha', '1934-11-12', 'Male', 'Married', '', 'Elementary', 'retired', '', '0', '0', NULL, NULL),
(494, 'Juan', 'BroÃ±idor', 'Montibon', '1957-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(495, 'Nestor', 'Flores', 'Gomunkig', '1975-11-12', 'Male', 'Living_in', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(496, 'Ernesto', 'Andos', 'Nentola', '1970-11-12', 'Male', 'Married', '', 'HS', 'labor', 'self_employed', '0', '0', NULL, NULL),
(497, 'Elbisito', 'Anding', 'Bukol', '1971-11-12', 'Male', 'Widow', '', 'HS', 'vendor', 'permanent', '0', '0', NULL, NULL),
(498, 'Reynaldo', 'Maglasang', 'Villamor', '1958-11-12', 'Male', 'Married', '', 'Elementary', 'panday_mason', 'self_employed', '0', '0', NULL, NULL),
(499, 'Mario', 'Maglasang', 'Incabo', '1975-11-12', 'Male', 'Living_in', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(500, 'Romel', 'Maliao', 'Yunglo', '1970-11-12', 'Male', 'Married', '', 'Elementary', 'driver', 'Casual', '0', '0', NULL, NULL),
(501, 'Alan', 'Amongos', 'Appay', '1976-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(502, 'Clarito', 'Itom', 'Sanas', '1983-11-12', 'Male', 'Married', '', 'HS', 'barber', 'permanent', '0', '0', NULL, NULL),
(503, 'Arnel', 'GermoÃ±ea', 'Sumagang', '1987-11-12', 'Male', 'Living_in', '', 'HS', 'helper', '', '0', '0', NULL, NULL),
(504, 'Vector', 'Pompales', 'Parame', '1973-11-12', 'Male', 'Married', '', 'Elementary', 'beaker', 'permanent', '0', '0', NULL, NULL),
(505, 'Raymundo', 'Mala-ubang', 'Cabadan', '1965-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(506, 'Lhove_Bryan', 'Maghanoy', 'Chiong', '1980-11-12', 'Male', 'Married', '', 'College', 'call_center', 'Casual', '0', '0', NULL, NULL),
(507, 'Kiddy', 'Miza', 'Vangit', '1978-11-12', 'Male', 'Married', '', 'College', 'Business', 'permanent', '0', '0', NULL, NULL),
(508, 'Erwin', 'Pahinte', 'Tumagad', '1968-11-12', 'Male', 'Married', '', 'HS', 'driver', '', '0', '0', NULL, NULL),
(509, 'Danilo', 'Manggubat', 'Dansasala', '1953-11-12', 'Male', 'Separated', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(510, 'Jessie', 'Dandasan', 'Macalong', '1976-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(511, 'Gerami', 'Salvo', 'Jegoros', '1983-11-12', 'Male', 'Living_in', '', 'College', 'hollow_blocker', 'permanent', '0', '0', NULL, NULL),
(512, 'Arturo', 'Salvo', 'Baskes', '1963-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(513, 'Allan', 'Salaan', 'Ermac', '1983-11-12', 'Male', 'Married', '', 'Elementary', 'driver', 'self_employed', '0', '0', NULL, NULL),
(514, 'Rannylo', 'Salaan', 'Ermac', '1980-11-12', 'Male', 'Single', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(515, 'Antonio', 'Barat', 'Gabulay', '1970-11-12', 'Male', 'Married', '', 'Elementary', 'driver_sikad', 'self_employed', '0', '0', NULL, NULL),
(516, 'Vivian', 'Bavyera', 'Pabriga', '1956-11-12', 'Male', 'Widow', '', 'College', 'retired', 'self_employed', '0', '0', NULL, NULL),
(517, 'Portasyon', 'Generoso', 'Gabreros', '1952-11-12', 'Male', 'Married', '', 'College', 'retired', 'self_employed', '0', '0', NULL, NULL),
(518, 'Julieta', 'Salazar', 'Fabria', '1973-11-12', 'Female', 'Separated', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(519, 'Dinah', 'Pocot', 'Arnejo', '1974-11-12', 'Female', 'Single', '', 'College', 'None', '', '0', '0', NULL, NULL),
(520, 'Jess_Roel', 'Nabua', 'Bontilao', '1977-11-12', 'Male', 'Married', '', 'College', 'security_guard', '', '0', '0', NULL, NULL),
(521, 'Steban', 'ViÃ±a', 'Elcamel', '1973-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(522, 'Gulito', 'Amanariio', 'Ramogsok', '1958-11-12', 'Male', 'Living_in', '', 'College', 'sastre', 'pe', '0', '0', NULL, NULL),
(523, 'Milsan', 'Padillo', 'Mariquit', '1981-11-12', 'Male', 'Living_in', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(524, 'Fernando', 'Poca', 'Tilawan', '1953-11-12', 'Male', 'Married', '', 'Vocational', 'operator', 'Permanent', '0', '0', NULL, NULL),
(525, 'Marina', 'Padillo', 'Mariquit', '1946-11-12', 'Female', 'Widow', '', 'HS', 'fish_vendor', 'self_employed', '0', '0', NULL, NULL),
(526, 'Rolli', 'Nanaman', 'Samaing', '1972-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(527, 'Alfredo', 'Nanaman', 'Quidlat', '1950-11-12', 'Male', 'Widow', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(528, 'Nersiso', 'Ojalis', 'Arde', '1987-11-12', 'Male', 'Living_in', '', 'Vocational', 'driver', 'self_employed', '0', '0', NULL, NULL),
(529, 'Editha', 'Nanaman', 'Quidlat', '1962-11-12', 'Female', 'Living_in', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(530, 'Meluin', 'Amarga', 'Nabangi', '1969-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(531, 'Rodrego', 'Amarga', 'Mabangit', '1966-11-12', 'Male', 'Living_in', '', 'HS', 'gardening', 'self_employed', '0', '0', NULL, NULL),
(532, 'Laberto_Jr.', 'Maghinay', 'Jumawan', '1945-11-12', 'Male', 'Married', '', 'HS', 'retired', '', '0', '0', NULL, NULL),
(533, 'Renisito', 'Hepowit', 'Canillo', '1968-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(534, 'Arman', 'Canbaya', 'Nanaman', '1989-11-12', 'Male', 'Living_in', '', 'HS', 'driver', 'Casual', '0', '0', NULL, NULL),
(535, 'Roel', 'Villanueva', 'Rabusa', '1970-11-12', 'Male', 'Married', '', 'College', 'mechanics', 'permanent', '0', '0', NULL, NULL),
(536, 'Jerry', 'Cabasag', 'Pamatim', '1973-11-12', 'Male', 'Married', '', 'Vocational', 'automotive', 'permanent', '0', '0', NULL, NULL),
(537, 'Christina', 'Labrador', 'Caparida', '1942-11-12', 'Female', 'Widow', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(538, 'Omay', 'Ampoan', 'Palok', '1968-11-12', 'Male', 'Married', '', 'College', 'Soldier', 'permanent', '0', '0', NULL, NULL),
(539, 'Ferlan', 'Ligas', 'Mindosa', '1970-11-12', 'Male', 'Living_in', '', 'College', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(540, 'Prelancio', 'Palangcon', 'Caato', '1986-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(541, 'Ebahem', 'Demao', 'Baladellas', '1968-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'permanent', '0', '0', NULL, NULL),
(542, 'Victor', 'Cabaniro', 'Bernionez', '1976-11-12', 'Male', 'Married', '', 'HS', 'Caretaker', 'Casual', '0', '0', NULL, NULL),
(543, 'Cucricio', 'Bueno', 'Tranilla', '1948-11-12', 'Male', 'Married', '', 'Elementary', 'Driver', 'permanent', '0', '0', NULL, NULL),
(544, 'Wilfredo', 'Lato', 'Limotan', '1987-11-12', 'Male', 'Living_in', '', 'HS', 'Mason', 'self_employed', '0', '0', NULL, NULL),
(545, 'Angelica', 'Cutab', 'Rico', '1980-11-12', 'Male', 'Separated', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(546, 'Freedy', 'Francisco', 'Ricla', '1949-11-12', 'Male', 'Married', '', 'Vocational', 'None', '', '0', '0', NULL, NULL),
(547, 'Juscuro', 'Rico', 'Allibo', '1960-11-12', 'Male', 'Living_in', '', 'Elementary', 'Driver', 'permanent', '0', '0', NULL, NULL),
(548, 'Isko', 'Binghit', 'Angeles', '1952-11-12', 'Male', 'Married', '', 'Elementary', 'Ice_Cream_Vendor', 'self_employed', '0', '0', NULL, NULL),
(549, 'Allan', 'Sebaga', 'Actub', '1964-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(550, 'Rosalino', 'Bacus', 'Generalao', '1957-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(551, 'Rogel', 'Bacus', 'Suan', '1983-11-12', 'Male', 'Married', '', 'Vocational', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(552, 'Efren', 'Sumalpong', 'Daygam', '1965-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(553, 'Pryor', 'Mangubat', 'Samson', '1984-11-12', 'Male', 'Single', '', 'College', 'Mechanical_Engineer', 'permanent', '0', '0', NULL, NULL),
(554, 'Warren', 'Lonoy', 'Nerri', '1982-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(555, 'Sanny', 'Olandesca', 'Asis', '1978-11-12', 'Male', 'Married', '', 'College', 'Driver', 'permanent', '0', '0', NULL, NULL),
(556, 'Ricardo', 'Razo', 'Yuri', '1955-11-12', 'Male', 'Married', '', 'Elementary', 'None', '', '0', '0', NULL, NULL),
(557, 'Felipe', 'Mandrial', 'Deparine', '1926-11-12', 'Male', 'Married', '', 'HS', 'farming', 'Casual', '0', '0', NULL, NULL),
(558, 'Evelyn', 'Conas', 'Neri', '1988-11-12', 'Female', 'Separated', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(559, 'Love_Carmel', 'Rosales', 'Maisoy', '1986-11-12', 'Female', 'Single', '', 'College', 'saleslady', 'Casual', '0', '0', NULL, NULL),
(560, 'Vilma', 'Manieal', 'Cabrillos', '1963-11-12', 'Female', 'Living_in', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(561, 'Elizabeth', 'Paragozo', 'Balignot', '1970-11-12', 'Female', 'Single', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(562, 'Nicko', 'Omolon', 'Eskolano', '1992-11-12', 'Male', 'Living_in', '', 'HS', 'Welder', 'self_employed', '0', '0', NULL, NULL),
(563, 'Danny', 'DeloSantos', 'Berit', '1979-11-12', 'Male', 'Married', '', 'Vocational', 'Gasboy', 'Casual', '0', '0', NULL, NULL),
(564, 'Expedito', 'Jimenez', 'Ligotan', '1961-11-12', 'Male', 'Married', '', 'HS', 'panday_mason', 'self_employed', '0', '0', NULL, NULL),
(565, 'Elena', 'Budlong', 'Matchon', '1952-11-12', 'Female', 'Separated', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(566, 'Eduardo', 'Anino', 'Sagadal', '1956-11-12', 'Male', 'Married', '', 'HS', 'security_guard', 'Permanent', '0', '0', NULL, NULL),
(567, 'Sunny', 'Balogo', 'Agustin', '1971-11-12', 'Male', 'Married', '', 'College', 'Liason', 'Casual', '0', '0', NULL, NULL),
(568, 'Elicio', 'Ronitarez', 'Divincan', '1964-11-12', 'Male', 'Married', '', 'College', 'Supervisor', 'Permanent', '0', '0', NULL, NULL),
(569, 'Edgardo', 'Sardella', 'Punggan', '1960-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Permanent', '0', '0', NULL, NULL),
(570, 'Eligario', 'Suan', 'Quino', '1976-11-12', 'Male', 'Married', '', 'College', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(571, 'Roberto', 'Solano', 'Babarubias', '1980-11-12', 'Male', 'Married', '', 'HS', 'Salesboy', 'Permanent', '0', '0', NULL, NULL),
(572, 'Losbitrose', 'Castro', 'Pabailo', '1973-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(573, 'Eugene', 'Sardella', 'Generalao', '1981-11-12', 'Male', 'Living_in', '', 'College', 'automotive', 'self_employed', '0', '0', NULL, NULL),
(574, 'Allan', 'Caburnay', 'Opamen', '1972-11-12', 'Male', 'Married', '', 'Vocational', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(575, 'Teodoro', 'Zafra', 'Tabuclin', '1937-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(576, 'Armando', 'Yongco', 'Tabuclin', '1966-11-12', 'Male', 'Living_in', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(577, 'Edison', 'Yongco', 'Tabuclin', '1961-11-12', 'Male', 'Single', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(578, 'Jeffrey', 'Zafra', 'Tabuclin', '1984-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
(579, 'Voltair', 'Zafra', 'Tabuclin', '1976-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(580, 'Nite', 'Maglinao', 'Arbasto', '1962-11-12', 'Male', 'Married', '', 'College', 'panday_mason', 'self_employed', '0', '0', NULL, NULL),
(581, 'Joel', 'Yongco', 'Tabuclin', '1972-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(582, 'Arlito', 'Yongco', 'Tabuclin', '1971-11-12', 'Male', 'Single', '', 'College', 'Liason', 'Casual', '0', '0', NULL, NULL),
(583, 'Danilo', 'Tabuclin', 'Panis', '1952-11-12', 'Male', 'Single', '', 'HS', '', '', '0', '0', NULL, NULL),
(584, 'Edwin', 'Taboknoy', 'Sibao', '1936-11-12', 'Male', 'Married', '', 'College', 'line_man', 'permanent', '0', '0', NULL, NULL),
(585, 'Gilmor', 'Gornez', 'Sagoban', '1978-11-12', 'Male', 'Married', '', 'HS', 'operator', 'permanent', '0', '0', NULL, NULL),
(586, 'Julie', 'Maglinao', 'Arbasto', '1962-11-12', 'Male', 'Married', '', 'College', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(587, 'Troy', 'Actub', 'Serano', '1964-11-12', 'Male', 'Married', '', 'College', 'Brgy._treasurer', 'permanent', '0', '0', NULL, NULL),
(588, 'Emma', 'Tugonon', 'Balaba', '1968-11-12', 'Female', 'Widow', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(589, 'Herda', 'Amarga', 'Nanaman', '1936-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(590, 'Estelita', 'Amarga', 'Acot', '1965-11-12', 'Female', 'Widow', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(591, 'Delfin', 'Lumosad', 'Carbahal', '1991-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(592, 'Regalado', 'Amarga', 'Acot', '1985-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(593, 'Michael', 'Valdez', 'Cabaraban', '1977-11-12', 'Male', 'Married', '', 'Elementary', 'Tireman', 'permanent', '0', '0', NULL, NULL),
(594, 'Duezora', 'Pacana', 'Revira', '1947-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(595, 'Edelberto', 'Petanas', 'Goldizno', '1952-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(596, 'Pabran', 'Raso', 'Agwantan', '1980-11-12', 'Male', 'Living_in', '', 'College', 'Head_guard', 'Casual', '0', '0', NULL, NULL),
(597, 'Vergillio', 'Ramiro', 'Cebua', '1960-11-12', 'Male', 'Married', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(598, 'Rudolfo', 'Ayawan', 'Inot', '1968-11-12', 'Male', 'Living_in', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(599, 'Romulo', 'Paculba', 'So-ung', '1985-11-12', 'Male', 'Separated', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(600, 'Alex', 'Amarga', 'Pacanot', '1960-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(601, 'Anatalia', 'Generalao', 'Obeso', '1951-11-12', 'Female', 'Widow', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(602, 'Christina', 'Obeso', 'Delima', '1948-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(603, 'Rodelo', 'Generalao', 'Obeso', '1974-11-12', 'Male', 'Single', '', 'College', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(604, 'Ronald', 'Obanan', 'Obeso', '1974-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(605, 'Roberto', 'Gerboto', 'Obeso', '1960-11-12', 'Male', 'Married', '', 'College', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(606, 'Lorenzo_Jr.', 'Samson', 'Ongap', '1946-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(607, 'Lester', 'Lorenzo', 'Lonay', '1972-11-12', 'Male', 'Married', '', 'College', 'Foreman', 'permanent', '0', '0', NULL, NULL),
(608, 'Marites', 'Punay', 'Lozano', '1965-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(609, 'Ricmar_Joseph', 'Butac', 'Llacuna', '1985-11-12', 'Male', 'Married', '', 'HS', 'Tireman', 'Casual', '0', '0', NULL, NULL),
(610, 'Joel', 'Sevilla', 'Lim', '1970-11-12', 'Male', 'Married', '', 'Vocational', 'Labor', 'Casual', '0', '0', NULL, NULL),
(611, 'Florenson', 'Callis', 'Corbeta', '1941-11-12', 'Male', 'Widow', '', 'Vocational', 'Business', 'self_employed', '0', '0', NULL, NULL),
(612, 'Elmo', 'Tabuclin', 'Gonzaga', '1972-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(613, 'Bonifacio', 'Maglasang', 'Tariman', '1936-11-12', 'Male', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(614, 'Danny', 'Maglasang', 'Gonzaga', '1975-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(615, 'Arnold', 'Maglasang', 'Gonzaga', '1981-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(616, 'Junjun', 'Tabuclin', 'Durog', '1984-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(617, 'Lemuel', 'Cambaya', 'Cano', '1992-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(618, 'Joey', 'Tikling', 'Laping', '1985-11-12', 'Male', 'Living_in', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(619, 'Matilde', 'Cambaya', 'Ronga', '1944-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(620, 'Michael', 'Cambaya', 'Robdis', '1987-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(621, 'Gerardo', 'Noguera', 'Salazar', '1965-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(622, 'Della', 'Salibo', 'Lipar', '1971-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(623, 'Maurine', 'Salibo', 'Lipar', '1992-11-12', 'Female', 'Separated', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(624, 'Vergillio', 'Fernandez', 'Mejeyas', '1945-11-12', 'Male', 'Married', '', 'HS', 'Meat_dispatcher', 'self_employed', '0', '0', NULL, NULL),
(625, 'Julius', 'Romeo', 'Balungag', '1975-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(626, 'Alejandro', 'Zaide', 'Mejeyas', '1959-11-12', 'Male', 'Married', '', 'Vocational', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(627, 'John_Rich', 'Fernandez', 'Gonzaga', '1991-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(628, 'Mark_Vincent', 'Paradela', 'Villar', '1981-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(629, 'Bimbo', 'Yongco', 'Tabuclin', '1957-11-12', 'Male', 'Married', '', 'College', 'Tailor', 'self_employed', '0', '0', NULL, NULL),
(630, 'Jever', 'Sanoria', 'Aranel', '1960-11-12', 'Male', 'Widow', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(631, 'Samuel', 'Loresco', 'Obaog', '1980-11-12', 'Male', 'Married', '', 'HS', 'Service_Driver', 'permanent', '0', '0', NULL, NULL),
(632, 'Pedro', 'Bedro', 'Capito', '1986-11-12', 'Male', 'Living_in', '', 'College', 'helper', 'Casual', '0', '0', NULL, NULL),
(633, 'Genesis_Mark', 'Aron', 'Pocdol', '1981-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(634, 'Norma', 'Oleriano', 'Paslon', '1951-11-12', 'Female', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(635, 'Mervinio', 'Yongco', 'Tabuclin', '1977-11-12', 'Male', 'Single', '', 'HS', 'Garbage_collector', 'permanent', '0', '0', NULL, NULL),
(636, 'Mario', 'Hernani', 'Bas', '1968-11-12', 'Male', 'Married', '', 'HS', 'CVO', 'permanent', '0', '0', NULL, NULL),
(637, 'Loreto', 'Gabines', 'Ermac', '1970-11-12', 'Male', 'Married', '', 'College', 'Tireman', 'permanent', '0', '0', NULL, NULL),
(638, 'Benito', 'Mariquit', 'Villarte', '1964-11-12', 'Male', 'Widow', '', 'College', 'Employee', 'Casual', '0', '0', NULL, NULL),
(639, 'Rupino', 'Tairos', 'Magsayo', '1965-11-12', 'Male', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(640, 'Susano', 'Ugok', 'Luardo', '1956-11-12', 'Male', 'Separated', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(641, 'Roel', 'Arma', 'Rico', '1977-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(642, 'Ida', 'Sadirnas', 'Arma', '1973-11-12', 'Female', 'Widow', '', 'HS', 'sales_lady', 'Casual', '0', '0', NULL, NULL),
(643, 'Edgar', 'Mayor', 'Cahig', '1985-11-12', 'Male', 'Married', '', 'Vocational', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(644, 'Johnny', 'Mayor', 'Cahig', '1978-11-12', 'Male', 'Married', '', 'College', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(645, 'Ferdinand', 'Aniasco', 'Rico', '1984-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(646, 'Marcelo', 'Rico', 'Lauro', '1973-11-12', 'Male', 'Widow', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(647, 'Albert', 'Aclon', 'Bolgares', '1988-11-12', 'Male', 'Married', '', 'HS', 'Gasman', 'Casual', '0', '0', NULL, NULL),
(648, 'Vicente', 'Anaya', 'Asoy', '1955-11-12', 'Male', 'Living_in', '', 'Elementary', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(649, 'Leo', 'Bracero', 'Balos', '1989-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(650, 'Rene', 'Dabodabo', 'Looc', '1978-11-12', 'Male', 'Married', '', 'HS', 'driver', 'Casual', '0', '0', NULL, NULL),
(651, 'Roy', 'Mag-aso', 'Nanaman', '1955-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(652, 'Pedro', 'Baterna', 'Mag-aso', '1973-11-12', 'Male', 'Widow', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(653, 'Jonathan', 'Layog', 'Catubig', '1969-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(654, 'Kenny', 'Bangis', 'Zapanto', '1981-11-12', 'Male', 'Living_in', '', 'College', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(655, 'Marlon', 'Zoles', 'Nanaman', '1959-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(656, 'Edwin', 'Carisagan', 'Dampog', '1994-11-12', 'Male', 'Living_in', '', 'HS', 'security_guard', 'permanent', '0', '0', NULL, NULL),
(657, 'Mike', 'Pandoma', 'Sarip', '1953-11-12', 'Male', 'Married', '', 'College', 'operator', 'permanent', '0', '0', NULL, NULL),
(658, 'Pomponso', 'Lapuz', 'Mesa', '1952-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(659, 'Eddie', 'Tan', 'Bendanillo', '1972-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'per_day', '0', '0', NULL, NULL),
(660, 'Roberta', 'Lluisma', 'Abitago', '1931-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(661, 'Rosita', 'Real', 'Imbang', '1963-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(662, 'Conrad', 'Daligdig', 'Canoos', '1982-11-12', 'Male', 'Living_in', '', 'Vocational', 'Welder', 'Casual', '0', '0', NULL, NULL),
(663, 'Renanto', 'Uno', 'Gakad', '1981-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(664, 'Jojit', 'Tabil', 'Angus', '1981-11-12', 'Male', 'Married', '', 'College', 'Merchandiser', 'Casual', '0', '0', NULL, NULL),
(665, 'Mary_Ann', 'Iglupas', 'Mesa', '1979-11-12', 'Female', 'Single', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(666, 'Lourdes', 'Embang', 'Fuentes', '1934-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(667, 'Evelyn', 'Abarcar', 'Embang', '1969-11-12', 'Female', 'Widow', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(668, 'Edwin', 'Real', 'Balabat', '1959-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(669, 'Rodel', 'Actub', 'Eyana', '1978-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(670, 'Victor', 'Abitago', 'Lluisma', '1960-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(671, 'Eric', 'Palangan', 'Vilarde', '1982-11-12', 'Male', 'Married', '', 'HS', 'driver', 'Casual', '0', '0', NULL, NULL),
(672, 'Deciderio', 'Rico', 'Calibo', '1957-11-12', 'Male', 'Married', '', 'HS', 'farming', 'self_employed', '0', '0', NULL, NULL),
(673, 'Adonis', 'Madronial', 'Cabalonia', '1957-11-12', 'Male', 'Married', '', 'College', 'Driver', 'Casual', '0', '0', NULL, NULL),
(674, 'Elmer', 'Villamor', 'Samson', '1971-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'Casual', '0', '0', NULL, NULL),
(675, 'Niva', 'Tingal', 'Maata', '1979-11-12', 'Female', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(676, 'Jhon_Michael', 'Solatorio', 'Jumalon', '1988-11-12', 'Male', 'Living_in', '', 'HS', 'Dicer', 'Casual', '0', '0', NULL, NULL),
(677, 'Antonio', 'PacaÃ±a', 'Caay', '1968-11-12', 'Male', 'Married', '', 'College', 'teacher', 'Casual', '0', '0', NULL, NULL),
(678, 'Jennifer', 'Borias', 'Dorado', '1982-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(679, 'Erwin', 'Bado', 'Fabria', '1971-11-12', 'Male', 'Married', '', 'HS', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(680, 'Armando', 'Acebes', 'Bakeril', '1985-11-12', 'Male', 'Married', '', 'Elementary', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(681, 'Ernesto', 'Umolon', 'Rama', '1964-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(682, 'Francisco', 'Labalis', 'Tapdasan', '1949-11-12', 'Male', 'Living_in', '', 'HS', '', '', '0', '0', NULL, NULL),
(683, 'Erwin', 'Antica', 'Edgano', '1976-11-12', 'Male', 'Married', '', 'College', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(684, 'Ritchel', 'Balbano', 'Balagtas', '1982-11-12', 'Male', 'Married', '', 'HS', 'driver', 'Casual', '0', '0', NULL, NULL),
(685, 'Gueli', 'Viloria', 'Rico', '1953-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(686, 'Rodney', 'Asok', 'Atad', '1970-11-12', 'Male', 'Married', '', 'College', 'seaman', 'Casual', '0', '0', NULL, NULL),
(687, 'Ricardo', 'Rico', 'Calibo', '1966-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(688, 'Ronald', 'Antonia', 'Baldelamar', '1982-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(689, 'Juvymer', 'Apostol', 'Bellesta', '1950-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(690, 'Landra', 'Rico', 'Caparida', '1947-11-12', 'Male', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(691, 'Benjamin', 'Gasal', 'Rico', '1958-11-12', 'Male', 'Married', '', 'Vocational', 'driver', 'Casual', '0', '0', NULL, NULL),
(692, 'Frankelina', 'Manreal', 'Calibo', '1938-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(693, 'Juan', 'Manreal', 'Deparine', '1933-11-12', 'Male', 'Single', '', 'HS', '', '', '0', '0', NULL, NULL),
(694, 'Fuljencio', 'Delig', 'Cagandi', '1945-11-12', 'Male', 'Married', '', 'Elementary', 'Painter', 'Casual', '0', '0', NULL, NULL),
(695, 'Leonard', 'Manreal', 'Garcia', '1979-11-12', 'Male', 'Married', '', 'College', 'Ticket_collector', 'Casual', '0', '0', NULL, NULL),
(696, 'Damiana', 'Manreal', 'Garcia', '1948-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(697, 'Hermolina', 'Manreal', 'Bardilas', '1955-11-12', 'Female', 'Widow', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(698, 'Melchor', 'Pitogo', 'Mariquit', '1955-11-12', 'Male', 'Widow', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(699, 'Alicia', 'Manreal', 'Bardilas', '1930-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(700, 'Gerald', 'Gerona', 'Manreal', '1981-11-12', 'Male', 'Married', '', 'HS', 'Onlinejob', 'permanent', '0', '0', NULL, NULL),
(701, 'Allan', 'Manreal', 'Bardilas', '1964-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(702, 'Martillano', 'Obeso', 'Delima', '1953-11-12', 'Male', 'Single', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(703, 'Tesie', 'Caomiran', 'Sociano', '1970-11-12', 'Female', 'Single', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(704, 'Romulo', 'Cabaluna', 'Rico', '1958-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(705, 'Joel', 'Castillon', 'Agipo', '1956-11-12', 'Male', 'Married', '', 'College', 'driver', 'permanent', '0', '0', NULL, NULL),
(706, 'Therisito', 'Actub', 'Lahoylahoy', '1968-11-12', 'Male', 'Single', '', 'HS', '', '', '0', '0', NULL, NULL),
(707, 'Leonardo', 'Tadina', 'Ybanez', '1968-11-12', 'Male', 'Married', '', 'HS', 'Tireman', 'permanent', '0', '0', NULL, NULL),
(708, 'Jessie', 'Malonhaw', 'Albos', '1968-11-12', 'Male', 'Single', '', 'HS', 'Service_crew', 'Casual', '0', '0', NULL, NULL),
(709, 'Virgillio', 'Uyon', 'Kalabar', '1990-11-12', 'Male', 'Single', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(710, 'Hebjer', 'Yang-yang', 'Villaber', '1985-11-12', 'Male', 'Living_in', '', 'Elementary', 'line_man', 'permanent', '0', '0', NULL, NULL),
(711, 'Thomas', 'Actub', 'Quiapo', '1958-11-12', 'Male', 'Married', '', 'College', 'electrician', 'permanent', '0', '0', NULL, NULL),
(712, 'Esnayda', 'Malon', 'Cloma', '1969-11-12', 'Female', 'Single', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(713, 'Niebes', 'Villar', 'Quiapo', '1936-11-12', 'Female', 'Widow', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(714, 'Monico', 'Ilumba', 'Esmase', '1973-11-12', 'Male', 'Married', '', 'College', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(715, 'Felix', 'Dano', 'Maglasang', '1966-11-12', 'Male', 'Living_in', '', 'HS', 'Carpenter', 'permanent', '0', '0', NULL, NULL),
(716, 'Natividad', 'Dano', 'Maglasang', '1969-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(717, 'Robert', 'Dano', 'Maglasang', '1964-11-12', 'Male', 'Single', '', 'Vocational', 'Carpenter', 'permanent', '0', '0', NULL, NULL),
(718, 'Arbine', 'Jaylo', 'Villamor', '1977-11-12', 'Male', 'Living_in', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(719, 'Benjie', 'Sumanbo', 'Cabahug', '1980-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(720, 'Alfredo_Jr.', 'Nanaman', 'Nonez', '1980-11-12', 'Male', 'Married', '', 'HS', 'helper', 'permanent', '0', '0', NULL, NULL),
(721, 'Susan', 'Fuentes', 'Yusay', '1950-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(722, 'Armonil', 'Jaylo', 'Villamor', '1982-11-12', 'Male', 'Married', '', 'College', 'Driver', 'permanent', '0', '0', NULL, NULL),
(723, 'Frias', 'Muaro', 'Bigas', '1970-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(724, 'Letty', 'Tumapon', 'Dag-uman', '1971-11-12', 'Female', 'Single', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(725, 'Maxito', 'Managing', 'Yo-ag', '1969-11-12', 'Male', 'Married', '', 'College', 'driver', 'permanent', '0', '0', NULL, NULL),
(726, 'Martin', 'Tamayo', 'Bayonan', '1964-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(727, 'Pedro', 'Boyunas', 'Abad', '1949-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(728, 'Binbilo_Sr.', 'Boyunas', 'Abad', '1946-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(729, 'Dockisano', 'Taka', 'Agusan', '1957-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(730, 'Binard', 'Boyunas', 'Abad', '1978-11-12', 'Male', 'Married', '', 'College', 'Police', 'permanent', '0', '0', NULL, NULL),
(731, 'Marlon', 'Adones', 'Babat', '1981-11-12', 'Male', 'Living_in', '', 'HS', 'Technician', 'self_employed', '0', '0', NULL, NULL),
(732, 'Medila', 'Cababat', 'Midalla', '1943-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(733, 'Romel', 'Arnejo', 'Maagad', '1974-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(734, 'Jose_Ronie', 'Monding', 'Gonzales', '1981-11-12', 'Male', 'Married', '', 'HS', 'Baker', 'permanent', '0', '0', NULL, NULL),
(735, 'Emanuel', 'Visira', 'Paclan', '1983-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(736, 'Bong', 'Mentrillo', 'Paclan', '1979-11-12', 'Male', 'Married', '', 'College', 'Driver', 'Casual', '0', '0', NULL, NULL),
(737, 'Nonita', 'Visira', 'Paclan', '1955-11-12', 'Female', 'Widow', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(738, 'Fely', 'Flores', 'Llanes', '1968-11-12', 'Female', 'Single', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(739, 'Arsenia', 'Ortiga', 'Aying', '1947-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(740, 'Emelano', 'Ortiga', 'Aying', '1970-11-12', 'Male', 'Living_in', '', 'Vocational', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(741, 'Orlando', 'Polesicas', 'Capritso', '1966-11-12', 'Male', 'Married', '', 'Elementary', 'Dispatcher', 'self_employed', '0', '0', NULL, NULL),
(742, 'justo_Jr', 'Orcerada', 'Orquillas', '1980-11-12', 'Male', 'Married', '', 'HS', 'Salesman', 'permanent', '0', '0', NULL, NULL),
(743, 'Nirekita', 'Dela_Cruz', 'Ladiso', '1972-11-12', 'Male', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(744, 'Antonio', 'Ronquillo', 'Pocdol', '1973-11-12', 'Male', 'Living_in', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(745, 'Jessie_Sr.', 'Malzobang', 'Anito', '1964-11-12', 'Male', 'Married', '', 'HS', 'Mason', 'self_employed', '0', '0', NULL, NULL),
(746, 'Jade', 'Jumalon', 'Urbano', '1984-11-12', 'Male', 'Married', '', 'HS', 'Mason', 'permanent', '0', '0', NULL, NULL),
(747, 'Paolo', 'Perez', 'Atibo', '1970-11-12', 'Male', 'Married', '', 'HS', 'operator', 'permanent', '0', '0', NULL, NULL),
(748, 'Aldwin', 'Naraha', 'Delacerna', '1971-11-12', 'Male', 'Married', '', 'Elementary', 'Welder', 'self_employed', '0', '0', NULL, NULL),
(749, 'Jose', 'Salva', 'Lahoylahoy', '1963-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'permanent', '0', '0', NULL, NULL),
(750, 'Mario', 'Hinaut', 'Cati-il', '1984-11-12', 'Male', 'Living_in', '', 'College', 'Labor', 'permanent', '0', '0', NULL, NULL),
(751, 'Allan', 'Tac-an', 'Neri', '1972-11-12', 'Male', 'Married', '', 'HS', 'Photographer', 'self_employed', '0', '0', NULL, NULL),
(752, 'Herlan', 'Nasilya', 'Resorecion', '1988-11-12', 'Male', 'Married', '', 'HS', 'security_guard', 'permanent', '0', '0', NULL, NULL),
(753, 'Sonday', 'Fernandez', 'Jahoman', '1955-11-12', 'Male', 'Married', '', 'College', 'Photographer', 'self_employed', '0', '0', NULL, NULL),
(754, 'Celbenz', 'Ganso', 'Sanboyo', '1969-11-12', 'Female', 'Living_in', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(755, 'Eduardo', 'Lahoylahoy', 'Lopera', '1954-11-12', 'Male', 'Married', '', 'HS', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(756, 'Marlo', 'Dampog', 'Butdid', '1971-11-12', 'Male', 'Married', '', 'HS', 'Latyero', 'self_employed', '0', '0', NULL, NULL),
(757, 'Geller', 'Lubantud', 'Pikit-pikit', '1983-11-12', 'Male', 'Single', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(758, 'Joan', 'Roldena', 'Sondo', '1990-11-12', 'Male', 'Married', '', 'HS', 'Canvasser', 'self_employed', '0', '0', NULL, NULL),
(759, 'Nilo', 'Inamor', 'Estreba', '1971-11-12', 'Male', 'Married', '', 'HS', 'Labor', '', '0', '0', NULL, NULL),
(760, 'Senerio', 'Claudel', 'Llanita', '1965-11-12', 'Male', 'Married', '', 'Elementary', 'driver', 'permanent', '0', '0', NULL, NULL),
(761, 'Ramel', 'Kimlog', 'T', '1973-11-12', 'Male', 'Married', '', 'Vocational', 'electrician', 'self_employed', '0', '0', NULL, NULL),
(762, 'Jeffrey', 'Echavez', 'Nadayag', '1975-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(763, 'Alfredo_Jr.', 'Bintelacion', 'Squadro', '1977-11-12', 'Male', 'Married', '', 'HS', 'electrician', 'self_employed', '0', '0', NULL, NULL),
(764, 'Ancro', 'Omentin', 'Ondo', '1970-11-12', 'Male', 'Married', '', 'College', 'driver', 'self_employed', '0', '0', NULL, NULL),
(765, 'Marivic', 'Alubido', 'Calubag', '1985-11-12', 'Female', 'Separated', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(766, 'Richard', 'Calubag', 'Batapa', '1956-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(767, 'Renato', 'LoreÃ±a', 'Mapa', '1955-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(768, 'Francisco', 'Aying', 'Lumokso', '1957-11-12', 'Male', 'Married', '', 'HS', 'Timekeeper', 'Casual', '0', '0', NULL, NULL),
(769, 'Elsa', 'Entira', 'Balbotin', '1943-11-12', 'Female', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(770, 'Jesus', 'Vergara', 'Buca', '1947-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(771, 'Dolpa', 'Vergara', 'Bungas', '1927-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(772, 'Leonora', 'Cabasag', 'Balcot', '1961-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(773, 'Josepina', 'Hondina', 'Labo', '1929-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(774, 'Juliet', 'Asocina', 'Tulusa', '1979-11-12', 'Female', 'Single', '', 'College', '', '', '0', '0', NULL, NULL),
(775, 'Neil', 'Caralde', 'Bedro', '1971-11-12', 'Male', 'Married', '', 'College', 'automotive', 'self_employed', '0', '0', NULL, NULL),
(776, 'Ronan', 'Eslit', 'Lubguban', '1979-11-12', 'Male', 'Living_in', '', 'College', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(777, 'Donalou', 'CaÃ±as', 'Bocol', '1994-11-12', 'Male', 'Single', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(778, 'Nicanor', 'Sintos', 'Tequillo', '1937-11-12', 'Male', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(779, 'Russell', 'Untolan', 'Pacuba', '1962-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(780, 'Alvin', 'Mariquit', 'Ibendoc', '1976-11-12', 'Male', 'Married', '', 'HS', 'Mason', 'self_employed', '0', '0', NULL, NULL),
(781, 'Wilfredo', 'Banaag', 'Dapa', '1945-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(782, 'Ricky', 'Tubin', 'Baloncio', '1970-11-12', 'Male', 'Married', '', 'Elementary', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(783, 'Angelina', 'Candonis', 'Tangaal', '1954-11-12', 'Female', 'Widow', '', 'College', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(784, 'Ricardo', 'Torportis', 'Catayaris', '1961-11-12', 'Male', 'Married', '', 'College', 'Mason', 'self_employed', '0', '0', NULL, NULL),
(785, 'Samuel', 'Cantalay', 'Barok', '1961-11-12', 'Male', 'Married', '', 'College', 'Machinist', 'permanent', '0', '0', NULL, NULL);
INSERT INTO `residents` (`id`, `first_name`, `last_name`, `middle_name`, `birthdate`, `gender`, `civil_status`, `contact_number`, `education`, `occupation_category`, `occupation_specific`, `if_voter`, `if_disabled`, `created_at`, `updated_at`) VALUES
(786, 'Peter', 'Migrenio', 'Atienda', '1972-11-12', 'Male', 'Living_in', '', 'College', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(787, 'Efemia', 'Omungos', 'Migrenio', '1960-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(788, 'Michael', 'Jimenez', 'Tarok', '1970-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(789, 'Ester', 'Vergara', 'Benolirao', '1956-11-12', 'Female', 'Married', '', 'HS', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(790, 'Mae', 'Vergara', 'Benolirao', '1979-11-12', 'Female', 'Single', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(791, 'Jaime_jr.', 'Magsayo', 'Rugay', '1976-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(792, 'Archie', 'Cabasag', 'Balcot', '1982-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(793, 'Virginita', 'Jaraba', 'Saludes', '1959-11-12', 'Female', 'Widow', '', 'HS', 'helper', 'permanent', '0', '0', NULL, NULL),
(794, 'Timoteo', 'Dalegan', 'Balucan', '1949-11-12', 'Male', 'Married', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(795, 'Balista', 'Villaver', 'Catina', '1936-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(796, 'Joel', 'Bakot', 'Rodriguez', '1966-11-12', 'Male', 'Married', '', 'HS', 'Mason', 'self_employed', '0', '0', NULL, NULL),
(797, 'Michell', 'Lozano', 'Alaya-ay', '1982-11-12', 'Female', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(798, 'Amador', 'Pantillano', 'Sancho', '1969-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(799, 'Ma_Fe', 'Lozano', 'Alaya-ay', '1985-11-12', 'Female', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(800, 'Jocely', 'Dalagan', 'Pukol', '1971-11-12', 'Female', 'Single', '', 'College', '', '', '0', '0', NULL, NULL),
(801, 'Perla', 'Lozano', 'Alaya-ay', '1953-11-12', 'Female', 'Widow', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(802, 'Benjamin', 'Ortega', 'Brehenti', '1941-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(803, 'Dixon', 'Ortega', 'Aralba', '1979-11-12', 'Male', 'Married', '', 'College', 'Meter_reader', 'Casual', '0', '0', NULL, NULL),
(804, 'Warlita', 'Salazar', 'Longayan', '1942-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(805, 'Benjie', 'Ortega', 'Aralba', '1977-11-12', 'Male', 'Married', '', 'College', 'Welder', 'Casual', '0', '0', NULL, NULL),
(806, 'Justino', 'Paradero', 'Cosido', '1960-11-12', 'Male', 'Married', '', 'College', 'Labor', 'permanent', '0', '0', NULL, NULL),
(807, 'Ester', 'Antonio', 'Tinay', '1941-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(808, 'Roger', 'Chinchuntic', 'Magaro', '1976-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(809, 'Veronico', 'Balaba', 'Rico', '1964-11-12', 'Male', 'Married', '', 'HS', 'operator', 'permanent', '0', '0', NULL, NULL),
(810, 'Peter', 'Daog', 'Lepalan', '1971-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(811, 'Darwin', 'Ortega', 'Aying', '1972-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(812, 'Lemuel', 'Alicer', 'Rubio', '1989-11-12', 'Male', 'Married', '', 'HS', 'Mason', 'per_day', '0', '0', NULL, NULL),
(813, 'Feliza', 'Katada', 'Mariquit', '1953-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(814, 'Allen_Cris', 'Bunag', 'Mariquit', '1988-11-12', 'Male', 'Married', '', 'College', 'operator', 'permanent', '0', '0', NULL, NULL),
(815, 'Robin', 'Bunag', 'Garcia', '1962-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'permanent', '0', '0', NULL, NULL),
(816, 'Aron_Jhon', 'Bunag', 'Mariquit', '1986-11-12', 'Male', 'Married', '', 'College', 'Welder', 'permanent', '0', '0', NULL, NULL),
(817, 'Esabilo', 'Mariquit', 'Macasiro', '1955-11-12', 'Male', 'Married', '', 'College', 'Kagawad', 'Casual', '0', '0', NULL, NULL),
(818, 'Selvistra', 'Apas', 'Gumahad', '1938-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(819, 'Jose', 'Apas', 'Tyrus', '1969-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(820, 'Bonifacio', 'Emit', 'Reconalya', '1956-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(821, 'Ricarda', 'Suan', 'Obatay', '1960-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(822, 'Marlon', 'Mariquit', 'Jusma', '1977-11-12', 'Male', 'Married', '', 'College', 'Landlord', 'self_employed', '0', '0', NULL, NULL),
(823, 'Virgilio', 'Suan', 'Mariquit', '1964-11-12', 'Male', 'Married', '', 'Elementary', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(824, 'Francisco', 'Suan', 'Mariquit', '1956-11-12', 'Male', 'Married', '', 'Elementary', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(825, 'Roberto', 'Gabonada', 'Racinyo', '1958-11-12', 'Male', 'Married', '', 'HS', 'Driver', 'self_employed', '0', '0', NULL, NULL),
(826, 'Jonver', 'Yapag', 'Sumalpong', '1962-11-12', 'Male', 'Married', '', 'College', 'Pastor', 'permanent', '0', '0', NULL, NULL),
(827, 'Virgilio', 'Pomicpic', 'Catiil', '1977-11-12', 'Male', 'Married', '', 'Vocational', 'Welder', 'self_employed', '0', '0', NULL, NULL),
(828, 'Glyn', 'Bayron', 'Omayao', '1973-11-12', 'Male', 'Married', '', 'College', 'security_guard', 'permanent', '0', '0', NULL, NULL),
(829, 'Rosita', 'Bayron', 'Omayao', '1948-11-12', 'Female', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(830, 'josefa', 'Jariol', 'Goles', '1961-11-12', 'Female', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(831, 'Rey', 'Bongolto', 'Baloran', '1980-11-12', 'Male', 'Living_in', '', 'HS', 'Circus', 'self_employed', '0', '0', NULL, NULL),
(832, 'Saturnino_Jr', 'Nahara', 'Delacerna', '1980-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(833, 'Ransily', 'Abuzo', 'Tapis', '1975-11-12', 'Female', 'Single', '', 'HS', 'Janitress', 'Casual', '0', '0', NULL, NULL),
(834, 'Dante', 'Zacarias', 'Alin', '1977-11-12', 'Male', 'Single', '', 'College', 'Labor', 'permanent', '0', '0', NULL, NULL),
(835, 'Salvador', 'Maglasang', 'Jumawan', '1975-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(836, 'Joseph', 'Dionson', 'Canoy', '1992-11-12', 'Male', 'Living_in', '', 'Vocational', 'Welder', 'Casual', '0', '0', NULL, NULL),
(837, 'Junita', 'Abulanda', 'Daligdig', '1971-11-12', 'Female', 'Married', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(838, 'Roger', 'CadiliÃ±a', 'Lumando', '1981-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(839, 'Jerson', 'Uy', 'Bubolante', '1992-11-12', 'Male', 'Single', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(840, 'Bernadette', 'Sumalpong', 'Firado', '1966-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(841, 'Nestor', 'Maghilum', 'Dag-uman', '1958-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(842, 'Anastasia', 'Fuentes', 'Nirecua', '1956-11-12', 'Female', 'Widow', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(843, 'Gene', 'Aleviano', 'Gonzales', '1965-11-12', 'Male', 'Married', '', 'HS', 'mechanic', 'self_employed', '0', '0', NULL, NULL),
(844, 'Romel_Vincent_Jr', 'Mansano', 'Rebyas', '1978-11-12', 'Male', 'Married', '', 'College', 'Manager', 'permanent', '0', '0', NULL, NULL),
(845, 'Nicolas', 'Colasilo', 'Ralinclona', '1953-11-12', 'Male', 'Married', '', 'HS', 'Utility', 'permanent', '0', '0', NULL, NULL),
(846, 'Cecilio', 'Cobrado', 'S', '1952-11-12', 'Male', 'Married', '', 'College', 'Radio_Operator', 'permanent', '0', '0', NULL, NULL),
(847, 'Rogelio', 'Arcasa', 'Garcia', '1955-11-12', 'Male', 'Widow', '', 'HS', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(848, 'Dennis', 'Eltanal', 'Manaba', '1981-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(849, 'Mila', 'Cagatan', 'C', '1962-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(850, 'Felix_Sr', 'Gumahad', 'P', '1957-11-12', 'Male', 'Married', '', 'HS', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(851, 'Pedro', 'Tapere', 'Paypa', '1942-11-12', 'Male', 'Single', '', 'Elementary', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(852, 'Clapita', 'Bation', 'Tapere', '1936-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(853, 'Linang', 'Onotan', 'So-ong', '1982-11-12', 'Female', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(854, 'Salma', 'Onotan', 'So-ong', '1990-11-12', 'Female', 'Living_in', '', 'College', '', '', '0', '0', NULL, NULL),
(855, 'Caironesa', 'Onotan', 'So-ong', '1970-11-12', 'Female', 'Separated', '', 'Vocational', '', '', '0', '0', NULL, NULL),
(856, 'Mario', 'Arcasa', 'Garcia', '1964-11-12', 'Male', 'Married', '', 'Vocational', 'Business', 'self_employed', '0', '0', NULL, NULL),
(857, 'Jimmy', 'Onotan', 'So-ong', '1973-11-12', 'Male', 'Married', '', 'Elementary', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(858, 'Gerelene', 'Otaza', 'Roa', '1979-11-12', 'Female', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(859, 'Epifania', 'Balcot', 'R', '1937-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(860, 'Leonila', 'Ruedas', 'Razo', '1947-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(861, 'Lilibeth', 'Ruedas', 'Yabo', '1971-11-12', 'Female', 'Widow', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(862, 'David', 'Bayog', 'Manon-og', '1963-11-12', 'Male', 'Married', '', 'College', 'helper_mechanic', 'self_employed', '0', '0', NULL, NULL),
(863, 'Paterno', 'Galimbas', 'Villafuerte', '1961-11-12', 'Male', 'Married', '', 'Elementary', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(864, 'Rosie', 'Trasportes', 'Castanres', '1958-11-12', 'Female', 'Single', '', 'College', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(865, 'Miguel', 'Torres', 'Borromeo', '1992-11-12', 'Male', 'Married', '', 'Vocational', 'Helper', 'Casual', '0', '0', NULL, NULL),
(866, 'Joel', 'Arcasa', 'Sarino', '1981-11-12', 'Male', 'Separated', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(867, 'Rene', 'Arcasa', 'Sarino', '1979-11-12', 'Male', 'Separated', '', 'HS', 'Mason', 'self_employed', '0', '0', NULL, NULL),
(868, 'Jeffrey', 'Cuadro', 'Y', '1986-11-12', 'Male', 'Married', '', 'Vocational', 'electrician', 'Casual', '0', '0', NULL, NULL),
(869, 'Ramilito', 'Rotor', 'Lambino', '1965-11-12', 'Male', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(870, 'Dolores', 'Manligues', 'Macaliag', '1952-11-12', 'Female', 'Separated', '', 'HS', '', '', '0', '0', NULL, NULL),
(871, 'Samuel_Joseph', 'Cantutay', 'B', '1988-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(872, 'Jill', 'Cimen', 'Acha', '1970-11-12', 'Male', 'Married', '', 'Vocational', 'OFW', 'Casual', '0', '0', NULL, NULL),
(873, 'Eduardo', 'Monera', 'Estenzo', '1963-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(874, 'Leonisa', 'Dologmando', 'Belar', '1931-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(875, 'Domingo', 'Paghasian', 'Enot', '1966-11-12', 'Male', 'Married', '', 'Elementary', 'Body_Builder', 'per_day', '0', '0', NULL, NULL),
(876, 'Francisco', 'Almero', 'Duron', '1966-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'per_day', '0', '0', NULL, NULL),
(877, 'Elvie', 'Villa', 'Maghanoy', '1981-11-12', 'Female', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
(878, 'Hermenio', 'Paghasian', 'Enot', '1967-11-12', 'Male', 'Married', '', 'HS', 'Body_Builder', 'Casual', '0', '0', NULL, NULL),
(879, 'Nelfred', 'Orida', 'Potutan', '1976-11-12', 'Male', 'Married', '', 'Vocational', 'Computer_Technician', 'per_day', '0', '0', NULL, NULL),
(880, 'Cynthia', 'Mariquit', 'Along', '1955-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(881, 'Wilfredo', 'Jaralba', 'Batinsila', '1948-11-12', 'Male', 'Separated', '', 'Vocational', '', '', '0', '0', NULL, NULL),
(882, 'Ester', 'Lagudas', 'Tina-i', '1959-11-12', 'Female', 'Single', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(883, 'Julieta', 'Malicay', 'A', '1964-11-12', 'Female', 'Widow', '', 'HS', 'vendor', 'per_day', '0', '0', NULL, NULL),
(884, 'Rosita', 'De_Vera', 'Awitin', '1944-11-12', 'Female', 'Separated', '', 'Vocational', '', '', '0', '0', NULL, NULL),
(885, 'Romeo', 'Tubin', 'Baloncio', '1973-11-12', 'Male', 'Married', '', 'Elementary', 'Welder', 'Casual', '0', '0', NULL, NULL),
(886, 'Evangeline', 'Gallardo', 'E', '1969-11-12', 'Female', 'Single', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(887, 'Nenita', 'Tapere', 'Bartolaba', '1955-11-12', 'Female', 'Separated', '', 'HS', '', '', '0', '0', NULL, NULL),
(888, 'Maryann', 'Tortugo', 'Cabanag', '1980-11-12', 'Female', 'Single', '', 'College', '', '', '0', '0', NULL, NULL),
(889, 'Loreto', 'Maata', 'Maglangit', '1965-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL),
(890, 'Bonifacio', 'Baobao', 'Santander', '1967-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(891, 'Abundio_Jr', 'Pomicpic', 'Cosare', '1969-11-12', 'Male', 'Widow', '', 'Elementary', 'Conductor', 'per_day', '0', '0', NULL, NULL),
(892, 'Ricky', 'Duhaylungsod', 'Makiling', '1976-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(893, 'Roberto', 'Buenaventura', 'Dungca', '1970-11-12', 'Male', 'Married', '', 'HS', 'electrician', 'permanent', '0', '0', NULL, NULL),
(894, 'Babie_Julie', 'Eltanal', 'Manaba', '1977-11-12', 'Female', 'Living_in', '', 'College', '', '', '0', '0', NULL, NULL),
(895, 'Rico', 'Tubin', 'Baloncio', '1971-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(896, 'Alejo', 'Balucan', 'It', '1971-11-12', 'Male', 'Widow', '', 'HS', 'Technician', 'Casual', '0', '0', NULL, NULL),
(897, 'Zita', 'Tadena', 'Cimen', '1957-11-12', 'Female', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(898, 'Glenn_Mar', 'Densing', 'Rivera', '1984-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(899, 'Melandro', 'Velasquez', 'Matigas', '1962-11-12', 'Male', 'Married', '', 'HS', 'farming', 'self_employed', '0', '0', NULL, NULL),
(900, 'Pedro_Jr.', 'Mariquit', 'Chavez', '1975-11-12', 'Male', 'Married', '', 'College', 'Baker', 'permanent', '0', '0', NULL, NULL),
(901, 'Rogelio', 'Boloron', 'Quering', '1974-11-12', 'Male', 'Married', '', 'HS', 'Machinist', 'self_employed', '0', '0', NULL, NULL),
(902, 'Marilyn', 'Cuadro', 'Ylaya', '1954-11-12', 'Female', 'Separated', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(903, 'Genaro_Sr.', 'Aban', 'Badilla', '1962-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(904, 'Pio', 'Macapil', 'Bangcuyan', '1985-11-12', 'Male', 'Married', '', 'College', 'Vulcanizer', 'permanent', '0', '0', NULL, NULL),
(905, 'Roel', 'Duhaylungsod', 'Cenas', '1972-11-12', 'Male', 'Married', '', 'College', 'vendor', 'per_day', '0', '0', NULL, NULL),
(906, 'Benson_Sr.', 'Alforque', 'Magwate', '1981-11-12', 'Male', 'Married', '', 'Elementary', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(907, 'Liberato', 'Elcanel', 'Lacay', '1959-11-12', 'Male', 'Married', '', 'College', 'mechanic', 'self_employed', '0', '0', NULL, NULL),
(908, 'Rolando', 'Paypa', 'D', '1964-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(909, 'Reynaldo_Sr.', 'Fuentivilla', 'Castillon', '1961-11-12', 'Male', 'Married', '', 'HS', 'security_guard', 'permanent', '0', '0', NULL, NULL),
(910, 'Tarciana', 'Sadernas', 'B', '1965-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(911, 'Merlyn', 'Ferinal', 'Basco', '1962-11-12', 'Female', 'Widow', '', 'HS', 'Reflexologist', 'self_employed', '0', '0', NULL, NULL),
(912, 'Rene', 'Tangaw', 'T', '1970-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'per_day', '0', '0', NULL, NULL),
(913, 'Ernesto', 'Mariquit', 'Pangilinan', '1973-11-12', 'Male', 'Married', '', 'Vocational', 'electrician', 'permanent', '0', '0', NULL, NULL),
(914, 'Froilan_Francis', 'Boloro', 'M', '1982-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(915, 'Louie', 'Macaliag', 'Pelotea', '1974-11-12', 'Male', 'Married', '', 'Vocational', 'mechanic', 'per_day', '0', '0', NULL, NULL),
(916, 'Edmundo_Sr.', 'Balodo', 'Miral', '1950-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(917, 'Jeffrey', 'Sasil', 'D', '1986-11-12', 'Male', 'Married', '', 'Vocational', 'driver', 'per_day', '0', '0', NULL, NULL),
(918, 'Rosalinda', 'Tulusa', 'Layos', '1962-11-12', 'Female', 'Single', '', 'College', 'saleslady', 'Casual', '0', '0', NULL, NULL),
(919, 'Jeffrey', 'Cuadro', 'Ylaya', '1985-11-12', 'Male', 'Married', '', 'Vocational', 'electrician', 'Casual', '0', '0', NULL, NULL),
(920, 'Melchora', 'Catambacan', 'U', '1950-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(921, 'Rene', 'Salazar', 'Longayan', '1967-11-12', 'Male', 'Married', '', 'Elementary', 'driver', 'Casual', '0', '0', NULL, NULL),
(922, 'Ernest', 'Virtudez', 'Rosal', '1983-11-12', 'Male', 'Single', '', 'Vocational', 'Welder', 'Casual', '0', '0', NULL, NULL),
(923, 'Tibor', 'Maglasang', 'Cloma', '1985-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(924, 'Rudy', 'Sumalpong', 'Perez', '1981-11-12', 'Male', 'Single', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(925, 'Ernie', 'Mariquit', 'Cabahug', '1983-11-12', 'Male', 'Married', '', 'HS', 'Gasolineboy', 'Casual', '0', '0', NULL, NULL),
(926, 'Marcelino', 'Padayhag', 'Mariquit', '1963-11-12', 'Male', 'Single', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(927, 'Manuel', 'Lupera', 'Vargas', '1968-11-12', 'Male', 'Married', '', 'Elementary', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(928, 'Joselito', 'Padayhag', 'Depaz', '1961-11-12', 'Male', 'Living_in', '', 'College', 'private_employee', 'Casual', '0', '0', NULL, NULL),
(929, 'Narciso', 'Catso', 'Abela', '1961-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(930, 'Emelia', 'Jagonal', 'Nanaman', '1978-11-12', 'Female', 'Married', '', 'Elementary', 'saleslady', 'Casual', '0', '0', NULL, NULL),
(931, 'Gerry', 'Cadorna', 'Salva', '1973-11-12', 'Male', 'Married', '', 'College', 'Machinist', 'per_day', '0', '0', NULL, NULL),
(932, 'Alfredo', 'Llyaso', 'Cabatsa', '1953-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(933, 'Rosita', 'Buhion', 'Layno', '1957-11-12', 'Female', 'Widow', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(934, 'Sabelo', 'Regasaho', '', '2013-11-12', 'Male', '', '', '', '', '', '0', '0', NULL, NULL),
(935, 'Rogelio', 'Taborada', 'Canilo', '1983-11-12', 'Male', 'Single', '', 'HS', 'Fisherman', 'self_employed', '0', '0', NULL, NULL),
(936, 'Andrew', 'Nadayag', 'Agasino', '1959-11-12', 'Male', 'Single', '', 'HS', 'Fisherman', 'self_employed', '0', '0', NULL, NULL),
(937, 'Alfredo', 'Nadayag', 'Agasino', '1959-11-12', 'Male', 'Widow', '', 'HS', 'Fisherman', 'self_employed', '0', '0', NULL, NULL),
(938, 'Erlito', 'Amarga', 'Dadang', '1957-11-12', 'Male', 'Married', '', 'HS', 'farming', 'self_employed', '0', '0', NULL, NULL),
(939, 'Teresita', 'Remitasis', '', '2013-11-12', 'Female', '', '', '', '', '', '0', '0', NULL, NULL),
(940, 'Atoy', 'Layno', '', '2013-11-12', 'Male', '', '', '', '', '', '0', '0', NULL, NULL),
(941, 'Delfin', 'Layno', '', '2013-11-12', 'Male', '', '', '', '', '', '0', '0', NULL, NULL),
(942, 'Erlito', 'Echavez', '', '2013-11-12', 'Male', '', '', '', '', '', '0', '0', NULL, NULL),
(943, 'Reto', 'Bacuaja', 'Layno', '1959-11-12', 'Male', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(944, 'Pablo', 'Maglasang', 'Ortiga', '1963-11-12', 'Male', 'Widow', '', 'HS', 'Fisherman', 'self_employed', '0', '0', NULL, NULL),
(945, 'Lorna', 'Bacuaja', 'Layno', '2013-11-12', 'Female', 'Single', '', 'HS', '', '', '0', '0', NULL, NULL),
(946, 'Pepito_Jr', 'Bacuaja', 'Layno', '1950-11-12', 'Male', 'Married', '', 'Elementary', 'farming', 'self_employed', '0', '0', NULL, NULL),
(947, 'Boyet', 'Andalok', 'Layno', '2013-11-12', 'Male', '', '', '', '', '', '0', '0', NULL, NULL),
(948, 'Arlyn', 'Lacuna', 'Gareta', '1971-11-12', 'Female', 'Living_in', '', 'HS', '', '', '0', '0', NULL, NULL),
(949, 'Edie', 'Nacona', 'Gareta', '1964-11-12', 'Male', 'Married', '', 'Elementary', 'Fisherman', 'self_employed', '0', '0', NULL, NULL),
(950, 'Meo', 'Along', 'Asyoni', '1953-11-12', 'Male', 'Married', '', '', 'farming', 'self_employed', '0', '0', NULL, NULL),
(951, 'Arjely', 'Peyala', 'Delatorre', '1993-11-12', 'Female', 'Living_in', '', 'HS', '', '', '0', '0', NULL, NULL),
(952, 'Jose_Jr', 'Niez', 'Tangoy', '1979-11-12', 'Male', 'Married', '', 'HS', 'CHB_Maker', 'Casual', '0', '0', NULL, NULL),
(953, 'Ronald', 'Macaubos', 'Borangot', '1979-11-12', 'Male', 'Single', '', 'HS', 'CHB_Maker', 'Casual', '0', '0', NULL, NULL),
(954, 'Roberto', 'Macaubos', 'Nageta', '1954-11-12', 'Male', 'Married', '', 'HS', 'panday_mason', 'self_employed', '0', '0', NULL, NULL),
(955, 'Dicky', 'Oregie', 'Lera', '1959-11-12', 'Male', 'Widow', '', 'HS', 'farming', 'self_employed', '0', '0', NULL, NULL),
(956, 'Tata', 'Orenis', '', '2013-11-12', '', '', '', '', '', '', '0', '0', NULL, NULL),
(957, 'Bebot', 'Layno', 'Taledo', '1962-11-12', 'Male', '', '', '', '', '', '0', '0', NULL, NULL),
(958, 'Florenciano', 'Macapel', 'Layno', '1973-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(959, 'Patricio', 'Alegarme', 'Oman', '1933-11-12', 'Male', 'Married', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(960, 'Polaris', 'Macapil', 'Biaka', '1954-11-12', 'Female', 'Widow', '', '', '', '', '0', '0', NULL, NULL),
(961, 'Oliver', 'Villacastin', 'Usok', '1988-11-12', 'Male', 'Living_in', '', 'HS', 'Contractor', 'self_employed', '0', '0', NULL, NULL),
(962, 'Vicente', 'Macapil', 'Obaug', '1960-11-12', 'Male', 'Married', '', 'HS', 'farming', 'self_employed', '0', '0', NULL, NULL),
(963, 'Thelma', 'Verano', 'Ragadio', '1943-11-12', 'Female', 'Widow', '', '', '', '', '0', '0', NULL, NULL),
(964, 'Filipe', 'Villaver', 'Salonoy', '1934-11-12', 'Male', 'Widow', '', 'HS', 'farming', 'self_employed', '0', '0', NULL, NULL),
(965, 'Josiao', 'Macapil', 'Maglasang', '1953-11-12', 'Male', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(966, 'Epanyo', 'Adolfo', 'Limotan', '1953-11-12', 'Male', 'Married', '', 'College', 'ofw', 'Casual', '0', '0', NULL, NULL),
(967, 'Fernando', 'Villaver', 'Paga', '2013-11-12', 'Male', '', '', '', '', '', '0', '0', NULL, NULL),
(968, 'Avilino', 'Mirino', 'Paga', '1951-11-12', 'Male', 'Married', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(969, 'Bayani', 'Villagonzano', 'Paga', '1967-11-12', 'Male', 'Married', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
(970, 'Tata', 'Binaobawan', '', '2013-11-12', '', '', '', '', '', '', '0', '0', NULL, NULL),
(971, 'Jose', 'Naguita', 'Sadernas', '1962-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(972, 'Roseller', 'Ermac', 'Galgro', '1969-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(973, 'Urbano', 'Ermac', 'R', '1948-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(974, 'Martiniana', 'Lozano', 'K', '1958-11-12', 'Female', 'Single', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(975, 'Napoleon', 'Morales', 'C', '1955-11-12', 'Male', 'Married', '', 'College', 'Employee', 'permanent', '0', '0', NULL, NULL),
(976, 'Lane', 'Ermac', 'D', '1967-11-12', 'Male', 'Married', '', 'HS', 'Mason', 'self_employed', '0', '0', NULL, NULL),
(977, 'Leonarda', 'Gonzaga', 'M', '1936-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(978, 'Glenda', 'Capangpangan', 'L', '1961-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(979, 'Ricarda', 'Mariquit', 'P', '1944-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(980, 'Gilbert', 'Apas', 'S', '1968-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(981, 'Leo_Sr', 'Tayone', 'R', '1966-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(982, 'Milaflor', 'Bado', 'B', '1961-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(983, 'Sthil', 'Bado', 'C', '1987-11-12', 'Male', 'Married', '', 'HS', 'mechanic', 'self_employed', '0', '0', NULL, NULL),
(984, 'Maximo', 'Cabahug', '', '1955-11-12', 'Male', 'Single', '', 'HS', 'mechanic', 'self_employed', '0', '0', NULL, NULL),
(985, 'Alvin', 'Batican', 'C', '1971-11-12', 'Male', 'Married', '', 'College', 'Salesman', 'Casual', '0', '0', NULL, NULL),
(986, 'Nonito', 'Ricarpel', 'E', '1979-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
(987, 'Rasdi', 'Mohamod', 'C', '1985-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
(988, 'Berando', 'Sanchez', 'Baternabe', '1966-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(989, 'Custodio', 'Grabato', 'N', '1943-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(990, 'Ronnie_Joe', 'Grabato', 'N', '1968-11-12', 'Male', 'Married', '', 'College', 'Contractor', 'permanent', '0', '0', NULL, NULL),
(991, 'Demilou', 'Grabato', 'U', '1976-11-12', 'Male', 'Married', '', 'College', 'seaman', 'Casual', '0', '0', NULL, NULL),
(992, 'Conrado', 'Magtajas', 'A', '1960-11-12', 'Male', 'Married', '', 'Vocational', 'Technician', 'permanent', '0', '0', NULL, NULL),
(993, 'Edilberto', 'Paragoso', 'S', '1965-11-12', 'Male', 'Married', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(994, 'Premitivo', 'Paragoso', 'B', '1945-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(995, 'Agustin', 'Opot', 'M', '1957-11-12', 'Male', 'Married', '', '', '', '', '0', '0', NULL, NULL),
(996, 'Melvin', 'Mangumpit', 'P', '1993-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(997, 'Salvador_Jr', 'Mugot', 'R', '1946-11-12', 'Male', 'Married', '', 'HS', 'Technician', 'self_employed', '0', '0', NULL, NULL),
(998, 'Danilo_Sr', 'Tinoy', 'L', '1952-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(999, 'Mark_Anthony', 'Tinoy', 'L', '1985-11-12', 'Male', 'Married', '', 'College', 'Salesman', 'Casual', '0', '0', NULL, NULL),
(1000, 'Mary_jane', 'Quipao', 'L', '1970-11-12', 'Female', 'Single', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1001, 'Francisca', 'Radigos', 'C', '1959-11-12', 'Female', 'Widow', '', 'HS', 'Packer', 'permanent', '0', '0', NULL, NULL),
(1002, 'Ramil', 'Radigos', 'C', '1980-11-12', 'Male', 'Married', '', 'HS', 'driver', 'self_employed', '0', '0', NULL, NULL),
(1003, 'Benjie', 'Sumando', 'C', '1981-11-12', 'Male', 'Married', '', 'College', 'ofw', 'Casual', '0', '0', NULL, NULL),
(1004, 'Bienvinido', 'Sumando', 'F', '1957-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1005, 'Warlito', 'Demaluna', 'C', '1974-11-12', 'Male', 'Married', '', 'HS', 'Barber', 'self_employed', '0', '0', NULL, NULL),
(1006, 'Joan', 'Rupinta', 'C', '1977-11-12', 'Female', 'Single', '', '', '', 'self_employed', '0', '0', NULL, NULL),
(1007, 'James_Paul', 'Notarte', 'B', '1974-11-12', 'Male', 'Married', '', 'College', 'private_employee', 'permanent', '0', '0', NULL, NULL),
(1008, 'Jose', 'Sabaysabay', 'D', '1957-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(1009, 'Romeo', 'Mariquit', 'P', '1969-11-12', 'Male', 'Married', '', 'College', 'private_employee', 'permanent', '0', '0', NULL, NULL),
(1010, 'Jason', 'Sabaysabay', 'M', '1985-11-12', 'Male', 'Married', '', 'College', 'Therapist', 'self_employed', '0', '0', NULL, NULL),
(1011, 'Adrian', 'Omadle', 'C', '1952-11-12', 'Male', 'Married', '', 'HS', '', 'self_employed', '0', '0', NULL, NULL),
(1012, 'Benjamin', 'Pagarigan', 'C', '1953-11-12', 'Male', 'Married', '', 'HS', 'driver', 'self_employed', '0', '0', NULL, NULL),
(1013, 'Jeffrey', 'Pagarigan', 'C', '1973-11-12', 'Male', 'Married', '', 'HS', 'driver', 'self_employed', '0', '0', NULL, NULL),
(1014, 'Manuelito', 'Pagarigan', 'C', '1954-11-12', 'Male', 'Single', '', 'College', '', '', '0', '0', NULL, NULL),
(1015, 'Basilio', 'Deloso', 'B', '1975-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(1016, 'Rene', 'Agac-ac', 'R', '1981-11-12', 'Male', 'Single', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(1017, 'Quirino', 'Agac-ac', 'R', '1959-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(1018, 'Flaviano', 'Lucagbo', 'D', '1971-11-12', 'Male', 'Married', '', 'HS', 'driver', 'self_employed', '0', '0', NULL, NULL),
(1019, 'Alain', 'Delos_Santos', 'U', '1975-11-12', 'Male', 'Married', '', 'HS', '', 'self_employed', '0', '0', NULL, NULL),
(1020, 'Ricardo', 'Pagarigan', 'C', '1955-11-12', 'Male', 'Married', '', 'HS', '', 'self_employed', '0', '0', NULL, NULL),
(1021, 'Jason', 'Baruc', 'A', '1981-11-12', 'Male', '', '', '', '', '', '0', '0', NULL, NULL),
(1022, 'Leopoldo', 'Delos_Santos', 'S', '1943-11-12', 'Male', 'Married', '', '', '', '', '0', '0', NULL, NULL),
(1023, 'Eleno_Boy', 'Luveros', 'Beriso', '1959-11-12', 'Male', 'Married', '', 'HS', 'operator', 'permanent', '0', '0', NULL, NULL),
(1024, 'Rochelle', 'Ardeles', 'Carpio', '1954-11-12', 'Female', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1025, 'Bernon', 'Ardeles', 'Carpio', '1980-11-12', 'Male', 'Married', '', 'Vocational', 'Painter', 'self_employed', '0', '0', NULL, NULL),
(1026, 'Junard', 'Unggaket', 'Galape', '1985-11-12', 'Male', 'Married', '', 'HS', 'driver', 'self_employed', '0', '0', NULL, NULL),
(1027, 'Junbi', 'Laurita', 'Pirocillo', '1984-11-12', 'Male', 'Married', '', 'College', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(1028, 'Phycie', 'Vecaso ', 'Vasalo', '1980-11-12', 'Female', 'Married', '', 'HS', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(1029, 'Philip', 'Vasalo', 'Nadayag', '1981-11-12', 'Male', 'Living_in', '', 'College', 'crew', 'Casual', '0', '0', NULL, NULL),
(1030, 'Harold', 'Vasalo', 'Nadayag', '1991-11-12', 'Male', 'Living_in', '', 'College', '', '', '0', '0', NULL, NULL),
(1031, 'Julito', 'Vasalo', 'Jeminez', '1952-11-12', 'Male', 'Married', '', 'College', 'Livelihood_head', 'Casual', '0', '0', NULL, NULL),
(1032, 'Grace', 'Galarpe', 'L', '1991-11-12', 'Female', 'Separated', '', 'HS', '', '', '0', '0', NULL, NULL),
(1033, 'George', 'Paica', 'Bantoc', '1985-11-12', 'Male', 'Married', '', 'HS', 'Taho_Cook', 'self_employed', '0', '0', NULL, NULL),
(1034, 'Esteban', 'Calica', 'Vergara', '1974-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(1035, 'Roldan', 'Malunhaw', 'Bravo', '1975-11-12', 'Male', 'Living_in', '', 'Vocational', 'Welder', 'permanent', '0', '0', NULL, NULL),
(1036, 'Revelino', 'Carbonel', 'Caliso', '1949-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1037, 'Abraham', 'Gonzales', 'Ballester', '1948-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1038, 'William', 'Vergara', 'Abatajo', '1962-11-12', 'Male', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(1039, 'Hubert', 'Vergara', 'Abatajo', '1968-11-12', 'Male', 'Single', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1040, 'Alvin', 'Vergara', 'Abatajo', '1970-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1041, 'Sulpicio', 'Corbita', 'Caldeo', '1951-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1042, 'Florante', 'Vasquez', 'Marabilis', '1975-11-12', 'Male', 'Married', '', 'College', 'Roof_Installer', 'permanent', '0', '0', NULL, NULL),
(1043, 'Christopher', 'Almaden', 'Maglasang', '1972-11-12', 'Male', 'Married', '', 'College', 'driver', 'permanent', '0', '0', NULL, NULL),
(1044, 'Leopoldo', 'Vasquez', 'Pajadanas', '1954-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(1045, 'Carlos', 'Cabatinan', 'Hernane', '1963-11-12', 'Male', 'Married', '', 'Elementary', 'Janitor', 'Casual', '0', '0', NULL, NULL),
(1046, 'Michael', 'Suan', 'Amion', '1981-11-12', 'Male', 'Married', '', 'HS', 'driver', 'per_day', '0', '0', NULL, NULL),
(1047, 'Edgar', 'Esteva', 'Silva', '1960-11-12', 'Male', 'Married', '', 'Vocational', 'private_employee', 'permanent', '0', '0', NULL, NULL),
(1048, 'Estrella', 'Pagdilao', 'Racal', '1963-11-12', 'Female', 'Married', '', 'College', 'Court_steno', 'permanent', '0', '0', NULL, NULL),
(1049, 'Bernardo', 'Ramos', 'Panes', '1966-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1050, 'Sapiah', 'Asaad', 'Calamata', '1953-11-12', 'Female', 'Widow', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1051, 'Junie_ven', 'Uglasan', 'Gomez', '1978-11-12', 'Male', 'Married', '', 'Vocational', 'Fabricator', 'per_day', '0', '0', NULL, NULL),
(1052, 'Romero', 'Padillo', 'Mequiabas', '1956-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1053, 'Manuel', 'Lagda', 'DueÃ±as', '1959-11-12', 'Male', 'Married', '', 'College', 'Supervisor', 'permanent', '0', '0', NULL, NULL),
(1054, 'Allan', 'Sabando', 'Mocorro', '1953-11-12', 'Male', 'Married', '', 'College', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(1055, 'Richard', 'Tabano', 'LuceÃ±ara', '1978-11-12', 'Male', 'Married', '', 'College', 'Layman', 'permanent', '0', '0', NULL, NULL),
(1056, 'Arnold', 'Tabano', 'LuceÃ±ara', '1980-11-12', 'Male', 'Married', '', 'HS', 'Layman', 'permanent', '0', '0', NULL, NULL),
(1057, 'Antonio', 'Mira', 'Caboc', '1971-11-12', 'Male', 'Living_in', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(1058, 'Arnolfo', 'Arbes', 'Pasigna', '1956-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1059, 'Demetria', 'Cristobal', 'Abitago', '1963-11-12', 'Female', 'Married', '', 'HS', 'Dressmaker', 'self_employed', '0', '0', NULL, NULL),
(1060, 'Merlyn', 'Layno', 'Abitago', '1967-11-12', 'Female', 'Married', '', 'HS', 'Dressmaker', 'self_employed', '0', '0', NULL, NULL),
(1061, 'Gregorio', 'Rufino', 'Simborio', '1974-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(1062, 'Elojeo', 'Lupague', 'Maturan', '1971-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(1063, 'Benjie_jr', 'Ladega', 'Landitcho', '1986-11-12', 'Male', 'Married', '', 'Vocational', 'Technician', 'self_employed', '0', '0', NULL, NULL),
(1064, 'Rodolfo', 'Rufino', 'Gamboa', '1942-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(1065, 'Serbillano', 'Rufino', 'Semboryo', '1978-11-12', 'Male', 'Married', '', 'HS', 'driver', 'Casual', '0', '0', NULL, NULL),
(1066, 'Federico', 'Daligdig', 'Bensolano', '1979-11-12', 'Male', 'Married', '', 'HS', 'Helper', 'permanent', '0', '0', NULL, NULL),
(1067, 'Anthony', 'Rufino', 'Semboryo', '1980-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(1068, 'Ronald', 'Maglangit', 'Hipos', '1978-11-12', 'Male', 'Married', '', 'HS', 'driver', 'Casual', '0', '0', NULL, NULL),
(1069, 'Clark', 'Tuyan', 'Mariquit', '1985-11-12', 'Male', 'Married', '', 'HS', 'Baker', 'Casual', '0', '0', NULL, NULL),
(1070, 'Allan', 'Monding', 'Bahuansua', '1975-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(1071, 'Christopher', 'Lee', 'Edquilang', '1975-11-12', 'Male', 'Married', '', 'HS', 'Painter', 'permanent', '0', '0', NULL, NULL),
(1072, 'Vicente', 'Timba', 'Jalagat', '1970-11-12', 'Male', 'Married', '', 'College', 'vendor', 'self_employed', '0', '0', NULL, NULL),
(1073, 'Eddie', 'Pasco', 'Caay', '1977-11-12', 'Male', 'Married', '', 'Vocational', 'Collector', 'permanent', '0', '0', NULL, NULL),
(1074, 'Roberto_jr', 'TaÃ±ia', 'Palangan', '1985-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(1075, 'Edgardo', 'Tuyan', 'Albarico', '1959-11-12', 'Male', 'Married', '', 'College', 'driver', 'permanent', '0', '0', NULL, NULL),
(1076, 'Wenefredo', 'Owayas', 'Escosio', '1973-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'self_employed', '0', '0', NULL, NULL),
(1077, 'Dante', 'Densing', 'Testa', '1971-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(1078, 'Lolita', 'Narona', 'Edquilang', '1953-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(1079, 'Natividad', 'Nabises', 'Gamos', '1944-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(1080, 'Elsie', 'Gamos', 'Sumili', '1950-11-12', 'Female', 'Widow', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1081, 'Sajid', 'Dangcal', 'Sucalat', '1973-11-12', 'Male', 'Living_in', '', 'College', 'ofw', 'Casual', '0', '0', NULL, NULL),
(1082, 'Mila', 'Gonzales', 'Salban', '1956-11-12', 'Female', 'Widow', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1083, 'Ricky', 'Gamos', 'Sumili', '1968-11-12', 'Male', 'Married', '', 'HS', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(1084, 'Roel', 'Gamos', 'Sumili', '1972-11-12', 'Male', 'Married', '', 'HS', 'Mason', 'self_employed', '0', '0', NULL, NULL),
(1085, 'Roberto', 'TaÃ±an', 'Villano', '1956-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1086, 'Arnolfo', 'Ragasajo', 'Jimenez', '1964-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(1087, 'Sofricio', 'Capricho', 'Fullante', '1953-11-12', 'Male', 'Married', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(1088, 'Magdalena', 'Arado', 'Saudian', '1957-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1089, 'Gorio', 'Libre', 'Bongolto', '1962-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(1090, 'Jerry', 'Abolanda', 'Monto', '1971-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
(1091, 'Arfil', 'Patagoc', 'Dagpen', '1980-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'per_day', '0', '0', NULL, NULL),
(1092, 'Fritz_Jay', 'Ballanca', 'Patubon', '1984-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
(1093, 'Annie', 'Amado', 'Regudon', '1963-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(1094, 'Clemente_jr', 'Auditor', 'Dalagwan', '1959-11-12', 'Male', 'Married', '', 'College', 'driver', 'permanent', '0', '0', NULL, NULL),
(1095, 'Sarah', 'Radasa', 'Villegas', '1963-11-12', 'Female', 'Widow', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1096, 'Rosalina', 'Buenavista', 'Fortuna', '1945-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(1097, 'Michael', 'Mahinay', 'Bardolosa', '1977-11-12', 'Male', 'Married', '', 'College', 'ofw', 'Casual', '0', '0', NULL, NULL),
(1098, 'Cito', 'Langamin', 'Tangaro', '1953-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1099, 'Maribeth', 'Tingas', 'Abantas', '1969-11-12', 'Female', 'Separated', '', 'HS', '', '', '0', '0', NULL, NULL),
(1100, 'Estela', 'Alcantara', 'Balabat', '1939-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(1101, 'Romeo', 'Abadines', 'Macapal', '1956-11-12', 'Male', 'Married', '', 'Elementary', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(1102, 'Redemptor', 'Regis', 'Iglupas', '1949-11-12', 'Male', 'Widow', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1103, 'Hans', 'Pasague', 'Zalsos', '1985-11-12', 'Male', 's', '', 'College', '', '', '0', '0', NULL, NULL),
(1104, 'Juliet', 'Carillo', 'Regis', '1976-11-12', 'Female', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1105, 'Danny', 'Belivestre', 'Salawague', '1968-11-12', 'Male', 'Married', '', 'HS', 'Welder', 'permanent', '0', '0', NULL, NULL),
(1106, 'Annalou', 'Amorguez', 'Cuizon', '1982-11-12', 'Female', 'Married', '', 'College', 'Secretary', 'permanent', '0', '0', NULL, NULL),
(1107, 'Derrick', 'Diola', 'Coquilla', '1978-11-12', 'Male', 'Married', '', 'College', 'driver', 'permanent', '0', '0', NULL, NULL),
(1108, 'Jovita', 'Dolliento', 'Belen', '1946-11-12', 'Female', 'Separated', '', 'Elementary', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1109, 'Flaviano', 'Daclan', 'Langamin', '1959-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1110, 'Joefil', 'Daclan', 'Langamin', '1968-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'permanent', '0', '0', NULL, NULL),
(1111, 'Nestor', 'Castillon', 'Etic', '1958-11-12', 'Male', 'Married', '', 'Elementary', 'Carpenter', 'self_employed', '0', '0', NULL, NULL),
(1112, 'Esperi_jun', 'Mendez', 'Olmilla', '1941-11-12', 'Male', 'Married', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(1113, 'Manuel', 'Mejogue', 'Pariolan', '1963-11-12', 'Male', 'Married', '', 'College', 'Policeman', 'permanent', '0', '0', NULL, NULL),
(1114, 'Josef', 'Sumapig', 'Garcia', '1945-11-12', 'Male', 'Married', '', 'College', 'Plumber', 'self_employed', '0', '0', NULL, NULL),
(1115, 'Solidad', 'Disierto', 'Anores', '1946-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(1116, 'Bernard', 'Mutia', 'Cabactulan', '1974-11-12', 'Male', 'Married', '', 'College', 'Sale_attendant', 'permanent', '0', '0', NULL, NULL),
(1117, 'Jay', 'Banggo', 'Machan', '1983-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(1118, 'Devon_Christ', 'Taan', 'Candawan', '1990-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'permanent', '0', '0', NULL, NULL),
(1119, 'Modesto', 'Pepania', 'Pohanes', '1960-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1120, 'Fidel', 'Peradillo', 'Bohol', '1968-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1121, 'Jomar', 'Omandam', 'Maghinay', '1976-11-12', 'Male', 'Married', '', 'Elementary', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(1122, 'Charlie', 'Trinidad', 'Digoro', '1976-11-12', 'Male', 'Living_in', '', 'Vocational', 'Barber', 'self_employed', '0', '0', NULL, NULL),
(1123, 'Armando', 'Tenchavez', 'Scarpe', '1988-11-12', 'Male', 'Living_in', '', 'HS', '', '', '0', '0', NULL, NULL),
(1124, 'Benito', 'Las_PiÃ±as', 'Marbilla', '1960-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
(1125, 'Roque', 'Novela', 'Babayo', '1972-11-12', 'Male', 'Married', '', 'HS', 'Furniture_Carpenter', 'self_employed', '0', '0', NULL, NULL),
(1126, 'Arnel', 'Angkee', 'San_antonio', '1957-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1127, 'Allan', 'Iglupas', 'Pagara', '1954-11-12', 'Male', 'Married', '', 'HS', 'Butcher', 'permanent', '0', '0', NULL, NULL),
(1128, 'Pablo', 'Mama', 'Decina', '1936-11-12', 'Male', 'Married', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(1129, 'Nena', 'Sanitllan', 'Atay', '1941-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(1130, 'Teresita', 'Ubatay', 'Verde', '1951-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(1131, 'Danilo', 'Perijan', 'Mentopa', '1972-11-12', 'Male', 'Married', '', 'Elementary', 'sikad_driver', 'per_day', '0', '0', NULL, NULL),
(1132, 'Eddie', 'Imperial', 'Jabado', '1971-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
(1133, 'Clyde', 'Fernan', 'Suson', '1975-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1134, 'Raul', 'Wong', 'Soria', '1957-11-12', 'Male', 'Married', '', 'Vocational', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1135, 'Conchita', 'Ungkit', 'Jocson', '1946-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(1136, 'Alawya', 'Olama', 'Rabia', '1943-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1137, 'Gillerma', 'Cagula', 'Juarez', '1947-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1138, 'Eddie', 'Magusara', 'Cabiltis', '1955-11-12', 'Male', 'Married', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(1139, 'Ernesto', 'Camasura', 'Pundoc', '1954-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1140, 'Catalino', 'Budan', 'Ugpoy', '1980-11-12', 'Male', 'Married', '', 'Vocational', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1141, 'Rafael', 'Lahoylahoy', 'Gersale', '1948-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1142, 'Catalina', 'Gohel', 'Lahoylahoy', '1947-11-12', 'Female', 'Single', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1143, 'Cristina', 'Carloman', 'Sillacay', '1939-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(1144, 'Julius_sr', 'Doleguez', 'Segobia', '1965-11-12', 'Male', 'Married', '', 'College', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(1145, 'Rizalina', 'Togunon', 'Amarga', '1953-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(1146, 'Lamberto', 'Maghinay', '', '1945-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1147, 'Rafael', 'Lonoy', 'Anches', '1964-11-12', 'Male', 'Married', '', 'College', 'mechanic', 'permanent', '0', '0', NULL, NULL),
(1148, 'Winona', 'Lanoy', 'Anches', '1969-11-12', 'Female', 'Single', '', 'College', '', '', '0', '0', NULL, NULL),
(1149, 'Virginia', 'Sarin', 'Rapliza', '1954-11-12', 'Female', 'Widow', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(1150, 'Christy', 'Alivio', 'Ladlad', '1973-11-12', 'Female', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1151, 'Eduardo', 'Ramirez', 'Baul', '1975-11-12', 'Male', 'Married', '', 'HS', 'Liason', 'permanent', '0', '0', NULL, NULL),
(1152, 'Godofredo_Sr.', 'Duyaguit', 'Malakay', '1929-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1153, 'Samson_Jr', 'Amba', 'Fudotan', '1967-11-12', 'Male', 'Married', '', 'College', 'Professor', 'permanent', '0', '0', NULL, NULL),
(1154, 'Mark', 'Sierra', 'Tapales', '1981-11-12', 'Male', 'Married', '', 'College', 'mechanic', 'self_employed', '0', '0', NULL, NULL),
(1155, 'Patricio_jr', 'Corona', 'Galicia', '1965-11-12', 'Male', 'Married', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(1156, 'Ronald', 'Fuentes', '', '1971-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1157, 'Nazario_jr', 'Calimpong', 'Ruelan', '1962-11-12', 'Male', 'Married', '', 'College', 'seaman', 'Casual', '0', '0', NULL, NULL),
(1158, 'Emma', 'Lauron', 'Burra', '1945-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(1159, 'Danilo', 'Lauron', 'Burra', '1973-11-12', 'Male', 'Living_in', '', 'College', 'Technician', 'Casual', '0', '0', NULL, NULL),
(1160, 'Carlito', 'Lauron', 'Burra', '1972-11-12', 'Male', 'Married', '', 'College', 'driver', 'permanent', '0', '0', NULL, NULL),
(1161, 'Jeck', 'Cajes', 'Senio', '1966-11-12', 'Male', 'Married', '', 'College', 'ofw', 'Casual', '0', '0', NULL, NULL),
(1162, 'John', 'Sahera', 'Jusin', '1963-11-12', 'Male', 'Married', '', 'College', 'Engineer', 'permanent', '0', '0', NULL, NULL),
(1163, 'Allan', 'Tomaquin', 'Cabahug', '1962-11-12', 'Male', 'Married', '', 'College', 'operator', 'permanent', '0', '0', NULL, NULL),
(1164, 'Dante', 'Velayo', 'Cabiling', '1973-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(1165, 'Guidion', 'Galleno', 'Laganson', '1956-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1166, 'Arnold', 'Hipayo', 'Intong', '1966-11-12', 'Male', 'Married', '', 'College', 'Purchaser', 'permanent', '0', '0', NULL, NULL),
(1167, 'Sherwin', 'Bado', 'Cordero', '1975-11-12', 'Male', 'Married', '', 'College', 'Acct_Officer', 'permanent', '0', '0', NULL, NULL),
(1168, 'Elmer', 'Adaza', 'Banaag', '1956-11-12', 'Male', 'Married', '', 'College', 'Custom_Official', 'permanent', '0', '0', NULL, NULL),
(1169, 'Lomesindo', 'Caparida', 'Tormis', '1961-11-12', 'Male', 'Married', '', 'College', 'Professor', 'permanent', '0', '0', NULL, NULL),
(1170, 'Claro', 'Bongcawil', 'Sande', '1955-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(1171, 'Radja_Ali', 'Delangcaten', 'Barazar', '1957-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1172, 'Ibrahim', 'Daing', 'Asimpin', '1973-11-12', 'Male', 'Married', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(1173, 'Bayani', 'Jimenez', 'Encarnacion', '1957-11-12', 'Male', 'Married', '', 'College', 'Admin_Aid', 'permanent', '0', '0', NULL, NULL),
(1174, 'Leo_Richard', 'Orbeta', 'Andrade', '1978-11-12', 'Male', 'Married', '', 'College', 'Business', 'self_employed', '0', '0', NULL, NULL),
(1175, 'Adonis', 'Reserva', 'Montillo', '1962-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1176, 'Myrna', 'Maruhumsar', 'Maruhumsar', '1949-11-12', 'Female', 'Widow', '', 'College', 'Professor', 'permanent', '0', '0', NULL, NULL),
(1177, 'Joffrey', 'PeÃ±ola', 'Trinidad', '1971-11-12', 'Male', 'Married', '', 'College', 'Staff', 'Casual', '0', '0', NULL, NULL),
(1178, 'Henrietto', 'Cabili', 'Palaca', '1955-11-12', 'Male', 'Married', '', 'College', 'Government_employee', 'permanent', '0', '0', NULL, NULL),
(1179, 'Cipriano', 'Del_Rosario', 'Padilla', '1944-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1180, 'Al\'annuar', 'Asakil', 'Hasar', '1983-11-12', 'Male', 'Married', '', 'College', 'Instructor', 'permanent', '0', '0', NULL, NULL);
INSERT INTO `residents` (`id`, `first_name`, `last_name`, `middle_name`, `birthdate`, `gender`, `civil_status`, `contact_number`, `education`, `occupation_category`, `occupation_specific`, `if_voter`, `if_disabled`, `created_at`, `updated_at`) VALUES
(1181, 'Vicente', 'Mag_usara', 'Pilosas', '1942-11-12', 'Female', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1182, 'Trinidad', 'Tabuelog', 'Malinao', '1964-11-12', 'Female', 'Widow', '', 'College', '', '', '0', '0', NULL, NULL),
(1183, 'Victoria', 'Tabuco', 'Hersale', '1955-11-12', 'Female', 'Widow', '', 'College', 'Teacher', 'permanent', '0', '0', NULL, NULL),
(1184, 'Andres_jr', 'Benabaye', 'Renegado', '1951-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(1185, 'Judy', 'Enojardo', 'Todan', '1955-11-12', 'Male', 'Widow', '', 'Vocational', 'ofw', 'self_employed', '0', '0', NULL, NULL),
(1186, 'Angelito', 'Maliao', 'Actub', '1946-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(1187, 'Ranolfo', 'Omas-as', 'Liray', '1940-11-12', 'Male', 'Married', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(1188, 'Jessie', 'Malonhao', 'Sebua', '1967-11-12', 'Male', 'Married', '', 'HS', 'driver', 'self_employed', '0', '0', NULL, NULL),
(1189, 'Alfredo', 'Bordaje', 'Suansing', '1960-11-12', 'Male', 'Married', '', 'Vocational', 'mechanic', 'self_employed', '0', '0', NULL, NULL),
(1190, 'Randy', 'Bonto', 'Rijas', '1976-11-12', 'Male', 'Married', '', 'Elementary', 'Labor', 'Casual', '0', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `capability` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `password`, `capability`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'BRIS', 'Admin', '', 'admin@brisgis.com', '$2y$10$WNeMhZsnJbYx.DdD1Csfau2i1A8GPM5eHhoLGH3djMsAc6T3Rct3C', 'Admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangays_municipality_id_foreign` (`municipality_id`);

--
-- Indexes for table `barangay_admins`
--
ALTER TABLE `barangay_admins`
  ADD KEY `barangay_admins_user_id_foreign` (`user_id`),
  ADD KEY `barangay_admins_barangay_id_foreign` (`barangay_id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `households_purok_id_foreign` (`purok_id`);

--
-- Indexes for table `disasters`
--
ALTER TABLE `disasters`
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `resident_id_2` (`resident_id`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD KEY `family_members_family_id_foreign` (`family_id`),
  ADD KEY `family_members_resident_id_foreign` (`resident_id`);

--
-- Indexes for table `flood_maps`
--
ALTER TABLE `flood_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flood_maps_barangay_id_foreign` (`barangay_id`);

--
-- Indexes for table `household_heads`
--
ALTER TABLE `household_heads`
  ADD KEY `household_heads_resident_id_foreign` (`resident_id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipalities_province_id_foreign` (`province_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `puroks`
--
ALTER TABLE `puroks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puroks_barangay_id_foreign` (`barangay_id`);

--
-- Indexes for table `purok_boundaries`
--
ALTER TABLE `purok_boundaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purok_boundaries_purok_id_foreign` (`purok_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangays`
--
ALTER TABLE `barangays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1191;
--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1191;
--
-- AUTO_INCREMENT for table `flood_maps`
--
ALTER TABLE `flood_maps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `puroks`
--
ALTER TABLE `puroks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `purok_boundaries`
--
ALTER TABLE `purok_boundaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1191;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangays`
--
ALTER TABLE `barangays`
  ADD CONSTRAINT `barangays_municipality_id_foreign` FOREIGN KEY (`municipality_id`) REFERENCES `municipalities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `barangay_admins`
--
ALTER TABLE `barangay_admins`
  ADD CONSTRAINT `barangay_admins_barangay_id_foreign` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `barangay_admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `households_purok_id_foreign` FOREIGN KEY (`purok_id`) REFERENCES `puroks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `disasters`
--
ALTER TABLE `disasters`
  ADD CONSTRAINT `disasters_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`);

--
-- Constraints for table `diseases`
--
ALTER TABLE `diseases`
  ADD CONSTRAINT `diseases_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `families`
--
ALTER TABLE `families`
  ADD CONSTRAINT `families_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `family_members`
--
ALTER TABLE `family_members`
  ADD CONSTRAINT `family_members_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `family_members_resident_id_foreign` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flood_maps`
--
ALTER TABLE `flood_maps`
  ADD CONSTRAINT `flood_maps_barangay_id_foreign` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `household_heads`
--
ALTER TABLE `household_heads`
  ADD CONSTRAINT `household_heads_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `household_heads_resident_id_foreign` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `municipalities`
--
ALTER TABLE `municipalities`
  ADD CONSTRAINT `municipalities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `puroks`
--
ALTER TABLE `puroks`
  ADD CONSTRAINT `puroks_barangay_id_foreign` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purok_boundaries`
--
ALTER TABLE `purok_boundaries`
  ADD CONSTRAINT `purok_boundaries_purok_id_foreign` FOREIGN KEY (`purok_id`) REFERENCES `puroks` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
