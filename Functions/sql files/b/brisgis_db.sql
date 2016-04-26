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
(248, 7, 'AlienniÃƒÂ±o Household', '0000-00-00', 100000, 'Residential', 'wood', 10, 0, '', 124.2619722, 8.248361111, NULL, NULL),
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
(260, 7, 'NiÃƒÂ±o Household', '0000-00-00', 40000, 'Residential', 'woow', 10, 0, '', 124.2604444, 8.247222222, NULL, NULL),
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
(344, 3, 'DelapiÃƒÂ±a Household', '0000-00-00', 1000000, 'Residential', 'masonry', 50, 0, '', 124.2602778, 8.250305556, NULL, NULL),
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
(248, 248, 'AlienniÃƒÂ±o Family', 2000, '0', '0', '0', NULL, NULL),
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
(260, 260, 'NiÃƒÂ±o Family', 5000, '0', '0', '0', NULL, NULL),
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
(344, 344, 'DelapiÃƒÂ±a Family', 7000, '0', '0', '0', NULL, NULL),
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
(1, 1, 1, 25, NULL, NULL, '\0\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0Þƒ¯û\0_@Y]ÈÅt @žn•Àþ_@„Å“ÖÅt @‚ö]Âþ_@f6ž×t @{xý\0_@J¨ÿ×t @Þƒ¯û\0_@Y]ÈÅt @\0\0\0\0\0\0\0\0\02Ð|y_@¨j¤¬u @FçAw_@êÊðºu @?(ÎBw_@`‚-u @æè}y_@w¦Ct-u @2Ð|y_@¨j¤¬u @\0\0\0\0\0\0\0\0\0œPò}_@çy\nu @·6·{_@ý¤Wžu @Œ¹{_@$Ñöe-u @/ô}_@f–©W-u @œPò}_@çy\nu @\0\0\0\0\0\0\0\0\0Få”õ`_@”‘Ù?u @ÛÌzº^_@’µ^ç?u @ß…E¼^_@ý¨þ®Qu @«_÷`_@\\u¶ Qu @Få”õ`_@”‘Ù?u @\0\0\0\0\0\0\0\0\0@Àü`_@O–÷†u @ï¼¥Á^_@ØvÞ‡u @õ}pÃ^_@b~Í˜u @\0ÖŠþ`_@Ýï5¿˜u @@Àü`_@O–÷†u @\0\0\0\0\0\0\0\0\0àüþLF_@™gþ\\v @Ô\0äD_@ov«]v @#A®D_@gLÔnv @ìIÉNF_@ô—Ænv @àüþLF_@™gþ\\v @\0\0\0\0\0\0\0\0\0uƒxD_@Fì›€v @ñk]ÚA_@ä¦0ª€v @ˆ£\'ÜA_@\\@Ñq’v @ÅÇBD_@!\Zc’v @uƒxD_@Fì›€v @\0\0\0\0\0\0\0\0\0Þ	°{Q_@kŒÕ£v @çä”@O_@ö¢Òã£v @Ýl_BO_@œÚr«µv @Žžz}Q_@r4,µv @Þ	°{Q_@kŒÕ£v @\0\0\0\0\0\0\0\0\0^¯?_@ ÿ½ w @ŽBt=_@Õ×]Ë w @)¾v=_@\0~þ’2w @øX(±?_@.–º„2w @^¯?_@ ÿ½ w @\0\0\0\0\0\0\0\0\0\0<D½"_@dáw³¯w @.(‚ _@L·Á¯w @±Èñƒ _@ÄoX‰Áw @Rã\r¿"_@F2{Áw @\0<D½"_@dáw³¯w @\0\0\0\0\0\0\0\0\0™«z_@z#K·,x @?\n_@žÇ†Å,x @QGXA\n_@tµ(>x @	Ït|_@¾í~>x @™«z_@z#K·,x @\0\0\0\0\0\0\0\0\02Æ__@N¡ž| @Åè#›_@©B¼¬| @î¯%›_@·`t¡| @küÏ`_@G5f¡| @2Æ__@N¡ž| @\0\0\0\0\0\0\0\0\0y=Ö¸f_@ï¿|ì•| @ÖÊ·}d_@·Ëùú•| @—+‰d_@ð³‘Â§| @øª§ºf_@S˜´§| @y=Ö¸f_@ï¿|ì•| @\0\0\0\0\0\0\0\0\08‰1jm_@\n;Á•| @«/k_@˜wÏ•| @¨£ä0k_@P0—§| @õlm_@ëãšˆ§| @;”!§o_@í1z§| @¾óO¥o_@ä˜„²•| @8‰1jm_@\n;Á•| @\0\0\0\0\0\0\0\0\0$\'«Vv_@ãP‡•| @´ÂŒt_@Ð#†••| @±|^t_@*]§| @Þí|Xv_@eºN§| @$\'«Vv_@ãP‡•| @\0\0\0\0\0\0\0\0\0âÐ&_@…ÙÒæÌ| @yÕîF(_@øº`ØÌ| @ÛÈE(_@þ+Ç»| @\0\n&_@Â:9»| @âÐ&_@…ÙÒæÌ| @\0\0\0\0\0\0\0\0\0âÐ&_@…ÙÒæÌ| @F0±Ð#_@y’DõÌ| @k%Ò#_@õ>Þ¼Þ| @Å \r&_@8vl®Þ| @âÐ&_@…ÙÒæÌ| @\0\0\0\0\0\0\0\0\0š…°|Î_@Z–›Lç| @rpAÌ_@n@ÐZç| @R¼XCÌ_@~Us"ù| @:Þx~Î_@å›>ù| @š…°|Î_@Z–›Lç| @\0\0\0\0\0\0\0\0\0¸a‘\rÊ_@ã\n‘‡.} @—qÒÇ_@Ø\'Å•.} @ëO9ÔÇ_@©Sh]@} @Ì¨YÊ_@0\'4O@} @¸a‘\rÊ_@ã\n‘‡.} @\0\0\0\0\0\0\0\0\0ÉWÐÛ_@!a´š} @‰¯ ‹_@gãŠÂš} @†wv¢‹_@P¥/Š¬} @‚R—Ý_@ˆÓ|¬} @ÉWÐÛ_@!a´š} @\0\0\0\0\0\0\0\0\0YrµÑI_@{¾“} @à2––G_@î~ˆ¡} @D\ng˜G_@ö!i¡} @}V†ÓI_@³G¨Z¡} @YrµÑI_@{¾“} @\0\0\0\0\0\0\0\0\0a¤Úò„_@3§O|¾} @º´¹·‚_@õñwŠ¾} @©s€¹‚_@•íRÐ} @p¡ô„_@[“ôCÐ} @a¤Úò„_@3§O|¾} @\0\0\0\0\0\0\0\0\0ïjÂo_@Ø1ý+²} @˜¸K‡m_@sÑ|:²} @Íl‰m_@EYÄ} @°<Äo_@Ó©”óÃ} @Kñ[ÿq_@Ã”åÃ} @•#Šýq_@ ,}²} @ïjÂo_@Ø1ý+²} @\0\0\0\0\0\0	\0\0\0r†Èsv_@Sñ{\0²} @V©8t_@ÈÁü²} @~0{:t_@\Z”ÖÃ} @¨mšuv_@Å9ÈÃ} @Ì¨¹°x_@Ùó‘¹Ã} @êáØëz_@MH«Ã} @3áêz_@yã±} @×´ç®x_@?»úñ±} @r†Èsv_@Sñ{\0²} @\0\0\0\0\0\0	\0\0\0úÅs‰_@u‘Ú\r)~ @„ÿq‰_@~Î5F~ @ÿ4 ­‹_@~8~ @ ;Y«‹_@ñOgp~ @g8p‰_@w	‘~~ @±ÿ5‡_@[]ºŒ~ @àÝ6‡_@Û1_T~ @fÂ¤8‡_@K)~ @úÅs‰_@u‘Ú\r)~ @\0\0\0\0\0\0\0\0\0¢n›!_@þ«T~ @ÞUzæ_@È0=b~ @}\\Aè_@ÜÖá)~ @eê_@áz†ñ(~ @[—)%_@#×[ã(~ @‚b#_@˜B·~ @¢n›!_@þ«T~ @\0\0\0\0\0\0\0\0\0Ç ß,_@œ	Ý‹~ @<¤*_@^Qš~ @IQ¦*_@Kuêa0~ @—qá,_@¾OvS0~ @Ç ß,_@œ	Ý‹~ @\0\0\0\0\0\0	\0\0\0µy"Ï_@)B~ @ã›RÍ_@íV}Õ0~ @%½2’_@Ééíã0~ @bÜW_@^ò0~ @›ùò_@œÞÍ\01~ @*±Â_@àgÈB~ @± âX_@¦ø¹B~ @5Ž”_@¦Ë‡«B~ @µy"Ï_@)B~ @\0\0\0\0\0\0\0\0\0y¢»!_@#¦PcB~ @0‚€_@NßÂqB~ @(6R‚_@	€\\9T~ @R&r½!_@7ê*T~ @u’ø#_@ˆwT~ @ÚôÁö#_@UÞTB~ @y¢»!_@#¦PcB~ @\0\0\0\0\0\0\0\0\0¿j’_@gßT~ @qlrä_@è`qžT~ @IBæ_@þmff~ @X&b!_@¹Ü›Wf~ @a/‚\\_@Ïå+If~ @g²Z_@Cø‘T~ @¿j’_@gßT~ @\0\0\0\0\0\0\0\0\0µy"Ï_@)B~ @ŠYòÐ_@ù°dT~ @g;ÂÒ_@ÇJ,f~ @a>â\r_@BŸÙf~ @ÅO_@á?VT~ @.cB\n_@¿ ¦ŽB~ @µy"Ï_@)B~ @\0\0\0\0\0\0\0\0\0\Zÿp_@¡_é‚f~ @ýíá4	_@þ¿W‘f~ @—x±6	_@RúñXx~ @v–Ñq_@2ŠƒJx~ @\Zÿp_@¡_é‚f~ @\0\0\0\0\0\0\0\0\0"<¢L_@‚h›ž‰~ @ª!‚_@†\r­‰~ @WR_@ŽÍ¦t›~ @Ž=rN_@Ã5f›~ @"<¢L_@‚h›ž‰~ @\0\0\0\0\0\0\0\0\0bþ#_@žÿCs‰~ @þjâÂ!_@ŽÝ¶‰~ @î…²Ä!_@?fPI›~ @§Òÿ#_@†xÝ:›~ @bþ#_@žÿCs‰~ @\0\0\0\0\0\0\0\0\0t°b¯*_@øéG‰~ @ ¢Bt(_@Ó]V‰~ @Rãv(_@)lö›~ @gþ2±*_@„M‚›~ @t°b¯*_@øéG‰~ @\0\0\0\0\0\0	\0\0\068	_@—2Œ Š~ @’Ø`ý_@×Lú.Š~ @wZ0ÿ_@Í’”ö›~ @`Þÿ\0_@µÖ.¾­~ @†$ <	_@îœÀ¯­~ @©h@w_@‚ýQ¡­~ @>Ëpu_@!Ù·Ù›~ @×/¡s_@³²Š~ @68	_@—2Œ Š~ @\0\0\0\0\0\0\0\0\0×Á_@7‰‘›~ @”ña_@¢ùŸ›~ @þdÁc_@b‡“g­~ @Ÿáž_@¿ë"Y­~ @×Ú_@vê±J­~ @í1Ø_@´$ƒ›~ @×Á_@7‰‘›~ @\0\0\0\0\0\0\0\0\0žX9Ù¤_@”¦4ÿÁ~ @«ž¢_@‘\rÂ~ @õåŸ¢_@e.ÕÓ~ @^¯Û¤_@AšÑÆÓ~ @žX9Ù¤_@”¦4ÿÁ~ @\0\0\0\0\0\0\0\0\0x(8†Ñ_@„r†O @=KÏ_@¬Lë*O @Q–åLÏ_@w‡ò` @mŽˆÑ_@—"ä` @x(8†Ñ_@„r†O @\0\0\0\0\0\0\0\0\0Þ5ˆ(_@xóéL @ØAM&_@áÎgøL @‰ŒåN&_@N!À^ @ò5Š(_@¥ºŒ±^ @Þ5ˆ(_@xóéL @\0\0\0\0\0\0\0\0\0åê¦(_@¿9¿@‚ @ø\'†R&_@û¿3O‚ @¸xVT&_@8Í” @Ë&V&_@fVfÞ¥ @ï§G‘(_@—°ñÏ¥ @gHw(_@3vX” @åê¦(_@¿9¿@‚ @\0\0\0\0\0\0\0\0\0åß!_@qNû¥ @*Ä¤_@ÑåÁ	¦ @”X”¦_@F][Ñ· @×Gµá!_@°ØçÂ· @5Ö$_@nîs´· @	í$_@‰–Úì¥ @åß!_@qNû¥ @\0\0\0\0\0\0\0\0\0¹6¢!å_@×ñá,<€ @EÑæâ_@í};<€ @0üHèâ_@·”¿N€ @fnk#å_@ùƒôM€ @¹6¢!å_@×ñá,<€ @\0\0\0\0\0\0\0\0\0ámø†_@ÀóËåL€ @‰!ÖK\r_@kôL€ @ß@ M\r_@…°»^€ @ù™Âˆ_@GÑl­^€ @ámø†_@ÀóËåL€ @\0\0\0\0\0\0\0\0\0ûWÛëâ_@¼’q€ @¶ãý&å_@YÈƒq€ @¨4%å_@9þ%¼_€ @)êâ_@d©aÊ_€ @ûWÛëâ_@¼’q€ @\0\0\0\0\0\0\0\0\0ûWÛëâ_@¼’q€ @CÊ¸°à_@? q€ @bî²à_@91ágƒ€ @Ýˆ¤íâ_@©Ì¥Yƒ€ @ûWÛëâ_@¼’q€ @\0\0\0\0\0\0\0\0\0š<¶à_@Pk%÷¦€ @œ†ñzÞ_@B‰`§€ @ò£º|Þ_@À²Í¸€ @³fÝ·à_@D…Ç¾¸€ @š<¶à_@Pk%÷¦€ @\0\0\0\0\0\0\0\0\0gÍ­\Zî_@¼\\i¸€ @š‹ßë_@f¬™w¸€ @}‚Táë_@‘v;?Ê€ @Fwî_@[×ý0Ê€ @gÍ­\Zî_@¼\\i¸€ @\0\0\0\0\0\0\0\0\0ö]W™_@x9°Þ€ @Öw3’›_@ =Þ€ @ZÕk›_@òFÝ>Ì€ @>ÈHU™_@N3MÌ€ @ö]W™_@x9°Þ€ @\0\0\0\0\0\0\0\0\0 é± _@!=~"Ì€ @{àŽË_@ãô­0Ì€ @¹VÍ_@ÜQøÝ€ @¡¥y _@Õ"êÝ€ @ é± _@!=~"Ì€ @\0\0\0\0\0\0\0\0\0ö]W™_@x9°Þ€ @\ZBí—_@ÏÞ"Þ€ @Í´—_@=ã‚êï€ @úY|—_@Íô&² @[ŸZ™_@°?ø£ @«õ×X™_@œ=TÜï€ @ö]W™_@x9°Þ€ @\0\0\0\0\0\0\0\0\0]ÜÑ6_@Ç.Nþ€ @a¯û_@kRu\\þ€ @ýªyý_@â½$ @½uœ8_@ú"Ï @]ÜÑ6_@Ç.Nþ€ @\0\0\0\0\0\0\0\0\0Š<ÕL3_@ÐA• @Æƒ²1_@\\þ‹£ @>…}1_@pÛ+k! @ÄJ N3_@–á\\! @Š<ÕL3_@ÐA• @\0\0\0\0\0\0\0\0\0AQa·(_@Þ/ @áh?|&_@3÷= @"è~&_@÷«- @HÝ1¹(_@Øª\Z÷, @AQa·(_@Þ/ @\0\0\0\0\0\0\0\0\0_¯¬_@ßÿï\n{ @Ž‰à_@¸û4{ @ÙèSâ_@¦¦ÕàŒ @èw_@9›ÒŒ @_¯¬_@ßÿï\n{ @\0\0\0\0\0\0\0\0\0ÍtÚ_@ÌûVÔ± @i£Pä×_@§Ñ‘â± @O¸æ×_@Í\n4ªÃ @x@=!Ú_@i%ù›Ã @ÍtÚ_@ÌûVÔ± @\0\0\0\0\0\0\0\0\0,©¿#_@‡âý¯ @oßƒ!_@%t*° @ª)ª…!_@Ï«ÊÓÁ @pÍÀ#_@š©‚ÅÁ @,©¿#_@‡âý¯ @\0\0\0\0\0\0	\0\0\0+xÕ×\Z_@µáå @\\à\nÖ\Z_@u´@ÆÓ @9._@ÕÓù·Ó @ë–c_@YðÁ @ŽJ@Ô\Z_@P þÁ @2ü™_@l»æÂ @=…çš_@]/‡ÔÓ @H²œ_@2¡\'œå @+xÕ×\Z_@µáå @\0\0\0\0\0\0\0\0\0TÅì._@ºVT\rå @ioð°,_@¼tžå @So»²,_@>X>ãö @>q†´,_@°9Þª‚ @°à©ï._@|ü“œ‚ @ÒÞí._@£*ôÔö @TÅì._@ºVT\rå @\0\0\0\0\0\0\0\0\0ÑLÖ‹>_@Ëápö @!ø²P<_@ÂÀ.ö @eS~R<_@ü4ÎF‚ @Ø´¡>_@¯/8‚ @ÑLÖ‹>_@Ëápö @\0\0\0\0\0\0\0\0\0\'JŠW_@iÙóñ<‚ @iØfâT_@™lE\0=‚ @È2äT_@Æ,äÇN‚ @šFVW_@ö‰’¹N‚ @\'JŠW_@iÙóñ<‚ @\0\0\0\0\0\0\0\0\0Ðd;Eb_@~Vª<‚ @ý\n`_@W“©¸<‚ @™,ä`_@]H€N‚ @¡Gb_@áeôqN‚ @Ðd;Eb_@~Vª<‚ @\0\0\0\0\0\0\0\0\0 L)ƒG_@Ádå`‚ @Ø²HE_@^«³ó`‚ @+MÑIE_@ºÔR»r‚ @8óô„G_@ÑÚ­r‚ @ L)ƒG_@Ádå`‚ @\0\0\0\0\0\0\0\0\0®xpùK_@K»ÅÈ`‚ @gãL¾I_@q×`‚ @C—ÀI_@-{´žr‚ @M9<ûK_@Ëµdr‚ @®xpùK_@K»ÅÈ`‚ @\0\0\0\0\0\0	\0\0\0o§¬R_@8ser‚ @‚,ÛªR_@—7Ô`‚ @<·oP_@%¬`‚ @cwƒqP_@ÑùÃsr‚ @XÙ_6N_@¬Š‚r‚ @½¨+8N_@ˆs³I„‚ @‹SOsP_@\rÓb;„‚ @[ür®R_@ÕÌ-„‚ @o§¬R_@8ser‚ @\0\0\0\0\0\0\0\0\0÷Gº$W_@,n„‚ @)£–éT_@ß`À„‚ @ÚšbëT_@Ë_æ•‚ @mL†&W_@w7\rØ•‚ @÷Gº$W_@,n„‚ @\0\0\0\0\0\0\0\0\0‘‹›[_@ŽºÉóƒ‚ @ÃêÝ_Y_@¼W„‚ @þû©aY_@fðºÉ•‚ @Ž©Íœ[_@–Ch»•‚ @‘‹›[_@ŽºÉóƒ‚ @\0\0\0\0\0\0\0\0\0}_@4ÔÂƒ‚ @a„óÖz_@wg+ƒ‚ @UÀØz_@{¹ò”‚ @šäã}_@r`ä”‚ @}_@4ÔÂƒ‚ @\0\0\0\0\0\0\0\0\0r\0†_@yíùª”‚ @”•;ˆ_@ÚMŸœ”‚ @·vÈ9ˆ_@ÍýÕ‚‚ @þ¤þ…_@Ã\\ã‚‚ @r\0†_@yíùª”‚ @\0\0\0\0\0\0\0\0\0r\0†_@yíùª”‚ @‡NÅƒ_@[\'T¹”‚ @ÞŒÇƒ_@«”ñ€¦‚ @!?†_@K—r¦‚ @r\0†_@yíùª”‚ @\0\0\0\0\0\0\0\0\0‘¤úþ_@Ë<ßZ©‚ @D¨ÖÃ_@¶Û$i©‚ @1¡Å_@"sÅ0»‚ @B!Å\0_@¤Ä"»‚ @‘¤úþ_@Ë<ßZ©‚ @\0\0\0\0\0\0\0\0\0$\r}Š\r_@â»\n?»‚ @\0YO_@âžOM»‚ @yX#Q_@bSðÍ‚ @JrGŒ\r_@Ï`«Í‚ @$\r}Š\r_@â»\n?»‚ @\0\0\0\0\0\0\0\0\0¤ñÄ_@bóèV¸‚ @L¡R_@\ZBe¸‚ @ã<nT_@š	à,Ê‚ @®î‘_@8l†Ê‚ @¤ñÄ_@bóèV¸‚ @\0\0\0\0\0\0\0\0\01Ø~zP_@Z#ÞYË‚ @QúZ?N_@R/hË‚ @·Ó&AN_@ÜàÍ/Ý‚ @]¾J|P_@Dò|!Ý‚ @1Ø~zP_@Z#ÞYË‚ @\0\0\0\0\0\0\0\0\0Fr¶-W_@þÃ‡öÜ‚ @¤’òT_@ÔãÙÝ‚ @W^ôT_@b‘xÌî‚ @¾€‚/W_@êa&¾î‚ @Fr¶-W_@þÃ‡öÜ‚ @\0\0\0\0\0\0\0\0\0hW6ªx_@|Havƒ @…jov_@¹„ƒ @¾1ßpv_@MJWL#ƒ @g+¬x_@¢õþ=#ƒ @hW6ªx_@|Havƒ @\0\0\0\0\0\0\0\0\0³Ìb²_@“ÜŸ4(ƒ @o!>á¯_@ÑÔB(ƒ @Hzã¯_@$öw\n:ƒ @P2+²_@3òBü9ƒ @³Ìb²_@“ÜŸ4(ƒ @\0\0\0\0\0\0\0\0\07O„m_@n£´…#ƒ @j3+Ik_@Tû\n”#ƒ @Í¼÷Jk_@P©[5ƒ @?Í†m_@ÅœRM5ƒ @7O„m_@n£´…#ƒ @\0\0\0\0\0\0\0\0\0Uª©­_@äÆOàKƒ @E…n«_@Ñ„îKƒ @ØˆMp«_@ÑN\'¶]ƒ @d^r«­_@d÷ò§]ƒ @Uª©­_@äÆOàKƒ @\0\0\0\0\0\0\0\0\0C™†»_@`¾\r‹Kƒ @hÜaÑ¸_@ÝhD™Kƒ @Ll*Ó¸_@×Kç`]ƒ @í5O»_@Ù‘°R]ƒ @C™†»_@`¾\r‹Kƒ @\0\0\0\0\0\0\0\0\0çÃô½Á_@]\\g`Kƒ @\rÐ‚¿_@ 8ŸnKƒ @6Ã˜„¿_@“ìA6]ƒ @à†½¿Á_@L\n(]ƒ @çÃô½Á_@]\\g`Kƒ @\0\0\0\0\0\0\0\0\0ý¨<K½_@û3oƒ @•Ô»_@@cS\Zoƒ @8uà»_@Ž2öá€ƒ @eVM½_@Æó¾Ó€ƒ @ý¨<K½_@û3oƒ @\0\0\0\0\0\0\0\0\0)9:AË_@Õ8,zƒ @L&^|Í_@ïzÄzƒ @czÍ_@<,):hƒ @°‚k?Ë_@kÚHhƒ @)9:AË_@Õ8,zƒ @\0\0\0\0\0\0\0\0\0)9:AË_@Õ8,zƒ @JÉ_@ø“zƒ @ºõäÉ_@ý.æ‹ƒ @§ñCË_@7•Ç×‹ƒ @)9:AË_@Õ8,zƒ @\0\0\0\0\0\0\0\0\0Êêa½`_@lß-ˆƒ @Av>‚^_@]é¯ˆƒ @…{„^_@ª2Gå™ƒ @Õü3¿`_@äÅÖ™ƒ @Êêa½`_@lß-ˆƒ @\0\0\0\0\0\0\0\0\0iõÝÝ¸_@Sr¸Èƒ @˜YÜ¸_@¼›G¶ƒ @Ã¿LÚ¸_@Ãr¤ƒ @Á\'Ÿ¶_@WU©¤ƒ @!Nð ¶_@‚=LU¶ƒ @/Ý¸¢¶_@›#ïÈƒ @iõÝÝ¸_@Sr¸Èƒ @\0\0\0\0\0\0\0\0\0iõÝÝ¸_@Sr¸Èƒ @7“¦ß¸_@ÜF[ÖÙƒ @:¶Ë\Z»_@L $ÈÙƒ @§»_@F[\0Èƒ @iõÝÝ¸_@Sr¸Èƒ @\0\0\0\0\0\0\0\0\0G¸a_@ñýHº„ @˜Ä<Ô_@|k‘È„ @‚Ö_@P›1„ @ö,_@0é„ @G¸a_@ñýHº„ @\0\0\0\0\0\0\0\0\0?OÎ„È_@¶jZ‘ „ @©IÆ_@þ1”Ÿ „ @rùqKÆ_@Ÿ6g2„ @bP—†È_@PÈüX2„ @?OÎ„È_@¶jZ‘ „ @\0\0\0\0\0\0\0\0\0åŠv‡_@šòVe„ @nŽQL_@H; s„ @átN_@àI@;0„ @~A‰_@œñö,0„ @åŠv‡_@šòVe„ @\0\0\0\0\0\0\0\0\0IT=Í_@¬˜n“g„ @ÛÇÊ_@›i©¡g„ @ÞðàÈÊ_@d¯Kiy„ @ìvÍ_@ïÎ[y„ @IT=Í_@¬˜n“g„ @\0\0\0\0\0\0\0\0\0>»\Z|Ñ_@Öñ;‹„ @c,õ@Ï_@f­w‹„ @Æ_¾BÏ_@ÐÜœ„ @fûã}Ñ_@õÞÍœ„ @>»\Z|Ñ_@Öñ;‹„ @\0\0\0\0\0\0\0\0\0½â°hÚ_@°	IÍŠ„ @Ø[‹-Ø_@i\\†ÛŠ„ @SÂT/Ø_@ñ@(£œ„ @ýUzjÚ_@°Þê”œ„ @½â°hÚ_@°	IÍŠ„ @\0\0\0\0\0\0\0\0\0_ˆøõÕ_@i/y®„ @ôãÒºÓ_@ÕC‡®„ @Ý4œ¼Ó_@ÕåNÀ„ @æÁ÷Õ_@X©@À„ @_ˆøõÕ_@i/y®„ @\0\0\0\0\0\0\0\0\0ðJ·r_@&§£Ç„ @î¥&|p_@H{-²Ç„ @ã5ù}p_@³ ÄyÙ„ @ÚŒ¹r_@¤»=kÙ„ @ðJ·r_@&§£Ç„ @\0\0\0\0\0\0\0\0\0q¾ëçÞ_@ß«õ–ã„ @©ûÅ¬Ü_@Ü4¥ã„ @£…®Ü_@\0ÓÕlõ„ @/UµéÞ_@zW—^õ„ @q¾ëçÞ_@ß«õ–ã„ @\0\0\0\0\0\0\0\0\0Îð2¦_@ïRäé„ @Ï»Ð£_@©áòé„ @žuâÑ£_@ˆÝvºû„ @b·\r¦_@v3ç«û„ @Îð2¦_@ïRäé„ @\0\0\0\0\0\0\0\0\0GsªLÅ_@¾«\no… @x4†Ã_@Å }… @7§ZÃ_@„V4E0… @Ëò~NÅ_@”ëž60… @GsªLÅ_@¾«\no… @\0\0\0\0\0\0\0\0\0ÀM¢å_@Za_R<… @kÃ\'gã_@rLŸ`<… @«}ñhã_@¦Î@(N… @‡¤å_@Ô\0\ZN… @ÀM¢å_@Za_R<… @\0\0\0\0\0\0\0\0\0w³™ê_@¿YÞ5<… @ÅºsÝç_@tD<… @“Ž=ßç_@’sÀN… @”c\Zê_@R­ýM… @w³™ê_@¿YÞ5<… @\0\0\0\0\0\0\0\0\0|oôÞ_@³1a`… @JëH¹Ü_@r\n \Z`… @2ƒ»Ü_@#·Aâq… @,¬8öÞ_@ÛÎÔq… @|oôÞ_@³1a`… @\0\0\0\0\0\0\0\0\0é9»jã_@ÇNâï_… @³!•/á_@%ó!þ_… @\'Ó^1á_@Â€ÃÅq… @%ø„lã_@ÚÌƒ·q… @é9»jã_@ÇNâï_… @\0\0\0\0\0\0\0\0\0É»Ï¦_@›=(_… @x¿©k\0_@PÅ‚6_… @Ç#tm\0_@5y#þp… @à,š¨_@ð3Þïp… @É»Ï¦_@›=(_… @\0\0\0\0\0\0\0\0\0$·>«å_@õ‰†8•… @–zpã_@ÂÂÆF•… @Ë>âqã_@£:h§… @ ˆ­å_@Lò\'\0§… @$·>«å_@õ‰†8•… @\0\0\0\0\0\0\0\0\0D*‹!ê_@çæ•… @³ñdæç_@WëE*•… @uÏ.èç_@"Dçñ¦… @ÍU#ê_@(0¦ã¦… @D*‹!ê_@çæ•… @\0\0\0\0\0\0\0\0\0ª§5î_@Ú$eVÊ… @ÀLbì_@#§dÊ… @\nJÙcì_@WH,Ü… @»±ÿžî_@ÏHÜ… @ª§5î_@Ú$eVÊ… @\0\0\0\0\0\0\0\0\0èºùµå_@ýÜNæÿ… @B ñç_@á\rØÿ… @gZVïç_@¤’lî… @÷ß/´å_@ú~­î… @èºùµå_@ýÜNæÿ… @\0\0\0\0\0\0\0\0\0èºùµå_@ýÜNæÿ… @²1Ózã_@sôÿ… @Ú|ã_@|Þ0¼† @Ö—Ã·å_@ã8ð­† @èºùµå_@ýÜNæÿ… @\0\0\0\0\0\0\0\0\0Ö—Ã·å_@ã8ð­† @Áv¹å_@Ã’‘u#† @¬WW»å_@“ê2=5† @7~öç_@Àñ.5† @‡´ôç_@ÌwPg#† @Õ+êòç_@v-¯Ÿ† @Ö—Ã·å_@ã8ð­† @\0\0\0\0\0\0\0\0\0MŒ©õ_@ÍæÝ­"† @nƒº_@Š-$¼"† @vŒM¼_@\'»Äƒ4† @\Z t÷_@Ød~u4† @MŒ©õ_@ÍæÝ­"† @');
INSERT INTO `flood_maps` (`id`, `barangay_id`, `level`, `return_period`, `created_at`, `updated_at`, `shape`) VALUES
(2, 1, 2, 25, NULL, NULL, '\0\0\0\0\0\0\0R\0\0\0\0\0\0\0\0\0\0\0TŠd\\_@–OEC5t @Ä,h)Z_@H¾‹Q5t @N®2+Z_@Ôï+Gt @—Lf\\_@€qå\nGt @TŠd\\_@–OEC5t @\0\0\0\0\0\0\0\0\0Ý0£^_@ž>ÄXt @Ù¨h\\_@Z‘…ÒXt @;ái\\_@¯%šjt @Ù¼ú¤^_@¬Þ‹jt @Ý0£^_@ž>ÄXt @\0\0\0\0\0\0\0\0\0/1Ãc_@•Mþt @š©ã`_@¢:×Žt @¹Ktå`_@ý2wÔŸt @Ÿï c_@N6/ÆŸt @/1Ãc_@•Mþt @\0\0\0\0\0\0\0\0\0ó6î%c_@ äÕt @álÔê`_@¸W+Õt @œ&Ÿì`_@Ùÿöòæt @gý¸\'c_@žÄ®äæt @ó6î%c_@ äÕt @\0\0\0\0\0\0\0\0\0=oMn_@ ÕÔt @/KUl_@³?êãÔt @ˆD l_@¡á‰«æt @M:On_@^«?æt @=oMn_@ ÕÔt @\0\0\0\0\0\0\0\0\0·6·{_@ý¤Wžu @2Ð|y_@¨j¤¬u @æè}y_@w¦Ct-u @Œ¹{_@$Ñöe-u @·6·{_@ý¤Wžu @\0\0\0\0\0\0\0\0\0×°¸^_@À¾.u @\'–}\\_@o..u @p²`\\_@&t¦õ?u @ÛÌzº^_@’µ^ç?u @×°¸^_@À¾.u @\0\0\0\0\0\0\0\0\0x`eÎr_@¨.Çf?u @Ûf	u_@ìy{X?u @=k™Dw_@Æ_/J?u @?(ÎBw_@`‚-u @™0´u_@ß Ü-u @ñ6šÌr_@õÅ\'Ÿ-u @x`eÎr_@¨.Çf?u @\0\0\0\0\0\0\0\0\0x`eÎr_@¨.Çf?u @XK“p_@ú}u?u @æv•p_@Eô±<Qu @Œ0Ðr_@N•f.Qu @x`eÎr_@¨.Çf?u @\0\0\0\0\0\0	\0\0\0@Àü`_@O–÷†u @<õú`_@µ6ö/uu @y6c_@c~­!uu @ž¢D4c_@f®\rZcu @Âr*ù`_@WVhcu @ã@¾^_@Xšžvcu @éýÚ¿^_@›‰>>uu @ï¼¥Á^_@ØvÞ‡u @@Àü`_@O–÷†u @\0\0\0\0\0\0	\0\0\0²­1fQ_@§‹	zÎu @v!+O_@¸fOˆÎu @i‘á,O_@·ïOàu @`*ügQ_@`Ì©Aàu @\r©ÆiQ_@J	òu @ºLá¤S_@L«ûñu @TÁ£S_@A|c3àu @î7L¡S_@(KÃkÎu @²­1fQ_@§‹	zÎu @\0\0\0\0\0\0\0\0\0Í*Aï_@=Ú{ôu @„Ïí_@OÈŠôu @yØí_@9Â±Qv @¸óBï_@n\'}Cv @ø%~ñ_@3\'H5v @ŽÈE|ñ_@aL¥môu @Í*Aï_@=Ú{ôu @\0\0\0\0\0\0\0\0\0Â‡“\\_@j$†‰v @qÇK‘\\_@ý5æÁñu @afÌ^_@Û³ñu @–›Ê^_@/úýëßu @!¶a_@zIµÝßu @EKëa_@)vÎu @}Ç?c_@©oÌÎu @ÿæ:=c_@ë©,@¼u @‚w a_@É uN¼u @Ç^_@92¾\\¼u @…’ë‹\\_@;^k¼u @8Ú Š\\_@‰gf£ªu @ü@;Å^_@(K•ªu @õ}pÃ^_@b~Í˜u @ê#Vˆ\\_@ÆnÆÛ˜u @áÇ;MZ_@ê˜u @Ôi!X_@ýWUø˜u @­ìX_@põ¿ªu @ç™ÑØU_@\\<Îªu @,œÚU_@²Ü•¼u @\'ÀfÜU_@;¥|]Îu @cFX_@à™5OÎu @œÊ›RZ_@)î@Îu @1zfTZ_@N+Žàu @Æ+1VZ_@x+.Ðñu @\\ßûWZ_@…)Î—v @õ4áX_@2É¦v @ÐÝ«X_@ÝÔµmv @ñ”ÆYZ_@%n_v @Já”\\_@Ó&Qv @Â‡“\\_@j$†‰v @\0\0\0\0\0\0\0\0\0Ö±4KF_@.™Æ6Kv @)ŸO†H_@…æ(Kv @dI…„H_@©sá`9v @ËhjIF_@µ&o9v @Ö±4KF_@.™Æ6Kv @\0\0\0\0\0\0	\0\0\0zŠjÁJ_@kÎ<\ZKv @Îs…üL_@ßP÷Kv @[ 7O_@âm±ýJv @r@»rQ_@t%kïJv @Ä·ðpQ_@ñÊ\'9v @,ßÕ5O_@ã)69v @“»úL_@AýVD9v @û\' ¿J_@-kœR9v @zŠjÁJ_@kÎ<\ZKv @\0\0\0\0\0\0\0\0\0Ö±4KF_@.™Æ6Kv @‚ÂD_@gæ\nEKv @Ô\0äD_@ov«]v @àüþLF_@™gþ\\v @Ö±4KF_@.™Æ6Kv @\0\0\0\0\0\0\0\0\0zŠjÁJ_@kÎ<\ZKv @)ŸO†H_@…æ(Kv @îöˆH_@RW"ð\\v @úî4ÃJ_@™/Ýá\\v @zŠjÁJ_@kÎ<\ZKv @\0\0\0\0\0\0\0\0\0#A®D_@gLÔnv @\\6“ØA_@iânv @ñk]ÚA_@ä¦0ª€v @uƒxD_@Fì›€v @#A®D_@gLÔnv @\0\0\0\0\0\0\0\0\0Ô,Ë¶S_@lEÇ£v @k\0µS_@øõ¤ÿ‘v @¦¡ðU_@\'¤]ñ‘v @‚÷PîU_@B—½)€v @ýk)X_@ ïu€v @‚\0‡dZ_@‹â-\r€v @é>¼bZ_@åòEnv @Pñ`Z_@%î}\\v @E•Ö%X_@øî5Œ\\v @gä$X_@‡ë•ÄJv @ñèU_@HdÝÒJv @òb&çU_@\'O=9v @\\Ž¬S_@×R„9v @Å#Ö­S_@—w$áJv @-» ¯S_@HšÄ¨\\v @"Ë…tQ_@ÇW·\\v @Ùj9O_@Ô¯QÅ\\v @	Y5;O_@¶ïñŒnv @þÚÿ<O_@|-’T€v @€æ\ZxQ_@1¶KF€v @0wåyQ_@Vâë\r’v @Þ	°{Q_@kŒÕ£v @Ô,Ë¶S_@lEÇ£v @\0\0\0\0\0\0\0\0\0õO<¥è_@9SÊv @º³ jæ_@°hOÊv @déèkæ_@—xò×Ûv @[’§è_@•S¾ÉÛv @õO<¥è_@9SÊv @\0\0\0\0\0\0\r\0\0\0g„þ1;_@ö^»Ùv @k40;_@æž}óÇv @o»Ok=_@1z:åÇv @O—…i=_@®Ç™¶v @Ù ¤?_@ MV¶v @&ªÖ¢?_@)¨µG¤v @/u»g=_@ùU¤v @7> ,;_@š<d¤v @Sj.;_@ÈÜÜ+¶v @î\rOó8_@nŒ:¶v @™õ8_@(^ÀÈv @B%ãö8_@Ó-aÉÙv @g„þ1;_@ö^»Ùv @\0\0\0\0\0\0	\0\0\0PùÅDø_@Ä7FfÛv @L^ª	ö_@÷"}tÛv @ïrö_@÷Ã<ív @Ï–ŽFø_@6Éè-ív @<ªú_@\0i±ív @TàÅ¼ü_@U£yív @`)ýºü_@ÿ0×IÛv @V’áú_@çXÛv @PùÅDø_@Ä7FfÛv @\0\0\0\0\0\0\0\0\0ö`¬€4_@/›ååÙv @ÐûE2_@®9\'ôÙv @IäZG2_@6È»ëv @)Vv‚4_@\0ˆ†­ëv @ö`¬€4_@/›ååÙv @\0\0\0\0\0\0\0\0\0Û"‡Z_@×"è­ìv @\rk\n_@µ®"¼ìv @`’4!\n_@šÁÄƒþv @ë4P\\_@)&Šuþv @vÕk—_@B%Ogþv @¬¶¢•_@ƒ1­Ÿìv @Û"‡Z_@×"è­ìv @\0\0\0\0\0\0\0\0\0•ªè_@NYÿv @²Zyoæ_@8’8gÿv @V–Aqæ_@ç›Û.w @{e]¬è_@CH§ w @•ªè_@NYÿv @\0\0\0\0\0\0\0\0\0Cá“­?_@gyõw @`¯èA_@ô85çw @åæA_@ð­”ýv @j¨É«?_@dÌØ-ýv @Cá“­?_@gyõw @\0\0\0\0\0\0\0\0\0Cá“­?_@gyõw @ì_xr=_@/½w @ŽBt=_@Õ×]Ë w @^¯?_@ ÿ½ w @Cá“­?_@gyõw @\0\0\0\0\0\0\0\0\0`¯èA_@ô85çw @1¨yêA_@óÁÕ® w @E2•%D_@Ñ‘  w @ôÝÊ#D_@o¥ðØw @`¯èA_@ô85çw @\0\0\0\0\0\0\0\0\0~ÄçÖJ_@¦ÔÀu w @ûIÕJ_@Š ®w @{ÑRÓJ_@=€æüv @àf7˜H_@×ñÅôüv @ýl–H_@‘“%-ëv @7Q[F_@ÆÒj;ëv @Bú]F_@ª@ýv @MYæ^F_@t¬«Êw @¦ÒšH_@Nf¼w @l@Ì›H_@+¨„ w @Xº°`F_@9L’ w @d{bF_@ñ}ìY2w @2°–H_@D\0§K2w @þ@²ØJ_@"a=2w @~ÄçÖJ_@¦ÔÀu w @\0\0\0\0\0\0\0\0\0ÇñCìA_@æHvv2w @øX(±?_@.–º„2w @Ñ—ò²?_@¬*[LDw @[=îA_@ÇÍ>Dw @ÇñCìA_@æHvv2w @\0\0\0\0\0\0\0\0\0Ûv>_@¦ˆÎéVw @ ¤\0_@®øVw @ÆÊ_@›\'®¿hw @»úå?_@þp±hw @Ûv>_@¦ˆÎéVw @\0\0\0\0\0\0\0\0\0•\n¢+_@rÔò[hw @‘Û¨Ý-_@‹é±Mhw @“þÞÛ-_@WÜ†Vw @Q:Ã +_@¥·Q”Vw @•\n¢+_@rÔò[hw @\0\0\0\0\0\0\0\0\0•\n¢+_@rÔò[hw @š7qg)_@àY3jhw @!ý:i)_@6„Ô1zw @ØÜV¤+_@0ï“#zw @•\n¢+_@rÔò[hw @\0\0\0\0\0\0	\0\0\0•^€ _@È¬úw @èþ”~ _@3Ht2Œw @Xó°¹"_@w95$Œw @Rç·"_@wâ“\\zw @OjË| _@šáÒjzw @›€¯A_@G{yzw @zyC_@tñ²@Œw @X’BE_@ eTžw @•^€ _@È¬úw @\0\0\0\0\0\0\0\0\0šžF_@ó‰°w @ÕÃº_@ÃQÈz°w @ÃÐñ_@Ã$&³žw @©³ÕD_@q¶_Ážw @šžF_@ó‰°w @\0\0\0\0\0\0%\0\0\0/ŽÎl)_@«ÒÁw @©Äk)_@r¬uù‹w @!ý:i)_@6„Ô1zw @l.\'_@Ä³@zw @ŸbU,\'_@Öysxhw @š7qg)_@àY3jhw @t§e)_@z-’¢Vw @‡²Ýc)_@ÿðÚDw @üòb)_@„ÎO3w @ÆŸ/+_@Þw3w @Õe›+_@âTn=!w @9\rœ™+_@Ú/Íuw @òFÒ—+_@Í,®ýv @ŒËíÒ-_@{{ëŸýv @‰ú#Ñ-_@ìaJØëv @«‚–+_@¥ßŠæëv @ÌíZ)_@ë÷Êôëv @ðŒÑ\'_@»ª\nìv @¶ä$_@øIìv @+­æ$_@PëØýv @Â7›!\'_@ó«Êýv @”äd#\'_@O9M’w @d“.%\'_@ˆ}îY!w @Vïê$_@¨ù-h!w @k“Üë$_@kKÏ/3w @£àÀ°"_@­q>3w @üyŠ²"_@õÐ¯Ew @UT´"_@/.QÍVw @¬²¶"_@Z‰ò”hw @¥‹9ñ$_@T4³†hw @·7ó$_@Ú}TNzw @ÈåÌô$_@DÅõŒw @Ø•–ö$_@¬\n—Ýw @çG`ø$_@N8¥¯w @ÎQ|3\'_@(Uø–¯w @“²1\'_@h!WÏw @/ŽÎl)_@«ÒÁw @\0\0\0\0\0\0\0\0\0/ŽÎl)_@«ÒÁw @µY˜n)_@Óö·ˆ¯w @Ÿ_´©+_@3wz¯w @]‡ê§+_@tÖ²w @/ŽÎl)_@«ÒÁw @\0\0\0\0\0\0\0\0\0Rã\r¿"_@F2{Áw @±Èñƒ _@ÄoX‰Áw @Ge»… _@*ÎùPÓw @¥Œ×À"_@ºBÓw @Rã\r¿"_@F2{Áw @\0\0\0\0\0\0\0\0\0Ë««_@„DûÁw @wG©_@i9¢3°w @í”cä_@O7f%°w @Ë°_@¼Ï)°w @™d¶_@»ˆOžw @d\Zí_@¨Mæ‡Œw @üÑà_@–"–Œw @uUšâ_@ºgÄ]žw @SD~§_@AZ\0lžw @41bl_@Mç;zžw @5W+n_@ÖÝA°w @[53\n_@-\rP°w @ŸPØ4\n_@n	»Âw @ám¡6\n_@œ]ßÓw @2©½q_@R­!ÑÓw @.Õ†s_@â•Ã˜åw @=£®_@ŠÊ‡Šåw @„âÙ¬_@ŽñåÂÓw @Ë««_@„DûÁw @\0\0\0\0\0\0\0\0\0””4Æ"_@0až™x @EåjÄ"_@ŒýÑöw @q¤N‰ _@Í„<àöw @ža2N_@“‹{îöw @ÄÍhL_@³!Ú&åw @®•L_@h³5åw @Ì_@Ý,ºüöw @ùÕù×_@¬hø\n÷w @™[0Ö_@¡ßVCåw @…›_@`¦”Qåw @qá÷__@£Ò_åw @ZBÁa_@×¯s\'÷w @D¥Šc_@ûUïx @Ïü¦ž_@Õ×àx @rnp _@jy¨\Zx @¹ÐŒÛ_@†t;š\Zx @1©_@ý‹\Zx @ç¥ß_@C¤[Äx @v÷ûO_@có¶x @LÅQ_@Y¾}\Zx @—ëáŒ _@\'3o\Zx @ãEþÇ"_@¸§?a\Zx @””4Æ"_@0až™x @\0\0\0\0\0\0\0\0\0Èµ_@Ù©,x @‰äð_@»ªÒš,x @þ\0,_@!Ö•Œ,x @qg_@	œX~,x @,\nTe_@ú¶¶\Zx @æ£7*_@‡$ôÄ\Zx @»Kn(_@ëpRýx @1ðQí_@^&	x @¢;ï_@Žé0Ó\Zx @]Ñþ³_@Imá\Zx @Èµ_@Ù©,x @\0\0\0\0\0\0\0\0\0?\n_@žÇ†Å,x @¡r_@FÂÓ,x @š½;_@­d›>x @QGXA\n_@tµ(>x @?\n_@žÇ†Å,x @\0\0\0\0\0\0\0\0\0Èµ_@Ù©,x @™«z_@z#K·,x @	Ït|_@¾í~>x @ÃT‘·_@Šè°p>x @Èµ_@Ù©,x @\0\0\0\0\0\0\0\0\0*’«Ž _@B‡ 7,x @")S_@Ê¼_E,x @÷ÄXU_@m\r>x @¹:u _@PÙÁþ=x @*’«Ž _@B‡ 7,x @\0\0\0\0\0\0\0\0\0*rTä_@¥üâ~?x @–gUâ_@‹?x @–­â_@K‘ºTQx @æe:Vä_@Üð…FQx @*rTä_@¥üâ~?x @\0\0\0\0\0\0\0\0\0$‡<jø_@ÍušÆPx @Àà/ö_@©§ÒÔPx @Z›è0ö_@quœbx @yNlø_@Ü<Žbx @$‡<jø_@ÍušÆPx @\0\0\0\0\0\0\0\0\0Z›è0ö_@quœbx @;æËõó_@]ù¬ªbx @–”÷ó_@¢|Ortx @óW±2ö_@(‘dtx @Z›è0ö_@quœbx @\0\0\0\0\0\0\0\0\0B¾WmÛ_@8pœux @äoÛ_@jœ?Ö†x @…È<ªÝ_@ØýÈ†x @–t¨Ý_@/áh\0ux @B¾WmÛ_@8pœux @\0\0\0\0\0\0\0\0\0–”÷ó_@¢|Ortx @?Òw¼ñ_@ž‡€tx @\\w@¾ñ_@b“)H†x @òG]ùó_@Ùýñ9†x @–”÷ó_@¢|Ortx @\0\0\0\0\0\0\0\0\0d{×5M_@˜…ýÿƒx @#Ì4M_@Ús]8rx @&XðøJ_@œÕ¤Frx @\'âÓ½H_@ßÑëTrx @ïwž¿H_@ÙŒ„x @©úºúJ_@øöD„x @d{×5M_@˜…ýÿƒx @\0\0\0\0\0\0\0\0\0äoÛ_@jœ?Ö†x @ý4Ù_@{Õrä†x @æøÖ_@©¥ò†x @^#®úÖ_@7òHº˜x @’Ë5Ù_@¬˜x @ÊèpÛ_@Æâ˜x @äoÛ_@jœ?Ö†x @\0\0\0\0\0\0\0\0\0^#®úÖ_@7òHº˜x @-,‘¿Ô_@Òo{È˜x @·/YÁÔ_@}Æªx @¥3vüÖ_@[9ìªx @^#®úÖ_@7òHº˜x @\0\0\0\0\0\0\r\0\0\0Ú½öÔ?_@¾¨D–x @Y,Ó?_@i;¤U„x @HÌ˜=_@ÐKéc„x @c$Ú™=_@ÂÈ‰+–x @ìˆ½^;_@EƒÎ9–x @wë #9_@JØH–x @,k%9_@mr³¨x @KÖ‡`;_@Í\ro¨x @~~¤›=_@®C*ó§x @±$ÁÖ?_@åä§x @äÈÝB_@ð~ŸÖ§x @RUB_@<#ÿ–x @Ú½öÔ?_@¾¨D–x @\0\0\0\0\0\0\0\0\0EaxtÛ_@˜)-¼x @øk•¯Ý_@lGõ¼x @3Í­Ý_@ñ0RWªx @ˆ5°rÛ_@”î…eªx @EaxtÛ_@˜)-¼x @\0\0\0\0\0\0\0\0\0d{×5M_@˜…ýÿƒx @¥,¢7M_@;•Ç•x @ãßl9M_@Ú¢=§x @$•7;M_@j®ÝV¹x @:TvO_@®¨•H¹x @Ýp±Q_@r=M:¹x @ñ}ìS_@µl,¹x @|¢ÂêS_@dd§x @J¦¯Q_@ Q­r§x @x‰tO_@½¬õ€§x @¸¾rO_@½®U¹•x @AÛ­Q_@Àb\r«•x @Ùv¬Q_@[rmãƒx @úópO_@¹®µñƒx @d{×5M_@˜…ýÿƒx @\0\0\0\0\0\0\0\0\0uñÞ=_@ÕTæXÞx @Wƒ<_@Ó·D‘Ìx @öh2w_@‰ñƒÌx @•LO²_@¾ÅÈtÌx @þÆ…°_@ÕE\'­ºx @á›¢ë_@Äèžºx @ŒÙé_@»QG×¨x @5}è_@GÝ¥—x @ÊÁò¬_@Õ?ä—x @`Öq_@ã<",—x @öD¹6_@rÔ_:—x @­‚8_@¢w©x @óÞeý_@E¹>©x @ÎIÂ_@g•{©x @w_Ä_@¯Uæºx @²ÛÅ_@å¿­Ìx @¹›ø\0_@œ‚ŸÌx @ýÁ_@2Å#gÞx @uñÞ=_@ÕTæXÞx @\0\0\0\0\0\0\0\0\0ÄéyO_@ašÕ×Üx @t€µQ_@åÉÜx @¼­;³Q_@²\'íËx @þxO_@Ž¢5Ëx @ÄéyO_@ašÕ×Üx @\0\0\0\0\0\0\0\0\0uñÞ=_@ÕTæXÞx @“a¨?_@Èï‡ ðx @©`Åz_@W\nJðx @Ðãûx_@ø~¨JÞx @uñÞ=_@ÕTæXÞx @\0\0\0\0\0\0\0\0\0ÒÕF·n_@©\rY×íx @¶&*|l_@UÏ¦åíx @F–õ}l_@Ï÷E­ÿx @R¹n_@|&øžÿx @ÒÕF·n_@©\rY×íx @\0\0\0\0\0\0	\0\0\0“¼Œï_@Æ<ßx @U¨ñPí_@YÞÄJßx @ï?ºRí_@Ûgñx @…Ù‚Tí_@P#\nÚy @uKVí_@´Â¬¡y @¯h‘ï_@Å{u“y @< ï_@îëÒËy @ê`×ï_@Z0ñx @“¼Œï_@Æ<ßx @\0\0\0\0\0\0	\0\0\0Qôþ?¼_@”dy @Ú˜áº_@¹¬’ y @{©º_@E±6èy @¯wÆA¼_@‰Úy @ýC¼_@|¬¡\'y @ÿo«~¾_@ÌÞ}“\'y @æÝã|¾_@`ûÙËy @ÌM{¾_@Ú6y @Qôþ?¼_@”dy @\0\0\0\0\0\0\0\0\0éË“Ð_@í]‰[7y @ImÊÎ_@¬ç“%y @\0B­“_@´$¢%y @â“v•_@$QÆi7y @éË“Ð_@í]‰[7y @\0\0\0\0\0\0	\0\0\0Ø\'|”Ò_@ÕkÛ8y @ !´’Ò_@ÒÈ\'y @À–WÐ_@¥®ú!\'y @\nº^YÐ_@æžé8y @AJAÎ_@½ìÏ÷8y @|9	 Î_@s_s¿Jy @¶&[Ð_@wA±Jy @Œ0D–Ò_@7)£Jy @Ø\'|”Ò_@ÕkÛ8y @\0\0\0\0\0\0\0\0\0Úßä_@¶Éz”7y @„\rèå_@Ê·\\Iy @AX!_@‹åàMIy @Ú<_@	?†7y @Úßä_@¶Éz”7y @\0\0\0\0\0\0\0\0\0éË“Ð_@í]‰[7y @†,]Ò_@¹\r+#Iy @Koz\r_@l¥íIy @ð±_@2LM7y @éË“Ð_@í]‰[7y @\0\0\0\0\0\0)\0\0\0ÄéyO_@ašÕ×Üx @¤Í>M_@\\¿æÜx @åÀ—@M_@½Ä½­îx @ÀózK_@Õ“¼îx @ž$^ÊH_@lýLÊîx @ySAF_@”Øîx @T€$TD_@ Úæîx @.«B_@\'Ù õîx @	ÔêÝ?_@¸¬fïx @ßDµß?_@¾\rË\0y @ý^˜¤=_@i‹LÙ\0y @Åb¦=_@úùì y @1--¨=_@qfh$y @‹,Jã?_@ÉGZ$y @µ·á?_@³l§’y @S¨œB_@éya„y @æ)gB_@\'ÇL$y @‹,Jã?_@ÉGZ$y @`£å?_@e$è!6y @w­1 B_@b¢6y @µN[D_@Üš[6y @¦»k–F_@Ò½÷5y @²Z6˜F_@Áç´¾Gy @¾û\0šF_@£U†Yy @MÕH_@Û­\rxYy @‡kSÓH_@—•m°Gy @¾¿ˆÑH_@F{Íè5y @ÓÁ¥K_@6Ó…Ú5y @XzpK_@éÝ%¢Gy @-‡IM_@·ÀÝ“Gy @\0’ª„O_@>•…Gy @ÒšÇ¿Q_@ÉULwGy @¼ü½Q_@ôy¬¯5y @^ß1¼Q_@œè#y @¢gºQ_@"¼l y @"JO_@|uµ.y @V}O_@Øƒg\0y @è+œ¸Q_@ÚÌX\0y @.UÑ¶Q_@ö,‘îx @	Œ´{O_@$uŸîx @ÄéyO_@ašÕ×Üx @\0\0\0ðO_@eUö#y @Àß‚O_@Rõ½5y @ëÁÂGM_@£Å=Ì5y @¨þ÷EM_@}È$y @ðO_@eUö#y @\0\0\0\0\0\0\0\0\0+ÌÓe_@¨SªöFy @]™¯˜c_@€ÍöGy @ÿßzšc_@=*–ÌXy @Šã—Õe_@À I¾Xy @+ÌÓe_@¨SªöFy @\0\0\0\0\0\0\0\0\0MÕH_@Û­\rxYy @ÉèÖH_@Ä­?ky @dñK_@%íe1ky @Ý4;K_@æÅiYy @MÕH_@Û­\rxYy @\0\0\0\0\0\0\0\0\0è™#Î_@¸>ºNny @ì…{èË_@œàë\\ny @`nCêË_@®\\$€y @a%Î_@B«]€y @è™#Î_@¸>ºNny @\0\0\0\0\0\0\0\0\0Ð-øpä_@øHù[y @t¶Ú5â_@ƒÒF\\y @šR4â_@£í£?Jy @8½/oä_@¢sn1Jy @žNgmä_@?œËi8y @»ðI2â_@µx8y @Ü,÷ß_@¨6†8y @þ.¼Ý_@«j”8y @cw×½Ý_@±\r\\Jy @ýåôøß_@ÙMJy @=½úß_@‰ö{\\y @7–…üß_@äèÝmy @QñMþß_@/ÙÁ¤y @$„k9â_@–Œ–y @N£7â_@TµéÎmy @f Àrä_@?´Àmy @Ð-øpä_@øHù[y @\0\0\0\0\0\0\0\0\0c‚~a\n_@FŠ–~y @\\ï›œ_@JBMˆ~y @•Òš_@‰«Àly @D5µ_\n_@EèÎly @c‚~a\n_@FŠ–~y @\0\0\0\0\0\0\0\0\0¡v;_@ƒëô\\}y @E­9t;_@±yT•ky @úv99_@ü‰™£ky @˜Ïæ:9_@i:k}y @¡v;_@ƒëô\\}y @\0\0\0\0\0\0\0\0\0ªS!±=_@f¯N}y @µ’>ì?_@({i@}y @àtê?_@(Éxky @“áV¯=_@â‡ky @ªS!±=_@f¯N}y @\0\0\0\0\0\0\0\0\0ý;@ˆO_@ÂÕky @°#MM_@¶°#ky @óâíNM_@ž¥½ê|y @ýŠO_@ôtÜ|y @ý;@ˆO_@ÂÕky @\0\0\0\0\0\0\0\0\0£\Zß$±_@¿ÄÎ€y @:l¦&±_@4óh–’y @‰5Äa³_@‰ô;ˆ’y @5×ü_³_@ãÏ—À€y @£\Zß$±_@¿ÄÎ€y @\0\0\0\0\0\0\0\0\0Éc½NÙ_@4^—‘y @è,õLÙ_@^A_Ïy @´ÅˆÛ_@Ô.+Áy @„J†Û_@vˆùmy @ø,KÙ_@x"¼ny @ùi×_@õ¿ïny @ÑCG×_@wLN\\y @‡À)ÓÔ_@ç·\\\\y @>;˜Ò_@Óz²j\\y @÷³î\\Ð_@:Øäx\\y @ê³¶^Ð_@N7ˆ@ny @ìGÔ™Ò_@`ÊU2ny @òÙñÔÔ_@ì÷"$ny @Zõ¹ÖÔ_@ã5Æëy @™Vœ›Ò_@Ýùùy @AgdÒ_@JcœÁ‘y @Á‚ØÔ_@Éqi³‘y @B¼Ÿ×_@Á\Z6¥‘y @Éc½NÙ_@4^—‘y @\0\0\0\0\0\0\0\0\0s´Â–ï_@æ]êIy @ÉS¥[í_@y””øIy @!ñ‡ ë_@‰¤ËJy @{Œjåè_@OJy @f¢ãè_@É–_M8y @€ª„¨æ_@FÌ•[8y @Ø%Mªæ_@”8#Jy @8½/oä_@¢sn1Jy @Ð-øpä_@øHù[y @-£¬æ_@éYÛê[y @€"Þ­æ_@¥~²my @ž¢ûèè_@‡¹G¤my @½ $ë_@ãï–my @‡»á%ë_@x’³]y @ª0Äêè_@§kêky @Ð£¦¯æ_@Qß zy @\'o±æ_@ížÃA‘y @¶ÀŒìè_@¸3‘y @¾RUîè_@°É/û¢y @÷r)ë_@jÑøì¢y @m™dí_@sÁÞ¢y @È9®Ÿï_@K°‰Ð¢y @ˆåï_@÷0ç‘y @GËœï_@Š¯DAy @Tšï_@,¢ymy @»d‹˜ï_@¦ÿ±[y @s´Â–ï_@æ]êIy @\0\0\0\0\0\0\0\0\0*|_@x†y @N\0ïy_@ \'c”y @TÕËðy_@œß\\Ÿy @É÷è+|_@Y ±MŸy @;g~_@û_?Ÿy @º0:e~_@ãbÁwy @*|_@x†y @\0\0\0\0\0\0\0\0\0Ò_‘…_@bÂËLy @!RtÛ‚_@[y @S@Ý‚_@m¼"Ÿy @Šm]…_@,jŸy @Ò_‘…_@bÂËLy @\0\0\0\0\0\0\0\0\0cèg×_@EÙl£y @%2JÚÔ_@–«{£y @…SÜÔ_@^ã¯Bµy @0×_@Gm|4µy @×MRÙ_@ª‘H&µy @¥œ…PÙ_@ñx¥^£y @cèg×_@EÙl£y @\0\0\0\0\0\0\0\0\0²ÓëŸ˜_@\0o‡Á¶y @D\n%ž˜_@‹”âù¤y @ÐB^œ˜_@¸=2“y @õ!|×š_@&$“y @%öBÙš_@$ã¹ë¤y @\nà`_@6ÌÝ¤y @ÿ™_@µì“y @, Ó_@\ZOGNy @ÀOµÕš_@Gp\\y @ˆîÓš_@èuË”oy @L±\'Òš_@±¢&Í]y @å`Ðš_@kÍLy @Å\ZšÎš_@öÜ=:y @S{|“˜_@—JL:y @Û8C•˜_@f1ªLy @`ø	—˜_@)OÛ]y @v=ì[–_@\Z$wé]y @9ò²]–_@H±oy @÷¨y_–_@hÁxy @™Ò[$”_@ÌÍè†y @—~"&”_@UËN“y @,é\'”_@ÆÆ2¥y @‚Ü¯)”_@2À×Ý¶y @rŽv+”_@·|¥Èy @Å—”f–_@?²T—Èy @ÙÍd–_@\\Ê¯Ï¶y @²ÓëŸ˜_@\0o‡Á¶y @\0\0\0\0\0\0\0\0\0²ÓëŸ˜_@\0o‡Á¶y @Ÿ²¡˜_@gG,‰Èy @x¤ÐÜš_@w{Èy @PÌ	Ûš_@®^³¶y @²ÓëŸ˜_@\0o‡Á¶y @\0\0\0\0\0\0\0\0\0Ÿ²¡˜_@gG,‰Èy @Å—”f–_@?²T—Èy @nX[h–_@˜ù^Úy @ly£˜_@¾ÑPÚy @Ÿ²¡˜_@gG,‰Èy @\0\0\0\0\0\0\0\0\0\0¾û\ZK_@!ï…Äy @††ÆK_@[é%ßÕy @BùãWM_@4OÝÐÕy @þi“O_@†O”ÂÕy @ü‡6‘O_@‰tôúÃy @þ#VM_@™d=	Äy @\0¾û\ZK_@!ï…Äy @\0\0\0\0\0\0\0\0\0U³€/|_@ëjîÜÂy @gwcôy_@~I?ëÂy @qK/öy_@WûÝ²Ôy @”L1|_@\r¤Ôy @U³€/|_@ëjîÜÂy @\0\0\0\0\0\0	\0\0\0æÞô–_@\r\r1Ây @)ÂÁ¹”_@î­Z?Ây @/Ž»”_@Ì£øÔy @¨_«ö–_@?ó¢øÓy @>ŽÈ1™_@*ÝLêÓy @Ñºål›_@aöÛÓy @±\'k›_@¸šXÂy @Üü/™_@¦¯"Ây @æÞô–_@\r\r1Ây @\0\0\0\0\0\0\0\0\0»Õ¹É_@ÎÂ•àêy @0\r¸É_@“CòÙy @¯Gï|Ç_@Œw#\'Ùy @˜"·~Ç_@MÇîêy @»Õ¹É_@ÎÂ•àêy @\0\0\0\0\0\0\0\0\0z+™CÅ_@Cä÷üêy @]2{Ã_@³\\(ëy @ÇõB\nÃ_@nÌÒüy @¢û`EÅ_@{€›Äüy @z+™CÅ_@Cä÷üêy @\0\0\0\0\0\0\0\0\0¾|ä_@AlÊýûy @Ád"¼æ_@Rñ“ïûy @ÕYºæ_@>ñ\'êy @@H‘¸æ_@¾ˆN`Øy @·ys}ä_@™ä„nØy @<ú;ä_@t©\'6êy @¾|ä_@AlÊýûy @\0\0\0\0\0\0\0\0\0’.5%_@dvž(z @Õú"_@Ïà6z @PÀÚû"_@ &þz @ü‰ø6%_@žq?ðz @’.5%_@dvž(z @\0\0\0\0\0\0\0\0\0+ì"_@s‡€pz @yOÎç_@¥ª¾~z @Øq°¬_@MhüŒz @¨ßy®_@çžT0z @Ê—é_@«?`F0z @e²µ$_@ç"80z @+ì"_@s‡€pz @\0\0\0\0\0\0\0\0\0{°?Á=_@5}RSz @Êü!†;_@\Z˜az @$vì‡;_@Qì8)/z @’6\nÃ=_@ÑÊò\Z/z @{°?Á=_@5}RSz @\0\0\0\0\0\0\0\0\0Ê©y[M_@>`ùy @“\\ K_@¢×enùy @\Zì&"K_@­Ë6z @ ¼ñ#K_@Ÿ½¥ýz @Rb_M_@þä\\ïz @–AÚ`M_@KÅü¶.z @ò÷›O_@€w³¨.z @-šO_@Ò¦áz @b˜O_@Ôsz @…D]M_@ª½\'z @Ê©y[M_@>`ùy @\0\0\0\0\0\0	\0\0\0|B°6|_@Uçhû	z @˜Ó’ûy_@ˆº	\nz @¨¯^ýy_@®XÑz @J+|8|_@?Ãz @H:|_@#¦Š-z @sœeu~_@wT|-z @è¤™s~_@Üîµ´z @^¯Íq~_@šdí	z @|B°6|_@Uçhû	z @\0\0\0\0\0\0	\0\0\01¶lí‚_@AiN\'?z @GCŠ(…_@ð†û?z @[Î§c‡_@?¨\n?z @×¡Ûa‡_@÷	C-z @Ww`‡_@ù­k{z @¼ò$…_@Ö¾‰z @€#¾&…_@¿/]Q-z @)£ ë‚_@f°_-z @1¶lí‚_@AiN\'?z @\0\0\0\0\0\0\0\0\0…­¤ý"_@l/"Æ/z @Õ†Â _@}ŽcÔ/z @•·PÄ _@Ð¤œAz @\nœ\ZÆ _@¹¥cSz @í8#_@×:dUSz @ºœnÿ"_@)6ÃAz @…­¤ý"_@l/"Æ/z @\0\0\0\0\0\0\0\0\0§Ñ!b0_@ôI28Az @ø\'._@ÕvFAz @f)Î(._@ÐSz @Lìc0_@ñÒÿRz @§Ñ!b0_@ôI28Az @\0\0\0\0\0\0\0\0\0}ñ¶‰;_@zGÙð@z @$vì‡;_@Qì8)/z @·³ÎL9_@H¨~7/z @GK9_@u;Þoz @Ü9I9_@Ì=¨z @q…W„;_@Ü/ø™z @‚;_@†ÎWÒùy @äsoG9_@«[àùy @H\r¥E9_@¨èüèy @Ð{‡\n7_@«\0B\'èy @ð#½7_@ÿ{¡_Öy @5ŸÍ4_@ßæmÖy @WèiÏ4_@&³†5èy @x54Ñ4_@^E\'ýùy @š„þÒ4_@„ÕÇÄz @¼ÕÈÔ4_@’chŒz @\Z«™2_@Sß¬šz @o`u›2_@õzMb/z @–W`0_@Æ ‘p/z @§Ñ!b0_@ôI28Az @Ò¨?2_@ˆî)Az @ü}]Ø4_@“y©Az @Õ\'Ú4_@~JãRz @µE7_@dñÕRz @(Q{7_@yd\rAz @Q"™N9_@ÿ@z @}ñ¶‰;_@zGÙð@z @\0\0\0\0\0\0\0\0\0}ñ¶‰;_@zGÙð@z @Ôn‹;_@” y¸Rz @¾HŸÆ=_@Ü_3ªRz @§ ½@_@š¹ì›Rz @‘öÚ<B_@Ï­¥Rz @\0S;B_@‰ƒÆ@z @p±E9B_@4Weþ.z @õ\'þ?_@ÇC¬/z @Ó‰òÿ?_@¸LÔ@z @¨¾ÔÄ=_@^“â@z @}ñ¶‰;_@zGÙð@z @\0\0\0\0\0\0\0\0\0eœ³F_@˜eqRz @Nl4îH_@-)ÎbRz @…¢iìH_@À-.›@z @»ÚžêH_@D0ŽÓ.z @M$¯F_@rMÖá.z @XßK±F_@Zv©@z @eœ³F_@˜eqRz @\0\0\0\0\0\0	\0\0\0¬§£Šª_@<¡hz @zdÜˆª_@JCýTVz @F#‡ª_@H÷XDz @¡ÒöK¨_@Óú„›Dz @ÿØ¦_@Ô˜°©Dz @¹§Ÿ¦_@ÓUqVz @oÑf¦_@Ãlù8hz @‹=…O¨_@Å¯Í*hz @¬§£Šª_@<¡hz @\0\0\0\0\0\0\0\0\0ˆÀ¢Ù_@£º§œSz @«Ä„ž_@-=çªSz @kkN _@Mˆrez @tlÛ_@/Idez @ˆÀ¢Ù_@£º§œSz @\0\0\0\0\0\0\0\0\0f)Î(._@ÐSz @A°í+_@|JZSz @¦gzï+_@½ûãdz @K\\˜*._@5…·Õdz @f)Î(._@ÐSz @\0\0\0\0\0\0\0\0\0 pdM_@º<FRz @6:R)K_@9‡…TRz @¾+K_@ùp%dz @eë:fM_@ÛYÜ\rdz @ pdM_@º<FRz @\0\0\0\0\0\0	\0\0\01¶lí‚_@AiN\'?z @\Z\'O²€_@æ 5?z @f/´€_@}Z?ýPz @µ9çµ€_@ãÌÝÄbz @Gâñ‚_@Ê0‹¶bz @Øˆ",…_@&/8¨bz @eV*…_@Ü™àPz @<Ë8ï‚_@\rÎìîPz @1¶lí‚_@AiN\'?z @\0\0\0\0\0\0\0\0\0HÕíÈZ_@Íz¸cz @£ÐX_@)óhÆcz @/›X_@}Žuz @\0	¹ÊZ_@õ¼uz @HÕíÈZ_@Íz¸cz @\0\0\0\0\0\0\0\0\0QvÌ#_@>¦ävz @òj®É _@nÛçòvz @dUxË _@†éˆºˆz @m–#_@…<G¬ˆz @QvÌ#_@>¦ävz @\0\0\0\0\0\0\0\0\0•?Ô 2_@‚A/¹dz @ðN¶e0_@!–sÇdz @”€g0_@9vz @6ÔJi0_@Ú´Vˆz @WÞh¤2_@=fpHˆz @÷ž¢2_@æÔÏ€vz @•?Ô 2_@‚A/¹dz @\0\0\0\0\0\0\r\0\0\0eœ³F_@˜eqRz @zÊøwD_@x<^Rz @‘öÚ<B_@Ï­¥Rz @!œ¥>B_@ÖEUdz @|¹‡@_@nñŒcdz @NTR@_@.\'-+vz @´Cp@B_@*üåvz @Eí:BB_@@ †ä‡z @gçX}D_@€>Ö‡z @‰ßv¸F_@[zöÇ‡z @~¬¶F_@~uV\0vz @q[á´F_@”n¶8dz @eœ³F_@˜eqRz @\0\0\0\0\0\0\0\0\0¦gzï+_@½ûãdz @q\\´)_@¼2>òdz @nŒ&¶)_@ƒß¹vz @‡{\'_@ŽÒ!Èvz @»—Ò|\'_@á±Âˆz @fªœ~\'_@$cWšz @@Éº¹)_@è¡ Išz @×©ð·)_@=Ôˆz @÷¹ó+_@‘<sˆz @æØô+_@!OÝ:šz @ü\0÷/._@Î–™,šz @È,.._@Sèødˆz @1‘b,._@Ë7Xvz @ÏDñ+_@íÐ›«vz @¦gzï+_@½ûãdz @\0\0\0\0\0\0\0\0\0#zøS9_@üF\0Vvz @¾‚Ú7_@ÕÛEdvz @™ì¤\Z7_@÷Mæ+ˆz @wXo7_@¾†ó™z @ViW9_@ü	Aå™z @¼ðÂU9_@ƒ© ˆz @#zøS9_@üF\0Vvz @\0\0\0\0\0\0\0\0\0—Xf‘X_@ú¨U‡z @wpHVV_@7óc‡z @³ŽXV_@‚Ì’+™z @‘ƒ1“X_@ÍŠG™z @—Xf‘X_@ú¨U‡z @\0\0\0\0\0\0\0\0\0Ë¤l‡_@Ö…¿ð—z @Ë“Â§‰_@Škâ—z @ƒPö¥‰_@\\Í\Z†z @y”Øj‡_@šH!)†z @Ë¤l‡_@Ö…¿ð—z @\0\0\0\0\0\0\0\0\0Ü½å.ô_@€dùž›z @!oÇóñ_@šÌ2­›z @i©¸ï_@(Ïk»›z @ˆôqºï_@–/ƒ­z @ÿQõñ_@{Õt­z @y­®0ô_@Ó¥›f­z @Ü½å.ô_@€dùž›z @\0\0\0\0\0\0\0\0\0ÖABÍ _@õ)‚šz @ý\Z$’_@˜Lkšz @±üí“_@\ZfX¬z @H0Ï _@yÿÊI¬z @ÖABÍ _@õ)‚šz @\0\0\0\0\0\0\0\0\0Eí:BB_@@ †ä‡z @"ñ@_@ãZÍò‡z @NTR@_@.\'-+vz @êb4Ê=_@©ìs9vz @ÔÔiÈ=_@L§Óqdz @.îK;_@Ÿ÷€dz @…o;_@˜LºGvz @Ýòà;_@ƒŸZˆz @\0óþË=_@ù/ˆz @…ÉÍ=_@:q´È™z @õç@_@ˆŒmº™z @È0²\n@_@¼\r‚«z @gFÐEB_@6bÆs«z @Ö˜DB_@JB&¬™z @Eí:BB_@@ †ä‡z @\0\0\0&\0\0\0—\0\0+ì"_@s‡€pz @¿\n^_@¸þAbz @bÜ\'™_@tTz @\'}ñš_@Àv¤0z @‰_Ö_@_e\r0z @²EÔ_@§¼ÃEz @­…c\Z_@Q„7z @ì?-\Z_@uJ%ÿ/z @*üö\Z_@‰ÆÆAz @LçN_@€Q†¸Az @oÐ2‰_@í­EªAz @·úh‡_@ˆ¤â/z @ý&Ÿ…_@`z @BUÕƒ_@\r6bSz @†…‚_@ö	Á‹úy @´9)½ _@1?€}úy @:__» _@Ÿ ßµèy @À†•¹ _@\0\0>îÖy @D°Ë· _@PÝœ&Åy @;<éò"_@ÇÛ[Åy @5Æ.%_@·t\Z\nÅy @-N$i\'_@ ¨ØûÄy @zSZg\'_@&²74³y @=Ø<,%_@%oyB³y @[ñ"_@ŸÆºP³y @ÇÛ¶ _@‘¸û^³y @J	8´ _@Ã‘Z—¡y @Ë8n² _@ñh¹Ïy @Œž‹í"_@+–xÁy @NÃÁë"_@Öz×ù}y @S\Zß&%_@!R–ë}y @Yoüa\'_@èÃTÝ}y @dÆc\'_@Àõ¤y @ÐÃãž)_@¹¼³–y @CÇ­ )_@.§T^¡y @¶Ìw¢)_@¡õ%³y @\'ÔA¤)_@v–íÄy @-N$i\'_@ ¨ØûÄy @âJîj\'_@œyÃÖy @“I¸l\'_@æ\Z‹èy @FJ‚n\'_@³}»Rúy @vöŸ©)_@ÎyDúy @åj«)_@òúz @S4­)_@þÖºÓz @¨Qr\'_@Wýáz @WXàs\'_@°@ž©/z @aªu\'_@?(?qAz @,@È°)_@ûˆübAz @Tæë+_@-„¹TAz @,ûê+_@Î»/z @ÛQè+_@`ñwÅz @¯œo#._@:¦4·z @^\\^0_@‹õð¨z @·$Ã\\0_@IHPáz @Æq¥!._@`é“ïz @Õ¼‡æ+_@í$×ýz @© ½ä+_@bV66úy @|†óâ+_@Ä…•nèy @ó!._@hiR`èy @ýF._@U¦±˜Öy @Â‰dW0_@4nŠÖy @|‚’2_@9\\*|Öy @Ø·2_@J¶‰´Äy @°íŽ2_@Jéì²y @ñÊ4_@%ð¤Þ²y @1z(7_@zl`Ð²y @Îò7_@Dõ\0˜Äy @FB9_@xü»‰Äy @¬¨ÚC9_@˜s\\QÖy @H\r¥E9_@¨èüèy @ÀœÂ€;_@k·\nèy @‚;_@†ÎWÒùy @Nªª½=_@ØÛÄùy @e,u¿=_@“-²‹z @{°?Á=_@5}RSz @-b]ü?_@ÇEz @YÑ’ú?_@ÂÅk}z @Mt°5B_@hø$oz @Þ{7B_@Ñ(Å6z @¿˜rD_@Ræ}(z @?ÎpD_@†ÅÝ`z @ñloD_@¡¢=™ùy @¢Æ8mD_@¬}Ñçy @)?2B_@S‘äßçy @—§P0B_@³ZDÖy @T"nkD_@§Vý	Öy @¢Æ8mD_@¬}Ñçy @LV¨F_@|VÃçy @(ÿ ªF_@ÕöŠùy @5´ë«F_@-–Rz @(Q	çH_@)/NDz @_>åH_@+®|ùy @”ÏsãH_@Å%µçy @Ë©áH_@üníÕy @VÞßH_@$Î%Äy @\0¾û\ZK_@!ï…Äy @{÷0K_@ØòåO²y @9œÞH_@<.^²y @÷>ö¢F_@¸ul²y @í“+¡F_@„šÕ¤ y @hAfD_@?Õ³ y @¶ßØgD_@q½z²y @€£iD_@”-]BÄy @†.B_@"¤PÄy @v~»,B_@Bç‰²y @4žñ?_@fJ—²y @òµ€¶=_@R€¥²y @Û=¶´=_@I$ðÝ y @ÃÇë²=_@=ÆOy @ªS!±=_@f¯N}y @¡v;_@ƒëô\\}y @ûyÎw;_@D[•$y @6*±<9_@ÅŠÚ2y @Ô†{>9_@	{ú y @P(^7_@ á¿¡y @pØ“7_@ÂTAy @©„vÆ4_@8¹cOy @†C¬Ä4_@§\ZÃ‡}y @aâÂ4_@z"Àky @ÈÄ‡2_@ÃYfÎky @|úŽ‰2_@ÿ	–}y @s¯qN0_@Ð“J¤}y @É‰§L0_@ûÓ©Üky @ÈÄ‡2_@ÃYfÎky @¬—ú…2_@w§ÅZy @<ÇÁ4_@S×øYy @Ëô4ü6_@¬¡=êYy @[ R79_@€ùÛYy @éIor;_@Ð´ÍYy @Žè¤p;_@ßHy @2‰Ún;_@ás>6y @Ö+m;_@ÒÒv$y @}(ó19_@°o…$y @y½39_@[ù·L6y @g ø6_@QuüZ6y @ðRƒ½4_@Ä‹@i6y @Ê¹»4_@äâŸ¡$y @¤æî¹4_@8ÿÙy @@áõ6_@Ã@»Ëy @%#Öö6_@Ü[“$y @}(ó19_@°o…$y @ÞÙ(09_@äv½y @>^.9_@;VÖõ\0y @^¡Aó6_@`£\Zy @zcwñ6_@íz<ïx @V‚Z¶4_@öÛ½Jïx @.S´4_@Ú*ƒÝx @Ç|sy2_@É`‘Ýx @`¤V>0_@5‹£ŸÝx @ûÉ9._@!#æ­Ýx @•íÈ+_@‹U(¼Ýx @`óRÆ+_@ûc‡ôËx @¶!6‹)_@M!ÉÌx @<6l‰)_@(;ºx @RoON\'_@OfiIºx @g¦2%_@IªWºx @~ÛØ"_@@Æêeºx @–ùœ _@øÝ*tºx @ÇÂž _@‹Ì;Ìx @{ë¥c_@YáJÌx @×\r‰(_@¦=KXÌx @ç®R*_@VœìÞx @‰Â5ï_@¸¢+.Þx @ÛXÿð_@îÍõïx @Ã]âµ_@d¿ðx @Wé«·_@!9­Ëy @‚ßŽ|_@¨“ëÙy @Y`X~_@é\Z¡y @/ã!€_@ .i%y @|?»_@_&ðZ%y @Ì\'\\ö_@,G±L%y @Æ%ø_@&«R7y @gfïù_@\rôÛHy @²¹û_@ël•£Zy @ý¬‚ý_@·Ê6kly @FSLÿ_@t&Ø2~y @Žû\Z_@ €yúy @ÔøÅ_@Ð¼¸y @]+ÂÇ_@ù#ZÐ¡y @çÊ‹É_@‰û—³y @olUË_@0ìœ_Åy @}Ö7_@òÛmÅy @Gm’_@±b}5×y @—ÈãV_@¦¼C×y @ë!Æ_@]úQ×y @>y¨à_@ùA8`×y @¬ßÞ_@¥¢–˜Åy @šÝ_@AõÐ³y @èø¡_@{a2ß³y @©. _@v®¢y @œ"e\n_@—™Í%¢y @ÑGc\n_@úÔ+^y @c‚~a\n_@FŠ–~y @la&_@¾tÆ¤~y @\nÓ—$_@gœ$Ýly @Ónzé_@È`ëly @]®_@¥œùly @h ?s_@ü?×my @9ˆvq_@ã65@[y @²ã“¬_@ ú1[y @ÆÀÊª_@„$XjIy @r­o_@»+“xIy @R!4ÿ_@nÍÍ†Iy @ÝÇ2ÿ_@©°+¿7y @âÓ©÷ü_@HÝeÍ7y @*Ûàõü_@â®Ã&y @hþ0ÿ_@Ò‘‰÷%y @ÝÇ2ÿ_@©°+¿7y @Ü]äm_@…ñ°7y @ÚŸ©_@à&¶¢7y @Úßä_@¶Éz”7y @-´Uâ_@ÙØÌ%y @ŠŒà_@hç6y @¯©_@ÝCûöy @œzà_@,_Y/y @ÒbÃÞ_@%ó”=y @"=úÜ_@Òüòuðx @0H_@jx·gðx @ÀN_@š Þx @Qé„_@º¤sØÌx @¼÷gÙ_@\0\n¯æÌx @\'Kž_@Å	êôÌx @“.c_@¤$Íx @(ÿ_@ÌØ^Íx @‚H&ÿ_@œ­¼I»x @¯0+ëü_@OmöW»x @éEbéü_@€0T©x @"]™çü_@¢ñ±È—x @Ê‡|¬ú_@¶,ëÖ—x @¼­³ªú_@CÜH†x @­Õê¨ú_@¸‰¦Gtx @ÎÎmø_@0@ßUtx @"ã–oø_@J¢†x @‰z4ö_@Ðº+†x @òG]ùó_@Ùýñ9†x @Êû%ûó_@õ|”˜x @z	Àñ_@"Ì˜x @)?ì„ï_@¢a˜x @Ê¤#ƒï_@kÃ`V†x @h[ï_@#¾Žtx @v’ï_@¼€Çbx @ëºuDí_@-,RÕbx @@3­Bí_@1x¯\rQx @•­ä@í_@(ÂF?x @÷	Èë_@éBT?x @“ÿë_@]! Œ-x @7ë_@©WýÄx @5¨S=í_@æOÇ¶x @ç)?í_@\nj~-x @•­ä@í_@(ÂF?x @5O|ï_@Ï5Ö7?x @×î·ñ_@ùCŸ)?x @±QUµñ_@ùªüa-x @šâqðó_@2cÅS-x @¶:©îó_@±×"Œx @ä¼Å)ö_@ü9ë}x @=âdø_@Ê6³ox @qþªfø_@/£U7-x @ÌÁshø_@‡\røþ>x @$‡<jø_@ÍušÆPx @Š+Y¥ú_@sÞa¸Px @óÍuàü_@›á(ªPx @"ï¬Þü_@r˜†â>x @PäÜü_@9Mä\Z-x @_‰Ç¡ú_@ó*)-x @G»þŸú_@Îzax @.ï5žú_@BoØ™	x @¦^RÙü_@¦°Ÿ‹	x @|7Ûü_@ñÿASx @PäÜü_@9Mä\Z-x @C™\0ÿ_@\n«-x @³±7ÿ_@JÌEx @ë)TQ_@&3Ï6x @ž7‹O_@ú-o	x @¡§Š_@êó`	x @¤Þˆ_@4ñP™÷w @PGÂM_@³ÐŠ§÷w @þXùK_@]œèßåw @¬l0J_@øeFÔw @X‚gH_@…-¤PÂw @šžF_@ó‰°w @0n‚ÿ_@Æ.;—°w @ÊIK\rÿ_@ÚxÝ^Âw @=/Òü_@³^mÂw @³Ò—ú_@ßN{Âw @J•ú_@áu¬³°w @ÃÞ-Zø_@7äÁ°w @Y+eXø_@jBúžw @jP“ú_@¢\n\nìžw @C’¸‘ú_@Rg$w @\ZÖïú_@\0.Å\\{w @ð\'Žú_@’¼"•iw @Äc^Œú_@I€ÍWw @ŸqBQø_@¤¸ÛWw @~}&ö_@º^ïéWw @5ïö_@Sñ‘±iw @YÓÜó_@óÈ¿iw @·¡ñ_@3ÿÍiw @AîŸñ_@Þ\\Xw @_‡\nÛó_@XQ&øWw @a÷AÙó_@#­ƒ0Fw @ciy×ó_@ßáh4w @»Š]œñ_@ëtw4w @ªAaï_@€}M…4w @qÇ%&í_@ž ƒ“4w @Ðâ	ëê_@F^¸¡4w @0üí¯è_@u6í¯4w @”Òtæ_@/©!¾4w @ü(¶9ä_@q¶UÌ4w @c<šþá_@=^‰Ú4w @;Òüá_@Š9æ#w @`4¶Áß_@Vl!#w @‰Pš†Ý_@ª9L/#w @ÕEÒ„Ý_@×ó¨gw @=\nƒÝ_@\0¬ ÿv @&¾ß_@¾ýÒ‘ÿv @äÏAùá_@êŸƒÿv @³¯y÷á_@(¿ü»ív @ô]¼ß_@VÃ/Êív @“â•ºß_@à†ŒÜv @§1zÝ_@¿Üv @è.²}Ý_@\0ÈIÊv @&.ê{Ý_@âwx¸v @b/"zÝ_@µ%Õ¹¦v @©¢?Û_@Ô È¦v @òëÙ_@€¶8Ö¦v @¢0#Ù_@3C••v @ª¬ÇÖ_@äcÆ•v @´&ì‹Ô_@!÷*•v @‘ð³Ô_@~±šò¦v @?ƒÏÈÖ_@¹æiä¦v @Ó[—ÊÖ_@g\r¬¸v @j¼{Ô_@ÌA>º¸v @‘ð³Ô_@~±šò¦v @ã[˜RÒ_@ÏË\0§v @6Å|Ð_@­û§v @,aÜÍ_@±*§v @é‘E¡Ë_@æY+§v @Ø*\r£Ë_@w´ýò¸v @ÄÅÔ¤Ë_@Ï€¡ºÊv @ÞyðßÍ_@Ì,r¬Êv @ü+Ð_@UsBžÊv @Ü\'VÒ_@kTÊv @@ŠC‘Ô_@ÐáÊv @e6_ÌÖ_@6æ°sÊv @ô\'ÎÖ_@ßbT;Üv @ñîÏÖ_@xÝ÷îv @Ò¶ÑÖ_@V›Êÿv @³ÿš–Ô_@nnÌØÿv @_+[Ò_@c!ýæÿv @Kd·YÒ_@É‰Yîv @µš›Ð_@ÃÇ‰-îv @"ÏãÍ_@F ¹;îv @‘d¨Ë_@TéIîv @2HmÉ_@î Xîv @ÚŸ€kÉ_@.ItÜv @«¹iÉ_@]oÐÈÊv @—W.Ç_@wøþÖÊv @‡óÄ_@-åÊv @@IõÄ_@öÑ¬Üv @ôŒ÷Ä_@Àutîv @p·ô»Â_@úè¢‚îv @ïßØ€À_@¾`Ðîv @,A ‚À_@‚ttX\0w @òZ„G¾_@T–¡f\0w @p±KI¾_@·E.w @ê	K¾_@ªÖéõ#w @adÚL¾_@Åó½5w @Ëpö‡À_@i£`¯5w @6{ÃÂ_@–í2¡5w @ñÙÄÂ_@šéÖhGw @i¡ÆÂ_@ãz0Yw @#E…‹À_@j¸¨>Yw @øÙ½‰À_@ñ®wGw @ÓÀ¡N¾_@Ð2…Gw @adÚL¾_@Åó½5w @ûU¾¼_@ªÞºË5w @²¥…¼_@8	_“Gw @•ˆiØ¹_@)ž‹¡Gw @ŽÍ0Ú¹_@*Ö/iYw @¸¡Ÿ·_@%\\wYw @óÛÛ ·_@šZ\0?kw @*£¢·_@ž¤}w @àÐ†gµ_@‡–Ð}w @ZNiµ_@TçtÜŽw @Î5kµ_@6¤ w @Óø/³_@0èD² w @Êû¿1³_@jDéy²w @UŠ£ö°_@ ˆ²w @K¨jø°_@0\n¹OÄw @=È1ú°_@Ïq]Öw @V;¿®_@l‡ˆ%Öw @ŠPÜÀ®_@}ü,íçw @¹g£Â®_@oÑ´ùw @_¿†‡¬_@¡>üÂùw @ÎËM‰¬_@¿ Šx @9Ú‹¬_@l=ERx @œ1Æ®_@JO\ZDx @â[N±_@¬ûî5x @¼k<³_@‘BÃ\'x @å£:³_@ºò`x @=”Àuµ_@£ãòQx @ÞTùsµ_@2¡NŠùw @Hõ¯·_@!<"|ùw @´“2ê¹_@”qõmùw @Œìùë¹_@•™5x @bAÝ°·_@oÆCx @z¤²·_@äŸjx @˜Õ‡wµ_@ø#—x @ðOyµ_@Kb;á.x @XP2>³_@dgï.x @Ã…±_@\0Y“ý.x @1¹øÇ®_@¼¾/x @£êÛŒ¬_@Á¹é/x @\Z¿Qª_@åQ(/x @À†Sª_@ªÛ¸ï@x @|@i¨_@Ñãý@x @f;0\Z¨_@µ‡ÅRx @J8÷¨_@-J,dx @“=Úà¥_@ÓEV›dx @·/¡â¥_@hèúbvx @Ø#hä¥_@ïˆŸ*ˆx @¯\rK©£_@>É8ˆx @÷«£_@þëm\0šx @lâØ¬£_@å—È«x @öç¥_@ÆÃè¹«x @#½é¥_@^½x @4„ë¥_@jö1IÏx @¿f°£_@‡é[WÏx @ÄÏŸ®£_@¾A·½x @lâØ¬£_@å—È«x @Ë°»q¡_@†<Ö«x @i‘‚s¡_@Û¿à½x @ÿsIu¡_@"w…eÏx @ë&,:Ÿ_@;Ÿ®sÏx @Ãþò;Ÿ_@ñcS;áx @–Ø¹=Ÿ_@—&øóx @#?×x¡_@‚ßÎôòx @¯\'žz¡_@s¼y @e´€?Ÿ_@/çœÊy @?c_@?ØÅØy @-*_@D¦j y @0ŒËš_@MA“®y @}RÓÌš_@´8v(y @9ãð_@.rh(y @>¸·	_@<´/:y @¹SÕDŸ_@‹!:y @öqCŸ_@$bæY(y @»þ+~¡_@˜ì¼K(y @7e|¡_@¨?„y @A‚·£_@tîuy @‰I¹£_@ˆ“=(y @½„»£_@ø¬7:y @:íò¡_@…—a:y @´Ý¹¡_@a@ÛKy @-Ð€ƒ¡_@1çª¢]y @ŸÄG…¡_@ñ‹Ojoy @Z‚eÀ£_@ér%\\oy @‡…,Â£_@Ê#y @®ŠóÃ£_@>—në’y @Ó‘ºÅ£_@H&³¤y @ÆsØ\0¦_@Ayè¤¤y @æ_ÿ¥_@¶ùCÝ’y @!3/:¨_@¨öÏ’y @€h8¨_@ƒ„ty @Ù…sª_@m+Iù€y @¡¯¾qª_@¶Æ¤1oy @jeÜ¬¬_@œy#oy @Š›£®¬_@Ólë€y @§Ój°¬_@ú¿Á²’y @bMuª_@ŽíÀ’y @½1wª_@¡î‘ˆ¤y @¾\r2²¬_@fz¤y @ÔIù³¬_@`\nB¶y @aÛxª_@+M6P¶y @Zv½=¨_@½Ôa^¶y @ðš„?¨_@¶@&Èy @„ÁKA¨_@¡ªªíÙy @êC¨_@{Oµëy @û0~ª_@l\\#§ëy @M2øª_@º²Çnýy @‘k¿ª_@öl6z @”Ý¼¬_@_Ì?(z @uºû÷®_@@,\Zz @0Ãù®_@e_·á z @f@á4±_@<JŠÓ z @Û£¨6±_@Ûk.›2z @èeŠû®_@„[©2z @œ¾Qý®_@”¿ÿpDz @îq3Â¬_@3Ž,Dz @á¿úÃ¬_@µÊÐFVz @ÐÂÅ¬_@(uhz @¬§£Šª_@<¡hz @ÚìjŒª_@ÕEäyz @úuLQ¨_@$ròyz @e°S¨_@x\\º‹z @42Žª_@ð\Zê«‹z @£µPÉ¬_@Ýs½‹z @†Ë¬_@"¨aez @ç—6¯_@Œ4Wz @L"UA±_@X\nIz @¨“C±_@«¯z @Ï(;~³_@É&}¯z @ù»Y¹µ_@ƒÊNô®z @!1’·µ_@]Öª,z @’µ°ò·_@$|z @8Ï-º_@/Mz @YÜ–/º_@Sáð×®z @iµj¼_@gTÁÉ®z @ÆôÓ¥¾_@ïa‘»®z @ø6¤¾_@Ñ«íóœz @%{D¢¾_@˜óI,‹z @æêbÝÀ_@™º‹z @©XÃ_@é‹z @W…¹Ã_@Ï€EHyz @aä×QÅ_@>Œ:yz @oÄŸSÅ_@ú¸‹z @9.¾ŽÇ_@X®†óŠz @–ÜÉÉ_@,ßTåŠz @ÕûúÌ_@rª"×Šz @\ZÃÌ_@‘Æžœz @«táAÎ_@Æ[“œz @?ãÿ|Ð_@oL`‚œz @~Á7{Ð_@\\½ºŠz @W!V¶Ò_@\0«‰¬Šz @2tñÔ_@àUžŠz @ôE¬ïÔ_@Á²Öxz @•Ê*×_@ ~Èxz @Û’,×_@£¯!Šz @2tñÔ_@àUžŠz @oº<óÔ_@ýøeœz @ÕO¸Ò_@‹×,tœz @R€æ¹Ò_@úÐ;®z @¨÷õÔ_@œ-®z @m#0×_@Èg®z @^àAkÙ_@o3®z @9\nmÙ_@D\rÖØ¿z @/·(¨Û_@ã Ê¿z @½Q`¦Û_@Ñøý®z @Á~áÝ_@¨xÈô­z @N3GãÝ_@kSk¼¿z @r­eà_@+^5®¿z @….à_@ò’’æ­z @í™»Wâ_@¯G\\Ø­z @VÚ’ä_@à–%Ê­z @êl‘ä_@¸è‚œz @~ØHä_@s8à:Šz @F€ä_@!†=sxz @µ·‹ä_@ÁÑš«fz @)™Pâ_@gDÑ¹fz @ßbRâ_@Qtxz @±½Cà_@ö$ªxz @»F{à_@‚QÈfz @)™Pâ_@gDÑ¹fz @týÐNâ_@k~.òTz @)\'ï‰ä_@OøãTz @ÞN\rÅæ_@©RÁÕTz @ªµDÃæ_@³©Cz @§Îbþè_@‹çÿBz @—t+\0é_@y$ŠÇTz @‡ôé_@Ô»,fz @M=ë_@Žõ€fz @«Û>ë_@Lž—Hxz @tÆ¼é_@QÏVxz @?‡žÈæ_@ežexz @n&gÊæ_@-A©,Šz @_r…é_@[äqŠz @U¼£@ë_@ý!:Šz @ûvlBë_@Ÿ£Ü×›z @°ËŠ}í_@*l¤É›z @LÂ{í_@úŠz @æ>ùyí_@ï…_:xz @|{0xí_@¼½rfz @ºgví_@y—\Z«Tz @¤úžtí_@&xãBz @¥å€9ë_@ß°ñBz @ó4¸7ë_@ñz\r*1z @6=Örí_@Ä Õ1z @{Cô­ï_@a\r1z @¨\r½¯ï_@âÍ?ÕBz @¬Ûêñ_@ÇBz @”÷£ìñ_@Ot©ŽTz @ÓÙ…±ï_@©8âœTz @ú§N³ï_@`¡„dfz @"xµï_@\',xz @^¯5ðñ_@‘$îxz @AŽþññ_@yå‰z @>Ð-ô_@!W×‰z @Ü½å.ô_@€dùž›z @š\njö_@Ù–¿›z @>;hö_@øbÉ‰z @>NY£ø_@T?ãº‰z @BŠwÞú_@$¶¨¬‰z @ž@àú_@éÊJt›z @Üä^ý_@ŸÌf›z @o(ý_@¸Ï±-­z @òXFXÿ_@Q\\v­z @v¨d“_@^ƒ:­z @gl›‘_@eŸ˜I›z @/­¹Ì_@vp\\;›z @afðÊ_@ñ™ºs‰z @m˜_@~e‰z @ßFE_@LÜwz @P÷{_@ô€:Öez @á\rš=_@ µýÇez @.jc?_@ qŸwz @‹z\n_@°0bwz @‰öJ|\n_@ÚI‰z @š"i·_@%Æ:‰z @«L‡ò_@ê	ˆ,‰z @.ÓPô_@—’)ôšz @±[\Zö_@\'Ë»¬z @@81_@^yŒ­¬z @ÑÜVl_@tMŸ¬z @Í€ n_@nÙîf¾z @Ë>©_@ö^¯X¾z @l]ä_@ó~oJ¾z @óU“â_@³8Î‚¬z @{šÉà_@rð,»šz @NÇç\Z_@Êì¬šz @\Z\Z_@BKåˆz @/<U_@ä×ˆz @8NrS_@¢åiwz @Ý<T\Z_@jRªwz @„)6Ý_@¨Yê+wz @+¢_@Zû):wz @é¾á£_@\\WË‰z @§k«¥_@M±lÉšz @Ó:j_@¬×šz @ÓšÃh_@£\n‰z @¿t¥-_@F‰I‰z @|ãÛ+_@¨Vwz @8T*_@éez @ŸEôî_@gòDez @	5Ö³_@Zî‚«ez @?Á²_@íOáãSz @g»îv\n_@ÄÖòSz @ZV%u\n_@µ&}*Bz @B[:_@p8º8Bz @ð>8_@Âvq0z @˜ ý_@`U0z @ÍVû_@@³·z @l‡ù_@¾jðz @®o¾_@²‚Mþz @³ÓQƒ_@5‰\rz @Úö3Hÿ_@\0‚Ä\Z\rz @yÙjFÿ_@á{"Sûy @¾¡Dÿ_@²s€‹éy @v¿_@ïEE}éy @T[ö}_@BK£µ×y @07-|_@…NîÅy @ßJ·_@\\ÚÅßÅy @ÿ„hò_@«\0ŠÑÅy @œÂ1ô_@GÞ+™×y @AsO/_@ïŠ×y @é!mj\n_@/Û²|×y @\0{6l\n_@——TDéy @f4T§_@.n6éy @8œ©_@÷¹ýúy @^`;ä_@tz{ïúy @…"Y_@hv=áúy @Ñ¥"!_@ùÿÞ¨z @+ì"_@s‡€pz @\0\0\0…|Ò_@éc"~z @]²Ð_@	¶úy @,Ð\Z_@çnA¨úy @mÍ™\r\Z_@(ºâoz @…|Ò_@éc"~z @\0\0\0®âvZ_@ÔÿÒúy @£T­X_@Ä]éy @Ë“_@<Ñýèy @× ”•_@·=ÀÄúy @®âvZ_@ÔÿÒúy @\'\0\0Ád"¼æ_@Rñ“ïûy @ÿõê½æ_@ƒ¢6·\rz @@Í‚ä_@þ,mÅ\rz @¾|ä_@AlÊýûy @½’æEâ_@©\0üy @¿¦È\nà_@‰16\Züy @¶=\0	à_@§O“Rêy @x\\âÍÝ_@uŠÈ`êy @*\ZÌÝ_@ü–%™Øy @Ú©QÊÝ_@r¡‚ÑÆy @‡S‰ÈÝ_@Û©ß	µy @‚–kÛ_@†Pµy @à3Û_@§W·ßÆy @YTÙ_@T¨ëíÆy @Fø×_@y“üÆy @ävÚÝÔ_@S\nÇy @-¥¼¢Ò_@09†Çy @Ê½„¤Ò_@a|)àØy @XÝfiÐ_@yF\\îØy @êúH.Î_@	«ŽüØy @Åû€,Î_@ÊHë4Çy @Ÿþ¸*Î_@|äGmµy @¯3›ïË_@xÄy{µy @$cñË_@L8CÇy @}+óË_@ªÀ\nÙy @à\nóôË_@ÇdÒêy @»Õ¹É_@ÎÂ•àêy @]»É_@û?9¨üy @ýìd½É_@»Üoz @`ÞF‚Ç_@ ~z @?¿„Ç_@(¦±E z @šÚ,¿É_@\Z4€7 z @3ÊôÀÉ_@«#ÿ1z @É»¼ÂÉ_@ ÇÆCz @ó†ž‡Ç_@ ±øÔCz @¢Ö…Ç_@¬,U\r2z @?¿„Ç_@(¦±E z @ç¡ðHÅ_@®²âS z @“‚Ò\rÃ_@ªYb z @/»\nÃ_@²ošz @š¦ìÐÀ_@äŸ¨z @ñí$ÏÀ_@Ù*üàüy @ä”¾_@¼ç+ïüy @MØèX¼_@?[ýüy @;!W¼_@Ðd·5ëy @\n:º_@ GæCëy @’«;\Zº_@J[B|Ùy @tº_@dmž´Çy @…5VÝ·_@\'ËÌÂÇy @Á·ŽÛ·_@±Ë(ûµy @û;ÇÙ·_@+Ê„3¤y @çi©žµ_@d£²A¤y @ðØp µ_@k´V	¶y @$øRe³_@ž7„¶y @Ù•‹c³_@àO¤y @Ì¿m(±_@B%\r^¤y @:l¦&±_@4óh–’y @ï ˆë®_@ZŒ•¤’y @\\Áé®_@³HñÜ€y @£\Zß$±_@¿ÄÎ€y @\nË#±_@×ˆ oy @7úç®_@üMoy @WØ2æ®_@5»¨M]y @l}P!±_@P|?]y @Ì1‰±_@:ØwKy @&èÁ±_@ØÙ3°9y @ÅqßX³_@±(¢9y @`W³_@¾ùbÚ\'y @} ú±_@d›è\'y @ÑZ3\Z±_@íZë y @¯èß®_@‡/y @¼±NÝ®_@~5sgy @!l±_@[GYy @ÑZ3\Z±_@íZë y @÷ÊPU³_@ÇÈ¾y @9nµ_@Ñ‘y @K¥‹Ë·_@ósdöy @f;ÄÉ·_@æ_À.y @}ÓüÇ·_@ÇIgòx @É€ßŒµ_@ï‡Iuòx @˜\'‹µ_@B`¥­àx @¦ßúO³_@g)Ò»àx @·•Ý±_@þÉàx @ûW±_@LDZÏx @Íù×®_@î2†Ïx @Éé1Ö®_@ ØáH½x @Yµ›¬_@AR\rW½x @•M™¬_@dæh«x @Ãv†—¬_@xxÄÇ™x @rZ¿•¬_@ˆ \0ˆx @­hÜÐ®_@f½ôñ‡x @»‘£Ò®_@Ø™¹™x @Ã¼jÔ®_@C|=«x @zâ‡±_@¢¬s«x @´ªÀ\r±_@·]m«™x @²ÁÝH³_@8A™x @-G³_@§öœÕ‡x @q‡3‚µ_@{pÇ‡x @´Öúƒµ_@ö¬™x @²ÁÝH³_@8A™x @5¥J³_@wåd«x @ò\'Â…µ_@àÜ¸V«x @.{‰‡µ_@»\n]½x @¬§¦Â·_@û/½x @³GßÀ·_@¾Ü‹H«x @yeüû¹_@w^:«x @.ÒÃý¹_@ó…½x @Ý@‹ÿ¹_@º’¦ÉÎx @Ÿ	nÄ·_@`Ô×Îx @m5Æ·_@œ1xŸàx @}ÓüÇ·_@ÇIgòx @4$\Zº_@¦îXòx @Š±Rº_@sJ‘àx @ˆóo<¼_@Ê£ƒàx @v¨:¼_@”¨x»Îx @³úà8¼_@O«Ôó¼x @:!þs¾_@*k¦å¼x @e©Åu¾_@ìXJ­Îx @Š3w¾_@ŸDîtàx @qª²À_@ó¿fàx @¬Úâ°À_@Ã£ŸÎx @ø	\0ìÂ_@‰ìÎx @Vh8êÂ_@_ºHÉ¼x @ÆE¯À_@…Åw×¼x @Þ²S­À_@6åÓ«x @ñ!Œ«À_@Ù0H™x @“Ä©À_@wŒ€‡x @^áäÂ_@ÜA]r‡x @¼‰þÅ_@Âÿ-d‡x @"2Æ!Å_@ÅÑ+™x @?7ã\\Ç_@þ\r¢™x @^:\0˜É_@añq™x @<þÇ™É_@¬•×ªx @Ä›É_@é7¹ž¼x @}§r`Ç_@‘sé¬¼x @—b:bÇ_@B#tÎx @ì‹WÉ_@Ø\\fÎx @E³tØË_@g\',XÎx @Õ‰<ÚË_@\0¶Ïàx @í»YÎ_@Kžàx @¡Ø‘Î_@9ûIÎx @Q÷ÉÎ_@W‚¼x @ò\rçLÐ_@î#&t¼x @ã!KÐ_@C°‚¬ªx @Ò7WIÐ_@Š:ßä˜x @ý2t„Ò_@î‡­Ö˜x @->¬‚Ò_@·\n‡x @XKä€Ò_@fµfGux @+¼Ô_@X¼49ux @È÷Ö_@Ì]+ux @xþUõÖ_@|_ccx @yÍr0Ù_@ù[,Ucx @„ä:2Ù_@Á™Ïux @B¾WmÛ_@8pœux @{škÛ_@øAùFcx @²xÇiÛ_@¨VQx @k¸ª.Ù_@!‰Qx @[¥â,Ù_@;ÚåÅ?x @G”\Z+Ù_@E–Bþ-x @zëýïÖ_@/u.x @ÓïÅñÖ_@®oÔ?x @O8©¶Ô_@¢ŸJâ?x @²@á´Ô_@<§\Z.x @K³Ô_@ˆ×Sx @	«üwÒ_@ñ‚5ax @$Ä4vÒ_@R’™\nx @sWQ±Ô_@pp`‹\nx @K³Ô_@ˆ×Sx @!é5îÖ_@£ÆÑDx @ÄèmìÖ_@o.}\nx @xŠ\'Ù_@9ün\nx @0…R)Ù_@@PŸ6x @G”\Z+Ù_@E–Bþ-x @;7fÛ_@Ýªð-x @çßS¡Ý_@úYÜá-x @Z·‹ŸÝ_@39\Zx @rM¨Úß_@.Œx @»‚pÜß_@˜£¨Ó-x @’#â_@¹‡tÅ-x @kÂ©Rä_@^@·-x @*rTä_@¥üâ~?x @Á¼Žæ_@B®p?x @8W‘æ_@íêP8Qx @æe:Vä_@Üð…FQx @¡ºXä_@ã(cx @”õåâ_@ÿ’]cx @?®â_@¢’\0ätx @ˆ‹v â_@8£«†x @«Yåß_@Çù×¹†x @…È<ªÝ_@ØýÈ†x @ý¬Ý_@g¯˜x @?ì!çß_@Í{˜x @x/êèß_@Í\rIªx @¬t²êß_@¾Á¼x @à»zìß_@ dØÍx @n¦]±Ý_@Ö[˜æÍx @ÿŽ@vÛ_@Œ8ÌôÍx @EaxtÛ_@˜)-¼x @–T[9Ù_@D|\\;¼x @–5“7Ù_@·F¹sªx @¥3vüÖ_@[9ìªx @éE>þÖ_@o~I¼x @)Z\0×_@tÁ2Îx @hpÎ×_@kÖØßx @FF±ÆÔ_@%¾çßx @ÅQyÈÔ_@”¬®ñx @¤ˆ–×_@RAy ñx @†½³>Ù_@ŽF’ñx @{ä{@Ù_@à=éYy @$™{Û_@˜µKy @ÍYa}Û_@É³Xy @z‘)Û_@gÍûÚ&y @˜èFºÝ_@£ÇÌ&y @.¤~¸Ý_@ð˜$y @“ì›óß_@“ðöy @÷2¹.â_@µ2»èy @Ü0â_@¶^°&y @\0âžkä_@ËÂ(¢&y @žNgmä_@?œËi8y @€ª„¨æ_@FÌ•[8y @&1¼¦æ_@\\ó“&y @Ë¹ó¤æ_@o6PÌy @lD+£æ_@ih­y @¿hä_@Ã	ãy @\Z¨Efä_@ *@Kñx @Ñb¡æ_@R˜\n=ñx @lD+£æ_@ih­y @xHÞè_@Žawöy @ÿ÷Üè_@¡Ô.ñx @Þy·Úè_@gÞ1gßx @¨_šŸæ_@-Ægußx @tC}dä_@pHƒßx @Ëà´bä_@°dú»Íx @UÏ—\'â_@éq/ÊÍx @d{Ï%â_@‘|Œ¼x @t)$â_@)…é:ªx @q!$_ä_@—´,ªx @€ì`ä_@ä~Wô»x @Ëà´bä_@°dú»Íx @BðÑæ_@øñÄ­Íx @Û‚	œæ_@¶"æ»x @™ƒ&×è_@Sì×»x @r^Õè_@?ŠIªx @xýzë_@œkªx @Z‚Cë_@×$¶É»x @;	ë_@ÜX‘Íx @»)Oí_@È8"ƒÍx @`Mí_@(‘»»x @äy}ˆï_@ø—H­»x @«ršÃñ_@G9Ÿ»x @ÁcÅñ_@ÎÁ³fÍx @ÔÎ+Çñ_@FHV.ßx @çôÈñ_@¯Ìøõðx @åœô_@ÖÙÀçðx @ç·.?ö_@{ˆÙðx @o„÷@ö_@»ä*¡y @öRÀBö_@êEÍhy @{#‰Dö_@\0¥o0&y @þõQFö_@ø7y @\n¨4ô_@¤˜J8y @Câk	ô_@,¨>&y @ŸNÎñ_@…MàL&y @XÐñ_@²É‚8y @)ú”ï_@=•º"8y @s´Â–ï_@æ]êIy @ àÑñ_@ÎC%ÜIy @Ïoýô_@2íÍIy @9Æô_@´k•[y @ý ãIö_@¶V‡[y @yy¬Kö_@ëùNmy @¤ëÉ†ø_@+â¿@my @l…ø_@Õšy[y @ÜiÀú_@\Zäj[y @NË;ûü_@å3ª\\[y @Êýü_@\\L$my @³ÊÍþü_@E‚îë~y @cÍ–\0ý_@]¦³y @ºEyÅú_@E»ÊÁy @¬=BÇú_@Ôìl‰¢y @F§$Œø_@Å«¦—¢y @z”íø_@ÝêH_´y @[ïÏRö_@ÖS‚m´y @<H²ô_@HW»{´y @ñ{ô_@n³]CÆy @ÌÑ˜Tö_@n $5Æy @>¶aVö_@öêÆü×y @­œ*Xö_@o3iÄéy @XÏô_@‹e¢Òéy @\0ïáñ_@2Ûàéy @öÎ·ãñ_@¥—}¨ûy @èð™¨ï_@?¶¶ûy @Û|mí_@PîÄûy @Ð.^2ë_@ÙÊ%Óûy @ÈJ@÷è_@Ù]áûy @Ád"¼æ_@Rñ“ïûy @\0\0\0hH“ø_@Ë›/¶éy @Øt‘ø_@ábî×y @s1Ìú_@DuSà×y @]1fÎú_@¡žõ§éy @¸øƒ	ý_@í;»™éy @^Mý_@¬S]aûy @F3/Ðú_@îÅ—oûy @,7øÑú_@+ë97\rz @WTÚ–ø_@ttE\rz @.]•ø_@¨ÒÑ}ûy @hH“ø_@Ë›/¶éy @\0\0\0R\ZU–Û_@’_Cþ\rz @Ûm˜Û_@]\\æÅz @ibÿ\\Ù_@´ú\ZÔz @Ÿ7[Ù_@aîwz @R\ZU–Û_@’_Cþ\rz @\0\0\0¼ˆÑúè_@\rR¢pz @Ãèùè_@²ÿ¨\rz @ˆÙ&4ë_@ó\\Èš\rz @PÈDoí_@Þ¡Œ\rz @Ä\rqí_@T"3Tz @?†ï5ë_@õìjbz @¼ˆÑúè_@\rR¢pz @\0\0\0:‰³¿æ_@›QÙ~z @s|Áæ_@¯þ{F1z @9^†ä_@?¨²T1z @¼‡•„ä_@¡ëz @:‰³¿æ_@›QÙ~z @\0\0\0þÿ?Kâ_@Fìèb1z @»}Mâ_@`¶‹*Cz @Å^êà_@g¤Á8Cz @Çí!à_@ÄÊq1z @þÿ?Kâ_@Fìèb1z @\0\0\0½Ÿ%›¾_@þº\rDz @œSíœ¾_@“¾^ÕUz @Ïa¼_@|cŽãUz @ö``¼_@ƒ“êDz @Ð»?^¼_@|ÁFT2z @Ë‡!#º_@Öáub2z @`ñY!º_@=þÑš z @ó\\’º_@Ÿ.Óz @|w°Z¼_@JÿÄz @¨x\\¼_@fí¢Œ z @ó=–—¾_@ws~ z @Úí]™¾_@™;F2z @å|ÔÀ_@,Pç72z @…ÜCÖÀ_@-‹ÿCz @½Ÿ%›¾_@þº\rDz @\0\0\0¸˜¬®µ_@zòvFDz @ t°µ_@øð\ZVz @.ÆUu³_@·ÿHVz @RŽs³_@·ñ¤TDz @¸˜¬®µ_@zòvFDz @\0\0\0dz_@¹O_&´y @äôšx_@ÝN½^¢y @{d}=ÿ_@a>øl¢y @S´;ÿ_@ð+V¥y @½ÖÑv_@ýK—y @’ºu_@GyÏ~y @„/&°_@>Á~y @lXï±_@…àˆy @Øí_@‡[¤zy @ÎU*(_@Khly @,šó)_@2\n4¢y @¾Öî_@F?FB¢y @`IŸð_@\0!è	´y @5°µ_@ ë#´y @dz_@¹O_&´y @\0\0\0¨Kl_@?Oé%y @u;Rj_@õý¬!y @úco¥_@p%ry @ê€8§_@)\'Û%y @¨Kl_@?Oé%y @\0\0\0ôü…ðü_@aÝ®ðx @5½îü_@Àà:çÞx @Ú)ÿ_@îÙÞx @Ï÷d_@›½ÆÊÞx @!Àf_@Õh’ðx @ý£+ÿ_@\0)£ ðx @ôü…ðü_@aÝ®ðx @\0\0\0ÀÄ[]ä_@\Z­e˜x @j“[ä_@)Án†x @”F°–æ_@›Œ9†x @®x˜æ_@iÜV˜x @ÀÄ[]ä_@\Z­e˜x @	\0\0\0ÉÃÝ_@\n–R\nx @7lû›Ý_@þÞòŠøw @ I3šÝ_@Ý±OÃæw @†¹OÕß_@¢9µæw @m\'lâ_@ë[è¦æw @zc4â_@øi‹nøw @„¡üâ_@÷u.6\nx @%\ZàØß_@ÁrbD\nx @ÉÃÝ_@\n–R\nx @\0\0\0WÀPaø_@ÝWnà÷w @õˆ_ø_@JåËæw @õ\\¤šú_@H«“\næw @ö²ÀÕü_@Ê[üåw @Ï‡‰×ü_@@_ýÃ÷w @%mœú_@L6Ò÷w @WÀPaø_@ÝWnà÷w @\0\0\0óëÜ\\¾_@	RÂÕw @›[¾_@u’®úÃw @àñ1–À_@ÿÅ€ìÃw @òjù—À_@Á$´Õw @óëÜ\\¾_@	RÂÕw @GZ¤^¾_@¥ö‰çw @šÊk`¾_@¬šQùw @cˆ›À_@±lCùw @âOÀ_@ê¥x @!cŸÀ_@³˜´Òx @1±úc¾_@º²âàx @è<3b¾_@n°>x @¸•\'¼_@vUl\'x @%0O%¼_@‹AÈ_ùw @Ì‡#¼_@‘+$˜çw @÷jÀ!¼_@ˆ€ÐÕw @óëÜ\\¾_@	RÂÕw @\0\0\0}€ˆ7Ð_@\'0|çw @J¬À5Ð_@È£ØPÕw @dÝpÒ_@ö›§BÕw @ˆù«Ô_@«.v4Õw @)vÁ­Ô_@ü›üæw @Qü¤rÒ_@ÎK\nçw @}€ˆ7Ð_@\'0|çw @\0\0\0"È‡¿Ë_@ù‚9mÕw @Ý‚OÁË_@e.Ý4çw @3†É_@K\rCçw @Sk„É_@ZZi{Õw @"È‡¿Ë_@ù‚9mÕw @\0\0\0÷çÓÂ_@šö¥Õw @(bNÑÂ_@”RÞÃw @rÐjÅ_@£ü#ÐÃw @ýb2Å_@ªØÇ—Õw @÷çÓÂ_@šö¥Õw @\0\0\0Óœ1ªÔ_@L¿ÒlÃw @$³i¨Ô_@ÜM/¥±w @É†ãÖ_@%šý–±w @5ûMåÖ_@\rü ^Ãw @Óœ1ªÔ_@L¿ÒlÃw @\r\0\0\0VF6ÊË_@h@x @þþËË_@Ÿ³âQx @Ë>áÉ_@§KãðQx @´ú¨’É_@/ø†¸cx @ÈŒWÇ_@>æ¶Æcx @á>oÅ_@ÎnæÔcx @pœ§\ZÅ_@;£B\rRx @ûûßÅ_@œÕžE@x @kÁüSÇ_@lo7@x @ß„É_@?)@x @îÌQÉ_@kì›a.x @ªnÈË_@oÇkS.x @VF6ÊË_@h@x @	\0\0\0ðˆù?³_@)Ü·@x @„ÃÀA³_@Þ%°~Rx @”¥Ý|µ_@ÃØƒpRx @âî¤~µ_@é(8dx @\0ˆC³_@†mTFdx @Mk±_@¥d€Tdx @xß£±_@{\rÜŒRx @ž±Ü±_@F´7Å@x @ðˆù?³_@)Ü·@x @\0\0\0:$õ÷¥_@Ææ±¾Ky @*0¼ù¥_@šnV†]y @*ž¾£_@¨Ý€”]y @õ×¼£_@VFÜÌKy @:$õ÷¥_@Ææ±¾Ky @\0\0\0>ûäÔ_@fÛß(z @ëì2ãÔ_@é­<aüy @ÝâP×_@´ùSüy @í\Z ×_@§¬\Zz @>ûäÔ_@fÛß(z @\0\0\0\'ÿØ1Î_@ZiÕ‹üy @	ü0Î_@92Äêy @6ë.kÐ_@"—ÿµêy @ûölÐ_@½å¢}üy @\'ÿØ1Î_@ZiÕ‹üy @\0\0\0ñZMÿ_@ö‡ªqBz @^­ˆ_@cocBz @\ZvŠ_@¶ú+Tz @K€XOÿ_@Ø…L9Tz @£§!Qÿ_@¬î\0fz @‰ý_@Ô¶)fz @±¥Ìý_@%ÀËÖwz @ix®Üú_@QŸåwz @"I¡ø_@òAówz @FÇŸø_@ƒðž+fz @‚!©dö_@õØ9fz @-àbö_@üº6rTz @æDþø_@ÆücTz @FÇŸø_@ƒðž+fz @håÚú_@q†dfz @²ZÙú_@kÂUTz @}n:ý_@q«‡GTz @K€XOÿ_@Ø…L9Tz @ñZMÿ_@ö‡ªqBz @àUqý_@þåBz @ÓNS×ú_@}N ŽBz @òDŠÕú_@n/~Æ0z @C?¨ý_@~ŽC¸0z @–7ÆKÿ_@ˆª0z @ñZMÿ_@ö‡ªqBz @\0\0\0âÏ>ŸÛ_@;räfz @\\-¡Û_@ž-¬xz @7âèeÙ_@¡Jºxz @y‘ dÙ_@’§òfz @âÏ>ŸÛ_@;räfz @\r\0\0\0\\¿ÍÂ_@Æ¶\nO w @®£’À_@°É8] w @á¬†W¾_@ wfk w @~F¿U¾_@^fÂ£Žw @‘’ÛÀ_@qÈ”•Žw @¥Ü÷ËÂ_@Åf‡Žw @\\¿ÍÂ_@Æ¶\nO w @R±ÛÅ_@c>Ü@ w @(øCÇ_@†`­2 w @uŸ¿EÇ_@(1Qú±w @ä?£\nÅ_@‰€²w @UÞ†ÏÂ_@p¦®²w @\\¿ÍÂ_@Æ¶\nO w @\0\0\0UÉ_@0~$ w @ö®L}É_@ZÚ\\Žw @ñh¸Ë_@¹ÀªNŽw @=1…óÍ_@õÁz@Žw @¿ðLõÍ_@f w @ß£0ºË_@`tN w @UÉ_@0~$ w @\0\0\0ÊêfÌß_@Î†ìÎw @iÇžÊß_@ê\\I|w @ìèºâ_@nÜù{w @ƒâ_@Èö¸Àw @ÊêfÌß_@Î†ìÎw @\0\0\0p×@ä_@yöáê{w @˜Í?ä_@é>#jw @bÞ*zæ_@ª­\njw @÷%ó{æ_@«­Ü{w @p×@ä_@yöáê{w @\0\0\0À[‚Ù_@ï">jjw @ñVJÙ_@Š}á1|w @z-.ÞÖ_@#h@|w @?fÜÖ_@\0þoxjw @À[‚Ù_@ï">jjw @\0\0\0•ÿ-fÒ_@¹ƒÒ”jw @”,fdÒ_@yø.ÍXw @@‚ŸÔ_@à÷ý¾Xw @L J¡Ô_@™s¡†jw @•ÿ-fÒ_@¹ƒÒ”jw @	\0\0\0˜|ò‹Ý_@Ìþ5†Xw @ëk*ŠÝ_@%¿’¾Fw @9iFÅß_@¾Ò_°Fw @‰db\0â_@ß€,¢Fw @Ý]~;ä_@‰Éø“Fw @¼”F=ä_@“Ú›[Xw @¬Ž*â_@s¡ÏiXw @¡†Çß_@ÛxXw @˜|ò‹Ý_@Ìþ5†Xw @\0\0\0x;Ç_@†.zLGw @ŠJ9Ç_@‹QÖ„5w @ŽftÉ_@Sk§v5w @‘‚¯Ë_@¤xh5w @Þ9J±Ë_@•Ý0Gw @ª*.vÉ_@É8K>Gw @x;Ç_@†.zLGw @\0\0\0i°í%_@€øp%y @jÔ#%_@pàÏ=y @Ý@W\'_@Ã¯Ž/y @¿Å\nY\'_@;¸/÷$y @i°í%_@€øp%y @\0\0\0\0\0\0\0\0\0…ý§2_@°‚±×«z @{aßl0_@´öå«z @«©n0_@v°–­½z @wÛÇ©2_@Ø\rRŸ½z @…ý§2_@°‚±×«z @\0\0\0\0\0\0\0\0\0Õ—õT_@«¨Ý9™z @V†*T_@–>r‡z @Öv_T_@t\\žªuz @s—AÞQ_@Ñ³è¸uz @¶#£O_@£¥2Çuz @©ÒhM_@ë1|Õuz @Fíç,K_@§XÅãuz @âÊñH_@Øòuz @¬Õ”óH_@®¹‡z @v§_õH_@GN™z @A{*÷H_@[óíH«z @ÞˆH2K_@O¥:«z @V¨}0K_@Ú!s™z @6§›kM_@àÛ»d™z @{”fmM_@·­[,«z @\Zž„¨O_@’ò«z @¶¥¢ãQ_@áÑÇ«z @y®måQ_@v‚g×¼z @ÔÀ‹ T_@˜ìÉ¼z @U«ÀT_@¤K}«z @Õ—õT_@«¨Ý9™z @\0\0\0\0\0\0	\0\0\0rÕs–_@PˆX‚Áz @û¬}–_@B½³º¯z @LŽB”_@Õ‹ÜÈ¯z @ÂUD”_@^fÁz @\\6	’_@ÞÞ©žÁz @ý\n’_@ÒÆNfÓz @péF”_@×>&XÓz @ß±:–_@OQýIÓz @rÕs–_@PˆX‚Áz @\0\0\0\0\0\0\0\0\0r­eà_@+^5®¿z @[.. à_@T\'ØuÑz @?³L[â_@ý¼¡gÑz @–%„Yâ_@^ÿŸ¿z @r­eà_@+^5®¿z @\0\0\0\0\0\0\0\0\0Q‹ã¾€_@êéõª»z @¡Åƒ~_@ÄnH¹»z @¡ª‘…~_@uäæ€Íz @©¡¯À€_@ñO”rÍz @Q‹ã¾€_@êéõª»z @\0\0\0\0\0\0\r\0\0\0Ë¤l‡_@Ö…¿ð—z @=\0‡1…_@ÿ—z @s3iö‚_@¡Lf\r˜z @…R5ø‚_@§Õ©z @,S3…_@Êf±Æ©z @ÝY5…_@¯OŽ»z @˜sú‚_@ƒÿ¢œ»z @¬–Íû‚_@âUAdÍz @°‰ë6…_@DöíUÍz @´z	r‡_@1šGÍz @#>=p‡_@úû»z @”qn‡_@ôÀ]¸©z @Ë¤l‡_@Ö…¿ð—z @\0\0\0\0\0\0\0\0\0¡Õ™;_@+|õàz @háóÔ=_@–a5çàz @SG)Ó=_@“(•Ïz @9˜;_@ÖÛ-Ïz @¡Õ™;_@+|õàz @\0\0\0\0\0\0\0\0\0¡Ôƒ„D_@W½¾ôÎz @‡§eIB_@ø›Ïz @[0KB_@Âµ¦Êàz @ð”N†D_@„Ç^¼àz @¡Ôƒ„D_@W½¾ôÎz @\0\0\0\0\0\0\0\0\0\Z»âG”_@AËåz @òãÃ’_@·¬ó-åz @ÙªŠ’_@˜õöz @¾Ž©I”_@éoçöz @©pÈ„–_@ÝFÙöz @Gƒ–_@>¢åz @\Z»âG”_@AËåz @\0\0\0\0\0\0\0\0\0è^4_@Þ¿$çäz @­4?ùš_@ŒíNõäz @Ž.ûš_@t“ó¼öz @…\n%6_@JVÉ®öz @è^4_@Þ¿$çäz @\0\0\0\0\0\0\0\0\0¡Õ™;_@+|õàz @¹_·^9_@3wÂáz @Qâ`9_@]ÍbËòz @æ0 ›;_@ºe½òz @¡Õ™;_@+|õàz @\0\0\0\0\0\0\0\0\0ž‰Ö”_@†9¹Þz @ék›’_@ªJÇÞz @38’_@>/-ðz @¦VØ”_@méÖ€ðz @ž‰Ö”_@†9¹Þz @\0\0\0\0\0\0\0\0\0"Wën_@ò˜[tñz @”÷8°l_@W «‚ñz @A¡²l_@\rJJ{ @‹Î"ín_@vú;{ @"Wën_@ò˜[tñz @\0\0\0\0\0\0	\0\0\0Ô›7ÃF_@8l¶uòz @>WˆD_@¡Ïþƒòz @Žä‰D_@¯ÕžK{ @âlÅF_@§bV={ @î?ÍÆF_@Wö{ @œëI_@Õn­ö{ @6¼ \0I_@Š\r/{ @jÞUþH_@@£mgòz @Ô›7ÃF_@8l¶uòz @\0\0\0\0\0\0\0\0\0ogOO__@¡B { @,1]_@Çl®{ @™~ü]_@éjv{ @§Æ\ZQ__@!‹¾g{ @µ9Œa_@ÊEqY{ @¿ mŠa_@íÒ‘{ @ogOO__@¡B { @\0\0\0\0\0\0\0\0\0c7Vˆ–_@¯`h\Z{ @û;7M”_@$Œ¹v\Z{ @“þN”_@HZ^>,{ @¹Š–_@W50,{ @c7Vˆ–_@¯`h\Z{ @\0\0\0\0\0\0\0\0\0õÂvï‹_@]ÀiI{ @\0£X´‰_@L¾W{ @Wö$¶‰_@T¬\\&{ @#Cñ‹_@ºÍ&{ @õÂvï‹_@]ÀiI{ @\0\0\0\0\0\0\0\0\0Üü²e_@Ññ¾,{ @ëà”*Ž_@ß‹;{ @¾Ma,Ž_@‰²&{ @pvg_@Ùß\\ô%{ @¢’_@Ðæ%{ @ÎÑ ’_@6òh{ @Üü²e_@Ññ¾,{ @\0\0\0\0\0\0\0\0\0í@6*\Z_@	Vöé({ @)®ï_@ù6ø({ @™yáð_@è0Ø¿:{ @\0,\Z_@E~—±:{ @í@6*\Z_@	Vöé({ @\0\0\0\0\0\0\r\0\0\0GødîQ_@rÖ…½{ @„å™ìQ_@,0æõ{ @1ž{±O_@ûž0{ @7¤F³O_@áTÐË{ @$N(xM_@Ám\ZÚ{ @kIóyM_@-1º¡\'{ @<¬µO_@­p“\'{ @\r0ðQ_@Ÿz%…\'{ @Ð#ûñQ_@ÆÅL9{ @]-T_@ˆz>9{ @ÛkN+T_@‡Úv\'{ @YJƒ)T_@tò:¯{ @GødîQ_@rÖ…½{ @\0\0\0\0\0\0\0\0\0à\'æR__@†Ñ]/\'{ @ÓÇ]_@ñÀª=\'{ @)“]_@óJ9{ @‹±T__@çýö8{ @à\'æR__@†Ñ]/\'{ @\0\0\0\0\0\0\0\0\0Ez’y‚_@Rwä>P{ @©Ìw‚_@x1?w>{ @ïÛ¬<€_@Ñéd…>{ @9³~_@™<Š“>{ @WT~_@a¡/[P{ @ÌFs>€_@"?\nMP{ @Ez’y‚_@Rwä>P{ @\0\0\0\0\0\0\0\0\0á)"›_@p†Û={ @ôÇ˜_@ý+°é={ @ÿÊÈ˜_@×T±O{ @«-é›_@\r²*£O{ @á)"›_@p†Û={ @\0\0\0\0\0\0\0\0\0„l	Ð_@<‡<{ @A‹êQÎ_@N§P•<{ @&´²SÎ_@NÞó\\N{ @(¢ÑŽÐ_@µ3ÀNN{ @„l	Ð_@<‡<{ @\0\0\0\0\0\0\0\0\0Ez’y‚_@Rwä>P{ @ÜóX{‚_@»‰b{ @2x¶„_@C~cøa{ @Â«±´„_@ñI¾0P{ @Ez’y‚_@Rwä>P{ @\0\0\0\0\0\0\0\0\0ª/ÂDh_@‘\'M\\{ @u•öBh_@Ü%d…J{ @ºù~j_@]wJ{ @ÇTI|j_@=\'v¯8{ @Aý*Ah_@"Å½8{ @¸£f_@c·Ì8{ @/HîÊc_@çaÚ8{ @çÆ¹Ìc_@+\n¢J{ @./Øf_@ÌÊ²“J{ @¤¼£	f_@$ÜQ[\\{ @ª/ÂDh_@‘\'M\\{ @\0\0\0\0\0\0	\0\0\0üE‰}M_@ë±ù0K{ @®ÇjBK_@”C?K{ @7¼5DK_@\0aã]{ @Â²\0FK_@Ö+ƒÎn{ @L«ËGK_@ô"–€{ @ÖOê‚M_@“ãØ‡€{ @ŒJM_@k*9Àn{ @CGTM_@3o™ø\\{ @üE‰}M_@ë±ù0K{ @\0\0\0\0\0\0\0\0\0ÜóX{‚_@»‰b{ @¥³9@€_@c’¯b{ @rq\Z~_@Õ"b{ @D-ûÉ{_@>ú0b{ @š‚ÁË{_@]€Ÿøs{ @ìÙ‡Í{_@lîDÀ…{ @93NÏ{_@mZê‡—{ @£m\n~_@åÅy—{ @E€_@ÊŸk—{ @H“ÆC€_@¶2ú£…{ @–7§~_@ZÃ²…{ @ˆÓà~_@Âdzês{ @w"\0B€_@•ãTÜs{ @no}‚_@Öü.Îs{ @ÜóX{‚_@»‰b{ @\0\0\0\0\0\0\0\0\0…l¬€‚_@zy]—{ @ûÐË»„_@ÝSO—{ @´Dº„_@¸à­‡…{ @ûìå~‚_@€<Ô•…{ @…l¬€‚_@zy]—{ @\0\0\0\0\0\0\0\0\0…l¬€‚_@zy]—{ @E€_@ÊŸk—{ @ÕzSG€_@ÎÊD3©{ @	îr‚‚_@©µ%©{ @…l¬€‚_@zy]—{ @\0\0\0\0\0\0\0\0\0ÀTmçZ_@Â³ù‘{ @|¯N¬X_@Ö\0’{ @ø®X_@¾jŸÏ£{ @ª8éZ_@	ÙRÁ£{ @ÀTmçZ_@Â³ù‘{ @\0\0\0\0\0\0\0\0\0Ê€ûn_@hñx‘{ @Ë6bÀl_@(A‡‘{ @€ò-Âl_@ÊàN£{ @|’Lýn_@ïÞ@£{ @w0k8q_@ƒU?2£{ @E[Ÿ6q_@¡š j‘{ @Ê€ûn_@hñx‘{ @\0\0\0\0\0\0\0\0\0¦ÛÀ~_@)µÐÌ{ @QjàJ€_@œZÂÌ{ @–ñI€_@¶êúº{ @©oú\r~_@¿Ò	»{ @¦ÛÀ~_@)µÐÌ{ @\0\0\0\0\0\0\r\0\0\0ËÕçÓc_@¾}À‘{ @‰8É˜a_@\ZšËÎ‘{ @†´”ša_@{Âj–£{ @„2`œa_@¿è	^µ{ @Cé~×c_@±»Oµ{ @\0vJÙc_@½ÅZÇ{ @}7if_@å	Ç{ @úö‡Oh_@y½úÆ{ @ÀP¼Mh_@!3µ{ @žf_@émAµ{ @‡Òf_@ëÎy£{ @\rqf_@Ð/²‘{ @ËÕçÓc_@¾}À‘{ @\0\0\0\0\0\0\0\0\0‡wÓÕµ_@uõŒnË{ @x´š³_@ÏI¼|Ë{ @U¸{œ³_@}*`DÝ{ @"$›×µ_@¢Æ06Ý{ @‡wÓÕµ_@uõŒnË{ @\0\0\0\0\0\0\0\0\04ˆ8Ã_@<¦hË{ @5pýÀ_@\\š\'Ë{ @c!8ÿÀ_@¬ß=ïÜ{ @GW:Ã_@X\ZáÜ{ @4ˆ8Ã_@<¦hË{ @\0\0\0\0\0\0\r\0\0\0¦ÛÀ~_@)µÐÌ{ @K¡Ô{_@’ÚÞÌ{ @9¬gÖ{_@Êõ¦Þ{ @m.Ø{_@~W%nð{ @‘¹M~_@¦Ïÿ_ð{ @ºamN€_@8âÙQð{ @æ‰‚_@5³Cð{ @¬¬Ä„_@ŸÖŒ5ð{ @éæÂ„_@Ç²çmÞ{ @w~Æ‡‚_@ç[|Þ{ @å¦L€_@qŸ4ŠÞ{ @žI‡~_@g}Z˜Þ{ @¦ÛÀ~_@)µÐÌ{ @\0\0\0\0\0\0	\0\0\0ýæ>wÅ_@ùQ}šî{ @¦O^²Ç_@ø±JŒî{ @Q¶}íÉ_@c¬~î{ @•µëÉ_@äht¶Ü{ @µuíéÉ_@W#ÑîÊ{ @†(Î®Ç_@á	ýÊ{ @;–°Ç_@ô^§ÄÜ{ @.ßvuÅ_@pïÙÒÜ{ @ýæ>wÅ_@ùQ}šî{ @\0\0\0\0\0\0\0\0\0ýæ>wÅ_@ùQ}šî{ @W|<Ã_@fŒ¯¨î{ @eyç=Ã_@düRp\0| @ÊðyÅ_@t² b\0| @ýæ>wÅ_@ùQ}šî{ @\0\0\0\0\0\0\0\0\0Iþã ½_@÷æ…‡/| @œ>Ååº_@pkä•/| @{Ê’çº_@r]A| @æ–±"½_@Ez"OA| @Iþã ½_@÷æ…‡/| @\0\0\0\0\0\0\0\0\0zŽ:å˜_@Upž+l| @xZ ›_@ŒSsl| @ŒT“›_@åØÎUZ| @³wsã˜_@4æùcZ| @zŽ:å˜_@Upž+l| @\0\0\0\0\0\0\0\0\0°_^˜¤_@íA| @\'}?]¢_@¿;wûA| @Ò~_¢_@Y‰ÃS| @‚Ù`¢_@ãÔ±Še| @ˆ~ø›¤_@Ç~W|e| @n+š¤_@îBº´S| @°_^˜¤_@íA| @\0\0\0\0\0\0\0\0\0xZ ›_@ŒSsl| @—!"›_@!Ìå}| @ó‘A]_@B:ìÖ}| @±_z[_@)ÑGl| @xZ ›_@ŒSsl| @\0\0\0\0\0\0\0\0\0ÈÝX*1_@&¥•¸s| @„ewe3_@•Ù!ªs| @G#§c3_@Bˆâa| @J¨ˆ(1_@Küða| @ÈÝX*1_@&¥•¸s| @\0\0\0\0\0\0\0\0\0»ú#ò_@7‚N»{| @ènÚèï_@¥(‰É{| @Ðz£êï_@Q+‘| @a0Ã%ò_@…›ð‚| @»ú#ò_@7‚N»{| @\0\0\0\0\0\0\0\0\0ÈÝX*1_@&¥•¸s| @T:ï._@ 	Çs| @Ê~\nñ._@ür¢Ž…| @Bæëµ,_@)ƒ…| @µKÍz*_@À-ˆ«…| @_|*_@³!s—| @°µ~A(_@ç”—| @C¾NC(_@\0›-I©| @Ttm~*_@n6»:©| @_(Œ¹,_@ClH,©| @N¼·,_@½ø®d—| @–«Úò._@ÆØ;V—| @ÖNù-1_@5SÈG—| @L),1_@7ý.€…| @ÈÝX*1_@&¥•¸s| @\0\0\0\0\0\0	\0\0\0yßz`_@€²ò–| @Áf\\Ì]_@‚n&–| @C¡-Î]_@9¥î§| @¼&L	`_@dºŠß§| @-ªjDb_@öiÑ§| @—+‰d_@ð³‘Â§| @ÖÊ·}d_@·Ëùú•| @+V™Bb_@èqv	–| @yßz`_@€²ò–| @\0\0\0\0\0\0\0\0\0«/k_@˜wÏ•| @®ôóh_@NÿÝ•| @T(Æõh_@—¥§| @¨£ä0k_@P0—§| @«/k_@˜wÏ•| @\0\0\0\0\0\0\0\0\0ìéçÌz_@Czj•| @‹‰É‘x_@_†x•| @]›“x_@r@§| @%Ê¹Îz_@Äœ1§| @ìéçÌz_@Czj•| @\0\0\0\0\0\0\0\0\0/£ÈÁª_@¨ƒ‚I| @t"Àª_@‘yÞ}| @ÿ9á„¨_@ÿl}| @OÁI¦_@×ú9ž}| @#c¡¤_@#g¬}| @£\nÚ¤_@uèÂäk| @ø(ºÑ¡_@ž›ïòk| @ºtÓ¡_@½å“º}| @U„a˜Ÿ_@ËBÀÈ}| @ó‘A]_@B:ìÖ}| @2Æ__@N¡ž| @küÏ`_@G5f¡| @Kð›Ÿ_@×ïX¡| @AM·Ÿ_@EC­³| @äc×Ø¡_@¾·€³| @0×¡_@ÍsÜI¡| @\Z0¤_@+’¯;¡| @‹x÷¤_@ÆS³| @üØ¾¤_@öø÷ÊÄ| @eøÞP¦_@¾’Ê¼Ä| @6‹O¦_@äo&õ²| @ PM¦_@ïJ‚-¡| @Ê¶ˆK¦_@ì#Þe| @ú­¨†¨_@–†°W| @/£ÈÁª_@¨ƒ‚I| @\0\0\0\0\0\0\0\0\0KŒ\'ò_@¿²’JŸ| @´ˆlìï_@GxÍXŸ| @—˜5îï_@\0o ±| @xªþïï_@ž¿èÂ| @J†+ò_@ýÚÖÙÂ| @©gU)ò_@ëÇ4±| @KŒ\'ò_@¿²’JŸ| @\0\0\0\0\0\0\0\0\0RUŠT«_@k9ºo¬| @V,k©_@ÿ~¬| @N`8©_@.³E¾| @–WV«_@Ù;W7¾| @ÃÉv‘­_@ê\0û(¾| @M|©­_@.^a¬| @RUŠT«_@k9ºo¬| @\0\0\0\0\0\0\0\0\0½! Í@_@u-ª¨| @è’>_@†Ñ£¸¨| @ú	R”>_@Ä<€º| @¸pÏ@_@=XÆqº| @½! Í@_@u-ª¨| @\0\0\0\0\0\0\0\0\0W€_@¢X§| @OžöD_@_7š§| @šÈF_@__1Ü¸| @×\rç_@Æp¯Í¸| @W€_@¢X§| @\0\0\0\0\0\0\0\0\0YƒÝÿ_@š)m„Â| @{³½Rý_@Õoª’Â| @Ù‡Tý_@\Z3LZÔ| @uð¦ÿ_@PÝLÔ| @YƒÝÿ_@š)m„Â| @\0\0\0\0\0\0\0\0\0®¤¯£¼_@Ê5¾ç| @ÂÇÏÞ¾_@7ç°ç| @]ÊÝ¾_@úr`èÕ| @\n´ç¡¼_@QF’öÕ| @®¤¯£¼_@Ê5¾ç| @\0\0\0\0\0\0\0\0\0\0pRà_@=ã¢KÃ| @¡*èSà_@¦pEÕ| @#!â_@­C\rÕ| @‚êÐâ_@~¿¯Ìæ| @ÄëðËä_@aw¾æ| @¥(Êä_@±ÔöÔ| @*Hç_@î¸›èÔ| @ëç_@ª>°æ| @Qè0Bé_@X¨¢æ| @²øg@é_@([bÚÔ| @<ç‡{ë_@Ç—(ÌÔ| @Ýì¾yë_@X†Ã| @Ÿ>é_@êÀÃ| @J\'ç_@%Zù Ã| @„A_Èä_@ÇB2/Ã| @ÀY?â_@ÏÅj=Ã| @\0pRà_@=ã¢KÃ| @\0\0\0\0\0\0\0\0\0<}U2 _@-\nYâ| @=xˆ0 _@c½»FÐ| @ÃÂ§k¢_@Ãna8Ð| @GÇ¦¤_@ˆº*Ð| @Ìîù¤¤_@‹ib¾| @³Úi¢_@—/Äp¾| @Bu». _@‰n¾| @x5œó_@áGx¾| @?AÏñ_@TçÚÅ¬| @3°¶›_@eK4Ô¬| @¯ó|¸›_@ »Ñ›¾| @á¯]}™_@ÆÉ*ª¾| @j>B—_@Trƒ¸¾| @:D—_@æÿ €Ð| @ Œ*™_@«GÈqÐ| @,ÝIº›_@×)ocÐ| @µ+iõ_@j¦UÐ| @õ#6÷_@ã³â| @<}U2 _@-\nYâ| @\0\0\0\0\0\0\0\0\0¹ErŠ_@ÅiÑ"Ü| @*3pŠ_@$•:[Ê| @¤È`nŠ_@t¾£“¸| @ü\\B3ˆ_@lC\'¢¸| @Ä5ˆ_@ù)¾iÊ| @“Àæ6ˆ_@wU1Ü| @¹ErŠ_@ÅiÑ"Ü| @\0\0\0\0\0\0\0\0\0É~¸D_@˜ŸÜ‘Ò| @×*_}B_@C& Ò| @g*B_@!Ægä| @õõ€B_@ýe/ö| @+À¼D_@Z:!ö| @ÝÃIºD_@n|Yä| @É~¸D_@˜ŸÜ‘Ò| @\0\0\0\0\0\0\0\0\0¹ErŠ_@ÅiÑ"Ü| @O‡×sŠ_@V<hêí| @,ö®Œ_@-"äÛí| @ØÈ#­Œ_@z_MÜ| @¹ErŠ_@ÅiÑ"Ü| @\0\0\0\0\0\0Q\0\0\0nýVì˜_@B„0J³| @ÜÞ6±–_@dy[X³| @åÌo¯–_@è¶¡| @¹Þê˜_@^Œ‚¡| @nýVì˜_@B„0J³| @\Zw\'›_@‡)<³| @î¯%›_@·`t¡| @Åè#›_@©B¼¬| @þÁÈè˜_@l~çº| @>§ç˜_@gøBó}| @zŽ:å˜_@Upž+l| @å¢\Zª–_@ˆ\'É9l| @ê®á«–_@¿m~| @š´Áp”_@+ ˜~| @Úµˆr”_@\'Å<×| @Ñ¬h7’_@ Ðfå| @M£/9’_@„‚­¡| @‡‹þ_@`75»¡| @>wÖÿ_@/÷Ù‚³| @ôd_@æ´~JÅ| @¤Td_@—p#×| @NF+_@9*ÈÙè| @Žù\nÊ_@c·ñçè| @ÒªêŽ‹_@òÞ\Zöè| @¦Ò#‹_@[v.×| @°ŽR‰_@×¸ž<×| @>Å<P‰_@¹ÎùtÅ| @ÉýuN‰_@—âT­³| @UÑU‡_@†}»³| @›‡_@ÑØó¡| @ìönÖ„_@®Ëÿ¢| @ìL¨Ô„_@r¼Z:| @ÛaÈ‡_@\r3,| @ÑtèJ‰_@| @Ê…†‹_@xâ| @‡·A„‹_@”¬=H~| @>ëz‚‹_@¢Ç˜€l| @ÅóZG‰_@FÁŽl| @86”E‰_@Ì&ÇZ| @‚It\n‡_@`DÕZ| @Pú:‡_@T\réœl| @Ýþ\ZÑ„_@É—«l| @tû•‚_@¦¼7¹l| @ÛZ€_@ì{^Çl| @}wY€_@G¹ÿZ| @èîMW€_@&8I| @Oh‡U€_@­Ønp7| @+g\Z~_@ö•~7| @.~_@æK:FI| @&á{_@!`TI| @:ŒÔâ{_@hv[| @Kýšä{_@°Éªãl| @Wpaæ{_@ç\ZP«~| @t€!~_@Z*~| @–Ž¡\\€_@6®~| @h^€_@sÞ¨V| @œ­.`€_@žN¢| @\Z@õa€_@¼8óå³| @~r‚_@˜;Ì×³| @µÜž‚_@$VqŸÅ| @ÝPüÙ„_@ïãI‘Å| @Î\0ÃÛ„_@þìîX×| @¼²‰Ý„_@þó“ é| @iª‡_@@ýké| @ZÊS‰_@æ Cé| @ƒ\'‘U‰_@å†èËú| @æöWW‰_@Õj“} @ax’‹_@î‰d…} @XÉ˜Í_@lC;w} @—/¹_@N—i} @õ9ò_@Ëál¡ú| @z‘B’_@ßB“ú| @‘K@’_@u7žËè| @¨’„>’_@Lù×| @¯Î¤y”_@hDÏõÖ| @¾Å´–_@ê•¤çÖ| @Ð@åï˜_@ÐyÙÖ| @æv+›_@NËÖ| @xG>)›_@Õ™©Å| @"î˜_@ÕÅ| @nýVì˜_@B„0J³| @\0\0\0\0\0\0\0\0\0áÃ¹Íä_@—‡†ø| @Ýµ™’â_@>9R”ø| @9ƒb”â_@ï°ô[\n} @û‚Ïä_@¼ï»M\n} @¿¶¢\nç_@ïÈ‚?\n} @åÏÙç_@Tpàwø| @áÃ¹Íä_@—‡†ø| @\0\0\0\0\0\0\0\0\0<Ãû_@jn¿	} @25£ãø_@®H«Í	} @	„låø_@Ñ"M•} @ —Œ û_@ÿY‡} @<Ãû_@jn¿	} @\0\0\0\0\0\0\0\0\0²¥°¿›_@hGº} @æ.‘„™_@ü´ È} @­^†™_@¡*>} @7—}Á›_@Îä} @²¥°¿›_@hGº} @\0\0\0\0\0\0\0\0\0 çëŽ_@1Sö”ÿ| @ŒgÈ°Œ_@Ñâz£ÿ| @ò¹š²Œ_@c¡k} @Ga¹íŽ_@æ\\} @ çëŽ_@1Sö”ÿ| @\0\0\0\0\0\0\0\0\0`¬ö¥‚_@â«¾} @;:Öj€_@[ö,Ì} @›Øœl€_@Ò“} @õxcn€_@Ë3w[0} @˜„©‚_@dÊOM0} @~W½§‚_@*¼ª…} @`¬ö¥‚_@â«¾} @\0\0\0\0\0\0\0\0\0Ý«±HÌ_@Tˆ\\y.} @ôÑƒÎ_@\' \'k.} @p•	‚Î_@Ê „£} @ZéFÌ_@py¹±} @Ý«±HÌ_@Tˆ\\y.} @\0\0\0\0\0\0\0\0\0Ý«±HÌ_@Tˆ\\y.} @¸a‘\rÊ_@ã\n‘‡.} @Ì¨YÊ_@0\'4O@} @±ÿyJÌ_@•ÿ@@} @Ý«±HÌ_@Tˆ\\y.} @\0\0\0\0\0\01\0\0\0ŽÀ25Õ_@ø…†@.} @]~úÒ_@úž¼N.} @GJøÒ_@«¾‡} @.öÒ_@MÜv¿\n} @ß¸¡1Õ_@[â@±\n} @·;j3Õ_@1µãx} @ŽÀ25Õ_@ø…†@.} @¿\0Sp×_@[P2.} @õ>s«Ù_@!#$.} @Ÿ ª©Ù_@jqv\\} @)oŠn×_@F­j} @ßÁl×_@Í‚\n£\n} @Fâ§Ù_@¤½Ó”\n} @Ÿ ª©Ù_@jqv\\} @ÐÊäÛ_@7?N} @\0\'ãÛ_@à’œ†\n} @ä9áÛ_@“ìù¾ø| @à“YÞ_@¼kÂ°ø| @¹G"Þ_@€ex\n} @xfBYà_@…-j\n} @Ý¥yWà_@K…Š¢ø| @Aç°Uà_@üçÚæ| @â\ZÞ_@éÒéæ| @"2ÈÞ_@8}!Õ| @@„ÿÞ_@›ÚYÃ| @\0pRà_@=ã¢KÃ| @Z·VPà_@ÏS\0„±| @´\0ŽNà_@GÂ]¼Ÿ| @t.nÞ_@	[•ÊŸ| @\\Ø6Þ_@\Zü7’±| @_÷ÚÛ_@Ì>o ±| @d÷žÙ_@å¦®±| @É¦¿ Ù_@ïÙHvÃ| @µŸe×_@ö`„Ã| @_Á*Õ_@e‚µ’Ã| @¯Ë_ïÒ_@9>ë Ã| @\0Ô?´Ð_@t” ¯Ã| @RÚyÎ_@…U½Ã| @ø.èzÎ_@¿Žø„Õ| @š…°|Î_@Z–›Lç| @:Þx~Î_@å›>ù| @$þ˜¹Ð_@¯|	ù| @ea»Ð_@¤p¬Í\n} @ÚÎ)½Ð_@ˆbO•} @0:ò¾Ð_@^Rò\\.} @„§ºÀÐ_@@•$@} @qøÚûÒ_@,}_@} @aGû6Õ_@¤T)@} @ŽÀ25Õ_@ø…†@.} @\0\0\0Å˜Ð·Ð_@¬†f>ç| @c5¶Ð_@˜ŽÃvÕ| @Ò9(ñÒ_@Ö(ŽhÕ| @ô©ðòÒ_@c10ç| @Å˜Ð·Ð_@¬†f>ç| @\0\0\08Ù/Õ_@u\ržéø| @%¹.Õ_@€6û!ç| @XÆ0i×_@öÄç| @õQùj×_@o½gÛø| @8Ù/Õ_@u\ržéø| @\0\0\0\0\0\0G\0\0\0®¤¯£¼_@Ê5¾ç| @Ÿhº_@OGgÌç| @”Xo-¸_@õ^˜Úç| @Œ/Oòµ_@ÿÉèç| @%e‡ðµ_@¸^%!Ö| @½œ¿îµ_@bªYÄ| @OÖ÷ìµ_@	ôÝ‘²| @ŒÑ×±³_@ô ²| @Û°³_@ÿIjØ | @Øðt±_@Ïò™æ | @âv(s±_@Jö| @¢‡8¯_@M%-| @h–èü¬_@!T;| @/£ÈÁª_@¨ƒ‚I| @å%Ãª_@­‹&¡| @Þ%°þ¬_@§ø¡| @Q·w\0­_@\nœÊ²| @Â—;¯_@ÿm¼²| @8b_=¯_@Û„Ä| @¾J?­_@zþ?’Ä| @)à­_@ÓðãYÖ| @d\'?¯_@³ä´KÖ| @Š¨î@¯_@}ÅXè| @­N¶B¯_@5¤üÚù| @Ìö}D¯_@ß€ ¢} @I?ž±_@¤àp”} @%öe±_@¼«\\} @è EF¯_@x[Dj} @\0M\rH¯_@4è1/} @ûÔI¯_@q\nŒù@} @Ðiõ„±_@µ;\\ë@} @ý®-ƒ±_@Çt¸#/} @ýN¾³_@îOˆ/} @ÿlnùµ_@zÅW/} @ÉŽ4¸_@iÕ&ù.} @ªV6¸_@ÒmÊÀ@} @+8¸_@9nˆR} @¶\0?sº_@‡<zR} @Dr_®¼_@8µ\nlR} @´u—¬¼_@Ö=g¤@} @†Ø·ç¾_@m\r5–@} @Öáé¾_@LuØ]R} @kO $Á_@ÂÏ¥OR} @[9Ø"Á_@gwˆ@} @2˜ø]Ã_@Å{Ïy@} @»À_Ã_@›ÄrAR} @Ÿ$ášÅ_@×S?3R} @õ™Å_@…\Zœk@} @{ÇP—Å_@.ßø£.} @—qÒÇ_@Ø\'Å•.} @AÝ¨ÐÇ_@êù!Î} @ä›ˆ•Å_@¼¡UÜ} @‡XhZÃ_@óãˆê} @­; XÃ_@î”å"} @IrÀ“Å_@<b²} @¬Jø‘Å_@ª Mù| @ŠrÍÇ_@â—Û>ù| @ç¦àÎÇ_@îÉ~} @ˆÙ\0\nÊ_@ÌJø\n} @k˜8Ê_@~©§0ù| @R¼XCÌ_@~Us"ù| @rpAÌ_@n@ÐZç| @MYpÊ_@ç„iç| @*@PËÇ_@Æc8wç| @\r%0Å_@\nÝk…ç| @ïUÃ_@´ðž“ç| @Ð ØVÃ_@ØCB[ù| @øô·Á_@luiù| @!Ç—à¾_@cY§wù| @P—w¥¼_@ÁKÙ…ù| @®¤¯£¼_@Ê5¾ç| @\0\0\0\0\0\0\0\0\0È|e`à_@Ç·ˆQ} @9´œ^à_@Ê•Á?} @¤íÓ\\à_@Ërù-} @gµ³!Þ_@Ù)ª.} @<o|#Þ_@bºLÏ?} @+E%Þ_@èHï–Q} @È|e`à_@Ç·ˆQ} @\0\0\0\0\0\0\0\0\0dR»:ƒ_@:â®;} @EŸ›ÿ€_@l07½;} @Òýg_@ALÕ„M} @±½‡<ƒ_@e€vM} @{§w…_@ìŠ*hM} @ƒÛu…_@kŽŒ ;} @dR»:ƒ_@:â®;} @\0\0\0\0\0\0\0\0\0Q×$êÛ_@m\'¥Q} @™¯Ù_@T€^³Q} @æ%Í°Ù_@Ü+{c} @^ˆíëÛ_@m³Élc} @Q×$êÛ_@m\'¥Q} @\0\0\0\0\0\0\0\0\0È|e`à_@Ç·ˆQ} @WG.bà_@´‘YPc} @×£Nâ_@kè Bc} @‰Ì…›â_@{~zQ} @È|e`à_@Ç·ˆQ} @\0\0\0\0\0\0\0\0\0–§kvK_@J…ZÜN} @£µK;I_@ÙÆ¥êN} @r×=I_@™gE²`} @%Ö6xK_@lú£`} @ÙÒV³M_@¢_®•`} @Š—‹±M_@ÞÎN} @–§kvK_@J…ZÜN} @\0\0\0\0\0\0\0\0\0‰ÊÉ×Ç_@5¥®ìc} @+V©œÅ_@‹âúc} @¶‰qžÅ_@NÀ…Âu} @Ô\n’ÙÇ_@ãÊQ´u} @‰ÊÉ×Ç_@5¥®ìc} @\0\0\0\0\0\0\0\0\0s¡9_@›ŽéÝr} @€Œ!Ü;_@õ Ïr} @õ£A>_@öWÁr} @æ¿v>_@E	¸ù`} @1µVÚ;_@Âø\0a} @~¨6Ÿ9_@£‚Ia} @s¡9_@›ŽéÝr} @\0\0\0\0\0\0\0\0\0ûZuw×_@¯÷ÚPu} @ÊçT<Õ_@l´_u} @’v>Õ_@æz´&‡} @…ö=y×_@¡®}‡} @ûZuw×_@¯÷ÚPu} @\0\0\0\0\0\0\0\0\0êñ•Ó_@†ú´\0o} @æ`vUÑ_@Õ‘o} @{DWÑ_@œr´Ö€} @?.d’Ó_@”ËPÈ€} @êñ•Ó_@†ú´\0o} @\0\0\0\0\0\0\0\0\0$ñ_@*ù6¦š} @MîR’_@k˜š} @ÜJP’_@ÖgÐˆ} @Š*_@$T’Þˆ} @$ñ_@*ù6¦š} @\0\0\0\0\0\0\r\0\0\0s¡9_@›ŽéÝr} @™Wáe7_@yÂ1ìr} @g¬g7_@þÛÑ³„} @4Ùvi7_@póq{–} @Ak7_@ÔC¨} @¸Þa¦9_@%¦É4¨} @l‚á;_@×Ý€&¨} @!\\¢>_@ê¯7¨} @r×\Z>_@XÉ—P–} @Š>_@¸à÷ˆ„} @ÎeìÝ;_@mï@—„} @›?Ì¢9_@…˜‰¥„} @s¡9_@›ŽéÝr} @\0\0\0\0\0\0\0\0\0ÈÝ2ã_@ü}\'+’} @.FA0ã_@Œc€} @™°r.ã_@(ºð›n} @°-Sóà_@ÄWªn} @…¶!õà_@s‹òq€} @_Aðöà_@ü9’} @ò¢Ð»Þ_@†ôG’} @#Ÿ½Þ_@Ï’¤} @;Î¾øà_@j)¤} @ewÞ3ã_@ÍÜÂò£} @ÈÝ2ã_@ü}\'+’} @\0\0\0\0\0\0\0\0\0$ñ_@*ù6¦š} @ÉWÐÛ_@!a´š} @‚R—Ý_@ˆÓ|¬} @8O^ß_@ëƒªC¾} @ø4\Z_@\n=€5¾} @‚+¸_@ œÛm¬} @$ñ_@*ù6¦š} @\0\0\0\0\0\0\0\0\0€jÂ/‡_@ÓË5Ð} @’û-‡_@Ñö&n¾} @Ã}i‰_@Ïàý_¾} @|g=¤‹_@,eÔQ¾} @†wv¢‹_@P¥/Š¬} @šUg‰_@yY˜¬} @œ»4,‡_@‚¦¬} @­Úñ„_@ì¸ª´¬} @a¤Úò„_@3§O|¾} @p¡ô„_@[“ôCÐ} @€jÂ/‡_@ÓË5Ð} @\0\0\0\0\0\0\0\0\0ø4\Z_@\n=€5¾} @h@F_@ÔÛ$ýÏ} @ï0gW’_@ØúîÏ} @vˆ’”_@<þÎàÏ} @…úÀ”_@f~*¾} @½ U’_@ˆU\'¾} @ø4\Z_@\n=€5¾} @\0\0\0\0\0\0\0\0\0éM%á_@02OÐ} @jY¦‹_@ë"yÐ} @WMË§‹_@§Þáá} @”Nìâ_@rÞóÒá} @éM%á_@02OÐ} @\0\0\0\0\0\0\0\0\0ÞUzæ_@È0=b~ @ ;Y«‹_@ñOgp~ @ÿ4 ­‹_@~8~ @}\\Aè_@ÜÖá)~ @ÞUzæ_@È0=b~ @\0\0\0\0\0\0\0\0\0)^­â_@dÖF~ @æ¿=rà_@6™U~ @[žtà_@†²~ @^z\'¯â_@Ø¼x~ @)^­â_@dÖF~ @\0\0\0\0\0\0\0\0\0àÝ6‡_@Û1_T~ @ž²¼û„_@–/ˆb~ @6ˆƒý„_@-*)~ @fÂ¤8‡_@K)~ @àÝ6‡_@Û1_T~ @\0\0\0\0\0\0\0\0\0ÿ4 ­‹_@~8~ @„ÿq‰_@~Î5F~ @úÅs‰_@u‘Ú\r)~ @Ø0ç®‹_@ü¸°ÿ(~ @ÿ4 ­‹_@~8~ @\0\0\0\0\0\0\0\0\0l,i%ç_@˜ò~ @eTHêä_@‰?\0~ @YNìä_@µYáÇ&~ @ 32\'ç_@::§¹&~ @l,i%ç_@˜ò~ @\0\0\0\0\0\0\0\0\0[—)%_@#×[ã(~ @eê_@áz†ñ(~ @­oÏë_@Ó+¹:~ @±®ð&_@›i\0«:~ @[—)%_@#×[ã(~ @\0\0\0\0\0\0\0\0\0’gð°â_@Ö&~ @Î~Ïuà_@ÇgTä&~ @?a˜wà_@õËö«8~ @ÄV¹²â_@3h½8~ @’gð°â_@Ö&~ @\0\0\0\0\0\0\0\0\0)rµîX_@‡†â#~ @2ó”³V_@OåRð#~ @ˆy`µV_@‘ò·5~ @?ðX_@)¡£©5~ @)rµîX_@‡†â#~ @\0\0\0\0\0\0\0\0\0½iw<Þ_@Ê/º8~ @=pVÜ_@bhÈ8~ @);Ü_@¹ã\nJ~ @kA@>Þ_@´;ÒJ~ @½iw<Þ_@Ê/º8~ @\0\0\0\0\0\0\0\0\0¥6ÞÈM_@ÝÐ\'ñ5~ @ì ½K_@\ZCtÿ5~ @~éˆK_@c¹ÇG~ @÷‹©ÊM_@ˆ7Ç¸G~ @¥6ÞÈM_@ÝÐ\'ñ5~ @\0\0\0\0\0\0\0\0\0æôO·­_@ÖÙˆ3~ @˜n¹­_@6ÔuPE~ @Î¸=ô¯_@dÚBE~ @]2pò¯_@¶${z3~ @æôO·­_@ÖÙˆ3~ @\0\0\0\0\0\0\0\0\0‹hïlÑ_@çZ2V~ @Ì !kÑ_@â’fjD~ @Áô\00Ï_@:ÊxD~ @À/Ï1Ï_@÷Xf@V~ @‹hïlÑ_@çZ2V~ @\0\0\0\0\0\0\0\0\0¡JbE_@Ø²4€B~ @.cB\n_@¿ ¦ŽB~ @ÅO_@á?VT~ @øC2G_@ZcÎGT~ @(6R‚_@	€\\9T~ @0‚€_@NßÂqB~ @¡JbE_@Ø²4€B~ @\0\0\0\0\0\0\0\0\04T‘K_@¦-³ŽY~ @×‚3VI_@}YÿœY~ @§ÂþWI_@NÛždk~ @¢€“K_@ÙŸRVk~ @4T‘K_@¦-³ŽY~ @\0\0\0\0\0\0\0\0\0lR©\r_@Æ|à¬T~ @Ãi2n_@3O»T~ @\Zÿp_@¡_é‚f~ @3"«\r_@¢™ztf~ @lR©\r_@Æ|à¬T~ @\0\0\0\0\0\0\0\0\0LaÒ•_@}«!sT~ @g²Z_@Cø‘T~ @a/‚\\_@Ïå+If~ @f6¢—_@D‰»:f~ @g;ÂÒ_@ÇJ,f~ @ŠYòÐ_@ù°dT~ @LaÒ•_@}«!sT~ @\0\0\0\0\0\0\0\0\0ÆkMUÕ_@^Ó÷In~ @D,\ZÓ_@å/Xn~ @ðáôÓ_@\n½Ñ€~ @hWÕ_@û|š€~ @ÆkMUÕ_@^Ó÷In~ @\0\0\0\0\0\0	\0\0\0^7þäÕ_@aÔÔÜg~ @Ô/ãÕ_@Þ-9V~ @TŸ¨Ó_@4÷#V~ @‹hïlÑ_@çZ2V~ @N²½nÑ_@Ü žùg~ @þ‹pÑ_@Âä9Áy~ @_N¬«Ó_@aÕ²y~ @×õÝ©Ó_@p­9ëg~ @^7þäÕ_@aÔÔÜg~ @\0\0\0\0\0\0\0\0\0^7þäÕ_@aÔÔÜg~ @¦œÌæÕ_@Õxp¤y~ @èèì!Ø_@h*–y~ @ßv Ø_@®•oÎg~ @^7þäÕ_@aÔÔÜg~ @\0\0\0\0\0\0\0\0\0cùz§Î_@^âá’~ @–>œâÐ_@^«õ‘~ @z«ÓàÐ_@u—.€~ @s²¥Î_@;?<€~ @cùz§Î_@^âá’~ @\0\0\0\0\0\0\0\0\0"+¿Ê_@[eìy~ @ŸÛ\\½Ê_@MÉ$h~ @3%}øÌ_@ÊÖeh~ @ðô®öÌ_@dñÉNV~ @¸Ž»Ê_@0$-]V~ @Gyn€È_@WñkV~ @‹d ~È_@sêó£D~ @r0€CÆ_@ABV²D~ @n8NEÆ_@ÜXòyV~ @mBGÆ_@gmŽAh~ @oNêHÆ_@ã*	z~ @v\\¸JÆ_@OÆÐ‹~ @‘ÃØ…È_@¦ùcÂ‹~ @ª(ùÀÊ_@Yý\0´‹~ @À‹üÌ_@g›¥‹~ @xWKúÌ_@!ºÞy~ @"+¿Ê_@[eìy~ @\0\0\0\0\0\0\0\0\0¦œÌæÕ_@Õxp¤y~ @_N¬«Ó_@aÕ²y~ @ê¨z­Ó_@ºqz‹~ @ñ›èÕ_@8l‹~ @¦œÌæÕ_@Õxp¤y~ @\0\0\0\0\0\0\0\0\0cùz§Î_@^âá’~ @1²YlÌ_@’~ @É-"nÌ_@äºÙ£~ @¼C©Î_@n¶„Ë£~ @cùz§Î_@^âá’~ @\0\0\0\0\0\0\0\0\0sXÁ®\r_@+Í®Š~ @×/¡s_@³²Š~ @>Ëpu_@!Ù·Ù›~ @š\0‘°\r_@ÕãHË›~ @sXÁ®\r_@+Í®Š~ @\0\0\0\0\0\0\0\0\0“TÂ‡_@ÚU)‰~ @"<¢L_@‚h›ž‰~ @Ž=rN_@Ã5f›~ @Àb’‰_@SîÂW›~ @î…²Ä!_@?fPI›~ @þjâÂ!_@ŽÝ¶‰~ @“TÂ‡_@ÚU)‰~ @\0\0\0\0\0\0\0\0\0Ä‘"9&_@¼Ðd‰~ @bþ#_@žÿCs‰~ @§Òÿ#_@†xÝ:›~ @5Æò:&_@*%j,›~ @Rãv(_@)lö›~ @ ¢Bt(_@Ó]V‰~ @Ä‘"9&_@¼Ðd‰~ @\0\0\0\0\0\0\0\0\0Õâ›3_@"Ð‰~ @SÏÂ`1_@uŠ‰~ @ˆC“b1_@¹#äš~ @†V³3_@ƒÚ­Õš~ @Õâ›3_@"Ð‰~ @\0\0\0\0\0\0\0\0\0WR_@ŽÍ¦t›~ @í1Ø_@´$ƒ›~ @×Ú_@vê±J­~ @\r"_@ˆƒ@<­~ @WR_@ŽÍ¦t›~ @\0\0\0\0\0\0\0\0\0™’"PÆ_@%µš\'Á~ @øC‹È_@Xï7Á~ @T«cÆÊ_@åÃÔ\nÁ~ @­4„Í_@Ì2qüÀ~ @ZúµÿÌ_@ÃWÕ4¯~ @ÂçýÌ_@œz9m~ @4RÇÂÊ_@Dìœ{~ @Â}•ÄÊ_@#Ù8C¯~ @)ÿt‰È_@ßô›Q¯~ @Š~TNÆ_@õªþ_¯~ @™’"PÆ_@%µš\'Á~ @\0\0\0\0\0\0\0\0\0ïI×\'ž_@\0¸H*Â~ @\\–¶ì›_@ƒò£8Â~ @ºƒî›_@í$A\0Ô~ @mz¤)ž_@»ÚåñÓ~ @ïI×\'ž_@\0¸H*Â~ @\0\0\0\0\0\0\0\0\0?Ùí~_@lÇ¿ºÔ~ @§b¸²|_@ˆ‚ÉÔ~ @ÔÕ„´|_@@Ž³æ~ @¿¥ï~_@{Ã]‚æ~ @2¦Æ*_@“tæ~ @ú(_@ª¦i¬Ô~ @?Ùí~_@lÇ¿ºÔ~ @\0\0\0\0\0\0\0\0\0ï\r¿‹Ž_@y‹\\VÔ~ @?žPŒ_@!µdÔ~ @kRŒ_@4¬R,æ~ @\'ç‹Ž_@áúæ~ @ï\r¿‹Ž_@y‹\\VÔ~ @\0\0\0\0\0\0\0\0\0ÙßPð›_@FUÞÇå~ @Á0µ™_@I9Öå~ @Á+ý¶™_@w‡Ö÷~ @›ò›_@ƒ{÷~ @qá>-ž_@\Z ÷~ @î¬q+ž_@fû‚¹å~ @ÙßPð›_@FUÞÇå~ @\0\0\0\0\0\0\0\0\0/Íô§_@c›€å~ @$ÔÜ¤_@Þ‹nŽå~ @êb¡Þ¤_@j{V÷~ @·4Â§_@>{®G÷~ @/Íô§_@c›€å~ @\0\0\0\0\0\0\0\0\0O´ã\ZŠ_@+.æÉ	 @¤»Âß‡_@‡>Ø	 @žtá‡_@ÁËÛŸ @	z°Š_@ºÕƒ‘ @O´ã\ZŠ_@+.æÉ	 @\0\0\0\0\0\0\0\0\0‡qˆB•_@•¹(‚	 @ç‚g“_@6œ‚	 @§{4	“_@ X @wUD•_@ÈÆI @jpv—_@Óºk; @&^©}—_@NqÎs	 @‡qˆB•_@•¹(‚	 @\0\0\0\0\0\0\0\0\0p÷R{é_@¯\rJ– @b1@ç_@ll…¤ @§†úAç_@…\'l1 @Ã(}é_@Õì]1 @p÷R{é_@¯\rJ– @\0\0\0\0\0\0\0\0\0ÆA}Š_@7{!Y- @™/\\ã‡_@ç€yg- @—ì(å‡_@4/? @†J Š_@¦¿ ? @ÆA}Š_@7{!Y- @\0\0\0\0\0\0	\0\0\0A³Ý„—_@÷ŠC’P @÷šƒ—_@­G¦Ê> @ˆïG•_@ý¾\0Ù> @Ž~"F•_@êic- @iv“_@ãk½- @.sÎ“_@£ÐZç> @ôq›“_@G3ø®P @›“¼I•_@ôž P @A³Ý„—_@÷ŠC’P @\0\0\0\0\0\0\0\0\0®i:½%_@^RlS @æã‚#_@¡c˜zS @ßfãƒ#_@ÖÑ8Be @gù¿%_@ü{ò3e @®i:½%_@^RlS @\0\0\0\0\0\0\0\0\0A³Ý„—_@÷ŠC’P @ŒÍª†—_@;ÌàYb @ñ÷ËÁ™_@çÏ…Kb @äÐþ¿™_@QžèƒP @A³Ý„—_@÷ŠC’P @\0\0\0\0\0\0\0\0\0ñ÷ËÁ™_@çÏ…Kb @\0!™Ã™_@oÿ"t @$Vºþ›_@ÄÇt @S íü›_@êm*=b @ñ÷ËÁ™_@çÏ…Kb @\0\0\0\0\0\0\0\0\0kŠ:»_@¶£;s @Riÿ¸_@¬¤þIs @Â/7¹_@uöš… @m¹_@/F7Ù– @ñA&>»_@Ð%ÖÊ– @‚UX<»_@Ìå9… @kŠ:»_@¶£;s @\0\0\0\0\0\0\0\0\0ßlM­_@„^Êî @§:+r›_@K©øü @i»òs›_@ÃœÄ¯ @dú¯_@Ïhn¶¯ @ßlM­_@„^Êî @\0\0\0\0\0\0\0\0\0óòÞ_@°_)¬§ @äóå¶Ü_@têº§ @´£´¸Ü_@–:,‚¹ @ƒÏÕóÞ_@ Äs¹ @óòÞ_@°_)¬§ @\0\0\0\0\0\0\0\0\0¤ÓþëŸ_@›¡ãoÁ @ä‰Ü°_@q~Á @`¤²_@\'w¶EÓ @ãqÆíŸ_@=˜‡7Ó @jÆè(¢_@¦SX)Ó @i!\'¢_@ƒl´aÁ @¤ÓþëŸ_@›¡ãoÁ @\0\0\0\0\0\0\0\0\0i”_@ðæD¾ @»rÛ_@Wc,S¾ @hù<Ý_@æóÌ\ZÐ @zÞ^_@ˆq‡Ð @i”_@ðæD¾ @\0\0\0\0\0\0\0\0\0!jã_@:ôV¹ @Nùö.á_@êŸ\\e¹ @¦ÄÅ0á_@zÎ÷,Ë @/ùækã_@çXË @!jã_@:ôV¹ @\0\0\0\0\0\0™\0\0\0ÿÿó_@rRò¸ @»Ï0ó_@³Ÿs*§ @]¢aó_@äêØb• @w’ó_@4>›ƒ @eh³=õ_@ÐÒŒƒ @ ‚?õ_@0wmT• @žœ£z÷_@ÒF• @ÁWÔx÷_@sg~ƒ @Eõ³ù_@*×úoƒ @€õ%²ù_@zM`¨q @éw÷_@mÌ¶q @Ô5u÷_@Ñ1ï_ @;þ:õ_@ {ý_ @^&ôþò_@À` @|LÓÃð_@ážs\Z` @ó3Âð_@ÒØRN @Ídã†î_@x;CaN @¤“ÂKì_@3?­oN @¡–óIì_@âP¨< @¡›$Hì_@u`wà* @GSEƒî_@6|\rÒ* @‹Mvî_@y™r\n @ÔI§î_@ª´×B @!HØ}î_@ÌÍ<{õ~ @rH	|î_@Þä¡³ã~ @Ë)·ð_@òÙ7¥ã~ @¥KJòò_@_iÍ–ã~ @9Êj-õ_@&“bˆã~ @-ð9/õ_@×LýOõ~ @yZj÷_@8’Aõ~ @8®)l÷_@©,	 @EBJ§ù_@èÀú @Ã…©ù_@%~[Â @Ž$:äû_@¶Gï³ @Òv	æû_@õË‰{* @ËØçû_@&N$C< @eù"þ_@Ž’·4< @täÈ$þ_@âRüM @z¥é_\0_@ßÑäíM @©5\Z^\0_@MqJ&< @çç:™_@eêÜ< @Zmk—_@y—BP* @ÓŒÒ_@ªºÔA* @Š‹¼Ð_@su:z @Ñô›•_@B¨ˆ @M~Ì“_@së\rÁ @DíÎ_@). ² @‡Í_@Ñäëô~ @Ï	ý‘_@X’sùô~ @T—-_@,7Ù1ã~ @Ý$\rU\0_@KoF@ã~ @–ŠÜV\0_@8Úàõ~ @W	¼þ_@r¼Mõ~ @^°ìþ_@ÃA³Nã~ @Ü9ÌÞû_@•®]ã~ @«ïüÜû_@"…•Ñ~ @}§-Ûû_@ƒ“êÍ¿~ @yH\r ù_@-{VÜ¿~ @pçìd÷_@2ýÁê¿~ @Êºc÷_@M\'#®~ @}dý\'õ_@¼Y’1®~ @+Ýìò_@¶\0ý?®~ @\nû\rëò_@/bxœ~ @w­í¯ð_@›`Ì†œ~ @Þ]Ítî_@,6•œ~ @}Uœvî_@½Ñ\\®~ @÷{;ì_@É“:k®~ @A­9ì_@Ú’Ÿ£œ~ @ ¸Œþé_@„“²œ~ @úblÃç_@ˆ.qÀœ~ @U4;Åç_@òNˆ®~ @ëÏ\ZŠå_@”t–®~ @RLˆå_@ècÙÎœ~ @ºH}†å_@µ1>‹~ @Ïû\\Kã_@´ñ¥‹~ @Ý¬<á_@L\r$‹~ @ê[ÕÞ_@Æ@t2‹~ @šÁMÓÞ_@KÝØjy~ @d{-˜Ü_@¤\\?yy~ @Ùï^–Ü_@^ç£±g~ @]´>[Ú_@Xñ	Àg~ @(3\r]Ú_@Wv¥‡y~ @èèì!Ø_@h*–y~ @ö\\»#Ø_@½¦]‹~ @ñ›èÕ_@8l‹~ @AmiêÕ_@‰»§3~ @yI¯Ó_@ÅÃB~ @ê¨z­Ó_@ºqz‹~ @ßKZrÑ_@˜¦Õˆ‹~ @þ‹pÑ_@Âä9Áy~ @È«k5Ï_@CžÏy~ @Òì97Ï_@ÒÓ9—‹~ @Þ/9Ï_@N£Õ^~ @­›(tÑ_@\\fqP~ @~íöuÑ_@$\r¯~ @d±Ó_@Âq¨	¯~ @ Äå²Ó_@¢DÑÀ~ @9\'´´Ó_@~Çß˜Ò~ @FµÔïÕ_@zŠÒ~ @¥&£ñÕ_@*(Rä~ @Ø‹‚¶Ó_@Jo{`ä~ @ïa{Ñ_@ÅPànä~ @æH0}Ñ_@9|6ö~ @xòP¸Ó_@(ö~ @[ºÓ_@±¸²ï @Ê¤þ~Ñ_@ž¹þ @æH0}Ñ_@9|6ö~ @QBÏ_@Æ‘àDö~ @sìÝCÏ_@ãT| @\Z2½Í_@Šà\Z @¼uœÍÊ_@yZD) @^­jÏÊ_@ö:àð @~v‹\nÍ_@H[|â @å¼YÍ_@û)ª+ @ÃzGÏ_@ìÔ³›+ @îåHIÏ_@Ú‘Oc= @ˆÄi„Ñ_@kÇêT= @x(8†Ñ_@„r†O @ÐYÁÓ_@´2!O @‡„\'ÃÓ_@\rÌ¼Õ` @xHþÕ_@ÛWÇ` @%ùyüÕ_@:»ÿN @²{«úÕ_@” 8= @A\0ÝøÕ_@Ñs„p+ @Ìý3Ø_@#ˆb+ @ATÌ5Ø_@+º)= @Î*ípÚ_@\Z¥S= @Vÿ\r¬Ü_@aÞì= @£Ü­Ü_@Ù:ˆÔN @ÌH«¯Ü_@J•#œ` @‹ðy±Ü_@®í¾cr @¾õXvÚ_@—ã%rr @Á’\'xÚ_@¤IÁ9„ @/‰=Ø_@žé\'H„ @tÕ>Ø_@U]Ã– @Æ1öyÚ_@ ­\\– @FµÜ_@B˜õò• @dX8ðÞ_@9Žä• @ÚŸiîÞ_@²Øò„ @`£Š)á_@¹‹„ @¬hY+á_@„<&Ö• @ðvzfã_@%ö½Ç• @KIhã_@%Y§ @dj£å_@_]ð€§ @ÚF9¥å_@‘n‹H¹ @µ+§å_@¨}&Ë @8\\)âç_@¾<½Ë @¶ŠJê_@\'–SóÊ @0·kXì_@ä‰éäÊ @¥áŒ“î_@öÖÊ @ÃÉ½‘î_@ÕGä¹ @såÞÌð_@ùy\0¹ @ÿÿó_@rRò¸ @\0\0\0,Å$“å_@Êe|| @|öU‘å_@ö?á´õ~ @ìvÌç_@å»x¦õ~ @[iEÎç_@ýÑn @ÐFÐç_@æ®5 @Ý•ó”å_@‰D @,Å$“å_@Êe|| @\0\0\0jFá_@ÆÏ\nä~ @F]wá_@X†zBÒ~ @;ß—Rã_@\rí4Ò~ @,_¸å_@îª%Ò~ @Ó)‡å_@Fíã~ @!fTã_@¿&®ûã~ @jFá_@ÆÏ\nä~ @\0\0\0È6ª`Ú_@$zÜ~ @ö³Û^Ú_@Gù@O‹~ @òü™Ü_@ÙÏÚ@‹~ @„˜Ê›Ü_@û@v~ @*™Ü_@°Ð®~ @›»xbÚ_@õøwÞ®~ @È6ª`Ú_@$zÜ~ @\0\0\0\0\0\0\0\0\0ÿÿó_@rRò¸ @ƒ0Ï	ó_@©¹Ê @êTðDõ_@#`=«Ê @Â!Cõ_@?¿¢ã¸ @ÿÿó_@rRò¸ @\0\0\0\0\0\0	\0\0\07®ý–_@•Føà¯ @ò‹Â”_@Õo%ï¯ @\nOSÄ”_@þµÉ¶Á @~­\ZÆ”_@úm~Ó @ì\râÇ”_@<Få @"y—_@gää7å @ð=—_@Ø±@pÓ @º uÿ–_@C}œ¨Á @7®ý–_@•Føà¯ @\0\0\0\0\0\0\0\0\0Eõ³ù_@*×úoƒ @¸–Äµù_@É^•7• @[ê“·ù_@Yä/ÿ¦ @4ï´òû_@å/Ãð¦ @œQ„ôû_@¢£]¸¸ @\n¶Söû_@FøÊ @`Òt1þ_@£ÛŠqÊ @•ED3þ_@€;%9Ü @ªlen\0_@qŒ·*Ü @³ì•l\0_@V<cÊ @ÂnÆj\0_@6ê‚›¸ @0a¥/þ_@Âyð©¸ @òÕ-þ_@ÅVâ¦ @à„,þ_@¸¯»\Z• @ÏŽåðû_@º()• @n0ïû_@7BŽaƒ @Eõ³ù_@*×úoƒ @\0\0\0\0\0\0\r\0\0\0¥_½h_@FAŽ‹€ @û&?øj_@;}€ @Pì`3m_@4wçn€ @W²”1m_@ðI§ñ @bzÈ/m_@šÄªßß @mDü-m_@4hÎ @`¥Úòj_@%Ñ_&Î @O¹·h_@iÔ²4Î @À …¹h_@PQüß @“Î¦ôj_@/=þíß @Æùröj_@*§œµñ @2?Q»h_@¹ÉïÃñ @¥_½h_@FAŽ‹€ @\0\0\0\0\0\0\0\0\0ÿ(¦Z²_@m fêï @ŠeØX²_@ë+Ê"Þ @õ÷¶°_@hô)1Þ @§®„°_@xÆøï @L2cä­_@ ë%ð @ð³A©«_@ö÷„ð @ S««_@}™!Ý€ @@Þ0æ­_@ö|ÂÎ€ @]gR!°_@ÀúbÀ€ @wîs\\²_@ß²€ @ÿ(¦Z²_@m fêï @\0\0\0\0\0\0\0\0\0ÓÜn½¿_@ 8”ï @ŽnM‚½_@\\r¢ï @Ïs„½_@K–j€ @×î<¿¿_@XL»[€ @ÓÜn½¿_@ 8”ï @\0\0\0\0\0\0\0\0\02z§\Z_@Æäó€ @Á"Xl_@ŠÊ8Ž€ @çy"n_@rÙU€ @ý•D©\Z_@´|”G€ @2z§\Z_@Æäó€ @\0\0\0\0\0\0\0\0\0Ö6eéç_@±%) € @(=–çç_@‹.ŽX\0€ @`æt¬å_@­ž÷f\0€ @LÓC®å_@¥’.€ @Ö6eéç_@±%) € @\0\0\0\0\0\0\0\0\0Æö^ès_@ú™&Ó&€ @†’’æs_@Ætˆ€ @sÆp«q_@UMÝ€ @]øNpo_@7À1(€ @Cro_@·Ðï&€ @ð=­q_@0‚{á&€ @Æö^ès_@ú™&Ó&€ @\0\0\0\0\0\0\0\0\01B‡ _@½1´%€ @âð#Â¢_@:ÍÓ¥%€ @‘Eý¤_@(v—%€ @  xû¤_@Ž[ÙÏ€ @³€VÀ¢_@ñ6Þ€ @ÆÞ4… _@ã ”ì€ @1B‡ _@½1´%€ @\0\0\0\0\0\0\0\0\0ºðzoÁ_@\n	k=€ @2‡²mÁ_@GÈH+€ @®2¿_@ä(ýV+€ @skX4¿_@*: =€ @ºðzoÁ_@\n	k=€ @\0\0\0\0\0\0\0\0\0Æö^ès_@ú™&Ó&€ @]+ês_@½Äš8€ @ž@M%v_@’_oŒ8€ @œÍ€#v_@LÑÄ&€ @Æö^ès_@ú™&Ó&€ @\0\0\0\0\0\0\0\0\01B‡ _@½1´%€ @‘àKž_@“æÂ%€ @*ê­Mž_@	à*Š7€ @ §Ïˆ _@…öÍ{7€ @1B‡ _@½1´%€ @\0\0\0\0\0\0\0\0\0Ö6eéç_@±%) € @‡24ëç_@Å\ZÄç#€ @=0íç_@Ç\r_¯5€ @G«$(ê_@Áõ 5€ @M$Fcì_@žŠ’5€ @\rwaì_@…ÊïÊ#€ @Þ÷§_ì_@ëôT€ @[UÉšî_@Dêô€ @h5ú˜î_@|O-\0€ @ „Ôð_@Buä\0€ @Ô°êÕð_@o-æ€ @H\nó_@,±Ø€ @¹a-Lõ_@<Ï§É€ @~^Jõ_@Ž6\r\0€ @I×ŽHõ_@Ñ›r:î @•¿Fõ_@ÿ×rÜ @ícžó_@´±CÜ @¿0}Ðð_@¹þ®Ü @mYLÒð_@»IWî @w+—î_@²´eî @~Ó	\\ì_@‰Ctî @«äØ]ì_@Aº;\0€ @ì‘·"ê_@½X$J\0€ @\\˜†$ê_@$@¿€ @Ö6eéç_@±%) € @\0\0\0\0\0\0\0\0\0Z÷Ö_@qé "6€ @©ÅÖ_@@X<êG€ @í@çPØ_@ôpÕÛG€ @ƒšOØ_@ß:6€ @Z÷Ö_@qé "6€ @\0\0\0\0\0\0\0\0\0þ:0ü_@”–-5€ @ÐÆù_@|Æ<5€ @ä5ÞÇù_@z9žG€ @­ÿü_@>÷0õF€ @2#!>þ_@TOÃæF€ @â£Q<þ_@Ùû(5€ @þ:0ü_@”–-5€ @\0\0\0\0\0\0¡\0\0¥_½h_@FAŽ‹€ @O–ûf_@Ë\rá™€ @öÊÙFd_@£t3¨€ @Ä\rEd_@ÍÝ”àñ @pì	b_@SÏæîñ @E b_@È&H\'à @¿ACd_@åDöà @Ä\rEd_@ÍÝ”àñ @‚/€f_@™†BÒñ @îpc~f_@Uý£\nà @>a—|f_@rCÎ @,¼uAd_@î©WQÎ @Tb_@.|©_Î @l2Ë__@ÁèúmÎ @ñÀ]_@¨ïK|Î @ÞïT[_@ãœŠÎ @ÉdÍY_@rÌì˜Î @§£Y_@IáMÑ¼ @…ä5Y_@ô®	« @d\'jY_@±B™ @“œHÙV_@°«_P™ @òLÛV_@¦ªþ« @`³òŸT_@šûM&« @Â\'žT_@í®^™ @ð€cR_@¬Èýl™ @ÍÑdR_@ãæœ4« @¨°œfR_@<ü¼ @ýX¾¡T_@íí¼ @œ\0Š£T_@‰ŒµÎ @…KhhR_@ÛÃÎ @n”F-P_@ðÁ)ÒÎ @S{+P_@E˜Š\n½ @8z¯)P_@€lëB« @¥ÚîM_@rŒ9Q« @þYYðM_@ÖÇØ½ @¦«7µK_@»‘&\'½ @> ·K_@¥ÚÅîÎ @&cá{I_@|NýÎ @üÌ¬}I_@ÿ¤²Äà @!‹BG_@ÉÂÿÒà @F3iE_@åzLáà @öâE_@\'­Ï @¤¿@G_@§\\`Ï @üHô>G_@ƒôÀC½ @èï(=G_@CŠ!|« @×˜];G_@ñ‚´™ @ÃC’9G_@‘¯âì‡ @ÕÏ³tI_@Þß•Þ‡ @¨1vI_@ >5¦™ @~•JxI_@T›Ôm« @9l³K_@¸F‡_« @zÈ ±K_@¤ùç—™ @M]ÂìM_@üNš‰™ @ðã\'P_@ª>L{™ @ð€cR_@¬Èýl™ @ì9aR_@g¨^¥‡ @h&P_@Å­³‡ @ëáL$P_@ÏÜ\rìu @žh+éM_@ãÍ[úu @Ní	®K_@LY©v @\0pèrI_@öv @-qI_@(WOd @¹‚>¬K_@\nAd @Gñ_çM_@=Š¼2d @ð{”åM_@‰DkR @™ÉãM_@Îü}£@ @£[êP_@™:0•@ @‹ÝP_@c\0‘Í. @Ó!@XR_@$èB¿. @«¬ZR_@»â†@ @µû,•T_@3…“x@ @½HNÐV_@’Dj@ @a¤‚ÎV_@­†¥¢. @·ÌV_@JyÛ @ªaëÊV_@Ôig @n†Y_@Þ? @PÛ@Y_@ú=y=ù~ @Sña?[_@þ½)/ù~ @v;–=[_@¬ÉŠgç~ @62uY_@:Úuç~ @\Z‹©\0Y_@4;®Õ~ @š‡Ê;[_@JÓëŸÕ~ @v;–=[_@¬ÉŠgç~ @µB·x]_@«ó:Yç~ @‚ëv]_@ëœ‘Õ~ @•z²__@åàKƒÕ~ @7¯@°__@·­»Ã~ @{Ãu]_@$ýÉÃ~ @¾Õþ9[_@ØÚLØÃ~ @\0æÝþX_@ï+œæÃ~ @æBýX_@×!ý²~ @Ì¡FûX_@¢^W ~ @	xg6[_@ÎãI ~ @CLˆq]_@UL¿: ~ @§“¼o]_@V] sŽ~ @\rÝðm]_@El«|~ @t(%l]_@$yâãj~ @lÔE§__@íª’Õj~ @z¥__@`Åó\rY~ @I²šàa_@(¡£ÿX~ @c~fâa_@wBÇj~ @Y&‡d_@”Ýñ¸j~ @5Sd_@Ì¡€|~ @Þ!d_@õc/HŽ~ @‰?\\f_@‹EÞ9Ž~ @)‰^f_@þõ| ~ @aS,™h_@Kb+óŸ~ @ÁMøšh_@\rÊº±~ @#JÄœh_@±h‚Ã~ @†Hžh_@R8JÕ~ @êH\\ h_@áÐ¥ç~ @NK(¢h_@agDÙø~ @³Oô£h_@Ñûâ \n @õ8Óhf_@\\í4¯\n @›2Ÿjf_@aÓv @VÀ¥h_@2Žh @‚^Œ§h_@ 0. @@.klf_@T/r>. @è+7nf_@9Í@ @êhX©h_@Á¬¾÷? @Su$«h_@ç8]¿Q @¿ƒð¬h_@Ãû†c @(”¼®h_@KšNu @á0›sf_@zšì\\u @Œ6guf_@0‹$‡ @–¦ˆ°h_@Ñ8‡ @»T²h_@U×Ý˜ @pÑ ´h_@æÖu¥ª @àéìµh_@µVm¼ @-~ñj_@cÁ^¼ @z0,m_@È	nP¼ @‡Þc*m_@D©Ïˆª @b…eo_@ñù{zª @]%¹co_@ÿ¦Ý²˜ @ªêìao_@ÿQ?ë† @¥€Ë&m_@â’ù† @–®—(m_@¬F1Á˜ @Ì5víj_@®€„Ï˜ @ªëj_@dæ‡ @¥€Ë&m_@â’ù† @µTÿ$m_@P{ô1u @ù± `o_@îú #u @J{T^o_@Í¡\\c @ÌÉu™q_@gË®Mc @[ˆ©—q_@Ý†Q @›Fˆ\\o_@Fd”Q @ì¼Zo_@géÅÌ? @ëHÝ•q_@L2r¾? @[ˆ©—q_@Ý†Q @\ZÈÊÒs_@sS¼wQ @L—Ôs_@WZ?c @Ë`¸v_@í1c @Øì\rv_@`ÁgiQ @”A\rIx_@¤É[Q @K©ÙJx_@:æ°"c @Çïú…z_@-y[c @C4Á|_@w¦c @»v=ü~_@n¯÷b @Áèpú~_@y€0Q @É\\¤ø~_@Õsh? @¿ƒÅ3_@Z? @y’5_@òº!Q @.N³pƒ_@þcQ @³¨ænƒ_@¼-ÆK? @¦Ëª…_@³ãn=? @j;¨…_@ð Ñu- @/mn¦…_@\\3® @ÁcMkƒ_@Ô†Š¼ @9\Zmƒ_@O[(„- @íø1_@0’- @NX,0_@âKáÊ @ÁcMkƒ_@Ô†Š¼ @HÄ€iƒ_@F°ìô	 @™Å_._@«eC\n @éÄ>ó~_@iµ™\n @ö@rñ~_@y½ûIø~ @KQ¶|_@ç—QXø~ @S0{z_@­§fø~ @£êcyz_@^óŸæ~ @qýB>x_@Öò]­æ~ @Ä£v<x_@ÏÇ¿åÔ~ @Lª:x_@¸š!Ã~ @oöÝ8x_@kƒV±~ @-½ýu_@xÖ×d±~ @hv‰ÿu_@:v,Ã~ @QÁUv_@øQôÔ~ @<"v_@¦Œ²»æ~ @(]îv_@DÅPƒø~ @®ºv_@ÓûîJ\n @\\£™Ës_@KOCY\n @1_ÍÉs_@	¥‘ø~ @Ès_@ÑÀÊæ~ @ÝÜ4Æs_@|vhÕ~ @³žhÄs_@*Ê:Ã~ @ŒbœÂs_@®Û+s±~ @-½ýu_@xÖ×d±~ @—æðûu_@˜•9Ÿ~ @²¡$úu_@¬R›Õ~ @Ì^Xøu_@­\rý\r|~ @{y3x_@ÇÑ¨ÿ{~ @×³¬1x_@_š\n8j~ @ÂGÍlz_@}¶)j~ @­Ùí§|_@÷aj~ @Ó@º©|_@)ÿâ{~ @|ÝÚä~_@<¼©Ô{~ @•iã~_@Í³\rj~ @|÷._@\0ñµþi~ @Öxb_@*ö7X~ @¯÷Aá~_@O©mEX~ @Ë‡uß~_@ÁœÏ}F~ @ê©Ý~_@,Ž1¶4~ @É_@YúÛ§4~ @íý_@Vù=à"~ @M’0_@?öŸ~ @(DÚ~_@¿jõ&~ @®ÜÛ~_@€}“î"~ @#Q¼ |_@œèü"~ @ôïž|_@ŸyJ5~ @Þ¡Ïcz_@Ü"ŸC~ @µM¯(x_@yfóQ~ @Œ÷Žíu_@tDG`~ @aŸn²s_@Î¼šn~ @4ENwq_@‡Ïí|~ @é-<o_@ž|@‹~ @ÙŠ\rm_@Ä’™~ @¬*íÅj_@ç¥ä§~ @|ÈÌŠh_@\Z"6¶~ @Kd¬Of_@ª8‡Ä~ @þ‹d_@šé×Ò~ @æ•kÙa_@é4(á~ @±+Kž__@•\Zxï~ @}¿*c]_@¡šÇý~ @JQ\n([_@\nµ~ @ ïÕ)[_@ÂµÓ#~ @jöd]_@˜fÅ#~ @	ã __@d·#~ @ýY7Ûa_@Ç¨#~ @ðÎWd_@#¸vš#~ @Ê¡#d_@™„b5~ @}!DSf_@b´ÄS5~ @Uf_@ocG~ @¤vïd_@öN´)G~ @Ê¡#d_@™„b5~ @ Ýa_@.ïep5~ @aœâ¡__@ôµ~5~ @¹W®£__@ÃÝTFG~ @BÅh]_@µŒ¤TG~ @Í0m-[_@ÖóbG~ @¥Ô8/[_@æÜ’*Y~ @l1ôX_@4Ðá8Y~ @2Œ÷¸V_@ß]0GY~ @ŠÃºV_@ôÏk~ @d¢T_@œ¹k~ @”®DR_@ ‹k+k~ @j#MFR_@çÌ\nó|~ @®^,P_@çHX}~ @ÂÈ÷P_@¾—÷ÈŽ~ @Ø4ÃP_@ä– ~ @™T¢ÓM_@\Zäž ~ @íµmÕM_@stƒf²~ @íÆLšK_@TÐt²~ @œK_@à»o<Ä~ @vãK_@´!Ö~ @”kÂbI_@áº[Ö~ @g¹dI_@C.ûÙç~ @:	YfI_@•Ÿš¡ù~ @5ã7+G_@Xòæ¯ù~ @F(-G_@8q†w @WoÎ.G_@\nî%? @i¸™0G_@ÉhÅ/ @!jxõD_@½„/ @p¨C÷D_@\r±Ü@ @fK"¼B_@õÒüê@ @õ~í½B_@Æhœ²R @ÁèùD_@@“P¤R @+ÚúD_@lðkd @„´¸¿B_@ü;zd @õ~í½B_@Æhœ²R @)Ì‚@_@£ØçÀR @\\¥ªG>_@Öâ2ÏR @5‰<_@`‡}ÝR @ÛDT<_@ÿI¥d @%V<_@\n½lv @×ÊýÔ9_@¨h{v @OÆ2Ó9_@|˜g³d @ÇÃgÑ9_@AÆÇëR @=ÃœÏ9_@ÿñ\'$A @F(¾\n<_@ºÂÝA @ýó<_@ùû=N/ @±(<_@*3ž† @f]<_@Ihþ¾ @-I~@>_@.´° @ 7³>>_@ÚDéù~ @’<_@X›^÷ù~ @ÕpÈ9_@0Œ¨ú~ @ŽÞ¥Æ9_@”­>è~ @ÒÇ<_@XÌ¾/è~ @\'è<>_@v…t!è~ @;>_@ÄÔYÖ~ @…üÿ;_@HûhÖ~ @:1þ;_@(( Ä~ @ûR9>_@}\05’Ä~ @;>_@ÄÔYÖ~ @‹->v@_@\'ŠKÖ~ @¼st@_@-sêƒÄ~ @îý§r@_@A½J¼²~ @ï‡7>_@õ:•Ê²~ @âú»5>_@Psõ¡~ @!éÜp@_@7«ô ~ @`Õý«B_@{1`æ ~ @Ðµ2ªB_@‡À~ @B˜g¨B_@vÚ W}~ @ÿhˆãD_@MÀÕH}~ @¯@½áD_@P!6k~ @¬ÞG_@!±êrk~ @œÏG_@±K«Y~ @_\ZòßD_@B€–¹Y~ @$cÑ¤B_@0{áÇY~ @´|œ¦B_@Ú+k~ @¶¶{k@_@ÁÐËk~ @è©°i@_@z,ÖY~ @­î.>_@!@väY~ @»îZ0>_@¬k~ @¿$:õ;_@¤é_ºk~ @ÄXº9_@Ÿ]©Èk~ @PAä»9_@«JI}~ @“fÃ€7_@žh’ž}~ @]DŽ‚7_@5c2f~ @áZmG5_@+{t~ @coL3_@dÃ‚~ @¬53_@¥cJ¡~ @óýá3_@Éº³~ @õöÀÔ0_@œÖK ³~ @z´‹Ö0_@ÅùëçÄ~ @¼žj›._@Œ¿3öÄ~ @Q5._@KðÓ½Ö~ @B\0Ÿ._@út…è~ @„5!Ú0_@\0:,wè~ @\nùëÛ0_@WÌ>ú~ @½Ê ._@—KMú~ @©e,_@„Ú[[ú~ @?ˆ**_@È£iú~ @BÞR,*_@ˆMC1 @1ñ\'_@½ Š? @ÿ#üò\'_@x* @‚.*_@8•ãø @Ù>i,_@ÃLœê @‹0`¤._@¥žTÜ @†ß0_@àŠÎ @¾¶Ý0_@ùql @SØ3_@%$ø @–Ù¢\Z3_@sÄ¿ @†ß0_@àŠÎ @•OLá0_@´¡¬•/ @ã0_@z¶L]A @¬õ§._@sé”kA @;Ôl,_@Á¶ÜyA @ïžn,_@Ÿè|AS @ÏlÀ©._@¶53S @/‹«._@ô+Õúd @¥ip,_@u	e @]4r,_@=F½Ðv @\0ÿs,_@õq]˜ˆ @» ¯._@BfŠˆ @Îƒë°._@Q€µQš @Ÿ2\rì0_@ZÿlCš @\nØí0_@À\r¬ @‹N¶²._@Q˜U¬ @ú”w,_@5Ã\'¬ @õP_y,_@¼è=ï½ @ñ*{,_@)Þ¶Ï @ìÖô|,_@-~~á @Ãº¸._@áÓ5pá @€á¹._@¡ãÕ7ó @\Z|õ0_@«)ó @¶h%03_@àCó @öVð13_@ƒÎãâ€ @SNm5_@™$šÔ€ @³C4¨7_@PÆ€ @7Vã9_@»Ÿ¸€ @n(x<_@ÈÄº©€ @ÍšY>_@\'„o›€ @,¼”@_@×Ý#€ @^Êð’@_@M„Åò @û¨ÎB_@¡P8·ò @˜…4	E_@“îë¨ò @5`VDG_@Ù&Ÿšò @Ñ8xI_@rùQŒò @lšºK_@\\f~ò @ä»õM_@šm¶oò @¤¶Ý0P_@+haò @‰$/P_@•éÈ™à @bè3jR_@5z‹à @:ªU¥T_@ï\Z+}à @jwàV_@›Ûnà @v"CâV_@Í‘z6ò @ídY_@©œ*(ò @3´0Y_@«Éï€ @‰RZ[_@8yá€ @é\\t•]_@G(Ó€ @D.–Ð__@I×Ä€ @®bÒ__@VÅuŒ€ @Êùƒ\rb_@7\Z$~€ @ø÷Ob_@’¼ÂE\'€ @ÖÞqJd_@"œp7\'€ @Çë=Ld_@Ç,ÿ8€ @eÝ_‡f_@—¼ð8€ @\Zù+‰f_@ø[¸J€ @zõMÄh_@â\nªJ€ @ñ\ZÆh_@x¦q\\€ @\'<k_@«÷Rc\\€ @Úïoÿj_@š´›J€ @¡º£ýj_@r:Ô8€ @h‡×ûj_@ºØw\'€ @Ž¦µÀh_@6*Ë\Z\'€ @‚é¾h_@Æ¶,S€ @¥_½h_@FAŽ‹€ @\0\0\0+ÄU5_@\\2{± @JùS5_@ª8Ûé @ÝŒ\Z7_@†’Û @£Í;Ê9_@»hHÍ @,ÈÌ9_@8Cè” @¥zå7_@Ÿí1£ @+ÄU5_@\\2{± @\0\0\0)6ž¤7_@ct7á @d2Ó¢7_@ü poÏ @|ÿôÝ9_@ˆZ&aÏ @Àß9_@TÆ(á @)6ž¤7_@ct7á @\0\0\0êK¶._@Â•¨Ï @J´._@?®õà½ @Ÿã¢ï0_@­Ò½ @¿mñ0_@PMšÏ @êK¶._@Â•¨Ï @\0\0\03r7_@s\Z‘š @N7§›7_@Ì>ñPˆ @_ÑÈÖ9_@Ä6§Bˆ @çÙ“Ø9_@ÏG\nš @3r7_@s\Z‘š @\0\0\0tß@K>_@ÎFr^v @hÁuI>_@Ù•Ò–d @ö;—„@_@\n|‡ˆd @Äfb†@_@b\'Pv @tß@K>_@ÎFr^v @\0\0\0ðEÁ9_@n)ç²~ @ez¿9_@‘‰¡~ @£\n›ú;_@Ã{?¡~ @ïfü;_@SßØ²~ @ðEÁ9_@n)ç²~ @\0\0\0VÐø;_@u¢ŸI~ @\Z÷;_@Çÿ}~ @Çð%2>_@ØÝµs}~ @Öôð3>_@©U;~ @VÐø;_@u¢ŸI~ @\0\0\0J¦=m_@€÷¸X~ @lœqm_@»mnðF~ @”¥m_@ïáÏ(5~ @?Æ?o_@.{}\Z5~ @Ý ’Ao_@U÷âF~ @L£²|q_@MÉÓF~ @«Æ~~q_@Ç…g›X~ @ìJ€q_@1îcj~ @\ZP*Eo_@†éXqj~ @{7^Co_@uqº©X~ @J¦=m_@€÷¸X~ @\0\0\0DpÈ“h_@­yOœj~ @¢d”•h_@îc|~ @ì³sZf_@“?r|~ @PÌ§Xf_@rÞ ªj~ @DpÈ“h_@­yOœj~ @\0\0\0º7½s_@ïãP|~ @Að¿s_@•8ïã~ @Ð<ãƒq_@Ù¸Bò~ @m‚q_@T¤*|~ @º7½s_@ïãP|~ @\0\0\0“´#Wo_@µ(‰= @>ãïXo_@Š\'. @\0¹Îm_@áËz. @—m_@ÝZÜK @“´#Wo_@µ(‰= @\0\0\0\0\0\0\0\0\0ü£;bx_@ž·EJ€ @¢µ\'v_@ÿp\rTJ€ @¨,æ(v_@O€«\\€ @Ä\'dx_@ÇU\r\\€ @ü£;bx_@ž·EJ€ @\0\0\0\0\0\0\0\0\0¨ï®à_@ßîœØ_€ @CÊ¸°à_@? q€ @ûWÛëâ_@¼’q€ @)êâ_@d©aÊ_€ @¨ï®à_@ßîœØ_€ @\0\0\0\0\0\0\0\0\0Èa_@šì¸ô^€ @leô%_@g\'ú_€ @óF¾\'_@V`›Êp€ @É¶àb_@øZ¼p€ @¢$ž_@êe®p€ @–)9œ_@Lwæ^€ @Èa_@šì¸ô^€ @\0\0\0\0\0\0\0\0\0\'<k_@«÷Rc\\€ @N`k_@5Sñ*n€ @/r*>m_@w]n€ @2,^<m_@‘ÿT\\€ @\'<k_@«÷Rc\\€ @\0\0\0\0\0\0\0\0\0¶ãý&å_@YÈƒq€ @ûWÛëâ_@¼’q€ @Ýˆ¤íâ_@©Ì¥Yƒ€ @[!Ç(å_@ijKƒ€ @¶ãý&å_@YÈƒq€ @\0\0\0\0\0\0\0\0\0u§8²\Z_@cU·-p€ @’Kw_@¥˜ü;p€ @±®àx_@Ê3‚€ @V´\Z_@òàWõ€ @u§8²\Z_@cU·-p€ @\0\0\0\0\0\0\0\0\02Üî9_@dòÃeo€ @Fœö²7_@LÅto€ @	²Á´7_@#†®;€ @·þãï9_@Ÿ£c-€ @2Üî9_@dòÃeo€ @\0\0\0\0\0\0	\0\0\0"`E_@´Açå€€ @ÐýÃE_@†ÞGo€ @øE_@Hy¨V]€ @UtÖØB_@9õd]€ @+I´@_@“As]€ @öŸ@_@‰á:o€ @äÇ¡ÚB_@à­”,o€ @smÜB_@« 4ô€€ @"`E_@´Açå€€ @\0\0\0\0\0\0\0\0\0Ýˆ¤íâ_@©Ì¥Yƒ€ @bî²à_@91ágƒ€ @€K´à_@LOƒ/•€ @¾»mïâ_@2ÛG!•€ @Ýˆ¤íâ_@©Ì¥Yƒ€ @\0\0\0\0\0\0\0\0\0ÄM¦´_@ö…à€ @ë6&á¶_@`$Ò€ @ØGXß¶_@•ˆ\n~€ @rk6¤´_@º>é~€ @ÄM¦´_@ö…à€ @\0\0\0\0\0\0	\0\0\0"`E_@´Açå€€ @sÄZE_@Ð¢†­’€ @Å*&E_@Ý&u¤€ @ø„HVG_@ùØf¤€ @æ}TG_@ŠN9Ÿ’€ @W]ŸI_@””ë’€ @ßÓI_@³RLÉ€€ @Ñ ±RG_@ý™×€€ @"`E_@´Açå€€ @\0\0\0\0\0\0\0\0\0ÄM¦´_@ö…à€ @™bâj²_@\\æî€ @*:°l²_@ý»‚¶¡€ @2Ò§´_@#á!¨¡€ @ÄM¦´_@ö…à€ @\0\0\0\0\0\0\0\0\0WÉ _@bÂÈ\0£€ @8¡~á|_@› £€ @‹HKã|_@°ê½Ö´€ @n}m_@ÏˆfÈ´€ @WÉ _@bÂÈ\0£€ @\0\0\0\0\0\0\0\0\0Á&]X\r_@luiÉ€ @lÌ“_@j×1[É€ @]”µ‘_@9‘“·€ @tû’V\r_@U‹Ô¡·€ @Á&]X\r_@luiÉ€ @\0\0\0\0\0\0\0\0\0ú)ô}R_@"µO¤€ @w(|R_@Î³°W’€ @Š¸J·T_@aý`I’€ @-x¹T_@ïÿ¤€ @ú)ô}R_@"µO¤€ @ÜÞ¿R_@g´îæµ€ @Ò9âºT_@¹ÞžØµ€ @wý­¼T_@LÌ= Ç€ @.cÐ÷V_@Kí‘Ç€ @Æ’öV_@[£NÊµ€ @`Ä8ôV_@VÃ¯¤€ @ù÷lòV_@Dá;’€ @”-¡ðV_@!ýqs€€ @çú~µT_@ž	Â€€ @D?³³T_@É#ºn€ @¡…ç±T_@ä„ò\\€ @wjÅvR_@p£Ó\0]€ @NM£;P_@KÅ"]€ @mín=P_@pÜÁÖn€ @€ÁLN_@<¨ån€ @ÛVN_@ðÌ¯¬€€ @‹:?P_@†ñ`ž€€ @¨3AP_@‰\0f’€ @ÈÙÑBP_@}Ÿ-¤€ @ú)ô}R_@"µO¤€ @\0\0\0\0\0\0\r\0\0\0CªÓ£]_@Å*’€ @•¹¢]_@‡uH€€ @ìŒåf[_@³ÐV€€ @Öp±h[_@õwo’€ @g5-Y_@u_À,’€ @’[/Y_@ç1_ô£€ @ÃV}j[_@Æ:æ£€ @¯>Il[_@‡û¬­µ€ @œ(n[_@5ºKuÇ€ @Pˆ7©]_@>úfÇ€ @¡‘k§]_@[Ÿµ€ @ñœŸ¥]_@óÝ¼×£€ @CªÓ£]_@Å*’€ @\0\0\0\0\0\0\r\0\0\0¹œC¢_@âçñÛÝ€ @ÊðÔA¢_@¬NÌ€ @õõ÷|¤_@…œÌ€ @&ù\Z¸¦_@ª³ì÷Ë€ @ØS¶¦_@WI0º€ @†:‹´¦_@òZ¥h¨€ @ÝPhy¤_@Ð$Öv¨€ @k"0{¤_@³áy>º€ @*\r@¢_@]UªLº€ @›/ê _@TcÚZº€ @ é± _@!=~"Ì€ @¡¥y _@Õ"êÝ€ @¹œC¢_@âçñÛÝ€ @\0\0\0\0\0\0\0\0\0}‚Táë_@‘v;?Ê€ @`ðãë_@¤>ÝÜ€ @´À@î_@áŸøÛ€ @Fwî_@[×ý0Ê€ @}‚Táë_@‘v;?Ê€ @\0\0\0\0\0\0\0\0\08Ç¼’ò_@ÖgÊ€ @¢šWð_@rÒ¿"Ê€ @\ncYð_@k{aêÛ€ @b[†”ò_@B#ÜÛ€ @8Ç¼’ò_@ÖgÊ€ @\0\0\0\0\0\0\0\0\0Á&]X\r_@luiÉ€ @:_@›¸wÉ€ @¢Ÿ_@S‰Y?Û€ @T\'Z\r_@ÅJ1Û€ @Á&]X\r_@luiÉ€ @\0\0\0\0\0\0\0\0\0çDP_@b$>õµ€ @ñ"{	N_@«.¶€ @MÀFN_@K,ËÇ€ @«_\rN_@teË’Ù€ @%Ø4HP_@í;|„Ù€ @,iFP_@31Ý¼Ç€ @çDP_@b$>õµ€ @\0\0\0\0\0\0\0\0\0V®–‚5_@*ö0Ú€ @SÃa„5_@:º·÷ë€ @‘^„¿7_@Èßléë€ @Ñ<¹½7_@S+Í!Ú€ @V®–‚5_@*ö0Ú€ @\0\0\0\0\0\0\0\0\0ž äKá_@Ò‘ßÕ€ @®ªÂß_@¸wíÕ€ @º² ÕÜ_@é#àûÕ€ @Ê„o×Ü_@öP{Ãç€ @‰‘ß_@«µç€ @4Œ³Má_@gŸ©¦ç€ @ž äKá_@Ò‘ßÕ€ @\0\0\0\0\0\0\0\0\0wØFJ_@+’F‡þ€ @€$_@­†‹•þ€ @lî_@x0,] @Ê>L_@a,çN @wØFJ_@+’F‡þ€ @\0\0\0\0\0\0\0\0\0à»vx_@R)Ù\r @$9tx_@@>ãü€ @¶9v_@©­9 ü€ @+Aã:v_@c¨×ç\r @à»vx_@R)Ù\r @\0\0\0\0\0\0\0\0\0Ä_½I¿_@—hDz @`?š½_@.îyˆ @:©b½_@*ôP$ @`Ö…K¿_@_çA$ @Ä_½I¿_@—hDz @\0\0\0\0\0\0\0\0\0_ø¬Ì_@6ïú$ @»X®Ì_@’ˆì# @ÌÚ{éÎ_@„+eÞ# @Ú\n³çÎ_@®¡Â @_ø¬Ì_@6ïú$ @\0\0\0\0\0\0\0\0\0à»vx_@R)Ù\r @·UÒwx_@U¡ @.Ûô²z_@éÈ’ @“4(±z_@D*Ë\r @à»vx_@R)Ù\r @\0\0\0\0\0\0\0\0\0\'ÄÙÆÈ_@É´NÔ @Æ‘·‹Æ_@\'³â @Eê…Æ_@;EOª @k)¨ÈÈ_@&iê› @\'ÄÙÆÈ_@É´NÔ @\0\0\0\0\0\0\0\0\0£ënz&_@^p^v	 @ÿ\rM?$_@7ìÓ„	 @y~A$_@Õ\ZmL @áh?|&_@3÷= @£ënz&_@^p^v	 @\0\0\0\0\0\0\r\0\0\0\0jÔì_@~8Á34 @AL\në_@ôD l" @€0@é_@ZO¤ @¾vç_@±WÞÜþ€ @ûþ«å_@÷]=í€ @Ð9‰ª_@±à#í€ @ÑDS¬_@üé ëþ€ @âp0q_@“cùþ€ @qúr_@_-Á @YsÄt_@B¥ˆ" @Í`ç¯_@cöbz" @Êq±±_@~ùB4 @\0jÔì_@~8Á34 @\0\0\0\0\0\0\0\0\0k)¨ÈÈ_@&iê› @°vÊÈ_@s†c/ @“Ú˜Ë_@òÉ U/ @‹fÊË_@]\'… @k)¨ÈÈ_@&iê› @\0\0\0\0\0\0\0\0\0\'È¦)Ö_@Ó’é} @Û¡„îÓ_@iÁPŒ @ëFSðÓ_@-\'ìS @î!òÓ_@áŠ‡/ @Ô-D-Ö_@Ø< \r/ @ûyu+Ö_@Þè„E @\'È¦)Ö_@Ó’é} @\0\0\0\0\0\0\0\0\0Â_z•_@(Ç2®0 @ÜG=?“_@·Ž¼0 @Ü~\nA“_@ž¸+„B @Ä-|•_@càÏuB @Â_z•_@(Ç2®0 @\0\0\0\0\0\0\0\0\0ÞJsS§_@G5F;0 @¹ô@U§_@ÑâB @Œic©_@qeƒôA @î²•Ž©_@^Ùæ,0 @ÞJsS§_@G5F;0 @\0\0\0\0\0\0\0\0\0R%|È7_@G‹ÏD @SGÊ7_@3ï*—V @â8j:_@jQßˆV @aþž:_@ð¸?ÁD @R%|È7_@G‹ÏD @\0\0\0\0\0\0\0\0\0¬ŠO·—_@s¢sgB @Ä-|•_@càÏuB @‰Kú}•_@÷l=T @2Ý¹—_@ó©/T @¬ŠO·—_@s¢sgB @\0\0\0\0\0\0\0\0\0¹ô@U§_@ÑâB @â}\Z¥_@ñÖAB @ÊàP¥_@|+¥I0 @µt.Ý¢_@ý»X0 @cæ`Û¢_@Çþf @µEƒ¥_@ö}‚ @ÊàP¥_@|+¥I0 @ÞJsS§_@G5F;0 @£¥Q§_@q—©s @SþÇŒ©_@9KJe @ŸWêÇ«_@K™êV @þ¸É«_@¿‡0 @}Ú®_@lð&0 @ç®®_@ªŠH @Éâ>®_@×î€ @J+a<°_@3£r @,/>°_@T*: @oWQy²_@J!É+ @Ëqƒw²_@ÛÏ,d @)Žµu²_@]|œú€ @ãÅ×°´_@S/Žú€ @×	¯´_@)\r“Æè€ @‹¬çs²_@Ï&ôÔè€ @îÌr²_@1ÏW\r×€ @UïKp²_@Œu»EÅ€ @¾~n²_@Î~³€ @*:°l²_@ý»‚¶¡€ @<@Ž1°_@&1ãÄ¡€ @\r\\3°_@©žŒ³€ @Y:ø­_@Ò½ßš³€ @iÆú­_@ô8|bÅ€ @~ŠÕû­_@þ±*×€ @Af³À«_@ÙŠx8×€ @”Â«_@Ž\0é€ @‘ì^‡©_@h”té€ @Œ·<L§_@Ž±Óé€ @¾oJ§_@x7U×€ @yíL¥_@:³•c×€ @3Á*Ô¢_@Kõóq×€ @ì<]Ò¢_@Í-WªÅ€ @e;— _@|ú´¸Å€ @è’™ _@©ÑQ€×€ @œbæ]ž_@TH¯Ž×€ @Ý÷\\ž_@xaÇÅ€ @KZž_@„xuÿ³€ @Wv)œ_@jÒ\r´€ @Œ[ä™_@ö.´€ @T:â™_@¤ë‘T¢€ @Jþ§—_@/îb¢€ @>ìõk•_@³Iq¢€ @º(j•_@8‡¬©€ @àŠ[h•_@ZYâ~€ @5]Žf•_@j)r\Zm€ @úH°¡—_@™§m€ @ãŸ—_@F…yD[€ @íÛ™_@s­6[€ @ŽÈ&œ_@ñoÁ\'[€ @ xYœ_@öj$`I€ @³*Œœ_@ßc‡˜7€ @;ij×™_@‚ã¦7€ @¾¥Hœ—_@}:?µ7€ @\'Úž—_@ð`Ü|I€ @åôb•_@fÃ7‹I€ @¢3Ò\'“_@-À’™I€ @‡PŸ)“_@Þ0a[€ @ool+“_@‹EÍ(m€ @X9-“_@(…jð~€ @Ë“ò_@EKÅþ~€ @=•õ¶Ž_@²«\r€ @¯”Ó{Œ_@n¦y€ @R‘ }Œ_@ýã€ @þ~BŠ_@³·pñ€ @’±@Š_@z;Ó)€ @?¤ä>Š_@-½5bm€ @šzŒ_@Í7ÜSm€ @Ù(µŽ_@¼L‚Em€ @¦Jð_@ûû\'7m€ @m}î_@¢ªŠo[€ @xˆ[³Ž_@·ëä}[€ @o¡9xŒ_@Ç>Œ[€ @b¸=Š_@Ñ<˜š[€ @TÍõˆ_@ÖLñ¨[€ @DàÓÆ…_@-÷I·[€ @íÅ…_@xU¬ïI€ @Ÿ-å‰ƒ_@tŠþI€ @2ñ±‹ƒ_@Ó;¢Å[€ @È¶~ƒ_@-ë?m€ @ò¸\\R_@ÍÙ—›m€ @\0P_@Ê\ZúÓ[€ @\n\rn_@”Qâ[€ @¹:_@½bï©m€ @C·Ü|_@ý…F¸m€ @i³ö z_@ŒCÆm€ @Ž­Ôex_@l›óÔm€ @W5¡gx_@—‘œ€ @÷GÃ¢z_@{/;Ž€ @†Þ¤z_@VÙU‘€ @åû±ß|_@v<‚G‘€ @AÔ\Z_@æù*9‘€ @ž0öU_@¤QÓ*‘€ @uïÂW_@w\nqò¢€ @”å’ƒ_@Ûìä¢€ @0á±”ƒ_@ö“¶«´€ @Ì°~–ƒ_@ü8TsÆ€ @)s\\[_@ìu¬Æ€ @8)]_@„(JIØ€ @Ÿë"_@j¢WØ€ @¼¥Ó#_@¤Ï?ê€ @’J±è|_@`—-ê€ @ìù}ê|_@R.5õû€ @Øa %_@ÎÝæû€ @ÄÇÂ`_@—‡…Øû€ @°+å›ƒ_@«-Êû€ @š×…_@\rJÔ»û€ @4«:Õ…_@ßº6ôé€ @Yþ\\ˆ_@7“Ýåé€ @2ˆ_@£@Ø€ @’U²IŠ_@ò“æØ€ @}OKŠ_@Û„×é€ @žž¡†Œ_@Í*Éé€ @M§nˆŒ_@ûrÇû€ @ü±;ŠŒ_@ÑdX\r @®¾ŒŒ_@\'-  @2+ÇŽ_@d¥§ @|£M‘_@ê·L @¶Ë\Z‘_@òéÊ0 @ÜG=?“_@·Ž¼0 @áp=“_@¾dñô @C€’x•_@Û«•æ @Â_z•_@(Ç2®0 @\':‚µ—_@å˜ÖŸ0 @¬ŠO·—_@s¢sgB @\rrò™_@ÍþYB @rŽ”-œ_@rõ¹JB @Q\r·hž_@b†\\<B @!†„jž_@Ö^ùT @Á§¥ _@az›õS @`—Éà¢_@80=çS @ýì¥_@W€ÞØS @– W§_@ÂjÊS @¹ô@U§_@ÑâB @\0\0\0LØö¿Ž_@yg2ó×€ @àÆ)¾Ž_@à•+Æ€ @wøKù_@Ãs:Æ€ @¨û_@±¸×ä×€ @LØö¿Ž_@yg2ó×€ @\0\0\0G°¤ð™_@íz‘0 @U×î™_@üÝÉ @]¼ù)œ_@ý€» @f$Ç+œ_@@ƒ0 @G°¤ð™_@íz‘0 @\0\0\0«]åGŠ_@ IHÆ€ @ÅgFŠ_@ù©«€´€ @ê<ö\nˆ_@U´€ @\rÔÏ…_@ý\0^´€ @¯5Î…_@ŽiÀÕ¢€ @ÈU)	ˆ_@Ž€gÇ¢€ @âsKDŠ_@Þ1¹¢€ @ømŒ_@}}´ª¢€ @Ÿ:Œ_@ìåQr´€ @F“ƒŒ_@JLï9Æ€ @«]åGŠ_@ IHÆ€ @\0\0\0Q]:Ì…_@\rÐ"‘€ @ö†mÊ…_@4…F€ @Šˆ_@Ôj,8€ @¨p\\ˆ_@¹öÉÿ€ @Q]:Ì…_@\rÐ"‘€ @\0\0\0\0\0\0\r\0\0\0.Ûô²z_@éÈ’ @ËƒÁ´z_@4õeZ1 @g.Ž¶z_@mÊ"C @ÛZ¸z_@˜¡éT @Ä„}ó|_@~JÛT @&@Jõ|_@åÕç¢f @§ôl0_@n×”f @, ._@°%òÌT @[fÓ,_@ÖqTC @9¢+_@í»¶=1 @äï|_@j‹L1 @£^î|_@ÈÃp„ @.Ûô²z_@éÈ’ @\0\0\0\0\0\0\0\0\02Ý¹—_@ó©/T @»1êº—_@U¯­öe @\'Îö™_@TìPèe @Úl?ô™_@žö³ T @2Ý¹—_@ó©/T @\0\0\0\0\0\0\0\0\0QhÝ{Ï_@ÒõT8/ @u"»@Í_@½»F/ @C¥‰BÍ_@‰£VA @*XDÍ_@F2òÕR @y‰zÏ_@ìõ‹ÇR @IÏ_@Õr\'d @4‡k¼Ñ_@ÁÀ€d @ÙæœºÑ_@ÜS%¹R @€HÎ¸Ñ_@ä‰ñ@ @ã÷«}Ï_@çvðÿ@ @QhÝ{Ï_@ÒõT8/ @\0\0\0\0\0\0\0\0\0ãÒònL_@0«´žO @›äÐ3J_@7\'1­O @"6¢5J_@ñ@Éta @.1ÄpL_@µLfa @ãÒònL_@0«´žO @\0\0\0\0\0\0\0\0\0ëk¸6-_@g‘øs @ŽÚq/_@ÿ¦ês @\'®ü¬1_@áÏ¡Ûs @üæ+«1_@S\n	b @Ù![©1_@¿BpLP @E9n/_@GúçZP @êdhl/_@Ë O“> @iF1-_@ÒbÆ¡> @Áu/-_@}w-Ú, @gÐSô*_@D¤è, @HÝ1¹(_@Øª\Z÷, @"è~&_@÷«- @kià&_@«Æ)Í> @ºì°&_@OßÂ”P @eûÒ¼(_@¾L†P @õ÷*_@68ÖwP @ç¦Åù*_@*/o?b @I¾ç4-_@B3ø0b @ëk¸6-_@g‘øs @\0\0\0\0\0\0\0\0\0GŒõB_@ëÞy @ï¥iº@_@Ûâ8íy @º5¼@_@OFØ´‹ @ÕX÷B_@ØâŠ¦‹ @GŒõB_@ëÞy @\0\0\0\0\0\0\0\0\0ëk¸6-_@g‘øs @ÅG–û*_@$t @š!tÀ(_@Ê~t @¾·DÂ(_@¼ÌÝ… @«êfý*_@ö¡Î… @•‰8-_@{û)À… @ëk¸6-_@g‘øs @\0\0\0\0\0\0\0\0\0òÎ²Ê_@FäGp  @IÖºÌ_@D€b  @hx\r¹Ì_@ZõlšŽ @›\nê}Ê_@ÖI¥¨Ž @òÎ²Ê_@FäGp  @\0\0\0\0\0\0\0\0\0rááÚ_@_¢EŽ @•¾à×_@)YMSŽ @‡â×_@o–ï\Z  @"ÿªÚ_@Ð´  @rááÚ_@_¢EŽ @\0\0\0\0\0\0\0\0¨ÇNÄ_@ø|)ú€ @ê¤Â_@8à7ú€ @[¾‚Ø¿_@ÆŽCFú€ @*´Ö¿_@p—§~è€ @¯ÖÂ_@—Dpè€ @òËøLÄ_@\r:àaè€ @¨ÇNÄ_@ø|)ú€ @J;é‰Æ_@»ú€ @Òæ\ZˆÆ_@Ïò{Sè€ @®ÿ<ÃÈ_@ßEEè€ @ê`ÅÈ_@]þ²ú€ @\'ÄÙÆÈ_@É´NÔ @†ôûË_@·‚éÅ @à"=Í_@ñêƒ· @¦O;Í_@óSèïù€ @„„-\0Ë_@ÜMþù€ @‡_þÊ_@;3²6è€ @‹ªüÊ_@eˆoÖ€ @v nÁÈ_@R‹{}Ö€ @AC ¿È_@¾ÎßµÄ€ @èÑ½È_@Dî²€ @ ØóøÊ_@“,ßß²€ @”@ÂúÊ_@ˆÛz§Ä€ @‹ªüÊ_@eˆoÖ€ @ž²²7Í_@Ç±`Ö€ @­¸ÔrÏ_@uQKRÖ€ @·¼ö­Ñ_@råCÖ€ @úNÅ¯Ñ_@™€è€ @Å]çêÓ_@°ïýç€ @‹j	&Ö_@Žà²îç€ @Â¾:$Ö_@R„\'Ö€ @¾¾éÓ_@»ƒ~5Ö€ @¼!JçÓ_@ÀãmÄ€ @x,(¬Ñ_@½ŸI|Ä€ @05qÏ_@	Ä¯ŠÄ€ @·³7oÏ_@ƒ4Ã²€ @<žYªÑ_@ð®´²€ @½†{åÓ_@¬¥G¦²€ @¼!JçÓ_@ÀãmÄ€ @ýl"Ö_@&|_Ä€ @<Ž]Ø_@¯ÐQÄ€ @Ã¼\\_Ø_@8°Ö€ @À¸~šÚ_@iTH\nÖ€ @võ¯˜Ú_@­BÄ€ @«âÑÓÜ_@ÖôD4Ä€ @ÞÍóß_@`nÜ%Ä€ @\n·Já_@6‚sÄ€ @ž äKá_@Ò‘ßÕ€ @‹”‡ã_@;0¥ÐÕ€ @t†(Âå_@ðh;ÂÕ€ @‘‹÷Ãå_@\rWÖ‰ç€ @±’ÆÅå_@\ZCqQù€ @œè\0è_@¤öCù€ @‚£\n<ê_@{Dœ4ù€ @å¨,wì_@ž,1&ù€ @C¬N²î_@¯Åù€ @sè´î_@Z`ß\n @§&íµî_@û¦ @àf¼·î_@ï©•n. @ŽÞòð_@p—)`. @ ´\0.ó_@<½Q. @ãÐ/ó_@“¤W@ @ªmŸ1ó_@Ú\'òàQ @ÊªÁlõ_@r*…ÒQ @äåã§÷_@UÇÄQ @6_³©÷_@)²‹c @ŽÚ‚«÷_@§ˆLSu @,-¥æù_@T ÞDu @Å}Ç!ü_@KRp6u @¥—#ü_@_\nþ† @þo¹^þ_@ÞÌ›ï† @XÌé\\þ_@‹ž(u @·*\Z[þ_@\'ng`c @èè÷ü_@&Önc @V(ü_@ûÏ;§Q @;ÅXü_@µ‹¡ß? @ëš6áù_@|ªî? @˜n¦÷_@Žc}ü? @?@òjõ_@ê¶ê\n@ @¸×"iõ_@SAPC. @OùD¤÷_@·ýâ4. @ßgßù_@eTu&. @m6‰\Zü_@`E. @¢©¹ü_@ùülP @Ø˜—Ýù_@>üÚ^ @\n†u¢÷_@Ï•Hm @Ê¦ ÷_@Ö+®¥\n @Ž¥Öž÷_@Í¿Þø€ @×žøÙù_@½E¦Ïø€ @Ô\ZÈÛù_@¢@—\n @Ûêü_@²Òˆ\n @¢©¹ü_@ùülP @f¸ÛSþ_@ÿ—þA @&ÅýŽ\0_@RÍ3 @Û .\0_@]¢õk\n @Þ Rþ_@H]dz\n @Z‹<Pþ_@‚ Ê²ø€ @”~^‹\0_@Xu[¤ø€ @Èo€Æ_@{dì•ø€ @ù^¢_@ëí|‡ø€ @0¥Òÿ_@[Þâ¿æ€ @™…ô:_@Ûs±æ€ @ÿcv	_@§ß£æ€ @¶’Ft	_@íhÛÔ€ @Rbh¯_@jeøÌÔ€ @]@8±_@ÀG’”æ€ @¸\ZZì\r_@(J!†æ€ @\ró{\'_@Ýæ¯wæ€ @]Éb_@Þ>iæ€ @´Ïmd_@ÖÎ×0ø€ @À°Ÿ_@_e"ø€ @¥¿_@-ïËZæ€ @Œï›_@ëK2“Ô€ @	ÅÍ`_@Öj¤¡Ô€ @{û«%_@$°Ô€ @é/Šê\r_@–w‡¾Ô€ @ Gºè\r_@ý¢íöÂ€ @ðÜ#_@<_|èÂ€ @ºÂý^_@Èµ\nÚÂ€ @qÂ-]_@ þp±€ @rpO˜_@@ÿþ±€ @pqÓ_@.šŒõ°€ @hÆ’_@kÏç°€ @øìb_@AW³®Â€ @¯¡„K_@@ Â€ @^T¦†_@qÌ‘Â€ @{–vˆ_@F×eYÔ€ @èS˜Ã_@ß»ñJÔ€ @Ì¤hÅ_@?‹æ€ @ölŠ\0"_@^æ€ @\Z3¬;$_@Êˆ¡õå€ @°ÈÛ9$_@ûS.Ô€ @Pºþ!_@Ç:}<Ô€ @­³éü!_@(ôãtÂ€ @L`8$_@%ofÂ€ @îù:6$_@6äÕž°€ @••j4$_@5©<×ž€ @B3š2$_@#l£€ @ôÒÉ0$_@-\nH{€ @`Y¨õ!_@äÄ~V{€ @ÅÝ†º_@÷òd{€ @™¶¸_@P–Yi€ @%(•}_@SÍ«i€ @AµsB_@ª@ºi€ @Y@R_@j›³Èi€ @jÉ0Ì_@\'&×i€ @xP‘_@M˜åi€ @oUß’_@²ü1­{€ @µÍ½W_@ÂÌ£»{€ @ôCœ_@"7Ê{€ @/¸zá\r_@Ñ;†Ø{€ @ä˜Jã\r_@´  € @Vþ(¨_@wÇ®€ @Åam	_@Š½€ @ú*×n	_@æ\n›„Ÿ€ @Ÿµ3_@þ\n“Ÿ€ @AÒ“ø_@‹z¡Ÿ€ @ß"r½_@D³é¯Ÿ€ @ÐÇA¿_@ÙÚƒw±€ @§	 „\0_@®¬ò…±€ @Ü£ï…\0_@óáŒMÃ€ @@¿‡\0_@\'Õ€ @^fLþ_@Å •#Õ€ @êÖÍJþ_@Ø]û[Ã€ @xIþHþ_@Ña”±€ @D‡Ü\rü_@CÏ¢±€ @ò¬ü_@tijÃ€ @§Š{ü_@¹Æ2Õ€ @è¬YÖù_@û†q@Õ€ @ø6ŠÔù_@Œ$×xÃ€ @÷ch™÷_@[oD‡Ã€ @%Í7›÷_@‹áÞNÕ€ @^ë`õ_@hÖK]Õ€ @“ô$ó_@“e¸kÕ€ @ë·$#ó_@äÓ¤Ã€ @ßÞèð_@œí‰²Ã€ @þ3æð_@Jïê±€ @¯Ï«î_@^îZù±€ @\\ÿïoì_@ô,Æ²€ @Ú nì_@Þg+@ € @°¶Qlì_@· xŽ€ @Ýý/1ê_@!Zû†Ž€ @Qé`/ê_@-`¿|€ @<;?ôç_@*ÅÊÍ|€ @w5pòç_@eÚ/k€ @µ1¡ðç_@’í”>Y€ @ ›µå_@d¬þLY€ @ ’N·å_@ô¨™k€ @Èì,|ã_@Ô#k€ @Š^zã_@‡h[Y€ @îg<?á_@úøÐiY€ @QË\Zß_@¾†9xY€ @üKß_@öXž°G€ @»j*ÇÜ_@Oq¿G€ @®,ùÈÜ_@Ò®¡†Y€ @£ðÇÊÜ_@Rê<Nk€ @\nœéß_@‚²Ô?k€ @Æn¸ß_@6Üo}€ @¶–ÌÜ_@Á#Ø}€ @£ðÇÊÜ_@Rê<Nk€ @:C¦Ú_@q¼¤\\k€ @Œ×Ú_@7q	•Y€ @\\éµRØ_@ìÍp£Y€ @®D”Ö_@òÄ×±Y€ @úrÜÓ_@IV>ÀY€ @ç.AÞÓ_@±ÐÙ‡k€ @oy£Ñ_@@–k€ @ÿí¤Ñ_@"”Û]}€ @_;ÌiÏ_@‹yAl}€ @ôÁýgÏ_@Áá¥¤k€ @oy£Ñ_@@–k€ @DõP¡Ñ_@ð¤ÎY€ @s‚ŸÑ_@ËõH€ @¤ÚÓ_@ÝÙ¢øG€ @,‚ÕØÓ_@U[16€ @Z÷Ö_@qé "6€ @¶w(Ö_@”x[$€ @âYÖ_@¤j“€ @»S{KØ_@†M…€ @]Ãœ†Ú_@¹/œv€ @rkˆÚ_@5ƒ7>$€ @âìŒÃÜ_@ðÏ/$€ @û0¾ÁÜ_@?¬4h€ @wï¿Ü_@nf™ \0€ @:¿ ¾Ü_@þØî @_	R¼Ü_@ÔbÝ @Â0Ú_@ç(ÊÝ @ªxFØ_@…1.Ý @WÞ@DØ_@¬•fË @FrBØ_@“>úž¹ @¼¯£@Ø_@üÎ^×§ @¢Š‚Ö_@À(Åå§ @´Ö_@_§)– @Àè’ÈÓ_@¾‹,– @þoÄÆÓ_@”øód„ @AùõÄÓ_@YcXr @eöÔ‰Ñ_@œÂ½«r @mŽˆÑ_@—"ä` @Q–åLÏ_@w‡ò` @‡ñ³NÏ_@4¼"ºr @¤ê’Í_@#P‡Èr @0œÄÍ_@®‰ë\0a @ £ÖÊ_@;¨Oa @Z`ÕÔÊ_@\0Ð³GO @ón´™È_@,yVO @>æ—È_@4{Ž= @!–È_@ £ßÆ+ @=âI”È_@ý´Cÿ @[·{’È_@ÈÄ§7 @øöZWÆ_@pÉ\nF @4:Ä_@rhmT @&páÁ_@Ë¡Ïb @ÂtçâÁ_@$Ák*\Z @”¡Æ§¿_@Œ¤Í8\Z @¸©ø¥¿_@u1q @&páÁ_@Ë¡Ïb @‹mKßÁ_@e€3›ö~ @5%l\ZÄ_@ÁVÑŒö~ @ÜÚŒUÆ_@vÇn~ö~ @ÁÀ¾SÆ_@kÃÒ¶ä~ @¬¨ðQÆ_@P½6ïÒ~ @™’"PÆ_@%µš\'Á~ @6Ä_@Mý5Á~ @ÒqáÙÁ_@Ï_DÁ~ @hÞÀž¿_@¬¤ÀRÁ~ @œðòœ¿_@[k$‹¯~ @DwØÁ_@3æÂ|¯~ @éû3Ä_@gû`n¯~ @öeÄ_@dßÄ¦~ @Uó—Ä_@TÁ(ß‹~ @òÉ\rÄ_@1¡Œz~ @ÏòûÄ_@ÿ~ðOh~ @/¡ÛÐÁ_@ô*R^h~ @ŠM»•¿_@Eq³lh~ @Íií“¿_@™-¥V~ @°°\rÏÁ_@ýöµ–V~ @7Â?ÍÁ_@õÀÏD~ @ˆ’¿_@ÜçzÝD~ @]¨Q¿_@ Þ3~ @«ÊƒŽ¿_@>VBN!~ @úîµŒ¿_@N\n¦†~ @Ù•Q½_@sœ•~ @¨cS½_@ø¢\\!~ @_ƒC»_@P4k!~ @0Áu»_@øÈf£~ @G§UÛ¸_@ÚÆ±~ @Y‹5 ¶_@ñ%À~ @jme´_@¼ì„Î~ @X	ãf´_@/‡!–!~ @4¢¶_@Û{Â‡!~ @¹ÞÐ£¶_@ˆ_O3~ @m‹ž¥¶_@‹ûE~ @":l§¶_@«˜ÞV~ @1éKl´_@J÷ìV~ @*n´_@JÜ“´h~ @%3ço´_@ll0|z~ @®ÆÆ4²_@`Šz~ @ëa”6²_@bþ+RŒ~ @±æsû¯_@¡œŠ`Œ~ @4X¦ù¯_@)ïí˜z~ @®ÆÆ4²_@`Šz~ @s-ù2²_@ÇÀòÂh~ @»ËØ÷¯_@¡?QÑh~ @\0h¸¼­_@ØX¯ßh~ @Kêêº­_@—W~ @˜n¹­_@6ÔuPE~ @Z"ý}«_@ehÓ^E~ @M‘Ê«_@p;p&W~ @B˜«_@j\rîh~ @‚šwF©_@ZZjüh~ @M6ªD©_@®yÍ4W~ @KÙ‰	§_@JR*CW~ @FziÎ¤_@CÅ†QW~ @–1œÌ¤_@&Ãé‰E~ @çêÎÊ¤_@¿LÂ3~ @j0ï§_@kkð³3~ @Úƒ¼§_@Þ_{E~ @ÔÜB©_@ó–0mE~ @Z"ý}«_@ehÓ^E~ @jµ/|«_@U“6—3~ @æôO·­_@ÖÙˆ3~ @8}‚µ­_@_G<Á!~ @ï­¢ð¯_@ðlÞ²!~ @ƒ+Õî¯_@³Aë~ @«í¯_@1÷¤#þ} @²,:ë¯_@99\\ì} @&5Z&²_@A(ªMì} @—;za´_@§±K?ì} @€ÓGc´_@9Pèþ} @¯ägž¶_@Ld‰øý} @@šœ¶_@nÕì0ì} @rBº×¸_@”“"ì} @\r“ìÕ¸_@XñZÚ} @ªåÔ¸_@\rT“È} @‘Ì>»_@ûõ„È} @rq\r»_@a‘X½¶} @T^£»_@©¼õ¤} @íƒÐ¸_@R‚¥} @‚Ác•¶_@^…z¥} @ðCZ´_@Ê"Ù ¥} @¤$²_@˜Z7/¥} @2Gä¯_@È,•=¥} @½oä¨­_@X™òK¥} @E–Äm«_@K OZ¥} @Éº¤2©_@žA¬h¥} @LÝ„÷¦_@R}w¥} @Ìýd¼¤_@iSd…¥} @KE¢_@àÃ¿“¥} @$Fƒ¢_@>è\\[·} @ßUòG _@Å¸i·} @üt¿I _@µ4U1É} @rß„¢_@}\nú"É} @âŸ¬†¢_@º*—êÚ} @¤§ÌÁ¤_@3‹;ÜÚ} @Fä™Ã¤_@°™Ø£ì} @ÃÏyˆ¢_@çH4²ì} @âŸ¬†¢_@º*—êÚ} @–ŒK _@¡dòøÚ} @üt¿I _@µ4U1É} @õuŸž_@Mù¯?É} @™cÒž_@®·x·} @Po²Ñ›_@øm†·} @y’–™_@£ðÆ”·} @àq_˜™_@Qd\\É} @Òl?]—_@Vå½jÉ} @ðZ_—_@ûS[2Û} @ Gì#•_@Â‘´@Û} @Áe"•_@pyÉ} @¯\\ÿæ’_@êÛo‡É} @›Qß«_@Ä>È•É} @…D¿pŽ_@ÿ; ¤É} @¢ÿ‹rŽ_@Vé½kÛ} @À¼XtŽ_@ž”[3í} @Vãx¯_@x%í} @ì™ê’_@Ùõªí} @Œàeì’_@·HÞþ} @à†\'•_@7ˆïÏþ} @C÷R)•_@Y\0—~ @U1sd—_@Œ“3‰~ @1=¦b—_@+–Áþ} @hÆ™_@Sh<³þ} @ei“Ÿ™_@ÁÙz~ @rŸ³Ú›_@‰l~ @\Z¯€Ü›_@Ð4"~ @åï ž_@µ"Â%"~ @®.ÁR _@²g"~ @uká¢_@—	"~ @a£®¢_@ø¬¨Ð3~ @ÚYŽT _@L5ß3~ @Onž_@þW_í3~ @».;ž_@/‹ü´E~ @‡[V _@ÏX¡¦E~ @5¶(X _@Jz>nW~ @>I“¢_@˜Òâ_W~ @1W•¢_@Tâ\'i~ @&—ã–¢_@ðïz~ @®Ò¤_@LÃÀàz~ @g`ÑÓ¤_@:¿]¨Œ~ @®åñ§_@1šŒ~ @ôhJ©_@ƒ¤‹Œ~ @6ê2…«_@2¨F}Œ~ @2a\0‡«_@úrãDž~ @3ÚÍˆ«_@·;€°~ @5U›Š«_@UÔÁ~ @;ÒhŒ«_@ðÆ¹›Ó~ @„‰Ç­_@3µ[Ó~ @HWÉ­_@\rhøTå~ @ž$Ë­_@Õ•÷~ @ÖgE°_@‚6÷~ @–/fA²_@¢…×ÿö~ @Uõ†|´_@#xñö~ @EA¹z´_@Ü¡Û)å~ @8ëx´_@\Z?bÓ~ @s9´¶_@ÆußSÓ~ @§|>²¶_@¨ÿBŒÁ~ @.ßw´_@H˜¢šÁ~ @(1Pu´_@sÓ¯~ @$…‚s´_@€†iž~ @	£®¶_@E\r\ný~ @ßÁp°¶_@…‡¦Ä¯~ @“P‘ë¸_@ò˜F¶¯~ @_í¸_@aã}Á~ @¨á,ï¸_@ÌgEÓ~ @s9´¶_@ÆußSÓ~ @@øÙµ¶_@Ôé{å~ @¹§·¶_@Ò[ãö~ @ä{u¹¶_@ÀË´ª @»@C»¶_@ 9Qr\Z @ödö¸_@×ìðc\Z @ï1ø¸_@ïH+, @‰ÕR3»_@Ê†,, @€¹sn½_@ü^Ë, @r›”©¿_@‡Ñi\0, @T—b«¿_@tüÈ= @9•0­¿_@E%¢O @Ä™r½_@%ÒžO @ëŒÝs½_@¤ ea @°‚¼8»_@_ta @kŠ:»_@¶£;s @‚«u½_@=<-s @\r—Ì°¿_@ÍpÚs @üšš²¿_@x“væ„ @í h´¿_@´®– @á¨6¶¿_@ŸÒ®u¨ @¤m{½_@Î„¨ @a0ô?»_@Æcr’¨ @Ö ÂA»_@ªŸZº @Újã|½_@7ú¬Kº @j±~½_@L$IÌ @Ô¾Ò¹¿_@z	çÌ @ÒÌ »¿_@Õ!ƒÌÝ @T,ÂöÁ_@ ‘ ¾Ý @Ó‰ã1Ä_@¿›½¯Ý @X³±3Ä_@ž’Ywï @IøÁ_@5˜¼…ï @Ýg^úÁ_@¹œXM€ @¦ˆ,üÁ_@.Ÿô€ @t«úýÁ_@“ŸÜ$€ @êÙÂ¿_@nóê$€ @ÞÁ¿_@ƒ^W#€ @{é…½_@+¸¹1€ @^„·‡½_@ú×Uù$€ @¨…‰½_@·õñÀ6€ @öœS‹½_@gŽˆH€ @H¬!½_@ø**PZ€ @½ïŽ½_@†BÆl€ @ôÐ½½_@Xbß}€ @Oæ‹’½_@qkþ¦€ @iÇ­Í¿_@Ö£›˜€ @M¥ßË¿_@  ÿÐ}€ @2…Ê¿_@Všc	l€ @ÅJ3Â_@uŒ\0ûk€ @ìeÂ_@Q”d3Z€ @÷–Â_@*šÈkH€ @DÐÈÿÁ_@æ,¤6€ @Œmê:Ä_@wYÉ•6€ @!¡¸<Ä_@Fe]H€ @ºÖ†>Ä_@v0%Z€ @„‹¨yÆ_@ìfZ€ @)IÚwÆ_@1ŒOH€ @-ïû²È_@®l@H€ @0“îÊ_@|ç82H€ @-5?)Í_@›üÓ#H€ @Ï\r+Í_@0¨oëY€ @uÜ,Í_@ÁQ³k€ @uª.Í_@Dù¦z}€ @Ø¬ˆóÊ_@L‰}€ @âf¸È_@£Çp—}€ @DE}Æ_@KÕ¥}€ @¨^Æ_@àêpm€ @—ƒñCÄ_@ŽãÔ{€ @‚¦ÏÂ_@‹v8Š€ @d×\nÂ_@}hÔQ¡€ @Šë{Ï¿_@¥7`¡€ @®JÑ¿_@¥Ó\'³€ @(–½_@Œ66³€ @r2ö—½_@W™ÒýÄ€ @ÙOÄ™½_@y¤nÅÖ€ @Co’›½_@”­\nè€ @XLp`»_@^m›è€ @a>b»_@Æt	cú€ @®wd»_@u‰¥* @!´.Ÿ½_@š¹B @“Ùü ½_@†¼Þã @\nË¢½_@`½z«/ @üTíÝ¿_@fh/ @:‹»ß¿_@{W³dA @îéÝ\ZÂ_@OVA @ñ.¬Â_@gjëS @yÃ‰á¿_@€DO,S @\0Vg¦½_@ã¸²:S @ƒ5¨½_@³Ne @>m»_@äÑ±e @þ)án»_@1ÚMØv @ÁN¯p»_@nàéŸˆ @ˆäÑ«½_@¢¢†‘ˆ @Jxôæ¿_@ÿ"ƒˆ @—¸Âè¿_@âã¾Jš @Wå#Â_@òÊZ<š @\n"Â_@æõ¾tˆ @ÿ¾H Â_@È#­v @ûAk[Ä_@Ž¿¾žv @òÂ–Æ_@œúYv @æA°ÑÈ_@õÏôv @“ÒáÏÈ_@ê%Yºd @ÁBË_@C¥ó«d @®È5	Ë_@ëXäR @EeÎÈ_@Ûy½òR @øùDÌÈ_@®Ë!+A @M¡"‘Æ_@0Ç†9A @ÈDTÆ_@?ëq/ @Ýö1TÄ_@VO€/ @©cRÄ_@»³¸ @b]•PÄ_@Òçñ @¨ÇNÄ_@ø|)ú€ @\0\0\0]Ô#Í_@Uí\0Í€ @É¦"Í_@s9e€ @»\']Ï_@Ã\'\0÷\0€ @g¨X[Ï_@Šd/ï @7H7 Í_@ƒÉ=ï @«ëhÍ_@~Ë-vÝ @?ŠYÏ_@>ÙÈgÝ @Í×»WÏ_@ã.- Ë @tÝ’Ñ_@°æÇ‘Ë @‚«”Ñ_@RcYÝ @?ŠYÏ_@>ÙÈgÝ @g¨X[Ï_@Šd/ï @’z–Ñ_@åÿ ï @¨~H˜Ñ_@f°šè\0€ @»\']Ï_@Ã\'\0÷\0€ @õ^Ï_@îË›¾€ @]Ô#Í_@Uí\0Í€ @ôi¢%Í_@)Ÿœ”$€ @Îp\'Í_@èN8\\6€ @S9OìÊ_@*j6€ @zá€êÊ_@šj£$€ @¥‹²èÊ_@©eÛ€ @]Ô#Í_@Uí\0Í€ @\0\0\0yN‹Ö_@¥ÎË\0€ @à¼¼Ö_@–3ï @ÞGØ_@ë€Ìõî @kÿ‚Ú_@“‚eçî @<Î„Ú_@-Ú\0¯\0€ @]³¬IØ_@@èg½\0€ @yN‹Ö_@¥ÎË\0€ @\r\0\0\0sHyáÊ_@FŽö¼Ë @9–GãÊ_@X’„Ý @Å>&¨È_@÷~ö’Ý @Îô©È_@iV’Zï @æåÊ_@Ì.Lï @Ó7äæÊ_@uåÉ€ @ÚÆÂ«È_@Ê+."€ @ßS¡pÆ_@r’0€ @•ÓnÆ_@Z\'öhï @NåmÆ_@1@Z¡Ý @	±6kÆ_@øV¾ÙË @¿ýW¦È_@u¥ZËË @sHyáÊ_@FŽö¼Ë @\0\0\0\nÀ\\¢¿_@5ùáä~ @7ÎŽ ¿_@øÛ\\\ZÓ~ @an¯ÛÁ_@f7ûÓ~ @ôl}ÝÁ_@î\\—Óä~ @\nÀ\\¢¿_@5ùáä~ @\0\0\0ýcæÔ¿_@	ž·Ö€ @Ô9Ó¿_@¢oïÄ€ @4?:Â_@0FáÄ€ @!vÂ_@ç1¨¨Ö€ @ýcæÔ¿_@	ž·Ö€ @\r\0\0\0I‚Š¾å_@‘†3²€ @©X¬ùç_@y›$²€ @~f{ûç_@Ž[6ìÃ€ @\\ƒYÀå_@Íx úÃ€ @I‚Š¾å_@‘†3²€ @å©hƒã_@a.oA²€ @—·™ã_@V*Ôy € @NÇÊã_@:$9²Ž€ @	Ùû}ã_@žê|€ @%‹¹å_@u£4Ü|€ @,†ìºå_@ã›Ï£Ž€ @9ƒ»¼å_@B’jk € @I‚Š¾å_@‘†3²€ @\0\0\0‚1Ö_@?˜A}€ @[âbÖ_@¡/syk€ @Í“„TØ_@á(kk€ @B@SVØ_@Æ§2}€ @‚1Ö_@?˜A}€ @\0\0\0“ôôÁ_@úˆ„öË @×ø%óÁ_@P~è.º @Ñ<G.Ä_@Û§… º @Pb0Ä_@Ð¢!èË @“ôôÁ_@úˆ„öË @	\0\0\0…ríUÏ_@ƒ‚‘Ø¹ @@TÏ_@Ôõ¨ @âýÍ_@—Z¨ @š/Í_@ÚÖ¾W– @ÿ­PRÏ_@|#ZI– @`ÌqÑ_@r\nõ:– @c:@Ñ_@F«¨ @jª‘Ñ_@J,Ê¹ @…ríUÏ_@ƒ‚‘Ø¹ @\0\0\0V›êÁ_@Ò)ÜHa @­ŽQèÁ_@½@O @†r#Ä_@‹šÝrO @ˆŸ@%Ä_@ê¡y:a @V›êÁ_@Ò)ÜHa @\0\0\0Û‡M*»_@+ô7Ó~ @Ž±(»_@u‚oÁ~ @þH c½_@ãÓ!aÁ~ @,ne½_@å\Z¾(Ó~ @Û‡M*»_@+ô7Ó~ @\0\0\0þ\nä$»_@ãéIà~ @º:#»_@þŒ­Œ~ @å«6^½_@‰òL\nŒ~ @êˆ`½_@º?éÑ~ @þ\nä$»_@ãéIà~ @\0\0\0³	ÿ¯_@_ñÃï¯~ @7žÜ\0°_@š˜`·Á~ @¹ú»Å­_@J\0¿ÅÁ~ @õrîÃ­_@]I"þ¯~ @³	ÿ¯_@_ñÃï¯~ @\0\0\0Íá¬î_@¤¡õÀÃ€ @ð9°®î_@ÑRˆÕ€ @PŽsì_@å°û–Õ€ @;dl8ê_@F©f¥Õ€ @œG6ê_@ØËÝÃ€ @·&¿qì_@ùï`ÏÃ€ @Íá¬î_@¤¡õÀÃ€ @\0\0\0\0\0\0\0\0\0þo¹^þ_@ÞÌ›ï† @¨‰`þ_@ ù5·˜ @U½Xbþ_@S#Ð~ª @00{\0_@˜Ú`pª @½{«›\0_@&ÀÆ¨˜ @OÉÛ™\0_@§£,á† @þo¹^þ_@ÞÌ›ï† @\0\0\0\0\0\0	\0\0\0ÁN¯p»_@nàéŸˆ @õ¶Œ5¹_@ƒ¸L®ˆ @øÐZ7¹_@dÌèuš @ýì(9¹_@6Þ„=¬ @÷:¹_@õí ¾ @\ZÉv»_@Ãæ½ö½ @OžKt»_@¸æ!/¬ @†u}r»_@šä…gš @ÁN¯p»_@nàéŸˆ @\0\0\0\0\0\0\0\0\0ð¿Å\'ˆ_@ékÜÑ @²¸ø%ˆ_@)?A¿ @w³+$ˆ_@Yœ¡y­ @=°^"ˆ_@w1²› @¯‘ ˆ_@†Äfê‰ @énå…_@+yÀø‰ @!Lªƒ_@ÈŠ @P;¨ƒ_@Ã9|?x @ö¡ã…_@ú"1x @Õá…_@Ây…if @š²÷ˆ_@sä+[f @g·*ˆ_@[qŽ“T @¯à…_@÷ç¡T @A+;Þ…_@#rJÚB @L–£ƒ_@j‚£èB @öuå¤ƒ_@ñA°T @;ÒÂi_@+Ñ™¾T @%§k_@@s7†f @~\\m_@PÕMx @Î¾92_@&‡-\\x @øŠ4_@Î4Ë#Š @þV)o_@N±rŠ @ë1öp_@=MÝ› @ÚÃr_@ç­¤­ @eòå­ƒ_@“ÞT–­ @\ZÞ²¯ƒ_@¸fò]¿ @gÌÕê…_@Ìè˜O¿ @áÆ¢ì…_@7_6Ñ @ð¿Å\'ˆ_@ékÜÑ @\0\0\0	\0\0\0Ï\0\0\0R%|È7_@G‹ÏD @“ù°Æ7_@úœë3 @ÞÅÓ:_@h ù2 @[\0:_@Ï\02! @áL+;<_@$­´#! @›`9<_@\\ @UÌ”7<_@÷Œu”ý€ @T(rü9_@lBÁ¢ý€ @R‚OÁ7_@-’±ý€ @QÚ,†5_@9|W¿ý€ @O0\nK3_@“\0¢Íý€ @N„ç1_@8ìÛý€ @×†1_@>Lì€ @šåùÒ._@]ç•"ì€ @\\B×—,_@+ß0ì€ @´\\*_@ó(?ì€ @ïÇéZ*_@åö‡wÚ€ @¿ôY*_@Ðâç¯È€ @w€A”,_@$Ÿ¡È€ @-\ndÏ._@ÿU“È€ @æ‘†\n1_@xu…È€ @^‹Q1_@ÁZ¬LÚ€ @ÙtG3_@P[b>Ú€ @V®–‚5_@*ö0Ú€ @W›Ë€5_@0xhÈ€ @î»7_@Øt-ZÈ€ @Nÿ"º7_@D¼’¶€ @ãW¸7_@îÊ¤€ @ËÉŒ¶7_@èDN“€ @Znj{5_@TÑ˜“€ @YcŸy5_@õùI€ @YZÔw5_@ƒ2Y‚o€ @o²<3_@:£o€ @1ç:3_@ðWÉ]€ @ãÄÿ0_@-êL×]€ @ß§¢Ä._@º–å]€ @¸j€‰,_@—ÝÞó]€ @+^N*_@Ä>\'^€ @kê;(_@B:o^€ @E§Ø%_@Ð¶^€ @b÷œ#_@-\0þ,^€ @û\ZÕa!_@›ÊD;^€ @%¯Ÿc!_@y)åp€ @>Y}(_@Í+p€ @×Ñ²&_@X/‹I^€ @³†ë_@f.ÑW^€ @“9n°\Z_@ÄÇf^€ @u§8²\Z_@cU·-p€ @Y[í_@p¬qp€ @þ}%ï_@k(ç€ @¦âG*_@1\nÌØ€ @NEje!_@G†…Ê€ @÷¥Œ #_@«œ>¼€ @ãJW¢#_@ÐçÞƒ“€ @vÝ4g!_@á%’“€ @\nn,_@ƒtl “€ @¡üïð_@R¢²®“€ @þ}%ï_@k(ç€ @V´\Z_@òàWõ€ @7‰Íµ\Z_@pjø¼“€ @Ð«z_@ÝÌ=Ë“€ @hœˆ?_@˜É‚Ù“€ @ÂöRA_@0p#¡¥€ @šp0_@Ïh¯¥€ @0Àú_@ëÊw·€ @ÆÅ	_@õ|©>É€ @Ze_@ç,JÛ€ @ë¶lÐ_@œŽÛ€ @{J•_@ƒ¦Ò"Û€ @ˆB—_@•ssêì€ @Xƒñ[\r_@i\'·øì€ @¢´»]\r_@ÿXÀþ€ @êç…_\r_@„Úø‡ @ŸÀ¨š_@‰µy @X—ËÕ_@ÜÎpk @‰JÔ_@|Ð£þ€ @€$_@­†‹•þ€ @íºY\r_@ÒÚêÍì€ @"t|H_@ãõ¥¿ì€ @wØFJ_@+’F‡þ€ @pœi…_@ô7yþ€ @W+Ÿƒ_@A«`±ì€ @ŒàÁ¾\Z_@ìú\Z£ì€ @g^ŒÀ\Z_@	x»jþ€ @a¯û_@kRu\\þ€ @]ÜÑ6_@Ç.Nþ€ @½uœ8_@ú"Ï @ýªyý_@â½$ @AÞVÂ\Z_@ó[2 @†4‡_@–Â¡@ @Ê>L_@a,çN @§ÛM_@ŠÄ‡" @¡Ç¸_@5ØÌ$" @$æ•×_@+†3" @©sœ_@mÎUA" @³F=ž_@?“ö4 @vT\Zc\r_@_…:4 @0Pa\r_@ú°™O" @êç…_\r_@„Úø‡ @4\rc$_@ÉG<– @¸5-&_@Ñ-Ý]" @;`÷\'_@É~%4 @\0jÔì_@~8Á34 @¿‰žî_@ö)bûE @{«hð_@aÃW @6Ï2ò_@®¤Ši @µ°·_@cöæ˜i @5ì{_@a€)§i @gœ¶}_@ÌŠÊn{ @˜ª€_@\'“k6 @“n]D_@Ö­D @ÿq\'F_@lìNŸ @kwñG_@7\0ðÓ° @Ó~»I_@ó‘›Â @…\Z˜\0_@UÓ©Â @*b\0_@=tqÔ @¤>Õý_@ÊóµÔ @÷•×ý_@z WGæ @Í,\0_@±Z9æ @¢“OM_@./Ó*æ @;ˆ…K_@ž!2cÔ @O÷¨†_@òŸïTÔ @%áÞ„_@ØŸNÂ @÷Ìƒ_@­­Å° @… 8¾_@jÕj·° @vAÀ_@ÈÂ @ÇŸ%û_@wŠÈpÂ @{Ïïü_@oki8Ô @‘88_@˜¸%*Ô @üH6_@2ç„bÂ @¥Á~4_@½äš° @+‰´2_@6>CÓž @]F‘÷_@WÂ†áž @“n¼_@ÀàÉïž @ ä£º_@ê(( @¬ÉÙ¸_@=ñ‡`{ @ïôüó_@öñDR{ @7 /_@ùŒD{ @ECj\r_@EÂ½5{ @Èjf¥_@Û‘y\'{ @Ž‰à_@¸û4{ @_¯¬_@ßÿï\n{ @èw_@9›ÒŒ @øBšX_@*KÄŒ @¬ÎÏV_@Nžªüz @ûëò‘_@×dîz @él(_@ÆXÄ&i @t{KË\Z_@];~i @\0ˆn_@>¸7\ni @’‘A_@hÏðûh @›´|!_@Û€©íh @«¡×·#_@˜Ìaßh @=¦úò%_@Ÿ²Ñh @áqÅô%_@\\Ó¹˜z @5è/(_@DqŠz @œ[³1(_@)SRŒ @…?ö%_@òY`Œ @n!m»#_@0+¢nŒ @Mä7½#_@cWB6ž @t·‚!_@k:ŠDž @YJ€!_@¡þé|Œ @n!m»#_@0+¢nŒ @Ž`¢¹#_@íü§z @:M~!_@ÆÀIµz @è7\\C_@é‘Ãz @Cß&E_@Zl1‹Œ @šˆñF_@º·ÑRž @ÃWÎ_@QÏaž @í$«Ð\Z_@1_ož @•àÎ\Z_@¦¿§Œ @	m½“_@9S¶Œ @ð‡•_@ZÍ¥}ž @&uR—_@kEFE° @2ü™_@l»æÂ @ŽJ@Ô\Z_@P þÁ @ë–c_@YðÁ @Já†J_@KHâÁ @ª)ª…!_@Ï«ÊÓÁ @oßƒ!_@%t*° @,©¿#_@‡âý¯ @Êà%ú%_@1)šï¯ @k´ðû%_@¬A:·Á @Íö7(_@tñ¨Á @/77r*_@§@¨šÁ @Jlp*_@[GÓ¯ @¥{«,_@Ü½¾Ä¯ @“uZ­,_@§^ŒÁ @õ±}è._@À¨~Á @¤ºHê._@Ê€´EÓ @}q%¯,_@3þSÓ @ioð°,_@¼tžå @TÅì._@ºVT\rå @?7\'1_@þÒ	ÿä @+kZb3_@‰é¾ðä @õF`3_@Í2)Ó @Íl%1_@¨j7Ó @Zì #1_@8DÊoÁ @çØÕ!1_@¶y*¨¯ @rÇ\n 1_@$­Šà @Pæ-[3_@@Ò @.Q–5_@QñôÃ @4Ú…”5_@äAUü‹ @8³º’5_@fµ4z @<Žï5_@ØÜmh @@k$5_@E\'v¥V @EJY5_@•oÖÝD @R%|È7_@G‹ÏD @\0\0\07m6R3_@W2!ìD @oT3_@¡ùÀ³V @ •Þ1_@HfÂV @*Ž1_@dkúD @7m6R3_@W2!ìD @\0\0\0†„Oö_@¬”É€ @åÿ„ô_@õó=·€ @ÔŠ§/_@úB­/·€ @7r1_@§M÷È€ @†„Oö_@¬”É€ @\0\0\0mš»1_@Žl½¶€ @ò¤ð1_@ ¤Ìõ¤€ @&B3_@ûÓ‚ç¤€ @cÞC3_@×­"¯¶€ @mš»1_@Žl½¶€ @\0\0\0¤†ß._@™Qõ—h @4£Qá._@õ3•_z @Ý™.¦,_@`ôÞmz @ð§c¤,_@l?¦h @¤†ß._@™Qõ—h @\0\0\0ç)B´#_@Ëe!PE @qw²#_@G/ˆ3 @JOší%_@D9z3 @òeï%_@\0kÙAE @ç)B´#_@Ëe!PE @	\0\0\0òãëÅ\Z_@ãœÁ3 @Éi¶Ç\Z_@ÞW=‰E @Ät“Œ_@Vƒ—E @°ûÈŠ_@¬ÑâÏ3 @›„þˆ_@*KB" @`!Ä\Z_@lüù! @™9Dÿ_@K\'¶ë! @6Ê_@£ŽV³3 @òãëÅ\Z_@ãœÁ3 @\0\0\0·½ZØ._@”³uy! @ÉÖ._@æÆÕ± @Æƒ²1_@\\þ‹£ @Š<ÕL3_@ÐA• @ÄJ N3_@–á\\! @>…}1_@pÛ+k! @·½ZØ._@”³uy! @\0\0\0?m›,_@½)À @1ô7,_@&¿‡! @«(b*_@¾2–! @([ò&(_@ÄÙP¤! @£‹Ïë%_@™²! @ º¬°#_@²öàÀ! @œæ‰u!_@™l(Ï! @{>¿s!_@]"ˆ @Y˜ôq!_@Öç?þ€ @UR­#_@W 1þ€ @S\n:è%_@éÂX#þ€ @üÉê%_@ðøê @½Œ\'%(_@M¾°Ü @~MJ`*_@ß&hÎ @?m›,_@½)À @\0\0\0\0\0\0\0\0\0Ÿ.ÙŽ_@«/ÌÝÐ @‡qa×Ž_@ì÷.¿ @F”ÕŽ_@¾‘N­ @‚·‘_@DS6@­ @\0óÙK“_@´‚Ú1­ @|Æü†•_@kL~#­ @­v/…•_@?á[› @õ¯J“_@,f=j› @;çé‘_@\'™x› @ô²\r‘_@Íøû°‰ @ûôùÑŽ_@MDW¿‰ @}ÇÓŽ_@=‚ô†› @ÁO¤˜Œ_@²wO•› @ÿ€]Š_@pª£› @ýN_Š_@§bGk­ @ü¢aŠ_@Í»ä2¿ @ü¶èbŠ_@ã‚úÐ @ð¿Å\'ˆ_@ékÜÑ @/É’)ˆ_@ÐyÐâ @\0ÍµdŠ_@ÝgÂâ @ÎÎØŸŒ_@s™Ä³â @¬žŒ_@#T\'ìÐ @Ÿ.ÙŽ_@«/ÌÝÐ @\0\0\0\0\0\0\0\0\0Ÿ.ÙŽ_@«/ÌÝÐ @™ÎûÚŽ_@Nei¥â @dÌ‘_@qË\r—â @Q‘_@z¥pÏÐ @Ÿ.ÙŽ_@«/ÌÝÐ @\0\0\0\0\0\0\0\0\0SÅÞ?_@PÄjÌ @q¼Ý<_@vØ>yÌ @¬„ß<_@˜B×@Þ @5å¯\Z?_@bª\\2Þ @SÅÞ?_@PÄjÌ @\0\0\0\0\0\0\0\0\0™ÎûÚŽ_@Nei¥â @ÎÎØŸŒ_@s™Ä³â @—ó¥¡Œ_@¼Üa{ô @&\0ÉÜŽ_@í˜mô @™ÎûÚŽ_@Nei¥â @\0\0\0\0\0\0!\0\0\0Wå#Â_@òÊZ<š @/¦³%Â_@ðö¬ @tOÖ`Ä_@“’õ« @M­¤bÄ_@ÉÐ-½½ @E÷\'Â_@Ün’Ë½ @9?_ì¿_@6§öÙ½ @çúê¿_@•ÆZ¬ @Mn¯½_@‚‰¾ ¬ @+…<±½_@ÙyZè½ @½¾\n³½_@ hö¯Ï @èõçw»_@¿äY¾Ï @º$¶y»_@Ÿàõ…á @SúØ´½_@KT’wá @èÍûï¿_@?b.iá @Ž…-î¿_@È…’¡Ï @^JP)Â_@¸=.“Ï @yŸ+Â_@y\nÊZá @	oAfÄ_@úLeLá @íÒhÄ_@ÿó @=­2£Æ_@Õ›ó @•<d¡Æ_@Ã)\0>á @‡ÜÈ_@Ò š/á @£Ñ©Ë_@(²4!á @zIÛË_@B$™YÏ @RÃË_@@”ý‘½ @SêØÈ_@{cc ½ @ô›×È_@³ÁÇØ« @µöø›Æ_@-ç« @Ž*šÆ_@îg‘š @„\'\\˜Æ_@M²õWˆ @Ë™9]Ä_@õ†Zfˆ @œó_Ä_@KLö-š @Wå#Â_@òÊZ<š @\0\0\0\0\0\0\0\0\0¥^ïÏ_@©£gá @&™ÌRÍ_@Å]Îá @0›TÍ_@îÙiÚò @Z¾Ï_@Ìò @¥^ïÏ_@©£gá @\0\0\0\0\0\0\0\0\0Íÿby*_@*(¹‚ @>q†´,_@°9Þª‚ @So»²,_@>X>ãö @¦\n˜w*_@  ˆñö @Íÿby*_@*(¹‚ @\0\0\0\0\0\0\0\0\0Ë2Ž•_@$kòAô @AS“_@ àNPô @V`ÜT“_@Uòë‚ @¥sÿ•_@«m	‚ @Ë2Ž•_@$kòAô @\0\0\0\0\0\0\0\0\0Íÿby*_@*(¹‚ @\\Œ?>(_@é‚qÇ‚ @¾v\n@(_@}\Z‚ @òö-{*_@&\0È€\Z‚ @Íÿby*_@*(¹‚ @\0\0\0\0\0\0\0\0\0©ˆé·f_@3&qþ‚ @Ü8¶f_@çÜÒ6‚ @pûùzd_@K	\'E‚ @w>Æ|d_@<bÅ‚ @©ˆé·f_@3&qþ‚ @\0\0\0\0\0\0\0\0\0œ	š_@Hr´‚ @:”Eš_@+3Õì‚ @ñ„"Ë—_@Hƒ2û‚ @ŽíïÌ—_@tÏÂ‚ @œ	š_@Hr´‚ @\0\0\0\0\0\0\0\0\0›Ê+_@·+•‚ @Ù§ð_@Â³Ú‚ @•sqò_@L{å,‚ @„•-_@~´5×,‚ @›Ê+_@·+•‚ @\0\0\0\0\0\0\0\0\0¾v\n@(_@}\Z‚ @‰ôæ&_@Z\Z‚ @WpÃÉ#_@úR£«\Z‚ @1CŽË#_@«nCs,‚ @\'Ô±&_@2©úd,‚ @cÕA(_@þ}±V,‚ @¾v\n@(_@}\Z‚ @\0\0\0\0\0\0;\0\0\07‘Íé¢_@¡®LÍ¬ @œ/›ë¢_@U[é”¾ @Ì¾&¥_@TMŠ†¾ @ø®‹(¥_@Hè&NÐ @Ðhí¢_@÷†\\Ð @ïE² _@î½äjÐ @k[x° _@œH£¾ @ÈÉª® _@9G«Û¬ @7‘Íé¢_@¡®LÍ¬ @Õôÿç¢_@Ýÿ¯› @(:Ý¬ _@Åˆ› @‹¬« _@BÈqL‰ @¡üìož_@ÄÛÏZ‰ @Ê}nž_@‚	3“w @ Øü2œ_@ž§¡w @Žh/1œ_@œÃóÙe @\'Îö™_@TìPèe @u1Ú÷™_@àí¯w @Gˆ·¼—_@³²J¾w @Öà„¾—_@\0´ç…‰ @á(bƒ•_@¦0D”‰ @­v/…•_@?á[› @d;RÀ—_@<³„M› @ö—Â—_@j°!­ @ngBý™_@²®Ä­ @ÆÒÿ™_@ šaÎ¾ @‹öìÃ—_@†«¾Ü¾ @ö—Â—_@j°!­ @|Æü†•_@kL~#­ @NÊˆ•_@4Wë¾ @8§M“_@*wù¾ @tO“_@µÁÐ @ l—Š•_@î_¸²Ð @ôÁdŒ•_@ŒfUzâ @Ë2Ž•_@$kòAô @TUÉ—_@n•3ô @¹¹‡Ç—_@ƒ›økâ @|¯ªš_@Áj›]â @<£Í=œ_@FÔ=Oâ @^!›?œ_@Ö©Úô @‚¡hAœ_@S}wÞ‚ @Æ¬‹|ž_@ÂaÐ‚ @°;Y~ž_@ƒ#¶—‚ @¶Q|¹ _@ˆ’W‰‚ @hïI» _@‡BôP)‚ @0mö¢_@"<•B)‚ @»eŸô¢_@Ó›øz‚ @J½Ñò¢_@qù[³‚ @Ûñ¢_@\0U¿ëó @W\',¥_@ñ`Ýó @%^Y*¥_@Ãâ @ÚG|e§_@îcâ @é‹®c§_@ßdÇ?Ð @ØfÑž©_@¾{g1Ð @% ©_@-\0Ëi¾ @úÑàa§_@Ù*x¾ @\Z`§_@KLŽ°¬ @£Vð$¥_@R°í¾¬ @7‘Íé¢_@¡®LÍ¬ @\0\0\0\0\0\0-\0\0\02ü™_@l»æÂ @×«ù]_@Á,Â @{YÖ"_@æ`r)Â @!³ç_@›·7Â @ãg}é_@»=XÿÓ @ÇZ®_@¾!\rÔ @«Ÿ6s\r_@ áÔ @äê\0u\r_@À_‚ãå @wÝ9_@ã‡Æñå @*ºþ_@LJ\n\0æ @Ú4„\0	_@#\'«Ç÷ @>°`Å_@d“îÕ÷ @(Ù*Ç_@¼}	‚ @ÈEŒ_@Ô“Ò«	‚ @j°ãP_@3Dº	‚ @ËÁ­R_@K¶‚ @©Š\0_@Ñ¥ø‚ @À\0_@ÖŽWÈ	‚ @lö\0_@Ìu¶\0ø @Õ‰ÒØý_@$Køø @±œÚý_@¿s™Ö	‚ @VäxŸû_@íòÚä	‚ @lÏB¡û_@)|¬‚ @‹wfÜý_@Jš:ž‚ @bq0Þý_@Ã¾Ûe-‚ @8múßý_@-á|-?‚ @à,\0_@•Í:?‚ @‰êAV_@@Tø?‚ @+ÕwT_@öPWI-‚ @„›_@v;-‚ @ú0¿Ê_@<LÑ,-‚ @õÈ_@f0e‚ @6¢	_@¡ÚìV‚ @^><?_@‚é¨H‚ @ìùq=_@\\ 	‚ @Q‡•x\r_@ÙÃr	‚ @¶¹³_@,d	‚ @œÜî_@U:V	‚ @`3í_@Ù|™Ž÷ @®5(_@öT€÷ @ƒ:k&_@ý„³¸å @f¦Ža_@õÅmªå @H²œ_@2¡\'œå @=…çš_@]/‡ÔÓ @2ü™_@l»æÂ @\0\0\0\0\0\0\0\0\0r(Í]_@¼9^ÿ*‚ @[“ôÎ]_@u½üÆ<‚ @ý\n`_@W“©¸<‚ @•ÏK`_@Bñ*‚ @r(Í]_@¼9^ÿ*‚ @\0\0\0\0\0\0\0\0\0©ˆé·f_@3&qþ‚ @vÚµ¹f_@nmÆ*‚ @C.‚»f_@™²­<‚ @û¥öh_@ñX<‚ @j/Ùôh_@¼º·*‚ @×Ðóh_@p„ð‚ @©ˆé·f_@3&qþ‚ @\0\0\0\0\0\0	\0\0\0°;Y~ž_@ƒ#¶—‚ @©#6Cœ_@ÂN¦‚ @œ	š_@Hr´‚ @à	š_@Só|)‚ @Ñ§Eœ_@±m)‚ @û-ÑFœ_@mëM5;‚ @‹_ôž_@Ï ï&;‚ @Ì&€ž_@1ãR_)‚ @°;Y~ž_@ƒ#¶—‚ @\0\0\0\0\0\0\0\0\0ºK³l§_@)þÕ%)‚ @õ.1¥_@Ð54)‚ @0è]3¥_@”^Òû:‚ @¸n§_@	}rí:‚ @ºK³l§_@)þÕ%)‚ @\0\0\0\0\0\0\0\0\0	YÍ#_@Lˆã:>‚ @âî#Ï#_@ÝŸƒP‚ @a™G\n&_@6»:ôO‚ @Åµ|&_@<³š,>‚ @	YÍ#_@Lˆã:>‚ @\0\0\0\0\0\0\0\0\0€ƒ’~d_@\Z¹cÔ*‚ @Š*oCb_@Ÿ·â*‚ @Ðd;Eb_@~Vª<‚ @¡Gb_@áeôqN‚ @•+‚d_@¨` cN‚ @ŠÊ^€d_@ê\rœ<‚ @€ƒ’~d_@\Z¹cÔ*‚ @\0\0\0\0\0\0\0\0\0û¥öh_@ñX<‚ @òqøh_@%÷FN‚ @_•3k_@˜î¡8N‚ @É¸nm_@qRL*N‚ @fMìlm_@C>®b<‚ @²ïÈ1k_@ÆÊq<‚ @û¥öh_@ñX<‚ @\0\0\0\0\0\0\0\0\07q\rÔ_@F­<•K‚ @é©>\rÔ_@›j¡Í9‚ @Ÿ¨ÒÑ_@Å>	Ü9‚ @)cêÓÑ_@+‘¤£K‚ @7q\rÔ_@F­<•K‚ @\0\0\0\0\0\0\0\0\0hã¸_@jë[-P‚ @ì0•â\Z_@"9£;P‚ @³Ö_ä\Z_@úŒCb‚ @ô•ƒ_@®/üôa‚ @hã¸_@jë[-P‚ @\0\0\0\0\0\0\0\0\0§]G_@=¥ÅO‚ @„\Z:FE_@é,O‚ @Ø²HE_@^«³ó`‚ @ L)ƒG_@Ádå`‚ @§]G_@=¥ÅO‚ @\0\0\0\0\0\0\0\0\0A¤]Í_@Á\'sÀK‚ @ê,"Ë_@rÚÙÎK‚ @.ÃO$Ë_@îYu–]‚ @\när_Í_@…—ˆ]‚ @A¤]Í_@Á\'sÀK‚ @\0\0\0\0\0\0	\0\0\07q\rÔ_@F­<•K‚ @‰:ÜÔ_@áí×\\]‚ @XSÿKÖ_@ˆ”oN]‚ @"j"‡Ø_@sÕ@]‚ @é~EÂÚ_@¡°1]‚ @JvÀÚ_@4ŸjK‚ @G‡S…Ø_@L´kxK‚ @A}0JÖ_@§cÔ†K‚ @7q\rÔ_@F­<•K‚ @\0\0\0\0\0\0	\0\0\0	•H#è_@HÈƒK‚ @™%èå_@Ä?ï!K‚ @Èôéå_@‡Šé\\‚ @>Ñ%è_@N{Û\\‚ @é×:`ê_@XŽ²Ì\\‚ @Ü]›ì_@§;F¾\\‚ @Ò†Ž™ì_@¨«öJ‚ @ïŽk^ê_@ëK‚ @	•H#è_@HÈƒK‚ @\0\0\0\0\0\0\0\0\08múßý_@-á|-?‚ @’«Ö¤û_@\n¾;?‚ @ðç²iù_@+×ÿI?‚ @<Ì|kù_@£¡Q‚ @†²Fmù_@	TBÙb‚ @Ðšoù_@Vã t‚ @À„4ªû_@ˆ¢’t‚ @³j¨û_@Ëì\0Ëb‚ @¤œ ¦û_@ó¾_Q‚ @\rkÄáý_@‡õP‚ @8múßý_@-á|-?‚ @\0\0\0\0\0\0\0\0\0P¡ï!t_@»þæÆ_‚ @0Ìæq_@½Û=Õ_‚ @ºÉ˜èq_@sÌÛœq‚ @¸G¼#t_@Êß„Žq‚ @P¡ï!t_@»þæÆ_‚ @\0\0\0\0\0\0\0\0\0„´Áƒ_@ŒF*q‚ @Àç¿ƒ_@Ó{b_‚ @Ä„_@>xÕp_‚ @‘‘†_@\\ûr8q‚ @„´Áƒ_@ŒF*q‚ @\0\0\0\0\0\0\0\0\0ºàš›²_@"¤aüo‚ @ÞÔÌ™²_@÷yÅ4^‚ @Ëþ—²_@²M)mL‚ @Dõ!Ó´_@úÆ^L‚ @|E·_@³@dPL‚ @²ChI¹_@›!BL‚ @‘šG¹_@^"ez:‚ @\0-½‚»_@?­l:‚ @ôî€»_@¦»e¤(‚ @@½ »_@ýÇÉÜ‚ @[¿ýC¹_@´-ë‚ @téËE¹_@!É²(‚ @ÇÜ¨\n·_@Â ,Á(‚ @Î…Ï´_@¸ºŽÏ(‚ @ƒ½·Í´_@ô—ò‚ @”¹”’²_@}¼T‚ @b½b”²_@óîðÝ(‚ @4Ã0–²_@[¥:‚ @¹£\r[°_@ýî³:‚ @ÉžÛ\\°_@˜;‹{L‚ @Šp¸!®_@ÁÃì‰L‚ @Ú`†#®_@k‰Q^‚ @Ý›©^°_@w\'C^‚ @óšw`°_@l±Ã\np‚ @ºàš›²_@"¤aüo‚ @\0\0\0\0\0\0\r\0\0\0š+Ã7Â_@;jÐ]‚ @ƒTærÄ_@Â>§Á]‚ @}Æ´tÄ_@HëB‰o‚ @(ú×¯Æ_@]JÝzo‚ @j{	®Æ_@­A³]‚ @°þ:¬Æ_@¢¦ëK‚ @ŒäqÄ_@!úK‚ @™vIoÄ_@nßo2:‚ @8g&4Â_@{ëÔ@:‚ @ÒUù¿_@Í‘9O:‚ @>ªÑú¿_@ëaÕL‚ @gÈô5Â_@ä«pL‚ @š+Ã7Â_@;jÐ]‚ @\0\0\0\0\0\0\0\0\0É}uá_@æ¿úÍn‚ @&±®sá_@Åß_]‚ @Û½Ñ®ã_@$õ÷\\‚ @.›­ã_@…QZ0K‚ @:›ßqá_@ŠýÄ>K‚ @D™¼6ß_@ÔC/MK‚ @K•™ûÜ_@b$™[K‚ @«‘hýÜ_@&4#]‚ @l¢‹8ß_@Ë5Ê]‚ @–­Z:ß_@§%eÜn‚ @É}uá_@æ¿úÍn‚ @\0\0\0\0\0\0\0\0\0Òß£ñ_@el¡\\‚ @2ß€Öî_@9ƒÙ¯\\‚ @¹CPØî_@ëtwn‚ @\ZQsñ_@×in‚ @w\\–Nó_@_C™Zn‚ @iÞÆLó_@,áþ’\\‚ @Òß£ñ_@el¡\\‚ @\0\0\0\0\0\0\0\0\0ÕÃ÷_@.¨"v\\‚ @ÿÚé‡õ_@‹÷„\\‚ @Ñe¹‰õ_@þI+Ln‚ @&mÜÄ÷_@âê¼=n‚ @ÕÃ÷_@.¨"v\\‚ @\0\0\0\0\0\0\0\0\0¸C.7k_@ÿ/ÞÇq‚ @¶½\nüh_@´…3Öq‚ @L&×ýh_@ù²Ñƒ‚ @¹ú8k_@ŸM|ƒ‚ @×Itm_@ˆ‚&ƒ‚ @¹ÇQrm_@tˆ¹q‚ @¸C.7k_@ÿ/ÞÇq‚ @\0\0\0\0\0\0	\0\0\0„´Áƒ_@ŒF*q‚ @KƒÃƒ_@û·¶ñ‚‚ @þ¤þ…_@Ã\\ã‚‚ @·vÈ9ˆ_@ÍýÕ‚‚ @jíëtŠ_@§Æ‚‚ @XÅsŠ_@«Å	ÿp‚ @h[û7ˆ_@²«d\rq‚ @wï×ü…_@ý+¿q‚ @„´Áƒ_@ŒF*q‚ @\0\0\0\0\0\0\0\0\0}Æ´tÄ_@HëB‰o‚ @Ï‘9Â_@x&¨—o‚ @š+Ã7Â_@;jÐ]‚ @­\0 ü¿_@ø/qÞ]‚ @¾Ó|Á½_@øÕì]‚ @lKÃ½_@ kq´o‚ @Ynþ¿_@êû¦o‚ @“³<\0À_@ÖÅ¨m‚ @	ø_;Â_@®àC_‚ @{:ƒvÄ_@É•ÞP‚ @}Æ´tÄ_@HëB‰o‚ @\0\0\0\0\0\0\0\0\0wEvþ_@!kon‚ @Áu";ü_@sûÞ n‚ @ã(ò<ü_@ yè‚ @ï6xþ_@Œ|	Ú‚ @wEvþ_@!kon‚ @\0\0\0\0\0\0\0\0\0èk€7÷_@0g>˜‚ @\\q¤rù_@Ôÿ%0˜‚ @…Úpù_@È„h†‚ @fŒ¶5÷_@<éÅv†‚ @èk€7÷_@0g>˜‚ @\0\0\0\0\0\0\0\0\0ì0•â\Z_@"9£;P‚ @$Êà\Z_@9ãt>‚ @Û2î_@¥»e>‚ @hã¸_@jë[-P‚ @ä“ÜX_@ø7P‚ @bB\0”!_@ÉÌP‚ @Ox5’!_@ ÷+I>‚ @	YÍ#_@Lˆã:>‚ @1CŽË#_@«nCs,‚ @9°j!_@hÎ‹,‚ @DGU_@kÈÓ,‚ @O„#\Z_@²\\ž,‚ @À×X_@?{Ö\Z‚ @‘K5Ý\Z_@51Âä\Z‚ @ZëÿÞ\Z_@>‹b¬,‚ @iPÜ£_@T©º,‚ @må¦¥_@»I‚>‚ @¸;ƒj_@H.>‚ @÷ÅMl_@[£0XP‚ @8Rn_@]Ñb‚ @uàâo_@E‡qçs‚ @u¿4_@ïÂ·õs‚ @í‘‰6_@eAX½…‚ @³p­q_@&ö¯…‚ @ïxs_@øb²v—‚ @zì›®_@g¢kh—‚ @zMÑ¬_@*EË …‚ @w°«_@Ýå*Ùs‚ @v<©_@Š„Šb‚ @r|q§_@!êIP‚ @ì0•â\Z_@"9£;P‚ @\0\0\0\0\0\0\0\0\0v¬.01_@í“(å=‚ @·õ._@§esó=‚ @c/Öö._@?/»O‚ @H¡ø._@Æö²‚a‚ @»blú._@3¼RJs‚ @e7ü._@šò…‚ @3F[71_@yo§…‚ @¢q&91_@7!GË–‚ @5CJt3_@¿›û¼–‚ @r3_@œù[õ„‚ @ÎÔ³p3_@hU¼-s‚ @Ä51_@¬»<s‚ @VõÄ31_@Ùhta‚ @æÏù11_@ìMÈ¬O‚ @v¬.01_@í“(å=‚ @\0\0\0\0\0\0\0\0\0õ˜Ü±Œ_@aÝè”‚ @h\0íŽ_@Šq”‚ @ÊÔ2ëŽ_@€ëï©‚‚ @b°Œ_@¬¬K¸‚‚ @õ˜Ü±Œ_@aÝè”‚ @\0\0\0\0\0\0\0\0\0ºàš›²_@"¤aüo‚ @•îh²_@FÌýÃ‚ @?ŒØ´_@ŒI›µ‚ @¢¯·_@a8§‚ @·}·_@ÄgÔn“‚ @N¡P¹_@Ü	q`“‚ @‘gÄ‹»_@6F\rR“‚ @Ð¼çÆ½_@Ò©C“‚ @mÅ½_@BE\r|‚ @¢$ö‰»_@ð^qŠ‚ @#ÚÒN¹_@áÕ˜‚ @ù¥M¹_@×9Ño‚ @<fá·_@VXœßo‚ @|$¾Ö´_@1ÿío‚ @ºàš›²_@"¤aüo‚ @\0\0\0\0\0\0\0\0\0}Ý_@=#j²€‚ @1dãÅÚ_@@ÍÓÀ€‚ @ÛY²ÇÚ_@}Ønˆ’‚ @ê’ÕÝ_@¾z’‚ @}Ý_@=#j²€‚ @\0\0\0\0\0\0\r\0\0\0`”¡	_@«&oY‘‚ @Þ^ÄŸ	_@fÕ‘‚ @#_ô	_@£;Êm‚ @ôgÑb_@~0­Øm‚ @Àn®\'_@ÁWçm‚ @ˆs‹ì_@Hõm‚ @÷L[î_@/)½‚ @öB8³\0_@¼v™Ë‚ @¥µ\0_@Vv3“‘‚ @i(+ð_@ûÂ„‘‚ @*=N+_@ûRv‘‚ @çOqf_@1Óàg‘‚ @`”¡	_@«&oY‘‚ @\0\0\0\0\0\0\0\0\0êðº‡*_@*O\'ö–‚ @[—L(_@ª=q—‚ @¹bN(_@¼+Ì¨‚ @ø…‰*_@£-Ç½¨‚ @êðº‡*_@*O\'ö–‚ @\0\0\0\0\0\0\0\0\0­þ`_@À¸Áž•‚ @Uñ×]_@\n1­•‚ @à½Ù]_@a¨³t§‚ @38á`_@t `f§‚ @­þ`_@À¸Áž•‚ @\0\0\0\0\0\0\0\0\0õ˜Ü±Œ_@aÝè”‚ @€¹vŠ_@|HDŽ”‚ @–C†xŠ_@Î†áU¦‚ @ÑÑ©³Œ_@†G¦‚ @õ˜Ü±Œ_@aÝè”‚ @\0\0\0\0\0\0\0\0\0JGc“_@¡9ÔT”‚ @Ù•#(‘_@ôÕ0c”‚ @<èð)‘_@BåÍ*¦‚ @ppe“_@B9q¦‚ @£ö7 •_@…\'¦‚ @·Šjž•_@‘7wF”‚ @JGc“_@¡9ÔT”‚ @\0\0\0\0\0\0\0\0\0¡^5Ró_@ªÎé‘‚ @¼9ñ_@Í´;ø‘‚ @±áñ_@™ Ö¿£‚ @¼âTó_@¸]h±£‚ @¡^5Ró_@ªÎé‘‚ @\0\0\0\0\0\0\0\0\0`”¡	_@«&oY‘‚ @bdd£	_@)å!£‚ @Ú‡Þ_@!Ã–£‚ @J™ª_@[;$£‚ @ý{Ú_@fœŠ<‘‚ @Po·Ü_@gýJ‘‚ @`”¡	_@«&oY‘‚ @\0\0\0\0\0\0	\0\0\0èk€7÷_@0g>˜‚ @sd\\üô_@rú§L˜‚ @/9&þô_@¶NIª‚ @ø"Ãò_@õÂ‰"ª‚ @íìËÄò_@¶$+ê»‚ @èðÿô_@è êÛ»‚ @å0;÷_@]·©Í»‚ @gMJ9÷_@·tª‚ @èk€7÷_@0g>˜‚ @\0\0\0\0\0\0	\0\0\0ïxs_@øb²v—‚ @eT8_@Ì½ø„—‚ @Þ)0ý_@á²>“—‚ @‘¤úþ_@Ë<ßZ©‚ @B!Å\0_@¤Ä"»‚ @R(é;_@g°9»‚ @Üž:_@"8™L©‚ @*—Bu_@»ÍR>©‚ @ïxs_@øb²v—‚ @\0\0\0\0\0\0\0\0\0ÞŒÇƒ_@«”ñ€¦‚ @ö÷‹_@yxK¦‚ @¤ñÄ_@bóèV¸‚ @ª”èÈƒ_@éÿŽH¸‚ @­5†_@´¦4:¸‚ @!?†_@K—r¦‚ @ÞŒÇƒ_@«”ñ€¦‚ @\0\0\0\0\0\0\0\0\0Æð_@™ú=ç¢‚ @·°ÍT_@ÙM±õ¢‚ @ÍÜV_@øÚJ½´‚ @øþÀ‘_@ów×®´‚ @Æð_@™ú=ç¢‚ @\0\0\0\0\0\0\0\0\0™¹àw3_@ÖÙ:Lº‚ @}Î¼<1_@~†Zº‚ @ëÿ‡>1_@*&"Ì‚ @Ê÷«y3_@ÇuÚÌ‚ @™¹àw3_@ÖÙ:Lº‚ @\0\0\0\0\0\0	\0\0\0Æâ¤b<_@ îhK¨‚ @n\':_@*\Z¶Y¨‚ @ínL):_@]‰U!º‚ @Ñ‰(î7_@D_¢/º‚ @‹áóï7_@\0ÜA÷Ë‚ @lÓ+:_@}öôèË‚ @KÃ;f<_@<«§ÚË‚ @Rpd<_@·Mº‚ @Æâ¤b<_@ îhK¨‚ @\0\0\0\0\0\0\0\0\0ý°Èf_@ñ\\¹‚ @*OLÆf_@9&c;§‚ @VïÄf_@oíÄs•‚ @…‘³Âf_@•²&¬ƒ‚ @²5çÀf_@­uˆäq‚ @­«Ã…d_@èÿÜòq‚ @»ú‡d_@uL{ºƒ‚ @ñalLb_@—€ÏÈƒ‚ @;¦8Nb_@¸Úm•‚ @ÊK\\‰d_@ò–‚•‚ @Ùž(‹d_@`ß·I§‚ @èóôŒd_@»%V¹‚ @Ò4ÑQb_@Èˆª¹‚ @Sb_@¶ÜHçÊ‚ @kËiUb_@”.ç®Ü‚ @¤d_@A¬’ Ü‚ @©z±Ëf_@/Ä=’Ü‚ @ÔåÉf_@—‘ŸÊÊ‚ @ý°Èf_@ñ\\¹‚ @\0\0\0\0\0\0\0\0\0Õ„Ë _@–vUÉ‚ @U?až_@hCÕcÉ‚ @Wä.’ž_@rîq+Û‚ @Ë†RÍ _@ò°Û‚ @Õ„Ë _@–vUÉ‚ @\0\0\0\0\0\0\0\0\0§‘×	_@jÜˆYÆ‚ @Áf´Î_@²\ZýgÆ‚ @j°„Ð_@&„–/Ø‚ @è§_@6"!Ø‚ @§‘×	_@jÜˆYÆ‚ @\0\0\0\0\0\0\0\0\0C±y`_@¦éœõÊ‚ @gáUÝ]_@ÙðË‚ @,"ß]_@ýËÜ‚ @ðHîà]_@q-“î‚ @V2`_@ªÙ„î‚ @ËðE\Z`_@(K;½Ü‚ @C±y`_@¦éœõÊ‚ @\0\0\0\0\0\0\0\0\0æÓí}Š_@[5¹¬Û‚ @]ÊBˆ_@by»Û‚ @¶D—Dˆ_@¿±‚í‚ @»Š_@\\kVtí‚ @æÓí}Š_@[5¹¬Û‚ @\0\0\0\0\0\0\0\0\0bç9à_@Íu[ˆƒ @}+^	_@ zƒ @ãÙ“	_@ bv²ð‚ @;¸T_@)¶1¤ð‚ @•BÜ\r_@p¤ì•ð‚ @ñs\0Ë_@ù,§‡ð‚ @þ5É_@É›ÀÞ‚ @pÙŽ\r_@¯LÎÞ‚ @Ú²íR_@Ô‘ÜÞ‚ @yX#Q_@bSðÍ‚ @¨<ÿ	_@6à4#Í‚ @EŠÉ	_@:¢ÕêÞ‚ @´_¥Ü_@àØùÞ‚ @Œ¢oÞ_@X¨ºÀð‚ @bç9à_@Íu[ˆƒ @\0\0\0\0\0\0\0\0\0¨‡¤ª	_@iÊo?ê‚ @7o_@ÁÅáMê‚ @58Qq_@°‰{ü‚ @†•t¬	_@”~	ü‚ @¨‡¤ª	_@iÊo?ê‚ @\0\0\0\0\0\0\r\0\0\0WQî_@Àh8Ø‚ @·ËF_@K‚­Ø‚ @ï‚›H_@ÊFÚé‚ @SÃ¾ƒ_@Â ÑËé‚ @S7…_@ÁÖj“û‚ @u‚²À_@è7õ„û‚ @’ËÕû_@O3vû‚ @©ù6"_@öÈhû‚ @Zx(5"_@OÂo é‚ @>ú_@ßæ®é‚ @¯â¾_@°\\½é‚ @ð‚½_@uéÂõ×‚ @WQî_@Àh8Ø‚ @\0\0\0\0\0\0\0\0\0‘³b©[_@øÈ½0ƒ @Ž‡–§[_@bNi\0ƒ @]Ê¥[_@¼Ñ€¡î‚ @%p¦jY_@³ÌÓ¯î‚ @crlY_@ûXrw\0ƒ @ ¬>nY_@2ã?ƒ @‘³b©[_@øÈ½0ƒ @\0\0\0\0\0\0\0\0\0Õ—¦½o_@ú¿¯ƒ @¼ŠÊøq_@Fæh¡ƒ @ßýöq_@ËÙÿ‚ @êøÙ»o_@5"èÿ‚ @Õ—¦½o_@ú¿¯ƒ @\0\0\0\0\0\0\0\0\0Ç†Àáz_@‡\\ÍØí‚ @Vä}_@RktÊí‚ @¡?±}_@Ký’ÿ‚ @†cãz_@(þj ÿ‚ @Ç†Àáz_@‡\\ÍØí‚ @nµœ¦x_@ûç%çí‚ @k…i¨x_@E™Ã®ÿ‚ @hW6ªx_@|Havƒ @IBZåz_@¸hƒ @)+~ }_@3¯Yƒ @¢[_@îVKƒ @»ÕY_@®–¸ƒÿ‚ @Òñø”_@RÊ^uÿ‚ @Åî+“_@ªWÁ­í‚ @q#X_@^¼í‚ @)/;V_@}ôÛ‚ @ã<nT_@š	à,Ê‚ @‰J}_@<A9;Ê‚ @™n}_@V×ÖÜ‚ @¬óßz_@ã¸/Ü‚ @Ç†Àáz_@‡\\ÍØí‚ @\0\0\0\0\0\0\0\0\0¡P¯&_@¨³\rƒ @lž3ê(_@ªü;\rƒ @ÊÛbè(_@o\'£<û‚ @Åš?­&_@Ã\ZKû‚ @¡P¯&_@¨³\rƒ @\0\0\0\0\0\07\0\0\0bç9à_@Íu[ˆƒ @H¡¥_@ÖeŸ–ƒ @6iK£_@ÐˆþÎð‚ @á-\'h_@‡BÝð‚ @ð-\0_@…ëð‚ @<±Þñý_@¶ÇÇùð‚ @ìoº¶û_@-\nñ‚ @ž,–{ù_@äôKñ‚ @Tçq@÷_@Ûr$ñ‚ @	 Mõ_@‹Î2ñ‚ @ÀV)Êò_@ˆ=Añ‚ @Ò†_Èò_@âmyß‚ @UÃƒõ_@?-kß‚ @ è¹õ_@\nñ‹£Í‚ @à¸•Æò_@e„Ì±Í‚ @"‡q‹ð_@²ÀÍ‚ @NH;ð_@.®‡ß‚ @ÎRî_@˜öí•ß‚ @RÅòì_@Bh-¤ß‚ @Õ€ÎÛé_@,tl²ß‚ @³˜Ýé_@á\rzñ‚ @tÊs¢ç_@—ÃLˆñ‚ @Š\\=¤ç_@ÕjîOƒ @Œúiå_@VÊ,^ƒ @–ô-ã_@Äjlƒ @¾/ã_@Zˆ4ƒ @Xž™ôà_@ã+JBƒ @™)u¹Þ_@«i‡Pƒ @šŒ>»Þ_@ñJ)\'ƒ @cöà_@Ÿýë	\'ƒ @¡‡1ã_@‹J®û&ƒ @)¬lå_@¶1pí&ƒ @Ûâjå_@Î%ƒ @Ÿð¦ç_@ƒ @e]+áé_@7;Q	ƒ @¼aßé_@”¥¯Aƒ @’\Z†\Zì_@’zp3ƒ @ón¼ì_@lòÎkñ‚ @5¾àSî_@5q]ñ‚ @zð_@?ŠOOñ‚ @£ÐÎð_@Móðƒ @®(óËò_@	—°ƒ @™ü¼Íò_@xîQÐƒ @k_áõ_@çÂƒ @>ÀD÷_@”åÏ³ƒ @*ù_@€HŽ¥ƒ @é{Nºû_@ªEL—ƒ @æ„¼û_@Ï\\í^&ƒ @ƒì<÷ý_@©äªP&ƒ @#Ra2\0_@ÂhB&ƒ @/—0\0_@½Çzƒ @y†»k_@¥Úƒlƒ @WÛß¦_@Ì@@^ƒ @7.â_@2AüOƒ @bç9à_@Íu[ˆƒ @\0\0\0\0\0\0\0\0\0Õ—¦½o_@ú¿¯ƒ @î¢‚‚m_@¨¾ƒ @7O„m_@n£´…#ƒ @Â8s¿o_@Çå]w#ƒ @Õ—¦½o_@ú¿¯ƒ @\0\0\0\0\0\0\0\0\0…jov_@¹„ƒ @ {î3t_@Ãl“ƒ @6»5t_@79¯Z#ƒ @¾1ßpv_@MJWL#ƒ @…jov_@¹„ƒ @\0\0\0\0\0\0#\0\0\0~Ç6š»_@6ìŽ!ƒ @uth˜»_@E_PÇƒ @ÕÃD]¹_@Ú´Õƒ @0!"·_@­\\äƒ @´ÙR ·_@rd|þ‚ @Ò1/å´_@Òºß*þ‚ @‰\\ýæ´_@ÀÂ{òƒ @à¥Ù«²_@ÃÞ\0ƒ @í‡ª²_@q«B9þ‚ @ýk=¨²_@¾‘¦qì‚ @ÙÌm°_@ì	€ì‚ @¯¿Kk°_@ƒál¸Ú‚ @O+(0®_@>çÎÆÚ‚ @ê”õ«_@:‡0ÕÚ‚ @‹ˆÒö«_@ÒÌœì‚ @^ã®»©_@ô.«ì‚ @‚üà¹©_@wÁ‘ãÚ‚ @b½~§_@ô•òñÚ‚ @/<‹€§_@#\0¹ì‚ @ÿ’gE¥_@‘~ïÇì‚ @ÌçC\n£_@A—OÖì‚ @]ª£_@Ììþ‚ @Ub5G¥_@lö‹þ‚ @KY‚§_@Mh+þ‚ @=Ì|½©_@ntÊrþ‚ @.~ ø«_@Ï\Zidþ‚ @Òunú«_@‡a,ƒ @…2’5®_@v’£ƒ @3íµp°_@¤]Aƒ @e\0„r°_@ç‚ÝÖ!ƒ @×Å§­²_@¢ØzÈ!ƒ @D‰Ëè´_@œÈº!ƒ @°Jï#·_@ÖR´«!ƒ @\n_¹_@OwP!ƒ @~Ç6š»_@6ìŽ!ƒ @\0\0\0\0\0\0	\0\0\0†~¢œ_@¥<p\\ƒ @Œ9Òš_@°ËÖ”\rƒ @†™õÕ_@´b†\rƒ @ÍI%Ô_@ÎPÉ¾û‚ @—ö™_@©X=Íû‚ @[¡Þ]_@Ãú°Ûû‚ @Œ×®__@}J£\rƒ @Àa_@Jþãjƒ @†~¢œ_@¥<p\\ƒ @\0\0\0\0\0\0\0\0\0¡P¯&_@¨³\rƒ @Ñ\0ís$_@­í*!\rƒ @ï«½u$_@hàÃèƒ @„á°&_@ýŠLÚƒ @¡P¯&_@¨³\rƒ @\0\0\0\0\0\0\0\0\0lž3ê(_@ªü;\rƒ @cì(_@ÓÏÔËƒ @»\'\'+_@è®\\½ƒ @ Kb-_@<(ä®ƒ @ð3z`-_@¨tKçƒ @1êV%+_@‰ëÃõƒ @lž3ê(_@ªü;\rƒ @\0\0\0\0\0\0\0\0\0QÛ[/_@M%ƒ @›Ÿ7Ñ,_@8Û$%ƒ @|ÃÓ,_@mözì6ƒ @õ\'/_@°/Þ6ƒ @QÛ[/_@M%ƒ @\0\0\0\0\0\0\0\0\0Žìï†Š_@ò.Ë’4ƒ @ìàÂŒ_@Ò6o„4ƒ @˜FÀŒ_@°Ò¼"ƒ @h°"…Š_@%.Ë"ƒ @Žìï†Š_@ò.Ë’4ƒ @\0\0\0\0\0\0\0\0\0~Ç6š»_@6ìŽ!ƒ @‰œ»_@¸\nˆV3ƒ @±ä(×½_@úS#H3ƒ @ÔªLÀ_@{7¾93ƒ @@<~À_@4‚"r!ƒ @à‚ZÕ½_@þŽ‡€!ƒ @~Ç6š»_@6ìŽ!ƒ @\0\0\0\0\0\0\0\0\0ë–o„3_@ò—Á6ƒ @pRKI1_@òäÏ6ƒ @Ú‘K1_@¡ƒ—Hƒ @ã:†3_@7‰Hƒ @ë–o„3_@ò—Á6ƒ @\0\0\0\0\0\0\0\0\0ÔIç@_@ì-Çk6ƒ @VÏ$¬>_@W¢z6ƒ @][ð­>_@Îá´AHƒ @Ÿ é@_@Ç]f3Hƒ @ÔIç@_@ì-Çk6ƒ @\0\0\0\0\0\0\0\0\0hÙœ¯x_@¿I:ÍFƒ @fÐ­x_@¹ œ5ƒ @úú«rv_@õ5ƒ @7Æxtv_@¸½’ÛFƒ @hÙœ¯x_@¿I:ÍFƒ @\0\0\0\0\0\0	\0\0\0Bã_Ö_@â%\Zâ ƒ @f¿$Ô_@5,ƒð ƒ @ƒGŽ&Ô_@\nT¸2ƒ @„ù±aÖ_@þ=µ©2ƒ @Ëé€cÖ_@TPqDƒ @¦¤žØ_@ÈæbDƒ @ƒ©ÕœØ_@1ÂK›2ƒ @|®›Ø_@Ð¹°Ó ƒ @Bã_Ö_@â%\Zâ ƒ @\0\0\0\0\0\0\0\0\0•>¬_@GÅ"µIƒ @S\Z\Zq_@ÓfÃIƒ @—Oär_@p‹[ƒ @‰×®_@ü—Ã|[ƒ @•>¬_@GÅ"µIƒ @\0\0\0\0\0\0\0\0\0™ÕNk_@åêXƒ @“ÿ´‰m_@A‰ŽÜXƒ @Ž\'ÙÄo_@ªœ7ÎXƒ @€Ão_@·™Gƒ @heè‡m_@”ðGƒ @3HÄLk_@:G#Gƒ @™ÕNk_@åêXƒ @\0\0\0\0\0\0\0\0\0hÙœ¯x_@¿I:ÍFƒ @k³i±x_@µð×”Xƒ @^Ñìz_@Q†Xƒ @˜êÀêz_@pá¾Fƒ @hÙœ¯x_@¿I:ÍFƒ @\0\0\0\0\0\0\0\0\0Žìï†Š_@ò.Ë’4ƒ @/öËKˆ_@PÁ&¡4ƒ @Íý§†_@ìí¯4ƒ @k"u†_@ü8wFƒ @‘\'™Mˆ_@¶üÃhFƒ @öZfOˆ_@6a0Xƒ @ÞjŠŠŠ_@X„"Xƒ @Åx®ÅŒ_@âl©Xƒ @×+áÃŒ_@âRLFƒ @µ*½ˆŠ_@­ZhZFƒ @Žìï†Š_@ò.Ë’4ƒ @\0\0\0\0\0\0\0\0\0…h¦¬_@½gvJWƒ @IXÊ<®_@æY<Wƒ @ÔKü:®_@"+xtEƒ @ÓhØÿ«_@I)Ú‚Eƒ @…h¦¬_@½gvJWƒ @\0\0\0\0\0\0\0\0\0UUd‰á_@qÙ¡a2ƒ @g­@Nß_@Cìp2ƒ @ÀÐPß_@cÃ§7Dƒ @öÞQß_@r˜BÿUƒ @”·á_@)f×ðUƒ @r…3‹á_@Õ <)Dƒ @UUd‰á_@qÙ¡a2ƒ @\0\0\0\0\0\0\0\0\0S—	îî_@¢x±ÒCƒ @·îå²ì_@ºýáCƒ @°`µ´ì_@\\t¹¨Uƒ @Ùïî_@‡ßKšUƒ @S—	îî_@¢x±ÒCƒ @\0\0\0\0\0\0\0\0\0™S?Ÿ/_@ŠÝh0ƒ @Wòd-_@ÁÙ|v0ƒ @’Ôìe-_@4‰>Bƒ @Ô¸½g-_@˜6®Tƒ @¡3á¢/_@Ë\Z5÷Sƒ @f¬Þ1_@<™»èSƒ @%#(4_@ë±AÚSƒ @Ý—KT6_@ØdÇËSƒ @\no8_@²L½Sƒ @>{’Ê:_@n™Ñ®Sƒ @äéµ=_@V Sƒ @A¬ä=_@IÜ½ØAƒ @`JÁÈ:_@ÓJ9çAƒ @wæ8_@œS´õAƒ @‰€zR6_@£ö.Bƒ @”W4_@é3©Bƒ @†4_@Ø³K0ƒ @Õ²bÚ1_@‘{ŠY0ƒ @™S?Ÿ/_@ŠÝh0ƒ @\0\0\0\0\0\0\0\0=6Æ_@tù˜]ƒ @îÅ+qÈ_@äÜ_ý\\ƒ @§ÜboÈ_@ƒf½5Kƒ @™‹‡ªÊ_@µóƒ\'Kƒ @¦P¬Ê_@‘Z&ï\\ƒ @_;uçÌ_@zrìà\\ƒ @8¬åÌ_@&JKƒ @„ãÐ Ï_@ÓÜKƒ @ó™"Ï_@¢$²Ò\\ƒ @Ù¨¾]Ñ_@qwÄ\\ƒ @~Œõ[Ñ_@¾8ÕüJƒ @z3\Z—Ó_@æ.šîJƒ @zØ>ÒÕ_@M¿^àJƒ @{{c\rØ_@ñé"ÒJƒ @~ˆHÚ_@Ò®æÃJƒ @‡»¬ƒÜ_@ñ\rªµJƒ @QaãÜ_@B!î8ƒ @•ñ½Þ_@(*Ëß8ƒ @šŒ>»Þ_@ñJ)\'ƒ @	\Z€Ü_@‚2f&\'ƒ @›ƒõDÚ_@Q´¢4\'ƒ @Ï¾FÚ_@š²Dü8ƒ @Î:šØ_@0Þ€\n9ƒ @üÐ	Ø_@^ÐÞB\'ƒ @©r¬ÎÕ_@«†\ZQ\'ƒ @2ç‡“Ó_@5×U_\'ƒ @¿YcXÑ_@þÁm\'ƒ @NÊ>Ï_@GË{\'ƒ @â8\ZâÌ_@KfŠ\'ƒ @<QàÌ_@ÆcÂƒ @`µ,¥Ê_@Å²œÐƒ @½,jÈ_@÷ÕÞƒ @¢ã.Æ_@~Õíƒ @«x¬0Æ_@“a±´\'ƒ @Iß‡õÃ_@ÓééÂ\'ƒ @ƒ¿óÃ_@8NGûƒ @·MöñÃ_@Œ°¤3ƒ @âËÑ¶Á_@´ÜAƒ @Ù	µÁ_@Â:zò‚ @Ë›äy¿_@ó’qˆò‚ @ƒñx¿_@+ÒÎÀà‚ @>…÷<½_@ëÏà‚ @ûÓ»_@Fž<Ýà‚ @8ˆ\n\0»_@[¼™Ï‚ @¾$æÄ¸_@FúÏ#Ï‚ @½¤Ã¸_@Ê-\\½‚ @\nLù‡¶_@tÏbj½‚ @ÊÚ0†¶_@eÊ¿¢«‚ @ßŒK´_@Îõ°«‚ @a*DI´_@,Ré™‚ @†kh„¶_@EÃÛ™‚ @ÊÚ0†¶_@eÊ¿¢«‚ @¹&UÁ¸_@>Š”«‚ @ªpyüº_@XòS†«‚ @Ýç°úº_@<\n±¾™‚ @#Õ5½_@\Z•z°™‚ @Ÿ¸7½_@³mx«‚ @™þÁr¿_@Pƒæi«‚ @C\\ùp¿_@:ºC¢™‚ @ë»0o¿_@ï Ú‡‚ @`æTªÁ_@û½iÌ‡‚ @ÖyåÃ_@"\'2¾‡‚ @O5 Æ_@*ú¯‡‚ @ËYÁ[È_@9ÈÁ¡‡‚ @_ˆøYÈ_@9Úu‚ @ð¸/XÈ_@í§|d‚ @çÁS“Ê_@æþCd‚ @±çŠ‘Ê_@){¡<R‚ @yÂÊ_@Zõþt@‚ @;9ùÊ_@zm\\­.‚ @êÉÌ_@H#Ÿ.‚ @ç8TÇÌ_@á×‚ @âY‹ÅÌ_@f–Þ‚ @¯\0Ï_@†o¥‚ @?5æþÎ_@ƒ\0:ù @¨ë	:Ñ_@nƒÉ+ù @7âÒ;Ñ_@ëâkó\n‚ @ÅÚ›=Ñ_@Y@»‚ @QÕd?Ñ_@³›°‚.‚ @×Ñ-AÑ_@\0õRJ@‚ @R¹Q|Ó_@Ô<@‚ @°ˆzÓ_@OŠvt.‚ @¸¨¿xÓ_@|>Ô¬‚ @g£övÓ_@•ð1å\n‚ @™b\Z²Õ_@…˜÷Ö\n‚ @¯tã³Õ_@äÖ™ž‚ @Áˆ¬µÕ_@0<f.‚ @{_Ðð×_@U6X.‚ @¦>ï×_@	_‚ @Í>í×_@ºÚ¼È\n‚ @ñuë×_@Õ©\Zù @d±˜&Ú_@Ø•ßòø @Û]¼aÜ_@ ¤äø @SàœÞ_@¯<hÖø @*Ç›Þ_@T8Æç @ãb:Öà_@³Š\0ç @Ï°Øà_@„÷+Èø @LW\'ã_@žLï¹ø @û³ðã_@Ô/‘\n‚ @?ePå_@ªTs\n‚ @ÍûJNå_@þ;²«ø @X”Lå_@Bfäæ @á.¸Jå_@€ŽnÕ @Ú·Û…ç_@<71Õ @žG„ç_@êlFÃ @×Á5¿é_@x¿Q8Ã @ÕFl½é_@¢°p± @ÐÍ¢»é_@ºC©Ÿ @†,Æöë_@¨OÐšŸ @»¨üôë_@>ž.Ó @î&3óë_@ÂêŒ| @ §iñë_@75ëCj @ÝŒ,î_@\n­5j @ùRÃ*î_@bnX @¥zæeð_@¿àÌ_X @Kådð_@,F+˜F @ðQSbð_@Š©‰Ð4 @^vò_@ŸáJÂ4 @÷¿¬›ò_@zR©ú" @Õ#ã™ò_@CÁ3 @xÕô_@¾²È$ @‘m<Óô_@/\']ÿ€ @rO_÷_@[ÊçNÿ€ @Ç•÷_@!TF‡í€ @îË\n÷_@×Û¤¿Û€ @t´îEù_@–0e±Û€ @ú$Dù_@ÔÅÃéÉ€ @ŽA[Bù_@ùX""¸€ @iì}}û_@"gâ¸€ @.)´{û_@ÄAL¦€ @IÅÖ¶ý_@É¿\0>¦€ @K÷µý_@ìm_v”€ @¤„/ðÿ_@ÐÏh”€ @â«eîÿ_@r‹} ‚€ @Õ›ìÿ_@EÜØp€ @Z\0Òêÿ_@„ü:_€ @H™¯¯ý_@òk{_€ @90tû_@¯u»-_€ @,Åj9ù_@»û;_€ @!XHþö_@X:J_€ @d¸~üö_@ZÏ˜‚M€ @V\\Áô_@x˜×M€ @!Å’¿ô_@þ5É;€ @žmp„ò_@ðQt×;€ @×ñ9†ò_@çûŸM€ @–‹Kð_@¦ùS­M€ @NIð_@"@²å;€ @¸+î_@¤Èïó;€ @èObî_@…ýM,*€ @-ÿ?Ñë_@Ì‹:*€ @![	Óë_@xë,<€ @¦ûæ—é_@œ¨i<€ @t¬–é_@d¾ÇH*€ @¾WûZç_@NW*€ @/šÄ\\ç_@\0¦<€ @¹6¢!å_@×ñá,<€ @fnk#å_@ùƒôM€ @¨4%å_@9þ%¼_€ @¶ãý&å_@YÈƒq€ @rm bç_@òà‹uq€ @Ù·écç_@wÒ-=ƒ€ @[!Ç(å_@ijKƒ€ @ÿ`*å_@f•€ @?³eç_@êÁÏ•€ @¢R|gç_@N¯qÌ¦€ @£Eiç_@£š”¸€ @<æ".å_@6ùO¢¸€ @ž¢Y,å_@Vþ­Ú¦€ @›ð6ñâ_@«çéè¦€ @š<¶à_@Pk%÷¦€ @³fÝ·à_@D…Ç¾¸€ @ò£º|Þ_@À²Í¸€ @œ†ñzÞ_@B‰`§€ @Ek(yÞ_@´]¾=•€ @êQ_wÞ_@0vƒ€ @bî²à_@91ágƒ€ @CÊ¸°à_@? q€ @‹:–uÞ_@i\0z®q€ @-%ÍsÞ_@«Î×æ_€ @¨ï®à_@ßîœØ_€ @ü‡&­à_@¨ÊúN€ @Ôi]«à_@S¤XI<€ @e\0;pÞ_@e“W<€ @þðqnÞ_@-ñ*€ @”ã¨lÞ_@!óNÈ€ @3Ë§à_@|Qº€ @«M”©à_@ñ{¶*€ @Z¨¶äâ_@e{s*€ @Ùå_@ˆè?e*€ @ZÍå_@)Ý€ @líââ_@*JÙ«€ @|\\$áâ_@0-7ä€ @¨›Få_@¹ÏûÕ€ @ZÍå_@)Ý€ @J2Yç_@y\nb€ @×ØhWç_@•ÀÇ€ @_œŸUç_@¡\0õ @ÍÊÁé_@Zóáñô @?÷ãËë_@ft¥ãô @B£\ZÊë_@y‘ã @“ƒøŽé_@â\0@*ã @T>/é_@YžbÑ @j)\rRç_@‰ÚpÑ @ìòCPç_@p\08©¿ @j¾zNç_@=ø•á­ @ÁXå_@«mÑï­ @E›å_@ÛS/(œ @¥¨mÖâ_@Tj6œ @¤‘¤Ôâ_@©(ÈnŠ @Æ©‚™à_@«³}Š @´K›à_@î¤Dœ @i½)`Þ_@}#ßRœ @ì¿`^Þ_@Ù<‹Š @Æ©‚™à_@«³}Š @…¡¹—à_@§v`µx @lÄ—\\Þ_@tŒšÃx @éÊÎZÞ_@Ö=øûf @”ø¬Ü_@pÞ1\ng @Ò\räÜ_@:~BU @BFÂâÙ_@¡©ÈPU @´| §×_@]o_U @,±~lÕ_@pÏ9mU @©îµjÕ_@›>—¥C @%.íhÕ_@¬«ôÝ1 @ zË-Ó_@‡,ì1 @Ä©òÐ_@·ücú1 @áðÐ_@«HÁ2  @Ýs¿µÎ_@,Iø@  @—Ýö³Î_@‡ƒUy @=ÕxÌ_@ÚŒ‡ @¨š³=Ê_@†4Â• @4ö‘È_@ˆô÷£ @1ˆÉ\0È_@DþTÜü~ @ƒî§ÅÅ_@\ZIŠêü~ @<ßÃÅ_@@Aç"ë~ @ó1ÂÅ_@V7D[Ù~ @²8ýÇ_@ŠMÙ~ @O0Z8Ê_@zÙ>Ù~ @»‘6Ê_@(6wÇ~ @JpûÇ_@l…Ç~ @©ÖNÀÅ_@]+¡“Ç~ @@a-…Ã_@þáÕ¡Ç~ @Ë¯õ†Ã_@|ýxiÙ~ @¤+ÔKÁ_@ú]­wÙ~ @koœMÁ_@í†P?ë~ @…Üz¿_@I‘„Më~ @¥GY×¼_@ý5¸[ë~ @Ç°7œº_@uëië~ @F“ošº_@H¢Ù~ @Àw§˜º_@Ä¤ÚÇ~ @iø…]¸_@e~×èÇ~ @wd"¶_@!Ó	÷Ç~ @ÃóBç³_@5Â;È~ @\0{å³_@ 8˜=¶~ @ó‡Yª±_@²ÉK¶~ @k£‘¨±_@\\&„¤~ @¤5pm¯_@"W’¤~ @Ù_¨k¯_@âm³Ê’~ @Õü†0­_@„ýãØ’~ @È5¿.­_@±>@~ @¸p÷,­_@Ï}œIo~ @8ºh¯_@.\rl;o~ @½:£±_@é6;-o~ @EG[Þ³_@ÿú	o~ @ÎŠ|¶_@rYØo~ @¶”´¶_@„Ô4I]~ @› ì¶_@‡M‘K~ @’vËÚ³_@ÐÂK~ @4‘Ù³_@7È9~ @íqâ±_@óDPÖ9~ @M›\Zœ±_@Öš¬(~ @Ì†ù`¯_@3Ý(~ @NpØ%­_@ºe\r+(~ @n- \'­_@Ø.±ò9~ @‹ìg)­_@ßõTºK~ @ºFîª_@Üá„ÈK~ @ènðª_@]¶(]~ @/.í´¨_@6LXž]~ @zëËy¦_@l|‡¬]~ @Ì¦ª>¤_@þF¶º]~ @`‰¢_@ì«äÈ]~ @ÊÞÁ¢_@r™@L~ @ã¢ ÆŸ_@@‰nL~ @L0ÙÄŸ_@AeÊG:~ @)ÿ·‰_@îß÷U:~ @N›ð‡_@[ªSŽ(~ @o9)†_@µr¯Æ~ @ÑK›_@ÅhÜÔ~ @°Ì@I›_@”8\r~ @‰{yG›_@UÔ“Eó} @pyX™_@ËEÀSó} @7‘\n™_@ýèŒá} @³?pÏ–_@VåGšá} @©Í–_@þv£ÒÏ} @vˆ’”_@<þÎàÏ} @eFO””_@|s¨á} @K.Y’_@&­ž¶á} @DgõZ’_@e8C~ó} @=]Ô_@VnŒó} @<Q³ä_@¥ˆ˜šó} @ÞUzæ_@È0=b~ @¢n›!_@þ«T~ @i…¼\\’_@“ÁçE~ @ˆ¥ƒ^’_@²HŒ\r~ @‚b#_@˜B·~ @[—)%_@#×[ã(~ @¤ÇJ`’_@ÃÍ0Õ(~ @¼ëb’_@ÁPÕœ:~ @ÍÙc’_@§ÑydL~ @›Yúž”_@­CNVL~ @iŽÁ ”_@³ò^~ @5Åˆ¢”_@g —åo~ @‰$ªÝ–_@Õ\rk×o~ @jqß–_@ iŸ~ @“±8á–_@\\Ã³f“~ @ûÿâ–_@X.¥~ @®~!™_@[t+ ¥~ @N\0CY›_@hþ¥~ @Ke\n[›_@¯ž¢Ù¶~ @°ñ+–_@=uË¶~ @keó—_@HB“È~ @”üÓŸ_@³Kë„È~ @ÜÔŸ_@=_LÚ~ @€¤ÖŸ_@¸p3ì~ @0²Å¢_@‚õì~ @`E¢_@nõ¨Íý~ @ÚT¢_@LóL• @Å vP¤_@ró‡ @¯D>R¤_@ÃßÁN! @ª`¦_@Âj’@! @«äÈ¨_@b2! @¤IÊ¨_@[[ú2 @Ú}k«_@ŠÖë2 @¦U@­_@V¥Ý2 @s+¯{¯_@î:tÏ2 @ÅEçy¯_@,žÐ! @Ö	µ±_@á,Ÿù  @eA³±_@Œû1 @·Ôbî³_@\ZÖÉ# @êÑ*ð³_@íUmë  @Ñòñ³_@®Ó³2 @GÒºó³_@`O´zD @à®Ü.¶_@ÁólD @ó -¶_@‡Þ¤2 @Ïn6h¸_@ÉÕ«–2 @®:X£º_@Z¾xˆ2 @’zÞ¼_@BAEz2 @Å8Bà¼_@ì~èAD @õn\nâ¼_@{º‹	V @^P,¿_@´¸WûU @m\rd¿_@¨Œ´3D @à…VÁ_@º4€%D @Ë/NXÁ_@BQ#íU @;\rp“Ã_@(„îÞU @¯è‘ÎÅ_@bQ¹ÐU @ãSZÐÅ_@ÜL\\˜g @:|È_@é¤&Šg @\n´D\rÈ_@ÏŽÉQy @ù/\rÈ_@¥vl‹ @ä­ÕÈ_@k\\áœ @i¡³ÕÅ_@î2Eïœ @|×Å_@*&è¶® @³‰DÙÅ_@T‹~À @²¯fÈ_@È!UpÀ @¸ÓˆOÊ_@ÆbÀ @\\dQQÊ_@––Á)Ò @”3/È_@Tø7Ò @u¹÷È_@ÛÞšÿã @PAÀÈ_@Rº=Çõ @*ËˆÈ_@¸“àŽ€ @ rfàÅ_@WÇ€ @4ñ.âÅ_@4®¹d€ @l‰§Ã_@ª‹ïr€ @»ýÔ¨Ã_@û’:+€ @Er÷ãÅ_@\0“\\,+€ @Rõ¿åÅ_@»uÿó<€ @^zˆçÅ_@gV¢»N€ @Nìe¬Ã_@kbØÉN€ @tªÃ_@:r5=€ @ºðzoÁ_@\n	k=€ @@\\CqÁ_@¿ØN€ @8Ê 6¿_@cICæN€ @÷*é7¿_@Væ­`€ @ÃÉsÁ_@W±Ÿ`€ @B9ÔtÁ_@ìTgr€ @Ôâö¯Ã_@<Yr€ @iŠëÅ_@ƒèJr€ @ÿ/<&È_@Æ€±<r€ @šÓ^aÊ_@WŠz.r€ @9uœÌ_@9.C r€ @íÅ¸šÌ_@<€ X`€ @ËXÛÕÎ_@óÍhJ`€ @Ù¤×Î_@ilr€ @~²ÆÑ_@éDÓr€ @L}Ñ_@ÉÑuËƒ€ @´%²OÓ_@5=½ƒ€ @BÿzQÓ_@W°ß„•€ @JXÑ_@–\\“•€ @î’5ÛÎ_@$£P¡•€ @ÇÙ Ì_@\0„ˆ¯•€ @\nÛ¡Ì_@Ì++w§€ @óTþÜÎ_@i;óh§€ @öÇÞÎ_@ Ñ•0¹€ @JF¤£Ì_@‰ÑÍ>¹€ @£qhÊ_@¿kM¹€ @%Ç¸fÊ_@}¶b…§€ @Aý•+È_@{Û™“§€ @c1sðÅ_@ÈšÐ¡§€ @\\Â;òÅ_@osi¹€ @QUôÅ_@OA1Ë€ @BêÌõÅ_@p¹øÜ€ @2•÷Å_@Œß[Àî€ @\Z^ùÅ_@˜«þ‡\0 @q;¾Ã_@ÉR5–\0 @˜šÀÃ_@I,Ø] @,~à„Á_@J}l @Œ©†Á_@?d±3$ @è†qˆÁ_@#ITû5 @ûNNM¿_@wSŠ	6 @ÉO¿_@ÎE-ÑG @#FßP¿_@6Ð˜Y @²ò»½_@¼ù§Y @D˜Úº_@ªW;µY @ÚEuŸ¸_@âOpÃY @tìQd¶_@dâ¤ÑY @í¢‰b¶_@´\nH @e[Á`¶_@¯ƒ^B6 @×ù^¶_@>Q»z$ @¿àÕ#´_@…Oïˆ$ @ò©\r"´_@€LÁ @HÒ0]¶_@º³ @´h[¶_@(ætë\0 @Q Y¶_@†­Ñ#ï€ @„ØW¶_@Ôr.\\Ý€ @å×V¶_@6‹”Ë€ @›âì\Z´_@Ûæ¾¢Ë€ @wµ´_@3bjÝ€ @OB}´_@H}2ï€ @#uE ´_@lÅ¨ù\0 @’W"å±_@û>Ü @1Zã±_@Wç8@ï€ @m\r’á±_@¢•xÝ€ @TëÉß±_@ç1ò°Ë€ @8ËÞ±_@ÔNé¹€ @¸ÞÞ¢¯_@í©÷¹€ @;ð»g­_@\Z´º€ @Áÿ˜,«_@‡$æº€ @“ù`.«_@Û°‰ÛË€ @[ú=ó¨_@e»éË€ @héõ¨_@×þ^±Ý€ @pÛâ¹¦_@ã\\¿Ý€ @·¿ª»¦_@4‡ï€ @ù¥r½¦_@;©×N @€|O‚¤_@‘À] @\nQ,G¢_@3r9k @ÃôH¢_@C4Ý2 @ŽåÐ\r _@¯\rA @\\©­Ò_@e…=O @+ôåÐ_@Z¤™‡ @˜#	 _@!¾iy @ cA\n _@‚êÅ±ï€ @ô@Ï_@>Áõ¿ï€ @¹VÍ_@ÜQøÝ€ @Öw3’›_@ =Þ€ @ö]W™_@x9°Þ€ @«õ×X™_@œ=TÜï€ @[ŸZ™_@°?ø£ @úY|—_@Íô&² @äèC!—_@LËy @Éy#—_@¾oA% @©Ó$—_@	7 @…¡š&—_@m&·ÐH @^8b(—_@®-[˜Z @­…c™_@%+,ŠZ @\'SMe™_@Î ÐQl @¹úg™_@st~ @I¤Üh™_@á @ÔO¤j™_@Šõ»¨¡ @Yýkl™_@ÿâ_p³ @_°§›_@R-0b³ @§lW©›_@:	Ô)Å @ç*«›_@ãwñÖ @&ëæ¬›_@Îº¹è @_­®®›_@…¿€ú @•qv°›_@+dcH‚ @Æ7>²›_@Ã5‚ @g5bí_@r½Ö‚ @X\n*ï_@{}zÉ/‚ @Eáñð_@u;‘A‚ @-º¹ò_@^÷ÁXS‚ @•ô_@7±e e‚ @òqIö_@öh	èv‚ @k­m1 _@w=ØÙv‚ @™53 _@²ã{¡ˆ‚ @ª†ý4 _@Þ‡iš‚ @BvÅ6 _@û)Ã0¬‚ @×g8 _@Êfø½‚ @g[U: _@\0h\nÀÏ‚ @ôP< _@ë®‡á‚ @\n×Aw¢_@½|yá‚ @XÛ	y¢_@\r Aó‚ @¡áÑz¢_@[(Ãƒ @Eöµ¤_@qµúƒ @P”¾·¤_@0,4Âƒ @U«†¹¤_@Ý ×‰(ƒ @†`«ô¦_@5©¤{(ƒ @K†sö¦_@THC:ƒ @EF˜1©_@lŸ5:ƒ @Îz`3©_@ûð·üKƒ @R±(5©_@{@[Ä]ƒ @ØˆMp«_@ÑN\'¶]ƒ @E…n«_@Ñ„îKƒ @Uª©­_@äÆOàKƒ @d^r«­_@d÷ò§]ƒ @ØˆMp«_@ÑN\'¶]ƒ @Îr«_@ÀŒÊ}oƒ @m°:­­_@Ó%–ooƒ @À_è¯_@#Yaaoƒ @ñ1—æ¯_@4:¾™]ƒ @ƒ¼!²_@B‰‹]ƒ @Óà\\´_@ŒŽS}]ƒ @qK©^´_@yŽöDoƒ @Î%Î™¶_@À6oƒ @± ˜¶_@ o]ƒ @Ll*Ó¸_@×Kç`]ƒ @hÜaÑ¸_@ÝhD™Kƒ @C™†»_@`¾\r‹Kƒ @!T«G½_@"®Ö|Kƒ @\rÐ‚¿_@ 8ŸnKƒ @çÃô½Á_@]\\g`Kƒ @ÎxùÃ_@×\Z/RKƒ @»+>4Æ_@ŽsöCKƒ @=6Æ_@tù˜]ƒ @!\0\0\0,re¢_@¬<­/‚ @´*ªc¢_@›tå‚ @`"Îž¤_@\ZòB×‚ @ )¤_@y^Ÿ‚ @*Ø¦_@¹^m‚ @ûøM©_@>ù:ó‚ @/è…©_@‹‚—+ú @`À©L«_@ÕÆdú @”–Í‡­_@f¥1ú @éÀ•‰­_@ýÔÖ‚ @ä¡¹Ä¯_@of¡È‚ @÷ÚÆ¯_@”¬D‚ @	JÈ¯_@§ðçW/‚ @n²_@@Õ³I/‚ @aX6²_@ÄWA‚ @-¤þ²_@78úØR‚ @öñÆ²_@šf d‚ @¼A\n²_@á’@hv‚ @“W²_@#½ã/ˆ‚ @#[3Ñ¯_@\r&>ˆ‚ @¢ûÒ¯_@À]»š‚ @[×—­_@mpïš‚ @Ë –­_@:)LLˆ‚ @xäêZ«_@¨ÆZˆ‚ @&¦Æ©_@Yþ²hˆ‚ @u‡þ©_@–¡v‚ @Àj6©_@Ï+lÙd‚ @ûCá¦_@ÄÞžçd‚ @6Jß¦_@ãbûS‚ @\n\Z&¤¤_@ -.S‚ @Õ\Z^¢¤_@,ŠfA‚ @ 	:g¢_@«Û»tA‚ @,re¢_@¬<­/‚ @[\0\0\0x@=!Ú_@i%ù›Ã @O¸æ×_@Í\n4ªÃ @+.öªÕ_@xŠn¸Ã @J8¿¬Õ_@Ñ€Õ @dŸ›qÓ_@úJŽÕ @x6Ñ_@P¾„œÕ @ç¯4Ñ_@¢XâÔÃ @Éƒ‹ùÎ_@"§ãÃ @­ñg¾Ì_@éTñÃ @ÀÈ0ÀÌ_@¤÷¸Õ @ä\'\r…Ê_@8§/ÇÕ @•]DƒÊ_@÷ÿÃ @­ñg¾Ì_@éTñÃ @™Ÿ¼Ì_@	²)² @D•{Ê_@§|ê7² @òÎ²Ê_@FäGp  @cRDÈ_@‘â~  @ÑšÆBÈ_@›8Ý¶Ž @9åý@È_@•Œ:ï| @AH!|Ê_@V­á| @å‡XzÊ_@Å`k @+Ü{µÌ_@TÙ\'k @K©D·Ì_@_hÊÒ| @XhòÎ_@±½‘Ä| @ge‹-Ñ_@L­X¶| @NT/Ñ_@:û}Ž @9ä0ôÎ_@&;4ŒŽ @ÂùõÎ_@Š¶ÖS  @IÖºÌ_@D€b  @™Ÿ¼Ì_@	²)² @ñ¡Â÷Î_@Þ/y² @K%æ2Ñ_@åð?\r² @ç¯4Ñ_@¢XâÔÃ @¢ÒoÓ_@i¤¨ÆÃ @+.öªÕ_@xŠn¸Ã @&-©Õ_@ÊAÌð± @i£Pä×_@§Ñ‘â± @‡â×_@o–ï\Z  @âd§Õ_@	÷))  @º›¥Õ_@;ª‡aŽ @Ò£Õ_@\\[å™| @zÀ®hÓ_@07¨| @ÍåfÓ_@¹Ö|àj @c	¢Õ_@n\nCÒj @·c,Ý×_@kØÄj @¦põÞ×_@Ò«‹| @ÁÅ\ZÚ_@‘rp}| @¬OÚ_@²@Îµj @W”†Ú_@Î,îX @îÍ©QÜ_@çñßX @r«àOÜ_@pøNG @HÖ‹Þ_@\\´\nG @©:‰Þ_@`›qB5 @óŠNÜ_@ëÏ¬P5 @ãjôÚ_@Àžç^5 @Ÿ~½Ú_@ÎÖ‰&G @ÍOšÙ×_@wOÄ4G @\0wžÕ_@ibþBG @Ì$®œÕ_@K\\{5 @ÕHÑ××_@à"m5 @ãjôÚ_@Àžç^5 @$Y+Ú_@¡dE—# @qlNLÜ_@U¥\n‰# @Á}q‡Þ_@S€Ïz# @©:‰Þ_@`›qB5 @Å]Äà_@ 645 @3ß€ÿâ_@+ú%5 @ü%Jã_@û›íF @!ÿ&Æà_@’\nØûF @HÖ‹Þ_@\\´\nG @‡ÍŒÞ_@JËµÑX @$;ðÇà_@özÃX @Ànã_@íò=µX @…¹Üã_@ªèß|j @#y¹Éà_@>‹j @!¹‚Ëà_@\Z¾R| @ÿi_Þ_@èòù`| @Þ<UÜ_@˜e5o| @ÁÅ\ZÚ_@‘rp}| @rááÚ_@_¢EŽ @SAWÜ_@Ý…×6Ž @ÆkÎXÜ_@¤yþŸ @lÖñ“Þ_@O>ðŸ @Ÿ»•Þ_@ìà·± @5˜—ZÜ_@8ÀÆ± @ÍtÚ_@ÌûVÔ± @x@=!Ú_@i%ù›Ã @£Æ`\\Ü_@MÚ½Ã @\r÷)^Ü_@Rò_UÕ @d#Ú_@øL›cÕ @x@=!Ú_@i%ù›Ã @\0\0\0ÌÚ{éÎ_@„+eÞ# @º¬DëÎ_@I³¦5 @º€!°Ì_@Þ@´5 @ãGê±Ì_@µâ{G @"\rÇvÊ_@~Ë\ZŠG @eÐ£;È_@,|R˜G @€l=È_@d.õ_Y @ˆ4IÆ_@âˆ,nY @«‘€\0Æ_@&Ç‰¦G @eÐ£;È_@,|R˜G @Ã"Û9È_@çÇ¯Ð5 @w8È_@\r	$ @Tš5sÊ_@ìÕú# @éãlqÊ_@\n×23 @_ø¬Ì_@6ïú$ @/7ÇªÌ_@ËSX]\0 @ä<êåÎ_@É O\0 @Ÿ@\r!Ñ_@rç@\0 @\\B0\\Ó_@©h®2\0 @\ZBS—Õ_@‹ùt$\0 @Y6™Õ_@ÚVì @Õ)ù]Ó_@€ÕPú @WÖ"Ñ_@qî‰ @\nøž$Ñ_@Áh,Ð# @ÌÚ{éÎ_@„+eÞ# @\r\0\0\0P2+²_@3òBü9ƒ @Hzã¯_@$öw\n:ƒ @o!>á¯_@ÑÔB(ƒ @³Ìb²_@“ÜŸ4(ƒ @P2+²_@3òBü9ƒ @]èOY´_@€ˆ\rî9ƒ @ùu‡W´_@`‚j&(ƒ @D¬’¶_@lÂ4(ƒ @lœt”¶_@\n¹×ß9ƒ @=–¶_@–­z§Kƒ @¼\\[´_@Œ°µKƒ @ë™ó²_@ÂæÃKƒ @P2+²_@3òBü9ƒ @\0\0\0íi%Gå_@¶Ø*± @o\n\\Eå_@·úˆÅŸ @m€ç_@ÒK·Ÿ @`ÙH‚ç_@ˆ í~± @íi%Gå_@¶Ø*± @-\0\0\0pøjpç_@F3›²ÿ€ @œH5å_@Ð×Àÿ€ @/V7å_@’Àyˆ @œWîûâ_@(¶– @\nWËÀà_@	èñ¤ @ý"¿à_@gØOÝÿ€ @Ë%úâ_@Ïÿ€ @ú×[øâ_@ærî€ @îð8½à_@³Æ­î€ @ÝÀo»à_@ð²NÜ€ @—äL€Þ_@ÿF\\Ü€ @FÃƒ~Þ_@,Ú¤”Ê€ @É’¦¹à_@&i†Ê€ @ÝÀo»à_@ð²NÜ€ @&›’öâ_@®\0Ð?Ü€ @rsµ1å_@·è“1Ü€ @½IØlç_@kW#Ü€ @\rû§é_@³‡\ZÜ€ @î¼1¦é_@°xMÊ€ @}‚Táë_@‘v;?Ê€ @š‹ßë_@f¬™w¸€ @´¬ÁÝë_@)à÷¯¦€ @¿Väî_@`º¡¦€ @gÍ­\Zî_@¼\\i¸€ @8‚ÐUð_@`\'[¸€ @5óò_@RÌßL¸€ @8Ç¼’ò_@ÖgÊ€ @Ð„ßÍô_@ˆ—BÊ€ @¼%©Ïô_@g!äÍÛ€ @b[†”ò_@B#ÜÛ€ @‹ñO–ò_@¨˜Ä£í€ @o-[ð_@^"²í€ @U=\n î_@aFAÀí€ @?`çäë_@°Îí€ @*Ä©é_@J]¼Üí€ @ ¡nç_@2Pùêí€ @pøjpç_@F3›²ÿ€ @Dæ«é_@Ò0^¤ÿ€ @Ò°æë_@¬È –ÿ€ @÷Ezèë_@—ŠÂ] @]MW­é_@J\0l @s¶ ¯é_@³Ñ¡3# @¯ýsç_@=óÞA# @ÄR4rç_@H=z @pøjpç_@F3›²ÿ€ @\0\0\0(‘{Ñ_@&s¢±Ü€ @ó¦XâÎ_@Ï÷Ú¿Ü€ @Âº5§Ì_@ÅÎÜ€ @ˆÿl¥Ì_@3upË€ @öÞàÎ_@Äe8øÊ€ @h¼²Ñ_@¢ðÿéÊ€ @(‘{Ñ_@&s¢±Ü€ @]yžXÓ_@Ëˆi£Ü€ @˜_Á“Õ_@»80•Ü€ @ÒCäÎ×_@ú‚ö†Ü€ @&\nÚ_@„g¼xÜ€ @Ú/ÐÚ_@ã©^@î€ @Ÿ;™\rÚ_@2ê\0\0 @Ü?vÒ×_@¹$;\0 @Ø@­Ð×_@àÔ˜Nî€ @ÚOŠ•Õ_@+šÒ\\î€ @Ý\\gZÓ_@Âùkî€ @ägDÑ_@¤óDyî€ @(‘{Ñ_@&s¢±Ü€ @\0\0\0ÉHÍ×_@/T¿Ê€ @¾ORË×_@Ù±÷¸€ @xuÚ_@ Üwé¸€ @E>Ú_@#\Z±Ê€ @ÉHÍ×_@/T¿Ê€ @\0\0\0ïHLÊô_@ˆ}ÿv¦€ @ü­‚Èô_@oí]¯”€ @NC¥÷_@æ¡”€ @ën÷_@£fÀh¦€ @ïHLÊô_@ˆ}ÿv¦€ @\0\0\0šù)Ñ_@LË\'Y @Â~Â+Ñ_@N=¶îj @t.ŸðÎ_@,>ïüj @VÖîÎ_@£¼L5Y @šù)Ñ_@LË\'Y @\0\0\0óXFÈ_@wŠ"F² @€Ç HÈ_@M0Å\rÄ @p/ýÆ_@éçüÄ @a•ÙÑÃ_@Ì94*Ä @[óÐÃ_@ît‘b² @§€4Æ_@Ž2ZT² @óXFÈ_@wŠ"F² @\0\0\0v¹%ü¨_@KQíÏ$ @wÂ]ú¨_@Å¿I @¼ô€5«_@‡Íú @|øH7«_@O»Á$ @v¹%ü¨_@KQíÏ$ @\0\0\0¿y¹×_@NZ+€ @–°·×_@—ž·cõ @k>çµ×_@Ï/œã @n	ñÙ_@ÏíÛã @‚@ïÙ_@Œ9ÆÑ @ô¢b*Ü_@[ôÿ·Ñ @¦›+,Ü_@#F¢ã @U–ô-Ü_@Ù•DGõ @õ[ÒòÙ_@M~Uõ @ßK›ôÙ_@>ª € @¿y¹×_@NZ+€ @äçA»×_@öuüò€ @€Õ_@á€5€ @¢·V~Õ_@±“9€ @¿y¹×_@NZ+€ @\0\0\0“Ú=Ó_@ßòãðÑ @;Ù¢?Ó_@Æ‚†¸ã @§£€Ñ_@¾“¾Æã @Áê·Ñ_@PôÿÑ @“Ú=Ó_@ßòãðÑ @\0\0\0&<pÕ_@þê~üx @©uGnÕ_@>^Ü4g @õMi©×_@£î£&g @2!2«×_@ÛkFîx @&<pÕ_@þê~üx @\0\0\0ž™ÕDÊ_@ÜºM´U @ä\rCÊ_@fÜªìC @¡ß.~Ì_@)ˆtÞC @o÷Ì_@\ZW¦U @ž™ÕDÊ_@ÜºM´U @\0\0\0*–DAÊ_@Õû%2 @i|?Ê_@6e]  @¢ÆzÌ_@ä.O  @"Rf|Ì_@·Ñ2 @*–DAÊ_@Õû%2 @	\0\0\04fZÈ_@¿èšk  @3Ø"È_@ãÚ=32 @AËÅ_@GTsA2 @QVßÃ_@h¨O2 @b’½TÁ_@Ý]2 @ªFõRÁ_@eõ9–  @ÔýŽÃ_@ÖVˆ  @³8ÉÅ_@žRÐy  @4fZÈ_@¿èšk  @\0\0\0[Ò±Ü¼_@‰¢²  @#¢éÚ¼_@¿¿þê @†P¿_@üÊÜ @Ó¿_@L.n¤  @[Ò±Ü¼_@‰¢²  @\r\0\0\0÷$XI¤_@–-ŽhÈ~ @ùŠG¤_@7ê ¶~ @n²‚¦_@ù»’¶~ @ç‘Ó½¨_@I¡‹„¶~ @dõøª_@ó½[v¶~ @¥Ò¼úª_@\n†ÿ=È~ @â”„üª_@L£Ú~ @YLþª_@GÍë~ @[²*Ã¨_@ò!wÛë~ @ãúbÁ¨_@pNÓÚ~ @æ^A†¦_@ë"Ú~ @ðÀK¤_@$"20Ú~ @÷$XI¤_@–-ŽhÈ~ @\0\0\0Hy§\n¢_@:átç¤~ @ðß¢_@ÿÖÐ“~ @ó\\D¤_@—C¢“~ @øòÈE¤_@T>FÙ¤~ @Hy§\n¢_@:átç¤~ @\0\0\0mŸÚ–_@P"HL~ @Ù_TØ–_@"î}€:~ @ð–u™_@^¤Qr:~ @Eã<™_@Òöõ9L~ @mŸÚ–_@P"HL~ @\0\0\0â\Zî_@K¡Ú”€ @hoQî_@|àvƒ€ @ïýsPð_@Ç9ƒ€ @`}=Rð_@ËÚË”€ @â\Zî_@K¡Ú”€ @\0\0\0\0\0\0\0\0\0h{a†¿_@óžäýnƒ @×K†ÁÁ_@)¤¬ïnƒ @à†½¿Á_@L\n(]ƒ @6Ã˜„¿_@“ìA6]ƒ @h{a†¿_@óžäýnƒ @\0\0\0\0\0\0\0\0\0=6Æ_@tù˜]ƒ @ŒHâúÃ_@A°Ñ]ƒ @I\Z«üÃ_@šCtánƒ @½æÏ7Æ_@H};Ónƒ @=6Æ_@tù˜]ƒ @\0\0\0\0\0\0\0\0\0Ž\'ÙÄo_@ªœ7ÎXƒ @Ð¥Æo_@)€Õ•jƒ @=Êr_@(~‡jƒ @‡Mýÿq_@PJà¿Xƒ @Ž\'ÙÄo_@ªœ7ÎXƒ @\0\0\0\0\0\0\0\0\0öZfOˆ_@6a0Xƒ @\nIB†_@ý¼>Xƒ @¬q†_@ìÈYjƒ @[3Qˆ_@Pmþ÷iƒ @öZfOˆ_@6a0Xƒ @\0\0\0\0\0\0\0\0\0ôi+zA_@ðÍÅ»Aƒ @??_@ýBÊAƒ @…VÙ@?_@ý6Ú‘Sƒ @ô¢ªB?_@ëcrYeƒ @S\ZÎ}A_@A\nöJeƒ @ Áü{A_@!í]ƒSƒ @ôi+zA_@ðÍÅ»Aƒ @\0\0\0\0\0\0\0\0\0@CòE_@%(dfSƒ @´) ·C_@„=átSƒ @«ñ¸C_@ÖJy<eƒ @ýôE_@§%ü-eƒ @@CòE_@%(dfSƒ @\0\0\0\0\0\0\0\0\0h{a†¿_@óžäýnƒ @ý¨<K½_@û3oƒ @eVM½_@Æó¾Ó€ƒ @–5*ˆ¿_@;O‡Å€ƒ @h{a†¿_@óžäýnƒ @\0\0\0\0\0\0\0\0\0(ð‰9\0_@4Òë`mƒ @uWeþý_@[î.omƒ @-w/\0þ_@•ëÏ6ƒ @¥T;\0_@Þ¿Œ(ƒ @(ð‰9\0_@4Òë`mƒ @\0\0\0\0\0\0\0\0\0Ídí#_@ô#D~ƒ @YèÁ(&_@ÜÚ5~ƒ @Èâö&&_@":nlƒ @lÒë#_@\0„|lƒ @Ídí#_@ô#D~ƒ @\0\0\0\0\0\0\0\0\0ËP¥L_@S‚eƒ @ã[jJ_@ª\0eƒ @Úq-lJ_@Ì…˜Øvƒ @ÜëP§L_@‡\ZÊvƒ @ÚctâN_@€S›»vƒ @¼¢àN_@Y—ôdƒ @ËP¥L_@S‚eƒ @\0\0\0\0\0\0\0\0\0‚Öá_@©¼¶·‘ƒ @¥¢@<ã_@W¬x©‘ƒ @)\Zw:ã_@ˆöÖáƒ @ÍZRÿà_@P÷ðƒ @‚Öá_@©¼¶·‘ƒ @\0\0\0\0\0\0\0\0\0‡lSð_@Ð˜ZŒƒ @l™‰›ð_@@>¹Ämƒ @Èòd`î_@’ùÒmƒ @¹.bî_@-üššƒ @µ\n\'ì_@ÇùÚ¨ƒ @C¿Ó(ì_@iq|p‘ƒ @qøcî_@Cd<b‘ƒ @ AŸð_@YñûS‘ƒ @ÑÿAÚò_@«»E‘ƒ @¼fõ_@8Úy7‘ƒ @:v‹P÷_@68)‘ƒ @ÓzÁN÷_@#—aƒ @bÍœõ_@Ë Øoƒ @ôxØò_@¯Ï~ƒ @‡lSð_@Ð˜ZŒƒ @\0\0\0\0\0\0\0\0\0Ídí#_@ô#D~ƒ @Cßx²!_@|mR~ƒ @IÍC´!_@~~\r\Zƒ @˜_hï#_@÷æÃƒ @Ídí#_@ô#D~ƒ @\0\0\0\0\0\0\0\0\0>m_@þ†”{ƒ @¦IÉŒ_@¦šã¢{ƒ @škËŒ_@s®€jƒ @Ì:_@7$\\ƒ @ýÍ^A‘_@8ðÆMƒ @€a‘?‘_@Ãû)†{ƒ @>m_@þ†”{ƒ @\0\0\0\0\0\0	\0\0\0¿M»XS_@(Šœžvƒ @ÏÙ—Q_@µ!­vƒ @riQ_@Ì³tˆƒ @%ZS_@¤$4fˆƒ @Ñ°•U_@‚´Wˆƒ @xÔÐW_@¤3Iˆƒ @‡/ÏW_@Ç)œvƒ @¦¿Þ“U_@ÙŒvƒ @¿M»XS_@(Šœžvƒ @\0\0\0\0\0\0\0\0\0\\øø¾š_@¹Vm•†ƒ @[œ%½š_@^·×Ítƒ @ai‚˜_@:dÜtƒ @a4ßF–_@Tñïêtƒ @Wý»”_@«u{ùtƒ @FÄ˜Ð‘_@@”uƒ @2íkÒ‘_@sœÏ†ƒ @\n3\r”_@¥DÁ†ƒ @Øv²H–_@n°…²†ƒ @ž¸Õƒ˜_@v¶ù£†ƒ @\\øø¾š_@¹Vm•†ƒ @\0\0\0\0\0\0\0\0\0Ö iœ_@ÇŸïƒ @±zï-š_@™®Nƒ @D½/š_@JbëÛžƒ @.Oájœ_@ËCŒÍžƒ @Ö iœ_@ÇŸïƒ @\0\0\0\0\0\0\0\0\0eVM½_@Æó¾Ó€ƒ @8uà»_@Ž2öá€ƒ @Ú©»_@Óÿ˜©’ƒ @ë\'„Ø¸_@ZèÏ·’ƒ @ÿ5_¶_@kÆ’ƒ @B:b´_@ˆ<Ô’ƒ @fÀd´_@×ß›¤ƒ @²@Ëe´_@ƒy‚c¶ƒ @!Nð ¶_@‚=LU¶ƒ @Á\'Ÿ¶_@WU©¤ƒ @Ã¿LÚ¸_@Ãr¤ƒ @˜YÜ¸_@¼›G¶ƒ @c:»_@1”Þ8¶ƒ @w¼q»_@Ë;q¤ƒ @.·–P½_@>mc¤ƒ @ÌÎN½_@‰±a›’ƒ @eVM½_@Æó¾Ó€ƒ @\0\0\0\0\0\0\0\0\0éìT1_@‡“¡}¡ƒ @ÑYê/_@?í‹¡ƒ @t˜µ\Z/_@Ž=S³ƒ @R8ÚU1_@=$AE³ƒ @éìT1_@‡“¡}¡ƒ @\0\0\0\0\0\0\0\0\02M,]p_@!C+q™ƒ @Ú"n_@=%°™ƒ @Æ:Û#n_@ ýFG«ƒ @¦ºþ^p_@¬Â8«ƒ @2M,]p_@!C+q™ƒ @\0\0\0\0\0\0\r\0\0\0\\øø¾š_@¹Vm•†ƒ @eVÌÀš_@ô]˜ƒ @x¶ŸÂš_@@˜$ªƒ @·\rÃýœ_@ªªƒ @ß ïûœ_@¨vN˜ƒ @Qé7Ÿ_@…ãè?˜ƒ @»/6r¡_@ B[1˜ƒ @c«bp¡_@öÔÅi†ƒ @)n¡_@<e0¢tƒ @3ük3Ÿ_@_æ½°tƒ @LÍHøœ_@ÀK¿tƒ @6úœ_@;‘à††ƒ @\\øø¾š_@¹Vm•†ƒ @\0\0\0\0\0\0\0\0\0¸è~_@¢Ø6Åƒ @W£¤¹!_@xípÅƒ @R¯Ù·!_@O|M©³ƒ @M½¶!_@o~­á¡ƒ @:êz_@Ç¿öï¡ƒ @yµ|_@=Í–·³ƒ @¸è~_@¢Ø6Åƒ @\0\0\0\0\0\0\0\0\0Ž$j"ú_@wf¾ÿ¿ƒ @ÝYš ú_@·Z$8®ƒ @ºnvå÷_@;”F®ƒ @•Rªõ_@¶µU®ƒ @½2"¬õ_@÷àÀƒ @§,Fç÷_@™V.Àƒ @Ž$j"ú_@wf¾ÿ¿ƒ @\0\0\0\0\0\0\0\0\0c:»_@1”Þ8¶ƒ @§»_@F[\0Èƒ @:¶Ë\Z»_@L $ÈÙƒ @A×ðU½_@ö“ì¹Ùƒ @ê(T½_@sÞIòÇƒ @j_R½_@á&§*¶ƒ @c:»_@1”Þ8¶ƒ @\0\0\0\0\0\0\0\0\0	\r&5š_@øpÁ2Ôƒ @EfJpœ_@n#b$Ôƒ @ç±|nœ_@…Å\\Âƒ @oeX3š_@xÃ$kÂƒ @	\r&5š_@øpÁ2Ôƒ @\0\0\0\0\0\0\0\0\0Ž$j"ú_@wf¾ÿ¿ƒ @Dñ9$ú_@)pXÇÑƒ @ìó]_ü_@\nè¸Ñƒ @q\ZŽ]ü_@Nñ¿ƒ @Ž$j"ú_@wf¾ÿ¿ƒ @\0\0\0\0\0\0\0\0\0	§>jÑ_@%Áæ9Ùƒ @æ—/Ï_@pá!HÙƒ @g·â0Ï_@»Äëƒ @MÓlÑ_@éèˆëƒ @	§>jÑ_@%Áæ9Ùƒ @\0\0\0\0\0\0\0\0\0~È­Ø_@Ÿý2Ùƒ @V¿ˆàÕ_@=OoÙƒ @&RâÕ_@ñWåêƒ @wØ_@ÌöÔÖêƒ @~È­Ø_@Ÿý2Ùƒ @\0\0\0\0\0\0\0\0\0Nhß‚v_@Â8€Õƒ @–E¬„v_@ÚÞàæƒ @³ËÐ¿x_@þÝÄÑæƒ @§á¾x_@ŽG\'\nÕƒ @Nhß‚v_@Â8€Õƒ @\0\0\0\0\0\0\0\0\0åú\\ˆ_@‰­¥Ôƒ @—Þ †_@#G	´Ôƒ @DÆ«"†_@ž¦{æƒ @W>Ð]ˆ_@Z¶Jmæƒ @åú\\ˆ_@‰­¥Ôƒ @\0\0\0\0\0\0\0\0\0	\r&5š_@øpÁ2Ôƒ @Ì±ú—_@¼X AÔƒ @£NÏû—_@Ø½æƒ @¦¶ó6š_@f^úåƒ @	\r&5š_@øpÁ2Ôƒ @\0\0\0\0\0\0\0\0\0¦3Ô²£_@êHyÍƒ @÷È°w¡_@7ˆÍƒ @rU„y¡_@œä°Oßƒ @æÌ§´£_@nž"Aßƒ @¦3Ô²£_@êHyÍƒ @\0\0\0\0\0\0	\0\0\0\nÒ½æ,_@œW€úƒ @-˜òä,_@pô·¸èƒ @[` /_@lªèƒ @¹L/_@ûwÌâÖƒ @Q`\'ã,_@ºJñÖƒ @ì¢¨*_@²·cÿÖƒ @ÎÍ©*_@qÇèƒ @û˜«*_@5(£Žúƒ @\nÒ½æ,_@œW€úƒ @\0\0\0\0\0\0	\0\0\0\\0Ê’3_@2$”þÄƒ @¹…¥W1_@â²àÅƒ @ ÕpY1_@x?€ÔÖƒ @‡&<[1_@üÉœèƒ @íy]1_@eR¿cúƒ @àJ,˜3_@é”rUúƒ @µê`–3_@Óèƒ @ˆŒ•”3_@/¡3ÆÖƒ @\\0Ê’3_@2$”þÄƒ @\0\0\0\0\0\0\0\0\0÷²•ª_@‰¿ÐÔƒ @¥Aqo_@P\ZßÔƒ @R>q_@Èx·¦æƒ @ads_@$ÞTnøƒ @?ï/®_@ˆ6ú_øƒ @Ðb¬_@Õà\\˜æƒ @÷²•ª_@‰¿ÐÔƒ @\0\0\0\0\0\0\0\0\0£NÏû—_@Ø½æƒ @ŸäªÀ•_@†¥æƒ @²vxÂ•_@3n¸Þ÷ƒ @|íœý—_@ÙÌYÐ÷ƒ @£NÏû—_@Ø½æƒ @\0\0\0\0\0\0\0\0\0£€<­ž_@0üžÝåƒ @¦rœ_@-¿þëåƒ @\nÕåsœ_@ÒX›³÷ƒ @ÌE\n¯ž_@%†;¥÷ƒ @£€<­ž_@0üžÝåƒ @\0\0\0\0\0\0	\0\0\0ìó]_ü_@\nè¸Ñƒ @kÏ-aü_@_‚€ãƒ @ð¬ýbü_@"øHõƒ @Ç!žþ_@3\r«9õƒ @EßEÙ\0_@~¼9+õƒ @7èu×\0_@>æŸcãƒ @ÔÜQœþ_@1\'rãƒ @Žôšþ_@?wªÑƒ @ìó]_ü_@\nè¸Ñƒ @\0\0\0\0\0\0\0\0\0´µî*¨_@Ãà$ßƒ @QBËï¥_@{ò“2ßƒ @`êžñ¥_@6)úðƒ @‡jÂ,¨_@gšëðƒ @´µî*¨_@Ãà$ßƒ @\0\0\0\0\0\0\0\0\0‹*¾Ê_@€í}»„ @íÄOùÌ_@.jC­„ @\\üt4Ï_@Ÿ„ @ãØ«2Ï_@ëMf×üƒ @9®†÷Ì_@}\'¡åüƒ @“a¼Ê_@I›Ûóüƒ @‹*¾Ê_@€í}»„ @\0\0\0\0\0\0\0\0\0]eZÚ_@i:üƒ @¦o@Ø_@Þívžüƒ @5Æ	!Ø_@ëâf„ @±ó.\\Ú_@îüÛW„ @]eZÚ_@i:üƒ @\0\0\0\0\0\0\0\0\0åÌ_@N·+éƒ @Á4§Ð_@®Q9éƒ @¬ûqÒ_@˜9ñ\0ûƒ @˜Ä<Ô_@|k‘È„ @G¸a_@ñýHº„ @–â–\r_@¢Û¨òúƒ @åÌ_@N·+éƒ @\0\0\0\0\0\0\r\0\0\0¸è~_@¢Ø6Åƒ @\Z,[C_@bÓÅƒ @”&E_@MìU×ƒ @çðF_@(Àéƒ @ƒÇ»H_@æ`äúƒ @÷©†J_@ *\0¬„ @©™«…_@ˆñ¶„ @oªàƒ_@dîÖúƒ @\\‹¿!_@_ÍÇúƒ @[‘:½!_@‰i-\0éƒ @3½‚_@;évéƒ @öÑJ€_@÷áÖF×ƒ @¸è~_@¢Ø6Åƒ @\0\0\0\0\0\0\0\0\0‹*¾Ê_@€í}»„ @PƒÈ_@¸É„ @?OÎ„È_@¶jZ‘ „ @m—ó¿Ê_@¦= ƒ „ @‹*¾Ê_@€í}»„ @\0\0\0\0\0\0\0\0\0¼–äåÕ_@ cUt„ @De¿ªÓ_@}‘‚„ @G¤ˆ¬Ó_@š3J „ @‚â­çÕ_@¤e÷; „ @¼–äåÕ_@ cUt„ @\0\0\0\0\0\01\0\0\03}pî_@	¦×\r„ @;]³nî_@e©üƒ @	jØ©ð_@.ÙÃüƒ @ýˆ¨ð_@":êƒ @óˆélî_@½McHêƒ @©¶kî_@ùïÁ€Øƒ @hÁú/ì_@P;Øƒ @(ÊÕôé_@â BØƒ @hóé_@õ¡ ÕÆƒ @ï&ç·ç_@5àãÆƒ @z8Â|å_@°òÆƒ @±Õ‹~å_@´ºÀ¹Øƒ @xØfCã_@õnÿÇØƒ @HAã_@fÁ]\0Çƒ @z8Â|å_@°òÆƒ @Aøzå_@|}*µƒ @“¹Ó?ã_@È¼8µƒ @æÓ®á_@.AúFµƒ @5Tåá_@ôX£ƒ @‚Öá_@©¼¶·‘ƒ @b÷ÅÞ_@7gôÅ‘ƒ @PyÀÇÞ_@:–£ƒ @<ì‰ÉÞ_@Ï\n8Uµƒ @•eŽÜ_@ªnucµƒ @ï@SÚ_@Ál²qµƒ @M)Ø_@ïµƒ @çwäØ_@a‘GÇƒ @~È­Ø_@Ÿý2Ùƒ @«ÏÒVÚ_@<Fö\0Ùƒ @Or	UÚ_@‡ZT9Çƒ @ºj.Ü_@æL+Çƒ @&aSËÞ_@ÙÙÇƒ @\rØÍÞ_@%¦{äØƒ @ÛÔ÷‘Ü_@)¹òØƒ @«ÏÒVÚ_@<Fö\0Ùƒ @/œXÚ_@à/˜Èêƒ @]eZÚ_@i:üƒ @¯Š•Ü_@/Ûüüƒ @ÔË¯ÐÞ_@-9¿süƒ @’æÔá_@e1eüƒ @SÿùFã_@ÖÃBWüƒ @‚å_@€ðIüƒ @G¹èƒå_@Rˆ¥„ @ÒÚ\r¿ç_@«?f„ @_ú2úé_@<‘&ô\r„ @¹üûé_@çÈ»„ @lã!7ì_@%ä‡­„ @ïX5ì_@}æå\r„ @3}pî_@	¦×\r„ @\0\0\0\0\0\0\0\0\0©™«…_@ˆñ¶„ @åŠv‡_@šòVe„ @]…›Â!_@$D\rW„ @]‡ÐÀ!_@¨Rm„ @©™«…_@ˆñ¶„ @\0\0\0\0\0\0\0\0\0ë‹†<_@’ÝÚã„ @4:fK:_@ÄA)ò„ @°Ä1M:_@¬‡È¹„ @,§Vˆ<_@ßz«„ @ë‹†<_@’ÝÚã„ @\0\0\0\0\0\0\0\0\0‘	û@_@²Êÿùƒ @]µÔü@_@×ã<Ç„ @)f þ@_@ìúÛŽ„ @¦BÅ9C_@ÇUŒ€„ @…ù7C_@PNí¸„ @†É-6C_@ÈDNñùƒ @‘	û@_@²Êÿùƒ @\0\0\0\0\0\0M\0\0\0}W$_@ðw‡„ @O†‹$_@ îCôƒ @³‹µ‰$_@$ÆU|âƒ @¤ ‘N"_@ncÍŠâƒ @ìÀL"_@¡w4ÃÐƒ @¼ _@^Ÿ«ÑÐƒ @f)yÖ_@Ua"àÐƒ @^¨Ô_@çS‰¿ƒ @É¸„™_@R ÿ&¿ƒ @-ß`^_@ø†u5¿ƒ @‹=#_@ÚëC¿ƒ @ä%è_@÷"`R¿ƒ @;Fõ¬_@PØÔ`¿ƒ @ï$«_@òy;™­ƒ @&\Zp_@Á¹¯§­ƒ @4CÝ4_@Ì“#¶­ƒ @œ\r3_@ÒŠî›ƒ @j;é÷_@Uxýü›ƒ @4mÅ¼	_@wpœƒ @÷œ¡_@ãœƒ @¸Ê}F_@FCU(œƒ @8Ä­D_@,‚»`Šƒ @·ü‰	_@Ý?-oŠƒ @33fÎ\0_@Ê—ž}Šƒ @AH–Ì\0_@µ¶xƒ @|‰r‘þ_@…—uÄxƒ @³ÈNVü_@*æÒxƒ @ä+ú_@\r+Váxƒ @EC[ú_@¼gƒ @6‹7Þ÷_@r¸+(gƒ @%Ñ£õ_@ôš6gƒ @\rðgó_@ëÉ	Egƒ @^±¿ió_@&\r¤yƒ @:zã¤õ_@Œ\'5þxƒ @S%³¦õ_@ÿXÏÅŠƒ @ïøÖá÷_@áý_·Šƒ @Ó²¦ã÷_@†ú~œƒ @0‘Êú_@åLŠpœƒ @‰mîYü_@\Zbœƒ @ùB¾[ü_@‘´)®ƒ @*â–þ_@§hC®ƒ @&Ò\0_@øVÒ®ƒ @\'\0ÖÓ\0_@u3lÔ¿ƒ @+ó¥Õ\0_@â\rœÑƒ @ÃïÉ_@ëv”Ñƒ @XêíK_@/z"Ñƒ @ÉÝJ_@G¿ˆ·¿ƒ @=ÓMH_@Pïï­ƒ @C²qƒ_@T¿|á­ƒ @’ÉA…_@‰l©¿ƒ @çâ‡_@®°pÑƒ @sÙ5Â	_@iO=bÑƒ @X³eÀ	_@´£š¿ƒ @C•¾	_@–\nÓ­ƒ @?j¹ù_@—Ä­ƒ @›‰û_@À•0Œ¿ƒ @Ô€­6_@µ½}¿ƒ @wÀ}8_@ŽVEÑƒ @ò°¡s_@ù“â6Ñƒ @jŸÅ®_@Ÿ4n(Ñƒ @Ø‹éé_@oùÑƒ @Dv\r%_@D„Ñƒ @ëÝ&_@OÓâƒ @.àb_@àÞ§Äâƒ @µcÒc_@¯AŒôƒ @ cöž_@´ñÊ}ôƒ @…a\ZÚ_@óuToôƒ @Ÿ\0ëÛ_@.}í6„ @óõÆ _@·dE„ @Cé¢e_@y.ÚS„ @Õpsg_@2Ss„ @KŠ—¢_@©ý„ @½¡»Ý_@X‚†þ„ @\'·ß _@Bð„ @ŒÊT"_@d\Z˜á„ @êÛ\'$_@ÀM Ó„ @}W$_@ðw‡„ @\0\0\0\0\0\0\0\0\0ÇBÔÞ_@ÿÃ „ @H‘™Ü_@…@ „ @^çšÜ_@îVâØ1„ @kHÖÞ_@O†¤Ê1„ @ÇBÔÞ_@ÿÃ „ @\0\0\0\0\0\0\0\0\0]…›Â!_@$D\rW„ @]…fÄ!_@3­0„ @›Š‹ÿ#_@¼c0„ @Ö}Àý#_@ç/ÃH„ @]…›Â!_@$D\rW„ @\0\0\0\0\0\0\0\0\0Ù€\\N_@óâçƒ @ªÔô L_@Hfmðçƒ @&ÐåI_@­s¾þçƒ @žHäI_@Þ”7Öƒ @4¥ß¨G_@ß,pEÖƒ @Pv«ªG_@M\rèƒ @lIw¬G_@ ®Ôùƒ @†C®G_@íñLœ„ @£õ°G_@)Úëc„ @¿ÎÚ±G_@UÀŠ+/„ @²ÿìI_@<Ú9/„ @"Ì3ëI_@¯›U„ @@ègéI_@+ü„ @_œçI_@bP]Æùƒ @QÁÀ"L_@^3¸ùƒ @Czå]N_@“°º©ùƒ @Ù€\\N_@óâçƒ @\0\0\0\0\0\0?\0\0Nhß‚v_@Â8€Õƒ @v_@™âPÃƒ @À³Ev_@aæD‰±ƒ @{Üx}v_@:§ÁŸƒ @8¬{v_@¼‹	úƒ @õ3ßyv_@RÛk2|ƒ @uøº>t_@~Ä@|ƒ @óº–r_@èïO|ƒ @«tcr_@Ÿ¿¹Žƒ @d(?Êo_@ë@%Žƒ @q{rÈo_@as]|ƒ @Ð¥Æo_@)€Õ•jƒ @¿›‹m_@e|,¤jƒ @\0e]Pk_@ßƒ²jƒ @™ÕNk_@åêXƒ @œ©li_@(1;ùXƒ @>,9i_@–CÙÀjƒ @|ñÚf_@‹/Ïjƒ @[iáÛf_@ƒ.Í–|ƒ @Ó½ d_@Y£"¥|ƒ @JÔ˜eb_@l²w³|ƒ @À†t*`_@º[ÌÁ|ƒ @05¨(`_@×.újƒ @öuÌcb_@,sÙëjƒ @¡\0bb_@Ñ1;$Yƒ @¡K$d_@BæYƒ @ {HØf_@xìYƒ @Ã|Öf_@TÈò?Gƒ @ˆäW›d_@>HNGƒ @q‹™d_@fØ©†5ƒ @ûfg^b_@ë¨þ”5ƒ @O¿3`b_@fîœ\\Gƒ @˜%`_@ÌhñjGƒ @×nëé]_@p}EyGƒ @ ¯·ë]_@ àã@Yƒ @jòƒí]_@À@‚kƒ @¦­_²[_@æÖkƒ @¡w“°[_@¥ž7OYƒ @œCÇ®[_@R,™‡Gƒ @—û¬[_@î·ú¿5ƒ @0è]_@¯§±5ƒ @FóRæ]_@Ý±ê#ƒ @}¸†ä]_@üHj"ƒ @‘³b©[_@øÈ½0ƒ @”á.«[_@{A\\ø#ƒ @àÍ\npY_@Wk¯$ƒ @*¸æ4W_@r/$ƒ @v ÂùT_@ÌT#$ƒ @¿˜ö÷T_@eæµ[ƒ @“*öT_@ì<”\0ƒ @8‘N1W_@ÓýÄ…\0ƒ @¾€‚/W_@êa&¾î‚ @W^ôT_@b‘xÌî‚ @ï›:¹R_@\Z[ÊÚî‚ @\0§n·R_@ì+Ý‚ @¤’òT_@ÔãÙÝ‚ @Fr¶-W_@þÃ‡öÜ‚ @êTÚhY_@h>5èÜ‚ @®;gY_@\0®– Ë‚ @‹2¢[_@LÒCË‚ @Œëe [_@vO¥J¹‚ @s$BeY_@ˆøX¹‚ @8vcY_@\0‡Y‘§‚ @É™ž[_@Êƒ§‚ @Ž©Íœ[_@–Ch»•‚ @þû©aY_@fðºÉ•‚ @ÃêÝ_Y_@¼W„‚ @‘‹›[_@ŽºÉóƒ‚ @[*%Ö]_@¤·våƒ‚ @›YÔ]_@/<Ør‚ @ÚÚŒÒ]_@³¾9V`‚ @^°\r`_@PuæG`‚ @™,ä`_@]H€N‚ @\Z¶ÀÐ]_@?›ŽN‚ @œ=•[_@!îœN‚ @—Ui—[_@Y¢Œd`‚ @”o5™[_@w/+,r‚ @ŒÛ^Y_@½}:r‚ @SÎE\\Y_@D ßr`‚ @E"!W_@q81`‚ @šFVW_@ö‰’¹N‚ @È2äT_@Æ,äÇN‚ @iØfâT_@™lE\0=‚ @\'JŠW_@iÙóñ<‚ @šFVW_@ö‰’¹N‚ @ÃyZY_@i@«N‚ @ä¹­XY_@~à¡ã<‚ @­²áVY_@‚=+‚ @§’[_@}î°\r+‚ @r(Í]_@¼9^ÿ*‚ @ÞS\\Ë]_@ö³¿7‚ @¤`_@©l)‚ @’z³`_@æ0Îa‚ @Sç`_@ ¶/šõ @fÄÇ]_@3¢‚¨õ @"7É]_@,!p‚ @³ñlŽ[_@˜Ás~‚ @CªISY_@ZñÅŒ‚ @\r©}QY_@.H\'Åõ @ºã Œ[_@(Õ¶õ @fÄÇ]_@3¢‚¨õ @«øÅ]_@:äàã @Ä×ÔŠ[_@rŒ6ïã @Ø©±OY_@ñœˆýã @¥¬åMY_@®ïé5Ò @€‰ÂW_@ÒŠ;DÒ @ïyŽW_@¶GÚä @HkÙT_@ÂŒ+\Zä @XdŸ×T_@>ÀŒRÒ @0=|œR_@ïÝ`Ò @YaP_@èù-oÒ @ßè5&N_@)þ}}Ò @·»ëK_@°œÍ‹Ò @Œï¯I_@~ÕšÒ @j0»±I_@ ð»aä @DÖ†³I_@¼[)ö @”‹cxG_@\rû©7ö @}ò—vG_@ÔÒ\npä @²t;E_@ÎOY~ä @=(©9E_@ðº¶Ò @g[ÌtG_@“¨k¨Ò @OÆ\0sG_@8|ÌàÀ @935qG_@ÌM-¯ @–6E_@í›{\'¯ @D•F4E_@Ó[Ü_ @e†#ùB_@ž4*n @ôýîúB_@V„É5¯ @SàË¿@_@D¯ @°À¨„>_@ÿ#dR¯ @¹ t†>_@Þ\ZÁ @À‚?ˆ>_@®û¢áÒ @Éæ\nŠ>_@bdB©ä @ÛžçN<_@wJ·ä @!ø²P<_@ÂÀ.ö @ÑLÖ‹>_@Ëápö @Ø´¡>_@¯/8‚ @MÅÈ@_@¨Ä3*‚ @‚ŸùÆ@_@§o”bö @µ,.Å@_@•õšä @£pQ\0C_@g§Œä @2ðC_@ƒ®FTö @ÂqèC_@çóå‚ @6Í?E_@m½—\r‚ @Š]×@E_@%ñ6Õ‚ @Qõ³C_@>7…ã‚ @ÂqèC_@çóå‚ @MÅÈ@_@¨Ä3*‚ @‹Ê@_@›Óñ‚ @æ\\Ì@_@|hr¹+‚ @±~\'Î@_@M·=‚ @ñø“>_@)Q_=‚ @éŠ8‘>_@»ò¿Ç+‚ @ám>_@>’ \0\Z‚ @Ø´¡>_@¯/8‚ @eS~R<_@ü4ÎF‚ @!ø²P<_@ÂÀ.ö @q¡:_@¸P{ö @ñïZ:_@Ô\ZU‚ @q@&:_@TVº\Z‚ @ò’ñ\Z:_@ÖYä+‚ @rç¼:_@®Sù«=‚ @²[™á7_@W¼Eº=‚ @o¥dã7_@‡GåO‚ @*ñ/å7_@¦Ð„Ia‚ @å>ûæ7_@ªW$s‚ @ðð":_@0À×s‚ @ü B]<_@øÂŠôr‚ @>\n_<_@À(*¼„‚ @ƒuÙ`<_@xŒÉƒ–‚ @Æâ¤b<_@ îhK¨‚ @·È>_@X\\=¨‚ @&3”Ÿ>_@S¬ºº‚ @,±_¡>_@;úYÌË‚ @KÃ;f<_@<«§ÚË‚ @Ž6h<_@³G¢Ý‚ @ê9ã,:_@a”°Ý‚ @i¢®.:_@…Ê3xï‚ @Ò«Òi<_@`æiï‚ @#žk<_@b·…1ƒ @çz0:_@v1Ó?ƒ @eyE2:_@X–rƒ @ãç4:_@\'ùÏ$ƒ @*¶ìø7_@±,_Ý$ƒ @ã¸ú7_@þ¤6ƒ @›ƒü7_@UžlHƒ @[2_Á5_@TøêzHƒ @N*Ã5_@)tŠBZƒ @BêõÄ5_@íí)\nlƒ @5IÁÆ5_@–eÉÑ}ƒ @)ªŒÈ5_@8Ûh™ƒ @}*±8_@Ï¯‹ƒ @4š|8_@È»R¡ƒ @N%¡@:_@ÿrmD¡ƒ @É£lB:_@KÅ³ƒ @ëH8_@®uZ\Z³ƒ @r#Ì5_@NÀ§(³ƒ @þØîÍ5_@¾/GðÄƒ @¡	8_@„ÕùáÄƒ @YõÞ\n8_@K3™©Öƒ @mª8_@8qèƒ @Ææu8_@›è×8úƒ @¹±šI:_@Ëù‰*úƒ @>+ÏG:_@Ì¯êbèƒ @içó‚<_@ÐjœTèƒ @ªz¿„<_@3¥;úƒ @ë‹†<_@’ÝÚã„ @¥ã¯Á>_@˜ŒÕ„ @ŸAä¿>_@Öêì\rúƒ @‘	û@_@²Êÿùƒ @ÆY=ù@_@ˆ¯þ7èƒ @ú®q÷@_@A’_pÖƒ @’M¼>_@,“®~Öƒ @Šgº>_@8d·Äƒ @èÆ\\<_@Âï]ÅÄƒ @¦9‘}<_@"¯¾ý²ƒ @e®Å{<_@rl6¡ƒ @#%úy<_@±\'€nƒ @á.x<_@ßàà¦}ƒ @qS³>_@Ç“’˜}ƒ @ly‡±>_@ŠZóÐkƒ @¡cv<_@˜Aßkƒ @_•—t<_@M¢Zƒ @Ìr<_@\0PHƒ @Ú”\0q<_@ÿ°cˆ6ƒ @˜5o<_@Û_ÄÀ$ƒ @Vœim<_@¨%ùƒ @I½¨>_@8×êƒ @=Ü±ã@_@ÈˆÜƒ @pIæá@_@ù‘éƒ @¤¸\Zà@_@ÛYJMï‚ @Ù)OÞ@_@º«…Ý‚ @~ sC_@ž“\\wÝ‚ @¼>C_@"¾û>ï‚ @ Y\nC_@£æšƒ @Íg.XE_@ŽÕKø\0ƒ @#úYE_@aìê¿ƒ @0ùÕC_@\r:Îƒ @=Ü±ã@_@ÈˆÜƒ @q}å@_@\0ü\'¤$ƒ @Àš¡ C_@q1Ù•$ƒ @vÂÅ[E_@!Š‡$ƒ @Ìr‘]E_@Ó)O6ƒ @H¥µ˜G_@#nÙ@6ƒ @/èé–G_@k:y$ƒ @åÒI_@<oêj$ƒ @ÄÕÙÓI_@²b‰26ƒ @£¡¥ÕI_@T(úGƒ @oq×I_@jCÇÁYƒ @„·•L_@ú²v³Yƒ @)”aL_@Ÿ{kƒ @Ír-L_@)l´B}ƒ @pSùL_@­ES\nƒ @6ÅL_@!òÑ ƒ @º\Z‘L_@ƒò™²ƒ @˜ µVN_@6®?‹²ƒ @”XN_@èqÞRÄƒ @l‰MZN_@‹3}\ZÖƒ @Ù€\\N_@óâçƒ @+>—P_@,\ZÊÓçƒ @Õ&r•P_@9j+Öƒ @<Â–ÐR_@";ÙýÕƒ @G³ÊÎR_@¿˜:6Äƒ @R¦þÌR_@Lô›n²ƒ @0&#U_@°~I`²ƒ @vWU_@Ìçª˜ ƒ @¿øŠU_@×NÑŽƒ @å¾U_@Ò³m	}ƒ @”<ã=W_@Tû|ƒ @<W_@êy|3kƒ @œK:W_@eêÝkYƒ @ž=ouY_@f÷Š]Yƒ @Þf;wY_@Iw)%kƒ @’yY_@õÇì|ƒ @a¿ÓzY_@Ôpf´Žƒ @¥îŸ|Y_@ˆê| ƒ @»[Ä·[_@@S±m ƒ @Â™¹[_@?»O5²ƒ @èl~Y_@)b£C²ƒ @,S8€Y_@¹×AÄƒ @pˆ‚Y_@;KàÒÕƒ @µ¿ÐƒY_@«¼~šçƒ @‰¬HW_@´,Ò¨çƒ @	JxJW_@©«ppùƒ @ûøœ…Y_@ÿ+bùƒ @é¥ÁÀ[_@ŽFÉSùƒ @à_õ¾[_@Ûæ*Œçƒ @þú]_@G«Ö}çƒ @×Pæû]_@WûtEùƒ @é¥ÁÀ[_@ŽFÉSùƒ @öíÂ[_@<¤g„ @8ZÄ[_@Øÿã„ @zü~ÿ]_@\\•±Ô„ @ó¾£:`_@Å\\Æ„ @][×8`_@Âˆ¾þ\n„ @üsb_@\\bið\n„ @lÈub_@¸„ @Éñ”wb_@´¹¥.„ @½¹²d_@?Pq.„ @B†Þíf_@ýùb.„ @Yúìf_@§ñ[›„ @ã=í°d_@?ó±©„ @ÂÀ ¯d_@.Öâ\n„ @¡ET­d_@·u\Zùƒ @Œèxèf_@»Ôùƒ @spEêf_@9ä½Ó\n„ @"j%i_@ŒgÅ\n„ @w‰#i_@¤ŒÉýøƒ @ÍöÐ!i_@ÅŠ+6çƒ @ñˆõ\\k_@ŒìÔ\'çƒ @`(Â^k_@ÇÞrïøƒ @IÅæ™m_@#Ëáøƒ @\Z˜m_@Žè}çƒ @ßnM–m_@ÞàQÕƒ @>ðqÑo_@¾©ˆCÕƒ @E;¥Ïo_@¢Òê{Ãƒ @Û­É\nr_@d"“mÃƒ @qîEt_@a;_Ãƒ @ôìºGt_@1ÄØ&Õƒ @Nhß‚v_@Â8€Õƒ @\0\0\0{ ´’m_@J4¤Â±ƒ @J|çm_@gIûŸƒ @Y×Ìo_@:¯ìŸƒ @e00r_@HWÞŸƒ @îür_@ÞXõ¥±ƒ @OˆØÍo_@wùL´±ƒ @{ ´’m_@J4¤Â±ƒ @\0\0\0“ƒÄR_@Ÿ‚ˆYƒ @¢‚6ÂR_@DîãÀGƒ @áµZýT_@jÖ‘²Gƒ @—Ã&ÿT_@¡w0zYƒ @“ƒÄR_@Ÿ‚ˆYƒ @\0\0\0 ç~8W_@ÏX?¤Gƒ @¤Î²6W_@)Å Ü5ƒ @ñÖqY_@mñMÎ5ƒ @]£sY_@quì•Gƒ @ ç~8W_@ÏX?¤Gƒ @3\0\0\01Ø~zP_@Z#ÞYË‚ @ô²xP_@`R?’¹‚ @ÝçvP_@U Ê§‚ @5Ô\n²R_@ÝYO¼§‚ @Hç>°R_@`”°ô•‚ @´1uP_@8ª–‚ @‹SOsP_@\rÓb;„‚ @½¨+8N_@ˆs³I„‚ @XÙ_6N_@¬Š‚r‚ @M9<ûK_@Ëµdr‚ @C—ÀI_@-{´žr‚ @MäÁI_@FƒSf„‚ @OœÀ†G_@‰ò¢t„‚ @8óô„G_@ÑÚ­r‚ @+MÑIE_@ºÔR»r‚ @€éœKE_@üñ‚„‚ @Ó‡hME_@T!‘J–‚ @?ÆDC_@¹ÔßX–‚ @°4yC_@×Ÿ@‘„‚ @¥­C_@äh¡Ér‚ @âC_@ì/a‚ @\0ŒC_@Ùôb:O‚ @„\Z:FE_@é,O‚ @1„nDE_@cRud=‚ @ñ’G_@T‡&V=‚ @§]G_@=¥ÅO‚ @‹1¼I_@ÔdvO‚ @º¤÷K_@°¾&O‚ @®xpùK_@K»ÅÈ`‚ @õ”4N_@ËŸuº`‚ @XÙ_6N_@¬Š‚r‚ @cwƒqP_@ÑùÃsr‚ @<·oP_@%¬`‚ @‚,ÛªR_@—7Ô`‚ @o§¬R_@8ser‚ @[ür®R_@ÕÌ-„‚ @Hç>°R_@`”°ô•‚ @ÚšbëT_@Ë_æ•‚ @)£–éT_@ß`À„‚ @÷Gº$W_@,n„‚ @mL†&W_@w7\rØ•‚ @ÚšbëT_@Ë_æ•‚ @Œ”.íT_@§Îý­§‚ @5Ô\n²R_@ÝYO¼§‚ @#ÃÖ³R_@Hîƒ¹‚ @´¢µR_@¢ÞŒKË‚ @1Ø~zP_@Z#ÞYË‚ @]¾J|P_@Dò|!Ý‚ @·Ó&AN_@ÜàÍ/Ý‚ @QúZ?N_@R/hË‚ @1Ø~zP_@Z#ÞYË‚ @\0\0\0±µºI_@‰V×G=‚ @ÕÓé¸I_@/F8€+‚ @ÏB\rôK_@G¿èq+‚ @oýØõK_@À‡9=‚ @±µºI_@‰V×G=‚ @\0\0\0»êšàT_@[ª¦8+‚ @ÿÎÞT_@æq‚ @BWòW_@r¶b‚ @³O¾W_@Ì&U*+‚ @»êšàT_@[ª¦8+‚ @\0\0\0\0\0\0\0\0\02`eˆ_@ìD¿‹-„ @¸8cˆ_@^$"Ä„ @Vv(†_@¡~Ò„ @µà)†_@ÙLš-„ @2`eˆ_@ìD¿‹-„ @\0\0\0\0\0\0	\0\0\0à Æ•_@sùñm„ @Ç\nFÄ•_@Ü4U¦	„ @6…!‰“_@€³´	„ @‰ïŠ“_@aTP|„ @/zÊO‘_@ˆI®Š„ @¾ø—Q‘_@h+KR-„ @Ü™¼Œ“_@•&íC-„ @ú8áÇ•_@ù»Ž5-„ @à Æ•_@sùñm„ @\0\0\0\0\0\0\0\0\0’‘£þ_@õ²x*„ @¿¡Á¡þ_@\ZÓÞÈ„ @l³ñŸþ_@0ñD„ @zŒÍdü_@áëµ„ @nfü_@ŽÝO×„ @™Qmhü_@)Íéž*„ @’‘£þ_@õ²x*„ @\0\0\0\0\0\0\0\0\0DQ•µ_@:bõê%„ @·I?“µ_@”`#„ @:¼X³_@\Z8ò1„ @·ïY³_@$‡ù%„ @DQ•µ_@:bõê%„ @\0\0\0\0\0\0\0\0\0	jØ©ð_@.ÙÃüƒ @M¢«ð_@D#eÉ\r„ @3}pî_@	¦×\r„ @ÃGrî_@›ZGŸ„ @2l­ð_@Kk‘„ @$6¯ð_@@±§X1„ @DJ[êò_@™LfJ1„ @fy€%õ_@+‚$<1„ @ø{J\'õ_@ö¦ÅC„ @áµob÷_@1gƒõB„ @Ëí”ù_@¥Á@çB„ @º#ºØû_@O¶ýØB„ @ÚúïÖû_@1À\\1„ @±ÑÊ›ù_@÷»Ÿ1„ @•·\0šù_@:´þW„ @5™Û^÷_@©:Af„ @Õx¶#õ_@Q[ƒt„ @Bzì!õ_@f2â¬\r„ @ªdÇæò_@ºÝ#»\r„ @Útýäò_@/£‚óûƒ @	jØ©ð_@.ÙÃüƒ @\0\0\0\0\0\0\0\0\0[j_ˆ_@/j‘æ0„ @/G:M\0_@M—Õô0„ @š‰O\0_@Lnv¼B„ @¹)Š_@ž12®B„ @[j_ˆ_@/j‘æ0„ @\0\0\0\0\0\0\0\0\0d©{<&_@MT¸ÉA„ @h· w(_@QUm»A„ @\ZÕu(_@¼–Íó/„ @Êh\nt(_@Ö-,„ @Qtå8&_@ãµx:„ @Ú°:&_@†0„ @d©{<&_@MT¸ÉA„ @\0\0\0\0\0\0\0\0\02`eˆ_@ìD¿‹-„ @®­Òfˆ_@jc\\S?„ @™c÷¡Š_@	æÿD?„ @Y	* Š_@6×b}-„ @2`eˆ_@ìD¿‹-„ @\0\0\0\0\0\0\0\0\0ðqkª_@mÎ4l„ @JÚi0¨_@’uÄz„ @7•=2¨_@£YB&„ @/R4¨_@zÎî	8„ @b5oª_@_û7„ @¤9amª_@ìÉ3&„ @ðqkª_@mÎ4l„ @\0\0\0\0\0\0\0\0\0º#ºØû_@O¶ýØB„ @˜N„Úû_@\\ªž T„ @M©þ_@¯)[’T„ @ªWßþ_@2EºÊB„ @º#ºØû_@O¶ýØB„ @\0\0\0\0\0\0\0\0\0fe¾v_@EuB„ @l=™;	_@ácƒB„ @í´c=	_@Š¯KT„ @«éˆx_@(Ì½<T„ @fe¾v_@EuB„ @\0\0\0\0\0\0\0\0\0f-À_@½ÞÜë=„ @U‘Aò½_@ÚæBú=„ @Wô½_@ÊŠÞÁO„ @Ì¥4/À_@ørx³O„ @f-À_@½ÞÜë=„ @\0\0\0\0\0\0	\0\0\0+ÖÄÍ`_@3š~(„ @²î ’^_@›2"(„ @8s”^_@Oi˜é9„ @vú–Ï`_@ÁÛ9„ @Ç iÑ`_@ßå¬¢K„ @Äc_@È)”K„ @¬ìº\nc_@\r³’Ì9„ @œ»èc_@œû(„ @+ÖÄÍ`_@3š~(„ @\0\0\0\0\0\0	\0\0\0DQ•µ_@:bõê%„ @ÛZç–µ_@O.Š²7„ @}f»˜µ_@PøzI„ @>ßÓ·_@Õ¾ŒkI„ @öÇº_@“ú\\I„ @Ë¢.\rº_@]ue•7„ @×ÿ\nÒ·_@¹ø£7„ @{é6Ð·_@ŠHcÜ%„ @DQ•µ_@:bõê%„ @\0\0\0\0\0\0	\0\0\0˜N„Úû_@\\ªž T„ @ä_Ÿù_@?Åá®T„ @4Ç9d÷_@[z$½T„ @…€)õ_@­ÉfËT„ @‡Þ*õ_@Xê“f„ @…Úf÷_@x‹Å„f„ @ý+)¡ù_@ÎÆ‚vf„ @t{NÜû_@[œ?hf„ @˜N„Úû_@\\ªž T„ @\0\0\0\0\0\0	\0\0\0d©{<&_@MT¸ÉA„ @_™V$_@€íØA„ @"ª!$_@3É¢ŸS„ @Y‹üÇ!_@4í­S„ @U‘ÇÉ!_@qõŒue„ @ä¼ì$_@Ø¢Bge„ @uæ@&_@vê÷Xe„ @ìÆF>&_@h X‘S„ @d©{<&_@MT¸ÉA„ @\0\0\0\0\0\0\0\0\0ÿs¾Ï&_@	arM„ @T>š”$_@ÎÂê)M„ @Ú\rk–$_@_ƒñ^„ @JPÑ&_@Ïã^„ @ÿs¾Ï&_@	arM„ @\0\0\0\0\0\0\0\0\0…u”ÐC_@é;1_L„ @*Zp•A_@ÖÈ®mL„ @¶ÏA—A_@\rÉF5^„ @Ö÷eÒC_@Q,É&^„ @…u”ÐC_@é;1_L„ @\0\0\0\0\0\0\0\0\0óyžÜ_@pô%hU„ @ë”TcÚ_@W~cvU„ @4eÚ_@‹Y>g„ @yqçfÚ_@¡2§y„ @šé¢Ü_@¨‰i÷x„ @mC Ü_@\ZÀÇ/g„ @óyžÜ_@pô%hU„ @\0\0\0\0\0\0\r\0\0\0!Ï2Ý_@øE²®e„ @;ügÛ_@eçS„ @ÿ"_@†rÉØS„ @SEÂ_@zX)B„ @¥i÷_@]<‰I0„ @l\\Ò×_@ÉÑW0„ @T+Ù_@ÅôqB„ @Sxž_@F+º-B„ @vÓB _@|dZõS„ @•™\r¢_@£›ú¼e„ @µaØ£_@¯Ðš„w„ @¤ýÞ_@nkRvw„ @!Ï2Ý_@øE²®e„ @\0\0\0\0\0\0\0\0\0¨"HU_@’oÀYw„ @ý^m_@öØvKw„ @Æc¢Ž_@@âÖƒe„ @94}S_@Gi ’e„ @¨"HU_@’oÀYw„ @\0\0\0\0\0\0)\0\0\0°Ä1M:_@¬‡È¹„ @2à8_@´•È„ @æ_Ø8_@\'éµ/„ @¥l³Ø5_@¡ž/„ @”á~Ú5_@ÿ£eA„ @ƒXJÜ5_@ê`B-S„ @¶I%¡3_@2Ò;S„ @è8\0f1_@±ÝÜIS„ @„Û4d1_@‘_=‚A„ @}Õ)/_@­õ‰A„ @Ü†D\'/_@áeêÈ/„ @<:y%/_@ÔJ„ @ÁKTê,_@(å–„ @å\r‰è,_@£A÷G„ @/*d­*_@eÝBV„ @E[/¯*_@ƒâ„ @ZŽú°*_@A‚å/„ @nÃÅ²*_@Žð!­A„ @h· w(_@QUm»A„ @·áky(_@Õ\rƒS„ @7{(_@KÌ¬Je„ @–3\\¶*_@XHa<e„ @‚ú´*_@yÁtS„ @O¶ï,_@TÃufS„ @&Û*/_@gƒ)XS„ @ºx¦,/_@Ée„ @L˜Ëg1_@ÄY|e„ @àµð¢3_@«>/e„ @tÑÞ5_@Ê½áôd„ @cLáß5_@‹¼v„ @¼r8_@E"3®v„ @—+V:_@6ÆäŸv„ @›`T:_@«ŠEØd„ @!p”R:_@M¦S„ @Qeo8_@Û‰ôS„ @á£8_@Š:UWA„ @¥ßÈP:_@M\rIA„ @®Ûí‹<_@Gz¸:A„ @m@"Š<_@\ZHs/„ @+QýN:_@…Ëg/„ @°Ä1M:_@¬‡È¹„ @\0\0\0\0\0\0\0\0\0oœ¦ç:_@jU(p„ @i×Ê"=_@àîØp„ @byù =_@+Ñ@R^„ @.KÕå:_@Ž<½`^„ @oœ¦ç:_@jU(p„ @\0\0\0\0\0\0\0\0\0¨"HU_@’oÀYw„ @Vä"\Z_@e 	hw„ @\0Èí_@?´©/‰„ @W_@Ös`!‰„ @¨"HU_@’oÀYw„ @\0\0\0\0\0\0\0\0\0—+V:_@6ÆäŸv„ @-÷W:_@¹ÿƒgˆ„ @®\\“<_@F.5Yˆ„ @n¹P‘<_@]–‘v„ @—+V:_@6ÆäŸv„ @\0\0\0\0\0\0\0\0\0 öÙXW_@NYd­‡„ @›¹\rWW_@ÔêÅåu„ @óÁ2’Y_@Àýq×u„ @¨zfY_@àœÓd„ @`5šŽY_@â95HR„ @“FuSW_@³‰VR„ @©QW_@“êŽ@„ @ŽÛÜOW_@HLÇ.„ @©NW_@y£­ÿ„ @‹xDLW_@š(8„ @ÔºU_@RbF„ @‘ÞëU_@ŸÜ\0„ @N¸U_@eŸÕ.„ @+“ÙR_@\rHòã.„ @F_ÛR_@\rÞ«@„ @úb+ÝR_@ûq/sR„ @ÇUPU_@»oÜdR„ @…\ZU_@ûñz,d„ @ô÷ÞR_@ÛÎ:d„ @ì¢ÃàR_@Ÿ“lv„ @D¯èU_@rôu„ @ß´U_@9ð·»‡„ @ öÙXW_@NYd­‡„ @\0\0\0\0\0\0Á\0\0\0×¶bã©_@>Ù›Òs„ @Â£”á©_@-¬ÿ\nb„ @°’Æß©_@ÿ|cCP„ @@7ë\Z¬_@7ù\05P„ @j¬_@¬×dm>„ @—O¬_@´È¥,„ @“v*Ü©_@u+´,„ @‹é¡§_@Â,„ @Eë7Ÿ§_@Òðú\Z„ @ïi§_@æŠT3	„ @bŽØ©_@©«ò$	„ @y[ÀÖ©_@)rV]÷ƒ @wVòÔ©_@£6º•åƒ @vS$Ó©_@ùÎÓƒ @J\0˜§_@,©ÜÓƒ @2–§_@ÉYãÂƒ @xRVÑ©_@P¹Âƒ @vS$Ó©_@ùÎÓƒ @¡žH¬_@ã»¿Óƒ @g®¬_@X‡åƒ @S;K®_@…õxåƒ @ÈçlI®_@_gY±Óƒ @ë.‘„°_@æ…ö¢Óƒ @<X_†°_@q”’jåƒ @S;K®_@…õxåƒ @à"	M®_@¿¡‘@÷ƒ @/Àä¬_@×<ôN÷ƒ @øÓ²¬_@¦f	„ @qC×N®_@Ü»-	„ @f¥P®_@èÓÉÏ\Z„ @;àÉ‹°_@¥³fÁ\Z„ @—˜°_@ï¹‰,„ @”–¼È²_@2$Ÿz,„ @sXîÆ²_@œ-³\Z„ @U Å²_@ö4gë„ @ã°û‰°_@M«Êù„ @ƒ-ˆ°_@á .2÷ƒ @;âQÃ²_@>:Ë#÷ƒ @#ªƒÁ²_@€=/\\åƒ @tµ¿²_@§>“”Óƒ @.·Ùú´_@£‘/†Óƒ @Jøý5·_@Ú~ËwÓƒ @éGÌ7·_@L^g?åƒ @Ç“ðr¹_@\nÖ1åƒ @/ò¾t¹_@¬£žøöƒ @ÐHã¯»_@ð¥9êöƒ @në½_@nBÔÛöƒ @ð+&À_@%ynÍöƒ @Ok]$À_@¡ÚÒåƒ @"¯_Â_@H»l÷äƒ @ðð¥šÄ_@*6éäƒ @²T×˜Ä_@õ´j!Óƒ @xº—Ä_@¯1ÏYÁƒ @¸à,ÒÆ_@8fhKÁƒ @¼;^ÐÆ_@šðÌƒ¯ƒ @5S‚É_@Ïeu¯ƒ @÷Q\rÉ_@ü4=Áƒ @1\'uHË_@ü™.Áƒ @ªh¦FË_@ÌGþf¯ƒ @\'¬×DË_@ŠïbŸƒ @Ó²ûÍ_@5ûƒ @Žë,~Í_@™Ç_É‹ƒ @L&^|Í_@ïzÄzƒ @)9:AË_@Õ8,zƒ @§ñCË_@7•Ç×‹ƒ @ºõäÉ_@ý.æ‹ƒ @JÉ_@ø“zƒ @)9:AË_@Õ8,zƒ @°‚k?Ë_@kÚHhƒ @czÍ_@<,):hƒ @L&^|Í_@ïzÄzƒ @m‚·Ï_@EW\\óyƒ @‡ú¥òÑ_@ÚÍóäyƒ @À×ðÑ_@˜žXhƒ @øú+Ô_@"¿ïhƒ @dÐgÖ_@êy†\0hƒ @¯¦B¢Ø_@ðÎògƒ @¥s Ø_@ÁÌ*Vƒ @ÜOeÖ_@hë8Vƒ @Š,*Ô_@TGVƒ @ûBïÑ_@>m½UVƒ @9j9íÑ_@Ñ9"ŽDƒ @n§²Ï_@”ŠœDƒ @uÝF°Ï_@ÝNïÔ2ƒ @h%#uÍ_@¦3Wã2ƒ @Wkÿ9Ë_@¬²¾ñ2ƒ @D¯ÛþÈ_@òË%\03ƒ @œ\r\rýÈ_@„UŠ8!ƒ @K\\éÁÆ_@QùðF!ƒ @ô¨Å†Ä_@]7WU!ƒ @1”ˆÄ_@9Íò3ƒ @õnpMÂ_@:µX+3ƒ @ÔªLÀ_@{7¾93ƒ @lÀ_@°êYEƒ @Qì>OÂ_@»XôòDƒ @4»bŠÄ_@aŽäDƒ @ˆ†ÅÆ_@‰(ÖDƒ @îRª\0É_@O@ÁÇDƒ @ÆÎ;Ë_@QZ¹Dƒ @9Îœ=Ë_@çyõ€Vƒ @œøxÉ_@›²\\Vƒ @M GÉ_@Ö"øVhƒ @è»#ÉÆ_@_ehƒ @×XòÊÆ_@Xƒú,zƒ @«eÎÄ_@õa;zƒ @ypªTÂ_@Ï6ÇIzƒ @Ey†À_@å÷,Xzƒ @€bÞ½_@:S’fzƒ @ïë0à½_@á\r..Œƒ @ðã¥»_@(“<Œƒ @Ö„>£»_@ÊH÷tzƒ @˜‡\Zh¹_@˜Ø[ƒzƒ @Wˆö,·_@£À‘zƒ @ÊD(+·_@Ö$Êhƒ @E7Lf¹_@ü¿»hƒ @÷è}d¹_@M$ôVƒ @?Z)·_@ð(ˆWƒ @†6î´_@ÑÍëWƒ @É1³²_@ïOWƒ @ÊD±²_@‘ý²WEƒ @Ï, v°_@:ÇfEƒ @\nFîw°_@Kæ±-Wƒ @IXÊ<®_@æY<Wƒ @Àf˜>®_@˜†°iƒ @6jt¬_@!¤iƒ @…h¦¬_@½gvJWƒ @½v‚Æ©_@ÓØXWƒ @ó‚^‹§_@\'R9gWƒ @Ìœ‰§_@PôœŸEƒ @§¸Â‡§_@i”\0Ø3ƒ @dÜžL¥_@™Qaæ3ƒ @Ä³lN¥_@1Áý­Eƒ @ºÈH£_@P(^¼Eƒ @W•£_@ˆ¥úƒWƒ @†›òÙ _@”¶Z’Wƒ @±ŸÎžž_@ßaº Wƒ @ÇTœ ž_@düVhiƒ @-Jxeœ_@›Q¶viƒ @ôEgœ_@µùR>{ƒ @Ö iœ_@ÇŸïƒ @úÄ7¤ž_@2+÷Œƒ @ç[ß _@ÛP0éŒƒ @ÿ®)á _@€ÕÌ°žƒ @äx÷â _@Xix°ƒ @7=Ó§ž_@ÊQÉ†°ƒ @Yü ©ž_@üáeNÂƒ @ËDÅä _@—Ø@Âƒ @9‹é£_@li¥1Âƒ @¦Ï\r[¥_@}”D#Âƒ @\Z·Û\\¥_@‘óàêÓƒ @ ©^¥_@“P}²åƒ @˜B…#£_@âDÞÀåƒ @L!S%£_@y¯zˆ÷ƒ @!\'£_@\nP	„ @¹äî(£_@‹~³„ @q^Êí _@#<&„ @e6˜ï _@B°°í,„ @]fñ _@Q"Mµ>„ @‡nA¶ž_@™­Ã>„ @®Ê{œ_@èª\rÒ>„ @Ò$ø?š_@ˆVmà>„ @}ÚÅAš_@‘õ	¨P„ @Ú%¡˜_@Ki¶P„ @ÀÐn˜_@À÷~b„ @U\rJÍ•_@+÷dŒb„ @3o|Ë•_@Ô:ÈÄP„ @Œ¶W“_@ÊÄ&ÓP„ @ãû2U‘_@öè„áP„ @PyeS‘_@9è?„ @kÉ@_@ñ¹E(?„ @„ÝŒ_@á£6?„ @Œ€éÞŒ_@÷ÿ?þP„ @7?\Z_@[§âïP„ @·Û_@·’·b„ @y€\0W‘_@§Ä!©b„ @çG%’“_@ÍÃšb„ @DÛò““_@³Z`bt„ @w­Ï•_@e±Tt„ @§}<\n˜_@L¢¢Et„ @“,\n˜_@ÐJ?\r†„ @†/Gš_@AÆßþ…„ @xàS‚œ_@èÛð…„ @†€œ_@¿Rã(t„ @*âª»ž_@Lƒ\Zt„ @òÝ¹ž_@Ë–æRb„ @TÊõ _@=\0†Db„ @SªÏö _@l"t„ @xpô1£_@`Áýs„ @³ƒ&0£_@æ%6b„ @;Kk¥_@Ç¡Ã\'b„ @kðo¦§_@ßÙab„ @ºö=¨§_@ þàs„ @×¶bã©_@>Ù›Òs„ @	\0\0\0º´ÐE®_@±$!"°ƒ @8žD®_@B\0…Zžƒ @\r¿&°_@ßM"Lžƒ @Tâô€°_@b¾°ƒ @º´ÐE®_@±$!"°ƒ @@ÍžG®_@G½éÁƒ @Ýz¬_@³øÁƒ @…¬\n¬_@ƒ0°ƒ @º´ÐE®_@±$!"°ƒ @\0\0\0\0\0\0\0\0\0×¶bã©_@>Ù›Òs„ @ðË0å©_@H8š…„ @Ñ–U ¬_@kQÕ‹…„ @ót‡¬_@69Äs„ @×¶bã©_@>Ù›Òs„ @\0\0\0\0\0\0\0\0\0È{„)_@Wó*œp„ @˜.`Ó&_@xÚ£ªp„ @î1Õ&_@\Z”<r‚„ @ähU)_@/Ãc‚„ @È{„)_@Wó*œp„ @\0\0\0\0\0\0\0\0\0oœ¦ç:_@jU(p„ @p_‚¬8_@wÑ6p„ @ñ¥S®8_@Àºiþ„ @·ïwé:_@‹•íï„ @oœ¦ç:_@jU(p„ @\0\0\0\0\0\0	\0\0\0dÒƒJ_@nóMû]„ @B®HH_@ÁÌ	^„ @çßJH_@,dÑo„ @º¤…J_@G²åÂo„ @j»u‡J_@o}Š„ @üô™ÂL_@žþ{„ @†;ÈÀL_@šnf´o„ @„ö¾L_@‘¿Îì]„ @dÒƒJ_@nóMû]„ @\0\0\0\0\0\0	\0\0\0øÕ°_@»pYÈ„ @[Ì¯_@óžÃ\0n„ @oÜÝs_@!ÐNn„ @zê¹8‹_@‡›Ùn„ @~ö•ýˆ_@$d,n„ @Ëiÿˆ_@„úó„ @Œ	:‹_@	oå„ @F±u_@Æ±äÖ„ @øÕ°_@»pYÈ„ @\0\0\0\0\0\0\0\0\0:`¥°É_@}†l„ @9¥uÇ_@šª”l„ @#VwÇ_@œÞ>\\~„ @êäy²É_@+G©M~„ @:`¥°É_@}†l„ @\0\0\0\0\0\0\0\0\0ùÅoÂ_@väû„„ @5^ 4À_@<#K\n…„ @õn6À_@5¯æÑ–„ @“¸“qÂ_@ÄòÃ–„ @z¸¬Ä_@ˆÐµ–„ @¹ÉéªÄ_@ûc}í„„ @ùÅoÂ_@väû„„ @\0\0\0\0\0\0\0\0\0øÕ°_@»pYÈ„ @?¨²_@s@ï‘„ @\rGÌí‘_@À‰c‘„ @sLð(”_@Em×r‘„ @Cø\'”_@I½A«„ @¢ÿøë‘_@çÉÍ¹„ @øÕ°_@»pYÈ„ @\0\0\0\0\0\0\0\0\0©­¸_@	ÆI÷š„ @Q•ƒ_@ÃÕé¾¬„ @õù¨Z_@0v °¬„ @š\\Î•_@Ñ°V¢¬„ @f[”_@CÀ¶Úš„ @ˆÞX_@v\0éš„ @©­¸_@	ÆI÷š„ @\0\0\0\0\0\0\0\0\0P5£_@.úŒ—„ @Wpkú _@”=[›—„ @]V9ü _@?£÷b©„ @ÔB^7£_@)h–T©„ @P5£_@.úŒ—„ @\0\0\0\0\0\0\0\0\0Ñ–U ¬_@kQÕ‹…„ @±º#"¬_@³jqS—„ @”àñ#¬_@ë\r©„ @þÂ_®_@âIª©„ @UH]®_@\\BE—„ @®_z[®_@Å8r}…„ @Ñ–U ¬_@kQÕ‹…„ @\0\0\0\0\0\0\0\0\0º¼JM+_@yØâ”„ @X&)_@÷D\\+”„ @*I÷)_@¯êôò¥„ @¥ºO+_@gn{ä¥„ @º¼JM+_@yØâ”„ @\0\0\0\0\0\0\0\0\0Â!#NH_@d\'”`“„ @\\×þF_@¿o“„ @ŽnÐF_@r—ª6¥„ @¸ÅôOH_@çï+(¥„ @Â!#NH_@d\'”`“„ @\0\0\0\0\0\0\0\0\0÷+E\'Z_@3‘ì’„ @Èñ ìW_@:ßû’„ @\'ïòíW_@9ªÂ¤„ @6)Z_@*c(´¤„ @	{;d\\_@†\'¦¥¤„ @dib\\_@bíÞ’„ @÷+E\'Z_@3‘ì’„ @\0\0\0\0\0\0\0\0\0sLð(”_@Em×r‘„ @­¢Ã*”_@/m:£„ @Ñ²çe–_@‰à+£„ @ëÀ¡˜_@‘S£„ @%Q8Ÿ˜_@ð¾U‘„ @ÑOd–_@ÿêJd‘„ @sLð(”_@Em×r‘„ @\0\0\0\0\0\0\0\0\0t\Z6’å_@‰ü±Mœ„ @½Wã_@À[ñ[œ„ @9ÚXã_@Šð’#®„ @fã£Zã_@Aƒ4ë¿„ @§†É•å_@öõÜ¿„ @Ïÿ“å_@ÈS®„ @t\Z6’å_@‰ü±Mœ„ @\0\0\0\0\0\0	\0\0\0ØBwãû_@OÃ†­„ @GÀQ¨ù_@L¸•­„ @Uêªù_@…¯§\\¿„ @¬yAåû_@F7dN¿„ @g þ_@<Y @¿„ @]’Œ[\0_@fÜ1¿„ @ýAÂY\0_@ÝL;j­„ @jÃœþ_@"x­„ @ØBwãû_@OÃ†­„ @\0\0\0\0\0\0\0\0\0©­¸_@	ÆI÷š„ @\0Èí_@?´©/‰„ @ëzÈà_@ÝŽò=‰„ @Ô+£¥_@±;L‰„ @ñ÷m§_@¦4Û›„ @šHl_@ES#"›„ @<:#1_@k0›„ @cØýõ_@"_²>›„ @ŒtØº\r_@aLùL›„ @£¼\r_@”¹™­„ @/€È÷_@Ã¼R­„ @÷)“ù_@QóÍ¾„ @\\¥¸4_@ ¦«¿¾„ @Íîí2_@%Zø¬„ @m[n_@¾‘Ãé¬„ @ÂÞo_@$Îc±¾„ @)–«_@]£¾„ @Æ8©_@Šc{Û¬„ @°.^ä_@ŒÏ2Í¬„ @ÎS“â_@<°’›„ @©­¸_@	ÆI÷š„ @\0\0\0\0\0\0\0\0\0”àñ#¬_@ë\r©„ @(üÌè©_@+Tp)©„ @F›ê©_@yñº„ @zÀ%¬_@—©âº„ @”àñ#¬_@ë\r©„ @\0\0\0\0\0\0\0\0\0ÎþƒÚ`_@ß~ ˆ¤„ @ï½_Ÿ^_@†#—¤„ @¦ã1¡^_@T®º^¶„ @K1VÜ`_@F—7P¶„ @ÎþƒÚ`_@ß~ ˆ¤„ @\0\0\0\0\0\0\0\0\0‚‘ZÛ}_@@òÔË£„ @k6 {_@¸$]Ú£„ @Æ6	¢{_@	ó¡µ„ @\nj-Ý}_@¶<k“µ„ @‚‘ZÛ}_@@òÔË£„ @\0\0\0\0\0\0\0\0\0­¢Ã*”_@/m:£„ @Ÿï‘_@ŠGùH£„ @üÛrñ‘_@Aµ„ @ïú–,”_@Çµ„ @­¢Ã*”_@/m:£„ @\0\0\0\0\0\0\r\0\0\01-Hƒ_@PË€ê¾„ @ôœ}_@œPà"­„ @Y(XF	_@Ø&1­„ @Á±2_@JMl?­„ @(9\rÐ_@ð²±M­„ @’¾ç”_@Ì²ö[­„ @¸²–_@Æk—#¿„ @£×Ñ_@Y\\R¿„ @ÿ¢Ó_@²óÜÐ„ @#¡Ç_@é~­ÎÐ„ @r(ý_@!ç¿„ @Ñ«"H	_@Çø¾„ @1-Hƒ_@PË€ê¾„ @\0\0\0\0\0\0\0\0\0F›ê©_@yñº„ @$v¯§_@(õnÿº„ @Û.Qt¥_@ƒÑ\r»„ @r2v¥_@¬MmÕÌ„ @p4D±§_@¡\'ÇÌ„ @j4iì©_@Ë›¨¸Ì„ @F›ê©_@yñº„ @\0\0\0\0\0\0\0\0\0êÄ½´_@q}÷ØÉ„ @\\âï_@VD€ÊÉ„ @¿¦î_@ÕSç¸„ @\\í²_@(}^¸„ @êÄ½´_@q}÷ØÉ„ @\0\0\0\0\0\0\0\0\0`‹3O_@‹-EÄ¶„ @„-ÈL_@EÅÒ¶„ @ïàÉL_@»\\šÈ„ @µYO_@yÂÜ‹È„ @QÂ)@Q_@$d\\}È„ @6çW>Q_@ßÄµ¶„ @`‹3O_@‹-EÄ¶„ @\0\0\0\0\0\0\0\0\0ONgÌ£_@:·cÆ„ @œš“Ê£_@^ÿ!œ´„ @æ‰o¡_@±ª´„ @Ò0C‘¡_@¦NFrÆ„ @ONgÌ£_@:·cÆ„ @\0\0\0\0\0\0\0\0\09#á_@Ú¶ˆã„ @>7^ã_@¢wzã„ @·m\\ã_@éÖ²Ñ„ @²ÝG!á_@ô;ÁÑ„ @9#á_@Ú¶ˆã„ @\0\0\0\0\0\0\0\0\09!_\0_@K Áâ„ @ÿÛFš_@‰×Ø²â„ @Üz|˜_@¯"8ëÐ„ @¼äV]\0_@àÛ|ùÐ„ @9!_\0_@K Áâ„ @\0\0\0\0\0\0	\0\0\0÷)“ù_@QóÍ¾„ @•¬m¾\r_@¶$:Ü¾„ @1-Hƒ_@PË€ê¾„ @o¿…_@ôC!²Ð„ @©SÝ†_@‡ºÁyâ„ @—ìÂ\r_@Éôzkâ„ @–K8À\r_@ÇÚ£Ð„ @¿Õ]û_@Ïq“•Ð„ @÷)“ù_@QóÍ¾„ @\0\0\0\0\0\0\0\0\0&N\n$_@R#"¾š„ @G¯(Ï!_@¯¤lÌš„ @@½óÐ!_@¨…”¬„ @š\\Î•_@Ñ°V¢¬„ @Í_™—_@OŸöi¾„ @ÿdd™_@»‹–1Ð„ @1ß‰Ô!_@eAL#Ð„ @(óTÖ!_@,ìêá„ @!xz$_@r\\¡Üá„ @\ZûŸL&_@í6VÎá„ @—ÍÔJ&_@T{¶Ð„ @dW¯$_@B‘Ð„ @¥8ä\r$_@ÄaM¾„ @ç$_@´ôÁ…¬„ @&N\n$_@R#"¾š„ @\0\0\0\0\0\0\0\0\0&"µ_@°éµpÌ„ @8 ýØ²_@r\ZÌ„ @urËÚ²_@oT¶FÞ„ @(uðµ_@ì»Q8Þ„ @&"µ_@°éµpÌ„ @\0\0\0\0\0\0\0\0\0‰t>_@F¾äõÉ„ @QóO_@ÿÅZÊ„ @“w _@óóËÛ„ @’!E@_@Ü}½Û„ @‰t>_@F¾äõÉ„ @\0\0\0\0\0\0\0\0\0êÄ½´_@q}÷ØÉ„ @¼+™y_@ÁPnçÉ„ @‹Éi{_@Á^¯Û„ @~oŽ¶_@ª{ Û„ @êÄ½´_@q}÷ØÉ„ @\0\0\0\0\0\0\0\0\0qTe_@{.ÇúÇ„ @3¾Lc_@ò K	È„ @…c_@e%âÐÙ„ @¨dCVe_@#^ÂÙ„ @qTe_@{.ÇúÇ„ @\0\0\0\0\0\0\0\0\0yÞl_@Vô8ÏÇ„ @1»¹Êi_@-¾ÝÇ„ @Ö$ŒÌi_@íT¥Ù„ @á°l_@p¹Ï–Ù„ @yÞl_@Vô8ÏÇ„ @\0\0\0\0\0\0\0\0\0‹…Šjy_@´)¨?Ù„ @cÔ®¥{_@x- 1Ù„ @Ü£{_@I×‰iÇ„ @Â·hy_@«ÃxÇ„ @‹…Šjy_@´)¨?Ù„ @\0\0\0\0\0\0\0\0\0á¯÷¸¬_@”ív)Æ„ @ŠšÓ}ª_@`™8Æ„ @—v§ª_@P¢œÿ×„ @µ˜Ëº¬_@¡æñ×„ @á¯÷¸¬_@”ív)Æ„ @\0\0\0\0\0\0\0\0\0æ6 qÚ_@r³ã„ @$pz6Ø_@p¾¯Áã„ @àC8Ø_@¥˜Q‰õ„ @\Z´isÚ_@¹è{õ„ @£…®Ü_@\0ÓÕlõ„ @©ûÅ¬Ü_@Ü4¥ã„ @æ6 qÚ_@r³ã„ @\0\0\0\0\0\0+\0\0\0’‘£þ_@õ²x*„ @s„a¥þ_@¿X<„ @Õx1§þ_@vl¬N„ @:o©þ_@!FFç_„ @¥gÑªþ_@­à®q„ @ô¬oü_@çvQ½q„ @¼á|qü_@-\\ë„ƒ„ @jÑLsü_@d?…L•„ @‰^q®þ_@§Æ>•„ @]A°þ_@\r˜­§„ @áôeë\0_@Å©;÷¦„ @&6í\0_@WiÕ¾¸„ @Å¤Z(_@‚c°¸„ @`Ec_@ä;ð¡¸„ @4nOe_@àÙ‰iÊ„ @t _@³š[Ê„ @/QD¢_@Ü&°"Ü„ @NiÝ	_@!r<Ü„ @e»_@™WÈÜ„ @•^\Z_@)ÂaÍí„ @oÍ‚U_@2í¾í„ @ym²S_@G×S÷Û„ @ˆâQ_@kzº/Ê„ @Ñ²_@¤E!Ê„ @J6‹_@êT¬Y¸„ @³P_@~!h¸„ @·YAN_@€º‡ ¦„ @õÍ_@…ü®¦„ @.@ø×	_@Àöo½¦„ @a°Óœ_@0|ãË¦„ @Ò~›_@ÕéI•„ @ÇùÞ__@¹ù¼•„ @×^_@ŠU#Kƒ„ @¶\\ê"_@àï•Yƒ„ @iàÅç\0_@n$hƒ„ @4Ùõå\0_@«^n q„ @Ô%ä\0_@á–ÔØ_„ @×ÐUâ\0_@øÌ:N„ @Õ&z_@±ÇÈN„ @éª_@~/;<„ @°Ï…à\0_@¡I<„ @ŽÐµÞ\0_@ú2‚*„ @’‘£þ_@õ²x*„ @\0\0\0\0\0\0\0\0\0‹…Šjy_@´)¨?Ù„ @­4f/w_@$À/NÙ„ @ûì81w_@õ3Æë„ @ J]ly_@«>ë„ @‹…Šjy_@´)¨?Ù„ @\0\0\0\0\0\0\0\0\0_WÊ€_@8¥Ûê„ @ùk÷€_@ŸÙ„ @1!Óà}_@qË—"Ù„ @Ñÿ¥â}_@´.êê„ @_WÊ€_@8¥Ûê„ @\0\0\0\0\0\0\0\0\0ÑNªáš_@å¡†eØ„ @m†¦˜_@=/tØ„ @S”Y¨˜_@$µ©;ê„ @~Ó}ãš_@î-ê„ @ÑNªáš_@å¡†eØ„ @\0\0\0\0\0\0\0\0\0=Ûç2±_@~›é„ @ÕÖ1±_@â=éÓ×„ @Ê¸ïõ®_@\'Åzâ×„ @m°Ã÷®_@>¬ªé„ @=Ûç2±_@~›é„ @\0\0\0\0\0\0\0\0\0éG¯&_@\0jÝó„ @9z(_@`\n¥… @ÞŸc_@áWÀ–… @¦ßÔa_@b Ïó„ @éG¯&_@\0jÝó„ @\0\0\0\0\0\0\0\0\0 	 Ø!_@áô‹²ó„ @buúœ_@d^ÖÀó„ @‘€Åž_@”Dvˆ… @!ëÙ!_@zË+z… @š¿$_@’ìàk… @ÞšE$_@%A¤ó„ @ 	 Ø!_@áô‹²ó„ @\0\0\0\0\0\0\0\0\0j¢¼G_@ôùCÙ™„ @O?Ç÷I_@%¶òÊ™„ @13“ùI_@?~‘’«„ @‡öm¾G_@¬Ñâ «„ @j¢¼G_@ôùCÙ™„ @…Ý|E_@÷×”ç™„ @Ü·HƒE_@M¿3¯«„ @3”…E_@‘¤Òv½„ @£ß9ÀG_@R§h½„ @ÂÊÂG_@èz 0Ï„ @ø +ýI_@?Ï!Ï„ @Ü\Z÷þI_@\'Êméà„ @ÀÃ\0J_@ý‰±ò„ @¤J_@¸G«x… @,´=L_@g@Yj… @€„è;L_@L’º¢ò„ @×{:L_@âÛà„ @-uP8L_@Ë/}Ï„ @ƒp„6L_@q{ÞK½„ @õµ©qN_@ÑLŒ=½„ @eùÎ¬P_@e¸9/½„ @0Ý«P_@:!›g«„ @üÂ6©P_@þ‡üŸ™„ @™nN_@+ýN®™„ @¨ElN_@?R°æ‡„ @Šn 1L_@Rõ‡„ @mMûõI_@üëSˆ„ @‰]/ôI_@Ãµ;v„ @0G\n¹G_@TDJv„ @M*ÖºG_@+ ¥ˆ„ @j¢¼G_@ôùCÙ™„ @\0\0\0\0\0\0\0\0\0oÍ‚U_@2í¾í„ @i/SW_@ÁŠ††ÿ„ @ùw’_@\Z…xÿ„ @BŠ§_@0<x°í„ @oÍ‚U_@2í¾í„ @\0\0\0\0\0\0	\0\0\0ÚŒ¹r_@¤»=kÙ„ @ã5ù}p_@³ ÄyÙ„ @áÇËp_@\rÄZAë„ @ä[žp_@Jeñý„ @fÌÂ¼r_@‹àjúü„ @à:ç÷t_@öãëü„ @Qöt_@stM$ë„ @ÈáAôt_@Êð¶\\Ù„ @ÚŒ¹r_@¤»=kÙ„ @\0\0\0\0\0\0\0\0\0:¤€_@JÐg„ê„ @§îE‹_@»\nó’ê„ @óSG‹_@¼íˆZü„ @tw‚_@n£ýKü„ @0Ê›½_@Róq=ü„ @XƒÈ»_@0Üuê„ @:¤€_@JÐg„ê„ @\0\0\0\0\0\0\0\0\0=Ûç2±_@~›é„ @¯á»4±_@+êcû„ @=ào³_@QÝ€Tû„ @n³_@ ìŒé„ @=Ûç2±_@~›é„ @\0\0\0\0\0\0\0\0\09!_\0_@K Áâ„ @2”û#þ_@@bÏâ„ @PíÕèû_@i\0¦Ýâ„ @~²çû_@àÑ„ @bæ«ù_@­¤H$Ñ„ @mD°­ù_@Æ—éëâ„ @Ž™Šr÷_@WÉ,úâ„ @Ñ¼Tt÷_@íÉÍÁô„ @âv÷_@gÈn‰… @R	éw÷_@ÜÄQ… @ƒÚ³ù_@ dÌB… @¸©4îû_@–žˆ4… @ïvZ)þ_@¾rD&… @&B€d\0_@áÿ… @Îçµb\0_@à"_P… @])\'þ_@ö¤£^… @ëhjìû_@=Áçl… @~¦D±ù_@¹w+{… @vtz¯ù_@ÎˆŠ³ô„ @* êû_@âáF¥ô„ @ÈÝÅ%þ_@)Õ—ô„ @të`\0_@¤b¾ˆô„ @9!_\0_@K Áâ„ @\0\0\0\0\0\0\r\0\0\0Š4Z_@}ó³a… @<‡12Z_@ëµšý„ @Vm\\_@%+š‹ý„ @ùêƒk\\_@dûÄë„ @òË±i\\_@†ÉküÙ„ @´`.Z_@¥4î\nÚ„ @móhóW_@ù9pÚ„ @!„D¸U_@‚Ùñ\'Ú„ @Ô|ºU_@Ù:‰ïë„ @èø:õW_@~‹áë„ @j\0\r÷W_@çÚž¨ý„ @ó	ßøW_@J(6p… @Š4Z_@}ó³a… @\0\0\0\0\0\0\0\0\0_WÊ€_@8¥Ûê„ @ÍD€_@Tj;£ü„ @C4p!€_@œšÑj… @T£”\\‚_@n=H\\… @§ÁZ‚_@²”ü„ @\\æ•„_@âi(†ü„ @—e\nÑ†_@÷Pžwü„ @×Q7Ï†_@<N°ê„ @B¡[\n‰_@bß}¡ê„ @Å‚ˆ‰_@hêçÙØ„ @@dÍ†_@fIrèØ„ @n0‘Ë†_@~BÜ Ç„ @Ç"¾É†_@…9FYµ„ @)ëÇ†_@{.°‘£„ @ÊøÆŒ„_@ø9 £„ @¥÷™Ž„_@Ðgµ„ @xÊuS‚_@²†Yvµ„ @eØ¢Q‚_@ñ[Ã®£„ @øµ~€_@þYL½£„ @F›Q€_@™”â„µ„ @›‚$\Z€_@$ÍxLÇ„ @”¾HU‚_@b¯ï=Ç„ @¸´W‚_@Ö…Ù„ @å¬îX‚_@úÍê„ @_WÊ€_@8¥Ûê„ @\0\0\0\0\0\0\0\0\0ONgÌ£_@:·cÆ„ @\n;Î£_@›rL+Ø„ @Ï»Ð£_@©áòé„ @Îð2¦_@ïRäé„ @b·\r¦_@v3ç«û„ @žuâÑ£_@ˆÝvºû„ @t1¶Ó£_@ë‚\r… @ÿÚ¦_@øU|s\r… @€ÌþI¨_@86ìd\r… @÷*H¨_@˜#Wû„ @Í4Oƒª_@î­ÆŽû„ @¯T{ª_@.©1Çé„ @Ä#WF¨_@õÂÕé„ @sRƒD¨_@4ø,Ø„ @C,_	¦_@Mè¼Ø„ @Ái‹¦_@˜¿\'UÆ„ @ONgÌ£_@:·cÆ„ @\0\0\0\0\0\0\0\0\0>|(æ·_@<’[7û„ @ÂJ«µ_@­jîEû„ @ÉlØ¬µ_@õƒ\r\r… @\n«üç·_@Ÿ5ðþ… @>|(æ·_@<’[7û„ @\0\0\0\0\0\0\0\0\0íÕ‰_@Þ±?ø… @Wä‰_@Ã©0… @_{ÝÒ†_@¬Q4?… @^¹—„_@sz¾M… @hŒ™„_@ñˆT … @.“°Ô†_@NPÊ … @íÕ‰_@Þ±?ø… @\0\0\0\0\0\0\0\0\0J1Éñû_@SÊÃ;… @\rï,þ_@†µ;… @~Æ$+þ_@s>åí)… @‚ìþïû_@Ûy)ü)… @J1Éñû_@SÊÃ;… @\0\0\0\0\0\0\0\0\0· Äµ_@èqÜP)… @Ë~·_@G|;… @ŸMµò_@¤3\n;… @r\ZÛ-_@1	êû:… @Ñ",_@û	J4)… @Äbêð_@Øp“B)… @· Äµ_@èqÜP)… @\0\0\0\0\0\0	\0\0\0®&¤_@áêUß:… @ñtLß!_@CÑ:… @É9r\Z$_@Y5ÀÂ:… @§$_@|t û(… @UæÛ$_@‘±€3… @\n;¶Û!_@ ËA… @¿ _@¿(P… @îœ[¢_@×\n¶)… @®&¤_@áêUß:… @\0\0\0\0\0\0\0\0\0.Ñ½_@Õ_ô¾"… @úT¬‚_@‚kÍ"… @äü|„_@´…•4… @¶â¡¿_@ºS†4… @.Ñ½_@Õ_ô¾"… @\0\0\0\0\0\0	\0\0\0íÕ‰_@Þ±?ø… @‹/¨‰_@–žÕ¿1… @°ÌL‹_@|ŠJ±1… @}.ñ‡_@–¿¢1… @Rî†_@™C)Û… @/°J„_@t“… @HK&I‹_@¹Î"… @£|ùJ‹_@¢­´é… @íÕ‰_@Þ±?ø… @\0\0\0\0\0\0\0\0\0ÀM¢å_@Za_R<… @ûƒ å_@Ÿì½Š*… @(^eã_@,Èý˜*… @âT”cã_@ØA\\Ñ… @› Êaã_@s¹º	… @BÈ¤&á_@ú… @À"Û$á_@(vXPõ„ @9#á_@Ú¶ˆã„ @q¾ëçÞ_@ß«õ–ã„ @/UµéÞ_@zW—^õ„ @ïí~ëÞ_@ù\09&… @›Y°Ü_@Œw4… @J33uÚ_@K±µB… @y´üvÚ_@ØwW\n… @¤7ÆxÚ_@R<ùÑ*… @‚/ì³Ü_@ý÷ºÃ*… @rÁµµÜ_@àª\\‹<… @ÄÛðÞ_@5ñ}<… @Ëd¥òÞ_@}’¿DN… @:rË-á_@yc€6N… @«}ñhã_@¦Î@(N… @kÃ\'gã_@rLŸ`<… @ÀM¢å_@Za_R<… @\0\0\0\0\0\0\0\0\0J1Éñû_@SÊÃ;… @ŠH£¶ù_@:8Ò;… @‰‚m¸ù_@ï¯™M… @x“óû_@7*k‹M… @J1Éñû_@SÊÃ;… @\0\0\0\0\0\0\0\0\0<¯]×£_@~n61… @E9œ¡_@hâÅ1… @Gúž¡_@y[çB… @-q1Ù£_@­šËØB… @<¯]×£_@~n61… @\0\0\0\0\0\0\0\0\0æ¯Às?_@\n|fE… @«Ý›8=_@«²ùtE… @Vm:=_@µ‘<W… @5’u?_@.W… @æ¯Às?_@\n|fE… @\0\0\0\0\0\0\0\0\0tåŸN‹_@DeàxC… @2X{‰_@;‰k‡C… @á‚N‰_@ÍqOU… @êsP‹_@û=v@U… @tåŸN‹_@DeàxC… @\0\0\0\0\0\0\0\0\0³!•/á_@%ó!þ_… @|oôÞ_@³1a`… @,¬8öÞ_@ÛÎÔq… @\'Ó^1á_@Â€ÃÅq… @³!•/á_@%ó!þ_… @\0\0\0\0\0\0\0\0\0ó³rŒª_@í¦¯tT… @d6NQ¨_@l@ƒT… @ô"S¨_@NtÕJf… @J FŽª_@SŸD<f… @ó³rŒª_@í¦¯tT… @\0\0\0\0\0\0\0\0\0ÓÝyÐ_@=¸Õ|S… @x¹>Î_@@m‹S… @Ï0Ž@Î_@\0:Se… @„˜²{Ð_@P¢iDe… @ÓÝyÐ_@=¸Õ|S… @\0\0\0\0\0\0\0\0\0ìBÐóÔ_@§	Íîv… @ÕaûñÔ_@‡A9\'e… @1þÖ¶Ò_@Ó¤Ñ5e… @ƒÒ«¸Ò_@ß|eýv… @ìBÐóÔ_@§	Íîv… @\0\0\0\0\0\0\0\0\0¿ŸîÍÉ_@UeWÿˆ… @%	Ì_@pyÀðˆ… @u>Ì_@¬s,)w… @~üÌÉ_@¨OÃ7w… @¿ŸîÍÉ_@UeWÿˆ… @\0\0\0\0\0\0\0\0\0ìBÐóÔ_@§	Íîv… @&¥õÔ_@ÂÏ`¶ˆ… @4¡É0×_@ÑæÇ§ˆ… @J±ô.×_@¡04àv… @ìBÐóÔ_@§	Íîv… @\0\0\0\0\0\0\0\0\0^:µ^_@yà8òy… @.,z\\_@Ø?¼\0z… @u]ç{\\_@_SÈ‹… @Ã¹}\\_@R|ê… @€†Þ¸^_@Jýf… @jF·^_@éïÏ¹‹… @^:µ^_@yà8òy… @\0\0\0\0\0\0\0\0\0¿ŸîÍÉ_@UeWÿˆ… @^Ê’Ç_@lëí\r‰… @ä°ž”Ç_@ò‚Õš… @\nEÃÏÉ_@ôxëÆš… @¿ŸîÍÉ_@UeWÿˆ… @\0\0\0\0\0\0\0\0\0%	Ì_@pyÀðˆ… @%×ç\nÌ_@%}T¸š… @:gFÎ_@‡½©š… @b¨7DÎ_@¼\')âˆ… @%	Ì_@pyÀðˆ… @\0\0\0\0\0\0\0\0\04¡É0×_@ÑæÇ§ˆ… @&“ž2×_@ñš[oš… @9z÷Ô_@Í“ô}š… @oòNùÔ_@ÅUˆE¬… @"‡s4×_@üLï6¬… @Ë˜oÙ_@dÞU(¬… @ÃmÙ_@D<Â`š… @Ýœç¨Û_@Èw(Rš… @«äÝ_@|MŽCš… @lž0à_@a½ó4š… @&UZâ_@vÇX&š… @SêXâ_@öbÅ^ˆ… @`y[à_@ôH`mˆ… @d7âÝ_@"Éú{ˆ… @^‘§Û_@ã”Šˆ… @N\ZîkÙ_@˜.™ˆ… @4¡É0×_@ÑæÇ§ˆ… @\0\0\0\0\0\0\0\0\0B‹¼Ì_@Æ~è¬… @_ì—ÑÉ_@~ŠŽ¬… @¾•lÓÉ_@ú™V¾… @hA‘Ì_@Y~|G¾… @	ëµIÎ_@çüä8¾… @(áGÎ_@=\rQq¬… @B‹¼Ì_@Æ~è¬… @\0\0\0\0\0\0\0\0\0Ë˜oÙ_@dÞU(¬… @–mqÙ_@u~éï½… @ú¹‘¬Û_@ šOá½… @gª¼ªÛ_@û	¼¬… @Ë˜oÙ_@dÞU(¬… @\0\0\0\0\0\0\0\0\0wØN—ä_@9¾Pß«… @P*\\â_@á)ìí«… @é…ÿ]â_@?Šµ½… @%$™ä_@©ä¦½… @wØN—ä_@9¾Pß«… @\0\0\0\0\0\0\0\0\0PqaÙG_@}0S¶… @s;žE_@cU‚a¶… @`m E_@®!)È… @ºiÓ¡E_@èß¿ðÙ… @’ùÜG_@ËèmâÙ… @px-ÛG_@/4Ï\ZÈ… @PqaÙG_@}0S¶… @\0\0\0\0\0\0\0\0\0\r1"¿µ_@þ¬QÙ¾… @qýƒ³_@zÎäç¾… @ªœÑ…³_@êzy¯Ð… @{iöÀµ_@‰Iæ Ð… @\r1"¿µ_@þ¬QÙ¾… @\0\0\0\0\0\0\0\0\0ú¹‘¬Û_@ šOá½… @˜Ëf®Û_@4(ã¨Ï… @ºs‹éÝ_@"ÎHšÏ… @UU¶çÝ_@ûOµÒ½… @ú¹‘¬Û_@ šOá½… @\0\0\0\0\0\0\0\0\0®Ð3!l_@Â§\rÒ… @ÊÀæi_@-¹“Ò… @ÝHáçi_@\Zo*Wä… @ˆe#l_@ÙM¤Hä… @®Ð3!l_@Â§\rÒ… @\0\0\0\0\0\0\0\0\0bê}—p_@wS\0dÒ… @ŒÞX\\n_@…0‡rÒ… @,€+^n_@ÄÆ:ä… @È˜P™p_@ßÙ–+ä… @bê}—p_@wS\0dÒ… @\0\0\0\0\0\0\0\0\05EjC_@¬OŽý… @¤ÿ/A_@_] œý… @nèê0A_@•:?d† @œ*lC_@DàíU† @5EjC_@¬OŽý… @\0\0\0\0\0\0\0\0\0‹e2±¾_@‰=¾õó… @R‡\rv¼_@ü%Sô… @0ìáw¼_@”ŒçË† @/×³¾_@;”R½† @‹e2±¾_@‰=¾õó… @\0\0\0\0\0\0\0\0\0ºÿ _@þë¸õE† @¦#Ùå\r_@OF† @î£ç\r_@¨Š¡ËW† @È‘Ê"_@Y½W† @3ñ]_@œ?¯W† @N&\\_@!#pçE† @ºÿ _@þë¸õE† @\0\0\0\0\0\0+\0\0\0ñ2š_@´ ˜nã… @»!\r_‹_@>¹$}ã… @Ú9]‹_@ñŽµÑ… @sË^˜_@fè§Ñ… @ñ2š_@´ ˜nã… @WÕ_@W"`ã… @ÚºƒÓ_@çyv˜Ñ… @Ÿ[°Ñ_@cÏàÐ¿… @ÿx‹–_@.mß¿… @’(¸”_@q×®… @,Úä’_@³APœ… @ÀW‹_@!ŒÍ^œ… @|ÏìU‹_@®»7—Š… @È\Z‰_@Ã¥Š… @îA›‰_@hÿXmœ… @Ãrvá†_@Þä{œ… @ÖšIã†_@öúyC®… @ïÄå†_@çÀ… @-Ú÷©„_@_®šÀ… @ˆùÊ«„_@4¨0áÑ… @ì\Zž­„_@ôŸÆ¨ã… @V>q¯„_@§•\\põ… @lO–ê†_@µžÑaõ… @¥iì†_@o‚g)† @çµ<î†_@!dýð† @€Þa)‰_@¥çqâ† @’!5+‰_@k·ª*† @ëTZf‹_@?Å{›*† @<†¡_@@mïŒ*† @ãäR£_@;…T<† @ó xÞ_@‹MøE<† @ûZ’_@\Zk7<† @8Õp’_@3¦\0ÿM† @ý–V”_@ýürðM† @ù’ÂT”_@®€Ý(<† @ý\rïR”_@NHa*† @	‹Q”_@Ü²™† @—lö’_@vû?¨† @tø"’_@iªà† @ÂäýØ_@ÿl7ï† @k*×_@»È¡\'õ… @wvœ_@õV.6õ… @ñ2š_@´ ˜nã… @\0\0\0\0\0\0\0\0\0xçÓü_@—Ò_Ìi† @@ƒžþ_@_H\0”{† @HÅ9_@÷M¹…{† @vŸú7_@Àç¾i† @xçÓü_@—Ò_Ìi† @\0\0\0\0\0\0\0\0\0ë‹u¹¡_@P«™M† @=¸¡·¡_@BŽƒÑ;† @þáÆò£_@ ,óÂ;† @’óð£_@à^û)† @—æÍµ¡_@!oî	*† @úú³¡_@ïMYB† @¼ÕxŸ_@{*éP† @’Ç¨zŸ_@[~*† @…¦ƒ?_@\'â\r\'*† @pƒ^›_@î5*† @&ÚŠ›_@²n† @ÐÁeÇ˜_@-]–|† @R^9É˜_@á½+D*† @-7Ž–_@\0ºR*† @ïÈç–_@ƒO\Z<† @¼\\»‘–_@óíäáM† @nàÌ˜_@yVÓM† @	@´Î˜_@”Óëš_† @}‹Ù	›_@é\\Œ_† @çÔþD_@š˜Í}_† @K$€Ÿ_@_â=o_† @£aI»¡_@NÆ­`_† @e9½¡_@:ßB(q† @{‰Bø£_@tM²q† @‹×g3¦_@ØU!q† @#n¨_@høüp† @z%¹l¨_@"û4_† @n)åj¨_@Ê#fmM† @öö¿/¦_@ua÷{M† @uÂšô£_@M9ˆŠM† @ë‹u¹¡_@P«™M† @\0\0\0\0\0\0\0\0\0œy¬‘Ð_@áùWŸ:† @•x‡VÎ_@‹Pð­:† @ÏK\\XÎ_@¨/„uL† @!1ZÎ_@´=^† @eø\\Î_@¯ç«p† @À+—Ð_@Faöo† @EPÒÒ_@uzço† @5T{ÐÒ_@â¹æ^† @ae¦ÎÒ_@«üRXL† @Y“Ð_@ÉëfL† @œy¬‘Ð_@áùWŸ:† @\0\0\0\0\0\0#\0\0\0[¬)[w_@aH„† @ZÅVYw_@Ú²<r† @<|”y_@ä).r† @QJ©’y_@fã’f`† @bàƒWw_@ƒÖu`† @qý°Uw_@Ž…­N† @Dž‹\Zu_@‰¼N† @\r=fßr_@$#–ÊN† @²u“Ýr_@ù¸ÿ=† @:n¢p_@èZ‡=† @»ÆHgn_@— =† @ö\Zven_@xX+† @9q£cn_@}á† @@0~(l_@²3hŸ† @?íXíi_@x„î­† @9¨3²g_@kot¼† @Ø&a°g_@Ù¯Ýô† @ì;ue_@#%c† @@°:c_@›4è† @é;c_@ÙÙ† @ñ»=c_@ñ¡+† @Í×àxe_@ãÁ’+† @¡+´g_@í,„+† @±Øµg_@^è¡K=† @Š8«·g_@¾¡8O† @æ£Ðòi_@G‡²O† @-:£ôi_@¿.IÌ`† @I°È/l_@žžÂ½`† @]$îjn_@©¨;¯`† @9ÖÀln_@a.Òvr† @Š“nn_@þ±h>„† @¹¹©p_@„6á/„† @KŸÞär_@5UY!„† @Ù& u_@Ñ„† @[¬)[w_@aH„† @\0\0\0\0\0\0	\0\0\0ÐvJ?A_@6Ú5¡† @5qzC_@ýä’† @¡¥xC_@àEEË‹† @ÙvC_@¼†¦z† @{\ruC_@}Å<h† @k’æ9A_@ßmYJh† @8‡²;A_@»>øz† @~~=A_@{\r—Ù‹† @ÐvJ?A_@6Ú5¡† @\0\0\0\0\0\0\0\0\0šàÞŒ_@†3†ž† @=¸Q_@xGh”ž† @Ê7ƒS_@K\\°† @ðªŽ_@Å÷¼M°† @šàÞŒ_@†3†ž† @\0\0\0\0\0\0\0\0\0ÐvJ?A_@6Ú5¡† @kÌ#?_@—K‡¯† @oºï?_@Ü%&w¯† @›qAA_@Þ¤Ôh¯† @ÐvJ?A_@6Ú5¡† @\0\0\0\r\0\0\0E\0\0xçÓü_@—Ò_Ìi† @±M	û_@½Z¿X† @åµ>ù_@Ôà=F† @UTe4_@ Ø.F† @Âð‹o	_@–ã F† @iAÁm	_@¾†ðX4† @Ïç¨_@óþ¨J4† @ð§_@œ¯ƒ"† @Õ“Câ\r_@ŽÑÀt"† @ëÎxà\r_@º ­† @\n?Ÿ_@l[Øž† @(­ÅV_@JÁ† @¯ÐúT_@—œïÈþ… @WoÔ_@&\'8×þ… @£¡	_@Âð—í… @5ö/S_@ÇuOí… @ÇHVŽ_@ø”óì… @„c‹Œ_@¯{f+Û… @Q§±Ç_@£DÛ… @é×_@Ä§ÓÛ… @í(þ=_@¥‰\0Û… @…4É?_@Ÿ)Èì… @ïz_@…ß¹ì… @x™º|_@nð~þ… @B”A_@xÉþ… @¿èm_@ø™žþ… @ë8_@í³e† @kƒÍ_@Š[ýs† @r{ÝÎ_@_;"† @]ð\n_@ÝƒS-"† @Fc*E_@×B	"† @ÙvõF_@"%©æ3† @)÷Î_@½uóô3† @õÿ™\r_@e“¼E† @¿\ne_@KS3„W† @€o>Ô_@;]}’W† @‚o	Ö_@~XZi† @Š0_@ù>ÓKi† @Q&û_@–(s{† @„qÔ×_@°Q½!{† @¸º­œ_@ô0{† @ð±xž_@§÷Œ† @)«C _@B G¿ž† @ƒ{jÛ_@Ö=ý°ž† @…uŸÙ_@ÅH]éŒ† @\Z7Æ_@ÛŒ† @®öìO_@‘qÈÌŒ† @E´‹_@6m}¾Œ† @ï‰H‰_@à¤Ýöz† @À8oÄ_@DJ’èz† @‘å•ÿ!_@Ñ‰FÚz† @«£Êý!_@‹Þ¦i† @¶Añ8$_@ÚÇZi† @õ%7$_@*»<W† @M„Lr&_@*½n.W† @×,p&_@ò,ÏfE† @T­§«(_@Åi‚XE† @KÜ©(_@çâ3† @`×µn&_@¨š/Ÿ3† @èƒêl&_@N×!† @Øê¨(_@PbCÉ!† @KÜ©(_@çâ3† @Ì¼å*_@©Í•‚3† @ÆO7ã*_@~Xöº!† @Àäká*_@DáVó† @ë:’-_@7	å† @ÅÆ\Z-_@‘jþ… @íU/_@Iaþ… @í‹!T/_@}Gì… @W\rVR/_@ä¦ÝÚ… @-9|1_@ý©qÚ… @Ð¯°‹1_@JYð©È… @áÌÖÆ3_@*¢›È… @ïçü6_@8MSÈ… @G1\06_@©´Å¶… @¨eþ5_@\näþ¤… @1šü5_@X¬u6“… @ìý¿78_@f¼&(“… @;Vô58_@?’‡`… @‰°(48_@fè˜o… @×]28_@Ì7IÑ]… @@×‚m:_@ÚúÂ]… @È(·k:_@ðZûK… @O|ëi:_@QÍ»3:… @)+¥<_@È_l%:… @êsE£<_@ƒJÍ](… @¬¾y¡<_@13.–… @k®Ÿ<_@ÌÎ… @õ‘ÓÚ>_@Hu?À… @ðÓÙ>_@{i øò„ @ê<×>_@’[1á„ @ä]pÕ>_@—KbiÏ„ @ß¥¤Ó>_@Œ9Ã¡½„ @ÚïØÑ>_@q%$Ú«„ @-©³–<_@ç{sè«„ @„`Ž[:_@“lÂö«„ @Ùi 8_@s÷¬„ @Ž¥4"8_@b:°Ì½„ @A7\0$8_@?{O”Ï„ @	ÑÚè5_@‹¿¢Ï„ @Lç5_@oþÚ½„ @¬ðé«3_@ø=Lé½„ @<“Äp1_@§™÷½„ @Ë3Ÿ5/_@aªæ¾„ @\\Òyú,_@åG3¾„ @…‚®ø,_@õ¶“L¬„ @¯4ãö,_@ô#ô„š„ @Ëê½»*_@z<@“š„ @êž˜€(_@7ï‹¡š„ @ŸlÍ~(_@õ:ìÙˆ„ @‚+¨C&_@Px7èˆ„ @fè‚$_@àO‚öˆ„ @&N\n$_@R#"¾š„ @	QsE&_@*<×¯š„ @x>G&_@ôývw¬„ @5Óc‚(_@j¡+i¬„ @Ý+‰½*_@ßßZ¬„ @ìnT¿*_@ž"¾„ @ý³Á*_@êÏ„ @ûêÂ*_@~º¾±á„ @D¶Ä*_@ÕT^yó„ @\\¸‰(_@‹Uª‡ó„ @¦ö[‹(_@^ýIO… @\\6P&_@ß§•]… @ R&_@E]5%… @!ÅÌS&_@™Õì(… @¢ü—U&_@ÞÁt´:… @É9r\Z$_@Y5ÀÂ:… @ƒf=$_@$ô_ŠL… @æ”á!_@g«˜L… @IÁñ¥_@ÛÈõ¦L… @®&¤_@áêUß:… @Få\0i_@ñ, í:… @¬ëËj_@\Z@µL… @¦/_@VŠÃL… @y:€ô_@]ŒÓÑL… @ß^Z¹_@–¬àL… @ñ@%»_@ÒÆ¼§^… @’Vÿ_@Ð¶^… @4jÙD_@ÿôMÄ^… @¯¡C_@›»­üL… @G4~_@ÿfeîL… @ú­i|_@;Å&;… @¬Üžz_@(\r%_)… @· Äµ_@èqÜP)… @¢Äù³_@yQ<‰… @Œê.²_@ù.œÁ… @\r“Tí_@MS³… @0®‰ë_@"8³ëó„ @éG¯&_@\0jÝó„ @CXä$_@øÉâ„ @ j#_@ï)NÐ„ @ù~N!_@lã‰†¾„ @’)æ_@ÊìÒ”¾„ @rêóç_@øs\\Ð„ @ChÎ¬_@ »»jÐ„ @ä¨q_@{yÐ„ @ê]ƒ6_@ðK‡Ð„ @xN8_@æ7ìNâ„ @ˆƒ(ý_@=É3]â„ @—ìÂ\r_@Éôzkâ„ @—ÍÃ\r_@¸Y3ô„ @ãé§ˆ_@\n/bAô„ @0B‚M	_@Žž¨Oô„ @½¸·K	_@z\Zˆâ„ @Ò’_@¡N–â„ @€˜\\_@G¨î]ô„ @-\'_@Ñ9%… @×—ñ_@WÉ/í… @›ÒËÚ_@eŒuû… @·^Ù_@NíÔ3… @@¤Û_@þ:\ZB… @`¦Ÿ_@¦éº	… @&B€d\0_@áÿ… @}žJf\0_@? ß)… @Òüh\0_@VWA§;… @—ß:£_@Â@ü˜;… @}tp¡_@;–[Ñ)… @~H–Ü_@j)Ã)… @_À`Þ_@`Ä¶Š;… @?:+à_@E]WRM… @±L¥_@8éœ`M… @É»Ï¦_@›=(_… @à,š¨_@ð3Þïp… @õŸdª_@\'Ö~·‚… @\n/¬_@Zv”… @bòq\0_@ÀÚd”… @®\\Ór\0_@sˆU¦… @C+­7þ_@™–Jc¦… @¾Íâ5þ_@UÙ©›”… @§¼úû_@\Zrî©”… @x~–¿ù_@¥2¸”… @ÛSp„÷_@2rvÆ”… @©¦‚÷_@1„Õþ‚… @€<Ì½ù_@Æ‘ð‚… @[Xòøû_@7£Mâ‚… @8r4þ_@\Z	Ô‚… @¾Íâ5þ_@UÙ©›”… @bòq\0_@ÀÚd”… @Š>o\0_@ý*ÄÅ‚… @Ç#tm\0_@5y#þp… @x¿©k\0_@PÅ‚6_… @&Áƒ0þ_@5•ÇD_… @ÖÀ]õû_@KÿS_… @ˆ¾7ºù_@’Pa_… @‰‚m¸ù_@ï¯™M… @‹G}÷_@Ø­ò§M… @Ì]}{÷_@”·Qà;… @2³y÷_@?¿°*… @R	éw÷_@ÜÄQ… @ 6Ã<õ_@K¿R_… @˜R>õ_@=Éó&*… @\rqW@õ_@Ñ”î;… @S‚1ó_@Ý„×ü;… @\0–ûó_@<šxÄM… @˜ÕËð_@¹÷ºÒM… @˜‘Êð_@ËÒ<… @¯ŒAÈð_@Í«xC*… @Ä‰wÆð_@Á‚×{… @ò`ó_@íS•m… @?SÓÿò_@[8ô¥… @‰G	þò_@Å\ZSÞô„ @,/9õ_@?¥Ðô„ @°ìd7õ_@•oã„ @Ž™Šr÷_@WÉ,úâ„ @JxÀp÷_@¯Æ‹2Ñ„ @Yön÷_@øÁêj¿„ @°ÅÐ3õ_@ n-y¿„ @2Øš5õ_@å‚Î@Ñ„ @6uúò_@OÙOÑ„ @Ò=?üò_@û±ã„ @øŒÁð_@?ûó$ã„ @ê‰ãÂð_@~*•ìô„ @JÊ½‡î_@jÔÖúô„ @s¼‡‰î_@xÂ… @îaNì_@Çd¹Ð… @qÕ+Pì_@ÿ®Z˜… @Ï¾õQì_@%÷û_*… @½¦î_@`„ºQ*… @ážåŽî_@ëº[<… @+ª¿Sì_@<=\'<… @Ï¾õQì_@%÷û_*… @àÔÏê_@=n*… @w³™ê_@¿YÞ5<… @”c\Zê_@R­ýM… @“Ž=ßç_@’sÀN… @ÅºsÝç_@tD<… @ÀM¢å_@Za_R<… @‡¤å_@Ô\0\ZN… @«}ñhã_@¦Î@(N… @é9»jã_@ÇNâï_… @$Pá¥å_@›D¢á_… @&«§å_@"³C©q… @&<Ñâç_@›3›q… @í›äç_@|¤bƒ… @¹AÁê_@™›cTƒ… @D*‹!ê_@çæ•… @ÍU#ê_@(0¦ã¦… @uÏ.èç_@"Dçñ¦… @³ñdæç_@WëE*•… @$·>«å_@õ‰†8•… @ ˆ­å_@Lò\'\0§… @[Ò®å_@XÉÇ¸… @ÿ¬sã_@r°	Ö¸… @/Íuuã_@3$«Ê… @]—?wã_@â•LeÜ… @¶%<á_@§ŒsÜ… @åâ=á_@.&.;î… @}¦¬?á_@F£Ï\0† @ÝivAá_@AqÊ† @Ú|ã_@|Þ0¼† @²1Ózã_@sôÿ… @èºùµå_@ýÜNæÿ… @÷ß/´å_@ú~­î… @gZVïç_@¤’lî… @B ñç_@á\rØÿ… @èºùµå_@ýÜNæÿ… @Ö—Ã·å_@ã8ð­† @Õ+êòç_@v-¯Ÿ† @‡´ôç_@ÌwPg#† @7~öç_@Àñ.5† @¬WW»å_@“ê2=5† @’:!½å_@T@ÔG† @xë¾å_@”uÌX† @“æúç_@iJ4¾X† @=ÚÛûç_@|ŒÕ…j† @åÏ¥ýç_@~ÌvM|† @’®Ì8ê_@øý4?|† @þ²–:ê_@S,ÖŽ† @j¹`<ê_@¨XwÎŸ† @§¯‡wì_@35ÀŸ† @ØÄQyì_@êÖ‡±† @Ü{ì_@‘8wOÃ† @ÕéB¶î_@,`4AÃ† @¦õiñð_@î!ñ2Ã† @yÿ,ó_@Ù}­$Ã† @M¸gõ_@ësiÃ† @#\rß¢÷_@&%Ã† @¶¡÷_@A9„@±† @­;Üù_@3s?2±† @BKqÚù_@ÎµžjŸ† @ú`JŸ÷_@NlãxŸ† @ã\r€÷_@HB±† @È¼µ›÷_@=Ì¡é{† @®më™÷_@ù\0"j† @¼§Ä^õ_@E0j† @ggú\\õ_@L6¤hX† @ !˜÷_@Ý#`ZX† @º×GÓù_@˜«LX† @ 1Õù_@Bq¼j† @‚ÜÖù_@Ú4]Û{† @cë¦Øù_@Wöý¢† @æÆÍü_@Žé¸”† @3˜ü_@v™Y\\Ÿ† @1¢bü_@MGú#±† @Õ-ü_@óšëÂ† @°TTþ_@ÅQUÝÂ† @G•‰Rþ_@Žµ´±† @\\†°\0_@ù½n±† @(þå‹\0_@C/Î?Ÿ† @xàÇ_@fá‡1Ÿ† @{MBÅ_@.`çi† @|¼wÃ_@ñÜF¢{† @~-­Á_@˜W¦Úi† @xçÓü_@—Ò_Ìi† @\0\0\0ZÈàó_@TþÂÿ… @KºÝð_@V÷Ÿÿ… @D0ðÛð_@çd×í… @n&Úð_@»ÔÃÜ… @#{Ló_@Ôú€Ü… @À ó_@šý!Éí… @ZÈàó_@TþÂÿ… @ŸCTõ_@~Ÿ‚ÿ… @üyÑUõ_@Ž J† @Z²›Wõ_@•{Á#† @¶ìeYõ_@ŽfbÙ4† @)0[õ_@vO¡F† @®z	 ó_@ƒìF¯F† @NÊâäð_@º#Š½F† @„§ãð_@·éõ4† @K?ó_@ô¥ç4† @‡uó_@†ù #† @òñª\Zó_@ïücX† @ZÈàó_@TþÂÿ… @\0\0\0vŒM¼_@\'»Äƒ4† @nƒº_@Š-$¼"† @MŒ©õ_@ÍæÝ­"† @\Z t÷_@Ød~u4† @vŒM¼_@\'»Äƒ4† @\0\0\0T?ah	_@ßcÿ… @õ—–f	_@Äþn:í… @‚ò¼¡_@Aµ\',í… @¨¦‡£_@Ê\nÈóþ… @T?ah	_@ßcÿ… @\0\0\0ßÜIð_@Q`üVí… @Qî_@Ú[Û… @Ï¢¥)_@ºkÛ… @j;p+_@tâµHí… @ßÜIð_@Q`üVí… @\0\0\0†~Úë!_@G¼iF·… @A^´°_@BÑ´T·… @h²_@Æ TÉ… @_PYw_@†_Ÿ*É… @U3<_@t¸é8É… @Nì_@«3GÉ… @{ñAÿ_@J­“·… @½h:_@ÃÉIq·… @þ;Žu_@l€ÿb·… @A^´°_@BÑ´T·… @\Z?é®_@¯ÿ¥… @˜Rê!_@KúÉ~¥… @†~Úë!_@G¼iF·… @Êœ\0\'$_@{A8·… @¹&b&_@Þ`Ò)·… @”s[`&_@¾2b¥… @›(_@8‡æS¥… @WÓL(_@n\Z†·… @¹&b&_@Þ`Ò)·… @‹\0òc&_@žrñÈ… @×Ë($_@Òñ½ÿÈ… @3—*$_@ ]ÇÚ… @`Üpï!_@:©ÕÚ… @L<ñ!_@ÛõHì… @³Ç¶_@š9”«ì… @Ž¢J´_@;nôãÚ… @`Üpï!_@:©ÕÚ… @t¬¥í!_@6|	É… @†~Úë!_@G¼iF·… @\0\0\0PŸ\0ü_@_ÒÐ\0Ê… @öåü_@ÿ˜qÈÛ… @Mš¿Æù_@1\n¶ÖÛ… @ZPõÄù_@4Ê… @PŸ\0ü_@_ÒÐ\0Ê… @\0\0\0ª§5î_@Ú$eVÊ… @»±ÿžî_@ÏHÜ… @\nJÙcì_@WH,Ü… @ÀLbì_@#§dÊ… @ª§5î_@Ú$eVÊ… @\0\0\0“Œ§Ö*_@ê™E¥… @Š/ÜÔ*_@ßdú}“… @C,-_@ÿq­o“… @þ&(K/_@N`a“… @–óL/_@Íÿ(¥… @–Í-_@èL7¥… @“Œ§Ö*_@ê™E¥… @\0\0\0(X{^ì_@\\¶dÕ¦… @Ø`±\\ì_@¨|Ã\r•… @n•×—î_@˜¬ÿ”… @„™¡™î_@¿Ö"Ç¦… @(X{^ì_@\\¶dÕ¦… @\0\0\0bØµEõ_@bÜwEq… @ô³ëCõ_@±ÚÖ}_… @=º÷_@	¢“o_… @sëÛ€÷_@,”47q… @bØµEõ_@bÜwEq… @\0\0\0Ý†SWì_@7Ãß¶_… @2xYì_@~q… @,[÷ê_@DNÂŒq… @œv-ê_@Óþ Å_… @Ý†SWì_@7Ãß¶_… @	\0\0\0ÝÍÛÿ,_@Sîkó„ @xþ,_@”cr£á„ @2$Eü,_@ÅÖÒÛÏ„ @h’j7/_@¨)†ÍÏ„ @þr1_@¿9¿Ï„ @þk[t1_@\\„Ø†á„ @ó59/_@ß¦%•á„ @žU;/_@"Å\\ó„ @ÝÍÛÿ,_@Sîkó„ @');
INSERT INTO `flood_maps` (`id`, `barangay_id`, `level`, `return_period`, `created_at`, `updated_at`, `shape`) VALUES
(3, 1, 3, 25, NULL, NULL, '\0\0\0\0\0\0\0b\0\0\0\0\0\0\0\0\0\0\0\0Ÿï c_@N6/ÆŸt @¹Ktå`_@ý2wÔŸt @pÿ>ç`_@J)œ±t @°X"c_@øÏ±t @Ÿï c_@N6/ÆŸt @\0\0\0\0\0\0\0\0\0óëÜ\\¾_@	RÂÕw @òjù—À_@Á$´Õw @àñ1–À_@ÿÅ€ìÃw @›[¾_@u’®úÃw @óëÜ\\¾_@	RÂÕw @\0\0\0\0\0\0\0\0\0rÐjÅ_@£ü#ÐÃw @(bNÑÂ_@”RÞÃw @÷çÓÂ_@šö¥Õw @ýb2Å_@ªØÇ—Õw @rÐjÅ_@£ü#ÐÃw @\0\0\0\0\0\0	\0\0\0óëÜ\\¾_@	RÂÕw @÷jÀ!¼_@ˆ€ÐÕw @Ì‡#¼_@‘+$˜çw @%0O%¼_@‹AÈ_ùw @¸•\'¼_@vUl\'x @è<3b¾_@n°>x @šÊk`¾_@¬šQùw @GZ¤^¾_@¥ö‰çw @óëÜ\\¾_@	RÂÕw @\0\0\0\0\0\0\0\0\0ðOyµ_@Kb;á.x @˜Õ‡wµ_@ø#—x @z¤²·_@äŸjx @bAÝ°·_@oÆCx @Œìùë¹_@•™5x @´“2ê¹_@”qõmùw @Hõ¯·_@!<"|ùw @ÞTùsµ_@2¡NŠùw @=”Àuµ_@£ãòQx @å£:³_@ºò`x @¼k<³_@‘BÃ\'x @â[N±_@¬ûî5x @œ1Æ®_@JO\ZDx @9Ú‹¬_@l=ERx @køOª_@Æo`x @\Z¿Qª_@åQ(/x @£êÛŒ¬_@Á¹é/x @1¹øÇ®_@¼¾/x @Ã…±_@\0Y“ý.x @XP2>³_@dgï.x @ðOyµ_@Kb;á.x @\0\0\0\0\0\0\0\0\0•­ä@í_@(ÂF?x @ç)?í_@\nj~-x @5¨S=í_@æOÇ¶x @7ë_@©WýÄx @“ÿë_@]! Œ-x @÷	Èë_@éBT?x @•­ä@í_@(ÂF?x @\0\0\0\0\0\0\0\0\0•­ä@í_@(ÂF?x @@3­Bí_@1x¯\rQx @ëºuDí_@-,RÕbx @v’ï_@¼€Çbx @h[ï_@#¾Žtx @Ê¤#ƒï_@kÃ`V†x @\\w@¾ñ_@b“)H†x @?Òw¼ñ_@ž‡€tx @–”÷ó_@¢|Ortx @;æËõó_@]ù¬ªbx @Z›è0ö_@quœbx @Àà/ö_@©§ÒÔPx @$‡<jø_@ÍušÆPx @ÌÁshø_@‡\røþ>x @qþªfø_@/£U7-x @=âdø_@Ê6³ox @ä¼Å)ö_@ü9ë}x @¶:©îó_@±×"Œx @šâqðó_@2cÅS-x @±QUµñ_@ùªüa-x @×î·ñ_@ùCŸ)?x @5O|ï_@Ï5Ö7?x @•­ä@í_@(ÂF?x @\0\0\0\0\0\0\0\0\0öç¥_@ÆÃè¹«x @lâØ¬£_@å—È«x @ÄÏŸ®£_@¾A·½x @¿f°£_@‡é[WÏx @4„ë¥_@jö1IÏx @#½é¥_@^½x @öç¥_@ÆÃè¹«x @\0\0\0\0\0\0\0\0\0A‚·£_@tîuy @7e|¡_@¨?„y @»þ+~¡_@˜ì¼K(y @:íò¡_@…—a:y @½„»£_@ø¬7:y @‰I¹£_@ˆ“=(y @A‚·£_@tîuy @\0\0\0\0\0\0\0\0\0:$õ÷¥_@Ææ±¾Ky @õ×¼£_@VFÜÌKy @*ž¾£_@¨Ý€”]y @*0¼ù¥_@šnV†]y @:$õ÷¥_@Ææ±¾Ky @\0\0\0\0\0\0\0\0\0jeÜ¬¬_@œy#oy @¡¯¾qª_@¶Æ¤1oy @Ù…sª_@m+Iù€y @Š›£®¬_@Ólë€y @jeÜ¬¬_@œy#oy @\0\0\0\0\0\0\0\0\0¸˜¬®µ_@zòvFDz @RŽs³_@·ñ¤TDz @.ÆUu³_@·ÿHVz @ t°µ_@øð\ZVz @¸˜¬®µ_@zòvFDz @\0\0\0\0\0\0\0\0\0¸÷x_@¨¼î°ƒ| @obÙTv_@Sån¿ƒ| @$\'«Vv_@ãP‡•| @‹‰É‘x_@_†x•| @¸÷x_@¨¼î°ƒ| @\0\0\0\0\0\0\0\0\0®ôóh_@NÿÝ•| @y=Ö¸f_@ï¿|ì•| @øª§ºf_@S˜´§| @T(Æõh_@—¥§| @®ôóh_@NÿÝ•| @\0\0\0\0\0\0\0\0\0üt¿I _@µ4U1É} @ßUòG _@Å¸i·} @™cÒž_@®·x·} @õuŸž_@Mù¯?É} @üt¿I _@µ4U1É} @\0\0\0\0\0\0\0\0\0üt¿I _@µ4U1É} @–ŒK _@¡dòøÚ} @âŸ¬†¢_@º*—êÚ} @rß„¢_@}\nú"É} @üt¿I _@µ4U1É} @\0\0\0\0\0\0\0\0\0âŸ¬†¢_@º*—êÚ} @ÃÏyˆ¢_@çH4²ì} @Fä™Ã¤_@°™Ø£ì} @¤§ÌÁ¤_@3‹;ÜÚ} @âŸ¬†¢_@º*—êÚ} @\0\0\0\0\0\0\0\0\0Ê¡#d_@™„b5~ @¤vïd_@öN´)G~ @Uf_@ocG~ @}!DSf_@b´ÄS5~ @Ê¡#d_@™„b5~ @\0\0\0\0\0\0\0\0\0³	ÿ¯_@_ñÃï¯~ @õrîÃ­_@]I"þ¯~ @¹ú»Å­_@J\0¿ÅÁ~ @7žÜ\0°_@š˜`·Á~ @³	ÿ¯_@_ñÃï¯~ @\0\0\0\0\0\0\0\0\0;>_@ÄÔYÖ~ @ûR9>_@}\05’Ä~ @:1þ;_@(( Ä~ @…üÿ;_@HûhÖ~ @;>_@ÄÔYÖ~ @\0\0\0\0\0\0\0\0\0B\0Ÿ._@út…è~ @ÕÞc,_@Lž»“è~ @©e,_@„Ú[[ú~ @½Ê ._@—KMú~ @\nùëÛ0_@WÌ>ú~ @„5!Ú0_@\0:,wè~ @B\0Ÿ._@út…è~ @\0\0\0\0\0\0\0\0\0†ß0_@àŠÎ @–Ù¢\Z3_@sÄ¿ @SØ3_@%$ø @¾¶Ý0_@ùql @†ß0_@àŠÎ @\0\0\0\0\0\0\0\0\0ÝŒ\Z7_@†’Û @JùS5_@ª8Ûé @+ÄU5_@\\2{± @¥zå7_@Ÿí1£ @,ÈÌ9_@8Cè” @£Í;Ê9_@»hHÍ @ÝŒ\Z7_@†’Û @\0\0\0\0\0\0\0\0\04fZÈ_@¿èšk  @³8ÉÅ_@žRÐy  @AËÅ_@GTsA2 @3Ø"È_@ãÚ=32 @4fZÈ_@¿èšk  @\0\0\0\0\0\0\0\0\0¢ÆzÌ_@ä.O  @i|?Ê_@6e]  @*–DAÊ_@Õû%2 @"Rf|Ì_@·Ñ2 @¢ÆzÌ_@ä.O  @\0\0\0\0\0\0\0\0\0êÑ*ð³_@íUmë  @·Ôbî³_@\ZÖÉ# @eA³±_@Œû1 @Ö	µ±_@á,Ÿù  @ÅEçy¯_@,žÐ! @s+¯{¯_@î:tÏ2 @EÿÐ¶±_@"ºBÁ2 @±ó˜¸±_@VEæˆD @GÒºó³_@`O´zD @Ñòñ³_@®Ó³2 @êÑ*ð³_@íUmë  @\0\0\0\0\0\0\0\0\0®:X£º_@Z¾xˆ2 @Ïn6h¸_@ÉÕ«–2 @‰þi¸_@y2O^D @b ¥º_@‡PD @Å8Bà¼_@ì~èAD @’zÞ¼_@BAEz2 @®:X£º_@Z¾xˆ2 @\0\0\0\0\0\0\0\0\0õ~í½B_@Æhœ²R @„´¸¿B_@ü;zd @+ÚúD_@lðkd @ÁèùD_@@“P¤R @õ~í½B_@Æhœ²R @\0\0\0\0\0\0\0\0\0†r#Ä_@‹šÝrO @­ŽQèÁ_@½@O @V›êÁ_@Ò)ÜHa @ˆŸ@%Ä_@ê¡y:a @†r#Ä_@‹šÝrO @\0\0\0\0\0\0S\0\0\0õ~í½B_@Æhœ²R @fK"¼B_@õÒüê@ @p¨C÷D_@\r±Ü@ @!jxõD_@½„/ @i¸™0G_@ÉhÅ/ @WoÎ.G_@\nî%? @F(-G_@8q†w @5ã7+G_@Xòæ¯ù~ @:	YfI_@•Ÿš¡ù~ @g¹dI_@C.ûÙç~ @”kÂbI_@áº[Ö~ @vãK_@´!Ö~ @œK_@à»o<Ä~ @íÆLšK_@TÐt²~ @íµmÕM_@stƒf²~ @™T¢ÓM_@\Zäž ~ @Ø4ÃP_@ä– ~ @ÂÈ÷P_@¾—÷ÈŽ~ @®^,P_@çHX}~ @j#MFR_@çÌ\nó|~ @”®DR_@ ‹k+k~ @d¢T_@œ¹k~ @ŠÃºV_@ôÏk~ @2Œ÷¸V_@ß]0GY~ @l1ôX_@4Ðá8Y~ @¥Ô8/[_@æÜ’*Y~ @Í0m-[_@ÖóbG~ @BÅh]_@µŒ¤TG~ @¹W®£__@ÃÝTFG~ @aœâ¡__@ôµ~5~ @ Ýa_@.ïep5~ @Ê¡#d_@™„b5~ @ðÎWd_@#¸vš#~ @ýY7Ûa_@Ç¨#~ @	ã __@d·#~ @jöd]_@˜fÅ#~ @ ïÕ)[_@ÂµÓ#~ @)rµîX_@‡†â#~ @?ðX_@)¡£©5~ @ˆy`µV_@‘ò·5~ @Ïë?zT_@X@Æ5~ @\\?R_@|»Ô5~ @^ÊþP_@þøÚâ5~ @¥6ÞÈM_@ÝÐ\'ñ5~ @÷‹©ÊM_@ˆ7Ç¸G~ @~éˆK_@c¹ÇG~ @4T‘K_@¦-³ŽY~ @¢€“K_@ÙŸRVk~ @§ÂþWI_@NÛždk~ @¬ÞG_@!±êrk~ @¯@½áD_@P!6k~ @ÿhˆãD_@MÀÕH}~ @B˜g¨B_@vÚ W}~ @Ðµ2ªB_@‡À~ @`Õý«B_@{1`æ ~ @!éÜp@_@7«ô ~ @âú»5>_@Psõ¡~ @ï‡7>_@õ:•Ê²~ @îý§r@_@A½J¼²~ @¼st@_@-sêƒÄ~ @‹->v@_@\'ŠKÖ~ @;>_@ÄÔYÖ~ @\'è<>_@v…t!è~ @ÒÇ<_@XÌ¾/è~ @ŽÞ¥Æ9_@”­>è~ @ÕpÈ9_@0Œ¨ú~ @’<_@X›^÷ù~ @ 7³>>_@ÚDéù~ @-I~@>_@.´° @f]<_@Ihþ¾ @±(<_@*3ž† @ýó<_@ùû=N/ @F(¾\n<_@ºÂÝA @=ÃœÏ9_@ÿñ\'$A @ÇÃgÑ9_@AÆÇëR @OÆ2Ó9_@|˜g³d @×ÊýÔ9_@¨h{v @%V<_@\n½lv @ÛDT<_@ÿI¥d @5‰<_@`‡}ÝR @\\¥ªG>_@Öâ2ÏR @)Ì‚@_@£ØçÀR @õ~í½B_@Æhœ²R @\0\0\0\0\0\0\0\0\0ö;—„@_@\n|‡ˆd @hÁuI>_@Ù•Ò–d @tß@K>_@ÎFr^v @Äfb†@_@b\'Pv @ö;—„@_@\n|‡ˆd @\0\0\0\0\0\0\0\0\0_ÑÈÖ9_@Ä6§Bˆ @N7§›7_@Ì>ñPˆ @3r7_@s\Z‘š @çÙ“Ø9_@ÏG\nš @_ÑÈÖ9_@Ä6§Bˆ @\0\0\0\0\0\0\0\0\0‚«u½_@=<-s @kŠ:»_@¶£;s @‚UX<»_@Ìå9… @ñA&>»_@Ð%ÖÊ– @a0ô?»_@Æcr’¨ @¤m{½_@Î„¨ @á¨6¶¿_@ŸÒ®u¨ @í h´¿_@´®– @üšš²¿_@x“væ„ @\r—Ì°¿_@ÍpÚs @‚«u½_@=<-s @\0\0\0\0\0\0\0\0\0¸ÓˆOÊ_@ÆbÀ @²¯fÈ_@È!UpÀ @”3/È_@Tø7Ò @\\dQQÊ_@––Á)Ò @¸ÓˆOÊ_@ÆbÀ @\0\0\0\0\0\0\0\0\0|ÿôÝ9_@ˆZ&aÏ @d2Ó¢7_@ü poÏ @)6ž¤7_@ct7á @Àß9_@TÆ(á @|ÿôÝ9_@ˆZ&aÏ @\0\0\0\0\0\0\0\0\0Ä\rEd_@ÍÝ”àñ @¿ACd_@åDöà @E b_@È&H\'à @pì	b_@SÏæîñ @Ä\rEd_@ÍÝ”àñ @\0\0\0\0\0\0\0\0\0Ä\rEd_@ÍÝ”àñ @öÊÙFd_@£t3¨€ @O–ûf_@Ë\rá™€ @‚/€f_@™†BÒñ @Ä\rEd_@ÍÝ”àñ @\0\0\0\0\0\0\0\0\0ºðzoÁ_@\n	k=€ @skX4¿_@*: =€ @8Ê 6¿_@cICæN€ @@\\CqÁ_@¿ØN€ @ºðzoÁ_@\n	k=€ @\0\0\0\0\0\0	\0\0\0ºðzoÁ_@\n	k=€ @tªÃ_@:r5=€ @Nìe¬Ã_@kbØÉN€ @^zˆçÅ_@gV¢»N€ @Rõ¿åÅ_@»uÿó<€ @Er÷ãÅ_@\0“\\,+€ @»ýÔ¨Ã_@û’:+€ @2‡²mÁ_@GÈH+€ @ºðzoÁ_@\n	k=€ @\0\0\0\0\0\0\0\0\0oy£Ñ_@@–k€ @ç.AÞÓ_@±ÐÙ‡k€ @úrÜÓ_@IV>ÀY€ @®D”Ö_@òÄ×±Y€ @\\éµRØ_@ìÍp£Y€ @Œ×Ú_@7q	•Y€ @:C¦Ú_@q¼¤\\k€ @£ðÇÊÜ_@Rê<Nk€ @®,ùÈÜ_@Ò®¡†Y€ @»j*ÇÜ_@Oq¿G€ @ÖÖŒÚ_@ù#nÍG€ @í@çPØ_@ôpÕÛG€ @©ÅÖ_@@X<êG€ @Z÷Ö_@qé "6€ @,‚ÕØÓ_@U[16€ @¤ÚÓ_@ÝÙ¢øG€ @s‚ŸÑ_@ËõH€ @DõP¡Ñ_@ð¤ÎY€ @oy£Ñ_@@–k€ @\0\0\0\0\0\0\0\0\0u§8²\Z_@cU·-p€ @V´\Z_@òàWõ€ @þ}%ï_@k(ç€ @Y[í_@p¬qp€ @u§8²\Z_@cU·-p€ @\0\0\0\0\0\0\0\0\0oy£Ñ_@@–k€ @ôÁýgÏ_@Áá¥¤k€ @_;ÌiÏ_@‹yAl}€ @ÿí¤Ñ_@"”Û]}€ @oy£Ñ_@@–k€ @\0\0\0\0\0\0\0\0\0Í“„TØ_@á(kk€ @[âbÖ_@¡/syk€ @‚1Ö_@?˜A}€ @B@SVØ_@Æ§2}€ @Í“„TØ_@á(kk€ @\0\0\0\0\0\0\0\0\0£ðÇÊÜ_@Rê<Nk€ @¶–ÌÜ_@Á#Ø}€ @Æn¸ß_@6Üo}€ @\nœéß_@‚²Ô?k€ @£ðÇÊÜ_@Rê<Nk€ @\0\0\0\0\0\0	\0\0\0þ}%ï_@k(ç€ @¡üïð_@R¢²®“€ @\nn,_@ƒtl “€ @vÝ4g!_@á%’“€ @ãJW¢#_@ÐçÞƒ“€ @÷¥Œ #_@«œ>¼€ @NEje!_@G†…Ê€ @¦âG*_@1\nÌØ€ @þ}%ï_@k(ç€ @\0\0\0\0\0\0\0\0\0®JÑ¿_@¥Ó\'³€ @Šë{Ï¿_@¥7`¡€ @d×\nÂ_@}hÔQ¡€ @‚¦ÏÂ_@‹v8Š€ @—ƒñCÄ_@ŽãÔ{€ @¨^Æ_@àêpm€ @DE}Æ_@KÕ¥}€ @âf¸È_@£Çp—}€ @Ø¬ˆóÊ_@L‰}€ @uª.Í_@Dù¦z}€ @uÜ,Í_@ÁQ³k€ @Ï\r+Í_@0¨oëY€ @-5?)Í_@›üÓ#H€ @0“îÊ_@|ç82H€ @-ïû²È_@®l@H€ @)IÚwÆ_@1ŒOH€ @„‹¨yÆ_@ìfZ€ @ºÖ†>Ä_@v0%Z€ @!¡¸<Ä_@Fe]H€ @Œmê:Ä_@wYÉ•6€ @DÐÈÿÁ_@æ,¤6€ @÷–Â_@*šÈkH€ @ìeÂ_@Q”d3Z€ @ÅJ3Â_@uŒ\0ûk€ @2…Ê¿_@Všc	l€ @M¥ßË¿_@  ÿÐ}€ @iÇ­Í¿_@Ö£›˜€ @Oæ‹’½_@qkþ¦€ @­ýY”½_@Ï|šn¡€ @(–½_@Œ66³€ @®JÑ¿_@¥Ó\'³€ @\0\0\0\0\0\0	\0\0\0I‚Š¾å_@‘†3²€ @9ƒ»¼å_@B’jk € @,†ìºå_@ã›Ï£Ž€ @%‹¹å_@u£4Ü|€ @	Ùû}ã_@žê|€ @NÇÊã_@:$9²Ž€ @—·™ã_@V*Ôy € @å©hƒã_@a.oA²€ @I‚Š¾å_@‘†3²€ @\0\0\0\0\0\0\0\0\0ÈU)	ˆ_@Ž€gÇ¢€ @¯5Î…_@ŽiÀÕ¢€ @\rÔÏ…_@ý\0^´€ @ê<ö\nˆ_@U´€ @ÅgFŠ_@ù©«€´€ @«]åGŠ_@ IHÆ€ @F“ƒŒ_@JLï9Æ€ @Ÿ:Œ_@ìåQr´€ @ømŒ_@}}´ª¢€ @âsKDŠ_@Þ1¹¢€ @ÈU)	ˆ_@Ž€gÇ¢€ @\0\0\0\0\0\0\0\0\0I‚Š¾å_@‘†3²€ @\\ƒYÀå_@Íx úÃ€ @~f{ûç_@Ž[6ìÃ€ @©X¬ùç_@y›$²€ @I‚Š¾å_@‘†3²€ @\0\0\0\0\0\0\0\0\0wøKù_@Ãs:Æ€ @àÆ)¾Ž_@à•+Æ€ @LØö¿Ž_@yg2ó×€ @¨û_@±¸×ä×€ @wøKù_@Ãs:Æ€ @\0\0\0\0\0\0\0\0\0­v/…•_@?á[› @|Æü†•_@kL~#­ @ö—Â—_@j°!­ @d;RÀ—_@<³„M› @­v/…•_@?á[› @\0\0\0\0\0\0\0\0\0ö—Â—_@j°!­ @‹öìÃ—_@†«¾Ü¾ @ÆÒÿ™_@ šaÎ¾ @ngBý™_@²®Ä­ @ö—Â—_@j°!­ @\0\0\0\0\0\0\0\0\0Ÿ.ÙŽ_@«/ÌÝÐ @¬žŒ_@#T\'ìÐ @ÎÎØŸŒ_@s™Ä³â @™ÎûÚŽ_@Nei¥â @Ÿ.ÙŽ_@«/ÌÝÐ @\0\0\0\0\0\0\0\0\0fÄÇ]_@3¢‚¨õ @ºã Œ[_@(Õ¶õ @\r©}QY_@.H\'Åõ @CªISY_@ZñÅŒ‚ @³ñlŽ[_@˜Ás~‚ @"7É]_@,!p‚ @fÄÇ]_@3¢‚¨õ @\0\0\0\0\0\0\0\0\0BWòW_@r¶b‚ @ÿÎÞT_@æq‚ @»êšàT_@[ª¦8+‚ @³O¾W_@Ì&U*+‚ @BWòW_@r¶b‚ @\0\0\0\0\0\0\0\0\0„\Z:FE_@é,O‚ @§]G_@=¥ÅO‚ @ñ’G_@T‡&V=‚ @1„nDE_@cRud=‚ @„\Z:FE_@é,O‚ @\0\0\0\0\0\0\0\0\0}Æ´tÄ_@HëB‰o‚ @ƒTærÄ_@Â>§Á]‚ @š+Ã7Â_@;jÐ]‚ @Ï‘9Â_@x&¨—o‚ @}Æ´tÄ_@HëB‰o‚ @\0\0\0\0\0\0!\0\0\0¢ûÒ¯_@À]»š‚ @#[3Ñ¯_@\r&>ˆ‚ @“W²_@#½ã/ˆ‚ @¼A\n²_@á’@hv‚ @öñÆ²_@šf d‚ @-¤þ²_@78úØR‚ @aX6²_@ÄWA‚ @n²_@@Õ³I/‚ @	JÈ¯_@§ðçW/‚ @÷ÚÆ¯_@”¬D‚ @ä¡¹Ä¯_@of¡È‚ @éÀ•‰­_@ýÔÖ‚ @”–Í‡­_@f¥1ú @`À©L«_@ÕÆdú @/è…©_@‹‚—+ú @ûøM©_@>ù:ó‚ @*Ø¦_@¹^m‚ @ )¤_@y^Ÿ‚ @`"Îž¤_@\ZòB×‚ @´*ªc¢_@›tå‚ @,re¢_@¬<­/‚ @ 	:g¢_@«Û»tA‚ @Õ\Z^¢¤_@,ŠfA‚ @\n\Z&¤¤_@ -.S‚ @6Jß¦_@ãbûS‚ @ûCá¦_@ÄÞžçd‚ @Àj6©_@Ï+lÙd‚ @u‡þ©_@–¡v‚ @&¦Æ©_@Yþ²hˆ‚ @xäêZ«_@¨ÆZˆ‚ @Ë –­_@:)LLˆ‚ @[×—­_@mpïš‚ @¢ûÒ¯_@À]»š‚ @\0\0\0\0\0\0\0\0\0„\Z:FE_@é,O‚ @\0ŒC_@Ùôb:O‚ @âC_@ì/a‚ @¥­C_@äh¡Ér‚ @°4yC_@×Ÿ@‘„‚ @?ÆDC_@¹ÔßX–‚ @Ó‡hME_@T!‘J–‚ @€éœKE_@üñ‚„‚ @+MÑIE_@ºÔR»r‚ @Ø²HE_@^«³ó`‚ @„\Z:FE_@é,O‚ @\0\0\0\0\0\0\0\0\0ÊÚ0†¶_@eÊ¿¢«‚ @†kh„¶_@EÃÛ™‚ @a*DI´_@,Ré™‚ @ßŒK´_@Îõ°«‚ @ÊÚ0†¶_@eÊ¿¢«‚ @\0\0\0\0\0\0\0\0\0Æâ¤b<_@ îhK¨‚ @Rpd<_@·Mº‚ @KÃ;f<_@<«§ÚË‚ @,±_¡>_@;úYÌË‚ @&3”Ÿ>_@S¬ºº‚ @·È>_@X\\=¨‚ @Æâ¤b<_@ îhK¨‚ @\0\0\0\0\0\0	\0\0\0,"ß]_@ýËÜ‚ @Œ5þ£[_@SâÙÜ‚ @]Ê¥[_@¼Ñ€¡î‚ @Ž‡–§[_@bNi\0ƒ @·ºâ]_@	ÞËZ\0ƒ @áuÞ`_@îxL\0ƒ @V2`_@ªÙ„î‚ @ðHîà]_@q-“î‚ @,"ß]_@ýËÜ‚ @\0\0\0\0\0\0\0\0\0=Ü±ã@_@ÈˆÜƒ @0ùÕC_@\r:Îƒ @#úYE_@aìê¿ƒ @Íg.XE_@ŽÕKø\0ƒ @ Y\nC_@£æšƒ @¼>C_@"¾û>ï‚ @~ sC_@ž“\\wÝ‚ @Ù)OÞ@_@º«…Ý‚ @¤¸\Zà@_@ÛYJMï‚ @pIæá@_@ù‘éƒ @=Ü±ã@_@ÈˆÜƒ @\0\0\0\0\0\0\0\0\0Ò1/å´_@Òºß*þ‚ @í‡ª²_@q«B9þ‚ @à¥Ù«²_@ÃÞ\0ƒ @‰\\ýæ´_@ÀÂ{òƒ @Ò1/å´_@Òºß*þ‚ @\0\0\0\0\0\0\0\0\0šŒ>»Þ_@ñJ)\'ƒ @•ñ½Þ_@(*Ëß8ƒ @Ý,øà_@LÍÑ8ƒ @cöà_@Ÿýë	\'ƒ @šŒ>»Þ_@ñJ)\'ƒ @\0\0\0\0\0\0\0\0\0k³i±x_@µð×”Xƒ @hÙœ¯x_@¿I:ÍFƒ @7Æxtv_@¸½’ÛFƒ @±T9t_@ðËêéFƒ @€q!;t_@4’ˆ±Xƒ @v“Evv_@Ut0£Xƒ @k³i±x_@µð×”Xƒ @\0\0\0\0\0\0\0\0\0k³i±x_@µð×”Xƒ @p6³x_@™•u\\jƒ @(ºZîz_@œNjƒ @^Ñìz_@Q†Xƒ @k³i±x_@µð×”Xƒ @\0\0\0\0\0\0\0\0\0\\øø¾š_@¹Vm•†ƒ @6úœ_@;‘à††ƒ @LÍHøœ_@ÀK¿tƒ @[œ%½š_@^·×Ítƒ @\\øø¾š_@¹Vm•†ƒ @\0\0\0\0\0\0\0\0\0º´ÐE®_@±$!"°ƒ @Tâô€°_@b¾°ƒ @\r¿&°_@ßM"Lžƒ @8žD®_@B\0…Zžƒ @º´ÐE®_@±$!"°ƒ @\0\0\0\0\0\0\0\0\0º´ÐE®_@±$!"°ƒ @…¬\n¬_@ƒ0°ƒ @Ýz¬_@³øÁƒ @@ÍžG®_@G½éÁƒ @º´ÐE®_@±$!"°ƒ @\0\0\0\0\0\0\0\0\0xRVÑ©_@P¹Âƒ @2–§_@ÉYãÂƒ @J\0˜§_@,©ÜÓƒ @vS$Ó©_@ùÎÓƒ @xRVÑ©_@P¹Âƒ @\0\0\0\0\0\0\0\0\0ë.‘„°_@æ…ö¢Óƒ @ÈçlI®_@_gY±Óƒ @S;K®_@…õxåƒ @<X_†°_@q”’jåƒ @ë.‘„°_@æ…ö¢Óƒ @\0\0\0\0\0\0\0\0\0.·Ùú´_@£‘/†Óƒ @tµ¿²_@§>“”Óƒ @#ªƒÁ²_@€=/\\åƒ @ú§ü´_@È€ËMåƒ @éGÌ7·_@L^g?åƒ @Jøý5·_@Ú~ËwÓƒ @.·Ùú´_@£‘/†Óƒ @\0\0\0\0\0\0=\0\0\0ÀÐn˜_@À÷~b„ @Ú%¡˜_@Ki¶P„ @}ÚÅAš_@‘õ	¨P„ @Ò$ø?š_@ˆVmà>„ @®Ê{œ_@èª\rÒ>„ @‡nA¶ž_@™­Ã>„ @]fñ _@Q"Mµ>„ @e6˜ï _@B°°í,„ @q^Êí _@#<&„ @¹äî(£_@‹~³„ @!\'£_@\nP	„ @L!S%£_@y¯zˆ÷ƒ @˜B…#£_@âDÞÀåƒ @ ©^¥_@“P}²åƒ @\Z·Û\\¥_@‘óàêÓƒ @¦Ï\r[¥_@}”D#Âƒ @9‹é£_@li¥1Âƒ @ËDÅä _@—Ø@Âƒ @Yü ©ž_@üáeNÂƒ @7=Ó§ž_@ÊQÉ†°ƒ @äx÷â _@Xix°ƒ @ÿ®)á _@€ÕÌ°žƒ @ç[ß _@ÛP0éŒƒ @úÄ7¤ž_@2+÷Œƒ @Ö iœ_@ÇŸïƒ @.Oájœ_@ËCŒÍžƒ @D½/š_@JbëÛžƒ @Ø¿Š1š_@êˆ£°ƒ @‰ÿ®lœ_@¼å(•°ƒ @ç±|nœ_@…Å\\Âƒ @EfJpœ_@n#b$Ôƒ @	\r&5š_@øpÁ2Ôƒ @¦¶ó6š_@f^úåƒ @£NÏû—_@Ø½æƒ @|íœý—_@ÙÌYÐ÷ƒ @²vxÂ•_@3n¸Þ÷ƒ @ŸäªÀ•_@†¥æƒ @–x†…“_@lÑy%æƒ @æýS‡“_@Ç©í÷ƒ @6…!‰“_@€³´	„ @Ç\nFÄ•_@Ü4U¦	„ @à Æ•_@sùñm„ @ú8áÇ•_@ù»Ž5-„ @Ü™¼Œ“_@•&íC-„ @¾ø—Q‘_@h+KR-„ @/zÊO‘_@ˆI®Š„ @£ýüM‘_@—eÃ	„ @tØ_@KånÑ	„ @Ôã¥_@èØ™„ @xKÙŒ_@i§„ @}°NÛŒ_@¹o-„ @Y	* Š_@6×b}-„ @™c÷¡Š_@	æÿD?„ @„ÝŒ_@á£6?„ @kÉ@_@ñ¹E(?„ @PyeS‘_@9è?„ @ãû2U‘_@öè„áP„ @Œ¶W“_@ÊÄ&ÓP„ @3o|Ë•_@Ô:ÈÄP„ @U\rJÍ•_@+÷dŒb„ @ÀÐn˜_@À÷~b„ @\0\0\0\nÕåsœ_@ÒX›³÷ƒ @¦rœ_@-¿þëåƒ @£€<­ž_@0üžÝåƒ @ÌE\n¯ž_@%†;¥÷ƒ @\nÕåsœ_@ÒX›³÷ƒ @\0\0\0\0\0\0\0\0\0nfü_@ŽÝO×„ @zŒÍdü_@áëµ„ @l³ñŸþ_@0ñD„ @Ç!žþ_@3\r«9õƒ @ð¬ýbü_@"øHõƒ @kÏ-aü_@_‚€ãƒ @ìó]_ü_@\nè¸Ñƒ @Dñ9$ú_@)pXÇÑƒ @Ž$j"ú_@wf¾ÿ¿ƒ @§,Fç÷_@™V.Àƒ @˜ìé÷_@pÈÕÑƒ @Ž®åê÷_@l‡bãƒ @‡rµì÷_@°œüdõƒ @†8…î÷_@ð¯–,„ @‰\0Uð÷_@Á0ô„ @K8y+ú_@9‚Àå„ @I-ú_@•Z­*„ @êç/ú_@â~ôt<„ @ÁÂè0ú_@zŽ<N„ @›Ÿ¸2ú_@Is(`„ @{~ˆ4ú_@WjÂËq„ @ô¬oü_@çvQ½q„ @¥gÑªþ_@­à®q„ @:o©þ_@!FFç_„ @Õx1§þ_@vl¬N„ @s„a¥þ_@¿X<„ @’‘£þ_@õ²x*„ @™Qmhü_@)Íéž*„ @nfü_@ŽÝO×„ @\0\0\0\0\0\0\0\0\0j¢¼G_@ôùCÙ™„ @‡öm¾G_@¬Ñâ «„ @13“ùI_@?~‘’«„ @O?Ç÷I_@%¶òÊ™„ @j¢¼G_@ôùCÙ™„ @\0\0\0\0\0\0\0\0\0’¾ç”_@Ì²ö[­„ @ýAÂY\0_@ÝL;j­„ @]’Œ[\0_@fÜ1¿„ @¸²–_@Æk—#¿„ @’¾ç”_@Ì²ö[­„ @\0\0\0\0\0\0\0\0\0F›ê©_@yñº„ @(üÌè©_@+Tp)©„ @”àñ#¬_@ë\r©„ @±º#"¬_@³jqS—„ @Ñ–U ¬_@kQÕ‹…„ @ðË0å©_@H8š…„ @×¶bã©_@>Ù›Òs„ @ºö=¨§_@ þàs„ @kðo¦§_@ßÙab„ @;Kk¥_@Ç¡Ã\'b„ @³ƒ&0£_@æ%6b„ @xpô1£_@`Áýs„ @SªÏö _@l"t„ @TÊõ _@=\0†Db„ @òÝ¹ž_@Ë–æRb„ @*âª»ž_@Lƒ\Zt„ @†€œ_@¿Rã(t„ @xàS‚œ_@èÛð…„ @ðª!„œ_@\0c¸—„ @£ŽF¿ž_@/¼©—„ @ägÁž_@‰xXq©„ @]V9ü _@?£÷b©„ @Wpkú _@”=[›—„ @P5£_@.úŒ—„ @ÔB^7£_@)h–T©„ @¢7,9£_@¼2»„ @Û.Qt¥_@ƒÑ\r»„ @$v¯§_@(õnÿº„ @F›ê©_@yñº„ @\0\0\0\0\0\0\0\0\0Ý†SWì_@7Ãß¶_… @œv-ê_@Óþ Å_… @,[÷ê_@DNÂŒq… @2xYì_@~q… @Ý†SWì_@7Ãß¶_… @\0\0\0\0\0\0\0\0\0¿ŸîÍÉ_@UeWÿˆ… @~üÌÉ_@¨OÃ7w… @âõÇ_@ÕÅYFw… @^Ê’Ç_@lëí\r‰… @¿ŸîÍÉ_@UeWÿˆ… @\0\0\0\0\0\0\0\0\0n•×—î_@˜¬ÿ”… @Ø`±\\ì_@¨|Ã\r•… @(X{^ì_@\\¶dÕ¦… @„™¡™î_@¿Ö"Ç¦… @n•×—î_@˜¬ÿ”… @\0\0\0\0\0\0\0\0\0C,-_@ÿq­o“… @Š/ÜÔ*_@ßdú}“… @“Œ§Ö*_@ê™E¥… @–Í-_@èL7¥… @–óL/_@Íÿ(¥… @þ&(K/_@N`a“… @C,-_@ÿq­o“… @\0\0\0\0\0\0\0\0\0A^´°_@BÑ´T·… @†~Úë!_@G¼iF·… @˜Rê!_@KúÉ~¥… @\Z?é®_@¯ÿ¥… @A^´°_@BÑ´T·… @\0\0\0\0\0\0\0\0\0¹&b&_@Þ`Ò)·… @WÓL(_@n\Z†·… @›(_@8‡æS¥… @”s[`&_@¾2b¥… @¹&b&_@Þ`Ò)·… @\0\0\0\0\0\0	\0\0\0¿ŸîÍÉ_@UeWÿˆ… @\nEÃÏÉ_@ôxëÆš… @_ì—ÑÉ_@~ŠŽ¬… @B‹¼Ì_@Æ~è¬… @(áGÎ_@=\rQq¬… @:gFÎ_@‡½©š… @%×ç\nÌ_@%}T¸š… @%	Ì_@pyÀðˆ… @¿ŸîÍÉ_@UeWÿˆ… @\0\0\0\0\0\0	\0\0\0A^´°_@BÑ´T·… @þ;Žu_@l€ÿb·… @½h:_@ÃÉIq·… @{ñAÿ_@J­“·… @Nì_@«3GÉ… @U3<_@t¸é8É… @_PYw_@†_Ÿ*É… @h²_@Æ TÉ… @A^´°_@BÑ´T·… @\0\0\0\0\0\0\0\0\0–mqÙ_@u~éï½… @Ë˜oÙ_@dÞU(¬… @"‡s4×_@üLï6¬… @(}H6×_@úü‚þ½… @–mqÙ_@u~éï½… @\0\0\0\0\0\0	\0\0\0¹&b&_@Þ`Ò)·… @Êœ\0\'$_@{A8·… @†~Úë!_@G¼iF·… @t¬¥í!_@6|	É… @`Üpï!_@:©ÕÚ… @3—*$_@ ]ÇÚ… @×Ë($_@Òñ½ÿÈ… @‹\0òc&_@žrñÈ… @¹&b&_@Þ`Ò)·… @\0\0\0\0\0\0\0\0\0–mqÙ_@u~éï½… @o!BsÙ_@u}·Ï… @˜Ëf®Û_@4(ã¨Ï… @ú¹‘¬Û_@ šOá½… @–mqÙ_@u~éï½… @\0\0\0\0\0\0·\0\0\\øø¾š_@¹Vm•†ƒ @ž¸Õƒ˜_@v¶ù£†ƒ @Øv²H–_@n°…²†ƒ @\n3\r”_@¥DÁ†ƒ @2íkÒ‘_@sœÏ†ƒ @R¥H—_@È;\'Þ†ƒ @j[%\\_@¶ž±ì†ƒ @z!‹_@á›;û†ƒ @ÁÞåˆ_@I3Å	‡ƒ @‚q»ª†_@îdN‡ƒ @y˜o„_@Ð0×&‡ƒ @gËt4‚_@ï–_5‡ƒ @üœG6‚_@Áâõü˜ƒ @:$û_@øò}™ƒ @8Õ\0À}_@m\Z™ƒ @InÝ„{_@âŒ(™ƒ @UºIy_@Á7™ƒ @Wš–w_@5:šE™ƒ @T-sÓt_@M T™ƒ @G¾O˜r_@@û¥b™ƒ @2M,]p_@!C+q™ƒ @¦ºþ^p_@¬Â8«ƒ @Æ:Û#n_@ ýFG«ƒ @Ý¸·èk_@Ð‰ËU«ƒ @î4”­i_@=°Od«ƒ @÷®prg_@æpÓr«ƒ @—tžpg_@\0i<«™ƒ @]ùz5e_@´¿¹™ƒ @|Wúb_@\\™BÈ™ƒ @Õü3¿`_@äÅÖ™ƒ @…{„^_@ª2Gå™ƒ @Av>‚^_@]é¯ˆƒ @°ÿ\ZG\\_@Š1,ˆƒ @‡÷Z_@õË²:ˆƒ @xÔÐW_@¤3Iˆƒ @Ñ°•U_@‚´Wˆƒ @%ZS_@¤$4fˆƒ @riQ_@Ì³tˆƒ @ÏÙ—Q_@µ!­vƒ @ÚctâN_@€S›»vƒ @ÜëP§L_@‡\ZÊvƒ @Úq-lJ_@Ì…˜Øvƒ @ã[jJ_@ª\0eƒ @Ht8/H_@·š~eƒ @ýôE_@§%ü-eƒ @«ñ¸C_@ÖJy<eƒ @´) ·C_@„=átSƒ @ Áü{A_@!í]ƒSƒ @S\ZÎ}A_@A\nöJeƒ @ô¢ªB?_@ëcrYeƒ @…VÙ@?_@ý6Ú‘Sƒ @??_@ýBÊAƒ @A¬ä=_@IÜ½ØAƒ @äéµ=_@V Sƒ @>{’Ê:_@n™Ñ®Sƒ @\no8_@²L½Sƒ @Ý—KT6_@ØdÇËSƒ @%#(4_@ë±AÚSƒ @f¬Þ1_@<™»èSƒ @¡3á¢/_@Ë\Z5÷Sƒ @Ô¸½g-_@˜6®Tƒ @’Ôìe-_@4‰>Bƒ @Wòd-_@ÁÙ|v0ƒ @™S?Ÿ/_@ŠÝh0ƒ @žfn/_@Ð;k ƒ @ Kb-_@<(ä®ƒ @»\'\'+_@è®\\½ƒ @cì(_@ÓÏÔËƒ @lž3ê(_@ªü;\rƒ @¡P¯&_@¨³\rƒ @„á°&_@ýŠLÚƒ @ï«½u$_@hàÃèƒ @Ñ\0ís$_@­í*!\rƒ @þ®É8"_@ŽÍ¡/\rƒ @©ù6"_@öÈhû‚ @’ËÕû_@O3vû‚ @u‚²À_@è7õ„û‚ @S7…_@ÁÖj“û‚ @SÃ¾ƒ_@Â ÑËé‚ @ï‚›H_@ÊFÚé‚ @·ËF_@K‚­Ø‚ @è§_@6"!Ø‚ @j°„Ð_@&„–/Ø‚ @Áf´Î_@²\ZýgÆ‚ @äÌ_@/¯c ´‚ @øþÀ‘_@ów×®´‚ @ÍÜV_@øÚJ½´‚ @·°ÍT_@ÙM±õ¢‚ @J™ª_@[;$£‚ @Ú‡Þ_@!Ã–£‚ @bdd£	_@)å!£‚ @`”¡	_@«&oY‘‚ @çOqf_@1Óàg‘‚ @*=N+_@ûRv‘‚ @i(+ð_@ûÂ„‘‚ @¥µ\0_@Vv3“‘‚ @öB8³\0_@¼v™Ë‚ @ï6xþ_@Œ|	Ú‚ @ã(ò<ü_@ yè‚ @Áu";ü_@sûÞ n‚ @urÿÿù_@&N/n‚ @&mÜÄ÷_@âê¼=n‚ @Ñe¹‰õ_@þI+Ln‚ @ÿÚé‡õ_@‹÷„\\‚ @iÞÆLó_@,áþ’\\‚ @w\\–Nó_@_C™Zn‚ @\ZQsñ_@×in‚ @¹CPØî_@ëtwn‚ @2ß€Öî_@9ƒÙ¯\\‚ @Ü]›ì_@§;F¾\\‚ @é×:`ê_@XŽ²Ì\\‚ @>Ñ%è_@N{Û\\‚ @Èôéå_@‡Šé\\‚ @Û½Ñ®ã_@$õ÷\\‚ @&±®sá_@Åß_]‚ @É}uá_@æ¿úÍn‚ @–­Z:ß_@§%eÜn‚ @l¢‹8ß_@Ë5Ê]‚ @«‘hýÜ_@&4#]‚ @K•™ûÜ_@b$™[K‚ @JvÀÚ_@4ŸjK‚ @é~EÂÚ_@¡°1]‚ @"j"‡Ø_@sÕ@]‚ @XSÿKÖ_@ˆ”oN]‚ @‰:ÜÔ_@áí×\\]‚ @7q\rÔ_@F­<•K‚ @)cêÓÑ_@+‘¤£K‚ @SÇ˜Ï_@S²K‚ @A¤]Í_@Á\'sÀK‚ @\när_Í_@…—ˆ]‚ @.ÃO$Ë_@îYu–]‚ @ê,"Ë_@rÚÙÎK‚ @Î^çÈ_@h\'@ÝK‚ @°þ:¬Æ_@¢¦ëK‚ @j{	®Æ_@­A³]‚ @(ú×¯Æ_@]JÝzo‚ @}Æ´tÄ_@HëB‰o‚ @{:ƒvÄ_@É•ÞP‚ @	ø_;Â_@®àC_‚ @“³<\0À_@ÖÅ¨m‚ @Ynþ¿_@êû¦o‚ @lKÃ½_@ kq´o‚ @¾Ó|Á½_@øÕì]‚ @Ê¤Y†»_@=Š9û]‚ @´ã\'ˆ»_@™uÕÂo‚ @ù¥M¹_@×9Ño‚ @#ÚÒN¹_@áÕ˜‚ @¢$ö‰»_@ð^qŠ‚ @mÅ½_@BE\r|‚ @Ð¼çÆ½_@Ò©C“‚ @‘gÄ‹»_@6F\rR“‚ @N¡P¹_@Ü	q`“‚ @·}·_@ÄgÔn“‚ @¢¯·_@a8§‚ @?ŒØ´_@ŒI›µ‚ @•îh²_@FÌýÃ‚ @ºàš›²_@"¤aüo‚ @óšw`°_@l±Ã\np‚ @Ý›©^°_@w\'C^‚ @Ú`†#®_@k‰Q^‚ @Šp¸!®_@ÁÃì‰L‚ @G@•æ«_@/æM˜L‚ @Ò#cè«_@‹Aê_^‚ @`	1ê«_@Ìš†\'p‚ @‘½\r¯©_@ávç5p‚ @Áoês§_@:íGDp‚ @¼£r§_@–t«|^‚ @¸ÙNp§_@ØùµL‚ @¸n§_@	}rí:‚ @0è]3¥_@”^Òû:‚ @õ.1¥_@Ð54)‚ @0mö¢_@"<•B)‚ @hïI» _@‡BôP)‚ @¶Q|¹ _@ˆ’W‰‚ @°;Y~ž_@ƒ#¶—‚ @Ì&€ž_@1ãR_)‚ @‹_ôž_@Ï ï&;‚ @û-ÑFœ_@mëM5;‚ @Ñ§Eœ_@±m)‚ @à	š_@Só|)‚ @œ	š_@Hr´‚ @ŽíïÌ—_@tÏÂ‚ @ñ„"Ë—_@Hƒ2û‚ @:”Eš_@+3Õì‚ @œ	š_@Hr´‚ @©#6Cœ_@ÂN¦‚ @°;Y~ž_@ƒ#¶—‚ @Æ¬‹|ž_@ÂaÐ‚ @‚¡hAœ_@S}wÞ‚ @^!›?œ_@Ö©Úô @<£Í=œ_@FÔ=Oâ @|¯ªš_@Áj›]â @¹¹‡Ç—_@ƒ›økâ @TUÉ—_@n•3ô @Ë2Ž•_@$kòAô @¥sÿ•_@«m	‚ @V`ÜT“_@Uòë‚ @AS“_@ àNPô @Ë2Ž•_@$kòAô @ôÁdŒ•_@ŒfUzâ @ l—Š•_@î_¸²Ð @tO“_@µÁÐ @8§M“_@*wù¾ @NÊˆ•_@4Wë¾ @|Æü†•_@kL~#­ @\0óÙK“_@´‚Ú1­ @‚·‘_@DS6@­ @F”ÕŽ_@¾‘N­ @‡qa×Ž_@ì÷.¿ @Ÿ.ÙŽ_@«/ÌÝÐ @Q‘_@z¥pÏÐ @dÌ‘_@qË\r—â @™ÎûÚŽ_@Nei¥â @&\0ÉÜŽ_@í˜mô @—ó¥¡Œ_@¼Üa{ô @ÎÎØŸŒ_@s™Ä³â @\0ÍµdŠ_@ÝgÂâ @/É’)ˆ_@ÐyÐâ @ð¿Å\'ˆ_@ékÜÑ @áÆ¢ì…_@7_6Ñ @gÌÕê…_@Ìè˜O¿ @\ZÞ²¯ƒ_@¸fò]¿ @eòå­ƒ_@“ÞT–­ @ÚÃr_@ç­¤­ @ë1öp_@=MÝ› @þV)o_@N±rŠ @øŠ4_@Î4Ë#Š @Î¾92_@&‡-\\x @~\\m_@PÕMx @%§k_@@s7†f @;ÒÂi_@+Ñ™¾T @öuå¤ƒ_@ñA°T @L–£ƒ_@j‚£èB @A+;Þ…_@#rJÚB @¯à…_@÷ç¡T @g·*ˆ_@[qŽ“T @š²÷ˆ_@sä+[f @Õá…_@Ây…if @ö¡ã…_@ú"1x @P;¨ƒ_@Ã9|?x @!Lªƒ_@ÈŠ @énå…_@+yÀø‰ @¯‘ ˆ_@†Äfê‰ @=°^"ˆ_@w1²› @w³+$ˆ_@Yœ¡y­ @²¸ø%ˆ_@)?A¿ @ð¿Å\'ˆ_@ékÜÑ @ü¶èbŠ_@ã‚úÐ @ü¢aŠ_@Í»ä2¿ @ýN_Š_@§bGk­ @ÿ€]Š_@pª£› @ÁO¤˜Œ_@²wO•› @5×–Œ_@*²Í‰ @ûôùÑŽ_@MDW¿‰ @ô²\r‘_@Íøû°‰ @;çé‘_@\'™x› @õ¯J“_@,f=j› @­v/…•_@?á[› @á(bƒ•_@¦0D”‰ @Öà„¾—_@\0´ç…‰ @Gˆ·¼—_@³²J¾w @u1Ú÷™_@àí¯w @\'Îö™_@TìPèe @»1êº—_@U¯­öe @2Ý¹—_@ó©/T @‰Kú}•_@÷l=T @Ä-|•_@càÏuB @Ü~\nA“_@ž¸+„B @ÜG=?“_@·Ž¼0 @¶Ë\Z‘_@òéÊ0 @|£M‘_@ê·L @2+ÇŽ_@d¥§ @®¾ŒŒ_@\'-  @ü±;ŠŒ_@ÑdX\r @M§nˆŒ_@ûrÇû€ @žž¡†Œ_@Í*Éé€ @}OKŠ_@Û„×é€ @’U²IŠ_@ò“æØ€ @2ˆ_@£@Ø€ @Yþ\\ˆ_@7“Ýåé€ @4«:Õ…_@ßº6ôé€ @š×…_@\rJÔ»û€ @°+å›ƒ_@«-Êû€ @ÄÇÂ`_@—‡…Øû€ @Øa %_@ÎÝæû€ @ìù}ê|_@R.5õû€ @’J±è|_@`—-ê€ @¼¥Ó#_@¤Ï?ê€ @Ÿë"_@j¢WØ€ @8)]_@„(JIØ€ @)s\\[_@ìu¬Æ€ @Ì°~–ƒ_@ü8TsÆ€ @0á±”ƒ_@ö“¶«´€ @”å’ƒ_@Ûìä¢€ @uïÂW_@w\nqò¢€ @ž0öU_@¤QÓ*‘€ @AÔ\Z_@æù*9‘€ @åû±ß|_@v<‚G‘€ @†Þ¤z_@VÙU‘€ @÷GÃ¢z_@{/;Ž€ @W5¡gx_@—‘œ€ @Ž­Ôex_@l›óÔm€ @Ä\'dx_@ÇU\r\\€ @¨,æ(v_@O€«\\€ @¢µ\'v_@ÿp\rTJ€ @ž@M%v_@’_oŒ8€ @]+ês_@½Äš8€ @Æö^ès_@ú™&Ó&€ @ð=­q_@0‚{á&€ @Cro_@·Ðï&€ @]øNpo_@7À1(€ @¢¯‚no_@¦y“`€ @Pì`3m_@4wçn€ @û&?øj_@;}€ @¥_½h_@FAŽ‹€ @‚é¾h_@Æ¶,S€ @Ž¦µÀh_@6*Ë\Z\'€ @h‡×ûj_@ºØw\'€ @¡º£ýj_@r:Ô8€ @Úïoÿj_@š´›J€ @\'<k_@«÷Rc\\€ @2,^<m_@‘ÿT\\€ @/r*>m_@w]n€ @N`k_@5Sñ*n€ @\'<k_@«÷Rc\\€ @ñ\ZÆh_@x¦q\\€ @zõMÄh_@â\nªJ€ @\Zù+‰f_@ø[¸J€ @eÝ_‡f_@—¼ð8€ @Çë=Ld_@Ç,ÿ8€ @ÖÞqJd_@"œp7\'€ @ø÷Ob_@’¼ÂE\'€ @Êùƒ\rb_@7\Z$~€ @®bÒ__@VÅuŒ€ @D.–Ð__@I×Ä€ @é\\t•]_@G(Ó€ @‰RZ[_@8yá€ @3´0Y_@«Éï€ @ídY_@©œ*(ò @v"CâV_@Í‘z6ò @jwàV_@›Ûnà @:ªU¥T_@ï\Z+}à @bè3jR_@5z‹à @‰$/P_@•éÈ™à @¤¶Ý0P_@+haò @ä»õM_@šm¶oò @lšºK_@\\f~ò @Ñ8xI_@rùQŒò @5`VDG_@Ù&Ÿšò @˜…4	E_@“îë¨ò @û¨ÎB_@¡P8·ò @^Êð’@_@M„Åò @,¼”@_@×Ý#€ @ÍšY>_@\'„o›€ @n(x<_@ÈÄº©€ @7Vã9_@»Ÿ¸€ @³C4¨7_@PÆ€ @SNm5_@™$šÔ€ @öVð13_@ƒÎãâ€ @¶h%03_@àCó @\Z|õ0_@«)ó @€á¹._@¡ãÕ7ó @Ãº¸._@áÓ5pá @ìÖô|,_@-~~á @ñ*{,_@)Þ¶Ï @õP_y,_@¼è=ï½ @ú”w,_@5Ã\'¬ @‹N¶²._@Q˜U¬ @Îƒë°._@Q€µQš @» ¯._@BfŠˆ @\0ÿs,_@õq]˜ˆ @]4r,_@=F½Ðv @¥ip,_@u	e @/‹«._@ô+Õúd @ÏlÀ©._@¶53S @ïžn,_@Ÿè|AS @;Ôl,_@Á¶ÜyA @¬õ§._@sé”kA @ã0_@z¶L]A @•OLá0_@´¡¬•/ @†ß0_@àŠÎ @‹0`¤._@¥žTÜ @Ù>i,_@ÃLœê @‚.*_@8•ãø @ÿ#üò\'_@x* @}ºÆô\'_@<ÍÊÎ/ @7P¥¹%_@ùYÝ/ @ôÛo»%_@¹¼±¤A @®i:½%_@^RlS @gù¿%_@ü{ò3e @ßfãƒ#_@ÖÑ8Be @Öë­…#_@þ=Ù	w @Ìrx‡#_@¨yÑˆ @ÂÄVL!_@q·¿ßˆ @õ@!N!_@/`§š @)¿ëO!_@¤\0o¬ @™õÉ_@{mF}¬ @i”_@ðæD¾ @zÞ^_@ˆq‡Ð @hù<Ý_@æóÌ\ZÐ @dß_@p‚mâá @Cpå£\Z_@·®²ðá @,Ð¯¥\Z_@ÇJS¸ó @2z§\Z_@Æäó€ @ý•D©\Z_@´|”G€ @çy"n_@rÙU€ @Ï[\03_@ºd€ @»;Þ÷_@·+br€ @[{¨ù_@Tð:)€ @ú¼rû_@ß²£;€ @`PÀ_@U–ç;€ @;¸\ZÂ_@ffˆ×L€ @ámø†_@ÀóËåL€ @ù™Âˆ_@GÑl­^€ @ß@ M\r_@…°»^€ @Åå}_@ÚòÉ^€ @¬ˆ[×_@ðE5Ø^€ @–)9œ_@Lwæ^€ @¢$ž_@êe®p€ @É¶àb_@øZ¼p€ @óF¾\'_@V`›Êp€ @Õ›ìÿ_@EÜØp€ @â«eîÿ_@r‹} ‚€ @¤„/ðÿ_@ÐÏh”€ @K÷µý_@ìm_v”€ @IÅÖ¶ý_@É¿\0>¦€ @.)´{û_@ÄAL¦€ @iì}}û_@"gâ¸€ @ŽA[Bù_@ùX""¸€ @ú$Dù_@ÔÅÃéÉ€ @t´îEù_@–0e±Û€ @îË\n÷_@×Û¤¿Û€ @Ç•÷_@!TF‡í€ @rO_÷_@[ÊçNÿ€ @‘m<Óô_@/\']ÿ€ @xÕô_@¾²È$ @Õ#ã™ò_@CÁ3 @÷¿¬›ò_@zR©ú" @^vò_@ŸáJÂ4 @ðQSbð_@Š©‰Ð4 @Kådð_@,F+˜F @¥zæeð_@¿àÌ_X @ùRÃ*î_@bnX @ÝŒ,î_@\n­5j @ §iñë_@75ëCj @î&3óë_@ÂêŒ| @»¨üôë_@>ž.Ó @†,Æöë_@¨OÐšŸ @ÐÍ¢»é_@ºC©Ÿ @ÕFl½é_@¢°p± @×Á5¿é_@x¿Q8Ã @žG„ç_@êlFÃ @Ú·Û…ç_@<71Õ @á.¸Jå_@€ŽnÕ @X”Lå_@Bfäæ @ÍûJNå_@þ;²«ø @?ePå_@ªTs\n‚ @û³ðã_@Ô/‘\n‚ @LW\'ã_@žLï¹ø @Ï°Øà_@„÷+Èø @ãb:Öà_@³Š\0ç @*Ç›Þ_@T8Æç @SàœÞ_@¯<hÖø @Û]¼aÜ_@ ¤äø @d±˜&Ú_@Ø•ßòø @ñuë×_@Õ©\Zù @Í>í×_@ºÚ¼È\n‚ @¦>ï×_@	_‚ @{_Ðð×_@U6X.‚ @Áˆ¬µÕ_@0<f.‚ @¯tã³Õ_@äÖ™ž‚ @™b\Z²Õ_@…˜÷Ö\n‚ @g£övÓ_@•ð1å\n‚ @¸¨¿xÓ_@|>Ô¬‚ @°ˆzÓ_@OŠvt.‚ @R¹Q|Ó_@Ô<@‚ @×Ñ-AÑ_@\0õRJ@‚ @QÕd?Ñ_@³›°‚.‚ @ÅÚ›=Ñ_@Y@»‚ @7âÒ;Ñ_@ëâkó\n‚ @¨ë	:Ñ_@nƒÉ+ù @?5æþÎ_@ƒ\0:ù @¯\0Ï_@†o¥‚ @âY‹ÅÌ_@f–Þ‚ @ç8TÇÌ_@á×‚ @êÉÌ_@H#Ÿ.‚ @;9ùÊ_@zm\\­.‚ @yÂÊ_@Zõþt@‚ @±çŠ‘Ê_@){¡<R‚ @çÁS“Ê_@æþCd‚ @ð¸/XÈ_@í§|d‚ @_ˆøYÈ_@9Úu‚ @ËYÁ[È_@9ÈÁ¡‡‚ @O5 Æ_@*ú¯‡‚ @ÖyåÃ_@"\'2¾‡‚ @`æTªÁ_@û½iÌ‡‚ @ë»0o¿_@ï Ú‡‚ @C\\ùp¿_@:ºC¢™‚ @™þÁr¿_@Pƒæi«‚ @Ÿ¸7½_@³mx«‚ @#Õ5½_@\Z•z°™‚ @Ýç°úº_@<\n±¾™‚ @ªpyüº_@XòS†«‚ @¹&UÁ¸_@>Š”«‚ @ÊÚ0†¶_@eÊ¿¢«‚ @\nLù‡¶_@tÏbj½‚ @½¤Ã¸_@Ê-\\½‚ @¾$æÄ¸_@FúÏ#Ï‚ @8ˆ\n\0»_@[¼™Ï‚ @ûÓ»_@Fž<Ýà‚ @>…÷<½_@ëÏà‚ @ƒñx¿_@+ÒÎÀà‚ @Ë›äy¿_@ó’qˆò‚ @Ù	µÁ_@Â:zò‚ @âËÑ¶Á_@´ÜAƒ @·MöñÃ_@Œ°¤3ƒ @ƒ¿óÃ_@8NGûƒ @Iß‡õÃ_@ÓééÂ\'ƒ @«x¬0Æ_@“a±´\'ƒ @¢ã.Æ_@~Õíƒ @½,jÈ_@÷ÕÞƒ @`µ,¥Ê_@Å²œÐƒ @<QàÌ_@ÆcÂƒ @â8\ZâÌ_@KfŠ\'ƒ @NÊ>Ï_@GË{\'ƒ @¿YcXÑ_@þÁm\'ƒ @2ç‡“Ó_@5×U_\'ƒ @©r¬ÎÕ_@«†\ZQ\'ƒ @üÐ	Ø_@^ÐÞB\'ƒ @Î:šØ_@0Þ€\n9ƒ @Ï¾FÚ_@š²Dü8ƒ @›ƒõDÚ_@Q´¢4\'ƒ @	\Z€Ü_@‚2f&\'ƒ @šŒ>»Þ_@ñJ)\'ƒ @™)u¹Þ_@«i‡Pƒ @Xž™ôà_@ã+JBƒ @¾/ã_@Zˆ4ƒ @–ô-ã_@Äjlƒ @Œúiå_@VÊ,^ƒ @Š\\=¤ç_@ÕjîOƒ @tÊs¢ç_@—ÃLˆñ‚ @³˜Ýé_@á\rzñ‚ @Õ€ÎÛé_@,tl²ß‚ @RÅòì_@Bh-¤ß‚ @ÎRî_@˜öí•ß‚ @NH;ð_@.®‡ß‚ @"‡q‹ð_@²ÀÍ‚ @à¸•Æò_@e„Ì±Í‚ @ è¹õ_@\nñ‹£Í‚ @èðÿô_@è êÛ»‚ @íìËÄò_@¶$+ê»‚ @ø"Ãò_@õÂ‰"ª‚ @/9&þô_@¶NIª‚ @sd\\üô_@rú§L˜‚ @èk€7÷_@0g>˜‚ @fŒ¶5÷_@<éÅv†‚ @…Úpù_@È„h†‚ @Ðšoù_@Vã t‚ @†²Fmù_@	TBÙb‚ @<Ì|kù_@£¡Q‚ @ðç²iù_@+×ÿI?‚ @’«Ö¤û_@\n¾;?‚ @8múßý_@-á|-?‚ @bq0Þý_@Ã¾Ûe-‚ @‹wfÜý_@Jš:ž‚ @lÏB¡û_@)|¬‚ @VäxŸû_@íòÚä	‚ @±œÚý_@¿s™Ö	‚ @Õ‰ÒØý_@$Køø @lö\0_@Ìu¶\0ø @Í,\0_@±Z9æ @÷•×ý_@z WGæ @¤>Õý_@ÊóµÔ @*b\0_@=tqÔ @…\Z˜\0_@UÓ©Â @Ó~»I_@ó‘›Â @kwñG_@7\0ðÓ° @ÿq\'F_@lìNŸ @“n]D_@Ö­D @˜ª€_@\'“k6 @gœ¶}_@ÌŠÊn{ @5ì{_@a€)§i @µ°·_@cöæ˜i @6Ï2ò_@®¤Ši @{«hð_@aÃW @¿‰žî_@ö)bûE @\0jÔì_@~8Á34 @Êq±±_@~ùB4 @Í`ç¯_@cöbz" @YsÄt_@B¥ˆ" @qúr_@_-Á @âp0q_@“cùþ€ @ÑDS¬_@üé ëþ€ @Ð9‰ª_@±à#í€ @ûþ«å_@÷]=í€ @¾vç_@±WÞÜþ€ @€0@é_@ZO¤ @AL\në_@ôD l" @\0jÔì_@~8Á34 @;`÷\'_@É~%4 @¸5-&_@Ñ-Ý]" @4\rc$_@ÉG<– @êç…_\r_@„Úø‡ @¢´»]\r_@ÿXÀþ€ @Xƒñ[\r_@i\'·øì€ @ˆB—_@•ssêì€ @{J•_@ƒ¦Ò"Û€ @ë¶lÐ_@œŽÛ€ @Ze_@ç,JÛ€ @ÆÅ	_@õ|©>É€ @0Àú_@ëÊw·€ @šp0_@Ïh¯¥€ @ÂöRA_@0p#¡¥€ @hœˆ?_@˜É‚Ù“€ @Ð«z_@ÝÌ=Ë“€ @7‰Íµ\Z_@pjø¼“€ @V´\Z_@òàWõ€ @±®àx_@Ê3‚€ @’Kw_@¥˜ü;p€ @u§8²\Z_@cU·-p€ @“9n°\Z_@ÄÇf^€ @³†ë_@f.ÑW^€ @×Ñ²&_@X/‹I^€ @>Y}(_@Í+p€ @%¯Ÿc!_@y)åp€ @û\ZÕa!_@›ÊD;^€ @b÷œ#_@-\0þ,^€ @E§Ø%_@Ð¶^€ @kê;(_@B:o^€ @+^N*_@Ä>\'^€ @¸j€‰,_@—ÝÞó]€ @ß§¢Ä._@º–å]€ @ãÄÿ0_@-êL×]€ @1ç:3_@ðWÉ]€ @o²<3_@:£o€ @YZÔw5_@ƒ2Y‚o€ @YcŸy5_@õùI€ @Znj{5_@TÑ˜“€ @ËÉŒ¶7_@èDN“€ @ãW¸7_@îÊ¤€ @Nÿ"º7_@D¼’¶€ @î»7_@Øt-ZÈ€ @Ñ<¹½7_@S+Í!Ú€ @‘^„¿7_@Èßléë€ @R‚OÁ7_@-’±ý€ @T(rü9_@lBÁ¢ý€ @UÌ”7<_@÷Œu”ý€ @›`9<_@\\ @áL+;<_@$­´#! @[\0:_@Ï\02! @ÞÅÓ:_@h ù2 @“ù°Æ7_@úœë3 @R%|È7_@G‹ÏD @aþž:_@ð¸?ÁD @â8j:_@jQßˆV @SGÊ7_@3ï*—V @R%|È7_@G‹ÏD @EJY5_@•oÖÝD @@k$5_@E\'v¥V @<Žï5_@ØÜmh @8³º’5_@fµ4z @4Ú…”5_@äAUü‹ @.Q–5_@QñôÃ @Pæ-[3_@@Ò @‡ù\\3_@¿ß™¯ @¾$Ä^3_@öyaÁ @õF`3_@Í2)Ó @+kZb3_@‰é¾ðä @a‘%d3_@?ž^¸ö @–¹ðe3_@åPþ‚ @$NÍ*1_@ŽYIŽ‚ @”k˜,1_@¾éU\Z‚ @‹c.1_@Ý×ˆ,‚ @v¬.01_@í“(å=‚ @æÏù11_@ìMÈ¬O‚ @VõÄ31_@Ùhta‚ @Ä51_@¬»<s‚ @ÎÔ³p3_@hU¼-s‚ @r3_@œù[õ„‚ @5CJt3_@¿›û¼–‚ @¢q&91_@7!GË–‚ @3F[71_@yo§…‚ @e7ü._@šò…‚ @žþ._@ñ@’Ù–‚ @¸¾Íÿ._@8\02¡¨‚ @aá˜/_@m½Ñhº‚ @d/_@’xq0Ì‚ @³,//_@¨1øÝ‚ @[Uú/_@ è°¿ï‚ @€Å/_@–P‡ƒ @©¬\n/_@zPðNƒ @QÛ[/_@M%ƒ @õ\'/_@°/Þ6ƒ @œ>ò/_@Ã\\Ï¥Hƒ @As½/_@eomZƒ @EÓáL1_@<#_Zƒ @¯­N1_@ÕÂ&lƒ @\\xP1_@ékbî}ƒ @€£CR1_@À\0¶ƒ @éìT1_@‡“¡}¡ƒ @R8ÚU1_@=$AE³ƒ @¹…¥W1_@â²àÅƒ @\\0Ê’3_@2$”þÄƒ @ˆŒ•”3_@/¡3ÆÖƒ @µê`–3_@Óèƒ @àJ,˜3_@é”rUúƒ @­÷™3_@³„ @6Ã›3_@k€±ä„ @´ùçÖ5_@ó=dÖ„ @¥l³Ø5_@¡ž/„ @æ_Ø8_@\'éµ/„ @2à8_@´•È„ @°Ä1M:_@¬‡È¹„ @4:fK:_@ÄA)ò„ @ë‹†<_@’ÝÚã„ @ªz¿„<_@3¥;úƒ @içó‚<_@ÐjœTèƒ @>+ÏG:_@Ì¯êbèƒ @¹±šI:_@Ëù‰*úƒ @Ææu8_@›è×8úƒ @mª8_@8qèƒ @YõÞ\n8_@K3™©Öƒ @¡	8_@„ÕùáÄƒ @þØîÍ5_@¾/GðÄƒ @r#Ì5_@NÀ§(³ƒ @ëH8_@®uZ\Z³ƒ @É£lB:_@KÅ³ƒ @N%¡@:_@ÿrmD¡ƒ @4š|8_@È»R¡ƒ @}*±8_@Ï¯‹ƒ @)ªŒÈ5_@8Ûh™ƒ @5IÁÆ5_@–eÉÑ}ƒ @BêõÄ5_@íí)\nlƒ @N*Ã5_@)tŠBZƒ @[2_Á5_@TøêzHƒ @›ƒü7_@UžlHƒ @ã¸ú7_@þ¤6ƒ @*¶ìø7_@±,_Ý$ƒ @ãç4:_@\'ùÏ$ƒ @eyE2:_@X–rƒ @çz0:_@v1Ó?ƒ @#žk<_@b·…1ƒ @Ò«Òi<_@`æiï‚ @i¢®.:_@…Ê3xï‚ @ê9ã,:_@a”°Ý‚ @Ž6h<_@³G¢Ý‚ @KÃ;f<_@<«§ÚË‚ @lÓ+:_@}öôèË‚ @‹áóï7_@\0ÜA÷Ë‚ @Ñ‰(î7_@D_¢/º‚ @ínL):_@]‰U!º‚ @n\':_@*\Z¶Y¨‚ @Æâ¤b<_@ îhK¨‚ @ƒuÙ`<_@xŒÉƒ–‚ @>\n_<_@À(*¼„‚ @ü B]<_@øÂŠôr‚ @ðð":_@0À×s‚ @å>ûæ7_@ªW$s‚ @*ñ/å7_@¦Ð„Ia‚ @o¥dã7_@‡GåO‚ @²[™á7_@W¼Eº=‚ @rç¼:_@®Sù«=‚ @ò’ñ\Z:_@ÖYä+‚ @q@&:_@TVº\Z‚ @ñïZ:_@Ô\ZU‚ @q¡:_@¸P{ö @!ø²P<_@ÂÀ.ö @ÛžçN<_@wJ·ä @Éæ\nŠ>_@bdB©ä @À‚?ˆ>_@®û¢áÒ @¹ t†>_@Þ\ZÁ @°À¨„>_@ÿ#dR¯ @SàË¿@_@D¯ @ôýîúB_@V„É5¯ @e†#ùB_@ž4*n @D•F4E_@Ó[Ü_ @–6E_@í›{\'¯ @935qG_@ÌM-¯ @OÆ\0sG_@8|ÌàÀ @g[ÌtG_@“¨k¨Ò @=(©9E_@ðº¶Ò @²t;E_@ÎOY~ä @}ò—vG_@ÔÒ\npä @j0»±I_@ ð»aä @Œï¯I_@~ÕšÒ @·»ëK_@°œÍ‹Ò @ßè5&N_@)þ}}Ò @YaP_@èù-oÒ @0=|œR_@ïÝ`Ò @XdŸ×T_@>ÀŒRÒ @HkÙT_@ÂŒ+\Zä @ïyŽW_@¶GÚä @€‰ÂW_@ÒŠ;DÒ @¥¬åMY_@®ïé5Ò @Ø©±OY_@ñœˆýã @Ä×ÔŠ[_@rŒ6ïã @«øÅ]_@:äàã @fÄÇ]_@3¢‚¨õ @Sç`_@ ¶/šõ @’z³`_@æ0Îa‚ @¤`_@©l)‚ @•ÏK`_@Bñ*‚ @Š*oCb_@Ÿ·â*‚ @€ƒ’~d_@\Z¹cÔ*‚ @w>Æ|d_@<bÅ‚ @Eò¢Ab_@Š8‚ @¼Ö?b_@öÏzS‚ @pûùzd_@K	\'E‚ @Ü8¶f_@çÜÒ6‚ @©ˆé·f_@3&qþ‚ @×Ðóh_@p„ð‚ @j/Ùôh_@¼º·*‚ @û¥öh_@ñX<‚ @²ïÈ1k_@ÆÊq<‚ @fMìlm_@C>®b<‚ @É¸nm_@qRL*N‚ @ù1Ü©o_@PöN‚ @Ú¼¨«o_@S”ã_‚ @0Ìæq_@½Û=Õ_‚ @P¡ï!t_@»þæÆ_‚ @¸G¼#t_@Êß„Žq‚ @µÃß^v_@e-€q‚ @ãx¬`v_@Ç\\ËGƒ‚ @£ÿÏ›x_@þ”s9ƒ‚ @a„óÖz_@wg+ƒ‚ @}_@4ÔÂƒ‚ @¥+J}_@É3%Uq‚ @šŸmK_@rJÌFq‚ @‘‘†_@\\ûr8q‚ @Ä„_@>xÕp_‚ @Àç¿ƒ_@Ó{b_‚ @„´Áƒ_@ŒF*q‚ @wï×ü…_@ý+¿q‚ @h[û7ˆ_@²«d\rq‚ @XÅsŠ_@«Å	ÿp‚ @jíëtŠ_@§Æ‚‚ @b°Œ_@¬¬K¸‚‚ @ÊÔ2ëŽ_@€ëï©‚‚ @h\0íŽ_@Šq”‚ @Ù•#(‘_@ôÕ0c”‚ @JGc“_@¡9ÔT”‚ @·Šjž•_@‘7wF”‚ @£ö7 •_@…\'¦‚ @‘d¢•_@h±Õ·‚ @„õ(Ý—_@?ŽSÇ·‚ @v„Lš_@X¡õ¸·‚ @ï\r\Z\Zš_@Îm’€É‚ @¤§=Uœ_@z4rÉ‚ @U?až_@hCÕcÉ‚ @Õ„Ë _@–vUÉ‚ @Ë†RÍ _@ò°Û‚ @=\'v£_@±\r³Û‚ @¬Å™C¥_@³S\0Û‚ @b½~§_@ô•òñÚ‚ @‚üà¹©_@wÁ‘ãÚ‚ @ê”õ«_@:‡0ÕÚ‚ @O+(0®_@>çÎÆÚ‚ @¯¿Kk°_@ƒál¸Ú‚ @ÙÌm°_@ì	€ì‚ @ýk=¨²_@¾‘¦qì‚ @	aã´_@Ò°Ccì‚ @Ò1/å´_@Òºß*þ‚ @´ÙR ·_@rd|þ‚ @0!"·_@­\\äƒ @ÕÃD]¹_@Ú´Õƒ @uth˜»_@E_PÇƒ @~Ç6š»_@6ìŽ!ƒ @à‚ZÕ½_@þŽ‡€!ƒ @@<~À_@4‚"r!ƒ @ÔªLÀ_@{7¾93ƒ @õnpMÂ_@:µX+3ƒ @1”ˆÄ_@9Íò3ƒ @ô¨Å†Ä_@]7WU!ƒ @K\\éÁÆ_@QùðF!ƒ @œ\r\rýÈ_@„UŠ8!ƒ @D¯ÛþÈ_@òË%\03ƒ @Wkÿ9Ë_@¬²¾ñ2ƒ @h%#uÍ_@¦3Wã2ƒ @uÝF°Ï_@ÝNïÔ2ƒ @n§²Ï_@”ŠœDƒ @9j9íÑ_@Ñ9"ŽDƒ @ûBïÑ_@>m½UVƒ @Š,*Ô_@TGVƒ @ÜOeÖ_@hë8Vƒ @¥s Ø_@ÁÌ*Vƒ @"m—ÛÚ_@¾ËVƒ @¢2»Ý_@ùd­\rVƒ @öÞQß_@r˜BÿUƒ @ÀÐPß_@cÃ§7Dƒ @g­@Nß_@Cìp2ƒ @UUd‰á_@qÙ¡a2ƒ @@û‡Äã_@ß`6S2ƒ @"8WÆã_@‡Ñ\ZDƒ @Íèzæ_@u*eDƒ @\'Ÿ«ÿå_@‹‚ÊD2ƒ @AÏ:è_@u>^62ƒ @èàòuê_@Ÿ”ñ\'2ƒ @DÂwê_@ŒïCƒ @·îå²ì_@ºýáCƒ @S—	îî_@¢x±ÒCƒ @Ùïî_@‡ßKšUƒ @lÉü*ñ_@ïäÝ‹Uƒ @óVÌ,ñ_@:xSgƒ @\rðgó_@ëÉ	Egƒ @%Ñ£õ_@ôš6gƒ @6‹7Þ÷_@r¸+(gƒ @EC[ú_@¼gƒ @ä+ú_@\r+Váxƒ @³ÈNVü_@*æÒxƒ @|‰r‘þ_@…—uÄxƒ @AH–Ì\0_@µ¶xƒ @33fÎ\0_@Ê—ž}Šƒ @·ü‰	_@Ý?-oŠƒ @8Ä­D_@,‚»`Šƒ @¸Ê}F_@FCU(œƒ @÷œ¡_@ãœƒ @4mÅ¼	_@wpœƒ @j;é÷_@Uxýü›ƒ @œ\r3_@ÒŠî›ƒ @4CÝ4_@Ì“#¶­ƒ @&\Zp_@Á¹¯§­ƒ @ï$«_@òy;™­ƒ @;Fõ¬_@PØÔ`¿ƒ @ä%è_@÷"`R¿ƒ @‹=#_@ÚëC¿ƒ @-ß`^_@ø†u5¿ƒ @É¸„™_@R ÿ&¿ƒ @^¨Ô_@çS‰¿ƒ @f)yÖ_@Ua"àÐƒ @¼ _@^Ÿ«ÑÐƒ @ìÀL"_@¡w4ÃÐƒ @¤ ‘N"_@ncÍŠâƒ @³‹µ‰$_@$ÆU|âƒ @O†‹$_@ îCôƒ @}W$_@ðw‡„ @êÛ\'$_@ÀM Ó„ @^¥ø$_@!¹š)„ @ÖpÉ’$_@1óQb;„ @T>š”$_@ÎÂê)M„ @ÿs¾Ï&_@	arM„ @JPÑ&_@Ïã^„ @˜.`Ó&_@xÚ£ªp„ @È{„)_@Wó*œp„ @ähU)_@/Ãc‚„ @X&)_@÷D\\+”„ @º¼JM+_@yØâ”„ @¥ºO+_@gn{ä¥„ @*@Š-_@TŒÖ¥„ @hoˆ-_@1i”„ @€“Ã/_@Îîÿ“„ @¶Þ·þ1_@D0tñ“„ @~¼æü1_@§ÇÛ)‚„ @V84_@ÎÓ`‚„ @%Z/s6_@,zå‚„ @j ^q6_@/MEp„ @p_‚¬8_@wÑ6p„ @oœ¦ç:_@jU(p„ @.KÕå:_@Ž<½`^„ @byù =_@+Ñ@R^„ @i×Ê"=_@àîØp„ @[ï]?_@ç\r\\p„ @HG™A_@%ÇÞüo„ @¶ÏA—A_@\rÉF5^„ @*Zp•A_@ÖÈ®mL„ @…u”ÐC_@é;1_L„ @ØŽ¸F_@5I³PL„ @ïŠ\rF_@Î)K^„ @B®HH_@ÁÌ	^„ @dÒƒJ_@nóMû]„ @„ö¾L_@‘¿Îì]„ @†;ÈÀL_@šnf´o„ @üô™ÂL_@žþ{„ @j»u‡J_@o}Š„ @ jG‰J_@ß)R“„ @Ü\Z‹J_@’â¬¥„ @ ÍêŒJ_@4™Dá¶„ @„-ÈL_@EÅÒ¶„ @`‹3O_@‹-EÄ¶„ @6çW>Q_@ßÄµ¶„ @A|yS_@¸*D§¶„ @*[ªwS_@[³¬ß¤„ @WwØuS_@í9“„ @‘µü°U_@x?”	“„ @Èñ ìW_@:ßû’„ @÷+E\'Z_@3‘ì’„ @dib\\_@bíÞ’„ @	{;d\\_@†\'¦¥¤„ @ï½_Ÿ^_@†#—¤„ @ÎþƒÚ`_@ß~ ˆ¤„ @K1VÜ`_@F—7P¶„ @Ðe(Þ`_@ž­ÎÈ„ @3¾Lc_@ò K	È„ @qTe_@{.ÇúÇ„ @¨dCVe_@#^ÂÙ„ @ÁÅg‘g_@»Ù³Ù„ @Ö$ŒÌi_@íT¥Ù„ @1»¹Êi_@-¾ÝÇ„ @yÞl_@Vô8ÏÇ„ @·YAn_@´j³ÀÇ„ @î¥&|p_@H{-²Ç„ @Tzp_@ÌÓ–êµ„ @kUxµr_@mŽÜµ„ @Ïœðt_@Cã‰Íµ„ @\'ÊÀ+w_@OÒ¿µ„ @zåfy_@‘[{°µ„ @Æ6	¢{_@	ó¡µ„ @k6 {_@¸$]Ú£„ @‚‘ZÛ}_@@òÔË£„ @øµ~€_@þYL½£„ @eØ¢Q‚_@ñ[Ã®£„ @ÊøÆŒ„_@ø9 £„ @)ëÇ†_@{.°‘£„ @’\rÆ†_@`!\ZÊ‘„ @ <‰_@Ó»‘„ @Ëiÿˆ_@„úó„ @~ö•ýˆ_@$d,n„ @zê¹8‹_@‡›Ùn„ @oÜÝs_@!ÐNn„ @[Ì¯_@óžÃ\0n„ @øÕ°_@»pYÈ„ @¢ÿøë‘_@çÉÍ¹„ @Cø\'”_@I½A«„ @sLð(”_@Em×r‘„ @ÑOd–_@ÿêJd‘„ @%Q8Ÿ˜_@ð¾U‘„ @ëÀ¡˜_@‘S£„ @þÌ/Üš_@f3Æ£„ @×S_@äo8\0£„ @ßwRŸ_@™Fªñ¢„ @\'wKTŸ_@£?¹´„ @æ‰o¡_@±ª´„ @œš“Ê£_@^ÿ!œ´„ @ONgÌ£_@:·cÆ„ @Ái‹¦_@˜¿\'UÆ„ @C,_	¦_@Mè¼Ø„ @sRƒD¨_@4ø,Ø„ @*ƒ¯B¨_@bß—FÆ„ @ŠšÓ}ª_@`™8Æ„ @á¯÷¸¬_@”ív)Æ„ @µ˜Ëº¬_@¡æñ×„ @Ê¸ïõ®_@\'Åzâ×„ @ÕÖ1±_@â=éÓ×„ @=Ûç2±_@~›é„ @n³_@ ìŒé„ @Å*0©µ_@`µY~é„ @ÂJ«µ_@­jîEû„ @>|(æ·_@<’[7û„ @\n«üç·_@Ÿ5ðþ… @áÛÐé·_@íÖ„Æ… @Ù¬®µ_@(ÏÕ… @ÉlØ¬µ_@õƒ\r\r… @,´q³_@ \r… @)ê6±_@<½§*\r… @Í¥kû®_@-t99\r… @f_GÀ¬_@RÅÊG\r… @÷#…ª_@«°[V\r… @Í4Oƒª_@î­ÆŽû„ @÷*H¨_@˜#Wû„ @€ÌþI¨_@86ìd\r… @ÿÚ¦_@øU|s\r… @t1¶Ó£_@ë‚\r… @Rï‰Õ£_@<@¡I… @<¯]×£_@~n61… @-q1Ù£_@­šËØB… @	æU¦_@±;ÊB… @Ê¶)¦_@NËÐ‘T… @d6NQ¨_@l@ƒT… @ó³rŒª_@í¦¯tT… @J FŽª_@SŸD<f… @¨Ž\Zª_@œ•Ùx… @î‘ª_@à‰nË‰… @qÂ“ª_@|“›… @úe–•ª_@3l˜Z­… @~\\j—ª_@DZ-"¿… @¬$Ò¬_@\nÐ›¿… @Óê³\r¯_@à	¿… @ï®ØH±_@&Šwö¾… @qýƒ³_@zÎäç¾… @\r1"¿µ_@þ¬QÙ¾… @{iöÀµ_@‰Iæ Ð… @C4ü·_@W²R’Ð… @ïFú·_@²%¾Ê¾… @ä«rø·_@û–)­… @Ãjžö·_@6•;›… @,\rÃ1º_@ä8-›… @Œ­çl¼_@Ãm›… @åK¨¾_@ÒlØ›… @3è0ãÀ_@nC›… @\0v\\áÀ_@Ó\Z¯9‰… @Ã_@*Æ+‰… @†¬\ZÃ_@Ã€…cw… @«ØÃ_@V9ñ›e… @“}üSÅ_@®ž[e… @ò÷\'RÅ_@eÇÅS… @Ð’Ã_@Ëï\\ÔS… @ÿ/Ã_@1¤ÈB… @šÁ\nÚÀ_@;¹]B… @+eæž¾_@xhò)B… @ð	¾_@üú]b0… @?¸ía¼_@…4òp0… @Òk`¼_@µ]©… @¾°=›¾_@o‹Éš… @ óaÖÀ_@\0ü4Œ… @x4†Ã_@Å }… @GsªLÅ_@¾«\no… @Ëò~NÅ_@”ëž60… @V<£‰Ç_@Ø\Z	(0… @«Êw‹Ç_@´HïA… @[LÇ_@~t1·S… @qí Ç_@8žÅ~e… @E[EÊÉ_@ô7/pe… @ÇiÌ_@ák˜ae… @Ï0Ž@Î_@\0:Se… @x¹>Î_@@m‹S… @ÓÝyÐ_@=¸Õ|S… @„˜²{Ð_@P¢iDe… @1þÖ¶Ò_@Ó¤Ñ5e… @ÕaûñÔ_@‡A9\'e… @ìBÐóÔ_@§	Íîv… @J±ô.×_@¡04àv… @4¡É0×_@ÑæÇ§ˆ… @N\ZîkÙ_@˜.™ˆ… @^‘§Û_@ã”Šˆ… @d7âÝ_@"Éú{ˆ… @`y[à_@ôH`mˆ… @SêXâ_@öbÅ^ˆ… @&UZâ_@vÇX&š… @P*\\â_@á)ìí«… @wØN—ä_@9¾Pß«… @%$™ä_@©ä¦½… @V®HÔæ_@A-H˜½… @ÕÿÖæ_@°kÛ_Ï… @ÂBé_@‰?QÏ… @}?mé_@\næ«‰½… @Bã—\ré_@wµÂ«… @‰Âé_@×‚…ú™… @ë0í	é_@$Nò2ˆ… @ÏÚé_@`_kv… @¿†Bé_@–ÞË£d… @¹4mé_@¯£8ÜR… @½ä—é_@¹f¥A… @Ì–Â\0é_@¯\'M/… @äJíþè_@”æ~…… @	ýè_@j£ë½… @¢ïóÁæ_@LK‡Ì… @•´Àæ_@ öóú„ @ë­ú„ä_@H(ú„ @°%ƒä_@\'ÁûKè„ @À…Hâ_@•}–Zè„ @Vh,Fâ_@k“Ö„ @!wà_@K¡Ö„ @‡h3	à_@ö¿	ÚÄ„ @‚ÎÝ_@ò£èÄ„ @D‚:ÌÝ_@Êó!³„ @†¦‘Û_@O©/³„ @ÀÈòUÙ_@‹DB>³„ @ŒäTÙ_@y…®v¡„ @ú×_@?G…¡„ @h<ÖÝÔ_@;ß“¡„ @Ge²¢Ò_@mÓv¢¡„ @n©Ý Ò_@ˆââÚ„ @\nÝ¹eÐ_@!zé„ @›–*Î_@ºùø„ @XnÁ(Î_@ïæ|0~„ @¥ªíË_@òI?~„ @êäy²É_@+G©M~„ @#VwÇ_@œÞ>\\~„ @9¥uÇ_@šª”l„ @/è]:Å_@Å»?£l„ @‰8Å_@>e«ÛZ„ @ÆÌeýÂ_@M@êZ„ @nBÂÀ_@•WÔøZ„ @èÊmÀÀ_@ ß?1I„ @L!J…¾_@¹¯Ó?I„ @¥u&J¼_@Š\ZgNI„ @µCRH¼_@:€Ò†7„ @Ë¢.\rº_@]ue•7„ @öÇº_@“ú\\I„ @>ßÓ·_@Õ¾ŒkI„ @}f»˜µ_@PøzI„ @ÛZç–µ_@O.Š²7„ @DQ•µ_@:bõê%„ @·ïY³_@$‡ù%„ @¹\ZÌ±_@Fd&„ @Å\n  ±_@$P­Ï7„ @®_|å®_@dH>Þ7„ @‹²Xª¬_@ÝÚÎì7„ @b5oª_@_û7„ @/R4¨_@zÎî	8„ @7•=2¨_@£YB&„ @JÚi0¨_@’uÄz„ @ðqkª_@mÎ4l„ @F¬¹iª_@Ã®Ÿ¤„ @¤èågª_@\nÝðƒ @‡jÂ,¨_@gšëðƒ @`êžñ¥_@6)úðƒ @QBËï¥_@{ò“2ßƒ @æÌ§´£_@nž"Aßƒ @rU„y¡_@œä°Oßƒ @÷È°w¡_@7ˆÍƒ @?\\<Ÿ_@¿O©–Íƒ @’Þ¹:Ÿ_@fØÏ»ƒ @–|–ÿœ_@J3¡Ý»ƒ @·\rÃýœ_@ªªƒ @x¶ŸÂš_@@˜$ªƒ @eVÌÀš_@ô]˜ƒ @\\øø¾š_@¹Vm•†ƒ @	\0\0\0¬ìº\nc_@\r³’Ì9„ @Äc_@È)”K„ @Ç iÑ`_@ßå¬¢K„ @vú–Ï`_@ÁÛ9„ @8s”^_@Oi˜é9„ @²î ’^_@›2"(„ @+ÖÄÍ`_@3š~(„ @œ»èc_@œû(„ @¬ìº\nc_@\r³’Ì9„ @	\0\0\0ƒ©ÕœØ_@1ÂK›2ƒ @¦¤žØ_@ÈæbDƒ @Ëé€cÖ_@TPqDƒ @„ù±aÖ_@þ=µ©2ƒ @ƒGŽ&Ô_@\nT¸2ƒ @f¿$Ô_@5,ƒð ƒ @Bã_Ö_@â%\Zâ ƒ @|®›Ø_@Ð¹°Ó ƒ @ƒ©ÕœØ_@1ÂK›2ƒ @	\0\0\0Àa_@Jþãjƒ @Œ×®__@}J£\rƒ @[¡Þ]_@Ãú°Ûû‚ @—ö™_@©X=Íû‚ @ÍI%Ô_@ÎPÉ¾û‚ @†™õÕ_@´b†\rƒ @Œ9Òš_@°ËÖ”\rƒ @†~¢œ_@¥<p\\ƒ @Àa_@Jþãjƒ @\0\0\058Qq_@°‰{ü‚ @7o_@ÁÅáMê‚ @¨‡¤ª	_@iÊo?ê‚ @†•t¬	_@”~	ü‚ @58Qq_@°‰{ü‚ @\0\0\0±áñ_@™ Ö¿£‚ @¼9ñ_@Í´;ø‘‚ @¡^5Ró_@ªÎé‘‚ @¼âTó_@¸]h±£‚ @±áñ_@™ Ö¿£‚ @\0\0\0ÛY²ÇÚ_@}Ønˆ’‚ @1dãÅÚ_@@ÍÓÀ€‚ @}Ý_@=#j²€‚ @ê’ÕÝ_@¾z’‚ @ÛY²ÇÚ_@}Ønˆ’‚ @\0\0\0™¹àw3_@ÖÙ:Lº‚ @Ê÷«y3_@ÇuÚÌ‚ @ëÿ‡>1_@*&"Ì‚ @}Î¼<1_@~†Zº‚ @™¹àw3_@ÖÙ:Lº‚ @\0\0\0ë–o„3_@ò—Á6ƒ @ã:†3_@7‰Hƒ @Ú‘K1_@¡ƒ—Hƒ @pRKI1_@òäÏ6ƒ @ë–o„3_@ò—Á6ƒ @\0\0\0º5¼@_@OFØ´‹ @ï¥iº@_@Ûâ8íy @GŒõB_@ëÞy @ÕX÷B_@ØâŠ¦‹ @º5¼@_@OFØ´‹ @\0\0\0.Ûô²z_@éÈ’ @·UÒwx_@U¡ @à»vx_@R)Ù\r @+Aã:v_@c¨×ç\r @¶9v_@©­9 ü€ @$9tx_@@>ãü€ @à»vx_@R)Ù\r @“4(±z_@D*Ë\r @.Ûô²z_@éÈ’ @£^î|_@ÈÃp„ @äï|_@j‹L1 @9¢+_@í»¶=1 @[fÓ,_@ÖqTC @, ._@°%òÌT @§ôl0_@n×”f @&@Jõ|_@åÕç¢f @Ä„}ó|_@~JÛT @ÛZ¸z_@˜¡éT @g.Ž¶z_@mÊ"C @ËƒÁ´z_@4õeZ1 @.Ûô²z_@éÈ’ @\0\0\0MÀFN_@K,ËÇ€ @ñ"{	N_@«.¶€ @çDP_@b$>õµ€ @,iFP_@31Ý¼Ç€ @%Ø4HP_@í;|„Ù€ @«_\rN_@teË’Ù€ @MÀFN_@K,ËÇ€ @\r\0\0\0åÆò2Y_@šÐœƒÇ€ @»é&1Y_@Jþ»µ€ @’[/Y_@ç1_ô£€ @g5-Y_@u_À,’€ @Öp±h[_@õwo’€ @ìŒåf[_@³ÐV€€ @•¹¢]_@‡uH€€ @CªÓ£]_@Å*’€ @ñœŸ¥]_@óÝ¼×£€ @¡‘k§]_@[Ÿµ€ @Pˆ7©]_@>úfÇ€ @œ(n[_@5ºKuÇ€ @åÆò2Y_@šÐœƒÇ€ @\0\0\0‹HKã|_@°ê½Ö´€ @8¡~á|_@› £€ @WÉ _@bÂÈ\0£€ @n}m_@ÏˆfÈ´€ @‹HKã|_@°ê½Ö´€ @\0\0\0ù÷lòV_@Dá;’€ @`Ä8ôV_@VÃ¯¤€ @Æ’öV_@[£NÊµ€ @.cÐ÷V_@Kí‘Ç€ @wý­¼T_@LÌ= Ç€ @Ò9âºT_@¹ÞžØµ€ @ÜÞ¿R_@g´îæµ€ @ú)ô}R_@"µO¤€ @ÈÙÑBP_@}Ÿ-¤€ @¨3AP_@‰\0f’€ @‹:?P_@†ñ`ž€€ @ÛVN_@ðÌ¯¬€€ @€ÁLN_@<¨ån€ @mín=P_@pÜÁÖn€ @NM£;P_@KÅ"]€ @wjÅvR_@p£Ó\0]€ @¡…ç±T_@ä„ò\\€ @D?³³T_@É#ºn€ @çú~µT_@ž	Â€€ @”-¡ðV_@!ýqs€€ @ù÷lòV_@Dá;’€ @\0\0\0"`E_@´Açå€€ @Ñ ±RG_@ý™×€€ @ßÓI_@³RLÉ€€ @W]ŸI_@””ë’€ @æ}TG_@ŠN9Ÿ’€ @ø„HVG_@ùØf¤€ @Å*&E_@Ý&u¤€ @sÄZE_@Ð¢†­’€ @"`E_@´Açå€€ @smÜB_@« 4ô€€ @äÇ¡ÚB_@à­”,o€ @öŸ@_@‰á:o€ @+I´@_@“As]€ @UtÖØB_@9õd]€ @øE_@Hy¨V]€ @ÐýÃE_@†ÞGo€ @"`E_@´Açå€€ @\0\0\02Üî9_@dòÃeo€ @·þãï9_@Ÿ£c-€ @	²Á´7_@#†®;€ @Fœö²7_@LÅto€ @2Üî9_@dòÃeo€ @	\0\0\0Á&]X\r_@luiÉ€ @T\'Z\r_@ÅJ1Û€ @¢Ÿ_@S‰Y?Û€ @:_@›¸wÉ€ @Á&]X\r_@luiÉ€ @tû’V\r_@U‹Ô¡·€ @]”µ‘_@9‘“·€ @lÌ“_@j×1[É€ @Á&]X\r_@luiÉ€ @\0\0\0\0\0\0\0\0\0Ï¢¥)_@ºkÛ… @Qî_@Ú[Û… @ßÜIð_@Q`üVí… @j;p+_@tâµHí… @Ï¢¥)_@ºkÛ… @\0\0\0\0\0\0\0\0\0`Üpï!_@:©ÕÚ… @Ž¢J´_@;nôãÚ… @³Ç¶_@š9”«ì… @L<ñ!_@ÛõHì… @`Üpï!_@:©ÕÚ… @\0\0\0\0\0\0\0\0\0ZÈàó_@TþÂÿ… @À ó_@šý!Éí… @#{Ló_@Ôú€Ü… @n&Úð_@»ÔÃÜ… @D0ðÛð_@çd×í… @KºÝð_@V÷Ÿÿ… @ZÈàó_@TþÂÿ… @\0\0\0\0\0\0\0\0\0‚ò¼¡_@Aµ\',í… @õ—–f	_@Äþn:í… @T?ah	_@ßcÿ… @¨¦‡£_@Ê\nÈóþ… @‚ò¼¡_@Aµ\',í… @\0\0\0\0\0\0\r\0\0\0ZÈàó_@TþÂÿ… @òñª\Zó_@ïücX† @‡uó_@†ù #† @K?ó_@ô¥ç4† @„§ãð_@·éõ4† @NÊâäð_@º#Š½F† @®z	 ó_@ƒìF¯F† @)0[õ_@vO¡F† @¶ìeYõ_@ŽfbÙ4† @Z²›Wõ_@•{Á#† @üyÑUõ_@Ž J† @ŸCTõ_@~Ÿ‚ÿ… @ZÈàó_@TþÂÿ… @\0\0\0\0\0\0\0\0\0ÐvJ?A_@6Ú5¡† @›qAA_@Þ¤Ôh¯† @É&=|C_@¾‚Z¯† @5qzC_@ýä’† @ÐvJ?A_@6Ú5¡† @\0\0\0\0\0\0\0\0\01¢bü_@MGú#±† @3˜ü_@v™Y\\Ÿ† @æÆÍü_@Žé¸”† @cë¦Øù_@Wöý¢† @‚ÜÖù_@Ú4]Û{† @ 1Õù_@Bq¼j† @º×GÓù_@˜«LX† @ !˜÷_@Ý#`ZX† @ggú\\õ_@L6¤hX† @¼§Ä^õ_@E0j† @®më™÷_@ù\0"j† @È¼µ›÷_@=Ì¡é{† @ã\r€÷_@HB±† @ú`JŸ÷_@NlãxŸ† @BKqÚù_@ÎµžjŸ† @­;Üù_@3s?2±† @¶¡÷_@A9„@±† @#\rß¢÷_@&%Ã† @ûÞù_@‰.àùÂ† @Õ-ü_@óšëÂ† @1¢bü_@MGú#±† @\0\0\0\0\0\0-\0\0ÐvJ?A_@6Ú5¡† @~~=A_@{\r—Ù‹† @8‡²;A_@»>øz† @k’æ9A_@ßmYJh† @ŸŸ\Z8A_@ñšº‚V† @Ô®N6A_@óÅ»D† @À‚4A_@äî|ó2† @;Ó¶2A_@ÅÞ+!† @nèê0A_@•:?d† @¤ÿ/A_@_] œý… @5EjC_@¬OŽý… @uAyhC_@öB°Æë… @ãO­fC_@3qÿÙ… @ºiÓ¡E_@èß¿ðÙ… @`m E_@®!)È… @s;žE_@cU‚a¶… @PqaÙG_@}0S¶… @0l•×G_@ÆÄ‘‹¤… @iÉÕG_@ø	óÃ’… @ñgýÓG_@MTü€… @Óh1ÒG_@6Žµ4o… @´keÐG_@5Ím]… @(‹J_@šÝÄ^]… @7 ¿	J_@)*&—K… @R\ZóJ_@¦t‡Ï9… @n\'J_@½è(… @‰[J_@nJ@… @¤J_@¸G«x… @ÀÃ\0J_@ý‰±ò„ @Ü\Z÷þI_@\'Êméà„ @ø +ýI_@?Ï!Ï„ @ÂÊÂG_@èz 0Ï„ @£ß9ÀG_@R§h½„ @3”…E_@‘¤Òv½„ @Ü·HƒE_@M¿3¯«„ @…Ý|E_@÷×”ç™„ @j¢¼G_@ôùCÙ™„ @M*ÖºG_@+ ¥ˆ„ @0G\n¹G_@TDJv„ @‰]/ôI_@Ãµ;v„ @mMûõI_@üëSˆ„ @Šn 1L_@Rõ‡„ @¨ElN_@?R°æ‡„ @™nN_@+ýN®™„ @üÂ6©P_@þ‡üŸ™„ @0Ý«P_@:!›g«„ @Ú(æR_@£6HY«„ @ßê[äR_@­©‘™„ @ÃU_@ElVƒ™„ @ß´U_@9ð·»‡„ @D¯èU_@rôu„ @ì¢ÃàR_@Ÿ“lv„ @ô÷ÞR_@ÛÎ:d„ @…\ZU_@ûñz,d„ @ÇUPU_@»oÜdR„ @úb+ÝR_@ûq/sR„ @F_ÛR_@\rÞ«@„ @+“ÙR_@\rHòã.„ @N¸U_@eŸÕ.„ @‘ÞëU_@ŸÜ\0„ @ÔºU_@RbF„ @‹xDLW_@š(8„ @	JxJW_@©«ppùƒ @‰¬HW_@´,Ò¨çƒ @µ¿ÐƒY_@«¼~šçƒ @pˆ‚Y_@;KàÒÕƒ @,S8€Y_@¹×AÄƒ @èl~Y_@)b£C²ƒ @Â™¹[_@?»O5²ƒ @»[Ä·[_@@S±m ƒ @¥îŸ|Y_@ˆê| ƒ @a¿ÓzY_@Ôpf´Žƒ @’yY_@õÇì|ƒ @Þf;wY_@Iw)%kƒ @ž=ouY_@f÷Š]Yƒ @œK:W_@eêÝkYƒ @<W_@êy|3kƒ @”<ã=W_@Tû|ƒ @å¾U_@Ò³m	}ƒ @¿øŠU_@×NÑŽƒ @vWU_@Ìçª˜ ƒ @0&#U_@°~I`²ƒ @R¦þÌR_@Lô›n²ƒ @G³ÊÎR_@¿˜:6Äƒ @<Â–ÐR_@";ÙýÕƒ @Õ&r•P_@9j+Öƒ @+>—P_@,\ZÊÓçƒ @Ù€\\N_@óâçƒ @Czå]N_@“°º©ùƒ @QÁÀ"L_@^3¸ùƒ @_œçI_@bP]Æùƒ @@ègéI_@+ü„ @"Ì3ëI_@¯›U„ @²ÿìI_@<Ú9/„ @¿ÎÚ±G_@UÀŠ+/„ @£õ°G_@)Úëc„ @†C®G_@íñLœ„ @lIw¬G_@ ®Ôùƒ @Pv«ªG_@M\rèƒ @4¥ß¨G_@ß,pEÖƒ @žHäI_@Þ”7Öƒ @&ÐåI_@­s¾þçƒ @ªÔô L_@Hfmðçƒ @Ù€\\N_@óâçƒ @l‰MZN_@‹3}\ZÖƒ @”XN_@èqÞRÄƒ @˜ µVN_@6®?‹²ƒ @º\Z‘L_@ƒò™²ƒ @6ÅL_@!òÑ ƒ @pSùL_@­ES\nƒ @Ír-L_@)l´B}ƒ @)”aL_@Ÿ{kƒ @„·•L_@ú²v³Yƒ @oq×I_@jCÇÁYƒ @£¡¥ÕI_@T(úGƒ @ÄÕÙÓI_@²b‰26ƒ @åÒI_@<oêj$ƒ @/èé–G_@k:y$ƒ @H¥µ˜G_@#nÙ@6ƒ @Ìr‘]E_@Ó)O6ƒ @vÂÅ[E_@!Š‡$ƒ @Àš¡ C_@q1Ù•$ƒ @q}å@_@\0ü\'¤$ƒ @=Ü±ã@_@ÈˆÜƒ @I½¨>_@8×êƒ @Vœim<_@¨%ùƒ @˜5o<_@Û_ÄÀ$ƒ @Ú”\0q<_@ÿ°cˆ6ƒ @Ìr<_@\0PHƒ @_•—t<_@M¢Zƒ @¡cv<_@˜Aßkƒ @ly‡±>_@ŠZóÐkƒ @qS³>_@Ç“’˜}ƒ @á.x<_@ßàà¦}ƒ @#%úy<_@±\'€nƒ @e®Å{<_@rl6¡ƒ @¦9‘}<_@"¯¾ý²ƒ @èÆ\\<_@Âï]ÅÄƒ @Šgº>_@8d·Äƒ @’M¼>_@,“®~Öƒ @ú®q÷@_@A’_pÖƒ @ÆY=ù@_@ˆ¯þ7èƒ @‘	û@_@²Êÿùƒ @†É-6C_@ÈDNñùƒ @…ù7C_@PNí¸„ @¦BÅ9C_@ÇUŒ€„ @)f þ@_@ìúÛŽ„ @]µÔü@_@×ã<Ç„ @‘	û@_@²Êÿùƒ @ŸAä¿>_@Öêì\rúƒ @¥ã¯Á>_@˜ŒÕ„ @ë‹†<_@’ÝÚã„ @,§Vˆ<_@ßz«„ @°Ä1M:_@¬‡È¹„ @+QýN:_@…Ëg/„ @m@"Š<_@\ZHs/„ @®Ûí‹<_@Gz¸:A„ @¥ßÈP:_@M\rIA„ @á£8_@Š:UWA„ @Qeo8_@Û‰ôS„ @!p”R:_@M¦S„ @›`T:_@«ŠEØd„ @—+V:_@6ÆäŸv„ @n¹P‘<_@]–‘v„ @®\\“<_@F.5Yˆ„ @íè”<_@VÔ š„ @-©³–<_@ç{sè«„ @ÚïØÑ>_@q%$Ú«„ @ß¥¤Ó>_@Œ9Ã¡½„ @ä]pÕ>_@—KbiÏ„ @ê<×>_@’[1á„ @ðÓÙ>_@{i øò„ @õ‘ÓÚ>_@Hu?À… @k®Ÿ<_@ÌÎ… @¬¾y¡<_@13.–… @êsE£<_@ƒJÍ](… @)+¥<_@È_l%:… @O|ëi:_@QÍ»3:… @È(·k:_@ðZûK… @@×‚m:_@ÚúÂ]… @×]28_@Ì7IÑ]… @‰°(48_@fè˜o… @;Vô58_@?’‡`… @ìý¿78_@f¼&(“… @1šü5_@X¬u6“… @¨eþ5_@\näþ¤… @G1\06_@©´Å¶… @ïçü6_@8MSÈ… @áÌÖÆ3_@*¢›È… @Ð¯°‹1_@JYð©È… @-9|1_@ý©qÚ… @W\rVR/_@ä¦ÝÚ… @í‹!T/_@}Gì… @íU/_@Iaþ… @ÅÆ\Z-_@‘jþ… @ë:’-_@7	å† @Àäká*_@DáVó† @ÆO7ã*_@~Xöº!† @Ì¼å*_@©Í•‚3† @KÜ©(_@çâ3† @T­§«(_@Åi‚XE† @×,p&_@ò,ÏfE† @M„Lr&_@*½n.W† @õ%7$_@*»<W† @¶Añ8$_@ÚÇZi† @«£Êý!_@‹Þ¦i† @‘å•ÿ!_@Ñ‰FÚz† @À8oÄ_@DJ’èz† @ï‰H‰_@à¤Ýöz† @E´‹_@6m}¾Œ† @®öìO_@‘qÈÌŒ† @\Z7Æ_@ÛŒ† @…uŸÙ_@ÅH]éŒ† @ƒ{jÛ_@Ö=ý°ž† @)«C _@B G¿ž† @ð±xž_@§÷Œ† @¸º­œ_@ô0{† @„qÔ×_@°Q½!{† @Q&û_@–(s{† @Š0_@ù>ÓKi† @‚o	Ö_@~XZi† @€o>Ô_@;]}’W† @¿\ne_@KS3„W† @õÿ™\r_@e“¼E† @)÷Î_@½uóô3† @ÙvõF_@"%©æ3† @Fc*E_@×B	"† @]ð\n_@ÝƒS-"† @r{ÝÎ_@_;"† @kƒÍ_@Š[ýs† @ë8_@í³e† @¿èm_@ø™žþ… @B”A_@xÉþ… @x™º|_@nð~þ… @ïz_@…ß¹ì… @…4É?_@Ÿ)Èì… @í(þ=_@¥‰\0Û… @é×_@Ä§ÓÛ… @Q§±Ç_@£DÛ… @„c‹Œ_@¯{f+Û… @ÇHVŽ_@ø”óì… @5ö/S_@ÇuOí… @£¡	_@Âð—í… @WoÔ_@&\'8×þ… @¯ÐúT_@—œïÈþ… @(­ÅV_@JÁ† @\n?Ÿ_@l[Øž† @ëÎxà\r_@º ­† @Õ“Câ\r_@ŽÑÀt"† @ð§_@œ¯ƒ"† @Ïç¨_@óþ¨J4† @iAÁm	_@¾†ðX4† @Âð‹o	_@–ã F† @UTe4_@ Ø.F† @åµ>ù_@Ôà=F† @±M	û_@½Z¿X† @xçÓü_@—Ò_Ìi† @vŸú7_@Àç¾i† @HÅ9_@÷M¹…{† @@ƒžþ_@_H\0”{† @xçÓü_@—Ò_Ìi† @~-­Á_@˜W¦Úi† @|¼wÃ_@ñÜF¢{† @{MBÅ_@.`çi† @xàÇ_@fá‡1Ÿ† @(þå‹\0_@C/Î?Ÿ† @\\†°\0_@ù½n±† @G•‰Rþ_@Žµ´±† @°TTþ_@ÅQUÝÂ† @{\0_@ JÏÂ† @m¢Ê_@¢ÝÈÀÂ† @NÉ_@Ì\n‚²Â† @0þï@_@ Ò:¤Â† @ô|	_@š3ó•Â† @öç=·_@</«‡Â† @ÛÙdò\r_@ÅbyÂ† @ÄÉ‹-_@úôkÂ† @«·²h_@¿Ð\\Â† @•£Ù£_@W#‡NÂ† @€\0ß_@Â!=@Â† @lu\'\Z_@Uºò1Â† @V[NU_@í§#Â† @D?u_@ó¹\\Â† @2!œË_@þ Â† @!Ã"_@2"ÅøÁ† @ßéA$_@½xêÁ† @»}&_@ó+ÜÁ† @ó”7¸(_@½ÂÞÍÁ† @äl^ó*_@,‘¿Á† @ÖB….-_@Œ0C±Á† @É¬i/_@°Îô¢Á† @½èÒ¤1_@ü¦”Á† @dE£1_@%ÑÍ¯† @‘.Þ3_@2³·¾¯† @¼ÉT6_@j/h°¯† @éˆ{T8_@ÊE¢¯† @F¢:_@RöÇ“¯† @BÉÊ<_@Aw…¯† @oºï?_@Ü%&w¯† @kÌ#?_@—K‡¯† @ÐvJ?A_@6Ú5¡† @\0\0\0][ð­>_@Îá´AHƒ @VÏ$¬>_@W¢z6ƒ @ÔIç@_@ì-Çk6ƒ @Ÿ é@_@Ç]f3Hƒ @][ð­>_@Îá´AHƒ @\0\0\0šàÞŒ_@†3†ž† @ðªŽ_@Å÷¼M°† @Ê7ƒS_@K\\°† @=¸Q_@xGh”ž† @šàÞŒ_@†3†ž† @\0\0\0î£ç\r_@¨Š¡ËW† @¦#Ùå\r_@OF† @ºÿ _@þë¸õE† @N&\\_@!#pçE† @3ñ]_@œ?¯W† @È‘Ê"_@Y½W† @î£ç\r_@¨Š¡ËW† @');

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
(1, 1, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0#\0\0\0³`ö“_@á-PBW‚ @øXL°_@ãhËhµ‚ @‘õ\nòÂ_@èKGæË‚ @ãÖ„WÓ_@Äee‡ß‚ @¸ªNæ_@<lŸQó‚ @ÍRñIæ_@Ì£Jº‚ @ºÞ\r,æ_@o¬ç}‚ @ÑY€ô_@\rNöK‚ @ÏÛ³àú_@\\O‘Ü8‚ @Ü¡¦._@%Qºf%‚ @ËÌÇº_@p,2¤ @©(\\	\n_@Ò{ÿÜ @ß™®¾_@^ç“{ @ýŽ«_@ã/uk” @ÚlX_@®ó>eÔ @ƒ+ü_@OQ›\0Ä @*s\\º&_@¬5ûŽ® @1I÷·-_@\ZÑ™ @F¥N3_@Ì×÷… @ËœíA8_@³û÷½. @Óv©6_@\rÏKÆ€ @R<Ÿ/_@ûOåž€ @ùü²*_@W„Ot€ @ÅÇs _@û”u<[€ @\n¨¯ö_@(«"S€ @:Ê0_@Îœ?Vc€ @X‹»b\n_@¶§­d€ @Þ0|í_@çoÓ0€ @8ºXâ_@a‡1~¥€ @3dÏ_@ïç×\0 @	$íz·_@Ê\'ßŽK @f>ˆš¦_@¶¨ö† @ê¥œ_@š‰<Ñ° @ÁÃ‹–_@«rÜ @³`ö“_@á-PBW‚ @'),
(2, 2, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\03×j¯º_@\nË-!~€ @ØCõóº_@z"ƒ¤€ @	÷bº_@ôYåè€ @ÖüfÐ¸_@ûU7î @	$íz·_@Ê\'ßŽK @3dÏ_@ïç×\0 @8ºXâ_@a‡1~¥€ @·N@è_@©Î&h—€ @VÂüÞç_@¤µ½{€€ @`”£³ç_@3)ÿh€ @éâí.æ_@"]ïI€ @jº×Uâ_@î\0UÛ\n€ @i±ææÞ_@ÍËuá @DÑzÜ_@ßôŸÃ @ï‘¿„×_@"‰ßÔ @UoË|Ð_@HH±wï @\nÀòlÌ_@—,Tzß @3ó„eÇ_@$Xádý @y›mÈ_@ôƒJÖ<€ @3×j¯º_@\nË-!~€ @'),
(3, 3, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0	$íz·_@Ê\'ßŽK @ÖüfÐ¸_@ûU7î @	÷bº_@ôYåè€ @ØCõóº_@z"ƒ¤€ @3×j¯º_@\nË-!~€ @yÅcÈ¹_@\rË,U"€ @Mx†‡·_@#øyóÃ @qÇ#:µ_@Â¿b„ @Boô˜_@È+ó+€ @\'"Dß–_@‹üCÈR€ @÷ll_@bs³É @i“=Ùq_@Ð ÎÕd @›/ §x_@Ë‹·DË @?KpG~_@\\uoú @mÑ„_@š7¯¯(‚ @³`ö“_@á-PBW‚ @ÁÃ‹–_@«rÜ @ê¥œ_@š‰<Ñ° @f>ˆš¦_@¶¨ö† @	$íz·_@Ê\'ßŽK @'),
(4, 4, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0\rf_ð½_@E9¶` @NL	Ñ_@ßtóY– @ð‘¿„×_@"‰ßÔ @DÑzÜ_@ÚôŸÃ @­_@LO—%[ @ãF¶Ë\n_@Ã§ð-h~ @š\'°Í_@x9ƒ  @\rf_ð½_@E9¶` @'),
(5, 5, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\03×j¯º_@\nË-!~€ @y›mÈ_@ôƒJÖ<€ @3ó„eÇ_@$Xádý @\nÀòlÌ_@—,Tzß @UoË|Ð_@HH±wï @ï‘¿„×_@"‰ßÔ @ð‘¿„×_@"‰ßÔ @é‘¿„×_@"‰ßÔ @OL	Ñ_@ßtóY– @\rf_ð½_@E9¶` @qÇ#:µ_@Â¿b„ @Mx†‡·_@#øyóÃ @yÅcÈ¹_@\rË,U"€ @3×j¯º_@\nË-!~€ @3×j¯º_@\nË-!~€ @'),
(6, 6, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0X‹»b\n_@¶§­d€ @\n¨¯ö_@(«"S€ @ÅÇs _@û”u<[€ @ùü²*_@W„Ot€ @ùü²*_@W„Ot€ @ön2Ò3_@\0´Kž€ @Í@»Ü+_@h½Î Š @.*™1)_@—&°*S @\0­_@BO—%[ @N˜Ì³_@]$Á5Z @\ZDÑzÜ_@äôŸÃ @k±ææÞ_@ÈËuá @lº×Uâ_@é\0UÛ\n€ @ëâí.æ_@!]ïI€ @^”£³ç_@.)ÿh€ @X8kè_@–C—€ @ß0|í_@ÜoÓ0€ @X‹»b\n_@¶§­d€ @'),
(7, 7, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0qÇ#:µ_@Â¿b„ @\rf_ð½_@E9¶` @š\'°Í_@x9ƒ  @O}È|_@$Gh~ @)X3_@Øâ»g~ @¾ƒœ	_@+ŠWr<~ @Îñø¸ø_@·*…~ @T&Óð_@²ø·Y4~ @;mRé_@Z—ç’H~ @cÃkå_@ÊNüG~ @ß¼”5ß_@Q |Ú=~ @BAÔÚ_@b=ç.~ @Àw‹Ö_@Q.v~ @âúÓ_@ÍH¢áô} @€‘MÄ_@2¥	~ @}ÊI]®_@L’Eãø} @ˆ­O\n¨_@E!tT~ @¹…Ä¤_@ï!_¡~ @ç›­_@"Úgû~ @Mí ‚±_@¦ˆŠÇ? @Mí ‚±_@¦ˆŠÇ? @qÇ#:µ_@Â¿b„ @'),
(8, 8, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0÷ll_@bs³É @\'"Dß–_@‹üCÈR€ @Boô˜_@È+ó+€ @qÇ#:µ_@Â¿b„ @Mí ‚±_@¦ˆŠÇ? @ç›­_@"Úgû~ @¹…Ä¤_@ï!_¡~ @7"P	_@QÇ¸h% @u&-ò_@áÆJ¬ì~ @æÜúW_@ß„Þ› @\nP}{[_@ëlBÓ.€ @Jô=ªb_@l—Í?T€ @Jô=ªb_@l—Í?T€ @÷ll_@bs³É @'),
(9, 9, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0¹…Ä¤_@ï!_¡~ @‡Ì< _@ô¿žM|~ @‡Ì< _@ô¿žM|~ @ýl™Šš_@@Ús&V~ @áò*ÒŒ_@›äÍ|\0~ @uŠ–Îƒ_@’–)TÜ} @?Ò)V€_@z0q~ @÷+p€_@Gò-.)~ @´o2âƒ_@7nN~~ @¨5s‚v_@GŠC9¦~ @ÏµÖ„u_@¨Öo	´~ @¹µÚþt_@èðbrÀ~ @u&-ò_@áÆJ¬ì~ @u&-ò_@áÆJ¬ì~ @7"P	_@QÇ¸h% @¹…Ä¤_@ï!_¡~ @'),
(10, 10, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0¹…Ä¤_@ï!_¡~ @ˆ­O\n¨_@E!tT~ @}ÊI]®_@L’Eãø} @i3¹%±_@Š¦Bæn} @¦Žo*±_@Y%”On} @™ä†¹™_@ÿÞË} @K ˆu_@V’©ê| @K ˆu_@V’©ê| @K ˆu_@V’©ê| @uŠ–Îƒ_@’–)TÜ} @uŠ–Îƒ_@’–)TÜ} @áò*ÒŒ_@›äÍ|\0~ @ýl™Šš_@@Ús&V~ @‡Ì< _@ô¿žM|~ @¹…Ä¤_@ï!_¡~ @'),
(11, 11, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0´o2âƒ_@7nN~~ @÷+p€_@Gò-.)~ @÷+p€_@Gò-.)~ @?Ò)V€_@z0q~ @uŠ–Îƒ_@’–)TÜ} @uŠ–Îƒ_@’–)TÜ} @\npC‚r_@	¾_k£} @dVBÓ__@>§;!~ @dVBÓ__@>§;!~ @seþ"j_@U/æï~ @?Yçøp_@ ;j~ @¹µÚþt_@èðbrÀ~ @ÏµÖ„u_@¨Öo	´~ @¨5s‚v_@GŠC9¦~ @´o2âƒ_@7nN~~ @'),
(12, 12, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0u&-ò_@áÆJ¬ì~ @¹µÚþt_@èðbrÀ~ @¹µÚþt_@èðbrÀ~ @?Yçøp_@ ;j~ @seþ"j_@U/æï~ @dVBÓ__@>§;!~ @“/UeT_@j>énÞ} @n\0~?_@ bÅVó~ @…ñyHM_@Ý(ÙJ @æÜúW_@ß„Þ› @u&-ò_@áÆJ¬ì~ @'),
(13, 13, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0	\0\0\0\nP}{[_@ëlBÓ.€ @\nP}{[_@ëlBÓ.€ @æÜúW_@ß„Þ› @…ñyHM_@Ý(ÙJ @n\0~?_@ bÅVó~ @9 >5_@O»fòi @9 >5_@O»fòi @eˆ{WO_@ÖZˆ/€ @\nP}{[_@ëlBÓ.€ @'),
(14, 14, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0K ˆu_@V’©ê| @K ˆu_@V’©ê| @™ä†¹™_@ÿÞË} @IÛŠ™ _@VC3Ñ| @¹h6½¦_@P5PÌ| @³&¶¢ª_@Ðõ™Öš| @\\\nòŽ³_@rµ¤| @aÛvTº_@¨ç	|€{ @Ôêsêª_@ûÕSy|{ @Mÿ-{ž_@qnrt{ @ÅxTWw_@4es~¦| @K ˆu_@V’©ê| @'),
(15, 15, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0K ˆu_@V’©ê| @K ˆu_@V’©ê| @ÅxTWw_@4es~¦| @³K«J__@:îÁ@} @=¶ôU_@p¢Q/P} @tTërP_@	¤M‰k} @“/UeT_@j>énÞ} @dVBÓ__@>§;!~ @\npC‚r_@	¾_k£} @uŠ–Îƒ_@’–)TÜ} @K ˆu_@V’©ê| @'),
(16, 16, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0³K«J__@:îÁ@} @ÅxTWw_@4es~¦| @Mÿ-{ž_@qnrt{ @‰˜.¬Ž_@vZ‹{ @ŒXò_}_@ˆð\\U{ @èZ·r_@Óß…%{ @3Þ¾R_@&{éd| @3Þ¾R_@&{éd| @q)yW_@´¸âª| @­E–X]_@@	£è| @³K«J__@:îÁ@} @'),
(17, 17, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\r\0\0\03Þ¾R_@&{éd| @3Þ¾R_@&{éd| @èZ·r_@Óß…%{ @§<æg_@°—Y†{ @¤åÙ^_@ÏÇ\'A{ @):{V_@%/«k{ @SJËŠ?_@ŒkÄîé{ @$õ‚9_@–¡†W| @Ä¶=_@Ô@Æ| @8ŠØ¼A_@ÆzfÅ3| @=ýPëH_@¾\\AZ| @á!~N_@ë†\nt| @3Þ¾R_@&{éd| @'),
(18, 18, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0âúÓ_@ÍH¢áô} @ó®Q<Ó_@~ßSIÐ} @x(-\\Ò_@­bWT²} @\Z¢ÒÑ_@kJ€x} @hi}0Ó_@ÉâÔÀI} @(gT±Ø_@`p`™(} @#lYß_@ëšbç	} @€2ó‰á_@mû»Ø| @æ®G8à_@(3™Ÿ| @]d~Ö_@?ÆáÃ| @EÃË_@ÓÀ| @ŒpðÁ_@íu)ç³| @\\\nòŽ³_@rµ¤| @³&¶¢ª_@Ðõ™Öš| @¹h6½¦_@P5PÌ| @IÛŠ™ _@VC3Ñ| @™ä†¹™_@ÿÞË} @¦Žo*±_@Y%”On} @}ÊI]®_@L’Eãø} @€‘MÄ_@2¥	~ @âúÓ_@ÍH¢áô} @'),
(19, 19, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0\\\nòŽ³_@rµ¤| @ŒpðÁ_@íu)ç³| @EÃË_@ÓÀ| @]d~Ö_@?ÆáÃ| @æ®G8à_@(3™Ÿ| @×ÛúÝ_@)Úšd| @†¡uÝØ_@!,†0| @×bˆ7Õ_@C(ËV| @sîÌÍ_@öÂùÞÂ{ @&c|É_@\Z¬Mªœ{ @r¢É.Æ_@`dKƒ{ @£.û\\À_@¥O¸Ü}{ @aÛvTº_@¨ç	|€{ @\\\nòŽ³_@rµ¤| @'),
(20, 20, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0eˆ{WO_@ÖZˆ/€ @9 >5_@O»fòi @9 >5_@O»fòi @Èc—/_@›éiŒ~ @ñ@9_@¶Æ\\§~ @ñäì_@·1¶’¿~ @o?¾_@&\\Oð~ @¸?Ó¹_@ùLz¾* @Ó0£D\Z_@ïãc°u @úâ:~_@„Èß’ @ôGŸ1_@\'§±ê´ @b]5&_@¡RzÒá @*â°ì_@nE‰º	€ @)¸ 0!_@©zuÈ€ @už×c _@°è¶/€ @@\Z_@›ÐE+1€ @~g£A_@5^5T0€ @eˆ{WO_@ÖZˆ/€ @'),
(21, 21, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0“/UeT_@j>énÞ} @½˜èÙQ_@,!Þ} @6×=-K_@à~ë} @l.Ô._@ÈuL~ @šÍ‘Ë(_@þâ3~ @l·qR_@6¼Ò!j~ @Èc—/_@›éiŒ~ @SÅ³%_@s¯hò~ @9 >5_@O»fòi @Þ‘f?_@º§^ãõ~ @“/UeT_@j>énÞ} @'),
(22, 22, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0\0\0\0ËœíA8_@³û÷½. @T¢>_@ã @âF$A_@£áû @lŠµOL_@·mò†ö€ @ÚÜPÂI_@4G>oç€ @/u	G_@/Ú#µÎ€ @“nD_@™Iú®€ @\\wXC_@.n“Z € @¯W„}B_@Àk{ëE€ @gì0o;_@+ïaX€ @ÕÑDn9_@ß¥¹¥[€ @;v¼Ô7_@à*{ÚO€ @`©¢4_@ó4£\'€ @ön2Ò3_@\0´Kž€ @ùü²*_@W„Ot€ @R<Ÿ/_@ûOåž€ @Óv©6_@\rÏKÆ€ @ËœíA8_@³û÷½. @'),
(23, 23, NULL, NULL, '\0\0\0\0\0\0\0\0\0\0P\0\0\0:¦wL_@ \rÒ½¾€ @/ÕYÑ_@¯rÏ½ì€ @ú)l?_@—ïID @¢ëÀˆ\0_@ÒÇ1 @ÒÚµ¢ö_@Ç«ÔU6‚ @šjÜ¶ê_@ð¢åûf‚ @%Øª£å_@\ZªäÄi‚ @0Ü¾.á_@.eÐám‚ @k¯3?¿_@K‰ù @.“V´_@‰üÃeÓ @qOù²_@MPdÏ @	«Ôk±_@-®Â#Ê @^Êôp¯_@^à8QÃ @l¿þu¯_@êå­Ù @…3€l¯_@m›òéé @+ºƒ|¯_@©5{àú @\\iyB®_@b#l‚ @ev­_@’ù7Z9‚ @ÄàÛ§_@:…#åZ‚ @Põ¦_@zunc‚ @ïÿÅC¤_@ˆ1w‚ @õK›æ¢_@+ûb·„‚ @F2e¡_@XSŠ•‚ @AVTj¡_@ùñ@\Z¦‚ @ëe¢\Z¢_@…Îoƒ @l»£ö¢_@F¿»\'ƒ @¤mfª_@Úëv–·ƒ @ÅªC«_@m®1Ïƒ @§h%2¯_@J—z¦ôƒ @5¯#e±_@Á:~M„ @(Sáé³_@ÎPü2„ @óÄ‹	µ_@£\ZHI=„ @\\<è\0¹_@Ka:c„ @ôs¥¿_@œý b¢„ @”;\'BÄ_@ÔK%Ù„ @_ÖëÊ_@Vò~ò… @(ø)Ó_@I,{… @Lè“TÙ_@u÷Oƒï… @–†õ¸æ_@üÛØ† @SÎ:7è_@š{D:ä† @5iJJè_@ä{Pd!‡ @ä,Í é_@èêÚ?‡ @Ž0,Îé_@”Q:×\\‡ @Dl=ð_@ÿPÏœ‡ @Ö,wø_@0×Š]©‡ @u[=þ_@V4gÁ‡ @Ê“{?_@\\ÿø“Ô‡ @µîMq_@²Ç4Lˆ @ èyM_@\rýÐì)ˆ @ÅB¹(_@(œNN‡ @ŽêõØ<_@XÏ-† @£ãŒ®C_@ÂÖxúÂ… @â}]ôF_@£ðgƒ… @\n¾€H_@.\ZÐ·E… @íáœöG_@£bB… @~(¹qC_@+žEÈÅ„ @g\\jž@_@úw¤!°„ @L„|à>_@6%ø®•„ @VB¬0<_@Qûdþe„ @!Lú±6_@ÿÒóá+„ @\0÷­3_@i)õçƒ @3â‹3_@‰GWUŸƒ @7Ld4_@Ô•¤\0ƒ @¸Ó.½3_@õ‹ƒ´‚ @xËs84_@M¹:Ð‚ @hª±ð5_@²R?‚ @(	=_@¥]mSÕ @ôÂ"?_@hòš @È”Í¡=_@ö©ƒ:H @:ER7=_@EÃ¬[ @{ 	>_@Ð<8â€ @x’Š%@_@±ê1lÄ€ @ftÑf@_@’À™€ @ãÛ½·?_@;9ñþ|€ @\n’SÔ@_@^ëi¨Y€ @~g£A_@5^5T0€ @@\Z_@›ÐE+1€ @ÆYQ_@Iô»“<€ @\Z×fÒ\r_@ÃaWÕj€ @:¦wL_@ \rÒ½¾€ @');

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
(39, 'Reymundo', 'YaÃƒÂ±ez', 'Nacua', '1972-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
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
(70, 'Melchor', 'CaÃƒÂ±arez', 'Racoma', '1970-11-12', 'Male', 'Living_in', '', 'HS', 'mason', 'per_day', '0', '0', NULL, NULL),
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
(248, 'AlienniÃƒÂ±o', 'Dionaldo', 'Maglasang', '1982-11-12', 'Male', 'Married', '', 'College', 'None', 'none', '0', '0', NULL, NULL),
(249, 'Recardo_Jr', 'Cabanlito', 'Sabadoya', '1982-11-12', 'Male', 'Married', '', 'College', 'None', 'none', '0', '0', NULL, NULL),
(250, 'Abdon', 'Maglasang', 'Mamuron', '1943-11-12', 'Male', 'Married', '', 'College', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(251, 'Mario', 'Maglasang', 'Mahurog', '1956-11-12', 'Male', 'Married', '', 'College', 'Retired', '', '0', '0', NULL, NULL),
(252, 'Renato', 'Cabadan', 'Nambatac', '1977-11-12', 'Male', 'Married', '', 'HS', 'Business', 'Casual', '0', '0', NULL, NULL),
(253, 'Loe', 'Gulang', 'dela_Santos', '1979-11-12', 'Male', 'Married', '', 'College', 'Seaman', 'permanent', '0', '0', NULL, NULL),
(254, 'Edita', 'Maglasang', 'Apaz', '1961-11-12', 'Female', 'Widow', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
(255, 'Arneil', 'Verano', 'Oliveros', '1968-11-12', 'Male', 'Separated', '', 'Vocational', 'Proprietor', 'self_employed', '0', '0', NULL, NULL),
(256, 'Gane', 'Ruawidas', 'Ditacamilto', '1983-11-12', 'Male', 'Living_in', '', 'College', 'Diser', 'permanent', '0', '0', NULL, NULL),
(257, 'Jhonmar', 'Ramos', 'Tubio', '1987-11-12', 'Male', 'Living_in', '', 'Vocational', 'Aircon_maintinance', 'Casual', '0', '0', NULL, NULL),
(258, 'Aloner', 'Mabime', 'YaÃƒÂ±ez', '1971-11-12', 'Male', 'Married', '', 'Vocational', 'Labor', 'Casual', '0', '0', NULL, NULL),
(259, 'Samuel', 'Llanez', 'YaÃƒÂ±ez', '1946-11-12', 'Male', 'Married', '', 'Elementary', 'Retired', 'self_employed', '0', '0', NULL, NULL),
(260, 'NiÃƒÂ±o', 'Jocsing', 'Gabino', '1983-11-12', 'Male', 'Married', '', 'HS', 'Const_worker', 'Casual', '0', '0', NULL, NULL),
(261, 'Jay', 'Llanez', 'YaÃƒÂ±ez', '1953-11-12', 'Male', 'Separated', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(262, 'Juan', 'YaÃƒÂ±ez', 'Maglasang', '1975-11-12', 'Male', 'Widow', '', 'College', 'Engineer', 'permanent', '0', '0', NULL, NULL),
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
(344, 'DelapiÃƒÂ±a', 'Villaver', 'Cantomaria', '1964-11-12', 'Male', 'Married', '', 'College', 'None', '', '0', '0', NULL, NULL),
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
(365, 'Carlo', 'dela_PeÃƒÂ±a', 'Cabahug', '1979-11-12', 'Male', 'Living_in', '', 'HS', 'farming', 'Casual', '0', '0', NULL, NULL),
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
(452, 'Nio', 'Dayundong', 'ArceÃƒÂ±a', '1981-11-12', 'Male', 'Living_in', '', 'College', 'Secuirity', 'permanent', '0', '0', NULL, NULL),
(453, 'Henry', 'Sator', 'Laurenti', '1973-11-12', 'Male', 'Married', '', 'Vocational', 'driver', 'Casual', '0', '0', NULL, NULL),
(454, 'Arnold', 'Sator', 'Laurenti', '1966-11-12', 'Male', 'Married', '', 'HS', 'driver', '', '0', '0', NULL, NULL),
(455, 'Acioncion', 'Curpos', 'Estilone', '1968-11-12', 'Female', 'Widow', '', 'HS', 'business', 'self_employed', '0', '0', NULL, NULL),
(456, 'Estella', 'Cabiling', 'Lozano', '1968-11-12', 'Female', 'Widow', '', 'Elementary', 'Business', 'Casual', '0', '0', NULL, NULL),
(457, 'Pepito', 'Corpuz', 'Capangpangan', '1945-11-12', 'Male', 'Married', '', 'Elementary', 'retired', 'self_employed', '0', '0', NULL, NULL),
(458, 'Serhiyo', 'Pezon', 'Basonido', '1957-11-12', 'Male', 'Living_in', '', 'College', 'jobless', '', '0', '0', NULL, NULL),
(459, 'Judy_Ann', 'Putalan', 'Corpuz', '1987-11-12', 'Female', 'Married', '', 'Vocational', 'None', 'Casual', '0', '0', NULL, NULL),
(460, 'Andre_Serald', 'Bado', 'YbaÃƒÂ±ez', '1988-11-12', 'Male', 'Living_in', '', 'College', 'seaman', 'Casual', '0', '0', NULL, NULL),
(461, 'Allan', 'Bado', 'RoaÃƒÂ±ez', '1963-11-12', 'Male', 'Widow', '', 'HS', 'driver', '', '0', '0', NULL, NULL),
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
(485, 'Husita', 'Pepito', 'MonaÃƒÂ±es', '1952-11-12', 'Female', 'Widow', '', 'HS', 'house_wife', '', '0', '0', NULL, NULL),
(486, 'Provir', 'Tore', 'Pairat', '1985-11-12', 'Male', 'Single', '', 'College', 'teacher', 'permanent', '0', '0', NULL, NULL),
(487, 'Jhoqret', 'Quinte', 'Varga', '1984-11-12', 'Male', 'Living_in', '', 'HS', 'salesboy', '', '0', '0', NULL, NULL),
(488, 'Rolando', 'Apongan', 'Bado', '1946-11-12', 'Male', 'Married', '', 'College', 'retired', '', '0', '0', NULL, NULL),
(489, 'Albert', 'Aso', 'Garcia', '1979-11-12', 'Male', 'Living_in', '', 'Vocational', 'glass_intoller', 'permanent', '0', '0', NULL, NULL),
(490, 'Jenna', 'Payas', 'Oropisa', '1981-11-12', 'Female', 'Married', '', 'College', 'saleslady', 'Casual', '0', '0', NULL, NULL),
(491, 'Danny', 'Legaspi', 'Cagaanan', '1980-11-12', 'Male', 'Married', '', 'HS', 'operator', 'Casual', '0', '0', NULL, NULL),
(492, 'Nicanor', 'Pepito', 'Juntilla', '1974-11-12', 'Male', 'Married', '', 'HS', 'Carpenter', 'Casual', '0', '0', NULL, NULL),
(493, 'Teodoro', 'Aniasco', 'Coiroha', '1934-11-12', 'Male', 'Married', '', 'Elementary', 'retired', '', '0', '0', NULL, NULL),
(494, 'Juan', 'BroÃƒÂ±idor', 'Montibon', '1957-11-12', 'Male', 'Married', '', 'HS', 'None', '', '0', '0', NULL, NULL),
(495, 'Nestor', 'Flores', 'Gomunkig', '1975-11-12', 'Male', 'Living_in', '', 'HS', 'helper', 'Casual', '0', '0', NULL, NULL),
(496, 'Ernesto', 'Andos', 'Nentola', '1970-11-12', 'Male', 'Married', '', 'HS', 'labor', 'self_employed', '0', '0', NULL, NULL),
(497, 'Elbisito', 'Anding', 'Bukol', '1971-11-12', 'Male', 'Widow', '', 'HS', 'vendor', 'permanent', '0', '0', NULL, NULL),
(498, 'Reynaldo', 'Maglasang', 'Villamor', '1958-11-12', 'Male', 'Married', '', 'Elementary', 'panday_mason', 'self_employed', '0', '0', NULL, NULL),
(499, 'Mario', 'Maglasang', 'Incabo', '1975-11-12', 'Male', 'Living_in', '', 'HS', 'driver', 'permanent', '0', '0', NULL, NULL),
(500, 'Romel', 'Maliao', 'Yunglo', '1970-11-12', 'Male', 'Married', '', 'Elementary', 'driver', 'Casual', '0', '0', NULL, NULL),
(501, 'Alan', 'Amongos', 'Appay', '1976-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'self_employed', '0', '0', NULL, NULL),
(502, 'Clarito', 'Itom', 'Sanas', '1983-11-12', 'Male', 'Married', '', 'HS', 'barber', 'permanent', '0', '0', NULL, NULL),
(503, 'Arnel', 'GermoÃƒÂ±ea', 'Sumagang', '1987-11-12', 'Male', 'Living_in', '', 'HS', 'helper', '', '0', '0', NULL, NULL),
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
(521, 'Steban', 'ViÃƒÂ±a', 'Elcamel', '1973-11-12', 'Male', 'Married', '', 'College', 'OFW', 'Casual', '0', '0', NULL, NULL),
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
(677, 'Antonio', 'PacaÃƒÂ±a', 'Caay', '1968-11-12', 'Male', 'Married', '', 'College', 'teacher', 'Casual', '0', '0', NULL, NULL),
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
(767, 'Renato', 'LoreÃƒÂ±a', 'Mapa', '1955-11-12', 'Male', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(768, 'Francisco', 'Aying', 'Lumokso', '1957-11-12', 'Male', 'Married', '', 'HS', 'Timekeeper', 'Casual', '0', '0', NULL, NULL),
(769, 'Elsa', 'Entira', 'Balbotin', '1943-11-12', 'Female', 'Married', '', 'HS', '', '', '0', '0', NULL, NULL),
(770, 'Jesus', 'Vergara', 'Buca', '1947-11-12', 'Male', 'Married', '', 'College', '', '', '0', '0', NULL, NULL),
(771, 'Dolpa', 'Vergara', 'Bungas', '1927-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(772, 'Leonora', 'Cabasag', 'Balcot', '1961-11-12', 'Female', 'Widow', '', 'HS', '', '', '0', '0', NULL, NULL),
(773, 'Josepina', 'Hondina', 'Labo', '1929-11-12', 'Female', 'Widow', '', 'Elementary', '', '', '0', '0', NULL, NULL),
(774, 'Juliet', 'Asocina', 'Tulusa', '1979-11-12', 'Female', 'Single', '', 'College', '', '', '0', '0', NULL, NULL),
(775, 'Neil', 'Caralde', 'Bedro', '1971-11-12', 'Male', 'Married', '', 'College', 'automotive', 'self_employed', '0', '0', NULL, NULL),
(776, 'Ronan', 'Eslit', 'Lubguban', '1979-11-12', 'Male', 'Living_in', '', 'College', 'Government_employee', 'Casual', '0', '0', NULL, NULL),
(777, 'Donalou', 'CaÃƒÂ±as', 'Bocol', '1994-11-12', 'Male', 'Single', '', 'College', 'Labor', 'Casual', '0', '0', NULL, NULL),
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
(838, 'Roger', 'CadiliÃƒÂ±a', 'Lumando', '1981-11-12', 'Male', 'Living_in', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
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
(1053, 'Manuel', 'Lagda', 'DueÃƒÂ±as', '1959-11-12', 'Male', 'Married', '', 'College', 'Supervisor', 'permanent', '0', '0', NULL, NULL),
(1054, 'Allan', 'Sabando', 'Mocorro', '1953-11-12', 'Male', 'Married', '', 'College', 'Const_worker', 'permanent', '0', '0', NULL, NULL),
(1055, 'Richard', 'Tabano', 'LuceÃƒÂ±ara', '1978-11-12', 'Male', 'Married', '', 'College', 'Layman', 'permanent', '0', '0', NULL, NULL),
(1056, 'Arnold', 'Tabano', 'LuceÃƒÂ±ara', '1980-11-12', 'Male', 'Married', '', 'HS', 'Layman', 'permanent', '0', '0', NULL, NULL),
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
(1074, 'Roberto_jr', 'TaÃƒÂ±ia', 'Palangan', '1985-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'Casual', '0', '0', NULL, NULL),
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
(1085, 'Roberto', 'TaÃƒÂ±an', 'Villano', '1956-11-12', 'Male', 'Married', '', 'HS', 'Business', 'self_employed', '0', '0', NULL, NULL),
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
(1124, 'Benito', 'Las_PiÃƒÂ±as', 'Marbilla', '1960-11-12', 'Male', 'Married', '', 'HS', 'Labor', 'per_day', '0', '0', NULL, NULL),
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
(1177, 'Joffrey', 'PeÃƒÂ±ola', 'Trinidad', '1971-11-12', 'Male', 'Married', '', 'College', 'Staff', 'Casual', '0', '0', NULL, NULL),
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
