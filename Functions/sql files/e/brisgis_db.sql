-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 07:56 AM
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
(1, 1, 'Hinaplanon', '2016-04-01 08:00:00', '2016-04-01 08:00:00'),
(2, 1, 'Pala-o', '2016-04-25 18:53:39', '2016-04-25 18:53:39'),
(3, 1, 'Tibanga', '2016-05-09 21:50:45', '2016-05-09 21:50:45');

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

--
-- Dumping data for table `barangay_admins`
--

INSERT INTO `barangay_admins` (`user_id`, `barangay_id`, `created_at`, `updated_at`) VALUES
(5, 1, '2016-05-09 21:43:02', '2016-05-09 21:43:02'),
(6, 3, '2016-05-09 21:54:58', '2016-05-09 21:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(10) UNSIGNED NOT NULL,
  `purok_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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

INSERT INTO `buildings` (`id`, `purok_id`, `name`, `street`, `year_constructed`, `net_value`, `building_usage`, `structure`, `area`, `no_stories`, `holding`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(1, 1, 'Argiente Household', 'Kamaong Street', '2005-05-05', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2654444, 8.253777778, NULL, NULL),
(2, 1, 'Simbaco Household', 'Kamaong Street', '2009-08-26', 800000, 'Residential', 'Metal', 90, 1, 'Owner', 124.2653889, 8.253888889, NULL, NULL),
(3, 1, 'Abiol Household', 'Kamaong Street', '2009-11-12', 120000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2651389, 8.253777778, NULL, NULL),
(4, 1, 'Simbaco Household', 'Kamaong Street', '2001-10-21', 100000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2654444, 8.253861111, NULL, NULL),
(5, 1, 'Catalan Household', 'Kamaong Street', '1998-05-17', 80000, 'Residential', 'Bamboo', 15, 1, 'Owner', 124.2651111, 8.253666667, NULL, NULL),
(6, 1, 'Catalan Household', 'Kamaong Street', '1999-11-07', 5000, 'Residential', 'Wood', 12, 1, 'Owner', 124.2652222, 8.253666667, NULL, NULL),
(7, 1, 'Daud Household', 'Kamaong Street', '1987-12-13', 40000, 'Residential', 'Masonry', 5, 1, 'Owner', 124.26525, 8.253611111, NULL, NULL),
(8, 1, 'Daud Household', 'Kamaong Street', '1991-03-03', 0, 'Residential', 'Metal', 4, 1, 'Owner', 124.2652778, 8.253666667, NULL, NULL),
(9, 1, 'Maguiran Household', 'Kamaong Street', '2007-07-23', 500000, 'Residential', 'Masonry', 44, 1, 'Owner', 124.2652778, 8.253555556, NULL, NULL),
(10, 1, 'Maguiran Household', 'Kamaong Street', '1998-10-11', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2652778, 8.253555556, NULL, NULL),
(11, 1, 'Cali Household', 'Kamaong Street', '2002-12-25', 150000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2654444, 8.253527778, NULL, NULL),
(12, 1, 'Bado Household', 'Kamaong Street', '1986-04-16', 70000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2655278, 8.253194444, NULL, NULL),
(13, 1, 'Bado Household', 'Kamaong Street', '2003-03-11', 500000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2655556, 8.253194444, NULL, NULL),
(14, 1, 'Salvador Household', 'Kamaong Street', '2000-06-28', 50000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2655278, 8.253138889, NULL, NULL),
(15, 1, 'Cagobcob Household', 'Kamaong Street', '2001-06-29', 500000, 'Residential', 'Wood', 100, 1, 'Owner', 124.2654444, 8.253305556, NULL, NULL),
(16, 1, 'Bation Household', 'Kamaong Street', '2004-12-27', 45000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2654444, 8.253194444, NULL, NULL),
(17, 1, 'Libumfacil Household', 'Kamaong Street', '2003-02-03', 5000, 'Residential', 'Bamboo', 9, 1, 'Owner', 124.2654444, 8.253166667, NULL, NULL),
(18, 1, 'Sumile Household', 'Kamaong Street', '1999-01-17', 250000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2653889, 8.253333333, NULL, NULL),
(19, 1, 'Fabroa Household', 'Kamaong Street', '2001-04-20', 150000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2650278, 8.253333333, NULL, NULL),
(20, 1, 'Duran Household', 'Kamaong Street', '1993-10-18', 90000, 'Residential', 'Concrete', 100, 1, 'Owner', 124.2651944, 8.253444444, NULL, NULL),
(21, 1, 'Salig Household', 'Kamaong Street', '2001-04-27', 300000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2650833, 8.253555556, NULL, NULL),
(22, 1, 'Salig Household', 'Kamaong Street', '1988-07-02', 300000, 'Residential', 'Makeshift', 70, 1, 'Owner', 124.2651111, 8.2535, NULL, NULL),
(23, 1, 'Remo Household', 'Kamaong Street', '1996-06-19', 700000, 'Residential', 'Concrete', 100, 1, 'Owner', 124.2650556, 8.253416667, NULL, NULL),
(24, 1, 'Salado Household', 'Kamaong Street', '1994-04-20', 80000, 'Residential', 'Masonry', 80, 1, 'Owner', 124.2649444, 8.253777778, NULL, NULL),
(25, 1, 'Uy Household', 'Kamaong Street', '1991-12-09', 200000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2648333, 8.253666667, NULL, NULL),
(26, 1, 'Fernandez Household', 'Kamaong Street', '1986-09-08', 500000, 'Residential', 'Bamboo', 96, 1, 'Owner', 124.2643333, 8.254, NULL, NULL),
(27, 1, 'Aguinot Household', 'Kamaong Street', '2004-10-25', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2643333, 8.254, NULL, NULL),
(28, 1, 'Gonzaga Household', 'Kamaong Street', '2000-07-24', 500000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2646389, 8.254, NULL, NULL),
(29, 1, 'Simbaco Household', 'Kamaong Street', '1992-10-07', 250000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2647222, 8.253944444, NULL, NULL),
(30, 1, 'Garma Household', 'Kamaong Street', '1987-08-28', 200000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2645, 8.254027778, NULL, NULL),
(31, 1, 'Bation Household', 'Kamaong Street', '1996-08-22', 200000, 'Residential', 'Concrete', 36, 1, 'Owner', 124.2644444, 8.253777778, NULL, NULL),
(32, 1, 'Bado Household', 'Kamaong Street', '2006-08-21', 150000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2644444, 8.253833333, NULL, NULL),
(33, 1, 'Capangpangan Household', 'Kamaong Street', '1997-11-13', 900000, 'Residential', 'Wood', 100, 1, 'Owner', 124.2643611, 8.254194444, NULL, NULL),
(34, 1, 'Cloma Household', 'Kamaong Street', '2009-03-26', 500000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2643333, 8.254305556, NULL, NULL),
(35, 1, 'Borbon Household', 'Kamaong Street', '1989-10-07', 20000, 'Residential', 'Metal', 6, 1, 'Owner', 124.2644722, 8.254166667, NULL, NULL),
(36, 1, 'Sebaria Household', 'Kamaong Street', '2006-08-02', 100000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2644167, 8.254277778, NULL, NULL),
(37, 1, 'Lumboy Household', 'Kamaong Street', '2001-04-19', 350000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2645, 8.254333333, NULL, NULL),
(38, 1, 'Soledad Household', 'Kamaong Street', '1997-12-12', 250000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2646389, 8.254416667, NULL, NULL),
(39, 1, 'Yañez Household', 'Kamaong Street', '2002-01-05', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2646389, 8.254527778, NULL, NULL),
(40, 1, 'Reco Household', 'Kamaong Street', '1994-06-19', 50000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2647778, 8.254361111, NULL, NULL),
(41, 1, 'Hatague Household', 'Kamaong Street', '1997-02-11', 50000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2646667, 8.254583333, NULL, NULL),
(42, 1, 'Llanes Household', 'Kamaong Street', '1995-05-23', 500000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2640556, 8.254194444, NULL, NULL),
(43, 1, 'Albiento Household', 'Kamaong Street', '2003-09-06', 400000, 'Residential', 'Metal', 54, 1, 'Owner', 124.26575, 8.253527778, NULL, NULL),
(44, 1, 'Bado Household', 'Kamaong Street', '1988-02-06', 400000, 'Residential', 'Metal', 32, 1, 'Owner', 124.2638333, 8.254333333, NULL, NULL),
(45, 1, 'Bado Household', 'Kamaong Street', '2003-02-22', 100000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2635833, 8.254305556, NULL, NULL),
(46, 1, 'Saliot Household', 'Kamaong Street', '1995-08-13', 10000000, 'Residential', 'Metal', 300, 1, 'Owner', 124.2641111, 8.253833333, NULL, NULL),
(47, 1, 'Hulgin Household', 'Kamaong Street', '1988-10-26', 200000, 'Residential', 'Metal', 80, 1, 'Owner', 124.2635278, 8.253972222, NULL, NULL),
(48, 1, 'Garting Household', 'Kamaong Street', '2005-04-25', 0, 'Residential', 'Wood', 6, 1, 'Owner', 124.2636667, 8.254527778, NULL, NULL),
(49, 1, 'Garting Household', 'Kamaong Street', '1989-09-04', 0, 'Residential', 'Metal', 6, 1, 'Owner', 124.2636389, 8.254361111, NULL, NULL),
(50, 1, 'Bado Household', 'Kamaong Street', '1992-09-07', 200000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2637222, 8.254194444, NULL, NULL),
(51, 1, 'Bardillas Household', 'Kamaong Street', '1999-01-10', 30000, 'Residential', 'Metal', 12, 1, 'Owner', 124.2635, 8.254305556, NULL, NULL),
(52, 1, 'Fabroa Household', 'Kamaong Street', '1992-08-20', 100000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2634444, 8.254277778, NULL, NULL),
(53, 1, 'Verano Household', 'Kamaong Street', '1998-04-21', 250000, 'Residential', 'Makeshift', 18, 1, 'Owner', 124.2634444, 8.254305556, NULL, NULL),
(54, 1, 'Milancio Household', 'Kamaong Street', '2004-06-03', 200000, 'Residential', 'Makeshift', 29, 1, 'Owner', 124.2633333, 8.254166667, NULL, NULL),
(55, 1, 'Aguilo Household', 'Kamaong Street', '2004-08-03', 200000, 'Residential', 'Makeshift', 26, 1, 'Owner', 124.2645, 8.253638889, NULL, NULL),
(56, 1, 'Bado Household', 'Kamaong Street', '1991-08-28', 900000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2645833, 8.253694444, NULL, NULL),
(57, 1, 'Bahian Household', 'Kamaong Street', '1999-04-27', 800000, 'Residential', 'Bamboo', 70, 1, 'Owner', 124.2646667, 8.253805556, NULL, NULL),
(58, 1, 'Bado Household', 'Kamaong Street', '2001-02-14', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2654167, 8.253694444, NULL, NULL),
(59, 1, 'Esteban Household', 'Kamaong Street', '1999-07-28', 500000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2654167, 8.253722222, NULL, NULL),
(60, 1, 'Villarta Household', 'Kamaong Street', '1996-06-06', 200000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2655278, 8.253777778, NULL, NULL),
(61, 1, 'Abarca  Household', 'Kamaong Street', '1986-10-12', 40000, 'Residential', 'Wood', 16, 1, 'Owner', 124.2656111, 8.253555556, NULL, NULL),
(62, 1, 'Bado Household', 'Kamaong Street', '2000-08-09', 600000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2656667, 8.253722222, NULL, NULL),
(63, 1, 'Babano Household', 'Kamaong Street', '2001-10-17', 10000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2656389, 8.253722222, NULL, NULL),
(64, 1, 'Arado Household', 'Kamaong Street', '2001-01-07', 15000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2638333, 8.254055556, NULL, NULL),
(65, 1, 'Balag Household', 'Kamaong Street', '2002-04-12', 60000, 'Residential', 'Concrete', 56, 1, 'Owner', 124.26275, 8.254361111, NULL, NULL),
(66, 1, 'Arellano Household', 'Kamaong Street', '1996-12-06', 70000, 'Residential', 'Makeshift', 18, 1, 'Owner', 124.2627778, 8.254388889, NULL, NULL),
(67, 1, 'Perez Household', 'Kamaong Street', '2005-04-25', 20000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2627778, 8.254388889, NULL, NULL),
(68, 1, 'Fenis Household', 'Kamaong Street', '1999-06-26', 20000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2628056, 8.254361111, NULL, NULL),
(69, 1, 'Canlolobo Household', 'Kamaong Street', '1992-05-04', 15000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2629444, 8.2545, NULL, NULL),
(70, 1, 'Cañarez Household', 'Kamaong Street', '2007-12-05', 50000, 'Residential', 'Concrete', 25, 1, 'Owner', 124.263, 8.254388889, NULL, NULL),
(71, 1, 'Anislag Household', 'Kamaong Street', '2004-03-12', 10000, 'Residential', 'Concrete', 18, 1, 'Owner', 124.2629444, 8.254333333, NULL, NULL),
(72, 1, 'Reluya Household', 'Kamaong Street', '2009-08-23', 30000, 'Residential', 'Makeshift', 18, 1, 'Owner', 124.2629444, 8.254388889, NULL, NULL),
(73, 1, 'Salvalosa Household', 'Kamaong Street', '1998-07-21', 150000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2630278, 8.254388889, NULL, NULL),
(74, 1, 'Naquila Household', 'Kamaong Street', '2003-11-19', 20000, 'Residential', 'Masonry', 16, 1, 'Owner', 124.2631111, 8.254416667, NULL, NULL),
(75, 1, 'Dacuya Household', 'Kamaong Street', '1992-06-29', 50000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2630278, 8.254277778, NULL, NULL),
(76, 1, 'Arguilles Household', 'Kamaong Street', '2001-10-16', 30000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2630278, 8.254333333, NULL, NULL),
(77, 1, 'Naquila Household', 'Kamaong Street', '1991-03-19', 40000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2631944, 8.254527778, NULL, NULL),
(78, 1, 'Tadle Household', 'Kamaong Street', '2002-08-16', 40000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2631389, 8.25425, NULL, NULL),
(79, 1, 'Chavez Household', 'Kamaong Street', '1988-01-12', 350000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2632778, 8.254416667, NULL, NULL),
(80, 1, 'Suganog Household', 'Kamaong Street', '1993-10-03', 25000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2626389, 8.2545, NULL, NULL),
(81, 1, 'Siarza Household', 'Kamaong Street', '1988-02-22', 10000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2612222, 8.254138889, NULL, NULL),
(82, 1, 'Siarza Household', 'Kamaong Street', '1998-03-18', 500000, 'Residential', 'Metal', 80, 1, 'Owner', 124.2612222, 8.254277778, NULL, NULL),
(83, 1, 'Quirino Household', 'Kamaong Street', '2008-08-20', 10000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2599444, 8.254027778, NULL, NULL),
(84, 1, 'Albiento Household', 'Kamaong Street', '2003-05-12', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2600278, 8.253972222, NULL, NULL),
(85, 1, 'Libumfacil Household', 'Kamaong Street', '2007-03-03', 80000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.26, 8.253555556, NULL, NULL),
(86, 1, 'Bado Household', 'Kamaong Street', '2008-06-17', 250000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2600833, 8.253583333, NULL, NULL),
(87, 1, 'Bangus Household', 'Kamaong Street', '2000-10-30', 450000, 'Residential', 'Concrete', 42, 1, 'Owner', 124.26025, 8.253388889, NULL, NULL),
(88, 1, 'Awitin Household', 'Kamaong Street', '2000-11-22', 50000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2601667, 8.253138889, NULL, NULL),
(89, 1, 'Bardillas Household', 'Kamaong Street', '1994-10-25', 150000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2603333, 8.253222222, NULL, NULL),
(90, 1, 'Tingcang Household', 'Kamaong Street', '2003-09-04', 15000, 'Residential', 'Concrete', 12, 1, 'Owner', 124.2600556, 8.253166667, NULL, NULL),
(91, 1, 'Bangus Household', 'Kamaong Street', '2006-03-18', 100000, 'Residential', 'Wood', 100, 1, 'Owner', 124.2601944, 8.253305556, NULL, NULL),
(92, 1, 'Remegio Household', 'Kamaong Street', '2004-03-07', 100000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2605, 8.253583333, NULL, NULL),
(93, 1, 'Areola Household', 'Kamaong Street', '1992-09-03', 200000, 'Residential', 'Wood', 100, 1, 'Owner', 124.2604444, 8.253527778, NULL, NULL),
(94, 1, 'Diola Household', 'Kamaong Street', '2001-09-03', 70000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2603333, 8.253611111, NULL, NULL),
(95, 1, 'Bado Household', 'Kamaong Street', '1995-01-24', 70000, 'Residential', 'Wood', 55, 1, 'Owner', 124.2600556, 8.253833333, NULL, NULL),
(96, 1, 'Sola Household', 'Kamaong Street', '2007-04-15', 200000, 'Residential', 'Makeshift', 80, 1, 'Owner', 124.2596944, 8.253777778, NULL, NULL),
(97, 1, 'Bado Household', 'Kamaong Street', '1994-10-21', 70000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2596111, 8.253388889, NULL, NULL),
(98, 1, 'Bordaje Household', 'Kamaong Street', '1996-07-07', 70000, 'Residential', 'Masonry', 18, 1, 'Owner', 124.26, 8.253944444, NULL, NULL),
(99, 1, 'Elejorde Household', 'Kamaong Street', '2008-12-25', 70000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2595, 8.253444444, NULL, NULL),
(100, 1, 'Bado Household', 'Kamaong Street', '2004-04-06', 150000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.26, 8.253916667, NULL, NULL),
(101, 1, 'Cabandog Household', 'Kamaong Street', '1995-04-07', 30000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2630278, 8.254416667, NULL, NULL),
(102, 1, 'Esma Household', 'Kamaong Street', '2006-01-09', 40000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2656667, 8.253194444, NULL, NULL),
(103, 1, 'Buca Household', 'Kamaong Street', '1994-06-30', 20000, 'Residential', 'Masonry', 12, 1, 'Owner', 124.2660556, 8.253027778, NULL, NULL),
(104, 1, 'Alaya_ay Household', 'Kamaong Street', '1989-03-04', 180000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2660556, 8.253055556, NULL, NULL),
(105, 1, 'Buca Household', 'Kamaong Street', '1988-02-10', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2661111, 8.253055556, NULL, NULL),
(106, 1, 'Tabimina Household', 'Kamaong Street', '2000-06-30', 200000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2655278, 8.252611111, NULL, NULL),
(107, 1, 'Cababan Household', 'Kamaong Street', '1993-03-10', 40000, 'Residential', 'Metal', 6, 1, 'Owner', 124.2653889, 8.252916667, NULL, NULL),
(108, 1, 'Cababan Household', 'Kamaong Street', '2003-08-09', 50000, 'Residential', 'Wood', 10, 1, 'Owner', 124.2651667, 8.253138889, NULL, NULL),
(109, 1, 'Alivio Household', 'Kamaong Street', '1991-03-02', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2654167, 8.253472222, NULL, NULL),
(110, 1, 'Ramos Household', 'Kamaong Street', '1997-10-01', 15000, 'Residential', 'Masonry', 10, 1, 'Owner', 124.26525, 8.253694444, NULL, NULL),
(111, 1, 'Ragadio Household', 'Kamaong Street', '1999-02-15', 30000, 'Residential', 'Concrete', 18, 1, 'Owner', 124.2641111, 8.253638889, NULL, NULL),
(112, 1, 'Apongan Household', 'Kamaong Street', '1994-01-30', 100000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2642778, 8.253416667, NULL, NULL),
(113, 1, 'Cando  Household', 'Kamaong Street', '1998-06-30', 30000, 'Residential', 'Bamboo', 18, 1, 'Owner', 124.2630278, 8.252888889, NULL, NULL),
(114, 1, 'Pa-ausbo Household', 'Kamaong Street', '1991-11-07', 40000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.263, 8.252416667, NULL, NULL),
(115, 1, 'Gallito Household', 'Kamaong Street', '2006-05-12', 200000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2629722, 8.252444444, NULL, NULL),
(116, 1, 'Gallito Household', 'Kamaong Street', '2002-03-14', 150000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2628889, 8.252333333, NULL, NULL),
(117, 1, 'Daniar Household', 'Kamaong Street', '2004-02-25', 30000, 'Residential', 'Bamboo', 18, 1, 'Owner', 124.2629444, 8.252083333, NULL, NULL),
(118, 1, 'Permacio Household', 'Kamaong Street', '2000-08-13', 100000, 'Residential', 'Wood', 10, 1, 'Owner', 124.2629444, 8.252138889, NULL, NULL),
(119, 1, 'Zalsos Household', 'Kamaong Street', '2008-12-14', 50000, 'Residential', 'Makeshift', 25, 1, 'Owner', 124.2629167, 8.252194444, NULL, NULL),
(120, 1, 'Jala Household', 'Kamaong Street', '1998-03-31', 40000, 'Residential', 'Metal', 12, 1, 'Owner', 124.2629167, 8.251888889, NULL, NULL),
(121, 1, 'Permacio Household', 'Kamaong Street', '2002-03-13', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2628889, 8.251833333, NULL, NULL),
(122, 1, 'Nadayag Household', 'Kamaong Street', '1994-05-06', 30000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2633056, 8.252111111, NULL, NULL),
(123, 1, 'Permacio Household', 'Kamaong Street', '2000-12-18', 150000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2635, 8.252166667, NULL, NULL),
(124, 1, 'Nadayag Household', 'Kamaong Street', '2000-01-20', 16000, 'Residential', 'Concrete', 18, 1, 'Owner', 124.2634167, 8.252194444, NULL, NULL),
(125, 1, 'Uy Household', 'Kamaong Street', '1986-09-08', 50000, 'Residential', 'Makeshift', 16, 1, 'Owner', 124.2642222, 8.252861111, NULL, NULL),
(126, 1, 'Vicente Household', 'Kamaong Street', '1990-11-10', 50000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2645833, 8.253305556, NULL, NULL),
(127, 1, 'Lozano Household', 'Kamaong Street', '2000-03-19', 80000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2646111, 8.252972222, NULL, NULL),
(128, 1, 'Macalong Household', 'Kamaong Street', '2001-09-02', 100000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2646667, 8.253083333, NULL, NULL),
(129, 1, 'Manlupig Household', 'Kamaong Street', '1999-03-20', 60000, 'Residential', 'Concrete', 15, 1, 'Owner', 124.2646389, 8.252833333, NULL, NULL),
(130, 1, 'Antibo Household', 'Kamaong Street', '2007-12-25', 30000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2646944, 8.252805556, NULL, NULL),
(131, 1, 'Gabores Household', 'Kamaong Street', '2000-10-07', 70000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2651389, 8.252888889, NULL, NULL),
(132, 1, 'Agapay Household', 'Kamaong Street', '1997-02-28', 70000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2652222, 8.252888889, NULL, NULL),
(133, 1, 'Rico Household', 'Kamaong Street', '1986-04-21', 70000, 'Residential', 'Wood', 20, 1, 'Owner', 124.2651944, 8.252583333, NULL, NULL),
(134, 1, 'Rico Household', 'Kamaong Street', '1992-03-28', 70000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2651389, 8.252611111, NULL, NULL),
(135, 1, 'Rico Household', 'Kamaong Street', '1996-09-04', 70000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2651944, 8.252555556, NULL, NULL),
(136, 1, 'Cloma Household', 'Kamaong Street', '2004-05-08', 100000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.26525, 8.252527778, NULL, NULL),
(137, 1, 'Manogaz Household', 'Kamaong Street', '1989-07-19', 100000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2654167, 8.252416667, NULL, NULL),
(138, 1, 'Bayoloses Household', 'Kamaong Street', '2008-12-27', 40000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2652222, 8.252222222, NULL, NULL),
(139, 1, 'Cabaktulan Household', 'Kamaong Street', '2005-10-08', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2658056, 8.252444444, NULL, NULL),
(140, 1, 'Rotaquio Household', 'Kamaong Street', '1993-07-13', 40000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2659722, 8.252222222, NULL, NULL),
(141, 1, 'Fernandez Household', 'Kamaong Street', '2003-01-02', 300000, 'Residential', 'Metal', 40, 1, 'Owner', 124.266, 8.252472222, NULL, NULL),
(142, 1, 'Borga Household', 'Kamaong Street', '2004-10-04', 150000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2660556, 8.252694444, NULL, NULL),
(143, 1, 'Ordinaria Household', 'Kamaong Street', '1998-05-03', 600000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2661667, 8.252555556, NULL, NULL),
(144, 1, 'Fernandez Household', 'Kamaong Street', '2006-04-16', 150000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2662778, 8.252777778, NULL, NULL),
(145, 1, 'Gabando Household', 'Kamaong Street', '1996-12-18', 300000, 'Residential', 'Bamboo', 70, 1, 'Owner', 124.2661667, 8.252805556, NULL, NULL),
(146, 1, 'Bardillas Household', 'Kamaong Street', '1997-05-17', 70000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2665556, 8.252694444, NULL, NULL),
(147, 1, 'Baroga Household', 'Kamaong Street', '1992-03-15', 40000, 'Residential', 'Makeshift', 18, 1, 'Owner', 124.266, 8.252888889, NULL, NULL),
(148, 1, 'Elago Household', 'Kamaong Street', '1989-02-26', 150000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2653333, 8.253305556, NULL, NULL),
(149, 1, 'Rosal Household', 'Kamaong Street', '1989-04-02', 150000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2659722, 8.252972222, NULL, NULL),
(150, 1, 'Fabillaran Household', 'Kamaong Street', '2004-08-27', 10000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.26675, 8.252416667, NULL, NULL),
(151, 1, 'Ebasan Household', 'Kamaong Street', '2005-03-12', 80000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2662222, 8.251194444, NULL, NULL),
(152, 1, 'Losanto Household', 'Kamaong Street', '2007-06-26', 180000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2660556, 8.251333333, NULL, NULL),
(153, 1, 'Losanto Household', 'Kamaong Street', '1997-09-11', 70000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2660556, 8.250944444, NULL, NULL),
(154, 1, 'Guiling Household', 'Kamaong Street', '1996-11-24', 500000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2662778, 8.250972222, NULL, NULL),
(155, 1, 'Gapo Household', 'Kamaong Street', '2007-08-08', 20000, 'Residential', 'Bamboo', 14, 1, 'Owner', 124.2660556, 8.251138889, NULL, NULL),
(156, 1, 'Ebasan Household', 'Kamaong Street', '2007-10-21', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2659444, 8.251166667, NULL, NULL),
(157, 1, 'Bado Household', 'Kamaong Street', '1992-08-01', 220000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2658056, 8.2515, NULL, NULL),
(158, 1, 'Dayday Household', 'Kamaong Street', '1991-12-05', 100000, 'Residential', 'Makeshift', 36, 1, 'Owner', 124.2653889, 8.251388889, NULL, NULL),
(159, 1, 'Pepito Household', 'Kamaong Street', '1993-06-26', 200000, 'Residential', 'Metal', 80, 1, 'Owner', 124.2653333, 8.251388889, NULL, NULL),
(160, 1, 'Batucan Household', 'Kamaong Street', '2007-12-09', 40000, 'Residential', 'Makeshift', 18, 1, 'Owner', 124.2641667, 8.252638889, NULL, NULL),
(161, 1, 'Lozano Household', 'Kamaong Street', '1991-09-28', 1500000, 'Residential', 'Metal', 100, 1, 'Owner', 124.2642778, 8.252611111, NULL, NULL),
(162, 1, 'Briones Household', 'Kamaong Street', '2007-07-25', 60000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2643611, 8.252444444, NULL, NULL),
(163, 1, 'Reco Household', 'Kamaong Street', '2004-06-07', 80000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2643056, 8.252444444, NULL, NULL),
(164, 1, 'Reco Household', 'Kamaong Street', '2001-12-10', 50000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2642778, 8.252472222, NULL, NULL),
(165, 1, 'Solidad Household', 'Kamaong Street', '1989-03-25', 50000, 'Residential', 'Makeshift', 18, 1, 'Owner', 124.2642778, 8.25225, NULL, NULL),
(166, 1, 'Uy Household', 'Kamaong Street', '1990-05-03', 40000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2643056, 8.252361111, NULL, NULL),
(167, 1, 'Bado Household', 'Kamaong Street', '1986-12-22', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2643333, 8.252361111, NULL, NULL),
(168, 1, 'Reco Household', 'Kamaong Street', '2007-08-25', 300000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2644722, 8.252472222, NULL, NULL),
(169, 1, 'Ersando Household', 'Kamaong Street', '2002-11-14', 80000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2645278, 8.252444444, NULL, NULL),
(170, 1, 'Balocan Household', 'Kamaong Street', '2005-08-08', 50000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2642778, 8.252111111, NULL, NULL),
(171, 1, 'Cabahug Household', 'Kamaong Street', '2006-06-19', 60000, 'Residential', 'Masonry', 18, 1, 'Owner', 124.2645, 8.252194444, NULL, NULL),
(172, 1, 'Buca Household', 'Kamaong Street', '1995-05-05', 70000, 'Residential', 'Wood', 18, 1, 'Owner', 124.2645278, 8.252166667, NULL, NULL),
(173, 1, 'Florez Household', 'Kamaong Street', '2002-12-16', 70000, 'Residential', 'Masonry', 15, 1, 'Owner', 124.2646111, 8.25225, NULL, NULL),
(174, 1, 'Alivio Household', 'Kamaong Street', '1999-11-20', 80000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2645278, 8.251833333, NULL, NULL),
(175, 1, 'Nacario Household', 'Kamaong Street', '2009-06-06', 100000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2646389, 8.251861111, NULL, NULL),
(176, 1, 'Leonor Household', 'Kamaong Street', '2006-08-12', 300000, 'Residential', 'Metal', 25, 1, 'Owner', 124.2647222, 8.251861111, NULL, NULL),
(177, 1, 'Libre Household', 'Kamaong Street', '2007-04-25', 250000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2646667, 8.251888889, NULL, NULL),
(178, 1, 'Modesiyo Household', 'Kamaong Street', '1991-01-06', 120000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2643333, 8.252027778, NULL, NULL),
(179, 1, 'Ardiente Household', 'Kamaong Street', '1989-12-05', 40000, 'Residential', 'Wood', 12, 1, 'Owner', 124.2642778, 8.251777778, NULL, NULL),
(180, 1, 'Echavez Household', 'Kamaong Street', '1987-12-30', 170000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2641944, 8.251916667, NULL, NULL),
(181, 1, 'Jorudis Household', 'Kamaong Street', '1986-03-27', 150000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2646667, 8.251472222, NULL, NULL),
(182, 1, 'Ardiente Household', 'Kamaong Street', '1996-10-23', 30000, 'Residential', 'Masonry', 16, 1, 'Owner', 124.2646944, 8.251416667, NULL, NULL),
(183, 1, 'Nario Household', 'Kamaong Street', '1989-07-20', 15000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2649167, 8.251611111, NULL, NULL),
(184, 1, 'Dayday Household', 'Kamaong Street', '2004-11-02', 200000, 'Residential', 'Wood', 50, 1, 'Owner', 124.26475, 8.251611111, NULL, NULL),
(185, 1, 'Espoma Household', 'Kamaong Street', '2005-01-27', 200000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2645833, 8.251277778, NULL, NULL),
(186, 1, 'Eslit Household', 'Kamaong Street', '1987-07-27', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2644167, 8.251138889, NULL, NULL),
(187, 7, 'Abdul Household', 'Kamaong Street', '2002-05-10', 200000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2636111, 8.246305556, NULL, NULL),
(188, 7, 'Casas Household', 'Kamaong Street', '2003-09-03', 500000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2631111, 8.247277778, NULL, NULL),
(189, 7, 'Paramo Household', 'Kamaong Street', '1986-08-05', 50000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2629444, 8.24775, NULL, NULL),
(190, 7, 'Ermac Household', 'Kamaong Street', '2004-11-16', 15000, 'Residential', 'Metal', 8, 1, 'Owner', 124.2629722, 8.247694444, NULL, NULL),
(191, 7, 'Better Household', 'Kamaong Street', '1998-08-21', 20000, 'Residential', 'Bamboo', 17, 1, 'Owner', 124.2629722, 8.247722222, NULL, NULL),
(192, 7, 'Bagday Household', 'Kamaong Street', '2002-04-27', 30000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2629722, 8.247666667, NULL, NULL),
(193, 7, 'Muncal Household', 'Kamaong Street', '1996-02-25', 300000, 'Residential', 'Wood', 28, 1, 'Owner', 124.2626944, 8.246638889, NULL, NULL),
(194, 7, 'Muncal Household', 'Kamaong Street', '1995-04-06', 2000000, 'Residential', 'Metal', 72, 1, 'Owner', 124.2625556, 8.246472222, NULL, NULL),
(195, 7, 'Henson Household', 'Kamaong Street', '1996-03-20', 300000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2626667, 8.246555556, NULL, NULL),
(196, 7, 'Bahian Household', 'Kamaong Street', '1994-11-03', 100000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2623333, 8.246638889, NULL, NULL),
(197, 7, 'Bahian Household', 'Kamaong Street', '2004-01-14', 500000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2622778, 8.246666667, NULL, NULL),
(198, 7, 'Bahian Household', 'Kamaong Street', '2000-04-25', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2621667, 8.246527778, NULL, NULL),
(199, 7, 'Tungao Household', 'Kamaong Street', '1989-02-26', 1000000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2628611, 8.246222222, NULL, NULL),
(200, 7, 'Geralde Household', 'Kamaong Street', '1999-01-22', 90000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2624167, 8.246138889, NULL, NULL),
(201, 7, 'Jungalan Household', 'Kamaong Street', '2004-04-23', 3000000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2623056, 8.24625, NULL, NULL),
(202, 7, 'Laorito Household', 'Kamaong Street', '1990-05-01', 180000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2618889, 8.246166667, NULL, NULL),
(203, 7, 'Dompalis Household', 'Kamaong Street', '1995-04-12', 30000, 'Residential', 'Bamboo', 18, 1, 'Owner', 124.2619444, 8.246166667, NULL, NULL),
(204, 7, 'Nacor Household', 'Kamaong Street', '2009-01-12', 15000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2620278, 8.246166667, NULL, NULL),
(205, 7, 'Anor Household', 'Kamaong Street', '1991-01-11', 50000, 'Residential', 'Wood', 20, 1, 'Owner', 124.26175, 8.246166667, NULL, NULL),
(206, 7, 'Labang Household', 'Kamaong Street', '2006-11-23', 30000, 'Residential', 'Masonry', 18, 1, 'Owner', 124.26125, 8.246111111, NULL, NULL),
(207, 1, 'Daniel Household', 'Kamaong Street', '2008-08-22', 10000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2651944, 8.253555556, NULL, NULL),
(208, 7, 'Liken Household', 'Kamaong Street', '1995-01-21', 50000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2606944, 8.2465, NULL, NULL),
(209, 7, 'Ablon Household', 'Kamaong Street', '2005-10-13', 20000, 'Residential', 'Masonry', 18, 1, 'Owner', 124.2605833, 8.246166667, NULL, NULL),
(210, 7, 'Nobillos Household', 'Kamaong Street', '1996-07-15', 35000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2606111, 8.246472222, NULL, NULL),
(211, 7, 'Dilima Household', 'Kamaong Street', '1999-07-16', 50000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2606111, 8.246388889, NULL, NULL),
(212, 7, 'Maglasang Household', 'Kamaong Street', '1998-09-19', 30000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2604444, 8.246805556, NULL, NULL),
(213, 7, 'Ermac Household', 'Kamaong Street', '1995-02-06', 20000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2604722, 8.246833333, NULL, NULL),
(214, 4, 'Renes Household', 'Kamaong Street', '2000-11-06', 40000, 'Residential', 'Concrete', 28, 1, 'Owner', 124.2629444, 8.248916667, NULL, NULL),
(215, 4, 'Rives Household', 'Kamaong Street', '2009-07-22', 20000, 'Residential', 'Concrete', 12, 1, 'Owner', 124.2628056, 8.248916667, NULL, NULL),
(216, 4, 'Gabayan Household', 'Kamaong Street', '1990-04-23', 150000, 'Residential', 'Bamboo', 36, 1, 'Owner', 124.2629167, 8.249027778, NULL, NULL),
(217, 4, 'Capangpangan Household', 'Kamaong Street', '2000-07-28', 150000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2628333, 8.249111111, NULL, NULL),
(218, 4, 'Tyson Household', 'Kamaong Street', '1990-02-13', 70000, 'Residential', 'Wood', 22, 1, 'Owner', 124.2629167, 8.248888889, NULL, NULL),
(219, 4, 'Bilayo Household', 'Kamaong Street', '2008-12-29', 15000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2628056, 8.248722222, NULL, NULL),
(220, 4, 'Lacuto Household', 'Kamaong Street', '1987-08-29', 80000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2626667, 8.248888889, NULL, NULL),
(221, 4, 'Gabisay Household', 'Kamaong Street', '1992-06-28', 80000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2625833, 8.248972222, NULL, NULL),
(222, 4, 'Denolong Household', 'Kamaong Street', '2005-12-11', 80000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2626111, 8.248972222, NULL, NULL),
(223, 4, 'Labial Household', 'Kamaong Street', '1991-11-28', 80000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2626111, 8.248916667, NULL, NULL),
(224, 4, 'Balatayo Household', 'Kamaong Street', '2008-08-02', 80000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2626667, 8.249, NULL, NULL),
(225, 4, 'Badar Household', 'Kamaong Street', '1988-09-04', 30000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2621111, 8.248805556, NULL, NULL),
(226, 4, 'Tamayo Household', 'Kamaong Street', '1994-11-05', 80000, 'Residential', 'Wood', 20, 1, 'Owner', 124.2620833, 8.248888889, NULL, NULL),
(227, 4, 'Apas Household', 'Kamaong Street', '1999-11-20', 120000, 'Residential', 'Concrete', 130, 1, 'Owner', 124.2623611, 8.248777778, NULL, NULL),
(228, 4, 'Rujo Household', 'Kamaong Street', '1999-08-16', 20000, 'Residential', 'Makeshift', 18, 1, 'Owner', 124.2626667, 8.248555556, NULL, NULL),
(229, 4, 'Rujo Household', 'Kamaong Street', '2006-12-17', 15000, 'Residential', 'Metal', 10, 1, 'Owner', 124.2626944, 8.248583333, NULL, NULL),
(230, 4, 'Labang Household', 'Kamaong Street', '1998-05-31', 15000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2626389, 8.248555556, NULL, NULL),
(231, 7, 'Dolira Household', 'Kamaong Street', '2003-03-22', 15000, 'Residential', 'Masonry', 10, 1, 'Owner', 124.2625556, 8.248416667, NULL, NULL),
(232, 4, 'Maglasang Household', 'Kamaong Street', '2002-05-10', 15000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2625, 8.248361111, NULL, NULL),
(233, 7, 'Paloma Household', 'Kamaong Street', '1993-11-12', 40000, 'Residential', 'Metal', 18, 1, 'Owner', 124.2624167, 8.248277778, NULL, NULL),
(234, 7, 'Aligarmi Household', 'Kamaong Street', '1986-12-10', 500000, 'Residential', 'Wood', 10, 1, 'Owner', 124.2621667, 8.2485, NULL, NULL),
(235, 4, 'Macalong Household', 'Kamaong Street', '1995-12-22', 200000, 'Residential', 'Makeshift', 36, 1, 'Owner', 124.2621944, 8.248444444, NULL, NULL),
(236, 4, 'Ermac Household', 'Kamaong Street', '1987-01-29', 50000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.26225, 8.248638889, NULL, NULL),
(237, 4, 'Subido Household', 'Kamaong Street', '1990-12-25', 15000, 'Residential', 'Masonry', 10, 1, 'Owner', 124.2621389, 8.248722222, NULL, NULL),
(238, 4, 'Ermac Household', 'Kamaong Street', '2002-01-08', 80000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2620833, 8.248638889, NULL, NULL),
(239, 7, 'Sas Household', 'Kamaong Street', '1995-12-20', 30000, 'Residential', 'Masonry', 12, 1, 'Owner', 124.2619167, 8.248472222, NULL, NULL),
(240, 7, 'Manlapig Household', 'Kamaong Street', '1995-05-20', 80000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2620278, 8.248555556, NULL, NULL),
(241, 7, 'Bation Household', 'Kamaong Street', '1992-05-14', 30000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2619722, 8.248527778, NULL, NULL),
(242, 7, 'Maglasang Household', 'Kamaong Street', '1990-03-07', 80000, 'Residential', 'Wood', 18, 1, 'Owner', 124.262, 8.2485, NULL, NULL),
(243, 7, 'Elleso Household', 'Kamaong Street', '1997-04-06', 100000, 'Residential', 'Masonry', 36, 1, 'Owner', 124.2619167, 8.2485, NULL, NULL),
(244, 7, 'Ablin Household', 'Kamaong Street', '1997-07-22', 100000, 'Residential', 'Makeshift', 36, 1, 'Owner', 124.2618333, 8.248472222, NULL, NULL),
(245, 7, 'Balido Household', 'Kamaong Street', '1992-01-31', 100000, 'Residential', 'Wood', 18, 1, 'Owner', 124.2619722, 8.248444444, NULL, NULL),
(246, 7, 'Bacaro Household', 'Kamaong Street', '1993-01-02', 120000, 'Residential', 'Concrete', 36, 1, 'Owner', 124.2621111, 8.248305556, NULL, NULL),
(247, 7, 'Sumile Household', 'Kamaong Street', '1993-11-30', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2620278, 8.248472222, NULL, NULL),
(248, 7, 'Dionaldo Household', 'Kamaong Street', '1987-08-31', 100000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2619722, 8.248361111, NULL, NULL),
(249, 7, 'Cabanlito Household', 'Kamaong Street', '2007-12-14', 100000, 'Residential', 'Wood', 32, 1, 'Owner', 124.2621389, 8.248361111, NULL, NULL),
(250, 7, 'Maglasang Household', 'Kamaong Street', '2004-07-22', 700000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2629722, 8.247972222, NULL, NULL),
(251, 7, 'Maglasang Household', 'Kamaong Street', '2003-10-01', 400000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2626389, 8.248194444, NULL, NULL),
(252, 7, 'Cabadan Household', 'Kamaong Street', '2007-04-17', 200000, 'Residential', 'Bamboo', 36, 1, 'Owner', 124.2625833, 8.248222222, NULL, NULL),
(253, 7, 'Gulang Household', 'Kamaong Street', '1986-07-03', 600000, 'Residential', 'Masonry', 54, 1, 'Owner', 124.2623333, 8.248055556, NULL, NULL),
(254, 7, 'Maglasang Household', 'Kamaong Street', '1995-02-16', 70000, 'Residential', 'Concrete', 36, 1, 'Owner', 124.2619444, 8.247833333, NULL, NULL),
(255, 7, 'Verano Household', 'Kamaong Street', '1997-01-22', 100000, 'Residential', 'Concrete', 38, 1, 'Owner', 124.261, 8.247388889, NULL, NULL),
(256, 7, 'Ruawidas Household', 'Kamaong Street', '2002-12-21', 100000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2604722, 8.247388889, NULL, NULL),
(257, 7, 'Ramos Household', 'Kamaong Street', '1993-02-01', 80000, 'Residential', 'Wood', 18, 1, 'Owner', 124.2605, 8.247333333, NULL, NULL),
(258, 7, 'Mabime Household', 'Kamaong Street', '2006-04-23', 50000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2604444, 8.247333333, NULL, NULL),
(259, 7, 'Llanez Household', 'Kamaong Street', '1991-09-02', 50000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2605, 8.247361111, NULL, NULL),
(260, 7, 'Jocsing Household', 'Kamaong Street', '1992-07-09', 40000, 'Residential', 'Metal', 10, 1, 'Owner', 124.2604444, 8.247222222, NULL, NULL),
(261, 7, 'Llanez Household', 'Kamaong Street', '1998-01-01', 30000, 'Residential', 'Masonry', 12, 1, 'Owner', 124.2604444, 8.247194444, NULL, NULL),
(262, 7, 'Yañez Household', 'Kamaong Street', '2008-05-23', 600000, 'Residential', 'Concrete', 38, 1, 'Owner', 124.2608611, 8.24725, NULL, NULL),
(263, 7, 'Gracia Household', 'Kamaong Street', '2005-05-27', 1000000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2608611, 8.24725, NULL, NULL),
(264, 7, 'Maglasang Household', 'Kamaong Street', '1993-10-07', 200000, 'Residential', 'Masonry', 34, 1, 'Owner', 124.2618056, 8.247833333, NULL, NULL),
(265, 1, 'Aneora Household', 'Kamaong Street', '1995-04-21', 40000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2595556, 8.253388889, NULL, NULL),
(266, 1, 'Togonon Household', 'Kamaong Street', '1995-06-09', 40000, 'Residential', 'Wood', 20, 1, 'Owner', 124.2664167, 8.252833333, NULL, NULL),
(267, 1, 'Roardilas Household', 'Kamaong Street', '2008-07-21', 80000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2653333, 8.252444444, NULL, NULL),
(268, 5, 'Barrette Household', 'Kamaong Street', '2000-10-08', 150000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2625, 8.24925, NULL, NULL),
(269, 5, 'Barrette Household', 'Kamaong Street', '2002-10-26', 20000, 'Residential', 'Wood', 18, 1, 'Owner', 124.2624167, 8.249277778, NULL, NULL),
(270, 5, 'Montor Household', 'Kamaong Street', '2009-01-11', 80000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2624444, 8.249305556, NULL, NULL),
(271, 5, 'Delpin Household', 'Kamaong Street', '1995-03-07', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2625278, 8.249138889, NULL, NULL),
(272, 5, 'Gamotia Household', 'Kamaong Street', '2007-08-04', 15000000, 'Residential', 'Bamboo', 80, 1, 'Owner', 124.2626111, 8.249444444, NULL, NULL),
(273, 5, 'Camiroy Household', 'Kamaong Street', '1990-11-02', 150000, 'Residential', 'Concrete', 70, 1, 'Owner', 124.2625556, 8.249472222, NULL, NULL),
(274, 5, 'Camiroy Household', 'Kamaong Street', '1995-09-14', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2625556, 8.249472222, NULL, NULL),
(275, 5, 'Camiroy Household', 'Kamaong Street', '2006-11-14', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2625833, 8.249472222, NULL, NULL),
(276, 5, 'Alfecha Household', 'Kamaong Street', '2008-04-12', 100000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2626111, 8.249611111, NULL, NULL),
(277, 5, 'Remigio Household', 'Kamaong Street', '2000-12-13', 200000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2625833, 8.249638889, NULL, NULL),
(278, 3, 'Antony Household', 'Kamaong Street', '1997-01-16', 60000, 'Residential', 'Masonry', 24, 1, 'Owner', 124.26275, 8.249861111, NULL, NULL),
(279, 3, 'Herira Household', 'Kamaong Street', '1990-02-26', 300000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2627222, 8.249888889, NULL, NULL),
(280, 3, 'Herira Household', 'Kamaong Street', '1996-11-25', 700000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2627222, 8.249861111, NULL, NULL),
(281, 2, 'Ermac Household', 'Kamaong Street', '2003-06-14', 50000, 'Residential', 'Bamboo', 15, 1, 'Owner', 124.2627222, 8.249861111, NULL, NULL),
(282, 2, 'Wasawas Household', 'Kamaong Street', '2007-02-10', 200000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2626667, 8.250194444, NULL, NULL),
(283, 2, 'Salaan Household', 'Kamaong Street', '1986-08-15', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2626389, 8.250055556, NULL, NULL),
(284, 2, 'Dutolyo Household', 'Kamaong Street', '1991-04-12', 500000, 'Residential', 'Wood', 100, 1, 'Owner', 124.2626111, 8.250027778, NULL, NULL),
(285, 2, 'Malinguit Household', 'Kamaong Street', '1992-05-25', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2625278, 8.250083333, NULL, NULL),
(286, 2, 'Ermac Household', 'Kamaong Street', '1996-03-12', 200000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2624722, 8.250055556, NULL, NULL),
(287, 2, 'Lagrada Household', 'Kamaong Street', '1990-04-30', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2624167, 8.249833333, NULL, NULL),
(288, 2, 'Ermac Household', 'Kamaong Street', '2009-03-27', 200000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2623611, 8.249888889, NULL, NULL),
(289, 2, 'Castillon Household', 'Kamaong Street', '2009-05-19', 500000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2623611, 8.249944444, NULL, NULL),
(290, 2, 'Respecia Household', 'Kamaong Street', '2005-11-22', 800000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2624722, 8.249861111, NULL, NULL),
(291, 5, 'Mainit Household', 'Kamaong Street', '1995-05-03', 1500000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2625556, 8.24975, NULL, NULL),
(292, 5, 'Sapyot Household', 'Kamaong Street', '1997-04-20', 150000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2625278, 8.249666667, NULL, NULL),
(293, 5, 'Alfecha Household', 'Kamaong Street', '2000-12-04', 300000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2625, 8.249722222, NULL, NULL),
(294, 5, 'Odgudia Household', 'Kamaong Street', '2006-06-28', 200000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2624167, 8.249722222, NULL, NULL),
(295, 5, 'Respisya Household', 'Kamaong Street', '1995-09-14', 150000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2623611, 8.249777778, NULL, NULL),
(296, 5, 'Cenas Household', 'Kamaong Street', '1997-01-23', 70000, 'Residential', 'Metal', 20, 1, 'Owner', 124.26225, 8.249527778, NULL, NULL),
(297, 5, 'Diango Household', 'Kamaong Street', '2008-08-16', 80000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2623056, 8.249611111, NULL, NULL),
(298, 5, 'Hinon Household', 'Kamaong Street', '1992-01-18', 50000, 'Residential', 'Bamboo', 10, 1, 'Owner', 124.2622778, 8.249638889, NULL, NULL),
(299, 5, 'Albatera Household', 'Kamaong Street', '2009-04-01', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2622222, 8.249638889, NULL, NULL),
(300, 5, 'Danamaria Household', 'Kamaong Street', '2002-08-01', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2622222, 8.249444444, NULL, NULL),
(301, 5, 'Ermac Household', 'Kamaong Street', '2002-10-09', 150000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2622222, 8.249472222, NULL, NULL),
(302, 5, 'Bantilan Household', 'Kamaong Street', '2004-02-27', 300000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2621944, 8.249611111, NULL, NULL),
(303, 5, 'Ermac Household', 'Kamaong Street', '2006-04-10', 1000000, 'Residential', 'Metal', 45, 1, 'Owner', 124.2621667, 8.249638889, NULL, NULL),
(304, 5, 'Ermac Household', 'Kamaong Street', '2007-11-30', 150000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2618056, 8.249083333, NULL, NULL),
(305, 5, 'Tabangcoran Household', 'Kamaong Street', '2001-03-09', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2620278, 8.249138889, NULL, NULL),
(306, 5, 'Casira Household', 'Kamaong Street', '1989-05-05', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.26225, 8.249194444, NULL, NULL),
(307, 5, 'Diango Household', 'Kamaong Street', '2004-08-06', 200000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2621389, 8.249166667, NULL, NULL),
(308, 5, 'Diango Household', 'Kamaong Street', '2007-02-13', 200000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2621667, 8.24925, NULL, NULL),
(309, 5, 'Masirin Household', 'Kamaong Street', '1997-12-06', 200000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2621667, 8.249194444, NULL, NULL),
(310, 5, 'Ruiz Household', 'Kamaong Street', '1989-03-13', 80000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2621111, 8.249277778, NULL, NULL),
(311, 5, 'Nano Household', 'Kamaong Street', '1998-04-12', 80000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2619722, 8.24925, NULL, NULL),
(312, 5, 'Ermac Household', 'Kamaong Street', '1994-04-03', 80000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2619444, 8.24925, NULL, NULL),
(313, 5, 'Corniro Household', 'Kamaong Street', '1987-01-24', 80000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2620833, 8.249333333, NULL, NULL),
(314, 5, 'Ermac Household', 'Kamaong Street', '1997-10-12', 80000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2620556, 8.249305556, NULL, NULL),
(315, 5, 'Nantes Household', 'Kamaong Street', '2005-02-21', 150000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2621944, 8.249944444, NULL, NULL),
(316, 5, 'Lagunsad Household', 'Kamaong Street', '1987-02-23', 40000, 'Residential', 'Wood', 12, 1, 'Owner', 124.2620278, 8.25, NULL, NULL),
(317, 5, 'Corniro Household', 'Kamaong Street', '1986-05-30', 80000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2618889, 8.25, NULL, NULL),
(318, 5, 'Quigol Household', 'Kamaong Street', '2009-02-23', 40000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2618056, 8.249694444, NULL, NULL),
(319, 5, 'Ermac Household', 'Kamaong Street', '1995-06-25', 60000, 'Residential', 'Wood', 20, 1, 'Owner', 124.2617222, 8.249888889, NULL, NULL),
(320, 2, 'Anggot Household', 'Kamaong Street', '2003-08-15', 1000000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2623056, 8.250611111, NULL, NULL),
(321, 2, 'Lupiz Household', 'Kamaong Street', '1990-01-09', 500000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2623333, 8.250638889, NULL, NULL),
(322, 2, 'Larot Household', 'Kamaong Street', '1993-08-04', 150000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2623889, 8.250694444, NULL, NULL),
(323, 2, 'Stomata Household', 'Kamaong Street', '1987-02-13', 600000, 'Residential', 'Masonry', 80, 1, 'Owner', 124.2626667, 8.250916667, NULL, NULL),
(324, 2, 'Canggas Household', 'Kamaong Street', '1990-03-14', 200000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2624722, 8.251222222, NULL, NULL),
(325, 2, 'Orante Household', 'Kamaong Street', '1991-12-20', 500000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2624722, 8.25125, NULL, NULL),
(326, 2, 'Myro Household', 'Kamaong Street', '1992-09-14', 500000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2625278, 8.251083333, NULL, NULL),
(327, 2, 'Rerera Household', 'Kamaong Street', '1997-11-18', 500000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2623056, 8.250472222, NULL, NULL),
(328, 2, 'Anino Household', 'Kamaong Street', '1988-06-23', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2622222, 8.250305556, NULL, NULL),
(329, 2, 'Bagamaspad Household', 'Kamaong Street', '1986-04-19', 200000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2624444, 8.25025, NULL, NULL),
(330, 2, 'Magamaspad Household', 'Kamaong Street', '2000-07-17', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2624167, 8.250277778, NULL, NULL),
(331, 2, 'Quinain Household', 'Kamaong Street', '1998-01-23', 350000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2621944, 8.250694444, NULL, NULL),
(332, 2, 'Buscano Household', 'Kamaong Street', '1992-07-05', 50000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2619444, 8.25075, NULL, NULL),
(333, 2, 'Ocop Household', 'Kamaong Street', '1990-11-04', 350000, 'Residential', 'Wood', 60, 1, 'Owner', 124.26475, 8.250777778, NULL, NULL),
(334, 2, 'Nari Household', 'Kamaong Street', '1987-05-27', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2678056, 8.250972222, NULL, NULL),
(335, 2, 'Lozano Household', 'Kamaong Street', '2005-06-26', 80000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2615833, 8.250972222, NULL, NULL),
(336, 2, 'Timo Household', 'Kamaong Street', '1996-05-10', 0, 'Residential', 'Metal', 40, 1, 'Owner', 124.2616667, 8.251, NULL, NULL),
(337, 2, 'Roque Household', 'Kamaong Street', '1999-08-28', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2616111, 8.251027778, NULL, NULL),
(338, 2, 'Anoy Household', 'Kamaong Street', '1994-11-13', 600000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2615556, 8.251138889, NULL, NULL),
(339, 2, 'Lozano Household', 'Kamaong Street', '1990-06-09', 750000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2616111, 8.251777778, NULL, NULL),
(340, 2, 'Robrigo Household', 'Kamaong Street', '1994-01-28', 50000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2617222, 8.251305556, NULL, NULL);
INSERT INTO `buildings` (`id`, `purok_id`, `name`, `street`, `year_constructed`, `net_value`, `building_usage`, `structure`, `area`, `no_stories`, `holding`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(341, 2, 'Rosal Household', 'Kamaong Street', '2006-10-19', 50000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2619722, 8.251472222, NULL, NULL),
(342, 2, 'Go Household', 'Kamaong Street', '1993-03-27', 150000, 'Residential', 'Concrete', 4, 1, 'Owner', 124.2608889, 8.250416667, NULL, NULL),
(343, 3, 'Capangpangan Household', 'Kamaong Street', '1994-07-08', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2605278, 8.250305556, NULL, NULL),
(344, 3, 'Villaver Household', 'Kamaong Street', '2003-06-29', 1000000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2602778, 8.250305556, NULL, NULL),
(345, 3, 'Cagas Household', 'Kamaong Street', '2006-04-30', 60000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2602222, 8.250305556, NULL, NULL),
(346, 3, 'Alivio Household', 'Kamaong Street', '2000-05-01', 30000, 'Residential', 'Metal', 20, 1, 'Owner', 124.26025, 8.250083333, NULL, NULL),
(347, 3, 'Basilgo Household', 'Kamaong Street', '1988-01-06', 500000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2601028, 8.250277778, NULL, NULL),
(348, 3, 'Kulita Household', 'Kamaong Street', '1994-11-25', 500000, 'Residential', 'Makeshift', 15, 1, 'Owner', 124.2595556, 8.250194444, NULL, NULL),
(349, 3, 'Uy Household', 'Kamaong Street', '1992-04-21', 1000000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2598333, 8.250722222, NULL, NULL),
(350, 3, 'Lacio Household', 'Kamaong Street', '1986-06-13', 300000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2598889, 8.250722222, NULL, NULL),
(351, 3, 'Virtudez Household', 'Kamaong Street', '1988-10-01', 60000, 'Residential', 'Wood', 12, 1, 'Owner', 124.2597222, 8.250888889, NULL, NULL),
(352, 3, 'Virtudez Household', 'Kamaong Street', '2009-11-20', 40000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2597222, 8.250916667, NULL, NULL),
(353, 3, 'Duran Household', 'Kamaong Street', '2006-04-26', 80000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2595833, 8.251111111, NULL, NULL),
(354, 3, 'Duran Household', 'Kamaong Street', '1993-03-04', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2594722, 8.251111111, NULL, NULL),
(355, 3, 'Tahuda Household', 'Kamaong Street', '1990-10-15', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2595, 8.251083333, NULL, NULL),
(356, 3, 'Soco Household', 'Kamaong Street', '1994-12-24', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2595556, 8.251, NULL, NULL),
(357, 3, 'Sulipan Household', 'Kamaong Street', '1994-11-22', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2595278, 8.250972222, NULL, NULL),
(358, 3, 'Mahusay Household', 'Kamaong Street', '1990-10-19', 100000, 'Residential', 'Makeshift', 39, 1, 'Owner', 124.2595833, 8.250833333, NULL, NULL),
(359, 3, 'Ramonis Household', 'Kamaong Street', '1988-03-07', 200000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2596111, 8.250944444, NULL, NULL),
(360, 3, 'Cabahug Household', 'Kamaong Street', '1991-10-09', 500000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2593611, 8.251138889, NULL, NULL),
(361, 3, 'Alcala Household', 'Kamaong Street', '1999-08-15', 200000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2594167, 8.251055556, NULL, NULL),
(362, 3, 'Alcala Household', 'Kamaong Street', '1997-02-25', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2592778, 8.251055556, NULL, NULL),
(363, 3, 'Fuentes Household', 'Kamaong Street', '1998-10-05', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.25925, 8.251, NULL, NULL),
(364, 3, 'Fuentes Household', 'Kamaong Street', '1994-04-27', 80000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2591667, 8.250944444, NULL, NULL),
(365, 3, 'dela_Peña Household', 'Kamaong Street', '1990-10-18', 50000, 'Residential', 'Metal', 12, 1, 'Owner', 124.2591389, 8.250916667, NULL, NULL),
(366, 3, 'Mata Household', 'Kamaong Street', '2006-04-17', 80000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2591667, 8.250916667, NULL, NULL),
(367, 3, 'Lucero Household', 'Kamaong Street', '1992-10-23', 40000, 'Residential', 'Concrete', 16, 1, 'Owner', 124.2605278, 8.251, NULL, NULL),
(368, 3, 'Fernandez Household', 'Kamaong Street', '1996-09-05', 150000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2592806, 8.251138889, NULL, NULL),
(369, 3, 'Cabahug Household', 'Kamaong Street', '1986-03-29', 40000, 'Residential', 'Concrete', 18, 1, 'Owner', 124.2589722, 8.250861111, NULL, NULL),
(370, 3, 'Abdan Household', 'Kamaong Street', '1988-07-04', 40000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2589167, 8.250888889, NULL, NULL),
(371, 3, 'Pimentel Household', 'Kamaong Street', '1988-03-01', 100000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2589167, 8.250944444, NULL, NULL),
(372, 3, 'Silada Household', 'Kamaong Street', '1992-11-30', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.25875, 8.250861111, NULL, NULL),
(373, 3, 'Luloguban Household', 'Kamaong Street', '2003-10-13', 100000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2589722, 8.251083333, NULL, NULL),
(374, 3, 'Cabahug Household', 'Kamaong Street', '2009-02-27', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2589722, 8.251111111, NULL, NULL),
(375, 3, 'Lahoylahoy Household', 'Kamaong Street', '2002-08-22', 0, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.259, 8.251138889, NULL, NULL),
(376, 3, 'Wagas Household', 'Kamaong Street', '2000-11-05', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2591111, 8.251194444, NULL, NULL),
(377, 3, 'Cabahug Household', 'Kamaong Street', '1989-12-10', 40000, 'Residential', 'Bamboo', 18, 1, 'Owner', 124.2591389, 8.251, NULL, NULL),
(378, 3, 'Cabahug Household', 'Kamaong Street', '1991-01-02', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2587778, 8.251138889, NULL, NULL),
(379, 3, 'Heyrana Household', 'Kamaong Street', '2006-07-14', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2587778, 8.251972222, NULL, NULL),
(380, 3, 'Cabahug Household', 'Kamaong Street', '1990-10-08', 150000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.25875, 8.251888889, NULL, NULL),
(381, 3, 'Cabahug Household', 'Kamaong Street', '1986-04-26', 30000, 'Residential', 'Metal', 10, 1, 'Owner', 124.2588056, 8.252, NULL, NULL),
(382, 3, 'Cabahug Household', 'Kamaong Street', '1999-05-26', 20000, 'Residential', 'Masonry', 10, 1, 'Owner', 124.2587778, 8.252, NULL, NULL),
(383, 3, 'Garcia Household', 'Kamaong Street', '1993-11-26', 100000, 'Residential', 'Masonry', 18, 1, 'Owner', 124.2586667, 8.252055556, NULL, NULL),
(384, 3, 'Aguilar Household', 'Kamaong Street', '2004-04-08', 70000, 'Residential', 'Masonry', 18, 1, 'Owner', 124.2588611, 8.252111111, NULL, NULL),
(385, 3, 'Talhedo Household', 'Kamaong Street', '1986-12-17', 200000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2588611, 8.252194444, NULL, NULL),
(386, 3, 'Abran Household', 'Kamaong Street', '2004-08-21', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2588889, 8.252166667, NULL, NULL),
(387, 3, 'Ugna Household', 'Kamaong Street', '2006-05-03', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2590278, 8.252222222, NULL, NULL),
(388, 3, 'Omalay Household', 'Kamaong Street', '1987-11-17', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.259, 8.252277778, NULL, NULL),
(389, 3, 'Apique Household', 'Kamaong Street', '2009-09-12', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2590278, 8.252305556, NULL, NULL),
(390, 3, 'Pipito Household', 'Kamaong Street', '2000-10-12', 60000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2590278, 8.252277778, NULL, NULL),
(391, 3, 'Ometer Household', 'Kamaong Street', '1990-05-13', 250000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2591111, 8.252333333, NULL, NULL),
(392, 3, 'Sakin Household', 'Kamaong Street', '2006-12-13', 300000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2591111, 8.252361111, NULL, NULL),
(393, 3, 'Pipito Household', 'Kamaong Street', '2001-01-22', 60000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2591667, 8.252444444, NULL, NULL),
(394, 3, 'Jayson Household', 'Kamaong Street', '2005-08-25', 200000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2592222, 8.252416667, NULL, NULL),
(395, 3, 'Cacinero Household', 'Kamaong Street', '1987-07-29', 200000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2591111, 8.252388889, NULL, NULL),
(396, 3, 'Pasco Household', 'Kamaong Street', '2008-01-05', 200000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2591944, 8.252472222, NULL, NULL),
(397, 3, 'Alcaras Household', 'Kamaong Street', '2002-08-19', 30000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2593333, 8.252555556, NULL, NULL),
(398, 3, 'Siapel Household', 'Kamaong Street', '1989-07-14', 20000, 'Residential', 'Wood', 15, 1, 'Owner', 124.2593056, 8.252611111, NULL, NULL),
(399, 3, 'Aguinod Household', 'Kamaong Street', '1992-01-09', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2593056, 8.252361111, NULL, NULL),
(400, 3, 'Dag-uman Household', 'Kamaong Street', '2008-11-20', 200000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2593611, 8.252277778, NULL, NULL),
(401, 3, 'Bantayan Household', 'Kamaong Street', '2008-06-22', 200000, 'Residential', 'Wood', 320, 1, 'Owner', 124.25925, 8.252277778, NULL, NULL),
(402, 3, 'Siapel Household', 'Kamaong Street', '1994-01-12', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2591667, 8.252305556, NULL, NULL),
(403, 3, 'Bontilaw Household', 'Kamaong Street', '1997-10-09', 300000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2591944, 8.252194444, NULL, NULL),
(404, 3, 'Jayzoy Household', 'Kamaong Street', '2003-08-21', 150000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2590556, 8.252111111, NULL, NULL),
(405, 3, 'Pacada Household', 'Kamaong Street', '1988-11-17', 200000, 'Residential', 'Bamboo', 36, 1, 'Owner', 124.2590833, 8.252083333, NULL, NULL),
(406, 3, 'Cabahug Household', 'Kamaong Street', '1989-06-06', 150000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2590833, 8.252027778, NULL, NULL),
(407, 3, 'Dag-uman Household', 'Kamaong Street', '1998-11-18', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2591111, 8.252111111, NULL, NULL),
(408, 3, 'Dag-uman Household', 'Kamaong Street', '1986-04-26', 0, 'Residential', 'Wood', 50, 1, 'Owner', 124.2591111, 8.252194444, NULL, NULL),
(409, 3, 'Austero Household', 'Kamaong Street', '2009-03-16', 300000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2591389, 8.252027778, NULL, NULL),
(410, 3, 'Villa_Hermosa Household', 'Kamaong Street', '1993-07-22', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2591111, 8.251944444, NULL, NULL),
(411, 3, 'Saploy Household', 'Kamaong Street', '1989-05-28', 300000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2591667, 8.251861111, NULL, NULL),
(412, 3, 'Rubia Household', 'Kamaong Street', '1998-07-09', 100000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.25925, 8.251861111, NULL, NULL),
(413, 3, 'Galbes Household', 'Kamaong Street', '1992-03-18', 60000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2591944, 8.251888889, NULL, NULL),
(414, 3, 'Rubia Household', 'Kamaong Street', '2000-06-19', 40000, 'Residential', 'Masonry', 15, 1, 'Owner', 124.2592222, 8.251861111, NULL, NULL),
(415, 3, 'Repicio Household', 'Kamaong Street', '1987-03-04', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2591667, 8.251861111, NULL, NULL),
(416, 3, 'Matahong Household', 'Kamaong Street', '1986-10-09', 100000, 'Residential', 'Bamboo', 18, 1, 'Owner', 124.2591667, 8.251805556, NULL, NULL),
(417, 3, 'Apique Household', 'Kamaong Street', '2003-04-03', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2593056, 8.251777778, NULL, NULL),
(418, 3, 'Sumandora Household', 'Kamaong Street', '2004-03-21', 30000, 'Residential', 'Wood', 10, 1, 'Owner', 124.2595, 8.251833333, NULL, NULL),
(419, 3, 'Quidlat Household', 'Kamaong Street', '1986-03-28', 100000, 'Residential', 'Masonry', 12, 1, 'Owner', 124.2595556, 8.25275, NULL, NULL),
(420, 3, 'Chen_Foo Household', 'Kamaong Street', '1992-08-29', 2000000, 'Residential', 'Makeshift', 80, 1, 'Owner', 124.2621944, 8.252638889, NULL, NULL),
(421, 3, 'Benabawan Household', 'Kamaong Street', '1988-11-09', 50000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2604444, 8.251583333, NULL, NULL),
(422, 8, 'Malonhaw Household', 'Kamaong Street', '1998-11-16', 500000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2593889, 8.249777778, NULL, NULL),
(423, 8, 'Florez Household', 'Kamaong Street', '2004-06-05', 1000000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2592778, 8.249694444, NULL, NULL),
(424, 8, 'Gallena Household', 'Kamaong Street', '1986-06-25', 1000000, 'Residential', 'Bamboo', 80, 1, 'Owner', 124.2590278, 8.247027778, NULL, NULL),
(425, 8, 'Bado Household', 'Kamaong Street', '1990-08-13', 300000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2589167, 8.250138889, NULL, NULL),
(426, 8, 'Lipasan Household', 'Kamaong Street', '2002-04-05', 120000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2590278, 8.250388889, NULL, NULL),
(427, 8, 'Bado Household', 'Kamaong Street', '1988-04-08', 200000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2590556, 8.250416667, NULL, NULL),
(428, 8, 'Ondong Household', 'Kamaong Street', '2009-10-27', 400000, 'Residential', 'Makeshift', 70, 1, 'Owner', 124.2588889, 8.250527778, NULL, NULL),
(429, 8, 'Lopez Household', 'Kamaong Street', '2002-08-02', 200000, 'Residential', 'Wood', 36, 1, 'Owner', 124.2588889, 8.250527778, NULL, NULL),
(430, 8, 'Fagaloyon Household', 'Kamaong Street', '2008-06-05', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2589444, 8.250611111, NULL, NULL),
(431, 8, 'Iguado Household', 'Kamaong Street', '2003-02-12', 500000, 'Residential', 'Makeshift', 80, 1, 'Owner', 124.2585278, 8.250166667, NULL, NULL),
(432, 8, 'Sacapan Household', 'Kamaong Street', '2009-03-19', 1000000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2582222, 8.24975, NULL, NULL),
(433, 8, 'Suminget Household', 'Kamaong Street', '1995-01-22', 200000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2583333, 8.249666667, NULL, NULL),
(434, 8, 'Saraosad Household', 'Kamaong Street', '1987-09-03', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2587778, 8.248972222, NULL, NULL),
(435, 8, 'Lopera Household', 'Kamaong Street', '1995-07-01', 1000000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2588333, 8.249, NULL, NULL),
(436, 8, 'Lopera Household', 'Kamaong Street', '2002-06-23', 500000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2586944, 8.249083333, NULL, NULL),
(437, 8, 'Lopera Household', 'Kamaong Street', '2009-08-18', 1000000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2586389, 8.249055556, NULL, NULL),
(438, 1, 'Alivio Household', 'Kamaong Street', '2005-05-09', 100000, 'Residential', 'Metal', 37, 1, 'Owner', 124.2654167, 8.2535, NULL, NULL),
(439, 1, 'Cebusana Household', 'Kamaong Street', '2007-01-02', 100000, 'Residential', 'Makeshift', 26, 1, 'Owner', 124.2684167, 8.251694444, NULL, NULL),
(440, 1, 'Surigao Household', 'Kamaong Street', '2007-06-09', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2683889, 8.251722222, NULL, NULL),
(441, 1, 'Abelosa Household', 'Kamaong Street', '1992-10-26', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2683333, 8.251527778, NULL, NULL),
(442, 1, 'Laurente Household', 'Kamaong Street', '2007-12-29', 200000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2681111, 8.251555556, NULL, NULL),
(443, 1, 'Laurenti Household', 'Kamaong Street', '2007-12-05', 200000, 'Residential', 'Metal', 30, 1, 'Owner', 124.268, 8.251361111, NULL, NULL),
(444, 1, 'Laurenti Household', 'Kamaong Street', '1994-05-22', 200000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2680556, 8.251555556, NULL, NULL),
(445, 1, 'Baran Household', 'Kamaong Street', '2009-12-27', 200000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2681389, 8.251388889, NULL, NULL),
(446, 1, 'Laurenti Household', 'Kamaong Street', '1989-08-26', 150000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2681111, 8.2515, NULL, NULL),
(447, 1, 'Cadampong Household', 'Kamaong Street', '1992-04-28', 300000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2678333, 8.251444444, NULL, NULL),
(448, 1, 'Laurenti Household', 'Kamaong Street', '2004-12-02', 100000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2679444, 8.251416667, NULL, NULL),
(449, 1, 'Antiro Household', 'Kamaong Street', '2007-08-31', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2681389, 8.251527778, NULL, NULL),
(450, 1, 'Laurenti Household', 'Kamaong Street', '1991-12-02', 100000, 'Residential', 'Makeshift', 16, 1, 'Owner', 124.2681944, 8.251, NULL, NULL),
(451, 1, 'Sierra Household', 'Kamaong Street', '2001-10-15', 40000, 'Residential', 'Wood', 12, 1, 'Owner', 124.2683056, 8.251083333, NULL, NULL),
(452, 1, 'Dayundong Household', 'Kamaong Street', '2009-04-28', 300000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2682222, 8.251194444, NULL, NULL),
(453, 1, 'Sator Household', 'Kamaong Street', '2003-08-31', 300000, 'Residential', 'Masonry', 36, 1, 'Owner', 124.2681667, 8.251305556, NULL, NULL),
(454, 1, 'Sator Household', 'Kamaong Street', '2008-11-09', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2681944, 8.251277778, NULL, NULL),
(455, 6, 'Curpos Household', 'Kamaong Street', '2006-08-11', 300000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2675, 8.249972222, NULL, NULL),
(456, 6, 'Cabiling Household', 'Kamaong Street', '2001-08-29', 50000, 'Residential', 'Metal', 16, 1, 'Owner', 124.2674444, 8.250027778, NULL, NULL),
(457, 6, 'Corpuz Household', 'Kamaong Street', '1992-01-21', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2674444, 8.249666667, NULL, NULL),
(458, 6, 'Pezon Household', 'Kamaong Street', '1986-12-27', 5000, 'Residential', 'Concrete', 3, 1, 'Owner', 124.2674167, 8.24975, NULL, NULL),
(459, 6, 'Putalan Household', 'Kamaong Street', '2000-11-05', 100000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2673333, 8.249583333, NULL, NULL),
(460, 6, 'Bado Household', 'Kamaong Street', '1999-10-01', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2677222, 8.249583333, NULL, NULL),
(461, 6, 'Bado Household', 'Kamaong Street', '1990-08-28', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2676667, 8.249555556, NULL, NULL),
(462, 6, 'Castillon Household', 'Kamaong Street', '1991-09-02', 500000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2671389, 8.249333333, NULL, NULL),
(463, 6, 'Legotan Household', 'Kamaong Street', '2002-04-30', 50000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2669722, 8.248916667, NULL, NULL),
(464, 6, 'Torreon Household', 'Kamaong Street', '1997-08-27', 50000, 'Residential', 'Metal', 20, 1, 'Owner', 124.267, 8.248916667, NULL, NULL),
(465, 6, 'Aguilar Household', 'Kamaong Street', '1993-07-12', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2671389, 8.248944444, NULL, NULL),
(466, 6, 'Aguilar Household', 'Kamaong Street', '1993-03-13', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2671111, 8.248916667, NULL, NULL),
(467, 6, 'Empasis Household', 'Kamaong Street', '2005-02-08', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2671389, 8.249, NULL, NULL),
(468, 6, 'Aguilar Household', 'Kamaong Street', '1989-06-07', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2671389, 8.248916667, NULL, NULL),
(469, 6, 'Capuno Household', 'Kamaong Street', '1994-09-24', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2669722, 8.248888889, NULL, NULL),
(470, 6, 'Empasis Household', 'Kamaong Street', '2009-05-23', 500000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2669722, 8.248944444, NULL, NULL),
(471, 6, 'Yascer Household', 'Kamaong Street', '2003-03-31', 80000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.267, 8.248861111, NULL, NULL),
(472, 6, 'Salde Household', 'Kamaong Street', '1992-11-28', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2668056, 8.249083333, NULL, NULL),
(473, 6, 'Ermac Household', 'Kamaong Street', '1988-04-26', 100000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2665278, 8.249611111, NULL, NULL),
(474, 6, 'Ermac Household', 'Kamaong Street', '1986-10-12', 100000, 'Residential', 'Masonry', 22, 1, 'Owner', 124.2666111, 8.249611111, NULL, NULL),
(475, 6, 'Ermac Household', 'Kamaong Street', '1990-10-19', 5000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2666111, 8.249527778, NULL, NULL),
(476, 6, 'Ermac Household', 'Kamaong Street', '2002-02-20', 200000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2666944, 8.249611111, NULL, NULL),
(477, 6, 'Reroma Household', 'Kamaong Street', '1992-02-13', 80000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2666944, 8.249555556, NULL, NULL),
(478, 6, 'Capitan Household', 'Kamaong Street', '1990-09-20', 300000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2669722, 8.249555556, NULL, NULL),
(479, 6, 'Torreon Household', 'Kamaong Street', '2009-05-11', 50000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2662778, 8.250305556, NULL, NULL),
(480, 6, 'Torreon Household', 'Kamaong Street', '1987-06-03', 500000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2663611, 8.25025, NULL, NULL),
(481, 6, 'Hubernadas Household', 'Kamaong Street', '2000-03-10', 500000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2668056, 8.250194444, NULL, NULL),
(482, 6, 'Ermac Household', 'Kamaong Street', '1991-07-03', 50000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2673056, 8.2505, NULL, NULL),
(483, 6, 'Apongan Household', 'Kamaong Street', '2005-06-15', 500000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2676667, 8.250305556, NULL, NULL),
(484, 6, 'Apongan Household', 'Kamaong Street', '1990-05-04', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2674167, 8.25025, NULL, NULL),
(485, 6, 'Pepito Household', 'Kamaong Street', '2006-08-03', 500000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2619167, 8.245833333, NULL, NULL),
(486, 18, 'Tore Household', 'Kamaong Street', '2006-12-14', 150000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2619444, 8.245833333, NULL, NULL),
(487, 18, 'Quinte Household', 'Kamaong Street', '1996-11-27', 40000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2621667, 8.245722222, NULL, NULL),
(488, 6, 'Apongan Household', 'Kamaong Street', '2004-12-14', 150000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2673611, 8.250472222, NULL, NULL),
(489, 18, 'Aso Household', 'Kamaong Street', '2005-05-18', 100000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2622222, 8.245722222, NULL, NULL),
(490, 18, 'Payas Household', 'Kamaong Street', '2007-05-14', 50000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2624444, 8.245722222, NULL, NULL),
(491, 18, 'Legaspi Household', 'Kamaong Street', '2001-07-18', 300000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2622778, 8.245777778, NULL, NULL),
(492, 18, 'Pepito Household', 'Kamaong Street', '2001-07-24', 60000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2628333, 8.24575, NULL, NULL),
(493, 18, 'Aniasco Household', 'Kamaong Street', '1990-08-11', 300000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2623056, 8.245805556, NULL, NULL),
(494, 18, 'Broñidor Household', 'Kamaong Street', '1986-10-18', 300000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2621111, 8.245944444, NULL, NULL),
(495, 18, 'Flores Household', 'Kamaong Street', '1989-08-27', 150000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2620278, 8.245944444, NULL, NULL),
(496, 18, 'Andos Household', 'Kamaong Street', '1997-12-24', 200000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2620556, 8.246055556, NULL, NULL),
(497, 18, 'Anding Household', 'Kamaong Street', '2003-11-18', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2619722, 8.246083333, NULL, NULL),
(498, 18, 'Maglasang Household', 'Kamaong Street', '1986-11-02', 200000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.262, 8.246111111, NULL, NULL),
(499, 18, 'Maglasang Household', 'Kamaong Street', '2002-10-31', 100000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2619167, 8.246194444, NULL, NULL),
(500, 18, 'Maliao Household', 'Kamaong Street', '1988-04-09', 50000, 'Residential', 'Metal', 16, 1, 'Owner', 124.2618611, 8.246166667, NULL, NULL),
(501, 18, 'Amongos Household', 'Kamaong Street', '1991-09-18', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2617222, 8.246166667, NULL, NULL),
(502, 18, 'Itom Household', 'Kamaong Street', '2001-07-18', 0, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2618611, 8.246027778, NULL, NULL),
(503, 18, 'Germoñea Household', 'Kamaong Street', '1987-08-08', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2617222, 8.245944444, NULL, NULL),
(504, 18, 'Pompales Household', 'Kamaong Street', '1990-04-06', 0, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2619167, 8.246, NULL, NULL),
(505, 18, 'Mala-ubang Household', 'Kamaong Street', '1995-09-13', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2618611, 8.246027778, NULL, NULL),
(506, 18, 'Maghanoy Household', 'Kamaong Street', '2001-03-19', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2619722, 8.24575, NULL, NULL),
(507, 18, 'Miza Household', 'Kamaong Street', '2009-04-27', 300000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.262, 8.245638889, NULL, NULL),
(508, 18, 'Pahinte Household', 'Kamaong Street', '1998-01-04', 100000, 'Residential', 'Metal', 60, 1, 'Owner', 124.262, 8.245722222, NULL, NULL),
(509, 18, 'Manggubat Household', 'Kamaong Street', '2009-11-23', 200000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2621944, 8.245416667, NULL, NULL),
(510, 18, 'Dandasan Household', 'Kamaong Street', '2003-09-02', 100000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2627778, 8.245333333, NULL, NULL),
(511, 18, 'Salvo Household', 'Kamaong Street', '1990-09-30', 80000, 'Residential', 'Concrete', 15, 1, 'Owner', 124.2622778, 8.245055556, NULL, NULL),
(512, 18, 'Salvo Household', 'Kamaong Street', '2005-07-27', 300000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2620278, 8.245194444, NULL, NULL),
(513, 18, 'Salaan Household', 'Kamaong Street', '2004-08-07', 100000, 'Residential', 'Metal', 30, 1, 'Owner', 124.262, 8.245111111, NULL, NULL),
(514, 18, 'Salaan Household', 'Kamaong Street', '2002-12-19', 20000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2619167, 8.246277778, NULL, NULL),
(515, 18, 'Barat Household', 'Kamaong Street', '1997-03-28', 80000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2618611, 8.245416667, NULL, NULL),
(516, 18, 'Bavyera Household', 'Kamaong Street', '2007-01-01', 50000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2618056, 8.245416667, NULL, NULL),
(517, 18, 'Generoso Household', 'Kamaong Street', '1997-08-18', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2618056, 8.2455, NULL, NULL),
(518, 18, 'Salazar Household', 'Kamaong Street', '1993-03-02', 600000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2618056, 8.245527778, NULL, NULL),
(519, 18, 'Pocot Household', 'Kamaong Street', '1999-02-02', 600000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2618056, 8.245722222, NULL, NULL),
(520, 18, 'Nabua Household', 'Kamaong Street', '1996-05-14', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2618333, 8.245722222, NULL, NULL),
(521, 18, 'Viña Household', 'Kamaong Street', '2006-10-25', 200000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2617222, 8.245805556, NULL, NULL),
(522, 18, 'Amanariio Household', 'Kamaong Street', '1992-02-04', 40000, 'Residential', 'Masonry', 15, 1, 'Owner', 124.2616389, 8.245861111, NULL, NULL),
(523, 18, 'Padillo Household', 'Kamaong Street', '1990-05-11', 50000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2616389, 8.246055556, NULL, NULL),
(524, 18, 'Poca Household', 'Kamaong Street', '1991-06-28', 200000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2616389, 8.246, NULL, NULL),
(525, 18, 'Padillo Household', 'Kamaong Street', '2002-06-12', 50000, 'Residential', 'Bamboo', 15, 1, 'Owner', 124.2615833, 8.246194444, NULL, NULL),
(526, 18, 'Nanaman Household', 'Kamaong Street', '1993-10-21', 50000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2614167, 8.246111111, NULL, NULL),
(527, 18, 'Nanaman Household', 'Kamaong Street', '1988-11-12', 30000, 'Residential', 'Wood', 18, 1, 'Owner', 124.2613889, 8.246083333, NULL, NULL),
(528, 18, 'Ojalis Household', 'Kamaong Street', '1986-06-03', 200000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2614444, 8.246027778, NULL, NULL),
(529, 18, 'Nanaman Household', 'Kamaong Street', '2002-05-07', 200000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2615, 8.246, NULL, NULL),
(530, 18, 'Amarga Household', 'Kamaong Street', '1992-05-11', 100000, 'Residential', 'Wood', 12, 1, 'Owner', 124.2614444, 8.245805556, NULL, NULL),
(531, 18, 'Amarga Household', 'Kamaong Street', '1988-09-03', 0, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2613889, 8.245638889, NULL, NULL),
(532, 18, 'Maghinay Household', 'Kamaong Street', '1998-12-30', 500000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2608611, 8.245666667, NULL, NULL),
(533, 18, 'Hepowit Household', 'Kamaong Street', '2000-07-30', 100000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2600278, 8.244472222, NULL, NULL),
(534, 18, 'Canbaya Household', 'Kamaong Street', '2005-08-01', 100000, 'Residential', 'Metal', 36, 1, 'Owner', 124.2600556, 8.244388889, NULL, NULL),
(535, 18, 'Villanueva Household', 'Kamaong Street', '2007-08-10', 100000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2624444, 8.243416667, NULL, NULL),
(536, 18, 'Cabasag Household', 'Kamaong Street', '1999-07-02', 200000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2625556, 8.243861111, NULL, NULL),
(537, 18, 'Labrador Household', 'Kamaong Street', '1991-03-13', 300000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2635, 8.243722222, NULL, NULL),
(538, 18, 'Ampoan Household', 'Kamaong Street', '2003-10-08', 200000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2610278, 8.245611111, NULL, NULL),
(539, 18, 'Ligas Household', 'Kamaong Street', '1992-03-10', 60000, 'Residential', 'Masonry', 25, 1, 'Owner', 124.2626667, 8.24375, NULL, NULL),
(540, 18, 'Palangcon Household', 'Kamaong Street', '2005-10-05', 500000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2624444, 8.244027778, NULL, NULL),
(541, 18, 'Demao Household', 'Kamaong Street', '1992-01-10', 50000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2624167, 8.244138889, NULL, NULL),
(542, 18, 'Cabaniro Household', 'Kamaong Street', '2004-09-26', 150000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2624167, 8.244111111, NULL, NULL),
(543, 18, 'Bueno Household', 'Kamaong Street', '2007-10-13', 50000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2625556, 8.244138889, NULL, NULL),
(544, 18, 'Lato Household', 'Kamaong Street', '1988-01-26', 80000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.26225, 8.244111111, NULL, NULL),
(545, 18, 'Cutab Household', 'Kamaong Street', '1997-02-15', 60000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2626111, 8.244111111, NULL, NULL),
(546, 18, 'Francisco Household', 'Kamaong Street', '2002-07-20', 150000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2626389, 8.244083333, NULL, NULL),
(547, 18, 'Rico Household', 'Kamaong Street', '2000-11-27', 50000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2625833, 8.243972222, NULL, NULL),
(548, 18, 'Binghit Household', 'Kamaong Street', '1988-01-07', 150000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2626944, 8.244138889, NULL, NULL),
(549, 18, 'Sebaga Household', 'Kamaong Street', '2000-07-21', 200000, 'Residential', 'Bamboo', 54, 1, 'Owner', 124.2627222, 8.244305556, NULL, NULL),
(550, 18, 'Bacus Household', 'Kamaong Street', '1991-04-07', 100000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2626111, 8.24425, NULL, NULL),
(551, 18, 'Bacus Household', 'Kamaong Street', '1989-05-22', 150000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2626111, 8.244222222, NULL, NULL),
(552, 18, 'Sumalpong Household', 'Kamaong Street', '1999-08-31', 150000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2626389, 8.244222222, NULL, NULL),
(553, 18, 'Mangubat Household', 'Kamaong Street', '1996-05-15', 300000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.26275, 8.24475, NULL, NULL),
(554, 18, 'Lonoy Household', 'Kamaong Street', '1988-09-14', 300000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2624167, 8.244972222, NULL, NULL),
(555, 18, 'Olandesca Household', 'Kamaong Street', '1991-01-20', 150000, 'Residential', 'Wood', 60, 1, 'Owner', 124.26225, 8.24475, NULL, NULL),
(556, 18, 'Razo Household', 'Kamaong Street', '1993-04-19', 500000, 'Residential', 'Masonry', 70, 1, 'Owner', 124.2618611, 8.244722222, NULL, NULL),
(557, 18, 'Mandrial Household', 'Kamaong Street', '2002-05-26', 200000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2615833, 8.244694444, NULL, NULL),
(558, 18, 'Conas Household', 'Kamaong Street', '1988-12-06', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2615, 8.244555556, NULL, NULL),
(559, 18, 'Rosales Household', 'Kamaong Street', '1999-12-17', 150000, 'Residential', 'Wood', 20, 1, 'Owner', 124.2614722, 8.244527778, NULL, NULL),
(560, 18, 'Manieal Household', 'Kamaong Street', '1986-09-30', 500000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2615, 8.244527778, NULL, NULL),
(561, 18, 'Paragozo Household', 'Kamaong Street', '1988-12-06', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2614167, 8.244638889, NULL, NULL),
(562, 18, 'Omolon Household', 'Kamaong Street', '2009-10-07', 300000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2614167, 8.244416667, NULL, NULL),
(563, 18, 'DeloSantos Household', 'Kamaong Street', '1986-05-26', 100000, 'Residential', 'Metal', 15, 1, 'Owner', 124.2615556, 8.244111111, NULL, NULL),
(564, 18, 'Jimenez Household', 'Kamaong Street', '1997-11-01', 500000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2615, 8.243972222, NULL, NULL),
(565, 18, 'Budlong Household', 'Kamaong Street', '1997-07-24', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2615278, 8.244083333, NULL, NULL),
(566, 18, 'Anino Household', 'Kamaong Street', '1997-09-27', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2615, 8.244111111, NULL, NULL),
(567, 18, 'Balogo Household', 'Kamaong Street', '1991-12-19', 200000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2614167, 8.244055556, NULL, NULL),
(568, 18, 'Ronitarez Household', 'Kamaong Street', '1996-11-08', 100000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2614167, 8.244027778, NULL, NULL),
(569, 18, 'Sardella Household', 'Kamaong Street', '1998-07-30', 200000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2613611, 8.244027778, NULL, NULL),
(570, 18, 'Suan Household', 'Kamaong Street', '1994-06-09', 300000, 'Residential', 'Metal', 58, 1, 'Owner', 124.2613611, 8.243972222, NULL, NULL),
(571, 18, 'Solano Household', 'Kamaong Street', '1986-12-12', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2612778, 8.244027778, NULL, NULL),
(572, 18, 'Castro Household', 'Kamaong Street', '2001-08-18', 100000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2611944, 8.243916667, NULL, NULL),
(573, 18, 'Sardella Household', 'Kamaong Street', '2009-10-21', 100000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2614444, 8.244305556, NULL, NULL),
(574, 18, 'Caburnay Household', 'Kamaong Street', '1993-12-03', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.26125, 8.244472222, NULL, NULL),
(575, 18, 'Zafra Household', 'Kamaong Street', '1989-03-02', 500000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2606944, 8.244388889, NULL, NULL),
(576, 18, 'Yongco Household', 'Kamaong Street', '2006-03-21', 20000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.261, 8.244083333, NULL, NULL),
(577, 18, 'Yongco Household', 'Kamaong Street', '2001-07-15', 80000, 'Residential', 'Masonry', 10, 1, 'Owner', 124.2610556, 8.244138889, NULL, NULL),
(578, 18, 'Zafra Household', 'Kamaong Street', '1990-04-01', 40000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2608056, 8.244305556, NULL, NULL),
(579, 18, 'Zafra Household', 'Kamaong Street', '1992-09-09', 50000, 'Residential', 'Concrete', 28, 1, 'Owner', 124.2607222, 8.244194444, NULL, NULL),
(580, 18, 'Maglinao Household', 'Kamaong Street', '2004-09-06', 300000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.26075, 8.244222222, NULL, NULL),
(581, 18, 'Yongco Household', 'Kamaong Street', '1991-08-06', 100000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2606111, 8.244333333, NULL, NULL),
(582, 18, 'Yongco Household', 'Kamaong Street', '2001-03-30', 300000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2605833, 8.244305556, NULL, NULL),
(583, 18, 'Tabuclin Household', 'Kamaong Street', '1991-07-28', 500000, 'Residential', 'Concrete', 80, 1, 'Owner', 124.2604722, 8.244333333, NULL, NULL),
(584, 18, 'Taboknoy Household', 'Kamaong Street', '1991-01-28', 300000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2606389, 8.244166667, NULL, NULL),
(585, 1, 'Gornez Household', 'Kamaong Street', '1997-10-23', 70000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2651667, 8.253638889, NULL, NULL),
(586, 18, 'Maglinao Household', 'Kamaong Street', '1997-03-14', 200000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2606389, 8.244, NULL, NULL),
(587, 18, 'Actub Household', 'Kamaong Street', '2003-08-20', 600000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2607222, 8.244166667, NULL, NULL),
(588, 18, 'Tugonon Household', 'Kamaong Street', '2006-12-28', 50000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2605, 8.243972222, NULL, NULL),
(589, 18, 'Amarga Household', 'Kamaong Street', '1990-06-21', 100000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2605556, 8.243944444, NULL, NULL),
(590, 18, 'Amarga Household', 'Kamaong Street', '1995-12-10', 30000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2605556, 8.243861111, NULL, NULL),
(591, 18, 'Lumosad Household', 'Kamaong Street', '1999-03-04', 50000, 'Residential', 'Bamboo', 34, 1, 'Owner', 124.2605556, 8.243833333, NULL, NULL),
(592, 18, 'Amarga Household', 'Kamaong Street', '1998-12-15', 40000, 'Residential', 'Metal', 24, 1, 'Owner', 124.2605278, 8.243861111, NULL, NULL),
(593, 18, 'Valdez Household', 'Kamaong Street', '1987-05-27', 30000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2604722, 8.243916667, NULL, NULL),
(594, 18, 'Pacana Household', 'Kamaong Street', '1991-07-11', 50000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2605278, 8.243972222, NULL, NULL),
(595, 18, 'Petanas Household', 'Kamaong Street', '1996-01-04', 300000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2604167, 8.243888889, NULL, NULL),
(596, 18, 'Raso Household', 'Kamaong Street', '2008-07-22', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2604167, 8.243833333, NULL, NULL),
(597, 18, 'Ramiro Household', 'Kamaong Street', '2006-06-05', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2604444, 8.243888889, NULL, NULL),
(598, 18, 'Ayawan Household', 'Kamaong Street', '2001-10-11', 10000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2603056, 8.243777778, NULL, NULL),
(599, 18, 'Paculba Household', 'Kamaong Street', '1988-03-16', 30000, 'Residential', 'Bamboo', 32, 1, 'Owner', 124.2603333, 8.243777778, NULL, NULL),
(600, 18, 'Amarga Household', 'Kamaong Street', '2006-02-03', 50000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2603333, 8.24375, NULL, NULL),
(601, 18, 'Generalao Household', 'Kamaong Street', '1994-01-27', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2602222, 8.244277778, NULL, NULL),
(602, 18, 'Obeso Household', 'Kamaong Street', '1996-12-28', 500000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2601667, 8.244222222, NULL, NULL),
(603, 18, 'Generalao Household', 'Kamaong Street', '1993-08-01', 200000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2602222, 8.244166667, NULL, NULL),
(604, 18, 'Obanan Household', 'Kamaong Street', '2009-05-19', 50000, 'Residential', 'Wood', 36, 1, 'Owner', 124.2602222, 8.243972222, NULL, NULL),
(605, 18, 'Gerboto Household', 'Kamaong Street', '1991-12-07', 50000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2600278, 8.244222222, NULL, NULL),
(606, 18, 'Samson Household', 'Kamaong Street', '1994-12-27', 500000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2598611, 8.244194444, NULL, NULL),
(607, 18, 'Lorenzo Household', 'Kamaong Street', '2006-03-16', 120000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2598056, 8.244166667, NULL, NULL),
(608, 18, 'Punay Household', 'Kamaong Street', '1988-09-20', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2597778, 8.244166667, NULL, NULL),
(609, 18, 'Butac Household', 'Kamaong Street', '1994-01-23', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2597222, 8.244138889, NULL, NULL),
(610, 18, 'Sevilla Household', 'Kamaong Street', '1989-10-30', 100000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2598333, 8.244, NULL, NULL),
(611, 18, 'Callis Household', 'Kamaong Street', '1996-05-10', 300000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2596667, 8.244111111, NULL, NULL),
(612, 18, 'Tabuclin Household', 'Kamaong Street', '2009-06-18', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2604722, 8.244111111, NULL, NULL),
(613, 18, 'Maglasang Household', 'Kamaong Street', '1994-07-09', 80000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2597778, 8.243861111, NULL, NULL),
(614, 18, 'Maglasang Household', 'Kamaong Street', '1999-05-05', 50000, 'Residential', 'Masonry', 10, 1, 'Owner', 124.2599167, 8.243861111, NULL, NULL),
(615, 18, 'Maglasang Household', 'Kamaong Street', '2005-08-20', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2598056, 8.243833333, NULL, NULL),
(616, 18, 'Tabuclin Household', 'Kamaong Street', '1994-05-16', 300000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.25975, 8.243861111, NULL, NULL),
(617, 14, 'Cambaya Household', 'Kamaong Street', '1987-05-14', 300000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2598611, 8.243694444, NULL, NULL),
(618, 14, 'Tikling Household', 'Kamaong Street', '1993-10-23', 60000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2598333, 8.243694444, NULL, NULL),
(619, 14, 'Cambaya Household', 'Kamaong Street', '2004-04-30', 50000, 'Residential', 'Metal', 15, 1, 'Owner', 124.2599167, 8.243694444, NULL, NULL),
(620, 14, 'Cambaya Household', 'Kamaong Street', '2008-10-19', 100000, 'Residential', 'Metal', 10, 1, 'Owner', 124.2600278, 8.243694444, NULL, NULL),
(621, 14, 'Noguera Household', 'Kamaong Street', '1990-06-04', 350000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2595556, 8.244027778, NULL, NULL),
(622, 14, 'Salibo Household', 'Kamaong Street', '1991-01-25', 100000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2594722, 8.243944444, NULL, NULL),
(623, 14, 'Salibo Household', 'Kamaong Street', '1986-07-01', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2594444, 8.244027778, NULL, NULL),
(624, 14, 'Fernandez Household', 'Kamaong Street', '1999-04-13', 1000000, 'Residential', 'Concrete', 100, 1, 'Owner', 124.2594722, 8.243916667, NULL, NULL),
(625, 14, 'Romeo Household', 'Kamaong Street', '1997-10-02', 80000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2595, 8.243722222, NULL, NULL),
(626, 14, 'Zaide Household', 'Kamaong Street', '2008-12-06', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2594722, 8.243722222, NULL, NULL),
(627, 14, 'Fernandez Household', 'Kamaong Street', '1993-09-25', 100000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2594167, 8.24375, NULL, NULL),
(628, 14, 'Paradela Household', 'Kamaong Street', '2007-05-26', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2594167, 8.243777778, NULL, NULL),
(629, 14, 'Yongco Household', 'Kamaong Street', '2003-05-30', 300000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2593889, 8.244, NULL, NULL),
(630, 14, 'Sanoria Household', 'Kamaong Street', '1993-12-07', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.25925, 8.244, NULL, NULL),
(631, 14, 'Loresco Household', 'Kamaong Street', '1996-04-30', 100000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2593889, 8.243611111, NULL, NULL),
(632, 14, 'Bedro Household', 'Kamaong Street', '2003-06-12', 60000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2592222, 8.243666667, NULL, NULL),
(633, 14, 'Aron Household', 'Kamaong Street', '2001-06-15', 100000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2592222, 8.243861111, NULL, NULL),
(634, 14, 'Oleriano Household', 'Kamaong Street', '1987-08-30', 200000, 'Residential', 'Metal', 100, 1, 'Owner', 124.2587778, 8.243777778, NULL, NULL),
(635, 14, 'Yongco Household', 'Kamaong Street', '1988-05-03', 100000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2593056, 8.244222222, NULL, NULL),
(636, 14, 'Hernani Household', 'Kamaong Street', '2005-04-01', 60000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2584722, 8.243611111, NULL, NULL),
(637, 14, 'Gabines Household', 'Kamaong Street', '2009-09-17', 60000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2585, 8.243638889, NULL, NULL),
(638, 14, 'Mariquit Household', 'Kamaong Street', '2007-12-10', 100000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2585556, 8.243555556, NULL, NULL),
(639, 14, 'Tairos Household', 'Kamaong Street', '1987-08-04', 100000, 'Residential', 'Masonry', 15, 1, 'Owner', 124.2583333, 8.243333333, NULL, NULL),
(640, 14, 'Ugok Household', 'Kamaong Street', '2006-11-14', 100000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2583889, 8.2435, NULL, NULL),
(641, 14, 'Arma Household', 'Kamaong Street', '1998-06-22', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2584167, 8.243416667, NULL, NULL),
(642, 14, 'Sadirnas Household', 'Kamaong Street', '2001-04-18', 200000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2584167, 8.243388889, NULL, NULL),
(643, 14, 'Mayor Household', 'Kamaong Street', '1988-02-21', 200000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2582222, 8.243388889, NULL, NULL),
(644, 14, 'Mayor Household', 'Kamaong Street', '2002-05-12', 50000, 'Residential', 'Wood', 20, 1, 'Owner', 124.2583333, 8.243361111, NULL, NULL),
(645, 14, 'Aniasco Household', 'Kamaong Street', '2009-04-30', 150000, 'Residential', 'Masonry', 36, 1, 'Owner', 124.2583889, 8.243333333, NULL, NULL),
(646, 14, 'Rico Household', 'Kamaong Street', '2009-04-27', 60000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2583889, 8.243444444, NULL, NULL),
(647, 14, 'Aclon Household', 'Kamaong Street', '2007-10-26', 150000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2583889, 8.243138889, NULL, NULL),
(648, 14, 'Anaya Household', 'Kamaong Street', '2009-07-20', 40000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2590556, 8.243472222, NULL, NULL),
(649, 14, 'Bracero Household', 'Kamaong Street', '1988-10-21', 100000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2590556, 8.243527778, NULL, NULL),
(650, 14, 'Dabodabo Household', 'Kamaong Street', '2002-04-22', 100000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2590556, 8.243333333, NULL, NULL),
(651, 14, 'Mag-aso Household', 'Kamaong Street', '1993-02-21', 200000, 'Residential', 'Makeshift', 80, 1, 'Owner', 124.2591111, 8.243111111, NULL, NULL),
(652, 14, 'Baterna Household', 'Kamaong Street', '1998-09-23', 300000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2591389, 8.243111111, NULL, NULL),
(653, 14, 'Layog Household', 'Kamaong Street', '2002-04-06', 250000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2592778, 8.243, NULL, NULL),
(654, 14, 'Bangis Household', 'Kamaong Street', '1998-01-28', 100000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2589722, 8.242944444, NULL, NULL),
(655, 14, 'Zoles Household', 'Kamaong Street', '2009-06-23', 60000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.259, 8.24275, NULL, NULL),
(656, 14, 'Carisagan Household', 'Kamaong Street', '1987-09-21', 50000, 'Residential', 'Concrete', 28, 1, 'Owner', 124.2587778, 8.243138889, NULL, NULL),
(657, 19, 'Pandoma Household', 'Kamaong Street', '1996-03-21', 120000, 'Residential', 'Metal', 60, 1, 'Owner', 124.26275, 8.243388889, NULL, NULL),
(658, 19, 'Lapuz Household', 'Kamaong Street', '1990-09-09', 200000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.26275, 8.243416667, NULL, NULL),
(659, 19, 'Tan Household', 'Kamaong Street', '2003-05-06', 60000, 'Residential', 'Masonry', 34, 1, 'Owner', 124.2628333, 8.24325, NULL, NULL),
(660, 19, 'Lluisma Household', 'Kamaong Street', '1994-05-09', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2628056, 8.243333333, NULL, NULL),
(661, 19, 'Real Household', 'Kamaong Street', '1988-07-05', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2629444, 8.243361111, NULL, NULL),
(662, 19, 'Daligdig Household', 'Kamaong Street', '1997-12-21', 60000, 'Residential', 'Wood', 40, 1, 'Owner', 124.263, 8.243361111, NULL, NULL),
(663, 19, 'Uno Household', 'Kamaong Street', '1992-07-26', 60000, 'Residential', 'Bamboo', 36, 1, 'Owner', 124.2628889, 8.243555556, NULL, NULL),
(664, 19, 'Tabil Household', 'Kamaong Street', '1988-12-01', 100000, 'Residential', 'Wood', 28, 1, 'Owner', 124.2628611, 8.243555556, NULL, NULL),
(665, 19, 'Iglupas Household', 'Kamaong Street', '1996-12-13', 40000, 'Residential', 'Makeshift', 26, 1, 'Owner', 124.2630278, 8.243583333, NULL, NULL),
(666, 19, 'Embang Household', 'Kamaong Street', '1990-03-19', 20000, 'Residential', 'Makeshift', 36, 1, 'Owner', 124.2629722, 8.243305556, NULL, NULL),
(667, 19, 'Abarcar Household', 'Kamaong Street', '1994-12-23', 30000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.263, 8.243555556, NULL, NULL),
(668, 19, 'Real Household', 'Kamaong Street', '1989-03-27', 300000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.263, 8.24325, NULL, NULL),
(669, 19, 'Actub Household', 'Kamaong Street', '1991-11-03', 30000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2626667, 8.243305556, NULL, NULL),
(670, 19, 'Abitago Household', 'Kamaong Street', '2009-01-03', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.26275, 8.243111111, NULL, NULL),
(671, 19, 'Palangan Household', 'Kamaong Street', '2004-08-16', 40000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2624167, 8.242944444, NULL, NULL),
(672, 19, 'Rico Household', 'Kamaong Street', '1989-05-15', 300000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2622222, 8.242944444, NULL, NULL),
(673, 19, 'Madronial Household', 'Kamaong Street', '1990-12-31', 300000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2623333, 8.243166667, NULL, NULL),
(674, 19, 'Villamor Household', 'Kamaong Street', '2000-11-17', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2621944, 8.243277778, NULL, NULL),
(675, 19, 'Tingal Household', 'Kamaong Street', '1991-10-23', 500000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2620278, 8.243194444, NULL, NULL),
(676, 19, 'Solatorio Household', 'Kamaong Street', '2007-02-21', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2621944, 8.243194444, NULL, NULL),
(677, 19, 'Pacaña Household', 'Kamaong Street', '1988-06-26', 500000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2617778, 8.243388889, NULL, NULL);
INSERT INTO `buildings` (`id`, `purok_id`, `name`, `street`, `year_constructed`, `net_value`, `building_usage`, `structure`, `area`, `no_stories`, `holding`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(678, 19, 'Borias Household', 'Kamaong Street', '2007-06-02', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2616944, 8.243444444, NULL, NULL),
(679, 19, 'Bado Household', 'Kamaong Street', '1998-02-11', 150000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2615833, 8.2435, NULL, NULL),
(680, 19, 'Acebes Household', 'Kamaong Street', '1989-01-29', 50000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2613333, 8.243277778, NULL, NULL),
(681, 19, 'Umolon Household', 'Kamaong Street', '2002-02-16', 100000, 'Residential', 'Masonry', 28, 1, 'Owner', 124.2612778, 8.243472222, NULL, NULL),
(682, 19, 'Labalis Household', 'Kamaong Street', '1998-12-01', 2000, 'Residential', 'Metal', 16, 1, 'Owner', 124.2613333, 8.2435, NULL, NULL),
(683, 19, 'Antica Household', 'Kamaong Street', '1993-11-02', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2614722, 8.243388889, NULL, NULL),
(684, 19, 'Balbano Household', 'Kamaong Street', '2000-07-16', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2614444, 8.243277778, NULL, NULL),
(685, 19, 'Viloria Household', 'Kamaong Street', '2002-03-20', 150000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2612778, 8.243, NULL, NULL),
(686, 19, 'Asok Household', 'Kamaong Street', '1993-03-15', 300000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2617222, 8.243277778, NULL, NULL),
(687, 19, 'Rico Household', 'Kamaong Street', '1996-10-20', 200000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2626111, 8.242666667, NULL, NULL),
(688, 19, 'Antonia Household', 'Kamaong Street', '1988-01-18', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.26275, 8.24275, NULL, NULL),
(689, 19, 'Apostol Household', 'Kamaong Street', '2006-07-28', 150000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2626389, 8.242694444, NULL, NULL),
(690, 19, 'Rico Household', 'Kamaong Street', '2008-02-05', 60000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2625278, 8.2425, NULL, NULL),
(691, 19, 'Gasal Household', 'Kamaong Street', '2001-01-25', 300000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2625556, 8.242277778, NULL, NULL),
(692, 19, 'Manreal Household', 'Kamaong Street', '1993-03-12', 300000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2625, 8.242138889, NULL, NULL),
(693, 19, 'Manreal Household', 'Kamaong Street', '2009-04-04', 50000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2624722, 8.242055556, NULL, NULL),
(694, 19, 'Delig Household', 'Kamaong Street', '1990-02-16', 30000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2624167, 8.241972222, NULL, NULL),
(695, 19, 'Manreal Household', 'Kamaong Street', '2000-09-09', 30000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2621944, 8.241833333, NULL, NULL),
(696, 19, 'Manreal Household', 'Kamaong Street', '1986-04-09', 300000, 'Residential', 'Metal', 36, 1, 'Owner', 124.2623056, 8.241805556, NULL, NULL),
(697, 19, 'Manreal Household', 'Kamaong Street', '2004-05-01', 150000, 'Residential', 'Bamboo', 70, 1, 'Owner', 124.2621111, 8.241472222, NULL, NULL),
(698, 19, 'Pitogo Household', 'Kamaong Street', '2004-08-25', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2620833, 8.241611111, NULL, NULL),
(699, 19, 'Manreal Household', 'Kamaong Street', '1989-09-24', 60000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2621111, 8.241611111, NULL, NULL),
(700, 19, 'Gerona Household', 'Kamaong Street', '2008-11-14', 300000, 'Residential', 'Masonry', 45, 1, 'Owner', 124.2618611, 8.241444444, NULL, NULL),
(701, 19, 'Manreal Household', 'Kamaong Street', '2009-08-14', 300000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2616944, 8.241416667, NULL, NULL),
(702, 19, 'Obeso Household', 'Kamaong Street', '1998-03-11', 80000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2616389, 8.241527778, NULL, NULL),
(703, 19, 'Caomiran Household', 'Kamaong Street', '2009-10-11', 100000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2615, 8.241472222, NULL, NULL),
(704, 19, 'Cabaluna Household', 'Kamaong Street', '2007-07-09', 200000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2613889, 8.2415, NULL, NULL),
(705, 15, 'Castillon Household', 'Kamaong Street', '1995-05-30', 300000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2556944, 8.244972222, NULL, NULL),
(706, 15, 'Actub Household', 'Kamaong Street', '1988-07-30', 500000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2560556, 8.245222222, NULL, NULL),
(707, 15, 'Tadina Household', 'Kamaong Street', '2007-05-11', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2560556, 8.245222222, NULL, NULL),
(708, 15, 'Malonhaw Household', 'Kamaong Street', '2000-01-15', 80000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2559167, 8.245277778, NULL, NULL),
(709, 15, 'Uyon Household', 'Kamaong Street', '2003-04-18', 300000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2555556, 8.2455, NULL, NULL),
(710, 15, 'Yang-yang Household', 'Kamaong Street', '1993-08-19', 50000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2559444, 8.245527778, NULL, NULL),
(711, 15, 'Actub Household', 'Kamaong Street', '2000-04-18', 100000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2559167, 8.245583333, NULL, NULL),
(712, 15, 'Malon Household', 'Kamaong Street', '2004-04-04', 50000, 'Residential', 'Metal', 10, 1, 'Owner', 124.2560833, 8.245527778, NULL, NULL),
(713, 15, 'Villar Household', 'Kamaong Street', '2003-07-26', 1000000, 'Residential', 'Bamboo', 70, 1, 'Owner', 124.2560833, 8.2455, NULL, NULL),
(714, 11, 'Ilumba Household', 'Kamaong Street', '2007-05-31', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2571667, 8.24625, NULL, NULL),
(715, 11, 'Dano Household', 'Kamaong Street', '2006-06-02', 60000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.25725, 8.246194444, NULL, NULL),
(716, 11, 'Dano Household', 'Kamaong Street', '1990-06-20', 50000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2573889, 8.246166667, NULL, NULL),
(717, 11, 'Dano Household', 'Kamaong Street', '1990-04-14', 200000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2574167, 8.246194444, NULL, NULL),
(718, 11, 'Jaylo Household', 'Kamaong Street', '2000-03-18', 100000, 'Residential', 'Wood', 20, 1, 'Owner', 124.25725, 8.246611111, NULL, NULL),
(719, 11, 'Sumanbo Household', 'Kamaong Street', '1996-01-06', 500000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2571389, 8.246777778, NULL, NULL),
(720, 11, 'Nanaman Household', 'Kamaong Street', '2000-04-03', 150000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2573056, 8.246916667, NULL, NULL),
(721, 11, 'Fuentes Household', 'Kamaong Street', '2005-01-15', 300000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2574167, 8.246916667, NULL, NULL),
(722, 11, 'Jaylo Household', 'Kamaong Street', '1989-11-08', 30000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2573889, 8.247055556, NULL, NULL),
(723, 11, 'Muaro Household', 'Kamaong Street', '1986-11-29', 150000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2574722, 8.246972222, NULL, NULL),
(724, 11, 'Tumapon Household', 'Kamaong Street', '2003-12-01', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2571111, 8.247055556, NULL, NULL),
(725, 11, 'Managing Household', 'Kamaong Street', '1994-05-11', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2570556, 8.247027778, NULL, NULL),
(726, 11, 'Tamayo Household', 'Kamaong Street', '1994-03-02', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2572222, 8.247055556, NULL, NULL),
(727, 12, 'Boyunas Household', 'Kamaong Street', '1996-12-06', 300000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2567222, 8.247111111, NULL, NULL),
(728, 12, 'Boyunas Household', 'Kamaong Street', '1995-07-05', 1000000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.25675, 8.247194444, NULL, NULL),
(729, 12, 'Taka Household', 'Kamaong Street', '1999-10-31', 100000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2567778, 8.247305556, NULL, NULL),
(730, 12, 'Boyunas Household', 'Kamaong Street', '2007-03-16', 500000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2567222, 8.247, NULL, NULL),
(731, 12, 'Adones Household', 'Kamaong Street', '1996-05-14', 100000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2563889, 8.247638889, NULL, NULL),
(732, 12, 'Cababat Household', 'Kamaong Street', '1992-11-09', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.25625, 8.247666667, NULL, NULL),
(733, 12, 'Arnejo Household', 'Kamaong Street', '1991-09-30', 60000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2562778, 8.247666667, NULL, NULL),
(734, 12, 'Monding Household', 'Kamaong Street', '1999-04-05', 80000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2563056, 8.24775, NULL, NULL),
(735, 12, 'Visira Household', 'Kamaong Street', '2003-01-18', 60000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2562778, 8.24775, NULL, NULL),
(736, 12, 'Mentrillo Household', 'Kamaong Street', '1990-01-07', 60000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2562222, 8.24775, NULL, NULL),
(737, 12, 'Visira Household', 'Kamaong Street', '1987-12-08', 60000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2561667, 8.247777778, NULL, NULL),
(738, 12, 'Flores Household', 'Kamaong Street', '1988-02-28', 80000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2561667, 8.24775, NULL, NULL),
(739, 12, 'Ortiga Household', 'Kamaong Street', '1987-04-05', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2569167, 8.248361111, NULL, NULL),
(740, 12, 'Ortiga Household', 'Kamaong Street', '2004-10-27', 200000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2568333, 8.248027778, NULL, NULL),
(741, 8, 'Polesicas Household', 'Kamaong Street', '2006-03-21', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2564167, 8.248805556, NULL, NULL),
(742, 8, 'Orcerada Household', 'Kamaong Street', '1991-09-23', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2565, 8.248888889, NULL, NULL),
(743, 8, 'Dela_Cruz Household', 'Kamaong Street', '1990-08-06', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2564444, 8.248833333, NULL, NULL),
(744, 8, 'Ronquillo Household', 'Kamaong Street', '2007-07-22', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2567222, 8.249055556, NULL, NULL),
(745, 8, 'Malzobang Household', 'Kamaong Street', '1993-02-14', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2566111, 8.248916667, NULL, NULL),
(746, 8, 'Jumalon Household', 'Kamaong Street', '2004-01-09', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2565833, 8.248861111, NULL, NULL),
(747, 8, 'Perez Household', 'Kamaong Street', '2007-02-11', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2565278, 8.248861111, NULL, NULL),
(748, 8, 'Naraha Household', 'Kamaong Street', '1992-04-11', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.25675, 8.248916667, NULL, NULL),
(749, 8, 'Salva Household', 'Kamaong Street', '1990-03-28', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2568333, 8.248805556, NULL, NULL),
(750, 8, 'Hinaut Household', 'Kamaong Street', '1995-05-04', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2568333, 8.249055556, NULL, NULL),
(751, 8, 'Tac-an Household', 'Kamaong Street', '2007-02-09', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2567778, 8.249111111, NULL, NULL),
(752, 8, 'Nasilya Household', 'Kamaong Street', '2000-07-30', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2568611, 8.249027778, NULL, NULL),
(753, 8, 'Fernandez Household', 'Kamaong Street', '1991-08-17', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2569444, 8.248694444, NULL, NULL),
(754, 8, 'Ganso Household', 'Kamaong Street', '2007-04-06', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2569167, 8.24875, NULL, NULL),
(755, 12, 'Lahoylahoy Household', 'Kamaong Street', '2008-05-27', 150000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2551944, 8.247527778, NULL, NULL),
(756, 12, 'Dampog Household', 'Kamaong Street', '2002-10-03', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2551111, 8.2475, NULL, NULL),
(757, 12, 'Lubantud Household', 'Kamaong Street', '1991-05-05', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2549722, 8.247416667, NULL, NULL),
(758, 14, 'Roldena Household', 'Kamaong Street', '1986-04-27', 150000, 'Residential', 'Makeshift', 15, 1, 'Owner', 124.2587778, 8.243083333, NULL, NULL),
(759, 12, 'Inamor Household', 'Kamaong Street', '2005-01-20', 200000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2547222, 8.248055556, NULL, NULL),
(760, 12, 'Claudel Household', 'Kamaong Street', '1992-11-11', 300000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2544444, 8.248194444, NULL, NULL),
(761, 12, 'Kimlog Household', 'Kamaong Street', '2007-03-18', 350000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2544444, 8.248166667, NULL, NULL),
(762, 12, 'Echavez Household', 'Kamaong Street', '1997-11-15', 300000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2543056, 8.248083333, NULL, NULL),
(763, 12, 'Bintelacion Household', 'Kamaong Street', '1991-02-15', 300000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2543333, 8.248, NULL, NULL),
(764, 12, 'Omentin Household', 'Kamaong Street', '1988-09-22', 300000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2541389, 8.247916667, NULL, NULL),
(765, 12, 'Alubido Household', 'Kamaong Street', '2009-07-11', 150000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2540833, 8.247861111, NULL, NULL),
(766, 12, 'Calubag Household', 'Kamaong Street', '1988-06-11', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2541111, 8.247805556, NULL, NULL),
(767, 12, 'Loreña Household', 'Kamaong Street', '2008-03-14', 3000000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2541389, 8.247777778, NULL, NULL),
(768, 13, 'Aying Household', 'Kamaong Street', '2008-03-02', 150000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2539722, 8.248111111, NULL, NULL),
(769, 13, 'Entira Household', 'Kamaong Street', '1992-05-06', 200000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2539167, 8.248083333, NULL, NULL),
(770, 13, 'Vergara Household', 'Kamaong Street', '1999-08-17', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2540278, 8.248138889, NULL, NULL),
(771, 13, 'Vergara Household', 'Kamaong Street', '2002-10-23', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.254, 8.248166667, NULL, NULL),
(772, 13, 'Cabasag Household', 'Kamaong Street', '1997-09-20', 200000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2541111, 8.248222222, NULL, NULL),
(773, 13, 'Hondina Household', 'Kamaong Street', '1997-04-05', 300000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2540278, 8.248194444, NULL, NULL),
(774, 13, 'Asocina Household', 'Kamaong Street', '2001-09-16', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2540556, 8.248194444, NULL, NULL),
(775, 13, 'Caralde Household', 'Kamaong Street', '1992-10-11', 150000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2541389, 8.248277778, NULL, NULL),
(776, 13, 'Eslit Household', 'Kamaong Street', '1998-12-19', 200000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2541667, 8.248305556, NULL, NULL),
(777, 13, 'Cañas Household', 'Kamaong Street', '1994-07-24', 20000, 'Residential', 'Wood', 12, 1, 'Owner', 124.2541667, 8.248361111, NULL, NULL),
(778, 13, 'Sintos Household', 'Kamaong Street', '1988-10-01', 60000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2541944, 8.248333333, NULL, NULL),
(779, 13, 'Untolan Household', 'Kamaong Street', '1995-12-05', 300000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2542778, 8.248388889, NULL, NULL),
(780, 13, 'Mariquit Household', 'Kamaong Street', '2005-12-20', 300000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2543333, 8.248388889, NULL, NULL),
(781, 13, 'Banaag Household', 'Kamaong Street', '2002-01-28', 500000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2543056, 8.248416667, NULL, NULL),
(782, 13, 'Tubin Household', 'Kamaong Street', '2002-05-07', 150000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2543056, 8.248388889, NULL, NULL),
(783, 13, 'Candonis Household', 'Kamaong Street', '2006-04-27', 30000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2542778, 8.248444444, NULL, NULL),
(784, 13, 'Torportis Household', 'Kamaong Street', '1989-01-08', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2544167, 8.248472222, NULL, NULL),
(785, 13, 'Cantalay Household', 'Kamaong Street', '1990-02-03', 500000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2544722, 8.2485, NULL, NULL),
(786, 13, 'Migrenio Household', 'Kamaong Street', '1989-01-07', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2545, 8.2485, NULL, NULL),
(787, 13, 'Omungos Household', 'Kamaong Street', '1994-03-31', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2545, 8.248555556, NULL, NULL),
(788, 13, 'Jimenez Household', 'Kamaong Street', '1989-09-17', 250000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2545, 8.2485, NULL, NULL),
(789, 13, 'Vergara Household', 'Kamaong Street', '2000-03-16', 1000000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2545833, 8.248555556, NULL, NULL),
(790, 13, 'Vergara Household', 'Kamaong Street', '1990-05-11', 400000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2546111, 8.248583333, NULL, NULL),
(791, 13, 'Magsayo Household', 'Kamaong Street', '2001-04-18', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2543889, 8.248666667, NULL, NULL),
(792, 13, 'Cabasag Household', 'Kamaong Street', '2002-02-06', 200000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2544444, 8.248722222, NULL, NULL),
(793, 13, 'Jaraba Household', 'Kamaong Street', '2002-09-16', 150000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2544444, 8.248666667, NULL, NULL),
(794, 13, 'Dalegan Household', 'Kamaong Street', '2000-06-04', 1500000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.25475, 8.248666667, NULL, NULL),
(795, 13, 'Villaver Household', 'Kamaong Street', '1997-10-05', 200000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2546667, 8.248666667, NULL, NULL),
(796, 13, 'Bakot Household', 'Kamaong Street', '1996-06-23', 300000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2543889, 8.248611111, NULL, NULL),
(797, 13, 'Lozano Household', 'Kamaong Street', '1991-08-27', 300000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2541944, 8.248861111, NULL, NULL),
(798, 13, 'Pantillano Household', 'Kamaong Street', '1989-07-06', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2540833, 8.248805556, NULL, NULL),
(799, 13, 'Lozano Household', 'Kamaong Street', '2001-06-20', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2546944, 8.248694444, NULL, NULL),
(800, 13, 'Dalagan Household', 'Kamaong Street', '1990-09-02', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2543889, 8.248888889, NULL, NULL),
(801, 13, 'Lozano Household', 'Kamaong Street', '2008-08-21', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2546944, 8.248694444, NULL, NULL),
(802, 13, 'Ortega Household', 'Kamaong Street', '1999-03-17', 200000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2546389, 8.248611111, NULL, NULL),
(803, 13, 'Ortega Household', 'Kamaong Street', '2006-06-23', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2546389, 8.248722222, NULL, NULL),
(804, 13, 'Salazar Household', 'Kamaong Street', '2002-07-02', 200000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.254, 8.248166667, NULL, NULL),
(805, 13, 'Ortega Household', 'Kamaong Street', '2000-03-08', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2540278, 8.248138889, NULL, NULL),
(806, 12, 'Paradero Household', 'Kamaong Street', '1999-10-22', 130000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2542222, 8.247527778, NULL, NULL),
(807, 12, 'Antonio Household', 'Kamaong Street', '2006-11-04', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2546667, 8.247361111, NULL, NULL),
(808, 12, 'Chinchuntic Household', 'Kamaong Street', '2002-04-06', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2546389, 8.247194444, NULL, NULL),
(809, 12, 'Balaba Household', 'Kamaong Street', '2007-11-19', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2546389, 8.247166667, NULL, NULL),
(810, 12, 'Daog Household', 'Kamaong Street', '2009-02-16', 200000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2548889, 8.247, NULL, NULL),
(811, 12, 'Ortega Household', 'Kamaong Street', '1996-08-16', 450000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2551944, 8.247222222, NULL, NULL),
(812, 12, 'Alicer Household', 'Kamaong Street', '2007-10-12', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2551389, 8.247194444, NULL, NULL),
(813, 12, 'Katada Household', 'Kamaong Street', '2002-01-11', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2551944, 8.247194444, NULL, NULL),
(814, 12, 'Bunag Household', 'Kamaong Street', '1997-06-22', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2555833, 8.24725, NULL, NULL),
(815, 12, 'Bunag Household', 'Kamaong Street', '1993-08-24', 300000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2556389, 8.247222222, NULL, NULL),
(816, 12, 'Bunag Household', 'Kamaong Street', '1989-05-07', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.25575, 8.247277778, NULL, NULL),
(817, 12, 'Mariquit Household', 'Kamaong Street', '2000-06-11', 200000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.25575, 8.247416667, NULL, NULL),
(818, 12, 'Apas Household', 'Kamaong Street', '2006-06-05', 300000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.25625, 8.247444444, NULL, NULL),
(819, 12, 'Apas Household', 'Kamaong Street', '1991-12-21', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2563056, 8.247277778, NULL, NULL),
(820, 12, 'Emit Household', 'Kamaong Street', '1988-07-20', 300000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2560556, 8.247722222, NULL, NULL),
(821, 12, 'Suan Household', 'Kamaong Street', '1997-03-10', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2560556, 8.247805556, NULL, NULL),
(822, 12, 'Mariquit Household', 'Kamaong Street', '2006-04-13', 200000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2560278, 8.247555556, NULL, NULL),
(823, 12, 'Suan Household', 'Kamaong Street', '2009-06-02', 100000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2558889, 8.247861111, NULL, NULL),
(824, 12, 'Suan Household', 'Kamaong Street', '1999-06-15', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2560278, 8.247888889, NULL, NULL),
(825, 12, 'Gabonada Household', 'Kamaong Street', '1986-04-28', 200000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2560278, 8.248, NULL, NULL),
(826, 12, 'Yapag Household', 'Kamaong Street', '1991-02-04', 500000, 'Residential', 'Makeshift', 68, 1, 'Owner', 124.2560556, 8.248055556, NULL, NULL),
(827, 12, 'Pomicpic Household', 'Kamaong Street', '1992-07-07', 100000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2560833, 8.248361111, NULL, NULL),
(828, 12, 'Bayron Household', 'Kamaong Street', '1992-05-06', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2559167, 8.248527778, NULL, NULL),
(829, 12, 'Bayron Household', 'Kamaong Street', '2009-06-07', 200000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2558889, 8.248611111, NULL, NULL),
(830, 8, 'Jariol Household', 'Kamaong Street', '2002-06-18', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2569722, 8.248805556, NULL, NULL),
(831, 8, 'Bongolto Household', 'Kamaong Street', '2006-08-15', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.25675, 8.248777778, NULL, NULL),
(832, 8, 'Nahara Household', 'Kamaong Street', '2008-10-26', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2572222, 8.249055556, NULL, NULL),
(833, 8, 'Abuzo Household', 'Kamaong Street', '1989-04-13', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2571944, 8.248638889, NULL, NULL),
(834, 8, 'Zacarias Household', 'Kamaong Street', '1986-11-27', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2574167, 8.248555556, NULL, NULL),
(835, 8, 'Maglasang Household', 'Kamaong Street', '1998-04-05', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2575, 8.248527778, NULL, NULL),
(836, 8, 'Dionson Household', 'Kamaong Street', '1995-05-26', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2573611, 8.248527778, NULL, NULL),
(837, 8, 'Abulanda Household', 'Kamaong Street', '1991-03-24', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2572778, 8.248638889, NULL, NULL),
(838, 8, 'Cadiliña Household', 'Kamaong Street', '2009-10-14', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2571667, 8.248638889, NULL, NULL),
(839, 8, 'Uy Household', 'Kamaong Street', '2009-01-08', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2573333, 8.248722222, NULL, NULL),
(840, 8, 'Sumalpong Household', 'Kamaong Street', '1993-09-04', 100000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2573889, 8.248777778, NULL, NULL),
(841, 8, 'Maghilum Household', 'Kamaong Street', '2009-04-28', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2571389, 8.248777778, NULL, NULL),
(842, 8, 'Fuentes Household', 'Kamaong Street', '1993-11-09', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2571667, 8.248861111, NULL, NULL),
(843, 8, 'Aleviano Household', 'Kamaong Street', '2009-03-15', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2569722, 8.248944444, NULL, NULL),
(844, 12, 'Mansano Household', 'Kamaong Street', '1997-09-15', 500000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2548056, 8.248027778, NULL, NULL),
(845, 12, 'Colasilo Household', 'Kamaong Street', '1990-02-05', 600000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2547778, 8.248, NULL, NULL),
(846, 13, 'Cobrado Household', 'Kamaong Street', '2004-06-25', 2000000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2545833, 8.248777778, NULL, NULL),
(847, 13, 'Arcasa Household', 'Kamaong Street', '1992-11-09', 0, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2545278, 8.248833333, NULL, NULL),
(848, 13, 'Eltanal Household', 'Kamaong Street', '2001-07-21', 300000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2543056, 8.248638889, NULL, NULL),
(849, 13, 'Cagatan Household', 'Kamaong Street', '1998-11-30', 350000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2542222, 8.248611111, NULL, NULL),
(850, 13, 'Gumahad Household', 'Kamaong Street', '1988-03-08', 350000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2541389, 8.248611111, NULL, NULL),
(851, 13, 'Tapere Household', 'Kamaong Street', '2001-07-30', 250000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2543056, 8.248666667, NULL, NULL),
(852, 13, 'Bation Household', 'Kamaong Street', '1999-04-11', 300000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2542778, 8.248611111, NULL, NULL),
(853, 13, 'Onotan Household', 'Kamaong Street', '2006-01-20', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2541944, 8.248611111, NULL, NULL),
(854, 13, 'Onotan Household', 'Kamaong Street', '1986-07-21', 300000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.25425, 8.248555556, NULL, NULL),
(855, 13, 'Onotan Household', 'Kamaong Street', '2005-08-28', 500000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2541389, 8.248555556, NULL, NULL),
(856, 13, 'Arcasa Household', 'Kamaong Street', '2008-09-09', 300000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2540833, 8.2485, NULL, NULL),
(857, 13, 'Onotan Household', 'Kamaong Street', '2005-08-02', 500000, 'Residential', 'Wood', 50, 1, 'Owner', 124.254, 8.248472222, NULL, NULL),
(858, 13, 'Otaza Household', 'Kamaong Street', '1993-08-25', 350000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2540556, 8.2485, NULL, NULL),
(859, 13, 'Balcot Household', 'Kamaong Street', '1999-02-26', 500000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.254, 8.248444444, NULL, NULL),
(860, 13, 'Ruedas Household', 'Kamaong Street', '2000-02-06', 100000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2539167, 8.248361111, NULL, NULL),
(861, 13, 'Ruedas Household', 'Kamaong Street', '1991-07-25', 350000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2539444, 8.248416667, NULL, NULL),
(862, 13, 'Bayog Household', 'Kamaong Street', '2003-07-13', 2000000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2539167, 8.248416667, NULL, NULL),
(863, 13, 'Galimbas Household', 'Kamaong Street', '1999-11-22', 350000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2538889, 8.248361111, NULL, NULL),
(864, 13, 'Trasportes Household', 'Kamaong Street', '1991-04-27', 350000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2539167, 8.248388889, NULL, NULL),
(865, 13, 'Torres Household', 'Kamaong Street', '2005-07-29', 100000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.254, 8.248305556, NULL, NULL),
(866, 13, 'Arcasa Household', 'Kamaong Street', '1986-06-28', 100000, 'Residential', 'Masonry', 10, 1, 'Owner', 124.2539167, 8.248611111, NULL, NULL),
(867, 13, 'Arcasa Household', 'Kamaong Street', '2001-12-05', 250000, 'Residential', 'Masonry', 15, 1, 'Owner', 124.2543889, 8.248777778, NULL, NULL),
(868, 13, 'Cuadro Household', 'Kamaong Street', '2000-03-06', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2543611, 8.248916667, NULL, NULL),
(869, 13, 'Rotor Household', 'Kamaong Street', '1994-02-24', 600000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2541389, 8.248833333, NULL, NULL),
(870, 13, 'Manligues Household', 'Kamaong Street', '2007-11-19', 150000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2540278, 8.248722222, NULL, NULL),
(871, 13, 'Cantutay Household', 'Kamaong Street', '1999-04-28', 200000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2539722, 8.24875, NULL, NULL),
(872, 13, 'Cimen Household', 'Kamaong Street', '1996-12-20', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2539167, 8.248694444, NULL, NULL),
(873, 13, 'Monera Household', 'Kamaong Street', '1998-11-17', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2539722, 8.248694444, NULL, NULL),
(874, 13, 'Dologmando Household', 'Kamaong Street', '1990-06-21', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.25375, 8.2485, NULL, NULL),
(875, 13, 'Paghasian Household', 'Kamaong Street', '2009-11-24', 200000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2536944, 8.248666667, NULL, NULL),
(876, 13, 'Almero Household', 'Kamaong Street', '1999-07-09', 200000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2538056, 8.248666667, NULL, NULL),
(877, 13, 'Villa Household', 'Kamaong Street', '1990-01-20', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2537222, 8.248805556, NULL, NULL),
(878, 13, 'Paghasian Household', 'Kamaong Street', '1999-08-10', 200000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2537778, 8.248805556, NULL, NULL),
(879, 13, 'Orida Household', 'Kamaong Street', '2003-12-14', 300000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2537222, 8.248833333, NULL, NULL),
(880, 13, 'Mariquit Household', 'Kamaong Street', '2001-11-17', 200000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2538056, 8.248861111, NULL, NULL),
(881, 13, 'Jaralba Household', 'Kamaong Street', '2009-04-06', 200000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2538333, 8.248833333, NULL, NULL),
(882, 13, 'Lagudas Household', 'Kamaong Street', '2005-08-03', 200000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2538333, 8.248888889, NULL, NULL),
(883, 13, 'Malicay Household', 'Kamaong Street', '1999-04-22', 200000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2538889, 8.248944444, NULL, NULL),
(884, 13, 'De_Vera Household', 'Kamaong Street', '1998-02-11', 200000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2539167, 8.249, NULL, NULL),
(885, 13, 'Tubin Household', 'Kamaong Street', '2003-01-14', 150000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2539722, 8.248916667, NULL, NULL),
(886, 13, 'Gallardo Household', 'Kamaong Street', '2002-06-22', 200000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.254, 8.248972222, NULL, NULL),
(887, 13, 'Tapere Household', 'Kamaong Street', '1990-01-06', 200000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.25375, 8.248722222, NULL, NULL),
(888, 13, 'Tortugo Household', 'Kamaong Street', '2006-01-17', 0, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2541389, 8.249055556, NULL, NULL),
(889, 13, 'Maata Household', 'Kamaong Street', '1989-03-14', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2540556, 8.249083333, NULL, NULL),
(890, 13, 'Baobao Household', 'Kamaong Street', '2008-02-01', 500000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2541944, 8.249027778, NULL, NULL),
(891, 13, 'Pomicpic Household', 'Kamaong Street', '1993-11-28', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.25425, 8.249, NULL, NULL),
(892, 13, 'Duhaylungsod Household', 'Kamaong Street', '1995-12-20', 150000, 'Residential', 'Makeshift', 46, 1, 'Owner', 124.2542778, 8.249027778, NULL, NULL),
(893, 13, 'Buenaventura Household', 'Kamaong Street', '2009-05-04', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2542222, 8.248916667, NULL, NULL),
(894, 13, 'Eltanal Household', 'Kamaong Street', '1992-09-18', 300000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2545, 8.24875, NULL, NULL),
(895, 13, 'Tubin Household', 'Kamaong Street', '2005-01-16', 200000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2544722, 8.248527778, NULL, NULL),
(896, 13, 'Balucan Household', 'Kamaong Street', '2009-06-20', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2540278, 8.24925, NULL, NULL),
(897, 13, 'Tadena Household', 'Kamaong Street', '2009-12-25', 400000, 'Residential', 'Makeshift', 80, 1, 'Owner', 124.2545, 8.248861111, NULL, NULL),
(898, 13, 'Densing Household', 'Kamaong Street', '1997-12-14', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2542778, 8.248888889, NULL, NULL),
(899, 13, 'Velasquez Household', 'Kamaong Street', '1993-09-17', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.254, 8.249083333, NULL, NULL),
(900, 13, 'Mariquit Household', 'Kamaong Street', '1993-01-28', 200000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2539167, 8.249166667, NULL, NULL),
(901, 13, 'Boloron Household', 'Kamaong Street', '2008-12-15', 200000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2538889, 8.24925, NULL, NULL),
(902, 13, 'Cuadro Household', 'Kamaong Street', '1994-02-04', 200000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2541667, 8.248833333, NULL, NULL),
(903, 13, 'Aban Household', 'Kamaong Street', '2001-07-03', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2540556, 8.248777778, NULL, NULL),
(904, 13, 'Macapil Household', 'Kamaong Street', '1988-05-20', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2541111, 8.248722222, NULL, NULL),
(905, 13, 'Duhaylungsod Household', 'Kamaong Street', '2000-04-26', 200000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2538611, 8.248666667, NULL, NULL),
(906, 13, 'Alforque Household', 'Kamaong Street', '1998-12-18', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2538333, 8.248666667, NULL, NULL),
(907, 13, 'Elcanel Household', 'Kamaong Street', '1998-09-18', 300000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2538889, 8.248611111, NULL, NULL),
(908, 13, 'Paypa Household', 'Kamaong Street', '1989-06-12', 200000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2539722, 8.248777778, NULL, NULL),
(909, 13, 'Fuentivilla Household', 'Kamaong Street', '2001-11-21', 350000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2538333, 8.249138889, NULL, NULL),
(910, 13, 'Sadernas Household', 'Kamaong Street', '2006-08-14', 300000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2537778, 8.249111111, NULL, NULL),
(911, 13, 'Ferinal Household', 'Kamaong Street', '2003-03-01', 300000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2536667, 8.249055556, NULL, NULL),
(912, 13, 'Tangaw Household', 'Kamaong Street', '1990-04-28', 250000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2536667, 8.249, NULL, NULL),
(913, 13, 'Mariquit Household', 'Kamaong Street', '2007-09-25', 500000, 'Residential', 'Masonry', 50, 1, 'Owner', 124.2536111, 8.248944444, NULL, NULL),
(914, 13, 'Boloro Household', 'Kamaong Street', '1987-05-07', 750000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2538333, 8.249194444, NULL, NULL),
(915, 13, 'Macaliag Household', 'Kamaong Street', '2008-11-29', 500000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2537778, 8.249222222, NULL, NULL),
(916, 13, 'Balodo Household', 'Kamaong Street', '2008-11-01', 400000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.25375, 8.249194444, NULL, NULL),
(917, 13, 'Sasil Household', 'Kamaong Street', '1988-02-20', 400000, 'Residential', 'Wood', 50, 1, 'Owner', 124.2536944, 8.248805556, NULL, NULL),
(918, 13, 'Tulusa Household', 'Kamaong Street', '2006-07-06', 80000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2541389, 8.248972222, NULL, NULL),
(919, 8, 'Cuadro Household', 'Kamaong Street', '1986-04-03', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.257, 8.249055556, NULL, NULL),
(920, 8, 'Catambacan Household', 'Kamaong Street', '1991-07-08', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2570278, 8.248555556, NULL, NULL),
(921, 8, 'Salazar Household', 'Kamaong Street', '2008-06-18', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2569722, 8.248611111, NULL, NULL),
(922, 8, 'Virtudez Household', 'Kamaong Street', '1986-11-15', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2569444, 8.2485, NULL, NULL),
(923, 8, 'Maglasang Household', 'Kamaong Street', '2000-07-18', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2568333, 8.248527778, NULL, NULL),
(924, 8, 'Sumalpong Household', 'Kamaong Street', '2003-09-20', 100000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2569167, 8.248472222, NULL, NULL),
(925, 8, 'Mariquit Household', 'Kamaong Street', '1991-06-21', 150000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2568333, 8.248916667, NULL, NULL),
(926, 8, 'Padayhag Household', 'Kamaong Street', '1993-10-13', 150000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2568056, 8.248944444, NULL, NULL),
(927, 8, 'Lupera Household', 'Kamaong Street', '1998-04-24', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2568333, 8.248972222, NULL, NULL),
(928, 8, 'Padayhag Household', 'Kamaong Street', '1991-12-20', 0, 'Residential', 'Concrete', 0, 1, 'Owner', 124.257, 8.248833333, NULL, NULL),
(929, 8, 'Catso Household', 'Kamaong Street', '2002-07-06', 150000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2567222, 8.248805556, NULL, NULL),
(930, 8, 'Jagonal Household', 'Kamaong Street', '1997-07-15', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.25675, 8.248888889, NULL, NULL),
(931, 8, 'Cadorna Household', 'Kamaong Street', '1997-05-18', 150000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2567778, 8.248916667, NULL, NULL),
(932, 8, 'Llyaso Household', 'Kamaong Street', '1997-11-09', 150000, 'Residential', 'Bamboo', 40, 1, 'Owner', 124.2569167, 8.248833333, NULL, NULL),
(933, 23, 'Buhion Household', 'Kamaong Street', '1988-02-12', 10000, 'Residential', 'Bamboo', 16, 1, 'Owner', 124.2525278, 8.254861111, NULL, NULL),
(934, 23, 'Regasaho Household', 'Kamaong Street', '1992-03-11', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2464722, 8.257194444, NULL, NULL),
(935, 23, 'Taborada Household', 'Kamaong Street', '1991-10-20', 500000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2450556, 8.257222222, NULL, NULL),
(936, 23, 'Nadayag Household', 'Kamaong Street', '1991-09-05', 6000, 'Residential', 'Concrete', 5, 1, 'Owner', 124.2463333, 8.258, NULL, NULL),
(937, 23, 'Nadayag Household', 'Kamaong Street', '1989-11-15', 10000, 'Residential', 'Makeshift', 8, 1, 'Owner', 124.2463056, 8.257777778, NULL, NULL),
(938, 23, 'Amarga Household', 'Kamaong Street', '1995-07-30', 10000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2460833, 8.257694444, NULL, NULL),
(939, 23, 'Remitasis Household', 'Kamaong Street', '1999-05-30', 10000, 'Residential', 'Bamboo', 8, 1, 'Owner', 124.2462222, 8.257777778, NULL, NULL),
(940, 23, 'Layno Household', 'Kamaong Street', '1991-04-04', 10000, 'Residential', 'Bamboo', 10, 1, 'Owner', 124.2465, 8.257777778, NULL, NULL),
(941, 23, 'Layno Household', 'Kamaong Street', '2001-11-04', 0, 'Residential', 'Makeshift', 0, 1, 'Owner', 124.2466667, 8.257777778, NULL, NULL),
(942, 23, 'Echavez Household', 'Kamaong Street', '2001-09-28', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2464722, 8.257972222, NULL, NULL),
(943, 23, 'Bacuaja Household', 'Kamaong Street', '1990-06-29', 10000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2463056, 8.258722222, NULL, NULL),
(944, 23, 'Maglasang Household', 'Kamaong Street', '1990-08-24', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2464167, 8.258777778, NULL, NULL),
(945, 23, 'Bacuaja Household', 'Kamaong Street', '1994-04-26', 10000, 'Residential', 'Concrete', 5, 1, 'Owner', 124.2463889, 8.258777778, NULL, NULL),
(946, 23, 'Bacuaja Household', 'Kamaong Street', '2004-10-02', 10000, 'Residential', 'Wood', 5, 1, 'Owner', 124.2468889, 8.258305556, NULL, NULL),
(947, 23, 'Andalok Household', 'Kamaong Street', '2006-08-22', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2470833, 8.258833333, NULL, NULL),
(948, 23, 'Lacuna Household', 'Kamaong Street', '2007-09-04', 250000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2480556, 8.259583333, NULL, NULL),
(949, 23, 'Nacona Household', 'Kamaong Street', '2008-11-20', 10000, 'Residential', 'Concrete', 0, 1, 'Owner', 124.2479167, 8.259694444, NULL, NULL),
(950, 23, 'Along Household', 'Kamaong Street', '1998-09-01', 30000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2480833, 8.259638889, NULL, NULL),
(951, 23, 'Peyala Household', 'Kamaong Street', '1994-05-18', 150000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2481944, 8.259555556, NULL, NULL),
(952, 23, 'Niez Household', 'Kamaong Street', '1988-11-14', 80000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2481667, 8.259083333, NULL, NULL),
(953, 23, 'Macaubos Household', 'Kamaong Street', '1992-01-29', 80000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.24825, 8.259, NULL, NULL),
(954, 23, 'Macaubos Household', 'Kamaong Street', '2001-04-22', 50000, 'Residential', 'Bamboo', 10, 1, 'Owner', 124.2481944, 8.259, NULL, NULL),
(955, 23, 'Oregie Household', 'Kamaong Street', '1995-04-20', 30000, 'Residential', 'Wood', 5, 1, 'Owner', 124.2500278, 8.258166667, NULL, NULL),
(956, 23, 'Orenis Household', 'Kamaong Street', '1999-08-03', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2493333, 8.257388889, NULL, NULL),
(957, 23, 'Layno Household', 'Kamaong Street', '2009-03-31', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2491667, 8.257333333, NULL, NULL),
(958, 23, 'Macapel Household', 'Kamaong Street', '2006-09-25', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2491667, 8.25725, NULL, NULL),
(959, 23, 'Alegarme Household', 'Kamaong Street', '2003-06-19', 0, 'Residential', 'Makeshift', 0, 1, 'Owner', 124.2503333, 8.257861111, NULL, NULL),
(960, 23, 'Macapil Household', 'Kamaong Street', '1986-05-09', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2503611, 8.257611111, NULL, NULL),
(961, 23, 'Villacastin Household', 'Kamaong Street', '2006-12-02', 80000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2504444, 8.2575, NULL, NULL),
(962, 23, 'Macapil Household', 'Kamaong Street', '2009-01-01', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2506389, 8.257166667, NULL, NULL),
(963, 23, 'Verano Household', 'Kamaong Street', '1989-02-28', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2509444, 8.257611111, NULL, NULL),
(964, 23, 'Villaver Household', 'Kamaong Street', '1990-10-03', 1000000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2517222, 8.255972222, NULL, NULL),
(965, 23, 'Macapil Household', 'Kamaong Street', '2002-12-03', 1500000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2519167, 8.255833333, NULL, NULL),
(966, 23, 'Adolfo Household', 'Kamaong Street', '2002-03-04', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2521111, 8.255611111, NULL, NULL),
(967, 23, 'Villaver Household', 'Kamaong Street', '1993-12-25', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2525278, 8.255277778, NULL, NULL),
(968, 23, 'Mirino Household', 'Kamaong Street', '2006-11-09', 150000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2525, 8.255388889, NULL, NULL),
(969, 23, 'Villagonzano Household', 'Kamaong Street', '1991-04-24', 150000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2527778, 8.25525, NULL, NULL),
(970, 23, 'Binaobawan Household', 'Kamaong Street', '2004-01-26', 0, 'Residential', 'Makeshift', 0, 1, 'Owner', 124.2525278, 8.254805556, NULL, NULL),
(971, 23, 'Naguita Household', 'Kamaong Street', '1988-03-22', 3000, 'Residential', 'Wood', 16, 1, 'Owner', 124.2524722, 8.254722222, NULL, NULL),
(972, 9, 'Ermac Household', 'Kamaong Street', '2004-12-12', 500000, 'Residential', 'Concrete', 50, 1, 'Owner', 124.2592778, 8.246805556, NULL, NULL),
(973, 9, 'Ermac Household', 'Kamaong Street', '1989-11-30', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2587222, 8.246388889, NULL, NULL),
(974, 9, 'Lozano Household', 'Kamaong Street', '2008-10-01', 200000, 'Residential', 'Concrete', 78, 1, 'Owner', 124.2585, 8.24675, NULL, NULL),
(975, 9, 'Morales Household', 'Kamaong Street', '1989-09-13', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2585833, 8.2465, NULL, NULL),
(976, 9, 'Ermac Household', 'Kamaong Street', '2002-11-08', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2581389, 8.245944444, NULL, NULL),
(977, 9, 'Gonzaga Household', 'Kamaong Street', '1992-10-14', 0, 'Residential', 'Concrete', 0, 1, 'Owner', 124.2584722, 8.247833333, NULL, NULL),
(978, 9, 'Capangpangan Household', 'Kamaong Street', '1986-07-06', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2586667, 8.247611111, NULL, NULL),
(979, 9, 'Mariquit Household', 'Kamaong Street', '1992-06-24', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2596111, 8.247166667, NULL, NULL),
(980, 9, 'Apas Household', 'Kamaong Street', '1994-08-19', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2595278, 8.246944444, NULL, NULL),
(981, 9, 'Tayone Household', 'Kamaong Street', '1993-12-26', 0, 'Residential', 'Metal', 40, 1, 'Owner', 124.2583889, 8.246388889, NULL, NULL),
(982, 9, 'Bado Household', 'Kamaong Street', '2002-09-15', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2585833, 8.247694444, NULL, NULL),
(983, 9, 'Bado Household', 'Kamaong Street', '1990-08-14', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2583889, 8.247888889, NULL, NULL),
(984, 9, 'Cabahug Household', 'Kamaong Street', '1998-02-09', 0, 'Residential', 'Concrete', 0, 1, 'Owner', 124.2584444, 8.247861111, NULL, NULL),
(985, 9, 'Batican Household', 'Kamaong Street', '1987-07-30', 0, 'Residential', 'Makeshift', 0, 1, 'Owner', 124.25925, 8.247555556, NULL, NULL),
(986, 9, 'Ricarpel Household', 'Kamaong Street', '2003-11-11', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2591389, 8.247444444, NULL, NULL),
(987, 9, 'Mohamod Household', 'Kamaong Street', '2001-12-09', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2583056, 8.247944444, NULL, NULL),
(988, 20, 'Sanchez Household', 'Kamaong Street', '2007-05-04', 0, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2518333, 8.249361111, NULL, NULL),
(989, 9, 'Grabato Household', 'Kamaong Street', '1991-05-18', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2584722, 8.247888889, NULL, NULL),
(990, 9, 'Grabato Household', 'Kamaong Street', '2007-10-20', 200000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2584444, 8.247972222, NULL, NULL),
(991, 9, 'Grabato Household', 'Kamaong Street', '1996-09-25', 200000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.2585556, 8.248055556, NULL, NULL),
(992, 9, 'Magtajas Household', 'Kamaong Street', '1992-08-14', 500000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2585833, 8.247611111, NULL, NULL),
(993, 9, 'Paragoso Household', 'Kamaong Street', '1999-06-13', 0, 'Residential', 'Concrete', 0, 1, 'Owner', 124.25875, 8.247583333, NULL, NULL),
(994, 9, 'Paragoso Household', 'Kamaong Street', '2008-08-01', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2589444, 8.247472222, NULL, NULL),
(995, 9, 'Opot Household', 'Kamaong Street', '1992-10-30', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2591389, 8.247416667, NULL, NULL),
(996, 9, 'Mangumpit Household', 'Kamaong Street', '1995-07-16', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2591667, 8.24725, NULL, NULL),
(997, 9, 'Mugot Household', 'Kamaong Street', '2005-11-05', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2592222, 8.247388889, NULL, NULL),
(998, 9, 'Tinoy Household', 'Kamaong Street', '2000-04-08', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.25925, 8.247444444, NULL, NULL),
(999, 9, 'Tinoy Household', 'Kamaong Street', '2008-01-18', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2593056, 8.2475, NULL, NULL),
(1000, 9, 'Quipao Household', 'Kamaong Street', '1986-05-22', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2593333, 8.247527778, NULL, NULL),
(1001, 9, 'Radigos Household', 'Kamaong Street', '2004-08-19', 0, 'Residential', 'Concrete', 0, 1, 'Owner', 124.2593611, 8.247555556, NULL, NULL),
(1002, 9, 'Radigos Household', 'Kamaong Street', '2000-09-06', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2593889, 8.247583333, NULL, NULL),
(1003, 9, 'Sumando Household', 'Kamaong Street', '1988-12-01', 0, 'Residential', 'Concrete', 0, 1, 'Owner', 124.2594167, 8.247611111, NULL, NULL),
(1004, 9, 'Sumando Household', 'Kamaong Street', '2006-10-04', 0, 'Residential', 'Makeshift', 0, 1, 'Owner', 124.2594167, 8.247638889, NULL, NULL),
(1005, 9, 'Demaluna Household', 'Kamaong Street', '1989-11-13', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2594167, 8.247694444, NULL, NULL),
(1006, 9, 'Rupinta Household', 'Kamaong Street', '2003-11-17', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.25925, 8.247805556, NULL, NULL),
(1007, 9, 'Notarte Household', 'Kamaong Street', '2000-10-17', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2592778, 8.247666667, NULL, NULL),
(1008, 9, 'Sabaysabay Household', 'Kamaong Street', '2003-03-07', 200000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.2594167, 8.24725, NULL, NULL),
(1009, 9, 'Mariquit Household', 'Kamaong Street', '2003-02-19', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2595278, 8.247305556, NULL, NULL),
(1010, 9, 'Sabaysabay Household', 'Kamaong Street', '2003-12-02', 0, 'Residential', 'Concrete', 0, 1, 'Owner', 124.2595, 8.247222222, NULL, NULL),
(1011, 9, 'Omadle Household', 'Kamaong Street', '1990-03-17', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2596111, 8.247194444, NULL, NULL),
(1012, 9, 'Pagarigan Household', 'Kamaong Street', '1993-06-21', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2594444, 8.247111111, NULL, NULL),
(1013, 9, 'Pagarigan Household', 'Kamaong Street', '1990-12-20', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2594167, 8.247111111, NULL, NULL),
(1014, 9, 'Pagarigan Household', 'Kamaong Street', '1994-11-11', 0, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2593056, 8.247138889, NULL, NULL),
(1015, 9, 'Deloso Household', 'Kamaong Street', '1998-09-28', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2592778, 8.247222222, NULL, NULL);
INSERT INTO `buildings` (`id`, `purok_id`, `name`, `street`, `year_constructed`, `net_value`, `building_usage`, `structure`, `area`, `no_stories`, `holding`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(1016, 9, 'Agac-ac Household', 'Kamaong Street', '1995-06-18', 0, 'Residential', 'Wood', 0, 1, 'Owner', 124.2592778, 8.247194444, NULL, NULL),
(1017, 9, 'Agac-ac Household', 'Kamaong Street', '1994-12-15', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2591944, 8.247194444, NULL, NULL),
(1018, 9, 'Lucagbo Household', 'Kamaong Street', '1994-07-13', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2597778, 8.247222222, NULL, NULL),
(1019, 9, 'Delos_Santos Household', 'Kamaong Street', '1996-09-10', 0, 'Residential', 'Bamboo', 0, 1, 'Owner', 124.2593056, 8.247305556, NULL, NULL),
(1020, 9, 'Pagarigan Household', 'Kamaong Street', '2003-03-17', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2590556, 8.247472222, NULL, NULL),
(1021, 9, 'Baruc Household', 'Kamaong Street', '2009-02-25', 0, 'Residential', 'Makeshift', 0, 1, 'Owner', 124.2588889, 8.247527778, NULL, NULL),
(1022, 9, 'Delos_Santos Household', 'Kamaong Street', '1996-12-26', 0, 'Residential', 'Masonry', 0, 1, 'Owner', 124.2584722, 8.247666667, NULL, NULL),
(1023, 16, 'Luveros Household', 'Kamaong Street', '2001-11-20', 500000, 'Residential', 'Bamboo', 68, 1, 'Owner', 124.2553333, 8.243222222, NULL, NULL),
(1024, 16, 'Ardeles Household', 'Kamaong Street', '1987-01-01', 250000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2555, 8.243333333, NULL, NULL),
(1025, 16, 'Ardeles Household', 'Kamaong Street', '2003-11-09', 200000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2552778, 8.243277778, NULL, NULL),
(1026, 16, 'Unggaket Household', 'Kamaong Street', '1996-04-13', 150000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2556111, 8.243194444, NULL, NULL),
(1027, 16, 'Laurita Household', 'Kamaong Street', '2008-05-18', 150000, 'Residential', 'Concrete', 38, 1, 'Owner', 124.256, 8.243916667, NULL, NULL),
(1028, 16, 'Vecaso  Household', 'Kamaong Street', '1988-06-08', 15000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2560556, 8.243944444, NULL, NULL),
(1029, 16, 'Vasalo Household', 'Kamaong Street', '1996-11-20', 50000, 'Residential', 'Makeshift', 15, 1, 'Owner', 124.25525, 8.243611111, NULL, NULL),
(1030, 16, 'Vasalo Household', 'Kamaong Street', '1986-06-26', 30000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2559722, 8.243944444, NULL, NULL),
(1031, 16, 'Vasalo Household', 'Kamaong Street', '1986-06-19', 50000, 'Residential', 'Metal', 15, 1, 'Owner', 124.256, 8.243916667, NULL, NULL),
(1032, 16, 'Galarpe Household', 'Kamaong Street', '2001-07-26', 20000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2554722, 8.243527778, NULL, NULL),
(1033, 21, 'Paica Household', 'Kamaong Street', '2006-01-27', 30000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2547222, 8.246083333, NULL, NULL),
(1034, 21, 'Calica Household', 'Kamaong Street', '2009-03-05', 80000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2539444, 8.247527778, NULL, NULL),
(1035, 21, 'Malunhaw Household', 'Kamaong Street', '2001-07-01', 100000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2538056, 8.247777778, NULL, NULL),
(1036, 21, 'Carbonel Household', 'Kamaong Street', '1996-09-07', 1000000, 'Residential', 'Concrete', 100, 1, 'Owner', 124.2534722, 8.24775, NULL, NULL),
(1037, 21, 'Gonzales Household', 'Kamaong Street', '2001-09-14', 1000000, 'Residential', 'Metal', 100, 1, 'Owner', 124.25375, 8.247472222, NULL, NULL),
(1038, 21, 'Vergara Household', 'Kamaong Street', '1987-02-14', 100000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2536389, 8.247444444, NULL, NULL),
(1039, 21, 'Vergara Household', 'Kamaong Street', '2000-01-03', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2536389, 8.247444444, NULL, NULL),
(1040, 21, 'Vergara Household', 'Kamaong Street', '1991-08-15', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2536389, 8.247444444, NULL, NULL),
(1041, 21, 'Corbita Household', 'Kamaong Street', '2001-08-09', 2000000, 'Residential', 'Makeshift', 80, 1, 'Owner', 124.2537222, 8.247222222, NULL, NULL),
(1042, 21, 'Vasquez Household', 'Kamaong Street', '2009-06-11', 100000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2536944, 8.246277778, NULL, NULL),
(1043, 21, 'Almaden Household', 'Kamaong Street', '1999-10-25', 100000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2537222, 8.246305556, NULL, NULL),
(1044, 21, 'Vasquez Household', 'Kamaong Street', '2004-03-12', 1800000, 'Residential', 'Metal', 30, 1, 'Owner', 124.2537778, 8.246361111, NULL, NULL),
(1045, 21, 'Cabatinan Household', 'Kamaong Street', '1999-11-02', 100000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2532778, 8.246861111, NULL, NULL),
(1046, 21, 'Suan Household', 'Kamaong Street', '1998-11-25', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2532222, 8.246916667, NULL, NULL),
(1047, 21, 'Esteva Household', 'Kamaong Street', '1994-12-25', 100000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2531944, 8.246888889, NULL, NULL),
(1048, 21, 'Pagdilao Household', 'Kamaong Street', '2004-09-12', 100000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2531667, 8.246861111, NULL, NULL),
(1049, 21, 'Ramos Household', 'Kamaong Street', '1990-06-15', 100000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2534444, 8.246916667, NULL, NULL),
(1050, 21, 'Asaad Household', 'Kamaong Street', '1997-01-31', 1000000, 'Residential', 'Wood', 100, 1, 'Owner', 124.2533333, 8.247555556, NULL, NULL),
(1051, 21, 'Uglasan Household', 'Kamaong Street', '2003-05-02', 500000, 'Residential', 'Metal', 200, 1, 'Owner', 124.2532778, 8.248111111, NULL, NULL),
(1052, 21, 'Padillo Household', 'Kamaong Street', '1987-03-12', 1200000, 'Residential', 'Concrete', 150, 1, 'Owner', 124.2533056, 8.248138889, NULL, NULL),
(1053, 20, 'Lagda Household', 'Kamaong Street', '1991-04-14', 1500000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2530278, 8.24925, NULL, NULL),
(1054, 20, 'Sabando Household', 'Kamaong Street', '1998-01-19', 100000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2531389, 8.24975, NULL, NULL),
(1055, 20, 'Tabano Household', 'Kamaong Street', '1995-02-26', 80000, 'Residential', 'Makeshift', 50, 1, 'Owner', 124.2533333, 8.249944444, NULL, NULL),
(1056, 20, 'Tabano Household', 'Kamaong Street', '1993-04-08', 150000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2533056, 8.249944444, NULL, NULL),
(1057, 20, 'Mira Household', 'Kamaong Street', '1996-05-20', 15000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2531944, 8.250027778, NULL, NULL),
(1058, 20, 'Arbes Household', 'Kamaong Street', '1995-11-12', 10000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2530556, 8.250111111, NULL, NULL),
(1059, 20, 'Cristobal Household', 'Kamaong Street', '1988-04-12', 250000, 'Residential', 'Wood', 35, 1, 'Owner', 124.2534722, 8.249305556, NULL, NULL),
(1060, 20, 'Layno Household', 'Kamaong Street', '1993-03-20', 250000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2534444, 8.249277778, NULL, NULL),
(1061, 20, 'Rufino Household', 'Kamaong Street', '1999-10-24', 7000, 'Residential', 'Wood', 10, 1, 'Owner', 124.2533333, 8.250027778, NULL, NULL),
(1062, 20, 'Lupague Household', 'Kamaong Street', '2008-05-06', 10000, 'Residential', 'Wood', 20, 1, 'Owner', 124.2531944, 8.250083333, NULL, NULL),
(1063, 20, 'Ladega Household', 'Kamaong Street', '2000-07-12', 10000, 'Residential', 'Bamboo', 18, 1, 'Owner', 124.2532222, 8.250083333, NULL, NULL),
(1064, 20, 'Rufino Household', 'Kamaong Street', '2004-11-10', 15000, 'Residential', 'Masonry', 20, 1, 'Owner', 124.2533333, 8.250083333, NULL, NULL),
(1065, 20, 'Rufino Household', 'Kamaong Street', '1995-08-18', 5000, 'Residential', 'Metal', 10, 1, 'Owner', 124.2533333, 8.250055556, NULL, NULL),
(1066, 20, 'Daligdig Household', 'Kamaong Street', '2005-10-14', 7000, 'Residential', 'Bamboo', 18, 1, 'Owner', 124.2532778, 8.250027778, NULL, NULL),
(1067, 20, 'Rufino Household', 'Kamaong Street', '2002-03-12', 10000, 'Residential', 'Wood', 16, 1, 'Owner', 124.25325, 8.250055556, NULL, NULL),
(1068, 20, 'Maglangit Household', 'Kamaong Street', '1998-07-01', 80000, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2526667, 8.249861111, NULL, NULL),
(1069, 20, 'Tuyan Household', 'Kamaong Street', '2001-08-28', 10000, 'Residential', 'Masonry', 10, 1, 'Owner', 124.2526667, 8.24975, NULL, NULL),
(1070, 20, 'Monding Household', 'Kamaong Street', '2006-01-05', 100000, 'Residential', 'Makeshift', 18, 1, 'Owner', 124.2526111, 8.24975, NULL, NULL),
(1071, 20, 'Lee Household', 'Kamaong Street', '1987-05-03', 250000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2526389, 8.24975, NULL, NULL),
(1072, 20, 'Timba Household', 'Kamaong Street', '1991-12-12', 300000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2525833, 8.249694444, NULL, NULL),
(1073, 20, 'Pasco Household', 'Kamaong Street', '1988-03-10', 150000, 'Residential', 'Wood', 35, 1, 'Owner', 124.2526944, 8.249666667, NULL, NULL),
(1074, 20, 'Tañia Household', 'Kamaong Street', '2003-01-31', 50000, 'Residential', 'Bamboo', 10, 1, 'Owner', 124.2528056, 8.249527778, NULL, NULL),
(1075, 20, 'Tuyan Household', 'Kamaong Street', '1997-07-16', 150000, 'Residential', 'Wood', 35, 1, 'Owner', 124.2527222, 8.249527778, NULL, NULL),
(1076, 20, 'Owayas Household', 'Kamaong Street', '2003-01-13', 70000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2525833, 8.249527778, NULL, NULL),
(1077, 20, 'Densing Household', 'Kamaong Street', '1996-10-26', 70000, 'Residential', 'Masonry', 35, 1, 'Owner', 124.25275, 8.249388889, NULL, NULL),
(1078, 20, 'Narona Household', 'Kamaong Street', '1991-01-21', 100000, 'Residential', 'Concrete', 3, 1, 'Owner', 124.25275, 8.249416667, NULL, NULL),
(1079, 20, 'Nabises Household', 'Kamaong Street', '2003-02-08', 100000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.2516389, 8.24975, NULL, NULL),
(1080, 20, 'Gamos Household', 'Kamaong Street', '2002-01-20', 30000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2521111, 8.249638889, NULL, NULL),
(1081, 20, 'Dangcal Household', 'Kamaong Street', '1997-10-31', 25000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2520278, 8.2495, NULL, NULL),
(1082, 20, 'Gonzales Household', 'Kamaong Street', '1987-10-03', 50000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2519444, 8.249444444, NULL, NULL),
(1083, 20, 'Gamos Household', 'Kamaong Street', '1998-02-01', 100000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2519167, 8.249444444, NULL, NULL),
(1084, 20, 'Gamos Household', 'Kamaong Street', '2006-10-30', 50000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2519722, 8.249388889, NULL, NULL),
(1085, 20, 'Tañan Household', 'Kamaong Street', '2009-01-22', 100000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.25175, 8.249305556, NULL, NULL),
(1086, 20, 'Ragasajo Household', 'Kamaong Street', '1987-03-28', 30000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2517222, 8.249305556, NULL, NULL),
(1087, 20, 'Capricho Household', 'Kamaong Street', '2000-04-22', 50000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2516667, 8.249222222, NULL, NULL),
(1088, 20, 'Arado Household', 'Kamaong Street', '1987-08-27', 30000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.25175, 8.24925, NULL, NULL),
(1089, 20, 'Libre Household', 'Kamaong Street', '2000-10-16', 10000, 'Residential', 'Bamboo', 15, 1, 'Owner', 124.2523333, 8.248694444, NULL, NULL),
(1090, 20, 'Abolanda Household', 'Kamaong Street', '2007-05-01', 15000, 'Residential', 'Concrete', 10, 1, 'Owner', 124.2523889, 8.24875, NULL, NULL),
(1091, 20, 'Patagoc Household', 'Kamaong Street', '2003-10-31', 20000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2524167, 8.24875, NULL, NULL),
(1092, 20, 'Ballanca Household', 'Kamaong Street', '2009-11-18', 10000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2524167, 8.248694444, NULL, NULL),
(1093, 16, 'Amado Household', 'Kamaong Street', '1990-11-08', 80000, 'Residential', 'Metal', 60, 1, 'Owner', 124.25625, 8.243083333, NULL, NULL),
(1094, 16, 'Auditor Household', 'Kamaong Street', '1994-07-24', 300000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2561667, 8.242916667, NULL, NULL),
(1095, 16, 'Radasa Household', 'Kamaong Street', '2002-09-17', 300000, 'Residential', 'Bamboo', 50, 1, 'Owner', 124.2561389, 8.242944444, NULL, NULL),
(1096, 16, 'Buenavista Household', 'Kamaong Street', '1996-04-10', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2560833, 8.242916667, NULL, NULL),
(1097, 16, 'Mahinay Household', 'Kamaong Street', '1997-01-25', 0, 'Residential', 'Makeshift', 35, 1, 'Owner', 124.2561111, 8.242888889, NULL, NULL),
(1098, 16, 'Langamin Household', 'Kamaong Street', '1990-07-08', 500000, 'Residential', 'Bamboo', 80, 1, 'Owner', 124.2560556, 8.242805556, NULL, NULL),
(1099, 16, 'Tingas Household', 'Kamaong Street', '1991-01-03', 500000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2559167, 8.242944444, NULL, NULL),
(1100, 16, 'Alcantara Household', 'Kamaong Street', '1988-06-04', 100000, 'Residential', 'Bamboo', 60, 1, 'Owner', 124.2558056, 8.242777778, NULL, NULL),
(1101, 16, 'Abadines Household', 'Kamaong Street', '1989-09-23', 50000, 'Residential', 'Wood', 40, 1, 'Owner', 124.2557222, 8.242833333, NULL, NULL),
(1102, 16, 'Regis Household', 'Kamaong Street', '1989-04-04', 300000, 'Residential', 'Masonry', 60, 1, 'Owner', 124.25575, 8.242916667, NULL, NULL),
(1103, 16, 'Pasague Household', 'Kamaong Street', '1986-07-18', 300000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2556667, 8.242972222, NULL, NULL),
(1104, 16, 'Carillo Household', 'Kamaong Street', '2004-02-26', 1000000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2556667, 8.243027778, NULL, NULL),
(1105, 16, 'Belivestre Household', 'Kamaong Street', '1986-08-29', 200000, 'Residential', 'Wood', 80, 1, 'Owner', 124.2555278, 8.243083333, NULL, NULL),
(1106, 16, 'Amorguez Household', 'Kamaong Street', '2008-08-09', 180000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2556667, 8.243111111, NULL, NULL),
(1107, 16, 'Diola Household', 'Kamaong Street', '2007-02-24', 0, 'Residential', 'Wood', 30, 1, 'Owner', 124.2556111, 8.243194444, NULL, NULL),
(1108, 16, 'Dolliento Household', 'Kamaong Street', '1989-12-28', 20000, 'Residential', 'Metal', 10, 1, 'Owner', 124.2556111, 8.243333333, NULL, NULL),
(1109, 16, 'Daclan Household', 'Kamaong Street', '2005-09-07', 600000, 'Residential', 'Bamboo', 100, 1, 'Owner', 124.2558056, 8.243194444, NULL, NULL),
(1110, 16, 'Daclan Household', 'Kamaong Street', '1995-02-04', 600000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2558056, 8.243194444, NULL, NULL),
(1111, 16, 'Castillon Household', 'Kamaong Street', '1999-05-07', 500000, 'Residential', 'Bamboo', 100, 1, 'Owner', 124.2557778, 8.243388889, NULL, NULL),
(1112, 16, 'Mendez Household', 'Kamaong Street', '1987-07-11', 250000, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2560278, 8.243055556, NULL, NULL),
(1113, 17, 'Mejogue Household', 'Kamaong Street', '1993-05-01', 500000, 'Residential', 'Metal', 75, 1, 'Owner', 124.2549167, 8.241527778, NULL, NULL),
(1114, 17, 'Sumapig Household', 'Kamaong Street', '1990-04-22', 150000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2550556, 8.241666667, NULL, NULL),
(1115, 17, 'Disierto Household', 'Kamaong Street', '2004-09-21', 70000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.255, 8.241388889, NULL, NULL),
(1116, 17, 'Mutia Household', 'Kamaong Street', '1990-10-25', 0, 'Residential', 'Metal', 30, 1, 'Owner', 124.2550278, 8.241527778, NULL, NULL),
(1117, 17, 'Banggo Household', 'Kamaong Street', '1991-03-11', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2552222, 8.2415, NULL, NULL),
(1118, 17, 'Taan Household', 'Kamaong Street', '1988-04-21', 0, 'Residential', 'Metal', 15, 1, 'Owner', 124.2552778, 8.2415, NULL, NULL),
(1119, 17, 'Pepania Household', 'Kamaong Street', '1993-07-30', 150000, 'Residential', 'Concrete', 60, 1, 'Owner', 124.25525, 8.241527778, NULL, NULL),
(1120, 17, 'Peradillo Household', 'Kamaong Street', '1993-12-01', 500000, 'Residential', 'Concrete', 80, 1, 'Owner', 124.2553333, 8.241444444, NULL, NULL),
(1121, 17, 'Omandam Household', 'Kamaong Street', '1993-04-27', 1500000, 'Residential', 'Wood', 60, 1, 'Owner', 124.2553889, 8.241277778, NULL, NULL),
(1122, 17, 'Trinidad Household', 'Kamaong Street', '2006-11-30', 50000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2554722, 8.241388889, NULL, NULL),
(1123, 17, 'Tenchavez Household', 'Kamaong Street', '2007-07-01', 70000, 'Residential', 'Concrete', 20, 1, 'Owner', 124.2554444, 8.241361111, NULL, NULL),
(1124, 17, 'Las_Piñas Household', 'Kamaong Street', '1990-11-23', 80000, 'Residential', 'Makeshift', 30, 1, 'Owner', 124.2555278, 8.241222222, NULL, NULL),
(1125, 17, 'Novela Household', 'Kamaong Street', '1993-10-11', 15000, 'Residential', 'Bamboo', 30, 1, 'Owner', 124.2554722, 8.241388889, NULL, NULL),
(1126, 17, 'Angkee Household', 'Kamaong Street', '1992-08-28', 1000000, 'Residential', 'Wood', 200, 1, 'Owner', 124.2550278, 8.242388889, NULL, NULL),
(1127, 17, 'Iglupas Household', 'Kamaong Street', '1993-01-03', 150000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2550278, 8.242416667, NULL, NULL),
(1128, 17, 'Mama Household', 'Kamaong Street', '1999-07-28', 60000, 'Residential', 'Bamboo', 20, 1, 'Owner', 124.2550556, 8.242138889, NULL, NULL),
(1129, 17, 'Sanitllan Household', 'Kamaong Street', '1986-08-16', 70000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2553611, 8.242333333, NULL, NULL),
(1130, 17, 'Ubatay Household', 'Kamaong Street', '1987-02-16', 500000, 'Residential', 'Metal', 50, 1, 'Owner', 124.2554722, 8.242055556, NULL, NULL),
(1131, 17, 'Perijan Household', 'Kamaong Street', '1991-09-14', 80000, 'Residential', 'Wood', 30, 1, 'Owner', 124.2555833, 8.241527778, NULL, NULL),
(1132, 17, 'Imperial Household', 'Kamaong Street', '1990-03-27', 0, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2556667, 8.241555556, NULL, NULL),
(1133, 10, 'Fernan Household', 'Kamaong Street', '1989-09-06', 400000, 'Residential', 'Metal', 49, 1, 'Owner', 124.25925, 8.246166667, NULL, NULL),
(1134, 10, 'Wong Household', 'Kamaong Street', '2008-02-24', 6000000, 'Residential', 'Bamboo', 65, 1, 'Owner', 124.2591944, 8.246111111, NULL, NULL),
(1135, 10, 'Ungkit Household', 'Kamaong Street', '1997-08-22', 1000000, 'Residential', 'Bamboo', 100, 1, 'Owner', 124.2593056, 8.245861111, NULL, NULL),
(1136, 10, 'Olama Household', 'Kamaong Street', '2004-06-24', 5000000, 'Residential', 'Concrete', 150, 1, 'Owner', 124.2596111, 8.246, NULL, NULL),
(1137, 10, 'Cagula Household', 'Kamaong Street', '1997-01-04', 1600000, 'Residential', 'Makeshift', 60, 1, 'Owner', 124.2596389, 8.246416667, NULL, NULL),
(1138, 10, 'Magusara Household', 'Kamaong Street', '2002-04-01', 0, 'Residential', 'Makeshift', 10, 1, 'Owner', 124.2598611, 8.246444444, NULL, NULL),
(1139, 10, 'Camasura Household', 'Kamaong Street', '2004-11-15', 80000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2595, 8.246555556, NULL, NULL),
(1140, 10, 'Budan Household', 'Kamaong Street', '1988-10-30', 20000, 'Residential', 'Makeshift', 20, 1, 'Owner', 124.2603889, 8.246111111, NULL, NULL),
(1141, 10, 'Lahoylahoy Household', 'Kamaong Street', '2002-09-01', 70000, 'Residential', 'Makeshift', 100, 1, 'Owner', 124.2597778, 8.246916667, NULL, NULL),
(1142, 10, 'Gohel Household', 'Kamaong Street', '1987-04-01', 500000, 'Residential', 'Metal', 80, 1, 'Owner', 124.2598333, 8.247, NULL, NULL),
(1143, 10, 'Carloman Household', 'Kamaong Street', '2007-06-21', 600000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2601944, 8.246666667, NULL, NULL),
(1144, 7, 'Doleguez Household', 'Kamaong Street', '2008-08-23', 0, 'Residential', 'Makeshift', 70, 1, 'Owner', 124.2607222, 8.246277778, NULL, NULL),
(1145, 18, 'Togunon Household', 'Kamaong Street', '2000-09-17', 200000, 'Residential', 'Masonry', 40, 1, 'Owner', 124.261, 8.245638889, NULL, NULL),
(1146, 18, 'Maghinay Household', 'Kamaong Street', '2004-09-28', 100000, 'Residential', 'Concrete', 30, 1, 'Owner', 124.2607778, 8.245638889, NULL, NULL),
(1147, 18, 'Lonoy Household', 'Kamaong Street', '1999-06-24', 300000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2608056, 8.244972222, NULL, NULL),
(1148, 18, 'Lanoy Household', 'Kamaong Street', '1986-09-07', 2000000, 'Residential', 'Metal', 60, 1, 'Owner', 124.2608056, 8.24475, NULL, NULL),
(1149, 22, 'Sarin Household', 'Kamaong Street', '2008-12-19', 400000, 'Residential', 'Masonry', 90, 1, 'Owner', 124.2688056, 8.250305556, NULL, NULL),
(1150, 22, 'Alivio Household', 'Kamaong Street', '2001-04-03', 0, 'Residential', 'Concrete', 0, 1, 'Owner', 124.26875, 8.250444444, NULL, NULL),
(1151, 22, 'Ramirez Household', 'Kamaong Street', '1998-09-24', 4500000, 'Residential', 'Metal', 40, 1, 'Owner', 124.2685833, 8.250444444, NULL, NULL),
(1152, 22, 'Duyaguit Household', 'Kamaong Street', '1988-04-20', 3000000, 'Residential', 'Bamboo', 100, 1, 'Owner', 124.2683889, 8.250888889, NULL, NULL),
(1153, 22, 'Amba Household', 'Kamaong Street', '1997-09-23', 2500000, 'Residential', 'Bamboo', 108, 1, 'Owner', 124.2684167, 8.250805556, NULL, NULL),
(1154, 1, 'Sierra Household', 'Kamaong Street', '1994-08-12', 15000, 'Residential', 'Metal', 20, 1, 'Owner', 124.2683333, 8.251111111, NULL, NULL),
(1155, 22, 'Corona Household', 'Kamaong Street', '1999-04-13', 700000, 'Residential', 'Makeshift', 85, 1, 'Owner', 124.2685556, 8.251194444, NULL, NULL),
(1156, 22, 'Fuentes Household', 'Kamaong Street', '2007-07-24', 0, 'Residential', 'Metal', 0, 1, 'Owner', 124.2686667, 8.251277778, NULL, NULL),
(1157, 22, 'Calimpong Household', 'Kamaong Street', '2008-08-02', 2000000, 'Residential', 'Concrete', 115, 1, 'Owner', 124.2689444, 8.251527778, NULL, NULL),
(1158, 22, 'Lauron Household', 'Kamaong Street', '2002-08-21', 800000, 'Residential', 'Metal', 200, 1, 'Owner', 124.2690833, 8.2515, NULL, NULL),
(1159, 22, 'Lauron Household', 'Kamaong Street', '1995-03-11', 800000, 'Residential', 'Metal', 200, 1, 'Owner', 124.2690833, 8.2515, NULL, NULL),
(1160, 22, 'Lauron Household', 'Kamaong Street', '1990-12-25', 800000, 'Residential', 'Wood', 200, 1, 'Owner', 124.2690833, 8.2515, NULL, NULL),
(1161, 22, 'Cajes Household', 'Kamaong Street', '1988-01-24', 800000, 'Residential', 'Concrete', 200, 1, 'Owner', 124.2690833, 8.2515, NULL, NULL),
(1162, 22, 'Sahera Household', 'Kamaong Street', '1995-08-16', 400000, 'Residential', 'Metal', 56, 1, 'Owner', 124.2685278, 8.251, NULL, NULL),
(1163, 22, 'Tomaquin Household', 'Kamaong Street', '2004-04-13', 500000, 'Residential', 'Masonry', 150, 1, 'Owner', 124.26875, 8.250972222, NULL, NULL),
(1164, 22, 'Velayo Household', 'Kamaong Street', '2003-12-05', 0, 'Residential', 'Makeshift', 40, 1, 'Owner', 124.2689722, 8.251166667, NULL, NULL),
(1165, 22, 'Galleno Household', 'Kamaong Street', '2001-07-08', 1000000, 'Residential', 'Wood', 70, 1, 'Owner', 124.2690833, 8.251333333, NULL, NULL),
(1166, 22, 'Hipayo Household', 'Kamaong Street', '1991-05-24', 0, 'Residential', 'Makeshift', 36, 1, 'Owner', 124.2691389, 8.251666667, NULL, NULL),
(1167, 22, 'Bado Household', 'Kamaong Street', '1996-11-06', 250000, 'Residential', 'Masonry', 30, 1, 'Owner', 124.2690833, 8.251777778, NULL, NULL),
(1168, 22, 'Adaza Household', 'Kamaong Street', '1992-12-02', 350000, 'Residential', 'Wood', 44, 1, 'Owner', 124.2694167, 8.251416667, NULL, NULL),
(1169, 22, 'Caparida Household', 'Kamaong Street', '1995-06-24', 1500000, 'Residential', 'Makeshift', 109, 1, 'Owner', 124.2693889, 8.251277778, NULL, NULL),
(1170, 22, 'Bongcawil Household', 'Kamaong Street', '2007-10-09', 2000000, 'Residential', 'Metal', 109, 1, 'Owner', 124.2692778, 8.251138889, NULL, NULL),
(1171, 22, 'Delangcaten Household', 'Kamaong Street', '1990-09-19', 500000, 'Residential', 'Masonry', 142, 1, 'Owner', 124.2695, 8.251472222, NULL, NULL),
(1172, 22, 'Daing Household', 'Kamaong Street', '1999-07-21', 600000, 'Residential', 'Masonry', 100, 1, 'Owner', 124.2692222, 8.251138889, NULL, NULL),
(1173, 22, 'Jimenez Household', 'Kamaong Street', '1987-10-08', 0, 'Residential', 'Concrete', 200, 1, 'Owner', 124.2694167, 8.251333333, NULL, NULL),
(1174, 22, 'Orbeta Household', 'Kamaong Street', '1991-04-15', 100000, 'Residential', 'Bamboo', 36, 1, 'Owner', 124.2693333, 8.251138889, NULL, NULL),
(1175, 22, 'Reserva Household', 'Kamaong Street', '2003-09-16', 480000, 'Residential', 'Bamboo', 90, 1, 'Owner', 124.2693611, 8.251305556, NULL, NULL),
(1176, 22, 'Maruhumsar Household', 'Kamaong Street', '1994-02-12', 600000, 'Residential', 'Metal', 32, 1, 'Owner', 124.2696389, 8.251166667, NULL, NULL),
(1177, 22, 'Peñola Household', 'Kamaong Street', '1996-03-17', 0, 'Residential', 'Wood', 54, 1, 'Owner', 124.2695833, 8.251055556, NULL, NULL),
(1178, 22, 'Cabili Household', 'Kamaong Street', '2007-04-19', 400000, 'Residential', 'Metal', 36, 1, 'Owner', 124.2698333, 8.251444444, NULL, NULL),
(1179, 22, 'Del_Rosario Household', 'Kamaong Street', '2006-02-12', 800000, 'Residential', 'Makeshift', 200, 1, 'Owner', 124.2693333, 8.251638889, NULL, NULL),
(1180, 22, 'Asakil Household', 'Kamaong Street', '1994-06-08', 300000, 'Residential', 'Bamboo', 36, 1, 'Owner', 124.2692778, 8.251666667, NULL, NULL),
(1181, 22, 'Mag_usara Household', 'Kamaong Street', '1991-02-05', 2500000, 'Residential', 'Metal', 120, 1, 'Owner', 124.2692222, 8.252, NULL, NULL),
(1182, 15, 'Tabuelog Household', 'Kamaong Street', '2002-04-28', 300000, 'Residential', 'Concrete', 80, 1, 'Owner', 124.25575, 8.244805556, NULL, NULL),
(1183, 15, 'Tabuco Household', 'Kamaong Street', '1992-01-01', 100000, 'Residential', 'Wood', 70, 1, 'Owner', 124.256, 8.24475, NULL, NULL),
(1184, 15, 'Benabaye Household', 'Kamaong Street', '1994-07-27', 700000, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2555556, 8.24525, NULL, NULL),
(1185, 15, 'Enojardo Household', 'Kamaong Street', '1990-04-04', 0, 'Residential', 'Wood', 40, 1, 'Owner', 124.2555, 8.24525, NULL, NULL),
(1186, 15, 'Maliao Household', 'Kamaong Street', '1994-03-12', 0, 'Residential', 'Wood', 10, 1, 'Owner', 124.2554444, 8.24525, NULL, NULL),
(1187, 15, 'Omas-as Household', 'Kamaong Street', '2002-12-13', 250000, 'Residential', 'Bamboo', 35, 1, 'Owner', 124.2553611, 8.245138889, NULL, NULL),
(1188, 15, 'Malonhao Household', 'Kamaong Street', '1988-07-29', 30000, 'Residential', 'Metal', 10, 1, 'Owner', 124.2558611, 8.245277778, NULL, NULL),
(1189, 15, 'Bordaje Household', 'Kamaong Street', '1987-09-29', 50000, 'Residential', 'Masonry', 12, 1, 'Owner', 124.2558611, 8.245305556, NULL, NULL),
(1190, 15, 'Bonto Household', 'Kamaong Street', '2000-09-25', 0, 'Residential', 'Concrete', 40, 1, 'Owner', 124.2553889, 8.245138889, NULL, NULL);

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
(1, 1, 'Argiente Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(2, 2, 'Simbaco Family', 20000, 'Yes', 'Livestock', 'No', NULL, NULL),
(3, 3, 'Abiol Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(4, 4, 'Simbaco Family', 8850, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(5, 5, 'Catalan Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(6, 6, 'Catalan Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(7, 7, 'Daud Family', 160000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(8, 8, 'Daud Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(9, 9, 'Maguiran Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(10, 10, 'Maguiran Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(11, 11, 'Cali Family', 4500, 'Yes', 'Farming', 'No', NULL, NULL),
(12, 12, 'Bado Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(13, 13, 'Bado Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(14, 14, 'Salvador Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(15, 15, 'Cagobcob Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(16, 16, 'Bation Family', 7000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(17, 17, 'Libumfacil Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(18, 18, 'Sumile Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(19, 19, 'Fabroa Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(20, 20, 'Duran Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(21, 21, 'Salig Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(22, 22, 'Salig Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(23, 23, 'Remo Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(24, 24, 'Salado Family', 12000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(25, 25, 'Uy Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(26, 26, 'Fernandez Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(27, 27, 'Aguinot Family', 4500, 'Yes', 'Farming', 'No', NULL, NULL),
(28, 28, 'Gonzaga Family', 25000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(29, 29, 'Simbaco Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(30, 30, 'Garma Family', 7000, 'Yes', 'Farming', 'No', NULL, NULL),
(31, 31, 'Bation Family', 4500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(32, 32, 'Bado Family', 20000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(33, 33, 'Capangpangan Family', 7500, 'Yes', 'Farming', 'No', NULL, NULL),
(34, 34, 'Cloma Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(35, 35, 'Borbon Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(36, 36, 'Sebaria Family', 1000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(37, 37, 'Lumboy Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(38, 38, 'Soledad Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(39, 39, 'Yañez Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(40, 40, 'Reco Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(41, 41, 'Hatague Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(42, 42, 'Llanes Family', 20000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(43, 43, 'Albiento Family', 12000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(44, 44, 'Bado Family', 20000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(45, 45, 'Bado Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(46, 46, 'Saliot Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(47, 47, 'Hulgin Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(48, 48, 'Garting Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(49, 49, 'Garting Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(50, 50, 'Bado Family', 1500, 'Yes', 'Livestock', 'No', NULL, NULL),
(51, 51, 'Bardillas Family', 500, 'Yes', 'Farming', 'No', NULL, NULL),
(52, 52, 'Fabroa Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(53, 53, 'Verano Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(54, 54, 'Milancio Family', 7000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(55, 55, 'Aguilo Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(56, 56, 'Bado Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(57, 57, 'Bahian Family', 18000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(58, 58, 'Bado Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(59, 59, 'Esteban Family', 2500, 'Yes', 'Farming', 'No', NULL, NULL),
(60, 60, 'Villarta Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(61, 61, 'Abarca  Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(62, 62, 'Bado Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(63, 63, 'Babano Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(64, 64, 'Arado Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(65, 65, 'Balag Family', 9000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(66, 66, 'Arellano Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(67, 67, 'Perez Family', 7000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(68, 68, 'Fenis Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(69, 69, 'Canlolobo Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(70, 70, 'Cañarez Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(71, 71, 'Anislag Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(72, 72, 'Reluya Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(73, 73, 'Salvalosa Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(74, 74, 'Naquila Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(75, 75, 'Dacuya Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(76, 76, 'Arguilles Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(77, 77, 'Naquila Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(78, 78, 'Tadle Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(79, 79, 'Chavez Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(80, 80, 'Suganog Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(81, 81, 'Siarza Family', 1500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(82, 82, 'Siarza Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(83, 83, 'Quirino Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(84, 84, 'Albiento Family', 9000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(85, 85, 'Libumfacil Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(86, 86, 'Bado Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(87, 87, 'Bangus Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(88, 88, 'Awitin Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(89, 89, 'Bardillas Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(90, 90, 'Tingcang Family', 7000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(91, 91, 'Bangus Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(92, 92, 'Remegio Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(93, 93, 'Areola Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(94, 94, 'Diola Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(95, 95, 'Bado Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(96, 96, 'Sola Family', 30000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(97, 97, 'Bado Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(98, 98, 'Bordaje Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(99, 99, 'Elejorde Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(100, 100, 'Bado Family', 3500, 'Yes', 'Farming', 'No', NULL, NULL),
(101, 101, 'Cabandog Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(102, 102, 'Esma Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(103, 103, 'Buca Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(104, 104, 'Alaya_ay Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(105, 105, 'Buca Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(106, 106, 'Tabimina Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(107, 107, 'Cababan Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(108, 108, 'Cababan Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(109, 109, 'Alivio Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(110, 110, 'Ramos Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(111, 111, 'Ragadio Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(112, 112, 'Apongan Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(113, 113, 'Cando  Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(114, 114, 'Pa-ausbo Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(115, 115, 'Gallito Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(116, 116, 'Gallito Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(117, 117, 'Daniar Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(118, 118, 'Permacio Family', 3500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(119, 119, 'Zalsos Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(120, 120, 'Jala Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(121, 121, 'Permacio Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(122, 122, 'Nadayag Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(123, 123, 'Permacio Family', 4800, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(124, 124, 'Nadayag Family', 1500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(125, 125, 'Uy Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(126, 126, 'Vicente Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(127, 127, 'Lozano Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(128, 128, 'Macalong Family', 4500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(129, 129, 'Manlupig Family', 4500, 'Yes', 'Farming', 'No', NULL, NULL),
(130, 130, 'Antibo Family', 18000, 'Yes', 'Farming', 'No', NULL, NULL),
(131, 131, 'Gabores Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(132, 132, 'Agapay Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(133, 133, 'Rico Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(134, 134, 'Rico Family', 1000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(135, 135, 'Rico Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(136, 136, 'Cloma Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(137, 137, 'Manogaz Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(138, 138, 'Bayoloses Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(139, 139, 'Cabaktulan Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(140, 140, 'Rotaquio Family', 18000, 'Yes', 'Farming', 'No', NULL, NULL),
(141, 141, 'Fernandez Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(142, 142, 'Borga Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(143, 143, 'Ordinaria Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(144, 144, 'Fernandez Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(145, 145, 'Gabando Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(146, 146, 'Bardillas Family', 10000, 'Yes', 'Livestock', 'No', NULL, NULL),
(147, 147, 'Baroga Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(148, 148, 'Elago Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(149, 149, 'Rosal Family', 30000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(150, 150, 'Fabillaran Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(151, 151, 'Ebasan Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(152, 152, 'Losanto Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(153, 153, 'Losanto Family', 3500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(154, 154, 'Guiling Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(155, 155, 'Gapo Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(156, 156, 'Ebasan Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(157, 157, 'Bado Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(158, 158, 'Dayday Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(159, 159, 'Pepito Family', 70000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(160, 160, 'Batucan Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(161, 161, 'Lozano Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(162, 162, 'Briones Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(163, 163, 'Reco Family', 1000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(164, 164, 'Reco Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(165, 165, 'Solidad Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(166, 166, 'Uy Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(167, 167, 'Bado Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(168, 168, 'Reco Family', 11000, 'Yes', 'Farming', 'No', NULL, NULL),
(169, 169, 'Ersando Family', 12000, 'Yes', 'Farming', 'No', NULL, NULL),
(170, 170, 'Balocan Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(171, 171, 'Cabahug Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(172, 172, 'Buca Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(173, 173, 'Florez Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(174, 174, 'Alivio Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(175, 175, 'Nacario Family', 18000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(176, 176, 'Leonor Family', 15000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(177, 177, 'Libre Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(178, 178, 'Modesiyo Family', 12000, 'Yes', 'Farming', 'No', NULL, NULL),
(179, 179, 'Ardiente Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(180, 180, 'Echavez Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(181, 181, 'Jorudis Family', 2500, 'Yes', 'Livestock', 'No', NULL, NULL),
(182, 182, 'Ardiente Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(183, 183, 'Nario Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(184, 184, 'Dayday Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(185, 185, 'Espoma Family', 20000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(186, 186, 'Eslit Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(187, 187, 'Abdul Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(188, 188, 'Casas Family', 60000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(189, 189, 'Paramo Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(190, 190, 'Ermac Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(191, 191, 'Better Family', 9000, 'Yes', 'Livestock', 'No', NULL, NULL),
(192, 192, 'Bagday Family', 2500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(193, 193, 'Muncal Family', 90000, 'Yes', 'Livestock', 'No', NULL, NULL),
(194, 194, 'Muncal Family', 15000, 'Yes', 'Livestock', 'No', NULL, NULL),
(195, 195, 'Henson Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(196, 196, 'Bahian Family', 20000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(197, 197, 'Bahian Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(198, 198, 'Bahian Family', 21000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(199, 199, 'Tungao Family', 9000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(200, 200, 'Geralde Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(201, 201, 'Jungalan Family', 20000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(202, 202, 'Laorito Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(203, 203, 'Dompalis Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(204, 204, 'Nacor Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(205, 205, 'Anor Family', 3800, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(206, 206, 'Labang Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(207, 207, 'Daniel Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(208, 208, 'Liken Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(209, 209, 'Ablon Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(210, 210, 'Nobillos Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(211, 211, 'Dilima Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(212, 212, 'Maglasang Family', 7000, 'Yes', 'Farming', 'No', NULL, NULL),
(213, 213, 'Ermac Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(214, 214, 'Renes Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(215, 215, 'Rives Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(216, 216, 'Gabayan Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(217, 217, 'Capangpangan Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(218, 218, 'Tyson Family', 20000, 'Yes', 'Livestock', 'No', NULL, NULL),
(219, 219, 'Bilayo Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(220, 220, 'Lacuto Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(221, 221, 'Gabisay Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(222, 222, 'Denolong Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(223, 223, 'Labial Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(224, 224, 'Balatayo Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(225, 225, 'Badar Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(226, 226, 'Tamayo Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(227, 227, 'Apas Family', 30000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(228, 228, 'Rujo Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(229, 229, 'Rujo Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(230, 230, 'Labang Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(231, 231, 'Dolira Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(232, 232, 'Maglasang Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(233, 233, 'Paloma Family', 13000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(234, 234, 'Aligarmi Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(235, 235, 'Macalong Family', 30000, 'Yes', 'Farming', 'No', NULL, NULL),
(236, 236, 'Ermac Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(237, 237, 'Subido Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(238, 238, 'Ermac Family', 12000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(239, 239, 'Sas Family', 2000, 'Yes', 'Farming', 'No', NULL, NULL),
(240, 240, 'Manlapig Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(241, 241, 'Bation Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(242, 242, 'Maglasang Family', 18000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(243, 243, 'Elleso Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(244, 244, 'Ablin Family', 30000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(245, 245, 'Balido Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(246, 246, 'Bacaro Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(247, 247, 'Sumile Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(248, 248, 'Dionaldo Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(249, 249, 'Cabanlito Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(250, 250, 'Maglasang Family', 30000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(251, 251, 'Maglasang Family', 20000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(252, 252, 'Cabadan Family', 20000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(253, 253, 'Gulang Family', 60000, 'Yes', 'Livestock', 'No', NULL, NULL),
(254, 254, 'Maglasang Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(255, 255, 'Verano Family', 20000, 'Yes', 'Livestock', 'No', NULL, NULL),
(256, 256, 'Ruawidas Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(257, 257, 'Ramos Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(258, 258, 'Mabime Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(259, 259, 'Llanez Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(260, 260, 'Jocsing Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(261, 261, 'Llanez Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(262, 262, 'Yañez Family', 30000, 'Yes', 'Livestock', 'No', NULL, NULL),
(263, 263, 'Gracia Family', 30000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(264, 264, 'Maglasang Family', 12000, 'Yes', 'Farming', 'No', NULL, NULL),
(265, 265, 'Aneora Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(266, 266, 'Togonon Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(267, 267, 'Roardilas Family', 35000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(268, 268, 'Barrette Family', 9000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(269, 269, 'Barrette Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(270, 270, 'Montor Family', 7000, 'Yes', 'Farming', 'No', NULL, NULL),
(271, 271, 'Delpin Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(272, 272, 'Gamotia Family', 12000, 'Yes', 'Farming', 'No', NULL, NULL),
(273, 273, 'Camiroy Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(274, 274, 'Camiroy Family', 2500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(275, 275, 'Camiroy Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(276, 276, 'Alfecha Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(277, 277, 'Remigio Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(278, 278, 'Antony Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(279, 279, 'Herira Family', 3500, 'Yes', 'Farming', 'No', NULL, NULL),
(280, 280, 'Herira Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(281, 281, 'Ermac Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(282, 282, 'Wasawas Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(283, 283, 'Salaan Family', 4500, 'Yes', 'Livestock', 'No', NULL, NULL),
(284, 284, 'Dutolyo Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(285, 285, 'Malinguit Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(286, 286, 'Ermac Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(287, 287, 'Lagrada Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(288, 288, 'Ermac Family', 3500, 'Yes', 'Livestock', 'No', NULL, NULL),
(289, 289, 'Castillon Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(290, 290, 'Respecia Family', 12000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(291, 291, 'Mainit Family', 20000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(292, 292, 'Sapyot Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(293, 293, 'Alfecha Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(294, 294, 'Odgudia Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(295, 295, 'Respisya Family', 2500, 'Yes', 'Farming', 'No', NULL, NULL),
(296, 296, 'Cenas Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(297, 297, 'Diango Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(298, 298, 'Hinon Family', 3500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(299, 299, 'Albatera Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(300, 300, 'Danamaria Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(301, 301, 'Ermac Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(302, 302, 'Bantilan Family', 9000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(303, 303, 'Ermac Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(304, 304, 'Ermac Family', 15000, 'Yes', 'Farming', 'No', NULL, NULL),
(305, 305, 'Tabangcoran Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(306, 306, 'Casira Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(307, 307, 'Diango Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(308, 308, 'Diango Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(309, 309, 'Masirin Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(310, 310, 'Ruiz Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(311, 311, 'Nano Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(312, 312, 'Ermac Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(313, 313, 'Corniro Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(314, 314, 'Ermac Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(315, 315, 'Nantes Family', 40000, 'Yes', 'Livestock', 'No', NULL, NULL),
(316, 316, 'Lagunsad Family', 9000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(317, 317, 'Corniro Family', 40000, 'Yes', 'Farming', 'No', NULL, NULL),
(318, 318, 'Quigol Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(319, 319, 'Ermac Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(320, 320, 'Anggot Family', 1300, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(321, 321, 'Lupiz Family', 50000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(322, 322, 'Larot Family', 18000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(323, 323, 'Stomata Family', 20000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(324, 324, 'Canggas Family', 9000, 'Yes', 'Livestock', 'No', NULL, NULL),
(325, 325, 'Orante Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(326, 326, 'Myro Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(327, 327, 'Rerera Family', 20000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(328, 328, 'Anino Family', 18000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(329, 329, 'Bagamaspad Family', 60000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(330, 330, 'Magamaspad Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(331, 331, 'Quinain Family', 60000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(332, 332, 'Buscano Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(333, 333, 'Ocop Family', 20000, 'Yes', 'Farming', 'No', NULL, NULL),
(334, 334, 'Nari Family', 18000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(335, 335, 'Lozano Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(336, 336, 'Timo Family', 7000, 'Yes', 'Farming', 'No', NULL, NULL),
(337, 337, 'Roque Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(338, 338, 'Anoy Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(339, 339, 'Lozano Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(340, 340, 'Robrigo Family', 12000, 'Yes', 'Farming', 'No', NULL, NULL),
(341, 341, 'Rosal Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(342, 342, 'Go Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(343, 343, 'Capangpangan Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(344, 344, 'Villaver Family', 7000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(345, 345, 'Cagas Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(346, 346, 'Alivio Family', 7000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(347, 347, 'Basilgo Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(348, 348, 'Kulita Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(349, 349, 'Uy Family', 4500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(350, 350, 'Lacio Family', 7000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(351, 351, 'Virtudez Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(352, 352, 'Virtudez Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(353, 353, 'Duran Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(354, 354, 'Duran Family', 2500, 'Yes', 'Livestock', 'No', NULL, NULL),
(355, 355, 'Tahuda Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(356, 356, 'Soco Family', 1500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(357, 357, 'Sulipan Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(358, 358, 'Mahusay Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(359, 359, 'Ramonis Family', 4500, 'Yes', 'Livestock', 'No', NULL, NULL),
(360, 360, 'Cabahug Family', 3500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(361, 361, 'Alcala Family', 18000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(362, 362, 'Alcala Family', 9000, 'Yes', 'Livestock', 'No', NULL, NULL),
(363, 363, 'Fuentes Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(364, 364, 'Fuentes Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(365, 365, 'dela_Peña Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(366, 366, 'Mata Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(367, 367, 'Lucero Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(368, 368, 'Fernandez Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(369, 369, 'Cabahug Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(370, 370, 'Abdan Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(371, 371, 'Pimentel Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(372, 372, 'Silada Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(373, 373, 'Luloguban Family', 9000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(374, 374, 'Cabahug Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(375, 375, 'Lahoylahoy Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(376, 376, 'Wagas Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(377, 377, 'Cabahug Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(378, 378, 'Cabahug Family', 2500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(379, 379, 'Heyrana Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(380, 380, 'Cabahug Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(381, 381, 'Cabahug Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(382, 382, 'Cabahug Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(383, 383, 'Garcia Family', 10000, 'Yes', 'Livestock', 'No', NULL, NULL),
(384, 384, 'Aguilar Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(385, 385, 'Talhedo Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(386, 386, 'Abran Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(387, 387, 'Ugna Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(388, 388, 'Omalay Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(389, 389, 'Apique Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(390, 390, 'Pipito Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(391, 391, 'Ometer Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(392, 392, 'Sakin Family', 80000, 'Yes', 'Livestock', 'No', NULL, NULL),
(393, 393, 'Pipito Family', 4500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(394, 394, 'Jayson Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(395, 395, 'Cacinero Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(396, 396, 'Pasco Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(397, 397, 'Alcaras Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(398, 398, 'Siapel Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(399, 399, 'Aguinod Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(400, 400, 'Dag-uman Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(401, 401, 'Bantayan Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(402, 402, 'Siapel Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(403, 403, 'Bontilaw Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(404, 404, 'Jayzoy Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(405, 405, 'Pacada Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(406, 406, 'Cabahug Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(407, 407, 'Dag-uman Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(408, 408, 'Dag-uman Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(409, 409, 'Austero Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(410, 410, 'Villa_Hermosa Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(411, 411, 'Saploy Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(412, 412, 'Rubia Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(413, 413, 'Galbes Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(414, 414, 'Rubia Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(415, 415, 'Repicio Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(416, 416, 'Matahong Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(417, 417, 'Apique Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(418, 418, 'Sumandora Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(419, 419, 'Quidlat Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(420, 420, 'Chen_Foo Family', 20000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(421, 421, 'Benabawan Family', 3500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(422, 422, 'Malonhaw Family', 4200, 'Yes', 'Farming', 'Yes', NULL, NULL),
(423, 423, 'Florez Family', 15000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(424, 424, 'Gallena Family', 20000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(425, 425, 'Bado Family', 7000, 'Yes', 'Farming', 'No', NULL, NULL),
(426, 426, 'Lipasan Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(427, 427, 'Bado Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(428, 428, 'Ondong Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(429, 429, 'Lopez Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(430, 430, 'Fagaloyon Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(431, 431, 'Iguado Family', 25000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(432, 432, 'Sacapan Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(433, 433, 'Suminget Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(434, 434, 'Saraosad Family', 300000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(435, 435, 'Lopera Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(436, 436, 'Lopera Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(437, 437, 'Lopera Family', 23000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(438, 438, 'Alivio Family', 9000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(439, 439, 'Cebusana Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(440, 440, 'Surigao Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(441, 441, 'Abelosa Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(442, 442, 'Laurente Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(443, 443, 'Laurenti Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(444, 444, 'Laurenti Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(445, 445, 'Baran Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(446, 446, 'Laurenti Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(447, 447, 'Cadampong Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(448, 448, 'Laurenti Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(449, 449, 'Antiro Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(450, 450, 'Laurenti Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(451, 451, 'Sierra Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(452, 452, 'Dayundong Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(453, 453, 'Sator Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(454, 454, 'Sator Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(455, 455, 'Curpos Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(456, 456, 'Cabiling Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(457, 457, 'Corpuz Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(458, 458, 'Pezon Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(459, 459, 'Putalan Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(460, 460, 'Bado Family', 30000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(461, 461, 'Bado Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(462, 462, 'Castillon Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(463, 463, 'Legotan Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(464, 464, 'Torreon Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(465, 465, 'Aguilar Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(466, 466, 'Aguilar Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(467, 467, 'Empasis Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(468, 468, 'Aguilar Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(469, 469, 'Capuno Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(470, 470, 'Empasis Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(471, 471, 'Yascer Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(472, 472, 'Salde Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(473, 473, 'Ermac Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(474, 474, 'Ermac Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(475, 475, 'Ermac Family', 1500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(476, 476, 'Ermac Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(477, 477, 'Reroma Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(478, 478, 'Capitan Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(479, 479, 'Torreon Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(480, 480, 'Torreon Family', 30000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(481, 481, 'Hubernadas Family', 30000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(482, 482, 'Ermac Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(483, 483, 'Apongan Family', 20000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(484, 484, 'Apongan Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(485, 485, 'Pepito Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(486, 486, 'Tore Family', 13000, 'Yes', 'Farming', 'No', NULL, NULL),
(487, 487, 'Quinte Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(488, 488, 'Apongan Family', 15000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(489, 489, 'Aso Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(490, 490, 'Payas Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(491, 491, 'Legaspi Family', 10000, 'Yes', 'Livestock', 'No', NULL, NULL),
(492, 492, 'Pepito Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(493, 493, 'Aniasco Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(494, 494, 'Broñidor Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(495, 495, 'Flores Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(496, 496, 'Andos Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(497, 497, 'Anding Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(498, 498, 'Maglasang Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(499, 499, 'Maglasang Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(500, 500, 'Maliao Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(501, 501, 'Amongos Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(502, 502, 'Itom Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(503, 503, 'Germoñea Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(504, 504, 'Pompales Family', 7000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(505, 505, 'Mala-ubang Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(506, 506, 'Maghanoy Family', 9000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(507, 507, 'Miza Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(508, 508, 'Pahinte Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(509, 509, 'Manggubat Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(510, 510, 'Dandasan Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(511, 511, 'Salvo Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(512, 512, 'Salvo Family', 15000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(513, 513, 'Salaan Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(514, 514, 'Salaan Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(515, 515, 'Barat Family', 2000, 'Yes', 'Farming', 'No', NULL, NULL),
(516, 516, 'Bavyera Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(517, 517, 'Generoso Family', 12000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(518, 518, 'Salazar Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(519, 519, 'Pocot Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(520, 520, 'Nabua Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(521, 521, 'Viña Family', 3500, 'Yes', 'Livestock', 'No', NULL, NULL),
(522, 522, 'Amanariio Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(523, 523, 'Padillo Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(524, 524, 'Poca Family', 10000, 'Yes', 'Livestock', 'No', NULL, NULL),
(525, 525, 'Padillo Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(526, 526, 'Nanaman Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(527, 527, 'Nanaman Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(528, 528, 'Ojalis Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(529, 529, 'Nanaman Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(530, 530, 'Amarga Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(531, 531, 'Amarga Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(532, 532, 'Maghinay Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(533, 533, 'Hepowit Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(534, 534, 'Canbaya Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(535, 535, 'Villanueva Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(536, 536, 'Cabasag Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(537, 537, 'Labrador Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(538, 538, 'Ampoan Family', 20000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(539, 539, 'Ligas Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(540, 540, 'Palangcon Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(541, 541, 'Demao Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(542, 542, 'Cabaniro Family', 4500, 'Yes', 'Livestock', 'No', NULL, NULL),
(543, 543, 'Bueno Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(544, 544, 'Lato Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(545, 545, 'Cutab Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(546, 546, 'Francisco Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(547, 547, 'Rico Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(548, 548, 'Binghit Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(549, 549, 'Sebaga Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(550, 550, 'Bacus Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(551, 551, 'Bacus Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(552, 552, 'Sumalpong Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(553, 553, 'Mangubat Family', 20000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(554, 554, 'Lonoy Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(555, 555, 'Olandesca Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(556, 556, 'Razo Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(557, 557, 'Mandrial Family', 20000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(558, 558, 'Conas Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(559, 559, 'Rosales Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(560, 560, 'Manieal Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(561, 561, 'Paragozo Family', 1300, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(562, 562, 'Omolon Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(563, 563, 'DeloSantos Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(564, 564, 'Jimenez Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(565, 565, 'Budlong Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(566, 566, 'Anino Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(567, 567, 'Balogo Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(568, 568, 'Ronitarez Family', 9000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(569, 569, 'Sardella Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(570, 570, 'Suan Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(571, 571, 'Solano Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(572, 572, 'Castro Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(573, 573, 'Sardella Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(574, 574, 'Caburnay Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(575, 575, 'Zafra Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(576, 576, 'Yongco Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(577, 577, 'Yongco Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(578, 578, 'Zafra Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(579, 579, 'Zafra Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(580, 580, 'Maglinao Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(581, 581, 'Yongco Family', 2500, 'Yes', 'Farming', 'No', NULL, NULL),
(582, 582, 'Yongco Family', 4500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(583, 583, 'Tabuclin Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(584, 584, 'Taboknoy Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(585, 585, 'Gornez Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(586, 586, 'Maglinao Family', 18000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(587, 587, 'Actub Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(588, 588, 'Tugonon Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(589, 589, 'Amarga Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(590, 590, 'Amarga Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(591, 591, 'Lumosad Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(592, 592, 'Amarga Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(593, 593, 'Valdez Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(594, 594, 'Pacana Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(595, 595, 'Petanas Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(596, 596, 'Raso Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(597, 597, 'Ramiro Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(598, 598, 'Ayawan Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(599, 599, 'Paculba Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(600, 600, 'Amarga Family', 2500, 'Yes', 'Farming', 'No', NULL, NULL),
(601, 601, 'Generalao Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(602, 602, 'Obeso Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(603, 603, 'Generalao Family', 3400, 'Yes', 'Farming', 'Yes', NULL, NULL),
(604, 604, 'Obanan Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(605, 605, 'Gerboto Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(606, 606, 'Samson Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(607, 607, 'Lorenzo Family', 9000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(608, 608, 'Punay Family', 12000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(609, 609, 'Butac Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(610, 610, 'Sevilla Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(611, 611, 'Callis Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(612, 612, 'Tabuclin Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(613, 613, 'Maglasang Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(614, 614, 'Maglasang Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(615, 615, 'Maglasang Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(616, 616, 'Tabuclin Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(617, 617, 'Cambaya Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(618, 618, 'Tikling Family', 4500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(619, 619, 'Cambaya Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(620, 620, 'Cambaya Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(621, 621, 'Noguera Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(622, 622, 'Salibo Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(623, 623, 'Salibo Family', 2000, 'Yes', 'Farming', 'No', NULL, NULL),
(624, 624, 'Fernandez Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(625, 625, 'Romeo Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(626, 626, 'Zaide Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(627, 627, 'Fernandez Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(628, 628, 'Paradela Family', 12000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(629, 629, 'Yongco Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(630, 630, 'Sanoria Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(631, 631, 'Loresco Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(632, 632, 'Bedro Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(633, 633, 'Aron Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(634, 634, 'Oleriano Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(635, 635, 'Yongco Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(636, 636, 'Hernani Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(637, 637, 'Gabines Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(638, 638, 'Mariquit Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(639, 639, 'Tairos Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(640, 640, 'Ugok Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(641, 641, 'Arma Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(642, 642, 'Sadirnas Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(643, 643, 'Mayor Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(644, 644, 'Mayor Family', 7000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(645, 645, 'Aniasco Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(646, 646, 'Rico Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(647, 647, 'Aclon Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(648, 648, 'Anaya Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(649, 649, 'Bracero Family', 18000, 'Yes', 'Livestock', 'No', NULL, NULL),
(650, 650, 'Dabodabo Family', 7000, 'Yes', 'Farming', 'No', NULL, NULL),
(651, 651, 'Mag-aso Family', 12000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(652, 652, 'Baterna Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(653, 653, 'Layog Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(654, 654, 'Bangis Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(655, 655, 'Zoles Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(656, 656, 'Carisagan Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(657, 657, 'Pandoma Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(658, 658, 'Lapuz Family', 18000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(659, 659, 'Tan Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(660, 660, 'Lluisma Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(661, 661, 'Real Family', 2000, 'Yes', 'Farming', 'No', NULL, NULL),
(662, 662, 'Daligdig Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(663, 663, 'Uno Family', 3500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(664, 664, 'Tabil Family', 4800, 'Yes', 'Livestock', 'No', NULL, NULL),
(665, 665, 'Iglupas Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(666, 666, 'Embang Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL);
INSERT INTO `families` (`id`, `building_id`, `family_identifier`, `monthly_income`, `if_other_livelihood`, `livelihood`, `if_4ps`, `created_at`, `updated_at`) VALUES
(667, 667, 'Abarcar Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(668, 668, 'Real Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(669, 669, 'Actub Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(670, 670, 'Abitago Family', 4500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(671, 671, 'Palangan Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(672, 672, 'Rico Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(673, 673, 'Madronial Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(674, 674, 'Villamor Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(675, 675, 'Tingal Family', 80000, 'Yes', 'Livestock', 'No', NULL, NULL),
(676, 676, 'Solatorio Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(677, 677, 'Pacaña Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(678, 678, 'Borias Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(679, 679, 'Bado Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(680, 680, 'Acebes Family', 1500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(681, 681, 'Umolon Family', 3500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(682, 682, 'Labalis Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(683, 683, 'Antica Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(684, 684, 'Balbano Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(685, 685, 'Viloria Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(686, 686, 'Asok Family', 20000, 'Yes', 'Livestock', 'No', NULL, NULL),
(687, 687, 'Rico Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(688, 688, 'Antonia Family', 20000, 'Yes', 'Farming', 'No', NULL, NULL),
(689, 689, 'Apostol Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(690, 690, 'Rico Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(691, 691, 'Gasal Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(692, 692, 'Manreal Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(693, 693, 'Manreal Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(694, 694, 'Delig Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(695, 695, 'Manreal Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(696, 696, 'Manreal Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(697, 697, 'Manreal Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(698, 698, 'Pitogo Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(699, 699, 'Manreal Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(700, 700, 'Gerona Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(701, 701, 'Manreal Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(702, 702, 'Obeso Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(703, 703, 'Caomiran Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(704, 704, 'Cabaluna Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(705, 705, 'Castillon Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(706, 706, 'Actub Family', 15000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(707, 707, 'Tadina Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(708, 708, 'Malonhaw Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(709, 709, 'Uyon Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(710, 710, 'Yang-yang Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(711, 711, 'Actub Family', 4500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(712, 712, 'Malon Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(713, 713, 'Villar Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(714, 714, 'Ilumba Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(715, 715, 'Dano Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(716, 716, 'Dano Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(717, 717, 'Dano Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(718, 718, 'Jaylo Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(719, 719, 'Sumanbo Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(720, 720, 'Nanaman Family', 3500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(721, 721, 'Fuentes Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(722, 722, 'Jaylo Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(723, 723, 'Muaro Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(724, 724, 'Tumapon Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(725, 725, 'Managing Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(726, 726, 'Tamayo Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(727, 727, 'Boyunas Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(728, 728, 'Boyunas Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(729, 729, 'Taka Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(730, 730, 'Boyunas Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(731, 731, 'Adones Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(732, 732, 'Cababat Family', 1000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(733, 733, 'Arnejo Family', 4500, 'Yes', 'Livestock', 'No', NULL, NULL),
(734, 734, 'Monding Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(735, 735, 'Visira Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(736, 736, 'Mentrillo Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(737, 737, 'Visira Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(738, 738, 'Flores Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(739, 739, 'Ortiga Family', 1500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(740, 740, 'Ortiga Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(741, 741, 'Polesicas Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(742, 742, 'Orcerada Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(743, 743, 'Dela_Cruz Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(744, 744, 'Ronquillo Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(745, 745, 'Malzobang Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(746, 746, 'Jumalon Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(747, 747, 'Perez Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(748, 748, 'Naraha Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(749, 749, 'Salva Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(750, 750, 'Hinaut Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(751, 751, 'Tac-an Family', 7000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(752, 752, 'Nasilya Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(753, 753, 'Fernandez Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(754, 754, 'Ganso Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(755, 755, 'Lahoylahoy Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(756, 756, 'Dampog Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(757, 757, 'Lubantud Family', 3500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(758, 758, 'Roldena Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(759, 759, 'Inamor Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(760, 760, 'Claudel Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(761, 761, 'Kimlog Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(762, 762, 'Echavez Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(763, 763, 'Bintelacion Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(764, 764, 'Omentin Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(765, 765, 'Alubido Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(766, 766, 'Calubag Family', 3500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(767, 767, 'Loreña Family', 15000, 'Yes', 'Farming', 'No', NULL, NULL),
(768, 768, 'Aying Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(769, 769, 'Entira Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(770, 770, 'Vergara Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(771, 771, 'Vergara Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(772, 772, 'Cabasag Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(773, 773, 'Hondina Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(774, 774, 'Asocina Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(775, 775, 'Caralde Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(776, 776, 'Eslit Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(777, 777, 'Cañas Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(778, 778, 'Sintos Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(779, 779, 'Untolan Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(780, 780, 'Mariquit Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(781, 781, 'Banaag Family', 12000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(782, 782, 'Tubin Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(783, 783, 'Candonis Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(784, 784, 'Torportis Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(785, 785, 'Cantalay Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(786, 786, 'Migrenio Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(787, 787, 'Omungos Family', 2500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(788, 788, 'Jimenez Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(789, 789, 'Vergara Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(790, 790, 'Vergara Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(791, 791, 'Magsayo Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(792, 792, 'Cabasag Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(793, 793, 'Jaraba Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(794, 794, 'Dalegan Family', 7000, 'Yes', 'Farming', 'No', NULL, NULL),
(795, 795, 'Villaver Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(796, 796, 'Bakot Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(797, 797, 'Lozano Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(798, 798, 'Pantillano Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(799, 799, 'Lozano Family', 12000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(800, 800, 'Dalagan Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(801, 801, 'Lozano Family', 15000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(802, 802, 'Ortega Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(803, 803, 'Ortega Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(804, 804, 'Salazar Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(805, 805, 'Ortega Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(806, 806, 'Paradero Family', 3400, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(807, 807, 'Antonio Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(808, 808, 'Chinchuntic Family', 3400, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(809, 809, 'Balaba Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(810, 810, 'Daog Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(811, 811, 'Ortega Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(812, 812, 'Alicer Family', 3500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(813, 813, 'Katada Family', 1500, 'Yes', 'Farming', 'No', NULL, NULL),
(814, 814, 'Bunag Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(815, 815, 'Bunag Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(816, 816, 'Bunag Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(817, 817, 'Mariquit Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(818, 818, 'Apas Family', 2000, 'Yes', 'Farming', 'No', NULL, NULL),
(819, 819, 'Apas Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(820, 820, 'Emit Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(821, 821, 'Suan Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(822, 822, 'Mariquit Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(823, 823, 'Suan Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(824, 824, 'Suan Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(825, 825, 'Gabonada Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(826, 826, 'Yapag Family', 23000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(827, 827, 'Pomicpic Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(828, 828, 'Bayron Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(829, 829, 'Bayron Family', 15000, 'Yes', 'Livestock', 'No', NULL, NULL),
(830, 830, 'Jariol Family', 7000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(831, 831, 'Bongolto Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(832, 832, 'Nahara Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(833, 833, 'Abuzo Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(834, 834, 'Zacarias Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(835, 835, 'Maglasang Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(836, 836, 'Dionson Family', 4500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(837, 837, 'Abulanda Family', 2300, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(838, 838, 'Cadiliña Family', 3500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(839, 839, 'Uy Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(840, 840, 'Sumalpong Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(841, 841, 'Maghilum Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(842, 842, 'Fuentes Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(843, 843, 'Aleviano Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(844, 844, 'Mansano Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(845, 845, 'Colasilo Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(846, 846, 'Cobrado Family', 15000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(847, 847, 'Arcasa Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(848, 848, 'Eltanal Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(849, 849, 'Cagatan Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(850, 850, 'Gumahad Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(851, 851, 'Tapere Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(852, 852, 'Bation Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(853, 853, 'Onotan Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(854, 854, 'Onotan Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(855, 855, 'Onotan Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(856, 856, 'Arcasa Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(857, 857, 'Onotan Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(858, 858, 'Otaza Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(859, 859, 'Balcot Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(860, 860, 'Ruedas Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(861, 861, 'Ruedas Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(862, 862, 'Bayog Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(863, 863, 'Galimbas Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(864, 864, 'Trasportes Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(865, 865, 'Torres Family', 4500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(866, 866, 'Arcasa Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(867, 867, 'Arcasa Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(868, 868, 'Cuadro Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(869, 869, 'Rotor Family', 2500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(870, 870, 'Manligues Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(871, 871, 'Cantutay Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(872, 872, 'Cimen Family', 10000, 'Yes', 'Livestock', 'No', NULL, NULL),
(873, 873, 'Monera Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(874, 874, 'Dologmando Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(875, 875, 'Paghasian Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(876, 876, 'Almero Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(877, 877, 'Villa Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(878, 878, 'Paghasian Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(879, 879, 'Orida Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(880, 880, 'Mariquit Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(881, 881, 'Jaralba Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(882, 882, 'Lagudas Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(883, 883, 'Malicay Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(884, 884, 'De_Vera Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(885, 885, 'Tubin Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(886, 886, 'Gallardo Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(887, 887, 'Tapere Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(888, 888, 'Tortugo Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(889, 889, 'Maata Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(890, 890, 'Baobao Family', 2500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(891, 891, 'Pomicpic Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(892, 892, 'Duhaylungsod Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(893, 893, 'Buenaventura Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(894, 894, 'Eltanal Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(895, 895, 'Tubin Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(896, 896, 'Balucan Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(897, 897, 'Tadena Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(898, 898, 'Densing Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(899, 899, 'Velasquez Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(900, 900, 'Mariquit Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(901, 901, 'Boloron Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(902, 902, 'Cuadro Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(903, 903, 'Aban Family', 4500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(904, 904, 'Macapil Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(905, 905, 'Duhaylungsod Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(906, 906, 'Alforque Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(907, 907, 'Elcanel Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(908, 908, 'Paypa Family', 4500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(909, 909, 'Fuentivilla Family', 8000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(910, 910, 'Sadernas Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(911, 911, 'Ferinal Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(912, 912, 'Tangaw Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(913, 913, 'Mariquit Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(914, 914, 'Boloro Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(915, 915, 'Macaliag Family', 7000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(916, 916, 'Balodo Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(917, 917, 'Sasil Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(918, 918, 'Tulusa Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(919, 919, 'Cuadro Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(920, 920, 'Catambacan Family', 1500, 'Yes', 'Livestock', 'No', NULL, NULL),
(921, 921, 'Salazar Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(922, 922, 'Virtudez Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(923, 923, 'Maglasang Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(924, 924, 'Sumalpong Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(925, 925, 'Mariquit Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(926, 926, 'Padayhag Family', 4500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(927, 927, 'Lupera Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(928, 928, 'Padayhag Family', 7000, 'Yes', 'Farming', 'No', NULL, NULL),
(929, 929, 'Catso Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(930, 930, 'Jagonal Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(931, 931, 'Cadorna Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(932, 932, 'Llyaso Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(933, 933, 'Buhion Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(934, 934, 'Regasaho Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(935, 935, 'Taborada Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(936, 936, 'Nadayag Family', 1500, 'Yes', 'Farming', 'No', NULL, NULL),
(937, 937, 'Nadayag Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(938, 938, 'Amarga Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(939, 939, 'Remitasis Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(940, 940, 'Layno Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(941, 941, 'Layno Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(942, 942, 'Echavez Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(943, 943, 'Bacuaja Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(944, 944, 'Maglasang Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(945, 945, 'Bacuaja Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(946, 946, 'Bacuaja Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(947, 947, 'Andalok Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(948, 948, 'Lacuna Family', 4500, 'Yes', 'Livestock', 'No', NULL, NULL),
(949, 949, 'Nacona Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(950, 950, 'Along Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(951, 951, 'Peyala Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(952, 952, 'Niez Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(953, 953, 'Macaubos Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(954, 954, 'Macaubos Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(955, 955, 'Oregie Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(956, 956, 'Orenis Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(957, 957, 'Layno Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(958, 958, 'Macapel Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(959, 959, 'Alegarme Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(960, 960, 'Macapil Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(961, 961, 'Villacastin Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(962, 962, 'Macapil Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(963, 963, 'Verano Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(964, 964, 'Villaver Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(965, 965, 'Macapil Family', 1500, 'Yes', 'Livestock', 'No', NULL, NULL),
(966, 966, 'Adolfo Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(967, 967, 'Villaver Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(968, 968, 'Mirino Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(969, 969, 'Villagonzano Family', 3500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(970, 970, 'Binaobawan Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(971, 971, 'Naguita Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(972, 972, 'Ermac Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(973, 973, 'Ermac Family', 8000, 'Yes', 'Livestock', 'No', NULL, NULL),
(974, 974, 'Lozano Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(975, 975, 'Morales Family', 7000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(976, 976, 'Ermac Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(977, 977, 'Gonzaga Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(978, 978, 'Capangpangan Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(979, 979, 'Mariquit Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(980, 980, 'Apas Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(981, 981, 'Tayone Family', 8000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(982, 982, 'Bado Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(983, 983, 'Bado Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(984, 984, 'Cabahug Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(985, 985, 'Batican Family', 4500, 'Yes', 'Livestock', 'No', NULL, NULL),
(986, 986, 'Ricarpel Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(987, 987, 'Mohamod Family', 2000, 'Yes', 'Farming', 'No', NULL, NULL),
(988, 988, 'Sanchez Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(989, 989, 'Grabato Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(990, 990, 'Grabato Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(991, 991, 'Grabato Family', 18000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(992, 992, 'Magtajas Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(993, 993, 'Paragoso Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(994, 994, 'Paragoso Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(995, 995, 'Opot Family', 4000, 'Yes', 'Farming', 'No', NULL, NULL),
(996, 996, 'Mangumpit Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(997, 997, 'Mugot Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(998, 998, 'Tinoy Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(999, 999, 'Tinoy Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1000, 1000, 'Quipao Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1001, 1001, 'Radigos Family', 3500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1002, 1002, 'Radigos Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1003, 1003, 'Sumando Family', 15000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1004, 1004, 'Sumando Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1005, 1005, 'Demaluna Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1006, 1006, 'Rupinta Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1007, 1007, 'Notarte Family', 5000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1008, 1008, 'Sabaysabay Family', 4500, 'Yes', 'Farming', 'No', NULL, NULL),
(1009, 1009, 'Mariquit Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(1010, 1010, 'Sabaysabay Family', 4000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1011, 1011, 'Omadle Family', 5000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1012, 1012, 'Pagarigan Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1013, 1013, 'Pagarigan Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1014, 1014, 'Pagarigan Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1015, 1015, 'Deloso Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1016, 1016, 'Agac-ac Family', 6000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1017, 1017, 'Agac-ac Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1018, 1018, 'Lucagbo Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1019, 1019, 'Delos_Santos Family', 4500, 'Yes', 'Farming', 'No', NULL, NULL),
(1020, 1020, 'Pagarigan Family', 4500, 'Yes', 'Farming', 'No', NULL, NULL),
(1021, 1021, 'Baruc Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(1022, 1022, 'Delos_Santos Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1023, 1023, 'Luveros Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1024, 1024, 'Ardeles Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(1025, 1025, 'Ardeles Family', 4500, 'Yes', 'Farming', 'No', NULL, NULL),
(1026, 1026, 'Unggaket Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(1027, 1027, 'Laurita Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1028, 1028, 'Vecaso  Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1029, 1029, 'Vasalo Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1030, 1030, 'Vasalo Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1031, 1031, 'Vasalo Family', 6000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1032, 1032, 'Galarpe Family', 1500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1033, 1033, 'Paica Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1034, 1034, 'Calica Family', 4000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1035, 1035, 'Malunhaw Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1036, 1036, 'Carbonel Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1037, 1037, 'Gonzales Family', 4000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1038, 1038, 'Vergara Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(1039, 1039, 'Vergara Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1040, 1040, 'Vergara Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1041, 1041, 'Corbita Family', 20000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1042, 1042, 'Vasquez Family', 6000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1043, 1043, 'Almaden Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(1044, 1044, 'Vasquez Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(1045, 1045, 'Cabatinan Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1046, 1046, 'Suan Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(1047, 1047, 'Esteva Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1048, 1048, 'Pagdilao Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1049, 1049, 'Ramos Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1050, 1050, 'Asaad Family', 35000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1051, 1051, 'Uglasan Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1052, 1052, 'Padillo Family', 70000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1053, 1053, 'Lagda Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1054, 1054, 'Sabando Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(1055, 1055, 'Tabano Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1056, 1056, 'Tabano Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(1057, 1057, 'Mira Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1058, 1058, 'Arbes Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1059, 1059, 'Cristobal Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1060, 1060, 'Layno Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1061, 1061, 'Rufino Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1062, 1062, 'Lupague Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1063, 1063, 'Ladega Family', 2000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1064, 1064, 'Rufino Family', 1500, 'Yes', 'Livestock', 'No', NULL, NULL),
(1065, 1065, 'Rufino Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1066, 1066, 'Daligdig Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1067, 1067, 'Rufino Family', 1800, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1068, 1068, 'Maglangit Family', 4000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1069, 1069, 'Tuyan Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1070, 1070, 'Monding Family', 7000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1071, 1071, 'Lee Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1072, 1072, 'Timba Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(1073, 1073, 'Pasco Family', 7000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1074, 1074, 'Tañia Family', 2500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1075, 1075, 'Tuyan Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1076, 1076, 'Owayas Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1077, 1077, 'Densing Family', 3500, 'Yes', 'Farming', 'No', NULL, NULL),
(1078, 1078, 'Narona Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1079, 1079, 'Nabises Family', 1500, 'Yes', 'Livestock', 'No', NULL, NULL),
(1080, 1080, 'Gamos Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1081, 1081, 'Dangcal Family', 8000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1082, 1082, 'Gonzales Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1083, 1083, 'Gamos Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1084, 1084, 'Gamos Family', 7000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1085, 1085, 'Tañan Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1086, 1086, 'Ragasajo Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1087, 1087, 'Capricho Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1088, 1088, 'Arado Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1089, 1089, 'Libre Family', 1000, 'Yes', 'Farming', 'No', NULL, NULL),
(1090, 1090, 'Abolanda Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1091, 1091, 'Patagoc Family', 2000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1092, 1092, 'Ballanca Family', 2000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1093, 1093, 'Amado Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(1094, 1094, 'Auditor Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1095, 1095, 'Radasa Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(1096, 1096, 'Buenavista Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1097, 1097, 'Mahinay Family', 15000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1098, 1098, 'Langamin Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1099, 1099, 'Tingas Family', 2000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1100, 1100, 'Alcantara Family', 2500, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1101, 1101, 'Abadines Family', 4500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1102, 1102, 'Regis Family', 1000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1103, 1103, 'Pasague Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1104, 1104, 'Carillo Family', 4000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1105, 1105, 'Belivestre Family', 8000, 'Yes', 'Farming', 'No', NULL, NULL),
(1106, 1106, 'Amorguez Family', 10000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1107, 1107, 'Diola Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(1108, 1108, 'Dolliento Family', 500, 'Yes', 'Livestock', 'No', NULL, NULL),
(1109, 1109, 'Daclan Family', 20000, 'Yes', 'Farming', 'No', NULL, NULL),
(1110, 1110, 'Daclan Family', 6000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1111, 1111, 'Castillon Family', 12000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1112, 1112, 'Mendez Family', 1000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1113, 1113, 'Mejogue Family', 36000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1114, 1114, 'Sumapig Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1115, 1115, 'Disierto Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1116, 1116, 'Mutia Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1117, 1117, 'Banggo Family', 5000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1118, 1118, 'Taan Family', 3000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1119, 1119, 'Pepania Family', 5000, 'Yes', 'Farming', 'No', NULL, NULL),
(1120, 1120, 'Peradillo Family', 20000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1121, 1121, 'Omandam Family', 7000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1122, 1122, 'Trinidad Family', 1500, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1123, 1123, 'Tenchavez Family', 2000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1124, 1124, 'Las_Piñas Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(1125, 1125, 'Novela Family', 7000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1126, 1126, 'Angkee Family', 10000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1127, 1127, 'Iglupas Family', 12000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1128, 1128, 'Mama Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1129, 1129, 'Sanitllan Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(1130, 1130, 'Ubatay Family', 25000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1131, 1131, 'Perijan Family', 5000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1132, 1132, 'Imperial Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1133, 1133, 'Fernan Family', 15000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1134, 1134, 'Wong Family', 10000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1135, 1135, 'Ungkit Family', 13000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1136, 1136, 'Olama Family', 25000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1137, 1137, 'Cagula Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1138, 1138, 'Magusara Family', 3000, 'Yes', 'Farming', 'No', NULL, NULL),
(1139, 1139, 'Camasura Family', 5000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1140, 1140, 'Budan Family', 20000, 'Yes', 'Farming', 'No', NULL, NULL),
(1141, 1141, 'Lahoylahoy Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1142, 1142, 'Gohel Family', 3000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1143, 1143, 'Carloman Family', 17000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1144, 1144, 'Doleguez Family', 6000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1145, 1145, 'Togunon Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1146, 1146, 'Maghinay Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1147, 1147, 'Lonoy Family', 13000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1148, 1148, 'Lanoy Family', 30000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1149, 1149, 'Sarin Family', 18000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1150, 1150, 'Alivio Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1151, 1151, 'Ramirez Family', 4500, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1152, 1152, 'Duyaguit Family', 20000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1153, 1153, 'Amba Family', 50000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1154, 1154, 'Sierra Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1155, 1155, 'Corona Family', 30000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1156, 1156, 'Fuentes Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1157, 1157, 'Calimpong Family', 18000, 'Yes', 'Farming', 'No', NULL, NULL),
(1158, 1158, 'Lauron Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1159, 1159, 'Lauron Family', 6000, 'Yes', 'Farming', 'No', NULL, NULL),
(1160, 1160, 'Lauron Family', 7000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1161, 1161, 'Cajes Family', 0, 'Yes', 'Livestock', 'No', NULL, NULL),
(1162, 1162, 'Sahera Family', 16000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1163, 1163, 'Tomaquin Family', 20000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1164, 1164, 'Velayo Family', 10000, 'Yes', 'Farming', 'No', NULL, NULL),
(1165, 1165, 'Galleno Family', 18000, 'Yes', 'Farming', 'No', NULL, NULL),
(1166, 1166, 'Hipayo Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1167, 1167, 'Bado Family', 8000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1168, 1168, 'Adaza Family', 11000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1169, 1169, 'Caparida Family', 20000, 'Yes', 'Small Business Store', 'Yes', NULL, NULL),
(1170, 1170, 'Bongcawil Family', 37000, 'Yes', 'Farming', 'No', NULL, NULL),
(1171, 1171, 'Delangcaten Family', 15000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1172, 1172, 'Daing Family', 40000, 'Yes', 'Farming', 'No', NULL, NULL),
(1173, 1173, 'Jimenez Family', 3000, 'Yes', 'Livestock', 'No', NULL, NULL),
(1174, 1174, 'Orbeta Family', 30000, 'Yes', 'Farming', 'No', NULL, NULL),
(1175, 1175, 'Reserva Family', 20000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1176, 1176, 'Maruhumsar Family', 61000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1177, 1177, 'Peñola Family', 3000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1178, 1178, 'Cabili Family', 30000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1179, 1179, 'Del_Rosario Family', 13000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1180, 1180, 'Asakil Family', 30000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1181, 1181, 'Mag_usara Family', 11000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1182, 1182, 'Tabuelog Family', 10000, 'Yes', 'Livestock', 'Yes', NULL, NULL),
(1183, 1183, 'Tabuco Family', 30000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1184, 1184, 'Benabaye Family', 10000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1185, 1185, 'Enojardo Family', 10000, 'Yes', 'Small Business Store', 'No', NULL, NULL),
(1186, 1186, 'Maliao Family', 1500, 'Yes', 'Farming', 'No', NULL, NULL),
(1187, 1187, 'Omas-as Family', 4500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1188, 1188, 'Malonhao Family', 3500, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1189, 1189, 'Bordaje Family', 14000, 'Yes', 'Farming', 'Yes', NULL, NULL),
(1190, 1190, 'Bonto Family', 3000, 'Yes', 'Farming', 'Yes', NULL, NULL);

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
(1, 1, 'Head', NULL, NULL),
(2, 2, 'Head', NULL, NULL),
(3, 3, 'Head', NULL, NULL),
(4, 4, 'Head', NULL, NULL),
(5, 5, 'Head', NULL, NULL),
(6, 6, 'Head', NULL, NULL),
(7, 7, 'Head', NULL, NULL),
(8, 8, 'Head', NULL, NULL),
(9, 9, 'Head', NULL, NULL),
(10, 10, 'Head', NULL, NULL),
(11, 11, 'Head', NULL, NULL),
(12, 12, 'Head', NULL, NULL),
(13, 13, 'Head', NULL, NULL),
(14, 14, 'Head', NULL, NULL),
(15, 15, 'Head', NULL, NULL),
(16, 16, 'Head', NULL, NULL),
(17, 17, 'Head', NULL, NULL),
(18, 18, 'Head', NULL, NULL),
(19, 19, 'Head', NULL, NULL),
(20, 20, 'Head', NULL, NULL),
(21, 21, 'Head', NULL, NULL),
(22, 22, 'Head', NULL, NULL),
(23, 23, 'Head', NULL, NULL),
(24, 24, 'Head', NULL, NULL),
(25, 25, 'Head', NULL, NULL),
(26, 26, 'Head', NULL, NULL),
(27, 27, 'Head', NULL, NULL),
(28, 28, 'Head', NULL, NULL),
(29, 29, 'Head', NULL, NULL),
(30, 30, 'Head', NULL, NULL),
(31, 31, 'Head', NULL, NULL),
(32, 32, 'Head', NULL, NULL),
(33, 33, 'Head', NULL, NULL),
(34, 34, 'Head', NULL, NULL),
(35, 35, 'Head', NULL, NULL),
(36, 36, 'Head', NULL, NULL),
(37, 37, 'Head', NULL, NULL),
(38, 38, 'Head', NULL, NULL),
(39, 39, 'Head', NULL, NULL),
(40, 40, 'Head', NULL, NULL),
(41, 41, 'Head', NULL, NULL),
(42, 42, 'Head', NULL, NULL),
(43, 43, 'Head', NULL, NULL),
(44, 44, 'Head', NULL, NULL),
(45, 45, 'Head', NULL, NULL),
(46, 46, 'Head', NULL, NULL),
(47, 47, 'Head', NULL, NULL),
(48, 48, 'Head', NULL, NULL),
(49, 49, 'Head', NULL, NULL),
(50, 50, 'Head', NULL, NULL),
(51, 51, 'Head', NULL, NULL),
(52, 52, 'Head', NULL, NULL),
(53, 53, 'Head', NULL, NULL),
(54, 54, 'Head', NULL, NULL),
(55, 55, 'Head', NULL, NULL),
(56, 56, 'Head', NULL, NULL),
(57, 57, 'Head', NULL, NULL),
(58, 58, 'Head', NULL, NULL),
(59, 59, 'Head', NULL, NULL),
(60, 60, 'Head', NULL, NULL),
(61, 61, 'Head', NULL, NULL),
(62, 62, 'Head', NULL, NULL),
(63, 63, 'Head', NULL, NULL),
(64, 64, 'Head', NULL, NULL),
(65, 65, 'Head', NULL, NULL),
(66, 66, 'Head', NULL, NULL),
(67, 67, 'Head', NULL, NULL),
(68, 68, 'Head', NULL, NULL),
(69, 69, 'Head', NULL, NULL),
(70, 70, 'Head', NULL, NULL),
(71, 71, 'Head', NULL, NULL),
(72, 72, 'Head', NULL, NULL),
(73, 73, 'Head', NULL, NULL),
(74, 74, 'Head', NULL, NULL),
(75, 75, 'Head', NULL, NULL),
(76, 76, 'Head', NULL, NULL),
(77, 77, 'Head', NULL, NULL),
(78, 78, 'Head', NULL, NULL),
(79, 79, 'Head', NULL, NULL),
(80, 80, 'Head', NULL, NULL),
(81, 81, 'Head', NULL, NULL),
(82, 82, 'Head', NULL, NULL),
(83, 83, 'Head', NULL, NULL),
(84, 84, 'Head', NULL, NULL),
(85, 85, 'Head', NULL, NULL),
(86, 86, 'Head', NULL, NULL),
(87, 87, 'Head', NULL, NULL),
(88, 88, 'Head', NULL, NULL),
(89, 89, 'Head', NULL, NULL),
(90, 90, 'Head', NULL, NULL),
(91, 91, 'Head', NULL, NULL),
(92, 92, 'Head', NULL, NULL),
(93, 93, 'Head', NULL, NULL),
(94, 94, 'Head', NULL, NULL),
(95, 95, 'Head', NULL, NULL),
(96, 96, 'Head', NULL, NULL),
(97, 97, 'Head', NULL, NULL),
(98, 98, 'Head', NULL, NULL),
(99, 99, 'Head', NULL, NULL),
(100, 100, 'Head', NULL, NULL),
(101, 101, 'Head', NULL, NULL),
(102, 102, 'Head', NULL, NULL),
(103, 103, 'Head', NULL, NULL),
(104, 104, 'Head', NULL, NULL),
(105, 105, 'Head', NULL, NULL),
(106, 106, 'Head', NULL, NULL),
(107, 107, 'Head', NULL, NULL),
(108, 108, 'Head', NULL, NULL),
(109, 109, 'Head', NULL, NULL),
(110, 110, 'Head', NULL, NULL),
(111, 111, 'Head', NULL, NULL),
(112, 112, 'Head', NULL, NULL),
(113, 113, 'Head', NULL, NULL),
(114, 114, 'Head', NULL, NULL),
(115, 115, 'Head', NULL, NULL),
(116, 116, 'Head', NULL, NULL),
(117, 117, 'Head', NULL, NULL),
(118, 118, 'Head', NULL, NULL),
(119, 119, 'Head', NULL, NULL),
(120, 120, 'Head', NULL, NULL),
(121, 121, 'Head', NULL, NULL),
(122, 122, 'Head', NULL, NULL),
(123, 123, 'Head', NULL, NULL),
(124, 124, 'Head', NULL, NULL),
(125, 125, 'Head', NULL, NULL),
(126, 126, 'Head', NULL, NULL),
(127, 127, 'Head', NULL, NULL),
(128, 128, 'Head', NULL, NULL),
(129, 129, 'Head', NULL, NULL),
(130, 130, 'Head', NULL, NULL),
(131, 131, 'Head', NULL, NULL),
(132, 132, 'Head', NULL, NULL),
(133, 133, 'Head', NULL, NULL),
(134, 134, 'Head', NULL, NULL),
(135, 135, 'Head', NULL, NULL),
(136, 136, 'Head', NULL, NULL),
(137, 137, 'Head', NULL, NULL),
(138, 138, 'Head', NULL, NULL),
(139, 139, 'Head', NULL, NULL),
(140, 140, 'Head', NULL, NULL),
(141, 141, 'Head', NULL, NULL),
(142, 142, 'Head', NULL, NULL),
(143, 143, 'Head', NULL, NULL),
(144, 144, 'Head', NULL, NULL),
(145, 145, 'Head', NULL, NULL),
(146, 146, 'Head', NULL, NULL),
(147, 147, 'Head', NULL, NULL),
(148, 148, 'Head', NULL, NULL),
(149, 149, 'Head', NULL, NULL),
(150, 150, 'Head', NULL, NULL),
(151, 151, 'Head', NULL, NULL),
(152, 152, 'Head', NULL, NULL),
(153, 153, 'Head', NULL, NULL),
(154, 154, 'Head', NULL, NULL),
(155, 155, 'Head', NULL, NULL),
(156, 156, 'Head', NULL, NULL),
(157, 157, 'Head', NULL, NULL),
(158, 158, 'Head', NULL, NULL),
(159, 159, 'Head', NULL, NULL),
(160, 160, 'Head', NULL, NULL),
(161, 161, 'Head', NULL, NULL),
(162, 162, 'Head', NULL, NULL),
(163, 163, 'Head', NULL, NULL),
(164, 164, 'Head', NULL, NULL),
(165, 165, 'Head', NULL, NULL),
(166, 166, 'Head', NULL, NULL),
(167, 167, 'Head', NULL, NULL),
(168, 168, 'Head', NULL, NULL),
(169, 169, 'Head', NULL, NULL),
(170, 170, 'Head', NULL, NULL),
(171, 171, 'Head', NULL, NULL),
(172, 172, 'Head', NULL, NULL),
(173, 173, 'Head', NULL, NULL),
(174, 174, 'Head', NULL, NULL),
(175, 175, 'Head', NULL, NULL),
(176, 176, 'Head', NULL, NULL),
(177, 177, 'Head', NULL, NULL),
(178, 178, 'Head', NULL, NULL),
(179, 179, 'Head', NULL, NULL),
(180, 180, 'Head', NULL, NULL),
(181, 181, 'Head', NULL, NULL),
(182, 182, 'Head', NULL, NULL),
(183, 183, 'Head', NULL, NULL),
(184, 184, 'Head', NULL, NULL),
(185, 185, 'Head', NULL, NULL),
(186, 186, 'Head', NULL, NULL),
(187, 187, 'Head', NULL, NULL),
(188, 188, 'Head', NULL, NULL),
(189, 189, 'Head', NULL, NULL),
(190, 190, 'Head', NULL, NULL),
(191, 191, 'Head', NULL, NULL),
(192, 192, 'Head', NULL, NULL),
(193, 193, 'Head', NULL, NULL),
(194, 194, 'Head', NULL, NULL),
(195, 195, 'Head', NULL, NULL),
(196, 196, 'Head', NULL, NULL),
(197, 197, 'Head', NULL, NULL),
(198, 198, 'Head', NULL, NULL),
(199, 199, 'Head', NULL, NULL),
(200, 200, 'Head', NULL, NULL),
(201, 201, 'Head', NULL, NULL),
(202, 202, 'Head', NULL, NULL),
(203, 203, 'Head', NULL, NULL),
(204, 204, 'Head', NULL, NULL),
(205, 205, 'Head', NULL, NULL),
(206, 206, 'Head', NULL, NULL),
(207, 207, 'Head', NULL, NULL),
(208, 208, 'Head', NULL, NULL),
(209, 209, 'Head', NULL, NULL),
(210, 210, 'Head', NULL, NULL),
(211, 211, 'Head', NULL, NULL),
(212, 212, 'Head', NULL, NULL),
(213, 213, 'Head', NULL, NULL),
(214, 214, 'Head', NULL, NULL),
(215, 215, 'Head', NULL, NULL),
(216, 216, 'Head', NULL, NULL),
(217, 217, 'Head', NULL, NULL),
(218, 218, 'Head', NULL, NULL),
(219, 219, 'Head', NULL, NULL),
(220, 220, 'Head', NULL, NULL),
(221, 221, 'Head', NULL, NULL),
(222, 222, 'Head', NULL, NULL),
(223, 223, 'Head', NULL, NULL),
(224, 224, 'Head', NULL, NULL),
(225, 225, 'Head', NULL, NULL),
(226, 226, 'Head', NULL, NULL),
(227, 227, 'Head', NULL, NULL),
(228, 228, 'Head', NULL, NULL),
(229, 229, 'Head', NULL, NULL),
(230, 230, 'Head', NULL, NULL),
(231, 231, 'Head', NULL, NULL),
(232, 232, 'Head', NULL, NULL),
(233, 233, 'Head', NULL, NULL),
(234, 234, 'Head', NULL, NULL),
(235, 235, 'Head', NULL, NULL),
(236, 236, 'Head', NULL, NULL),
(237, 237, 'Head', NULL, NULL),
(238, 238, 'Head', NULL, NULL),
(239, 239, 'Head', NULL, NULL),
(240, 240, 'Head', NULL, NULL),
(241, 241, 'Head', NULL, NULL),
(242, 242, 'Head', NULL, NULL),
(243, 243, 'Head', NULL, NULL),
(244, 244, 'Head', NULL, NULL),
(245, 245, 'Head', NULL, NULL),
(246, 246, 'Head', NULL, NULL),
(247, 247, 'Head', NULL, NULL),
(248, 248, 'Head', NULL, NULL),
(249, 249, 'Head', NULL, NULL),
(250, 250, 'Head', NULL, NULL),
(251, 251, 'Head', NULL, NULL),
(252, 252, 'Head', NULL, NULL),
(253, 253, 'Head', NULL, NULL),
(254, 254, 'Head', NULL, NULL),
(255, 255, 'Head', NULL, NULL),
(256, 256, 'Head', NULL, NULL),
(257, 257, 'Head', NULL, NULL),
(258, 258, 'Head', NULL, NULL),
(259, 259, 'Head', NULL, NULL),
(260, 260, 'Head', NULL, NULL),
(261, 261, 'Head', NULL, NULL),
(262, 262, 'Head', NULL, NULL),
(263, 263, 'Head', NULL, NULL),
(264, 264, 'Head', NULL, NULL),
(265, 265, 'Head', NULL, NULL),
(266, 266, 'Head', NULL, NULL),
(267, 267, 'Head', NULL, NULL),
(268, 268, 'Head', NULL, NULL),
(269, 269, 'Head', NULL, NULL),
(270, 270, 'Head', NULL, NULL),
(271, 271, 'Head', NULL, NULL),
(272, 272, 'Head', NULL, NULL),
(273, 273, 'Head', NULL, NULL),
(274, 274, 'Head', NULL, NULL),
(275, 275, 'Head', NULL, NULL),
(276, 276, 'Head', NULL, NULL),
(277, 277, 'Head', NULL, NULL),
(278, 278, 'Head', NULL, NULL),
(279, 279, 'Head', NULL, NULL),
(280, 280, 'Head', NULL, NULL),
(281, 281, 'Head', NULL, NULL),
(282, 282, 'Head', NULL, NULL),
(283, 283, 'Head', NULL, NULL),
(284, 284, 'Head', NULL, NULL),
(285, 285, 'Head', NULL, NULL),
(286, 286, 'Head', NULL, NULL),
(287, 287, 'Head', NULL, NULL),
(288, 288, 'Head', NULL, NULL),
(289, 289, 'Head', NULL, NULL),
(290, 290, 'Head', NULL, NULL),
(291, 291, 'Head', NULL, NULL),
(292, 292, 'Head', NULL, NULL),
(293, 293, 'Head', NULL, NULL),
(294, 294, 'Head', NULL, NULL),
(295, 295, 'Head', NULL, NULL),
(296, 296, 'Head', NULL, NULL),
(297, 297, 'Head', NULL, NULL),
(298, 298, 'Head', NULL, NULL),
(299, 299, 'Head', NULL, NULL),
(300, 300, 'Head', NULL, NULL),
(301, 301, 'Head', NULL, NULL),
(302, 302, 'Head', NULL, NULL),
(303, 303, 'Head', NULL, NULL),
(304, 304, 'Head', NULL, NULL),
(305, 305, 'Head', NULL, NULL),
(306, 306, 'Head', NULL, NULL),
(307, 307, 'Head', NULL, NULL),
(308, 308, 'Head', NULL, NULL),
(309, 309, 'Head', NULL, NULL),
(310, 310, 'Head', NULL, NULL),
(311, 311, 'Head', NULL, NULL),
(312, 312, 'Head', NULL, NULL),
(313, 313, 'Head', NULL, NULL),
(314, 314, 'Head', NULL, NULL),
(315, 315, 'Head', NULL, NULL),
(316, 316, 'Head', NULL, NULL),
(317, 317, 'Head', NULL, NULL),
(318, 318, 'Head', NULL, NULL),
(319, 319, 'Head', NULL, NULL),
(320, 320, 'Head', NULL, NULL),
(321, 321, 'Head', NULL, NULL),
(322, 322, 'Head', NULL, NULL),
(323, 323, 'Head', NULL, NULL),
(324, 324, 'Head', NULL, NULL),
(325, 325, 'Head', NULL, NULL),
(326, 326, 'Head', NULL, NULL),
(327, 327, 'Head', NULL, NULL),
(328, 328, 'Head', NULL, NULL),
(329, 329, 'Head', NULL, NULL),
(330, 330, 'Head', NULL, NULL),
(331, 331, 'Head', NULL, NULL),
(332, 332, 'Head', NULL, NULL),
(333, 333, 'Head', NULL, NULL),
(334, 334, 'Head', NULL, NULL),
(335, 335, 'Head', NULL, NULL),
(336, 336, 'Head', NULL, NULL),
(337, 337, 'Head', NULL, NULL),
(338, 338, 'Head', NULL, NULL),
(339, 339, 'Head', NULL, NULL),
(340, 340, 'Head', NULL, NULL),
(341, 341, 'Head', NULL, NULL),
(342, 342, 'Head', NULL, NULL),
(343, 343, 'Head', NULL, NULL),
(344, 344, 'Head', NULL, NULL),
(345, 345, 'Head', NULL, NULL),
(346, 346, 'Head', NULL, NULL),
(347, 347, 'Head', NULL, NULL),
(348, 348, 'Head', NULL, NULL),
(349, 349, 'Head', NULL, NULL),
(350, 350, 'Head', NULL, NULL),
(351, 351, 'Head', NULL, NULL),
(352, 352, 'Head', NULL, NULL),
(353, 353, 'Head', NULL, NULL),
(354, 354, 'Head', NULL, NULL),
(355, 355, 'Head', NULL, NULL),
(356, 356, 'Head', NULL, NULL),
(357, 357, 'Head', NULL, NULL),
(358, 358, 'Head', NULL, NULL),
(359, 359, 'Head', NULL, NULL),
(360, 360, 'Head', NULL, NULL),
(361, 361, 'Head', NULL, NULL),
(362, 362, 'Head', NULL, NULL),
(363, 363, 'Head', NULL, NULL),
(364, 364, 'Head', NULL, NULL),
(365, 365, 'Head', NULL, NULL),
(366, 366, 'Head', NULL, NULL),
(367, 367, 'Head', NULL, NULL),
(368, 368, 'Head', NULL, NULL),
(369, 369, 'Head', NULL, NULL),
(370, 370, 'Head', NULL, NULL),
(371, 371, 'Head', NULL, NULL),
(372, 372, 'Head', NULL, NULL),
(373, 373, 'Head', NULL, NULL),
(374, 374, 'Head', NULL, NULL),
(375, 375, 'Head', NULL, NULL),
(376, 376, 'Head', NULL, NULL),
(377, 377, 'Head', NULL, NULL),
(378, 378, 'Head', NULL, NULL),
(379, 379, 'Head', NULL, NULL),
(380, 380, 'Head', NULL, NULL),
(381, 381, 'Head', NULL, NULL),
(382, 382, 'Head', NULL, NULL),
(383, 383, 'Head', NULL, NULL),
(384, 384, 'Head', NULL, NULL),
(385, 385, 'Head', NULL, NULL),
(386, 386, 'Head', NULL, NULL),
(387, 387, 'Head', NULL, NULL),
(388, 388, 'Head', NULL, NULL),
(389, 389, 'Head', NULL, NULL),
(390, 390, 'Head', NULL, NULL),
(391, 391, 'Head', NULL, NULL),
(392, 392, 'Head', NULL, NULL),
(393, 393, 'Head', NULL, NULL),
(394, 394, 'Head', NULL, NULL),
(395, 395, 'Head', NULL, NULL),
(396, 396, 'Head', NULL, NULL),
(397, 397, 'Head', NULL, NULL),
(398, 398, 'Head', NULL, NULL),
(399, 399, 'Head', NULL, NULL),
(400, 400, 'Head', NULL, NULL),
(401, 401, 'Head', NULL, NULL),
(402, 402, 'Head', NULL, NULL),
(403, 403, 'Head', NULL, NULL),
(404, 404, 'Head', NULL, NULL),
(405, 405, 'Head', NULL, NULL),
(406, 406, 'Head', NULL, NULL),
(407, 407, 'Head', NULL, NULL),
(408, 408, 'Head', NULL, NULL),
(409, 409, 'Head', NULL, NULL),
(410, 410, 'Head', NULL, NULL),
(411, 411, 'Head', NULL, NULL),
(412, 412, 'Head', NULL, NULL),
(413, 413, 'Head', NULL, NULL),
(414, 414, 'Head', NULL, NULL),
(415, 415, 'Head', NULL, NULL),
(416, 416, 'Head', NULL, NULL),
(417, 417, 'Head', NULL, NULL),
(418, 418, 'Head', NULL, NULL),
(419, 419, 'Head', NULL, NULL),
(420, 420, 'Head', NULL, NULL),
(421, 421, 'Head', NULL, NULL),
(422, 422, 'Head', NULL, NULL),
(423, 423, 'Head', NULL, NULL),
(424, 424, 'Head', NULL, NULL),
(425, 425, 'Head', NULL, NULL),
(426, 426, 'Head', NULL, NULL),
(427, 427, 'Head', NULL, NULL),
(428, 428, 'Head', NULL, NULL),
(429, 429, 'Head', NULL, NULL),
(430, 430, 'Head', NULL, NULL),
(431, 431, 'Head', NULL, NULL),
(432, 432, 'Head', NULL, NULL),
(433, 433, 'Head', NULL, NULL),
(434, 434, 'Head', NULL, NULL),
(435, 435, 'Head', NULL, NULL),
(436, 436, 'Head', NULL, NULL),
(437, 437, 'Head', NULL, NULL),
(438, 438, 'Head', NULL, NULL),
(439, 439, 'Head', NULL, NULL),
(440, 440, 'Head', NULL, NULL),
(441, 441, 'Head', NULL, NULL),
(442, 442, 'Head', NULL, NULL),
(443, 443, 'Head', NULL, NULL),
(444, 444, 'Head', NULL, NULL),
(445, 445, 'Head', NULL, NULL),
(446, 446, 'Head', NULL, NULL),
(447, 447, 'Head', NULL, NULL),
(448, 448, 'Head', NULL, NULL),
(449, 449, 'Head', NULL, NULL),
(450, 450, 'Head', NULL, NULL),
(451, 451, 'Head', NULL, NULL),
(452, 452, 'Head', NULL, NULL),
(453, 453, 'Head', NULL, NULL),
(454, 454, 'Head', NULL, NULL),
(455, 455, 'Head', NULL, NULL),
(456, 456, 'Head', NULL, NULL),
(457, 457, 'Head', NULL, NULL),
(458, 458, 'Head', NULL, NULL),
(459, 459, 'Head', NULL, NULL),
(460, 460, 'Head', NULL, NULL),
(461, 461, 'Head', NULL, NULL),
(462, 462, 'Head', NULL, NULL),
(463, 463, 'Head', NULL, NULL),
(464, 464, 'Head', NULL, NULL),
(465, 465, 'Head', NULL, NULL),
(466, 466, 'Head', NULL, NULL),
(467, 467, 'Head', NULL, NULL),
(468, 468, 'Head', NULL, NULL),
(469, 469, 'Head', NULL, NULL),
(470, 470, 'Head', NULL, NULL),
(471, 471, 'Head', NULL, NULL),
(472, 472, 'Head', NULL, NULL),
(473, 473, 'Head', NULL, NULL),
(474, 474, 'Head', NULL, NULL),
(475, 475, 'Head', NULL, NULL),
(476, 476, 'Head', NULL, NULL),
(477, 477, 'Head', NULL, NULL),
(478, 478, 'Head', NULL, NULL),
(479, 479, 'Head', NULL, NULL),
(480, 480, 'Head', NULL, NULL),
(481, 481, 'Head', NULL, NULL),
(482, 482, 'Head', NULL, NULL),
(483, 483, 'Head', NULL, NULL),
(484, 484, 'Head', NULL, NULL),
(485, 485, 'Head', NULL, NULL),
(486, 486, 'Head', NULL, NULL),
(487, 487, 'Head', NULL, NULL),
(488, 488, 'Head', NULL, NULL),
(489, 489, 'Head', NULL, NULL),
(490, 490, 'Head', NULL, NULL),
(491, 491, 'Head', NULL, NULL),
(492, 492, 'Head', NULL, NULL),
(493, 493, 'Head', NULL, NULL),
(494, 494, 'Head', NULL, NULL),
(495, 495, 'Head', NULL, NULL),
(496, 496, 'Head', NULL, NULL),
(497, 497, 'Head', NULL, NULL),
(498, 498, 'Head', NULL, NULL),
(499, 499, 'Head', NULL, NULL),
(500, 500, 'Head', NULL, NULL),
(501, 501, 'Head', NULL, NULL),
(502, 502, 'Head', NULL, NULL),
(503, 503, 'Head', NULL, NULL),
(504, 504, 'Head', NULL, NULL),
(505, 505, 'Head', NULL, NULL),
(506, 506, 'Head', NULL, NULL),
(507, 507, 'Head', NULL, NULL),
(508, 508, 'Head', NULL, NULL),
(509, 509, 'Head', NULL, NULL),
(510, 510, 'Head', NULL, NULL),
(511, 511, 'Head', NULL, NULL),
(512, 512, 'Head', NULL, NULL),
(513, 513, 'Head', NULL, NULL),
(514, 514, 'Head', NULL, NULL),
(515, 515, 'Head', NULL, NULL),
(516, 516, 'Head', NULL, NULL),
(517, 517, 'Head', NULL, NULL),
(518, 518, 'Head', NULL, NULL),
(519, 519, 'Head', NULL, NULL),
(520, 520, 'Head', NULL, NULL),
(521, 521, 'Head', NULL, NULL),
(522, 522, 'Head', NULL, NULL),
(523, 523, 'Head', NULL, NULL),
(524, 524, 'Head', NULL, NULL),
(525, 525, 'Head', NULL, NULL),
(526, 526, 'Head', NULL, NULL),
(527, 527, 'Head', NULL, NULL),
(528, 528, 'Head', NULL, NULL),
(529, 529, 'Head', NULL, NULL),
(530, 530, 'Head', NULL, NULL),
(531, 531, 'Head', NULL, NULL),
(532, 532, 'Head', NULL, NULL),
(533, 533, 'Head', NULL, NULL),
(534, 534, 'Head', NULL, NULL),
(535, 535, 'Head', NULL, NULL),
(536, 536, 'Head', NULL, NULL),
(537, 537, 'Head', NULL, NULL),
(538, 538, 'Head', NULL, NULL),
(539, 539, 'Head', NULL, NULL),
(540, 540, 'Head', NULL, NULL),
(541, 541, 'Head', NULL, NULL),
(542, 542, 'Head', NULL, NULL),
(543, 543, 'Head', NULL, NULL),
(544, 544, 'Head', NULL, NULL),
(545, 545, 'Head', NULL, NULL),
(546, 546, 'Head', NULL, NULL),
(547, 547, 'Head', NULL, NULL),
(548, 548, 'Head', NULL, NULL),
(549, 549, 'Head', NULL, NULL),
(550, 550, 'Head', NULL, NULL),
(551, 551, 'Head', NULL, NULL),
(552, 552, 'Head', NULL, NULL),
(553, 553, 'Head', NULL, NULL),
(554, 554, 'Head', NULL, NULL),
(555, 555, 'Head', NULL, NULL),
(556, 556, 'Head', NULL, NULL),
(557, 557, 'Head', NULL, NULL),
(558, 558, 'Head', NULL, NULL),
(559, 559, 'Head', NULL, NULL),
(560, 560, 'Head', NULL, NULL),
(561, 561, 'Head', NULL, NULL),
(562, 562, 'Head', NULL, NULL),
(563, 563, 'Head', NULL, NULL),
(564, 564, 'Head', NULL, NULL),
(565, 565, 'Head', NULL, NULL),
(566, 566, 'Head', NULL, NULL),
(567, 567, 'Head', NULL, NULL),
(568, 568, 'Head', NULL, NULL),
(569, 569, 'Head', NULL, NULL),
(570, 570, 'Head', NULL, NULL),
(571, 571, 'Head', NULL, NULL),
(572, 572, 'Head', NULL, NULL),
(573, 573, 'Head', NULL, NULL),
(574, 574, 'Head', NULL, NULL),
(575, 575, 'Head', NULL, NULL),
(576, 576, 'Head', NULL, NULL),
(577, 577, 'Head', NULL, NULL),
(578, 578, 'Head', NULL, NULL),
(579, 579, 'Head', NULL, NULL),
(580, 580, 'Head', NULL, NULL),
(581, 581, 'Head', NULL, NULL),
(582, 582, 'Head', NULL, NULL),
(583, 583, 'Head', NULL, NULL),
(584, 584, 'Head', NULL, NULL),
(585, 585, 'Head', NULL, NULL),
(586, 586, 'Head', NULL, NULL),
(587, 587, 'Head', NULL, NULL),
(588, 588, 'Head', NULL, NULL),
(589, 589, 'Head', NULL, NULL),
(590, 590, 'Head', NULL, NULL),
(591, 591, 'Head', NULL, NULL),
(592, 592, 'Head', NULL, NULL),
(593, 593, 'Head', NULL, NULL),
(594, 594, 'Head', NULL, NULL),
(595, 595, 'Head', NULL, NULL),
(596, 596, 'Head', NULL, NULL),
(597, 597, 'Head', NULL, NULL),
(598, 598, 'Head', NULL, NULL),
(599, 599, 'Head', NULL, NULL),
(600, 600, 'Head', NULL, NULL),
(601, 601, 'Head', NULL, NULL),
(602, 602, 'Head', NULL, NULL),
(603, 603, 'Head', NULL, NULL),
(604, 604, 'Head', NULL, NULL),
(605, 605, 'Head', NULL, NULL),
(606, 606, 'Head', NULL, NULL),
(607, 607, 'Head', NULL, NULL),
(608, 608, 'Head', NULL, NULL),
(609, 609, 'Head', NULL, NULL),
(610, 610, 'Head', NULL, NULL),
(611, 611, 'Head', NULL, NULL),
(612, 612, 'Head', NULL, NULL),
(613, 613, 'Head', NULL, NULL),
(614, 614, 'Head', NULL, NULL),
(615, 615, 'Head', NULL, NULL),
(616, 616, 'Head', NULL, NULL),
(617, 617, 'Head', NULL, NULL),
(618, 618, 'Head', NULL, NULL),
(619, 619, 'Head', NULL, NULL),
(620, 620, 'Head', NULL, NULL),
(621, 621, 'Head', NULL, NULL),
(622, 622, 'Head', NULL, NULL),
(623, 623, 'Head', NULL, NULL),
(624, 624, 'Head', NULL, NULL),
(625, 625, 'Head', NULL, NULL),
(626, 626, 'Head', NULL, NULL),
(627, 627, 'Head', NULL, NULL),
(628, 628, 'Head', NULL, NULL),
(629, 629, 'Head', NULL, NULL),
(630, 630, 'Head', NULL, NULL),
(631, 631, 'Head', NULL, NULL),
(632, 632, 'Head', NULL, NULL),
(633, 633, 'Head', NULL, NULL),
(634, 634, 'Head', NULL, NULL),
(635, 635, 'Head', NULL, NULL),
(636, 636, 'Head', NULL, NULL),
(637, 637, 'Head', NULL, NULL),
(638, 638, 'Head', NULL, NULL),
(639, 639, 'Head', NULL, NULL),
(640, 640, 'Head', NULL, NULL),
(641, 641, 'Head', NULL, NULL),
(642, 642, 'Head', NULL, NULL),
(643, 643, 'Head', NULL, NULL),
(644, 644, 'Head', NULL, NULL),
(645, 645, 'Head', NULL, NULL),
(646, 646, 'Head', NULL, NULL),
(647, 647, 'Head', NULL, NULL),
(648, 648, 'Head', NULL, NULL),
(649, 649, 'Head', NULL, NULL),
(650, 650, 'Head', NULL, NULL),
(651, 651, 'Head', NULL, NULL),
(652, 652, 'Head', NULL, NULL),
(653, 653, 'Head', NULL, NULL),
(654, 654, 'Head', NULL, NULL),
(655, 655, 'Head', NULL, NULL),
(656, 656, 'Head', NULL, NULL),
(657, 657, 'Head', NULL, NULL),
(658, 658, 'Head', NULL, NULL),
(659, 659, 'Head', NULL, NULL),
(660, 660, 'Head', NULL, NULL),
(661, 661, 'Head', NULL, NULL),
(662, 662, 'Head', NULL, NULL),
(663, 663, 'Head', NULL, NULL),
(664, 664, 'Head', NULL, NULL),
(665, 665, 'Head', NULL, NULL),
(666, 666, 'Head', NULL, NULL),
(667, 667, 'Head', NULL, NULL),
(668, 668, 'Head', NULL, NULL),
(669, 669, 'Head', NULL, NULL),
(670, 670, 'Head', NULL, NULL),
(671, 671, 'Head', NULL, NULL),
(672, 672, 'Head', NULL, NULL),
(673, 673, 'Head', NULL, NULL),
(674, 674, 'Head', NULL, NULL),
(675, 675, 'Head', NULL, NULL),
(676, 676, 'Head', NULL, NULL),
(677, 677, 'Head', NULL, NULL),
(678, 678, 'Head', NULL, NULL),
(679, 679, 'Head', NULL, NULL),
(680, 680, 'Head', NULL, NULL),
(681, 681, 'Head', NULL, NULL),
(682, 682, 'Head', NULL, NULL),
(683, 683, 'Head', NULL, NULL),
(684, 684, 'Head', NULL, NULL),
(685, 685, 'Head', NULL, NULL),
(686, 686, 'Head', NULL, NULL),
(687, 687, 'Head', NULL, NULL),
(688, 688, 'Head', NULL, NULL),
(689, 689, 'Head', NULL, NULL),
(690, 690, 'Head', NULL, NULL),
(691, 691, 'Head', NULL, NULL),
(692, 692, 'Head', NULL, NULL),
(693, 693, 'Head', NULL, NULL),
(694, 694, 'Head', NULL, NULL),
(695, 695, 'Head', NULL, NULL),
(696, 696, 'Head', NULL, NULL),
(697, 697, 'Head', NULL, NULL),
(698, 698, 'Head', NULL, NULL),
(699, 699, 'Head', NULL, NULL),
(700, 700, 'Head', NULL, NULL),
(701, 701, 'Head', NULL, NULL),
(702, 702, 'Head', NULL, NULL),
(703, 703, 'Head', NULL, NULL),
(704, 704, 'Head', NULL, NULL),
(705, 705, 'Head', NULL, NULL),
(706, 706, 'Head', NULL, NULL),
(707, 707, 'Head', NULL, NULL),
(708, 708, 'Head', NULL, NULL),
(709, 709, 'Head', NULL, NULL),
(710, 710, 'Head', NULL, NULL),
(711, 711, 'Head', NULL, NULL),
(712, 712, 'Head', NULL, NULL),
(713, 713, 'Head', NULL, NULL),
(714, 714, 'Head', NULL, NULL),
(715, 715, 'Head', NULL, NULL),
(716, 716, 'Head', NULL, NULL),
(717, 717, 'Head', NULL, NULL),
(718, 718, 'Head', NULL, NULL),
(719, 719, 'Head', NULL, NULL),
(720, 720, 'Head', NULL, NULL),
(721, 721, 'Head', NULL, NULL),
(722, 722, 'Head', NULL, NULL),
(723, 723, 'Head', NULL, NULL),
(724, 724, 'Head', NULL, NULL),
(725, 725, 'Head', NULL, NULL),
(726, 726, 'Head', NULL, NULL),
(727, 727, 'Head', NULL, NULL),
(728, 728, 'Head', NULL, NULL),
(729, 729, 'Head', NULL, NULL),
(730, 730, 'Head', NULL, NULL),
(731, 731, 'Head', NULL, NULL),
(732, 732, 'Head', NULL, NULL),
(733, 733, 'Head', NULL, NULL),
(734, 734, 'Head', NULL, NULL),
(735, 735, 'Head', NULL, NULL),
(736, 736, 'Head', NULL, NULL),
(737, 737, 'Head', NULL, NULL),
(738, 738, 'Head', NULL, NULL),
(739, 739, 'Head', NULL, NULL),
(740, 740, 'Head', NULL, NULL),
(741, 741, 'Head', NULL, NULL),
(742, 742, 'Head', NULL, NULL),
(743, 743, 'Head', NULL, NULL),
(744, 744, 'Head', NULL, NULL),
(745, 745, 'Head', NULL, NULL),
(746, 746, 'Head', NULL, NULL),
(747, 747, 'Head', NULL, NULL),
(748, 748, 'Head', NULL, NULL),
(749, 749, 'Head', NULL, NULL),
(750, 750, 'Head', NULL, NULL),
(751, 751, 'Head', NULL, NULL),
(752, 752, 'Head', NULL, NULL),
(753, 753, 'Head', NULL, NULL),
(754, 754, 'Head', NULL, NULL),
(755, 755, 'Head', NULL, NULL),
(756, 756, 'Head', NULL, NULL),
(757, 757, 'Head', NULL, NULL),
(758, 758, 'Head', NULL, NULL),
(759, 759, 'Head', NULL, NULL),
(760, 760, 'Head', NULL, NULL),
(761, 761, 'Head', NULL, NULL),
(762, 762, 'Head', NULL, NULL),
(763, 763, 'Head', NULL, NULL),
(764, 764, 'Head', NULL, NULL),
(765, 765, 'Head', NULL, NULL),
(766, 766, 'Head', NULL, NULL),
(767, 767, 'Head', NULL, NULL),
(768, 768, 'Head', NULL, NULL),
(769, 769, 'Head', NULL, NULL),
(770, 770, 'Head', NULL, NULL),
(771, 771, 'Head', NULL, NULL),
(772, 772, 'Head', NULL, NULL),
(773, 773, 'Head', NULL, NULL),
(774, 774, 'Head', NULL, NULL),
(775, 775, 'Head', NULL, NULL),
(776, 776, 'Head', NULL, NULL),
(777, 777, 'Head', NULL, NULL),
(778, 778, 'Head', NULL, NULL),
(779, 779, 'Head', NULL, NULL),
(780, 780, 'Head', NULL, NULL),
(781, 781, 'Head', NULL, NULL),
(782, 782, 'Head', NULL, NULL),
(783, 783, 'Head', NULL, NULL),
(784, 784, 'Head', NULL, NULL),
(785, 785, 'Head', NULL, NULL),
(786, 786, 'Head', NULL, NULL),
(787, 787, 'Head', NULL, NULL),
(788, 788, 'Head', NULL, NULL),
(789, 789, 'Head', NULL, NULL),
(790, 790, 'Head', NULL, NULL),
(791, 791, 'Head', NULL, NULL),
(792, 792, 'Head', NULL, NULL),
(793, 793, 'Head', NULL, NULL),
(794, 794, 'Head', NULL, NULL),
(795, 795, 'Head', NULL, NULL),
(796, 796, 'Head', NULL, NULL),
(797, 797, 'Head', NULL, NULL),
(798, 798, 'Head', NULL, NULL),
(799, 799, 'Head', NULL, NULL),
(800, 800, 'Head', NULL, NULL),
(801, 801, 'Head', NULL, NULL),
(802, 802, 'Head', NULL, NULL),
(803, 803, 'Head', NULL, NULL),
(804, 804, 'Head', NULL, NULL),
(805, 805, 'Head', NULL, NULL),
(806, 806, 'Head', NULL, NULL),
(807, 807, 'Head', NULL, NULL),
(808, 808, 'Head', NULL, NULL),
(809, 809, 'Head', NULL, NULL),
(810, 810, 'Head', NULL, NULL),
(811, 811, 'Head', NULL, NULL),
(812, 812, 'Head', NULL, NULL),
(813, 813, 'Head', NULL, NULL),
(814, 814, 'Head', NULL, NULL),
(815, 815, 'Head', NULL, NULL),
(816, 816, 'Head', NULL, NULL),
(817, 817, 'Head', NULL, NULL),
(818, 818, 'Head', NULL, NULL),
(819, 819, 'Head', NULL, NULL),
(820, 820, 'Head', NULL, NULL),
(821, 821, 'Head', NULL, NULL),
(822, 822, 'Head', NULL, NULL),
(823, 823, 'Head', NULL, NULL),
(824, 824, 'Head', NULL, NULL),
(825, 825, 'Head', NULL, NULL),
(826, 826, 'Head', NULL, NULL),
(827, 827, 'Head', NULL, NULL),
(828, 828, 'Head', NULL, NULL),
(829, 829, 'Head', NULL, NULL),
(830, 830, 'Head', NULL, NULL),
(831, 831, 'Head', NULL, NULL),
(832, 832, 'Head', NULL, NULL),
(833, 833, 'Head', NULL, NULL),
(834, 834, 'Head', NULL, NULL),
(835, 835, 'Head', NULL, NULL),
(836, 836, 'Head', NULL, NULL),
(837, 837, 'Head', NULL, NULL),
(838, 838, 'Head', NULL, NULL),
(839, 839, 'Head', NULL, NULL),
(840, 840, 'Head', NULL, NULL),
(841, 841, 'Head', NULL, NULL),
(842, 842, 'Head', NULL, NULL),
(843, 843, 'Head', NULL, NULL),
(844, 844, 'Head', NULL, NULL),
(845, 845, 'Head', NULL, NULL),
(846, 846, 'Head', NULL, NULL),
(847, 847, 'Head', NULL, NULL),
(848, 848, 'Head', NULL, NULL),
(849, 849, 'Head', NULL, NULL),
(850, 850, 'Head', NULL, NULL),
(851, 851, 'Head', NULL, NULL),
(852, 852, 'Head', NULL, NULL),
(853, 853, 'Head', NULL, NULL),
(854, 854, 'Head', NULL, NULL),
(855, 855, 'Head', NULL, NULL),
(856, 856, 'Head', NULL, NULL),
(857, 857, 'Head', NULL, NULL),
(858, 858, 'Head', NULL, NULL),
(859, 859, 'Head', NULL, NULL),
(860, 860, 'Head', NULL, NULL),
(861, 861, 'Head', NULL, NULL),
(862, 862, 'Head', NULL, NULL),
(863, 863, 'Head', NULL, NULL),
(864, 864, 'Head', NULL, NULL),
(865, 865, 'Head', NULL, NULL),
(866, 866, 'Head', NULL, NULL),
(867, 867, 'Head', NULL, NULL),
(868, 868, 'Head', NULL, NULL),
(869, 869, 'Head', NULL, NULL),
(870, 870, 'Head', NULL, NULL),
(871, 871, 'Head', NULL, NULL),
(872, 872, 'Head', NULL, NULL),
(873, 873, 'Head', NULL, NULL),
(874, 874, 'Head', NULL, NULL),
(875, 875, 'Head', NULL, NULL),
(876, 876, 'Head', NULL, NULL),
(877, 877, 'Head', NULL, NULL),
(878, 878, 'Head', NULL, NULL),
(879, 879, 'Head', NULL, NULL),
(880, 880, 'Head', NULL, NULL),
(881, 881, 'Head', NULL, NULL),
(882, 882, 'Head', NULL, NULL),
(883, 883, 'Head', NULL, NULL),
(884, 884, 'Head', NULL, NULL),
(885, 885, 'Head', NULL, NULL),
(886, 886, 'Head', NULL, NULL),
(887, 887, 'Head', NULL, NULL),
(888, 888, 'Head', NULL, NULL),
(889, 889, 'Head', NULL, NULL),
(890, 890, 'Head', NULL, NULL),
(891, 891, 'Head', NULL, NULL),
(892, 892, 'Head', NULL, NULL),
(893, 893, 'Head', NULL, NULL),
(894, 894, 'Head', NULL, NULL),
(895, 895, 'Head', NULL, NULL),
(896, 896, 'Head', NULL, NULL),
(897, 897, 'Head', NULL, NULL),
(898, 898, 'Head', NULL, NULL),
(899, 899, 'Head', NULL, NULL),
(900, 900, 'Head', NULL, NULL),
(901, 901, 'Head', NULL, NULL),
(902, 902, 'Head', NULL, NULL),
(903, 903, 'Head', NULL, NULL),
(904, 904, 'Head', NULL, NULL),
(905, 905, 'Head', NULL, NULL),
(906, 906, 'Head', NULL, NULL),
(907, 907, 'Head', NULL, NULL),
(908, 908, 'Head', NULL, NULL),
(909, 909, 'Head', NULL, NULL),
(910, 910, 'Head', NULL, NULL),
(911, 911, 'Head', NULL, NULL),
(912, 912, 'Head', NULL, NULL),
(913, 913, 'Head', NULL, NULL),
(914, 914, 'Head', NULL, NULL),
(915, 915, 'Head', NULL, NULL),
(916, 916, 'Head', NULL, NULL),
(917, 917, 'Head', NULL, NULL),
(918, 918, 'Head', NULL, NULL),
(919, 919, 'Head', NULL, NULL),
(920, 920, 'Head', NULL, NULL),
(921, 921, 'Head', NULL, NULL),
(922, 922, 'Head', NULL, NULL),
(923, 923, 'Head', NULL, NULL),
(924, 924, 'Head', NULL, NULL),
(925, 925, 'Head', NULL, NULL),
(926, 926, 'Head', NULL, NULL),
(927, 927, 'Head', NULL, NULL),
(928, 928, 'Head', NULL, NULL),
(929, 929, 'Head', NULL, NULL),
(930, 930, 'Head', NULL, NULL),
(931, 931, 'Head', NULL, NULL),
(932, 932, 'Head', NULL, NULL),
(933, 933, 'Head', NULL, NULL),
(934, 934, 'Head', NULL, NULL),
(935, 935, 'Head', NULL, NULL),
(936, 936, 'Head', NULL, NULL),
(937, 937, 'Head', NULL, NULL),
(938, 938, 'Head', NULL, NULL),
(939, 939, 'Head', NULL, NULL),
(940, 940, 'Head', NULL, NULL),
(941, 941, 'Head', NULL, NULL),
(942, 942, 'Head', NULL, NULL),
(943, 943, 'Head', NULL, NULL),
(944, 944, 'Head', NULL, NULL),
(945, 945, 'Head', NULL, NULL),
(946, 946, 'Head', NULL, NULL),
(947, 947, 'Head', NULL, NULL),
(948, 948, 'Head', NULL, NULL),
(949, 949, 'Head', NULL, NULL),
(950, 950, 'Head', NULL, NULL),
(951, 951, 'Head', NULL, NULL),
(952, 952, 'Head', NULL, NULL),
(953, 953, 'Head', NULL, NULL),
(954, 954, 'Head', NULL, NULL),
(955, 955, 'Head', NULL, NULL),
(956, 956, 'Head', NULL, NULL),
(957, 957, 'Head', NULL, NULL),
(958, 958, 'Head', NULL, NULL),
(959, 959, 'Head', NULL, NULL),
(960, 960, 'Head', NULL, NULL),
(961, 961, 'Head', NULL, NULL),
(962, 962, 'Head', NULL, NULL),
(963, 963, 'Head', NULL, NULL),
(964, 964, 'Head', NULL, NULL),
(965, 965, 'Head', NULL, NULL),
(966, 966, 'Head', NULL, NULL),
(967, 967, 'Head', NULL, NULL),
(968, 968, 'Head', NULL, NULL),
(969, 969, 'Head', NULL, NULL),
(970, 970, 'Head', NULL, NULL),
(971, 971, 'Head', NULL, NULL),
(972, 972, 'Head', NULL, NULL),
(973, 973, 'Head', NULL, NULL),
(974, 974, 'Head', NULL, NULL),
(975, 975, 'Head', NULL, NULL),
(976, 976, 'Head', NULL, NULL),
(977, 977, 'Head', NULL, NULL),
(978, 978, 'Head', NULL, NULL),
(979, 979, 'Head', NULL, NULL),
(980, 980, 'Head', NULL, NULL),
(981, 981, 'Head', NULL, NULL),
(982, 982, 'Head', NULL, NULL),
(983, 983, 'Head', NULL, NULL),
(984, 984, 'Head', NULL, NULL),
(985, 985, 'Head', NULL, NULL),
(986, 986, 'Head', NULL, NULL),
(987, 987, 'Head', NULL, NULL),
(988, 988, 'Head', NULL, NULL),
(989, 989, 'Head', NULL, NULL),
(990, 990, 'Head', NULL, NULL),
(991, 991, 'Head', NULL, NULL),
(992, 992, 'Head', NULL, NULL),
(993, 993, 'Head', NULL, NULL),
(994, 994, 'Head', NULL, NULL),
(995, 995, 'Head', NULL, NULL),
(996, 996, 'Head', NULL, NULL),
(997, 997, 'Head', NULL, NULL),
(998, 998, 'Head', NULL, NULL),
(999, 999, 'Head', NULL, NULL),
(1000, 1000, 'Head', NULL, NULL),
(1001, 1001, 'Head', NULL, NULL),
(1002, 1002, 'Head', NULL, NULL),
(1003, 1003, 'Head', NULL, NULL),
(1004, 1004, 'Head', NULL, NULL),
(1005, 1005, 'Head', NULL, NULL),
(1006, 1006, 'Head', NULL, NULL),
(1007, 1007, 'Head', NULL, NULL),
(1008, 1008, 'Head', NULL, NULL),
(1009, 1009, 'Head', NULL, NULL),
(1010, 1010, 'Head', NULL, NULL),
(1011, 1011, 'Head', NULL, NULL),
(1012, 1012, 'Head', NULL, NULL),
(1013, 1013, 'Head', NULL, NULL),
(1014, 1014, 'Head', NULL, NULL),
(1015, 1015, 'Head', NULL, NULL),
(1016, 1016, 'Head', NULL, NULL),
(1017, 1017, 'Head', NULL, NULL),
(1018, 1018, 'Head', NULL, NULL),
(1019, 1019, 'Head', NULL, NULL),
(1020, 1020, 'Head', NULL, NULL),
(1021, 1021, 'Head', NULL, NULL),
(1022, 1022, 'Head', NULL, NULL),
(1023, 1023, 'Head', NULL, NULL),
(1024, 1024, 'Head', NULL, NULL),
(1025, 1025, 'Head', NULL, NULL),
(1026, 1026, 'Head', NULL, NULL),
(1027, 1027, 'Head', NULL, NULL),
(1028, 1028, 'Head', NULL, NULL),
(1029, 1029, 'Head', NULL, NULL),
(1030, 1030, 'Head', NULL, NULL),
(1031, 1031, 'Head', NULL, NULL),
(1032, 1032, 'Head', NULL, NULL),
(1033, 1033, 'Head', NULL, NULL),
(1034, 1034, 'Head', NULL, NULL),
(1035, 1035, 'Head', NULL, NULL),
(1036, 1036, 'Head', NULL, NULL),
(1037, 1037, 'Head', NULL, NULL),
(1038, 1038, 'Head', NULL, NULL),
(1039, 1039, 'Head', NULL, NULL),
(1040, 1040, 'Head', NULL, NULL),
(1041, 1041, 'Head', NULL, NULL),
(1042, 1042, 'Head', NULL, NULL),
(1043, 1043, 'Head', NULL, NULL),
(1044, 1044, 'Head', NULL, NULL),
(1045, 1045, 'Head', NULL, NULL),
(1046, 1046, 'Head', NULL, NULL),
(1047, 1047, 'Head', NULL, NULL),
(1048, 1048, 'Head', NULL, NULL),
(1049, 1049, 'Head', NULL, NULL),
(1050, 1050, 'Head', NULL, NULL),
(1051, 1051, 'Head', NULL, NULL),
(1052, 1052, 'Head', NULL, NULL),
(1053, 1053, 'Head', NULL, NULL),
(1054, 1054, 'Head', NULL, NULL),
(1055, 1055, 'Head', NULL, NULL),
(1056, 1056, 'Head', NULL, NULL),
(1057, 1057, 'Head', NULL, NULL),
(1058, 1058, 'Head', NULL, NULL),
(1059, 1059, 'Head', NULL, NULL),
(1060, 1060, 'Head', NULL, NULL),
(1061, 1061, 'Head', NULL, NULL),
(1062, 1062, 'Head', NULL, NULL),
(1063, 1063, 'Head', NULL, NULL),
(1064, 1064, 'Head', NULL, NULL),
(1065, 1065, 'Head', NULL, NULL),
(1066, 1066, 'Head', NULL, NULL),
(1067, 1067, 'Head', NULL, NULL),
(1068, 1068, 'Head', NULL, NULL),
(1069, 1069, 'Head', NULL, NULL),
(1070, 1070, 'Head', NULL, NULL),
(1071, 1071, 'Head', NULL, NULL),
(1072, 1072, 'Head', NULL, NULL),
(1073, 1073, 'Head', NULL, NULL),
(1074, 1074, 'Head', NULL, NULL),
(1075, 1075, 'Head', NULL, NULL),
(1076, 1076, 'Head', NULL, NULL),
(1077, 1077, 'Head', NULL, NULL),
(1078, 1078, 'Head', NULL, NULL),
(1079, 1079, 'Head', NULL, NULL),
(1080, 1080, 'Head', NULL, NULL),
(1081, 1081, 'Head', NULL, NULL),
(1082, 1082, 'Head', NULL, NULL),
(1083, 1083, 'Head', NULL, NULL),
(1084, 1084, 'Head', NULL, NULL),
(1085, 1085, 'Head', NULL, NULL),
(1086, 1086, 'Head', NULL, NULL),
(1087, 1087, 'Head', NULL, NULL),
(1088, 1088, 'Head', NULL, NULL),
(1089, 1089, 'Head', NULL, NULL),
(1090, 1090, 'Head', NULL, NULL),
(1091, 1091, 'Head', NULL, NULL),
(1092, 1092, 'Head', NULL, NULL),
(1093, 1093, 'Head', NULL, NULL),
(1094, 1094, 'Head', NULL, NULL),
(1095, 1095, 'Head', NULL, NULL),
(1096, 1096, 'Head', NULL, NULL),
(1097, 1097, 'Head', NULL, NULL),
(1098, 1098, 'Head', NULL, NULL),
(1099, 1099, 'Head', NULL, NULL),
(1100, 1100, 'Head', NULL, NULL),
(1101, 1101, 'Head', NULL, NULL),
(1102, 1102, 'Head', NULL, NULL),
(1103, 1103, 'Head', NULL, NULL),
(1104, 1104, 'Head', NULL, NULL),
(1105, 1105, 'Head', NULL, NULL),
(1106, 1106, 'Head', NULL, NULL),
(1107, 1107, 'Head', NULL, NULL),
(1108, 1108, 'Head', NULL, NULL),
(1109, 1109, 'Head', NULL, NULL),
(1110, 1110, 'Head', NULL, NULL),
(1111, 1111, 'Head', NULL, NULL),
(1112, 1112, 'Head', NULL, NULL),
(1113, 1113, 'Head', NULL, NULL),
(1114, 1114, 'Head', NULL, NULL),
(1115, 1115, 'Head', NULL, NULL),
(1116, 1116, 'Head', NULL, NULL),
(1117, 1117, 'Head', NULL, NULL),
(1118, 1118, 'Head', NULL, NULL),
(1119, 1119, 'Head', NULL, NULL),
(1120, 1120, 'Head', NULL, NULL),
(1121, 1121, 'Head', NULL, NULL),
(1122, 1122, 'Head', NULL, NULL),
(1123, 1123, 'Head', NULL, NULL),
(1124, 1124, 'Head', NULL, NULL),
(1125, 1125, 'Head', NULL, NULL),
(1126, 1126, 'Head', NULL, NULL),
(1127, 1127, 'Head', NULL, NULL),
(1128, 1128, 'Head', NULL, NULL),
(1129, 1129, 'Head', NULL, NULL),
(1130, 1130, 'Head', NULL, NULL),
(1131, 1131, 'Head', NULL, NULL),
(1132, 1132, 'Head', NULL, NULL),
(1133, 1133, 'Head', NULL, NULL),
(1134, 1134, 'Head', NULL, NULL),
(1135, 1135, 'Head', NULL, NULL),
(1136, 1136, 'Head', NULL, NULL),
(1137, 1137, 'Head', NULL, NULL),
(1138, 1138, 'Head', NULL, NULL),
(1139, 1139, 'Head', NULL, NULL),
(1140, 1140, 'Head', NULL, NULL),
(1141, 1141, 'Head', NULL, NULL),
(1142, 1142, 'Head', NULL, NULL),
(1143, 1143, 'Head', NULL, NULL),
(1144, 1144, 'Head', NULL, NULL),
(1145, 1145, 'Head', NULL, NULL),
(1146, 1146, 'Head', NULL, NULL),
(1147, 1147, 'Head', NULL, NULL),
(1148, 1148, 'Head', NULL, NULL),
(1149, 1149, 'Head', NULL, NULL),
(1150, 1150, 'Head', NULL, NULL),
(1151, 1151, 'Head', NULL, NULL),
(1152, 1152, 'Head', NULL, NULL),
(1153, 1153, 'Head', NULL, NULL),
(1154, 1154, 'Head', NULL, NULL),
(1155, 1155, 'Head', NULL, NULL),
(1156, 1156, 'Head', NULL, NULL),
(1157, 1157, 'Head', NULL, NULL),
(1158, 1158, 'Head', NULL, NULL),
(1159, 1159, 'Head', NULL, NULL),
(1160, 1160, 'Head', NULL, NULL),
(1161, 1161, 'Head', NULL, NULL),
(1162, 1162, 'Head', NULL, NULL),
(1163, 1163, 'Head', NULL, NULL),
(1164, 1164, 'Head', NULL, NULL),
(1165, 1165, 'Head', NULL, NULL),
(1166, 1166, 'Head', NULL, NULL),
(1167, 1167, 'Head', NULL, NULL),
(1168, 1168, 'Head', NULL, NULL),
(1169, 1169, 'Head', NULL, NULL),
(1170, 1170, 'Head', NULL, NULL),
(1171, 1171, 'Head', NULL, NULL),
(1172, 1172, 'Head', NULL, NULL),
(1173, 1173, 'Head', NULL, NULL),
(1174, 1174, 'Head', NULL, NULL),
(1175, 1175, 'Head', NULL, NULL),
(1176, 1176, 'Head', NULL, NULL),
(1177, 1177, 'Head', NULL, NULL),
(1178, 1178, 'Head', NULL, NULL),
(1179, 1179, 'Head', NULL, NULL),
(1180, 1180, 'Head', NULL, NULL),
(1181, 1181, 'Head', NULL, NULL),
(1182, 1182, 'Head', NULL, NULL),
(1183, 1183, 'Head', NULL, NULL),
(1184, 1184, 'Head', NULL, NULL),
(1185, 1185, 'Head', NULL, NULL),
(1186, 1186, 'Head', NULL, NULL),
(1187, 1187, 'Head', NULL, NULL),
(1188, 1188, 'Head', NULL, NULL),
(1189, 1189, 'Head', NULL, NULL),
(1190, 1190, 'Head', NULL, NULL);

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
(23, 1, '1_8', 'Bayug Island', '', 42, NULL, NULL),
(24, 2, 'Purok 1', 'Gumela', 'Teodoro', 507, '2016-04-25 22:14:36', '2016-04-26 18:48:49'),
(25, 1, 'Sulu', 'Flood in Iligan City - Typhoon Konans', 'Perla Corneros', 1444, '2016-04-25 22:30:17', '2016-04-25 22:30:17'),
(26, 3, 'Purok', '1', 'Sample Data', 356, '2016-05-09 21:53:35', '2016-05-09 21:53:35');

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
(1, 'Ariel', 'Argiente', 'Cuizon', '1985-01-27', 'Male', 'Single', '09291357063', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, '2016-05-09 21:35:44'),
(2, 'Jesser', 'Simbaco', 'Chua', '1963-11-12', 'Male', 'Married', '09238532099', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(3, 'Lucio', 'Abiol', 'Collamar', '1969-11-12', 'Male', 'Married', '09222888540', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(4, 'Flora', 'Simbaco', 'Tabano', '1959-11-12', 'Female', 'Widow', '09260982262', 'College Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(5, 'Francisco, jr', 'Catalan', 'Licop', '1980-11-12', 'Male', 'Married', '09336212666', 'Highschool Graduate', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(6, 'Francisco, sr', 'Catalan', 'Unsay', '1953-11-12', 'Male', 'Married', '09317492272', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(7, 'Hanna Mae', 'Daud', 'Suog', '1997-11-12', 'Female', 'Single', '09215697333', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(8, 'Jesus', 'Daud', 'Cabegas', '1956-11-12', 'Male', 'Living_in', '09293575246', 'Highschool Graduate', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(9, 'Manuel', 'Maguiran', 'delaConcepcion', '1944-11-12', 'Male', 'Married', '09296392697', 'Elementary', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(10, 'Roy', 'Maguiran', 'E', '1971-11-12', 'Male', 'Married', '09294559118', 'College Graduate', 'Unemployed', 'Self_employed', 'Yes', 'No', NULL, NULL),
(11, 'Namra', 'Cali', 'Mangansam', '1966-11-12', 'Male', 'Married', '09353904467', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(12, 'Alvin', 'Bado', 'Aguilo', '1988-11-12', 'Male', 'Living_in', '09352500214', 'Vocational', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(13, 'Bonifacio', 'Bado', 'Penaflor', '1963-11-12', 'Male', 'Married', '09237109958', 'Highschool Graduate', 'Unemployed', 'per_day', 'Yes', 'No', NULL, NULL),
(14, 'Delia', 'Salvador', 'Romanillos', '1959-11-12', 'Female', 'Separated', '09279640046', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(15, 'Lomer', 'Cagobcob', 'G', '1966-11-12', 'Male', 'Married', '09307787720', 'Highschool Graduate', 'Skilled Worker', 'Self_employed', 'Yes', 'No', NULL, NULL),
(16, 'Mark Anthony', 'Bation', 'Aguilo', '1989-11-12', 'Male', 'Living_in', '09254578152', 'Vocational', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(17, 'Roel', 'Libumfacil', 'Aguilo', '1970-11-12', 'Male', 'Married', '09268271856', 'Elementary', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(18, 'Teodoro', 'Sumile', 'Ligan', '1964-11-12', 'Male', 'Married', '09236099253', 'College Graduate', 'Private Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(19, 'Eduardo', 'Fabroa', 'Galorio', '1962-11-12', 'Male', 'Married', '09333797708', 'College Graduate', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(20, 'Rudyrico', 'Duran', 'Dalogdog', '1956-11-12', 'Male', 'Married', '09256259678', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(21, 'Ramero', 'Salig', 'Bughaw', '1956-11-12', 'Male', 'Married', '09353242590', 'Vocational', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(22, 'Nelson', 'Salig', 'Bughaw', '1963-11-12', 'Male', 'Married', '09273844147', 'College Graduate', 'Laborer/Unskilled Worker', 'Self_employed', 'Yes', 'No', NULL, NULL),
(23, 'Nicolas', 'Remo', 'Olivero', '1955-11-12', 'Male', 'Married', '09248755420', 'College Graduate', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(24, 'Joe-Mark', 'Salado', 'Eroy', '1987-11-12', 'Male', 'Married', '09320908990', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(25, 'Arnel', 'Uy', 'Bado', '1972-11-12', 'Male', 'Married', '09308843146', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(26, 'Cecilia', 'Fernandez', '', '1965-11-12', 'Female', 'Widow', '09356238926', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(27, 'Cerelo', 'Aguinot', 'Gabresa', '1989-11-12', 'Male', 'Living_in', '09309111474', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(28, 'Flaviano', 'Gonzaga', 'Gabayan', '1951-11-12', 'Male', 'Married', '09265347074', 'Vocational', 'Businessman', 'Self_employed', 'Yes', 'No', NULL, NULL),
(29, 'Bernie', 'Simbaco', 'Chua', '1971-11-12', 'Male', 'Married', '09244980931', 'College Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(30, 'Oliver', 'Garma', 'Villarosa', '1978-11-12', 'Male', 'Married', '09300104576', 'College Graduate', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(31, 'Meliton,Jr.', 'Bation', '', '1963-11-12', 'Male', 'Married', '09331686857', 'Highschool Graduate', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(32, 'Rupert Johan', 'Bado', 'Quito', '1979-11-12', 'Male', 'Married', '09346024550', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(33, 'Sotico', 'Capangpangan', 'Gersale', '1960-11-12', 'Male', 'Married', '09271563354', 'College Graduate', 'Laborer/Unskilled Worker', 'Self_employed', 'Yes', 'No', NULL, NULL),
(34, 'Gerarda', 'Cloma', 'Capangpangan', '1962-11-12', 'Female', 'Widow', '09215348505', 'College Graduate', 'Private Employee', 'Self_employed', 'Yes', 'No', NULL, NULL),
(35, 'Edsiel', 'Borbon', 'Legaspi', '1980-11-12', 'Male', 'Married', '09279845765', 'Highschool Graduate', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(36, 'Roberto', 'Sebaria', 'Balaba', '1959-11-12', 'Male', 'Married', '09233219192', 'Vocational', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(37, 'German', 'Lumboy', 'Zulueta', '1961-11-12', 'Male', 'Living_in', '09351954613', 'Highschool Graduate', 'Unemployed', 'Permanent', 'Yes', 'No', NULL, NULL),
(38, 'Adelita', 'Soledad', 'Gagati', '1963-11-12', 'Female', 'Married', '09358421333', 'College Graduate', 'Goverment Employee', 'Self_employed', 'Yes', 'No', NULL, NULL),
(39, 'Reymundo', 'Yañez', 'Nacua', '1972-11-12', 'Male', 'Married', '09263495606', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(40, 'Valentin', 'Reco', 'Opog', '1966-11-12', 'Male', 'Living_in', '09329924832', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(41, 'Melvin', 'Hatague', 'Perocho', '1977-11-12', 'Male', 'Married', '09302975693', 'Highschool Graduate', 'Unemployed', 'Permanent', 'Yes', 'No', NULL, NULL),
(42, 'Matilde', 'Llanes', 'Bado', '1941-11-12', 'Female', 'Widow', '09253057623', 'College Graduate', 'Skilled Worker', 'Self_employed', 'Yes', 'No', NULL, NULL),
(43, 'Abrendino', 'Albiento', 'Dejeto', '1972-11-12', 'Male', 'Married', '09246000580', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(44, 'Reggie', 'Bado', 'Ybarlie', '1985-11-12', 'Male', 'Married', '09306419244', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(45, 'Cerilo', 'Bado', 'Roca', '1960-11-12', 'Male', 'Married', '09234534003', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Self_employed', 'Yes', 'No', NULL, NULL),
(46, 'Angelina', 'Saliot', 'Calibo', '1944-11-12', 'Female', 'Widow', '09302251205', 'College Graduate', 'Goverment Employee', 'Self_employed', 'Yes', 'No', NULL, NULL),
(47, 'Christopher', 'Hulgin', 'Rosario', '1966-11-12', 'Male', 'Married', '09337268092', 'Highschool Graduate', 'Businessman', 'Self_employed', 'Yes', 'No', NULL, NULL),
(48, 'Benjamin', 'Garting', 'Legaspi', '1980-11-12', 'Male', 'Married', '09272609836', 'Highschool Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(49, 'Nick', 'Garting', 'Legaspi', '1988-11-12', 'Male', 'Living_in', '09256536951', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(50, 'Merlo', 'Bado', 'Alecanda', '1988-11-12', 'Male', 'Married', '09322823067', 'Highschool Graduate', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(51, 'Christine', 'Bardillas', 'Dalogdog', '1979-11-12', 'Female', 'Living_in', '09354119130', 'Highschool Graduate', 'Unemployed', 'Self_employed', 'Yes', 'No', NULL, NULL),
(52, 'Luzzy', 'Fabroa', 'Eroy', '1963-11-12', 'Female', 'Widow', '09338404017', 'Elementary', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(53, 'Emmanuel', 'Verano', 'Dalogdog', '1962-11-12', 'Male', 'Married', '09332348734', 'College Graduate', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(54, 'Fajusto', 'Milancio', 'Bail', '1956-11-12', 'Male', 'Married', '09278137406', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(55, 'Danilo', 'Aguilo', 'Bado', '1964-11-12', 'Male', 'Married', '09259917891', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(56, 'Oliva', 'Bado', 'Narisma', '1944-11-12', 'Female', 'Widow', '09320622773', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(57, 'Danny', 'Bahian', 'Labadan', '1981-11-12', 'Male', 'Married', '09278790339', 'Vocational', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(58, 'Robin', 'Bado', 'Mutya', '1970-11-12', 'Male', 'Married', '09278101628', 'Elementary', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(59, 'Dulce', 'Esteban', 'delMar', '1964-11-12', 'Female', 'Widow', '09311114995', 'Highschool Graduate', 'Unemployed', 'Self_employed', 'Yes', 'No', NULL, NULL),
(60, 'David Jorte', 'Villarta', 'Villarin', '1989-11-12', 'Male', 'Single', '09329173512', 'College Graduate', 'Unemployed', 'Permanent', 'Yes', 'No', NULL, NULL),
(61, 'Efren', 'Abarca ', 'Talirongan', '1985-11-12', 'Male', 'Single', '09352312384', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(62, 'Olimpo,Jr.', 'Bado', 'Taguno', '1986-11-12', 'Male', 'Married', '09286079933', 'Highschool Graduate', 'Private Employee', 'Self_employed', 'Yes', 'No', NULL, NULL),
(63, 'Jameson', 'Babano', 'Aresgo', '1987-11-12', 'Male', 'Living_in', '09324531426', 'Highschool Graduate', 'Goverment Employee', 'Self_employed', 'Yes', 'No', NULL, NULL),
(64, 'Francisco', 'Arado', 'Domatican', '1957-11-12', 'Male', 'Married', '09327420431', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(65, 'Domingo', 'Balag', 'Romblon', '1960-11-12', 'Male', 'Married', '09223192646', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(66, 'Ramil', 'Arellano', 'Magsayo', '1969-11-12', 'Male', 'Single', '09265436517', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(67, 'Perlito', 'Perez', 'Pocdol', '1967-11-12', 'Male', 'Married', '09263531384', 'Highschool Graduate', 'Skilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(68, 'Philip_Bryan', 'Fenis', 'Perez', '1990-11-12', 'Male', 'Married', '09278727729', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(69, 'Arcadio', 'Canlolobo', 'Siarez', '1963-11-12', 'Male', 'Married', '09294424954', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(70, 'Melchor', 'Cañarez', 'Racoma', '1970-11-12', 'Male', 'Living_in', '09326078788', 'Highschool Graduate', 'Non-Government Organization', 'per_day', 'Yes', 'No', NULL, NULL),
(71, 'Luisito', 'Anislag', 'Mabini', '1960-11-12', 'Male', 'Married', '09238022275', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(72, 'Julibert', 'Reluya', 'Actiua', '1982-11-12', 'Male', 'Living_in', '09293002812', 'Vocational', 'Unemployed', 'Permanent', 'Yes', 'No', NULL, NULL),
(73, 'Moises', 'Salvalosa', 'Maril', '1973-11-12', 'Male', 'Married', '09236287083', 'College Graduate', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(74, 'Ronel', 'Naquila', 'Plaza', '1988-11-12', 'Male', 'Married', '09284827733', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(75, 'Dome', 'Dacuya', 'Somiti', '1980-11-12', 'Male', 'Married', '09357911508', 'Highschool Graduate', 'Businessman', 'per_day', 'Yes', 'No', NULL, NULL),
(76, 'Arnolfo', 'Arguilles', 'Rabino', '1967-11-12', 'Male', 'Married', '09333609878', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(77, 'Roel', 'Naquila', 'Plaza', '1981-11-12', 'Male', 'Married', '09305229653', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(78, 'Sanyboy', 'Tadle', 'Loguillano', '1971-11-12', 'Male', 'Married', '09251590759', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(79, 'Jean', 'Chavez', 'Dignos', '1961-11-12', 'Female', 'Single', '09293476859', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(80, 'Andresito', 'Suganog', 'Asinero', '1969-11-12', 'Male', 'Married', '09217369914', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(81, 'Loverine', 'Siarza', 'Tugonon', '1988-11-12', 'Male', 'Living_in', '09318073651', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(82, 'Nelson', 'Siarza', 'Salzos', '1961-11-12', 'Male', 'Separated', '09336275276', 'Highschool Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(83, 'Portonato', 'Quirino', 'Dag_uma', '1968-11-12', 'Male', 'Married', '09301168947', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(84, 'Julito', 'Albiento', 'Dejeto', '1971-11-12', 'Male', 'Separated', '09347276750', 'Vocational', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(85, 'Rolando', 'Libumfacil', 'Villamor', '1974-11-12', 'Male', 'Living_in', '09238183272', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(86, 'Dionesio,Jr', 'Bado', 'Wade', '1968-11-12', 'Male', 'Married', '09355702269', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(87, 'Crecencio', 'Bangus', 'Carawi', '1959-11-12', 'Male', 'Married', '09344351968', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(88, 'Oliver', 'Awitin', 'Galunsay', '1986-11-12', 'Male', 'Married', '09247064950', 'Vocational', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(89, 'Joseph', 'Bardillas', 'Dalogdog', '1971-11-12', 'Male', 'Married', '09322009137', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(90, 'Christhoper', 'Tingcang', 'Laway', '1987-11-12', 'Male', 'Living_in', '09273235936', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(91, 'Julie', 'Bangus', 'Carawi', '1963-11-12', 'Male', 'Married', '09239846910', 'Highschool Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(92, 'Allan', 'Remegio', 'Partolan', '1957-11-12', 'Male', 'Married', '09319728344', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(93, 'Conching', 'Areola', 'Abatikin', '1957-11-12', 'Female', 'Widow', '09239829021', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(94, 'Jemrelle', 'Diola', 'Abong', '1987-11-12', 'Male', 'Living_in', '09345326895', 'Vocational', 'Businessman', 'per_day', 'Yes', 'No', NULL, NULL),
(95, 'Danilo, sr', 'Bado', 'Eslit', '1965-11-12', 'Male', 'Married', '09244104391', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(96, 'Fada', 'Sola', 'Adiong', '1963-11-12', 'Male', 'Married', '09235544707', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(97, 'Danilo,jr', 'Bado', 'Villanueva', '1990-11-12', 'Male', 'Married', '09248093543', 'Highschool Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(98, 'Wenceslao', 'Bordaje', 'Elejorde', '2013-11-12', 'Male', 'Married', '09242252923', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(99, 'Nelson', 'Elejorde', 'Sasiny', '1976-11-12', 'Male', 'Living_in', '09320488608', 'Highschool Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(100, 'Richard', 'Bado', 'Wade', '1967-11-12', 'Male', 'Married', '09250964659', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(101, 'Francisco', 'Cabandog', 'Nellas', '1971-11-12', 'Male', 'Married', '09310166900', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(102, 'Rodrigo', 'Esma', 'Cababahay', '1951-11-12', 'Male', 'Married', '09220464638', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(103, 'Nestor', 'Buca', 'Rosario', '1959-11-12', 'Male', 'Married', '09285820549', 'Highschool Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(104, 'Arnel', 'Alaya_ay', 'Gamil', '1990-11-12', 'Male', 'Living_in', '09329352397', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(105, 'Edwin', 'Buca', 'Lezardo', '1981-11-12', 'Male', 'Married', '09242870079', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(106, 'Anthony', 'Tabimina', 'Nadaya', '1977-11-12', 'Male', 'Married', '09243326238', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(107, 'Domiemar', 'Cababan', 'Gales', '1992-11-12', 'Male', 'Living_in', '09250007621', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(108, 'Victoria', 'Cababan', 'Pepito', '1957-11-12', 'Female', 'Widow', '09287528908', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(109, 'Romeo', 'Alivio', 'Lopez', '1971-11-12', 'Male', 'Married', '09302653698', 'Highschool Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(110, 'Robin', 'Ramos', 'Zibre', '1980-11-12', 'Male', 'Living_in', '09274201919', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(111, 'Danilo', 'Ragadio', 'Sumikad', '1969-11-12', 'Male', 'Living_in', '09322957232', 'Elementary', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(112, 'Noel', 'Apongan', 'Bado', '1961-11-12', 'Male', 'Married', '09235401599', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(113, 'Epe', 'Cando ', 'Boromeo', '1971-11-12', 'Male', 'Married', '09306338745', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(114, 'Emilio', 'Pa-ausbo', 'Gallito', '1970-11-12', 'Male', 'Married', '09276455879', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(115, 'Gilacio', 'Gallito', 'Hawan', '1940-11-12', 'Male', 'Married', '09321490368', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(116, 'Arnell', 'Gallito', 'Zalsos', '1973-11-12', 'Male', 'Married', '09282877878', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(117, 'Renato', 'Daniar', 'Simeni', '1975-11-12', 'Male', 'Living_in', '09217289416', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(118, 'Servillano', 'Permacio', 'Remiticado', '1962-11-12', 'Male', 'Married', '09359995527', 'Highschool Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(119, 'Angelito', 'Zalsos', 'Animo', '1982-11-12', 'Male', 'Living_in', '09355514439', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(120, 'Gabriel', 'Jala', 'Lapuz', '1988-11-12', 'Male', 'Living_in', '09246778733', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(121, 'Jesus', 'Permacio', 'Menyosa', '1973-11-12', 'Male', 'Living_in', '09291956330', 'Elementary', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(122, 'Danny', 'Nadayag', 'Permacio', '1985-11-12', 'Male', 'Married', '09341641849', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(123, 'Rosalino', 'Permacio', 'Pemiticado', '1952-11-12', 'Male', 'Married', '09241850430', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(124, 'Danilo', 'Nadayag', 'Zalsos', '1964-11-12', 'Male', 'Married', '09237011570', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(125, 'Helbert', 'Uy', 'Bocoyo', '1962-11-12', 'Male', 'Married', '09347160474', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(126, 'Michael', 'Vicente', 'Somanoy', '1985-11-12', 'Male', 'Married', '09331302252', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(127, 'James', 'Lozano', 'Carita', '1982-11-12', 'Male', 'Living_in', '09236948960', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(128, 'Gregoria', 'Macalong', 'Gallito', '1963-11-12', 'Female', 'Widow', '09216940589', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(129, 'Danilo', 'Manlupig', 'Abarca', '1951-11-12', 'Male', 'Widow', '09346266046', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(130, 'Jessica', 'Antibo', 'Laureti', '1951-11-12', 'Female', 'Married', '09292340935', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(131, 'Dennis', 'Gabores', 'Martinez', '1986-11-12', 'Male', 'Married', '09304174227', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(132, 'Archery_2nd', 'Agapay', 'Raso', '1991-11-12', 'Male', 'Living_in', '09296473196', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(133, 'Gavalier', 'Rico', 'Restaoro', '1977-11-12', 'Male', 'Living_in', '09252637241', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(134, 'Rochel', 'Rico', 'Balles', '1977-11-12', 'Male', 'Married', '09334665304', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(135, 'Galbieto', 'Rico', 'Abarca', '1949-11-12', 'Male', 'Married', '09260347217', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(136, 'Rolly', 'Cloma', 'Tagopa', '1969-11-12', 'Male', 'Living_in', '09292430377', 'Highschool Graduate', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(137, 'Rennie', 'Manogaz', 'Canoos', '1983-11-12', 'Male', 'Married', '09322724680', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(138, 'Jay', 'Bayoloses', 'Caballer', '1979-11-12', 'Male', 'Married', '09275096348', 'Highschool Graduate', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(139, 'Alberto', 'Cabaktulan', 'Solan', '1954-11-12', 'Male', 'Married', '09215375338', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(140, 'Rosendo', 'Rotaquio', 'Malubay', '1945-11-12', 'Male', 'Married', '09314719543', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(141, 'Agapito', 'Fernandez', 'Anor', '1964-11-12', 'Male', 'Married', '09226806138', 'Vocational', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(142, 'Ronald', 'Borga', 'Caparida', '1989-11-12', 'Male', 'Living_in', '09223541473', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(143, 'Odezza', 'Ordinaria', 'Disgis', '1977-11-12', 'Female', 'Married', '09279165999', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(144, 'Pilipino', 'Fernandez', 'Anor', '1958-11-12', 'Male', 'Married', '09326704888', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(145, 'Danny', 'Gabando', 'Tugon', '1971-11-12', 'Male', 'Living_in', '09221332234', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(146, 'Jose', 'Bardillas', 'Ulclaver', '1959-11-12', 'Male', 'Married', '09289908088', 'Elementary', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(147, 'Celso', 'Baroga', 'Dag-uman', '1964-11-12', 'Male', 'Married', '09268540185', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(148, 'Golito', 'Elago', 'Fernandez', '1968-11-12', 'Male', 'Living_in', '09291750612', 'Highschool Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(149, 'Robert', 'Rosal', 'Manulat', '1976-11-12', 'Male', 'Married', '09269667165', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(150, 'Wilfredo', 'Fabillaran', 'Suarez', '1973-11-12', 'Male', 'Married', '09291017180', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(151, 'Jose_Rufo', 'Ebasan', 'Bado', '1970-11-12', 'Male', 'Married', '09293405305', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(152, 'Jessie', 'Losanto', 'Neo', '1981-11-12', 'Male', 'Married', '09319764121', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(153, 'Jaybert', 'Losanto', 'Ebasan', '1965-11-12', 'Male', 'Married', '09335175129', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(154, 'Rasol', 'Guiling', 'Bunay', '1964-11-12', 'Male', 'Married', '09336776156', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(155, 'Alfredo', 'Gapo', 'Mercader', '1950-11-12', 'Male', 'Married', '09317125556', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(156, 'Leoracito', 'Ebasan', 'Bado', '1965-11-12', 'Male', 'Married', '09227566402', 'Vocational', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(157, 'Debber', 'Bado', 'Lopez', '1991-11-12', 'Male', 'Living_in', '09234677111', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(158, 'Pablo', 'Dayday', 'Batutay', '1961-11-12', 'Male', 'Married', '09244006003', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(159, 'Salvacio', 'Pepito', 'Lozano', '1964-11-12', 'Female', 'Widow', '09303065136', 'Elementary', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(160, 'Marlon', 'Batucan', 'Cavarida', '1959-11-12', 'Male', 'Married', '09271608076', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(161, 'Romero', 'Lozano', 'Anor', '1959-11-12', 'Male', 'Married', '09224623732', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(162, 'Lalyn', 'Briones', 'Alvia', '1958-11-12', 'Female', 'Widow', '09269157341', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(163, 'Gilberto', 'Reco', 'Abarca', '1948-11-12', 'Male', 'Married', '09214588241', 'Elementary', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(164, 'Eduardo', 'Reco', 'Abarca', '1956-11-12', 'Male', 'Separated', '09268710126', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(165, 'Bernardino', 'Solidad', 'Gabati', '1958-11-12', 'Male', 'Married', '09268379188', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(166, 'Christopher', 'Uy', 'Bonayon', '1972-11-12', 'Male', 'Married', '09229051154', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(167, 'Alberto', 'Bado', 'Lomongo', '1950-11-12', 'Male', 'Married', '09308145491', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(168, 'Edrick', 'Reco', 'Benadowan', '1979-11-12', 'Male', 'Living_in', '09328779963', 'Vocational', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(169, 'Abraham', 'Ersando', 'Racasa', '1984-11-12', 'Male', 'Married', '09329307676', 'College Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(170, 'Teodora', 'Balocan', 'Morales', '1955-11-12', 'Female', 'Widow', '09233594852', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(171, 'Sherwin_Kim', 'Cabahug', 'Mandi', '1983-11-12', 'Male', 'Married', '09254014661', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(172, 'Victor', 'Buca', 'Rosario', '1958-11-12', 'Male', 'Married', '09268638572', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(173, 'Marianita', 'Florez', 'Anor', '1938-11-12', 'Female', 'Widow', '09224230183', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(174, 'Erlinda', 'Alivio', 'Perediz', '1945-11-12', 'Female', 'Widow', '09246152632', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(175, 'Ramon', 'Nacario', 'Abarca', '1964-11-12', 'Male', 'Married', '09308646371', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(176, 'Maine', 'Leonor', 'Caryo', '1941-11-12', 'Female', 'Widow', '09344736572', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(177, 'Jun_Dexter', 'Libre', 'Magigo', '1991-11-12', 'Male', 'Married', '09356140539', 'Vocational', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(178, 'Kenneth', 'Modesiyo', 'Anor', '1987-11-12', 'Male', 'Living_in', '09230088692', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(179, 'Violeta', 'Ardiente', 'Lozano', '1963-11-12', 'Female', 'Widow', '09288861607', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(180, 'Manuel', 'Echavez', 'Neri', '1961-11-12', 'Male', 'Married', '09227351740', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(181, 'Antonia', 'Jorudis', 'Berondo', '1952-11-12', 'Female', 'Widow', '09248773309', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(182, 'Demetria', 'Ardiente', 'Lozano', '1946-11-12', 'Female', 'Single', '09295310438', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(183, 'Victoriano', 'Nario', 'Nacario', '1955-11-12', 'Male', 'Living_in', '09304567776', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(184, 'Charita', 'Dayday', 'Buca', '1961-11-12', 'Female', 'Married', '09319477904', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(185, 'Lucia', 'Espoma', 'Suson', '1961-11-12', 'Female', 'Married', '09305122322', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(186, 'George_Sr.', 'Eslit', 'Ramos', '1960-11-12', 'Male', 'Married', '09258638858', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(187, 'Amel', 'Abdul', 'Otto', '1974-11-12', 'Male', 'Married', '09319129076', 'Elementary', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(188, 'Ronie', 'Casas', 'Sumapig', '1969-11-12', 'Male', 'Married', '09291392840', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(189, 'Roberto', 'Paramo', 'Marano', '1950-11-12', 'Male', 'Married', '09342008565', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(190, 'Ricardo', 'Ermac', 'Awitan', '1951-11-12', 'Male', 'Living_in', '09229981360', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(191, 'Anjo', 'Better', 'Ermac', '1987-11-12', 'Male', 'Living_in', '09295909705', 'Elementary', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(192, 'Wilma', 'Bagday', 'Ermac', '1972-11-12', 'Female', 'Widow', '09253003957', 'Elementary', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(193, 'Merwin', 'Muncal', 'Dango', '1982-11-12', 'Male', 'Living_in', '09322796234', 'College Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(194, 'Alfonso', 'Muncal', 'Reyes', '1950-11-12', 'Male', 'Married', '09319245352', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(195, 'Randolph', 'Henson', 'Bulahog', '1965-11-12', 'Male', 'Married', '09344817071', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(196, 'Rexan', 'Bahian', 'Maglasang', '1979-11-12', 'Male', 'Married', '09314218662', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(197, 'Susana', 'Bahian', 'Maglasang', '1960-11-12', 'Female', 'Married', '09357392740', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(198, 'Dennis', 'Bahian', 'Maglasang', '1983-11-12', 'Male', 'Living_in', '09343251821', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(199, 'Jyme', 'Tungao', 'Romulo', '1968-11-12', 'Male', 'Married', '09282672159', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(200, 'Narciso', 'Geralde', 'Ragasajo', '1956-11-12', 'Male', 'Married', '09291857943', 'Vocational', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(201, 'Agustin', 'Jungalan', 'Camingawan', '1941-11-12', 'Male', 'Married', '09262619066', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(202, 'Isagani_Jr.', 'Laorito', 'Alcantara', '1981-11-12', 'Male', 'Married', '09265364963', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(203, 'Nilo_Jr.', 'Dompalis', 'Guintaason', '1986-11-12', 'Male', 'Living_in', '09219382379', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(204, 'Alex', 'Nacor', 'Capangpangan', '1982-11-12', 'Male', 'Living_in', '09295829207', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(205, 'Alberto', 'Anor', 'Mariquit', '1966-11-12', 'Male', 'Married', '09294925834', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(206, 'Danillo', 'Labang', 'Pahayal', '1976-11-12', 'Male', 'Married', '09342035397', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(207, 'Roque', 'Daniel', 'Garcia', '1989-11-12', 'Male', 'Living_in', '09264855138', 'Highschool Graduate', 'Private Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(208, 'Rogger', 'Liken', 'Sutit', '1963-11-12', 'Male', 'Married', '09289496651', 'Elementary', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(209, 'Ronilo', 'Ablon', 'Calantas', '1976-11-12', 'Male', 'Married', '09271134028', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(210, 'Wiljohn', 'Nobillos', 'Okima', '1981-11-12', 'Male', 'Married', '09243540900', 'College Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(211, 'Efharni_jr.', 'Dilima', 'Rabaja', '1988-11-12', 'Male', 'Living_in', '09235911423', 'Highschool Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(212, 'Roberto', 'Maglasang', 'Ermac', '1973-11-12', 'Male', 'Married', '09236224473', 'Highschool Graduate', 'Skilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(213, 'Renato', 'Ermac', 'Caballero', '1981-11-12', 'Male', 'Living_in', '09301151058', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(214, 'Colito', 'Renes', 'Salde', '1960-11-12', 'Male', 'Married', '09226332091', 'Vocational', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(215, 'Sucoro', 'Rives', 'Salde', '1931-11-12', 'Female', 'Married', '09242458642', 'Elementary', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(216, 'Therisita', 'Gabayan', 'Dadang', '1954-11-12', 'Female', 'Widow', '09245920081', 'College Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(217, 'Lebrito', 'Capangpangan', 'Reco', '1963-11-12', 'Male', 'Married', '09348341120', 'Vocational', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(218, 'Remonito', 'Tyson', 'Panatag', '1953-11-12', 'Male', 'Married', '09253773166', 'College Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(219, 'Ignacio', 'Bilayo', 'Quimor', '1949-11-12', 'Male', 'Married', '09247860991', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(220, 'Michael', 'Lacuto', 'Amatunding', '1972-11-12', 'Male', 'Married', '09281947672', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(221, 'Edwin_jr.', 'Gabisay', 'A', '1992-11-12', 'Male', 'Living_in', '09229525201', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(222, 'Rogelio_jr.', 'Denolong', 'Balgoa', '1958-11-12', 'Male', 'Married', '09289228322', 'College Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(223, 'Oliver', 'Labial', 'Tacbobo', '1990-11-12', 'Male', 'Living_in', '09215482670', 'Vocational', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(224, 'Agripino', 'Balatayo', 'Sobrado', '1960-11-12', 'Male', 'Married', '09307671444', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(225, 'Bella', 'Badar', 'Ometer', '1951-11-12', 'Female', 'Widow', '09347697132', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(226, 'Juan', 'Tamayo', 'Sanoy', '1977-11-12', 'Male', 'Married', '09296061758', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(227, 'Ronillo', 'Apas', 'Capulac', '1961-11-12', 'Male', 'Married', '09255231085', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(228, 'Bob', 'Rujo', 'Cutab', '1980-11-12', 'Male', 'Married', '09286455593', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(229, 'Susimo', 'Rujo', 'Roylo', '1941-11-12', 'Male', 'Married', '09226591475', 'College Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(230, 'Feliciano', 'Labang', 'Himina', '1949-11-12', 'Male', 'Married', '09237637671', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(231, 'Hermino', 'Dolira', 'Labadan', '1954-11-12', 'Male', 'Married', '09330470433', 'Elementary', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(232, 'Rubin', 'Maglasang', 'Sidino', '1988-11-12', 'Male', 'Living_in', '09328207529', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(233, 'Pinyo', 'Paloma', 'Roxax', '1961-11-12', 'Male', 'Married', '09269202062', 'Vocational', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(234, 'Costiquia', 'Aligarmi', 'Anuca', '1953-11-12', 'Female', 'Widow', '09223863467', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(235, 'Priff', 'Macalong', 'Maglasang', '1990-11-12', 'Male', 'Living_in', '09258021702', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(236, 'Primo', 'Ermac', 'Cozano', '1964-11-12', 'Male', 'Married', '09249748236', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(237, 'Rehina', 'Subido', 'Egiha', '1946-11-12', 'Female', 'Widow', '09292349879', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(238, 'Bonita', 'Ermac', 'Maglasang', '1967-11-12', 'Female', 'Widow', '09218103346', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(239, 'Juditha', 'Sas', 'Maglasang', '1951-11-12', 'Female', 'Widow', '09294335511', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(240, 'Arbin', 'Manlapig', 'Sagrado', '1980-11-12', 'Male', 'Married', '09307528335', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(241, 'Waaya', 'Bation', 'Maglasang', '1954-11-12', 'Female', 'Married', '09259399123', 'Elementary', 'Businessman', 'none', 'Yes', 'No', NULL, NULL),
(242, 'Miguel', 'Maglasang', 'Anor', '1963-11-12', 'Male', 'Married', '09330264715', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(243, 'Ronnie', 'Elleso', 'Difiesta', '1982-11-12', 'Male', 'Married', '09256232845', 'Vocational', 'Businessman', 'none', 'Yes', 'No', NULL, NULL),
(244, 'Jose Manuel', 'Ablin', 'Ferre', '1984-11-12', 'Male', 'Married', '09318368812', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(245, 'Edwin', 'Balido', 'Baculio', '1977-11-12', 'Male', 'Married', '09280257202', 'Vocational', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(246, 'Manuel', 'Bacaro', 'Bargos', '1938-11-12', 'Male', 'Married', '09230625349', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(247, 'Jassie', 'Sumile', 'Babani', '1990-11-12', 'Male', 'Married', '09253621113', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(248, 'Alienniño', 'Dionaldo', 'Maglasang', '1982-11-12', 'Male', 'Married', '09245633864', 'College Graduate', 'Goverment Employee', 'none', 'Yes', 'No', NULL, NULL),
(249, 'Recardo_Jr', 'Cabanlito', 'Sabadoya', '1982-11-12', 'Male', 'Married', '09318288313', 'College Graduate', 'Skilled Worker', 'none', 'Yes', 'No', NULL, NULL),
(250, 'Abdon', 'Maglasang', 'Mamuron', '1943-11-12', 'Male', 'Married', '09322179079', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(251, 'Mario', 'Maglasang', 'Mahurog', '1956-11-12', 'Male', 'Married', '09249864512', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(252, 'Renato', 'Cabadan', 'Nambatac', '1977-11-12', 'Male', 'Married', '09345774110', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(253, 'Loe', 'Gulang', 'dela_Santos', '1979-11-12', 'Male', 'Married', '09336856655', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(254, 'Edita', 'Maglasang', 'Apaz', '1961-11-12', 'Female', 'Widow', '09275203679', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(255, 'Arneil', 'Verano', 'Oliveros', '1968-11-12', 'Male', 'Separated', '09354870450', 'Vocational', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(256, 'Gane', 'Ruawidas', 'Ditacamilto', '1983-11-12', 'Male', 'Living_in', '09289067325', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(257, 'Jhonmar', 'Ramos', 'Tubio', '1987-11-12', 'Male', 'Living_in', '09299326423', 'Vocational', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(258, 'Aloner', 'Mabime', 'Yañez', '1971-11-12', 'Male', 'Married', '09346149770', 'Vocational', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(259, 'Samuel', 'Llanez', 'Yañez', '1946-11-12', 'Male', 'Married', '09238916704', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(260, 'Niño', 'Jocsing', 'Gabino', '1983-11-12', 'Male', 'Married', '09331964129', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(261, 'Jay', 'Llanez', 'Yañez', '1953-11-12', 'Male', 'Separated', '09315605027', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(262, 'Juan', 'Yañez', 'Maglasang', '1975-11-12', 'Male', 'Widow', '09351838337', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(263, 'Raul', 'Gracia', 'Sanchez', '1961-11-12', 'Male', 'Married', '09304997102', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(264, 'Ronie', 'Maglasang', 'Ermac', '1962-11-12', 'Male', 'Married', '09291285509', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(265, 'Jestony', 'Aneora', 'Bado', '1983-11-12', 'Male', 'Living_in', '09349056663', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(266, 'Fediric', 'Togonon', 'Yarag', '1967-11-12', 'Male', 'Married', '09255633578', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(267, 'Ruel', 'Roardilas', 'Pabre', '1971-11-12', 'Male', 'Married', '09223389420', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(268, 'Welfredo', 'Barrette', 'Esabagas', '1955-11-12', 'Male', 'Married', '09276938871', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(269, 'Lloyd', 'Barrette', 'Salingay', '1983-11-12', 'Male', 'Married', '09216502318', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(270, 'Waide', 'Montor', 'Muhamad', '1979-11-12', 'Male', 'Married', '09313986111', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(271, 'Sunday', 'Delpin', 'Alima', '1973-11-12', 'Male', 'Married', '09250544278', 'Vocational', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(272, 'Arsinion', 'Gamotia', 'Tamayo', '1941-11-12', 'Male', 'Married', '09252288414', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(273, 'Rodrigo', 'Camiroy', 'Sapyo', '1964-11-12', 'Male', 'Single', '09320935823', 'Highschool Graduate', 'Businessman', 'none', 'Yes', 'No', NULL, NULL),
(274, 'Romolo', 'Camiroy', 'Sapyo', '1965-11-12', 'Male', 'Widow', '09343716924', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(275, 'Rolando', 'Camiroy', 'Sapyo', '1962-11-12', 'Male', 'Single', '09349825872', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(276, 'Jaynard', 'Alfecha', 'Lugonsad', '1989-11-12', 'Male', 'Living_in', '09327241546', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(277, 'Edgar_Sr.', 'Remigio', 'Partolan', '1954-11-12', 'Male', 'Married', '09332634951', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(278, 'Francisco', 'Antony', 'Singuran', '1982-11-12', 'Male', 'Married', '09308190213', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(279, 'Eusticio', 'Herira', 'Ermac', '1951-11-12', 'Male', 'Single', '09338055189', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(280, 'Emelita', 'Herira', 'Macalaying', '1953-11-12', 'Female', 'Widow', '09318619252', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(281, 'Rexie', 'Ermac', 'Barode', '1983-11-12', 'Male', 'Living_in', '09214963901', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(282, 'Jerwin', 'Wasawas', 'Pitogo', '1988-11-12', 'Male', 'Married', '09317313386', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(283, 'Rodel', 'Salaan', 'Ermac', '1981-11-12', 'Male', 'Married', '09325139638', 'Elementary', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(284, 'Luis', 'Dutolyo', 'Ardiente', '1965-11-12', 'Male', 'Married', '09336328942', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(285, 'Purperio', 'Malinguit', 'Omandam', '1988-11-12', 'Male', 'Married', '09224373292', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(286, 'Marino', 'Ermac', 'Losano', '1968-11-12', 'Male', 'Married', '09334450641', 'Elementary', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(287, 'Efren', 'Lagrada', 'Gumisada', '1961-11-12', 'Male', 'Married', '09274443415', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(288, 'Glen', 'Ermac', 'Castillon', '1975-11-12', 'Male', 'Married', '09343734812', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(289, 'Vinanlia', 'Castillon', 'Ermac', '1952-11-12', 'Female', 'Married', '09324227321', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(290, 'Arnold', 'Respecia', 'Calibo', '1972-11-12', 'Male', 'Married', '09322966176', 'College Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(291, 'Celso', 'Mainit', 'Vargas', '1969-11-12', 'Male', 'Married', '09295873928', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(292, 'Herey', 'Sapyot', 'Plati', '1980-11-12', 'Male', 'Living_in', '09304201060', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(293, 'Jocelyn', 'Alfecha', 'Lagunsad', '1978-11-12', 'Female', 'Single', '09331346974', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(294, 'Michael', 'Odgudia', 'Rabuyo', '1972-11-12', 'Male', 'Married', '09246224187', 'College Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(295, 'Bedandino', 'Respisya', 'June', '1943-11-12', 'Male', 'Married', '09352795376', 'Elementary', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(296, 'Julita', 'Cenas', 'Egues', '1973-11-12', 'Female', 'Married', '09327635094', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(297, 'Alexander', 'Diango', 'Ermac', '1981-11-12', 'Male', 'Married', '09355639659', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(298, 'Junrell', 'Hinon', 'Rilimari', '1984-11-12', 'Male', 'Married', '09214132082', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(299, 'Dionicio', 'Albatera', 'Calo', '1979-11-12', 'Male', 'Married', '09262028743', 'Highschool Graduate', 'Unemployed', 'Permanent', 'Yes', 'No', NULL, NULL),
(300, 'Elezardo', 'Danamaria', 'Bergonia', '1972-11-12', 'Male', 'Married', '09230857900', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(301, 'Jerry', 'Ermac', 'Dag-uman', '1976-11-12', 'Male', 'Married', '09213926364', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(302, 'Rene', 'Bantilan', 'Angay', '1972-11-12', 'Male', 'Married', '09336597271', 'College Graduate', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(303, 'Reynaldo', 'Ermac', 'Lacanariya', '1957-11-12', 'Male', 'Married', '09280024650', 'College Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(304, 'Roberto', 'Ermac', 'Ract', '1972-11-12', 'Male', 'Married', '09270320098', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(305, 'Ernesto', 'Tabangcoran', 'Malopange', '1974-11-12', 'Male', 'Married', '09309200917', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(306, 'Ciris', 'Casira', 'Pastor', '1983-11-12', 'Male', 'Married', '09283897527', 'Vocational', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(307, 'Edward_Jr.', 'Diango', 'Ermac', '1978-11-12', 'Male', 'Living_in', '09223604083', 'Highschool Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL);
INSERT INTO `residents` (`id`, `first_name`, `last_name`, `middle_name`, `birthdate`, `gender`, `civil_status`, `contact_number`, `education`, `occupation_category`, `occupation_specific`, `if_voter`, `if_disabled`, `created_at`, `updated_at`) VALUES
(308, 'Edwardo', 'Diango', 'Nabong', '1955-11-12', 'Male', 'Married', '09262842673', 'Elementary', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(309, 'Eric', 'Masirin', 'Manggubat', '1979-11-12', 'Male', 'Married', '09311741095', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(310, 'Erwin', 'Ruiz', 'Gapor', '1969-11-12', 'Male', 'Married', '09312483471', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(311, 'Salvador', 'Nano', 'Pangalo', '1975-11-12', 'Male', 'Married', '09349217661', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(312, 'Adoracion', 'Ermac', 'Domadag', '1976-11-12', 'Female', 'Single', '09318333035', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(313, 'Allen', 'Corniro', 'Cout', '1977-11-12', 'Female', 'Widow', '09331454305', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(314, 'Almer', 'Ermac', 'Dumadag', '1977-11-12', 'Male', 'Married', '09239176088', 'Elementary', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(315, 'Geofry', 'Nantes', 'Susoh', '1970-11-12', 'Male', 'Married', '09327143158', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(316, 'Dennis', 'Lagunsad', 'Joloyohoy', '1974-11-12', 'Male', 'Single', '09253612168', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(317, 'Sunny', 'Corniro', 'Quilohano', '1975-11-12', 'Male', 'Married', '09331704745', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(318, 'Teddy', 'Quigol', 'Gonzaga', '1978-11-12', 'Male', 'Married', '09320425998', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(319, 'Marcian', 'Ermac', 'Lacio', '1944-11-12', 'Male', 'Married', '09267287985', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(320, 'Elsa', 'Anggot', 'Larot', '1951-11-12', 'Female', 'Widow', '09325130694', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(321, 'Michael', 'Lupiz', 'delos_Reyes', '1977-11-12', 'Male', 'Married', '09275856612', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(322, 'Dennis', 'Larot', 'Castillon', '1976-11-12', 'Male', 'Married', '09226510977', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(323, 'Hygenus', 'Stomata', 'Romanigos', '1964-11-12', 'Male', 'Widow', '09279559547', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(324, 'Asther', 'Canggas', 'Dawis', '1981-11-12', 'Male', 'Married', '09349709596', 'College Graduate', 'Skilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(325, 'Feresita', 'Orante', 'Lahoylahoy', '1945-11-12', 'Female', 'Widow', '09273817315', 'Elementary', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(326, 'Vicente', 'Myro', 'Castillon', '1965-11-12', 'Male', 'Married', '09213881642', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(327, 'Herardo', 'Rerera', 'Burda', '1970-11-12', 'Male', 'Married', '09327322044', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(328, 'Josifina', 'Anino', 'Jacerna', '1939-11-12', 'Female', 'Widow', '09290713074', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(329, 'Nestor', 'Bagamaspad', 'Bultallo', '1963-11-12', 'Male', 'Married', '09288951050', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(330, 'Alay', 'Magamaspad', 'Bulotardo', '1969-11-12', 'Male', 'Married', '09245902192', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(331, 'Nilva', 'Quinain', 'Lomongo', '1954-11-12', 'Female', 'Widow', '09227396461', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(332, 'Winefredo', 'Buscano', 'Martines', '1955-11-12', 'Male', 'Married', '09258048535', 'Elementary', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(333, 'Eljun', 'Ocop', 'Buma-a', '1962-11-12', 'Male', 'Married', '09284622014', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(334, 'Noel', 'Nari', 'Darunay', '1965-11-12', 'Male', 'Married', '09285936825', 'College Graduate', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(335, 'Alice', 'Lozano', 'Bado', '1974-11-12', 'Female', 'Married', '09236233417', 'College Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(336, 'Wilfred', 'Timo', 'delosario', '1991-11-12', 'Male', 'Married', '09215080177', 'Highschool Graduate', 'Unemployed', 'Permanent', 'Yes', 'No', NULL, NULL),
(337, 'Ronaldo', 'Roque', 'Manyabo', '1983-11-12', 'Male', 'Married', '09224194406', 'College Graduate', 'Skilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(338, 'Elvira', 'Anoy', 'Lozano', '1965-11-12', 'Male', 'Widow', '09297349736', 'Vocational', 'Businessman', 'Permanent', 'Yes', 'No', NULL, NULL),
(339, 'Alfredo', 'Lozano', 'Anor', '1965-11-12', 'Male', 'Married', '09317197110', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(340, 'Christopher', 'Robrigo', 'Salaan', '1965-11-12', 'Male', 'Single', '09271715407', 'Highschool Graduate', 'Private Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(341, 'Juan', 'Rosal', 'dela_Rosa', '1968-11-12', 'Male', 'Married', '09217575633', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(342, 'Maria', 'Go', 'Dy', '1946-11-12', 'Female', 'Widow', '09243505123', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(343, 'Raynel', 'Capangpangan', 'Sino', '1985-11-12', 'Male', 'Married', '09287108526', 'College Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(344, 'Delapiña', 'Villaver', 'Cantomaria', '1964-11-12', 'Male', 'Married', '09244775212', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(345, 'Vince', 'Cagas', 'Risonabli', '1982-11-12', 'Male', 'Living_in', '09228129893', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(346, 'Jenilyn', 'Alivio', 'Quidlat', '1976-11-12', 'Male', 'Single', '09234310395', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(347, 'Glenda', 'Basilgo', 'Cabahug', '1962-11-12', 'Female', 'Single', '09255875073', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(348, 'Jipe', 'Kulita', 'Santander', '1984-11-12', 'Male', 'Living_in', '09244167001', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(349, 'Marsita', 'Uy', 'Alicabo', '1936-11-12', 'Female', 'Widow', '09219221382', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(350, 'Elmir', 'Lacio', 'Quidlat', '1970-11-12', 'Male', 'Married', '09233129749', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(351, 'Emily', 'Virtudez', 'Lacio', '1969-11-12', 'Female', 'Married', '09333404160', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(352, 'Erlinda', 'Virtudez', 'Orasion', '1944-11-12', 'Female', 'Widow', '09233254970', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(353, 'Guelberto_Jr.', 'Duran', 'Soco', '1985-11-12', 'Male', 'Living_in', '09300757509', 'College Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(354, 'Ribecca', 'Duran', 'Soco', '1959-11-12', 'Female', 'Widow', '09349870594', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(355, 'Ray', 'Tahuda', 'Ebaray', '1980-11-12', 'Male', 'Married', '09336516772', 'Vocational', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(356, 'Luciano', 'Soco', 'Mariquit', '1950-11-12', 'Female', 'Married', '09321946527', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(357, 'Richard', 'Sulipan', 'Bongabang', '1966-11-12', 'Male', 'Living_in', '09289559261', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(358, 'Plopanic', 'Mahusay', 'Limpangog', '1959-11-12', 'Male', 'Married', '09254810703', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(359, 'Dan_Vanteri', 'Ramonis', 'Suco', '1983-11-12', 'Male', 'Living_in', '09228577107', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(360, 'Leonardo', 'Cabahug', 'Mariquit', '1954-11-12', 'Male', 'Married', '09327062660', 'Elementary', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(361, 'Pablo', 'Alcala', 'Gwarin', '1954-11-12', 'Male', 'Married', '09295534045', 'College Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(362, 'Paul Rey', 'Alcala', 'Fuentes', '1994-11-12', 'Male', 'Living_in', '09350943908', 'Vocational', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(363, 'Herry', 'Fuentes', 'Cabor', '1950-11-12', 'Male', 'Married', '09266035784', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(364, 'Herito', 'Fuentes', 'Cadang', '1981-11-12', 'Male', 'Living_in', '09358510776', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(365, 'Carlo', 'dela_Peña', 'Cabahug', '1979-11-12', 'Male', 'Living_in', '09282046059', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(366, 'Verhil', 'Mata', 'Cabahug', '1981-11-12', 'Male', 'Married', '09308547984', 'Highschool Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(367, 'Decideryo', 'Lucero', 'Tibes', '1968-11-12', 'Male', 'Married', '09265713790', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(368, 'Marvin', 'Fernandez', 'Ceberyo', '1982-11-12', 'Male', 'Married', '09233111861', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(369, 'Carlos', 'Cabahug', 'Mariquit', '1953-11-12', 'Male', 'Widow', '09359002711', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(370, 'Ruel', 'Abdan', 'Cabang', '1975-11-12', 'Male', 'Married', '09237530339', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(371, 'Michael', 'Pimentel', 'Austero', '1978-11-12', 'Male', 'Married', '09337518532', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(372, 'Ariel', 'Silada', 'Divina', '1964-11-12', 'Male', 'Married', '09353859746', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(373, 'Glenn', 'Luloguban', 'Oblemar', '1988-11-12', 'Male', 'Married', '09343224988', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(374, 'Miguelito', 'Cabahug', 'Mariquit', '1974-11-12', 'Male', 'Married', '09247798381', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(375, 'Richard', 'Lahoylahoy', 'Maglasang', '1979-11-12', 'Male', 'Married', '09298270997', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(376, 'Dionesio', 'Wagas', 'Silute', '1981-11-12', 'Male', 'Married', '09244488995', 'Vocational', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(377, 'Romel', 'Cabahug', 'Midilo', '1989-11-12', 'Male', 'Living_in', '09344620297', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(378, 'Bartolome', 'Cabahug', 'Mariquit', '1956-11-12', 'Male', 'Married', '09302716308', 'Elementary', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(379, 'Arnold', 'Heyrana', 'Ridundo', '1970-11-12', 'Male', 'Living_in', '09257878594', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(380, 'Alfredo', 'Cabahug', '', '1977-11-12', 'Male', 'Single', '09307993438', 'Elementary', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(381, 'Roland', 'Cabahug', 'Gabunya', '1985-11-12', 'Male', 'Living_in', '09326552835', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(382, 'Gudofredo', 'Cabahug', 'Mariquit', '1959-11-12', 'Male', 'Married', '09219105106', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(383, 'Duglas', 'Garcia', 'Binsolga', '1975-11-12', 'Male', 'Living_in', '09326248730', 'College Graduate', 'Private Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(384, 'Leonardo', 'Aguilar', 'Dilima', '1982-11-12', 'Male', 'Married', '09214650851', 'Elementary', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(385, 'Gersiel', 'Talhedo', 'Bercide', '1977-11-12', 'Male', 'Married', '09252386801', 'College Graduate', 'Unemployed', 'pe', 'Yes', 'No', NULL, NULL),
(386, 'Zeo', 'Abran', 'Cabahug', '1970-11-12', 'Male', 'Married', '09253415394', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(387, 'Rashel', 'Ugna', 'Baringas', '1971-11-12', 'Male', 'Married', '09320202391', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(388, 'Carmilita', 'Omalay', 'Andos', '1969-11-12', 'Male', 'Widow', '09220911852', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(389, 'Ricky', 'Apique', 'Gapor', '1977-11-12', 'Male', 'Married', '09232029602', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(390, 'Ernie', 'Pipito', 'Puterti', '1962-11-12', 'Male', 'Married', '09222468158', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(391, 'Jessie', 'Ometer', 'Camingao', '1974-11-12', 'Male', 'Married', '09349646986', 'Highschool Graduate', 'Unemployed', 'Permanent', 'Yes', 'No', NULL, NULL),
(392, 'Ricky', 'Sakin', 'Jemika', '1974-11-12', 'Male', 'Married', '09290140640', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(393, 'Renny_Boy', 'Pipito', 'Puterti', '1978-11-12', 'Male', 'Living_in', '09228845436', 'Elementary', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(394, 'Rolando', 'Jayson', 'Austero', '1965-11-12', 'Male', 'Married', '09236170807', 'Elementary', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(395, 'Robin', 'Cacinero', 'Cabisoris', '1955-11-12', 'Male', 'Married', '09231403502', 'College Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(396, 'Erlito', 'Pasco', 'Quimod', '1961-11-12', 'Male', 'Living_in', '09239158199', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(397, 'Jayson', 'Alcaras', 'Bawigas', '1980-11-12', 'Male', 'Single', '09352741710', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(398, 'Runato', 'Siapel', 'Baricuatro', '1951-11-12', 'Male', 'Married', '09257887538', 'Elementary', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(399, 'Edwin', 'Aguinod', 'Tumanpony', '1970-11-12', 'Male', 'Married', '09221922557', 'Elementary', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(400, 'Armand', 'Dag-uman', 'Yabug', '1967-11-12', 'Male', 'Married', '09324415151', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(401, 'Danilo', 'Bantayan', 'Panoayan', '1972-11-12', 'Male', 'Married', '09273996200', 'Elementary', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(402, 'Joel', 'Siapel', 'Bantilis', '1974-11-12', 'Male', 'Married', '09250982548', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(403, 'Wilfredo', 'Bontilaw', 'Dabogo', '1965-11-12', 'Male', 'Married', '09284568349', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(404, 'Raymond', 'Jayzoy', 'Estiro', '1964-11-12', 'Male', 'Married', '09216189268', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(405, 'Filipe', 'Pacada', 'Tanduyan', '1964-11-12', 'Male', 'Married', '09249059526', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(406, 'Real', 'Cabahug', 'Moncelo', '1980-11-12', 'Male', 'Married', '09325363245', 'Highschool Graduate', 'Goverment Employee', 'per_day', 'Yes', 'No', NULL, NULL),
(407, 'Jhon_Carlo', 'Dag-uman', 'Callo', '1987-11-12', 'Male', 'Married', '09236161863', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(408, 'Dominador', 'Dag-uman', 'Yabo', '1960-11-12', 'Male', 'Married', '09317474383', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(409, 'Danilo', 'Austero', 'Mata', '1972-11-12', 'Male', 'Married', '09241295884', 'Highschool Graduate', 'Private Employee', 'p', 'Yes', 'No', NULL, NULL),
(410, 'Roberto', 'Villa_Hermosa', 'Limpangog', '1962-11-12', 'Male', 'Married', '09297850616', 'Elementary', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(411, 'Danti', 'Saploy', 'Yurom', '1974-11-12', 'Male', 'Married', '09333153720', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(412, 'Haime', 'Rubia', 'Perez', '1951-11-12', 'Male', 'Married', '09298548270', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(413, 'Alojandro', 'Galbes', 'Acusar', '1962-11-12', 'Male', 'Married', '09214069472', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(414, 'leonides', 'Rubia', 'Rivas', '1989-11-12', 'Male', 'Married', '09278352068', 'Vocational', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(415, 'Marlui', 'Repicio', 'Demicillo', '1984-11-12', 'Male', 'Living_in', '09245821694', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(416, 'Rumolo', 'Matahong', 'Demicillo', '1987-11-12', 'Male', 'Married', '09269318338', 'Elementary', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(417, 'Orvelie', 'Apique', 'Gapor', '1974-11-12', 'Male', 'Married', '09277287698', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(418, 'Dionicio', 'Sumandora', 'Dalion', '1988-11-12', 'Male', 'Living_in', '09230231800', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(419, 'Felix', 'Quidlat', 'Nillamo', '1986-11-12', 'Male', 'Living_in', '09230616405', 'Elementary', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(420, 'Raul', 'Chen_Foo', 'Lozano', '1971-11-12', 'Male', 'Married', '09339691994', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(421, 'Ruel', 'Benabawan', 'Loreto', '1981-11-12', 'Male', 'Living_in', '09247771549', 'Elementary', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(422, 'Edwardo', 'Malonhaw', 'Sembao', '1961-11-12', 'Male', 'Married', '09263397219', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(423, 'Hobeto', 'Florez', 'Kabele', '1963-11-12', 'Male', 'Married', '09250902049', 'College Graduate', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(424, 'Herina', 'Gallena', 'Arauni', '1951-11-12', 'Female', 'Widow', '09326490225', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(425, 'Analyn', 'Bado', 'Magsayo', '1977-11-12', 'Female', 'Single', '09235428431', 'College Graduate', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(426, 'Rey', 'Lipasan', 'Coneras', '1981-11-12', 'Male', 'Married', '09341212523', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(427, 'Pedro_Sr.', 'Bado', 'Magsayo', '1954-11-12', 'Female', 'Married', '09270042825', 'Elementary', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(428, 'Vicente', 'Ondong', 'Makapas', '1969-11-12', 'Male', 'Married', '09339620440', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(429, 'Simeon', 'Lopez', 'Mokoy', '1983-11-12', 'Male', 'Living_in', '09350165755', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(430, 'Fredo', 'Fagaloyon', 'Bado', '1957-11-12', 'Male', 'Married', '09280498698', 'Highschool Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(431, 'Christian', 'Iguado', 'Tanyeri', '2013-11-12', 'Male', 'Single', '09251402929', 'College Graduate', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(432, 'Elmer', 'Sacapan', 'Nagal', '1955-11-12', 'Male', 'Married', '09342446835', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(433, 'Leo', 'Suminget', 'Maglangit', '1945-11-12', 'Male', 'Married', '09262261295', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(434, 'Teotimo', 'Saraosad', 'Gelakomi', '1940-11-12', 'Male', 'Married', '09337706362', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(435, 'Rey', 'Lopera', 'Olandria', '1973-11-12', 'Male', 'Married', '09304889770', 'College Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(436, 'Eigene', 'Lopera', 'Olandria', '1971-11-12', 'Male', 'Married', '09298333607', 'Vocational', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(437, 'Alan', 'Lopera', 'Olandria', '1974-11-12', 'Male', 'Married', '09228165670', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(438, 'Romeo', 'Alivio', 'Lopez', '1970-11-12', 'Male', 'Married', '09329656503', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(439, 'John_Michael', 'Cebusana', 'Malonhaw', '1988-11-12', 'Male', 'Married', '09247324334', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(440, 'Danny', 'Surigao', 'Orsomal', '1971-11-12', 'Male', 'Married', '09317188166', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(441, 'James_Nicky', 'Abelosa', 'Calimpong', '1991-11-12', 'Male', 'Living_in', '09357786288', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(442, 'Floreine', 'Laurente', 'Permacio', '1966-11-12', 'Male', 'Married', '09219713318', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(443, 'Joel', 'Laurenti', 'Permacio', '1972-11-12', 'Male', 'Married', '09335157240', 'Elementary', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(444, 'Eric', 'Laurenti', 'Permacio', '1983-11-12', 'Male', 'Living_in', '09215831497', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(445, 'Diosdado', 'Baran', 'Fernandez', '1961-11-12', 'Male', 'Married', '09321400926', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(446, 'Julyo', 'Laurenti', 'Permacio', '1983-11-12', 'Male', 'Single', '09264327425', 'Elementary', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(447, 'Nelson', 'Cadampong', 'Nanaman', '1953-11-12', 'Male', 'Living_in', '09238666264', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(448, 'Pebreto', 'Laurenti', 'Permacio', '1973-11-12', 'Male', 'Living_in', '09250714219', 'Elementary', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(449, 'Ermenia', 'Antiro', 'Magbasa', '1985-11-12', 'Female', 'Widow', '09228916990', 'Elementary', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(450, 'Julieta', 'Laurenti', 'Antibo', '1955-11-12', 'Female', 'Widow', '09280319812', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(451, 'Mark', 'Sierra', 'Tapales', '1982-11-12', 'Male', 'Married', '09214302024', 'College Graduate', 'Unemployed', 'per_day', 'Yes', 'No', NULL, NULL),
(452, 'Nio', 'Dayundong', 'Arceña', '1981-11-12', 'Male', 'Living_in', '09238657319', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(453, 'Henry', 'Sator', 'Laurenti', '1973-11-12', 'Male', 'Married', '09336785101', 'Vocational', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(454, 'Arnold', 'Sator', 'Laurenti', '1966-11-12', 'Male', 'Married', '09231054675', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(455, 'Acioncion', 'Curpos', 'Estilone', '1968-11-12', 'Female', 'Widow', '09225428718', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(456, 'Estella', 'Cabiling', 'Lozano', '1968-11-12', 'Female', 'Widow', '09289568205', 'Elementary', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(457, 'Pepito', 'Corpuz', 'Capangpangan', '1945-11-12', 'Male', 'Married', '09315283033', 'Elementary', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(458, 'Serhiyo', 'Pezon', 'Basonido', '1957-11-12', 'Male', 'Living_in', '09226439422', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(459, 'Judy_Ann', 'Putalan', 'Corpuz', '1987-11-12', 'Female', 'Married', '09235410543', 'Vocational', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(460, 'Andre_Serald', 'Bado', 'Ybañez', '1988-11-12', 'Male', 'Living_in', '09220267864', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(461, 'Allan', 'Bado', 'Roañez', '1963-11-12', 'Male', 'Widow', '09274318195', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(462, 'Ernisto', 'Castillon', 'Angat', '1956-11-12', 'Male', 'Married', '09229838252', 'Elementary', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(463, 'Arielo', 'Legotan', 'Makipig', '1977-11-12', 'Male', 'Married', '09354154907', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(464, 'Juhinia', 'Torreon', 'Torrionava', '1988-11-12', 'Female', 'Widow', '09287206913', 'Elementary', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(465, 'Disiderio', 'Aguilar', 'Ramahilyas', '1954-11-12', 'Male', 'Married', '09323797995', 'Elementary', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(466, 'Jeraldin', 'Aguilar', 'Terrado', '1983-11-12', 'Female', 'Single', '09351158571', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(467, 'Lany_Roy', 'Empasis', 'Salvador', '1984-11-12', 'Male', 'Living_in', '09251939587', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(468, 'Disiderio', 'Aguilar', 'Terado', '1991-11-12', 'Male', 'Living_in', '09307206341', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(469, 'Dennis', 'Capuno', 'Lozano', '1979-11-12', 'Male', 'Married', '09280543419', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(470, 'Edwin', 'Empasis', 'Bagninay', '1977-11-12', 'Male', 'Married', '09260678156', 'Elementary', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(471, 'Lingcob', 'Yascer', 'Alawe', '1994-11-12', 'Male', 'Living_in', '09331758411', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(472, 'Antonio', 'Salde', 'Lopez', '1968-11-12', 'Male', 'Married', '09243630343', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(473, 'Jose', 'Ermac', 'Teliba', '1971-11-12', 'Male', 'Married', '09254461876', 'Highschool Graduate', 'Private Employee', 'pe', 'Yes', 'No', NULL, NULL),
(474, 'Gabino', 'Ermac', 'Teliba', '1973-11-12', 'Male', 'Married', '09214847625', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(475, 'Regina', 'Ermac', 'Diliba', '1935-11-12', 'Female', 'Widow', '09263889155', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(476, 'Cornillo', 'Ermac', 'Teliba', '1963-11-12', 'Male', 'Married', '09352929540', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(477, 'Edwin', 'Reroma', 'Aluador', '1986-11-12', 'Male', 'Married', '09355460773', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(478, 'Joel', 'Capitan', 'Canabi', '1968-11-12', 'Male', 'Married', '09323574388', 'College Graduate', 'Businessman', 'per', 'Yes', 'No', NULL, NULL),
(479, 'Lito_Sr.', 'Torreon', 'Turriunba', '1969-11-12', 'Male', 'Married', '09304782439', 'Elementary', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(480, 'Jaypel', 'Torreon', 'Jabines', '1988-11-12', 'Male', 'Living_in', '09305381706', 'Elementary', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(481, 'Pablito_Jr.', 'Hubernadas', 'Jaurigue', '1985-11-12', 'Male', 'Married', '09253817887', 'Vocational', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(482, 'Jeboy', 'Ermac', 'Lozano', '1977-11-12', 'Male', 'Married', '09257136218', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(483, 'Gardo', 'Apongan', 'Bado', '1959-11-12', 'Male', 'Married', '09271259248', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(484, 'Andrea', 'Apongan', 'Bado', '1928-11-12', 'Female', 'Widow', '09357437461', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(485, 'Husita', 'Pepito', 'Monañes', '1952-11-12', 'Female', 'Widow', '09352527047', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(486, 'Provir', 'Tore', 'Pairat', '1985-11-12', 'Male', 'Single', '09271983736', 'College Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(487, 'Jhoqret', 'Quinte', 'Varga', '1984-11-12', 'Male', 'Living_in', '09273226992', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(488, 'Rolando', 'Apongan', 'Bado', '1946-11-12', 'Male', 'Married', '09325917791', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(489, 'Albert', 'Aso', 'Garcia', '1979-11-12', 'Male', 'Living_in', '09321866029', 'Vocational', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(490, 'Jenna', 'Payas', 'Oropisa', '1981-11-12', 'Female', 'Married', '09331481138', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(491, 'Danny', 'Legaspi', 'Cagaanan', '1980-11-12', 'Male', 'Married', '09274049866', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(492, 'Nicanor', 'Pepito', 'Juntilla', '1974-11-12', 'Male', 'Married', '09320730104', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(493, 'Teodoro', 'Aniasco', 'Coiroha', '1934-11-12', 'Male', 'Married', '09271742240', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(494, 'Juan', 'Broñidor', 'Montibon', '1957-11-12', 'Male', 'Married', '09252449411', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(495, 'Nestor', 'Flores', 'Gomunkig', '1975-11-12', 'Male', 'Living_in', '09237092069', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(496, 'Ernesto', 'Andos', 'Nentola', '1970-11-12', 'Male', 'Married', '09305238598', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(497, 'Elbisito', 'Anding', 'Bukol', '1971-11-12', 'Male', 'Widow', '09312063089', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(498, 'Reynaldo', 'Maglasang', 'Villamor', '1958-11-12', 'Male', 'Married', '09291339174', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(499, 'Mario', 'Maglasang', 'Incabo', '1975-11-12', 'Male', 'Living_in', '09272261009', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(500, 'Romel', 'Maliao', 'Yunglo', '1970-11-12', 'Male', 'Married', '09242807469', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(501, 'Alan', 'Amongos', 'Appay', '1976-11-12', 'Male', 'Married', '09259649563', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(502, 'Clarito', 'Itom', 'Sanas', '1983-11-12', 'Male', 'Married', '09264971414', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(503, 'Arnel', 'Germoñea', 'Sumagang', '1987-11-12', 'Male', 'Living_in', '09342920882', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(504, 'Vector', 'Pompales', 'Parame', '1973-11-12', 'Male', 'Married', '09243344126', 'Elementary', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(505, 'Raymundo', 'Mala-ubang', 'Cabadan', '1965-11-12', 'Male', 'Married', '09224409069', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(506, 'Lhove_Bryan', 'Maghanoy', 'Chiong', '1980-11-12', 'Male', 'Married', '09283253538', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(507, 'Kiddy', 'Miza', 'Vangit', '1978-11-12', 'Male', 'Married', '09265892676', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(508, 'Erwin', 'Pahinte', 'Tumagad', '1968-11-12', 'Male', 'Married', '09270212767', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(509, 'Danilo', 'Manggubat', 'Dansasala', '1953-11-12', 'Male', 'Separated', '09316249016', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(510, 'Jessie', 'Dandasan', 'Macalong', '1976-11-12', 'Male', 'Married', '09309549744', 'Highschool Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(511, 'Gerami', 'Salvo', 'Jegoros', '1983-11-12', 'Male', 'Living_in', '09297627009', 'College Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(512, 'Arturo', 'Salvo', 'Baskes', '1963-11-12', 'Male', 'Married', '09286777588', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(513, 'Allan', 'Salaan', 'Ermac', '1983-11-12', 'Male', 'Married', '09351990390', 'Elementary', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(514, 'Rannylo', 'Salaan', 'Ermac', '1980-11-12', 'Male', 'Single', '09307224229', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(515, 'Antonio', 'Barat', 'Gabulay', '1970-11-12', 'Male', 'Married', '09254944867', 'Elementary', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(516, 'Vivian', 'Bavyera', 'Pabriga', '1956-11-12', 'Male', 'Widow', '09256402786', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(517, 'Portasyon', 'Generoso', 'Gabreros', '1952-11-12', 'Male', 'Married', '09294997388', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(518, 'Julieta', 'Salazar', 'Fabria', '1973-11-12', 'Female', 'Separated', '09239641191', 'College Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(519, 'Dinah', 'Pocot', 'Arnejo', '1974-11-12', 'Female', 'Single', '09247753660', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(520, 'Jess_Roel', 'Nabua', 'Bontilao', '1977-11-12', 'Male', 'Married', '09288995771', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(521, 'Steban', 'Viña', 'Elcamel', '1973-11-12', 'Male', 'Married', '09255177419', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(522, 'Gulito', 'Amanariio', 'Ramogsok', '1958-11-12', 'Male', 'Living_in', '09216708037', 'College Graduate', 'Private Employee', 'pe', 'Yes', 'No', NULL, NULL),
(523, 'Milsan', 'Padillo', 'Mariquit', '1981-11-12', 'Male', 'Living_in', '09239417584', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(524, 'Fernando', 'Poca', 'Tilawan', '1953-11-12', 'Male', 'Married', '09347920739', 'Vocational', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(525, 'Marina', 'Padillo', 'Mariquit', '1946-11-12', 'Female', 'Widow', '09342437890', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(526, 'Rolli', 'Nanaman', 'Samaing', '1972-11-12', 'Male', 'Living_in', '09348332176', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(527, 'Alfredo', 'Nanaman', 'Quidlat', '1950-11-12', 'Male', 'Widow', '09339844047', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(528, 'Nersiso', 'Ojalis', 'Arde', '1987-11-12', 'Male', 'Living_in', '09249998676', 'Vocational', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(529, 'Editha', 'Nanaman', 'Quidlat', '1962-11-12', 'Female', 'Living_in', '09227056578', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(530, 'Meluin', 'Amarga', 'Nabangi', '1969-11-12', 'Male', 'Married', '09304791383', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(531, 'Rodrego', 'Amarga', 'Mabangit', '1966-11-12', 'Male', 'Living_in', '09219310825', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(532, 'Laberto_Jr.', 'Maghinay', 'Jumawan', '1945-11-12', 'Male', 'Married', '09251680202', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(533, 'Renisito', 'Hepowit', 'Canillo', '1968-11-12', 'Male', 'Married', '09312027312', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(534, 'Arman', 'Canbaya', 'Nanaman', '1989-11-12', 'Male', 'Living_in', '09342536278', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(535, 'Roel', 'Villanueva', 'Rabusa', '1970-11-12', 'Male', 'Married', '09280811748', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(536, 'Jerry', 'Cabasag', 'Pamatim', '1973-11-12', 'Male', 'Married', '09316329514', 'Vocational', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(537, 'Christina', 'Labrador', 'Caparida', '1942-11-12', 'Female', 'Widow', '09267627867', 'Elementary', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(538, 'Omay', 'Ampoan', 'Palok', '1968-11-12', 'Male', 'Married', '09278387846', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(539, 'Ferlan', 'Ligas', 'Mindosa', '1970-11-12', 'Male', 'Living_in', '09341167802', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(540, 'Prelancio', 'Palangcon', 'Caato', '1986-11-12', 'Male', 'Married', '09260767599', 'College Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(541, 'Ebahem', 'Demao', 'Baladellas', '1968-11-12', 'Male', 'Married', '09350308864', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(542, 'Victor', 'Cabaniro', 'Bernionez', '1976-11-12', 'Male', 'Married', '09222253496', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(543, 'Cucricio', 'Bueno', 'Tranilla', '1948-11-12', 'Male', 'Married', '09217199973', 'Elementary', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(544, 'Wilfredo', 'Lato', 'Limotan', '1987-11-12', 'Male', 'Living_in', '09341445074', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(545, 'Angelica', 'Cutab', 'Rico', '1980-11-12', 'Male', 'Separated', '09230348076', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(546, 'Freedy', 'Francisco', 'Ricla', '1949-11-12', 'Male', 'Married', '09284040636', 'Vocational', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(547, 'Juscuro', 'Rico', 'Allibo', '1960-11-12', 'Male', 'Living_in', '09311902092', 'Elementary', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(548, 'Isko', 'Binghit', 'Angeles', '1952-11-12', 'Male', 'Married', '09228639717', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(549, 'Allan', 'Sebaga', 'Actub', '1964-11-12', 'Male', 'Married', '09310739335', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(550, 'Rosalino', 'Bacus', 'Generalao', '1957-11-12', 'Male', 'Married', '09280570252', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(551, 'Rogel', 'Bacus', 'Suan', '1983-11-12', 'Male', 'Married', '09295551934', 'Vocational', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(552, 'Efren', 'Sumalpong', 'Daygam', '1965-11-12', 'Male', 'Married', '09325345356', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(553, 'Pryor', 'Mangubat', 'Samson', '1984-11-12', 'Male', 'Single', '09261760415', 'College Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(554, 'Warren', 'Lonoy', 'Nerri', '1982-11-12', 'Male', 'Married', '09321749753', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(555, 'Sanny', 'Olandesca', 'Asis', '1978-11-12', 'Male', 'Married', '09278056907', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(556, 'Ricardo', 'Razo', 'Yuri', '1955-11-12', 'Male', 'Married', '09301839768', 'Elementary', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(557, 'Felipe', 'Mandrial', 'Deparine', '1926-11-12', 'Male', 'Married', '09339861936', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(558, 'Evelyn', 'Conas', 'Neri', '1988-11-12', 'Female', 'Separated', '09224400125', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(559, 'Love_Carmel', 'Rosales', 'Maisoy', '1986-11-12', 'Female', 'Single', '09222781209', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(560, 'Vilma', 'Manieal', 'Cabrillos', '1963-11-12', 'Female', 'Living_in', '09268030360', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(561, 'Elizabeth', 'Paragozo', 'Balignot', '1970-11-12', 'Female', 'Single', '09215321673', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(562, 'Nicko', 'Omolon', 'Eskolano', '1992-11-12', 'Male', 'Living_in', '09244971986', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(563, 'Danny', 'DeloSantos', 'Berit', '1979-11-12', 'Male', 'Married', '09239632247', 'Vocational', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(564, 'Expedito', 'Jimenez', 'Ligotan', '1961-11-12', 'Male', 'Married', '09333824541', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(565, 'Elena', 'Budlong', 'Matchon', '1952-11-12', 'Female', 'Separated', '09291133456', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(566, 'Eduardo', 'Anino', 'Sagadal', '1956-11-12', 'Male', 'Married', '09346829536', 'Highschool Graduate', 'Non-Government Organization', 'Permanent', 'Yes', 'No', NULL, NULL),
(567, 'Sunny', 'Balogo', 'Agustin', '1971-11-12', 'Male', 'Married', '09291974219', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(568, 'Elicio', 'Ronitarez', 'Divincan', '1964-11-12', 'Male', 'Married', '09316043297', 'College Graduate', 'Laborer/Unskilled Worker', 'Permanent', 'Yes', 'No', NULL, NULL),
(569, 'Edgardo', 'Sardella', 'Punggan', '1960-11-12', 'Male', 'Married', '09237575061', 'Highschool Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(570, 'Eligario', 'Suan', 'Quino', '1976-11-12', 'Male', 'Married', '09346793759', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(571, 'Roberto', 'Solano', 'Babarubias', '1980-11-12', 'Male', 'Married', '09343171322', 'Highschool Graduate', 'Goverment Employee', 'Permanent', 'Yes', 'No', NULL, NULL),
(572, 'Losbitrose', 'Castro', 'Pabailo', '1973-11-12', 'Male', 'Living_in', '09324594036', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(573, 'Eugene', 'Sardella', 'Generalao', '1981-11-12', 'Male', 'Living_in', '09311097106', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(574, 'Allan', 'Caburnay', 'Opamen', '1972-11-12', 'Male', 'Married', '09354772063', 'Vocational', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(575, 'Teodoro', 'Zafra', 'Tabuclin', '1937-11-12', 'Male', 'Married', '09356587754', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(576, 'Armando', 'Yongco', 'Tabuclin', '1966-11-12', 'Male', 'Living_in', '09322840956', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(577, 'Edison', 'Yongco', 'Tabuclin', '1961-11-12', 'Male', 'Single', '09328520579', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(578, 'Jeffrey', 'Zafra', 'Tabuclin', '1984-11-12', 'Male', 'Living_in', '09334128647', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(579, 'Voltair', 'Zafra', 'Tabuclin', '1976-11-12', 'Male', 'Living_in', '09295587711', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(580, 'Nite', 'Maglinao', 'Arbasto', '1962-11-12', 'Male', 'Married', '09274148253', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(581, 'Joel', 'Yongco', 'Tabuclin', '1972-11-12', 'Male', 'Married', '09253209676', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(582, 'Arlito', 'Yongco', 'Tabuclin', '1971-11-12', 'Male', 'Single', '09248227707', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(583, 'Danilo', 'Tabuclin', 'Panis', '1952-11-12', 'Male', 'Single', '09270078602', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(584, 'Edwin', 'Taboknoy', 'Sibao', '1936-11-12', 'Male', 'Married', '09288423337', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(585, 'Gilmor', 'Gornez', 'Sagoban', '1978-11-12', 'Male', 'Married', '09341615016', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(586, 'Julie', 'Maglinao', 'Arbasto', '1962-11-12', 'Male', 'Married', '09353519863', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(587, 'Troy', 'Actub', 'Serano', '1964-11-12', 'Male', 'Married', '09243424625', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(588, 'Emma', 'Tugonon', 'Balaba', '1968-11-12', 'Female', 'Widow', '09329030403', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(589, 'Herda', 'Amarga', 'Nanaman', '1936-11-12', 'Female', 'Widow', '09264014375', 'Elementary', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(590, 'Estelita', 'Amarga', 'Acot', '1965-11-12', 'Female', 'Widow', '09320282890', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(591, 'Delfin', 'Lumosad', 'Carbahal', '1991-11-12', 'Male', 'Living_in', '09325533187', 'Elementary', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(592, 'Regalado', 'Amarga', 'Acot', '1985-11-12', 'Male', 'Living_in', '09359333650', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(593, 'Michael', 'Valdez', 'Cabaraban', '1977-11-12', 'Male', 'Married', '09276858372', 'Elementary', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(594, 'Duezora', 'Pacana', 'Revira', '1947-11-12', 'Female', 'Widow', '09258424195', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(595, 'Edelberto', 'Petanas', 'Goldizno', '1952-11-12', 'Male', 'Married', '09333225274', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(596, 'Pabran', 'Raso', 'Agwantan', '1980-11-12', 'Male', 'Living_in', '09342697275', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(597, 'Vergillio', 'Ramiro', 'Cebua', '1960-11-12', 'Male', 'Married', '09343511205', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(598, 'Rudolfo', 'Ayawan', 'Inot', '1968-11-12', 'Male', 'Living_in', '09277851188', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(599, 'Romulo', 'Paculba', 'So-ung', '1985-11-12', 'Male', 'Separated', '09229865084', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(600, 'Alex', 'Amarga', 'Pacanot', '1960-11-12', 'Male', 'Married', '09242485474', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(601, 'Anatalia', 'Generalao', 'Obeso', '1951-11-12', 'Female', 'Widow', '09280793859', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(602, 'Christina', 'Obeso', 'Delima', '1948-11-12', 'Female', 'Widow', '09341928066', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(603, 'Rodelo', 'Generalao', 'Obeso', '1974-11-12', 'Male', 'Single', '09271903237', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(604, 'Ronald', 'Obanan', 'Obeso', '1974-11-12', 'Male', 'Living_in', '09315148868', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(605, 'Roberto', 'Gerboto', 'Obeso', '1960-11-12', 'Male', 'Married', '09345156954', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(606, 'Lorenzo_Jr.', 'Samson', 'Ongap', '1946-11-12', 'Male', 'Married', '09267475815', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(607, 'Lester', 'Lorenzo', 'Lonay', '1972-11-12', 'Male', 'Married', '09276160718', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(608, 'Marites', 'Punay', 'Lozano', '1965-11-12', 'Female', 'Widow', '09230965232', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(609, 'Ricmar_Joseph', 'Butac', 'Llacuna', '1985-11-12', 'Male', 'Married', '09353421476', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(610, 'Joel', 'Sevilla', 'Lim', '1970-11-12', 'Male', 'Married', '09310945053', 'Vocational', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(611, 'Florenson', 'Callis', 'Corbeta', '1941-11-12', 'Male', 'Widow', '09352544936', 'Vocational', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(612, 'Elmo', 'Tabuclin', 'Gonzaga', '1972-11-12', 'Male', 'Married', '09246385184', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(613, 'Bonifacio', 'Maglasang', 'Tariman', '1936-11-12', 'Male', 'Widow', '09268951622', 'Elementary', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL);
INSERT INTO `residents` (`id`, `first_name`, `last_name`, `middle_name`, `birthdate`, `gender`, `civil_status`, `contact_number`, `education`, `occupation_category`, `occupation_specific`, `if_voter`, `if_disabled`, `created_at`, `updated_at`) VALUES
(614, 'Danny', 'Maglasang', 'Gonzaga', '1975-11-12', 'Male', 'Married', '09289156768', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(615, 'Arnold', 'Maglasang', 'Gonzaga', '1981-11-12', 'Male', 'Married', '09317876876', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(616, 'Junjun', 'Tabuclin', 'Durog', '1984-11-12', 'Male', 'Married', '09324772922', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(617, 'Lemuel', 'Cambaya', 'Cano', '1992-11-12', 'Male', 'Living_in', '09348198012', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(618, 'Joey', 'Tikling', 'Laping', '1985-11-12', 'Male', 'Living_in', '09312018368', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(619, 'Matilde', 'Cambaya', 'Ronga', '1944-11-12', 'Female', 'Widow', '09282063948', 'Elementary', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(620, 'Michael', 'Cambaya', 'Robdis', '1987-11-12', 'Male', 'Living_in', '09282949432', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(621, 'Gerardo', 'Noguera', 'Salazar', '1965-11-12', 'Male', 'Married', '09261438420', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(622, 'Della', 'Salibo', 'Lipar', '1971-11-12', 'Female', 'Widow', '09342894049', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(623, 'Maurine', 'Salibo', 'Lipar', '1992-11-12', 'Female', 'Separated', '09355013559', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(624, 'Vergillio', 'Fernandez', 'Mejeyas', '1945-11-12', 'Male', 'Married', '09230822123', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(625, 'Julius', 'Romeo', 'Balungag', '1975-11-12', 'Male', 'Married', '09265123467', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(626, 'Alejandro', 'Zaide', 'Mejeyas', '1959-11-12', 'Male', 'Married', '09345148010', 'Vocational', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(627, 'John_Rich', 'Fernandez', 'Gonzaga', '1991-11-12', 'Male', 'Married', '09353546696', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(628, 'Mark_Vincent', 'Paradela', 'Villar', '1981-11-12', 'Male', 'Married', '09278298403', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(629, 'Bimbo', 'Yongco', 'Tabuclin', '1957-11-12', 'Male', 'Married', '09322617349', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(630, 'Jever', 'Sanoria', 'Aranel', '1960-11-12', 'Male', 'Widow', '09282144447', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(631, 'Samuel', 'Loresco', 'Obaog', '1980-11-12', 'Male', 'Married', '09241027556', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(632, 'Pedro', 'Bedro', 'Capito', '1986-11-12', 'Male', 'Living_in', '09242199257', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(633, 'Genesis_Mark', 'Aron', 'Pocdol', '1981-11-12', 'Male', 'Married', '09250741052', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(634, 'Norma', 'Oleriano', 'Paslon', '1951-11-12', 'Female', 'Married', '09263790768', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(635, 'Mervinio', 'Yongco', 'Tabuclin', '1977-11-12', 'Male', 'Single', '09273906757', 'Highschool Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(636, 'Mario', 'Hernani', 'Bas', '1968-11-12', 'Male', 'Married', '09232432095', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(637, 'Loreto', 'Gabines', 'Ermac', '1970-11-12', 'Male', 'Married', '09305945196', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(638, 'Benito', 'Mariquit', 'Villarte', '1964-11-12', 'Male', 'Widow', '09253451171', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(639, 'Rupino', 'Tairos', 'Magsayo', '1965-11-12', 'Male', 'Widow', '09269005288', 'Elementary', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(640, 'Susano', 'Ugok', 'Luardo', '1956-11-12', 'Male', 'Separated', '09358904324', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(641, 'Roel', 'Arma', 'Rico', '1977-11-12', 'Male', 'Married', '09305050768', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(642, 'Ida', 'Sadirnas', 'Arma', '1973-11-12', 'Female', 'Widow', '09214489854', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(643, 'Edgar', 'Mayor', 'Cahig', '1985-11-12', 'Male', 'Married', '09336230555', 'Vocational', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(644, 'Johnny', 'Mayor', 'Cahig', '1978-11-12', 'Male', 'Married', '09291893720', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(645, 'Ferdinand', 'Aniasco', 'Rico', '1984-11-12', 'Male', 'Married', '09357965174', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(646, 'Marcelo', 'Rico', 'Lauro', '1973-11-12', 'Male', 'Widow', '09256814224', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(647, 'Albert', 'Aclon', 'Bolgares', '1988-11-12', 'Male', 'Married', '09292403545', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(648, 'Vicente', 'Anaya', 'Asoy', '1955-11-12', 'Male', 'Living_in', '09287850902', 'Elementary', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(649, 'Leo', 'Bracero', 'Balos', '1989-11-12', 'Male', 'Married', '09281509402', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(650, 'Rene', 'Dabodabo', 'Looc', '1978-11-12', 'Male', 'Married', '09343788478', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(651, 'Roy', 'Mag-aso', 'Nanaman', '1955-11-12', 'Male', 'Married', '09247431666', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(652, 'Pedro', 'Baterna', 'Mag-aso', '1973-11-12', 'Male', 'Widow', '09310140067', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(653, 'Jonathan', 'Layog', 'Catubig', '1969-11-12', 'Male', 'Married', '09332134071', 'College Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(654, 'Kenny', 'Bangis', 'Zapanto', '1981-11-12', 'Male', 'Living_in', '09292233603', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(655, 'Marlon', 'Zoles', 'Nanaman', '1959-11-12', 'Male', 'Married', '09311222326', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(656, 'Edwin', 'Carisagan', 'Dampog', '1994-11-12', 'Male', 'Living_in', '09322125413', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(657, 'Mike', 'Pandoma', 'Sarip', '1953-11-12', 'Male', 'Married', '09326660167', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(658, 'Pomponso', 'Lapuz', 'Mesa', '1952-11-12', 'Male', 'Married', '09358600218', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(659, 'Eddie', 'Tan', 'Bendanillo', '1972-11-12', 'Male', 'Married', '09300596512', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(660, 'Roberta', 'Lluisma', 'Abitago', '1931-11-12', 'Female', 'Widow', '09287171136', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(661, 'Rosita', 'Real', 'Imbang', '1963-11-12', 'Female', 'Widow', '09228451887', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(662, 'Conrad', 'Daligdig', 'Canoos', '1982-11-12', 'Male', 'Living_in', '09359709310', 'Vocational', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(663, 'Renanto', 'Uno', 'Gakad', '1981-11-12', 'Male', 'Married', '09325461632', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(664, 'Jojit', 'Tabil', 'Angus', '1981-11-12', 'Male', 'Married', '09315184646', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(665, 'Mary_Ann', 'Iglupas', 'Mesa', '1979-11-12', 'Female', 'Single', '09293959851', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(666, 'Lourdes', 'Embang', 'Fuentes', '1934-11-12', 'Female', 'Widow', '09258925075', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(667, 'Evelyn', 'Abarcar', 'Embang', '1969-11-12', 'Female', 'Widow', '09349181883', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(668, 'Edwin', 'Real', 'Balabat', '1959-11-12', 'Male', 'Married', '09222986927', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(669, 'Rodel', 'Actub', 'Eyana', '1978-11-12', 'Male', 'Married', '09340005044', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(670, 'Victor', 'Abitago', 'Lluisma', '1960-11-12', 'Male', 'Married', '09312698134', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(671, 'Eric', 'Palangan', 'Vilarde', '1982-11-12', 'Male', 'Married', '09335121463', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(672, 'Deciderio', 'Rico', 'Calibo', '1957-11-12', 'Male', 'Married', '09267028600', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(673, 'Adonis', 'Madronial', 'Cabalonia', '1957-11-12', 'Male', 'Married', '09329951665', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(674, 'Elmer', 'Villamor', 'Samson', '1971-11-12', 'Male', 'Married', '09337849471', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(675, 'Niva', 'Tingal', 'Maata', '1979-11-12', 'Female', 'Married', '09246644568', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(676, 'Jhon_Michael', 'Solatorio', 'Jumalon', '1988-11-12', 'Male', 'Living_in', '09264130651', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(677, 'Antonio', 'Pacaña', 'Caay', '1968-11-12', 'Male', 'Married', '09227163910', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(678, 'Jennifer', 'Borias', 'Dorado', '1982-11-12', 'Female', 'Widow', '09297743284', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(679, 'Erwin', 'Bado', 'Fabria', '1971-11-12', 'Male', 'Married', '09340201818', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(680, 'Armando', 'Acebes', 'Bakeril', '1985-11-12', 'Male', 'Married', '09324200488', 'Elementary', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(681, 'Ernesto', 'Umolon', 'Rama', '1964-11-12', 'Male', 'Married', '09288092398', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(682, 'Francisco', 'Labalis', 'Tapdasan', '1949-11-12', 'Male', 'Living_in', '09302286983', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(683, 'Erwin', 'Antica', 'Edgano', '1976-11-12', 'Male', 'Married', '09286070989', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(684, 'Ritchel', 'Balbano', 'Balagtas', '1982-11-12', 'Male', 'Married', '09264059097', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(685, 'Gueli', 'Viloria', 'Rico', '1953-11-12', 'Male', 'Married', '09329558116', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(686, 'Rodney', 'Asok', 'Atad', '1970-11-12', 'Male', 'Married', '09314844763', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(687, 'Ricardo', 'Rico', 'Calibo', '1966-11-12', 'Male', 'Married', '09340702699', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(688, 'Ronald', 'Antonia', 'Baldelamar', '1982-11-12', 'Male', 'Married', '09340157097', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(689, 'Juvymer', 'Apostol', 'Bellesta', '1950-11-12', 'Male', 'Married', '09314925261', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(690, 'Landra', 'Rico', 'Caparida', '1947-11-12', 'Male', 'Widow', '09298780822', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(691, 'Benjamin', 'Gasal', 'Rico', '1958-11-12', 'Male', 'Married', '09320917934', 'Vocational', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(692, 'Frankelina', 'Manreal', 'Calibo', '1938-11-12', 'Female', 'Widow', '09222772264', 'Elementary', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(693, 'Juan', 'Manreal', 'Deparine', '1933-11-12', 'Male', 'Single', '09354101242', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(694, 'Fuljencio', 'Delig', 'Cagandi', '1945-11-12', 'Male', 'Married', '09217459357', 'Elementary', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(695, 'Leonard', 'Manreal', 'Garcia', '1979-11-12', 'Male', 'Married', '09336624103', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(696, 'Damiana', 'Manreal', 'Garcia', '1948-11-12', 'Female', 'Widow', '09314898428', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(697, 'Hermolina', 'Manreal', 'Bardilas', '1955-11-12', 'Female', 'Widow', '09263907044', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(698, 'Melchor', 'Pitogo', 'Mariquit', '1955-11-12', 'Male', 'Widow', '09327330988', 'Elementary', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(699, 'Alicia', 'Manreal', 'Bardilas', '1930-11-12', 'Female', 'Widow', '09351185404', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(700, 'Gerald', 'Gerona', 'Manreal', '1981-11-12', 'Male', 'Married', '09286813365', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(701, 'Allan', 'Manreal', 'Bardilas', '1964-11-12', 'Male', 'Married', '09300793287', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(702, 'Martillano', 'Obeso', 'Delima', '1953-11-12', 'Male', 'Single', '09298673490', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(703, 'Tesie', 'Caomiran', 'Sociano', '1970-11-12', 'Female', 'Single', '09327966033', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(704, 'Romulo', 'Cabaluna', 'Rico', '1958-11-12', 'Male', 'Married', '09248424482', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(705, 'Joel', 'Castillon', 'Agipo', '1956-11-12', 'Male', 'Married', '09281580956', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(706, 'Therisito', 'Actub', 'Lahoylahoy', '1968-11-12', 'Male', 'Single', '09241394271', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(707, 'Leonardo', 'Tadina', 'Ybanez', '1968-11-12', 'Male', 'Married', '09230330187', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(708, 'Jessie', 'Malonhaw', 'Albos', '1968-11-12', 'Male', 'Single', '09309639187', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(709, 'Virgillio', 'Uyon', 'Kalabar', '1990-11-12', 'Male', 'Single', '09316177462', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(710, 'Hebjer', 'Yang-yang', 'Villaber', '1985-11-12', 'Male', 'Living_in', '09265400740', 'Elementary', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(711, 'Thomas', 'Actub', 'Quiapo', '1958-11-12', 'Male', 'Married', '09314728487', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(712, 'Esnayda', 'Malon', 'Cloma', '1969-11-12', 'Female', 'Single', '09287278468', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(713, 'Niebes', 'Villar', 'Quiapo', '1936-11-12', 'Female', 'Widow', '09221403788', 'Elementary', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(714, 'Monico', 'Ilumba', 'Esmase', '1973-11-12', 'Male', 'Married', '09334057093', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(715, 'Felix', 'Dano', 'Maglasang', '1966-11-12', 'Male', 'Living_in', '09251438707', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(716, 'Natividad', 'Dano', 'Maglasang', '1969-11-12', 'Female', 'Widow', '09291249731', 'Elementary', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(717, 'Robert', 'Dano', 'Maglasang', '1964-11-12', 'Male', 'Single', '09253710556', 'Vocational', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(718, 'Arbine', 'Jaylo', 'Villamor', '1977-11-12', 'Male', 'Living_in', '09264184317', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(719, 'Benjie', 'Sumanbo', 'Cabahug', '1980-11-12', 'Male', 'Married', '09296911466', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(720, 'Alfredo_Jr.', 'Nanaman', 'Nonez', '1980-11-12', 'Male', 'Married', '09284917176', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(721, 'Susan', 'Fuentes', 'Yusay', '1950-11-12', 'Female', 'Widow', '09229918750', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(722, 'Armonil', 'Jaylo', 'Villamor', '1982-11-12', 'Male', 'Married', '09312233031', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(723, 'Frias', 'Muaro', 'Bigas', '1970-11-12', 'Male', 'Married', '09267967750', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(724, 'Letty', 'Tumapon', 'Dag-uman', '1971-11-12', 'Female', 'Single', '09231644998', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(725, 'Maxito', 'Managing', 'Yo-ag', '1969-11-12', 'Male', 'Married', '09259935780', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(726, 'Martin', 'Tamayo', 'Bayonan', '1964-11-12', 'Male', 'Married', '09295024221', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(727, 'Pedro', 'Boyunas', 'Abad', '1949-11-12', 'Male', 'Married', '09274514969', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(728, 'Binbilo_Sr.', 'Boyunas', 'Abad', '1946-11-12', 'Male', 'Married', '09241340606', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(729, 'Dockisano', 'Taka', 'Agusan', '1957-11-12', 'Male', 'Married', '09307125842', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(730, 'Binard', 'Boyunas', 'Abad', '1978-11-12', 'Male', 'Married', '09322465296', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(731, 'Marlon', 'Adones', 'Babat', '1981-11-12', 'Male', 'Living_in', '09279917319', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(732, 'Medila', 'Cababat', 'Midalla', '1943-11-12', 'Female', 'Widow', '09277368197', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(733, 'Romel', 'Arnejo', 'Maagad', '1974-11-12', 'Male', 'Living_in', '09334853134', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(734, 'Jose_Ronie', 'Monding', 'Gonzales', '1981-11-12', 'Male', 'Married', '09357920453', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(735, 'Emanuel', 'Visira', 'Paclan', '1983-11-12', 'Male', 'Married', '09247538997', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(736, 'Bong', 'Mentrillo', 'Paclan', '1979-11-12', 'Male', 'Married', '09303091968', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(737, 'Nonita', 'Visira', 'Paclan', '1955-11-12', 'Female', 'Widow', '09306481854', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(738, 'Fely', 'Flores', 'Llanes', '1968-11-12', 'Female', 'Single', '09218210677', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(739, 'Arsenia', 'Ortiga', 'Aying', '1947-11-12', 'Female', 'Widow', '09287287412', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(740, 'Emelano', 'Ortiga', 'Aying', '1970-11-12', 'Male', 'Living_in', '09281876118', 'Vocational', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(741, 'Orlando', 'Polesicas', 'Capritso', '1966-11-12', 'Male', 'Married', '09331919408', 'Elementary', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(742, 'justo_Jr', 'Orcerada', 'Orquillas', '1980-11-12', 'Male', 'Married', '09306329801', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(743, 'Nirekita', 'Dela_Cruz', 'Ladiso', '1972-11-12', 'Male', 'Widow', '09215983550', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(744, 'Antonio', 'Ronquillo', 'Pocdol', '1973-11-12', 'Male', 'Living_in', '09323628053', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(745, 'Jessie_Sr.', 'Malzobang', 'Anito', '1964-11-12', 'Male', 'Married', '09227986784', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(746, 'Jade', 'Jumalon', 'Urbano', '1984-11-12', 'Male', 'Married', '09292555597', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(747, 'Paolo', 'Perez', 'Atibo', '1970-11-12', 'Male', 'Married', '09290078030', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(748, 'Aldwin', 'Naraha', 'Delacerna', '1971-11-12', 'Male', 'Married', '09245168761', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(749, 'Jose', 'Salva', 'Lahoylahoy', '1963-11-12', 'Male', 'Married', '09251134601', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(750, 'Mario', 'Hinaut', 'Cati-il', '1984-11-12', 'Male', 'Living_in', '09286795476', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(751, 'Allan', 'Tac-an', 'Neri', '1972-11-12', 'Male', 'Married', '09326391838', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(752, 'Herlan', 'Nasilya', 'Resorecion', '1988-11-12', 'Male', 'Married', '09302948860', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(753, 'Sonday', 'Fernandez', 'Jahoman', '1955-11-12', 'Male', 'Married', '09218183845', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(754, 'Celbenz', 'Ganso', 'Sanboyo', '1969-11-12', 'Female', 'Living_in', '09252413634', 'Elementary', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(755, 'Eduardo', 'Lahoylahoy', 'Lopera', '1954-11-12', 'Male', 'Married', '09288289172', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(756, 'Marlo', 'Dampog', 'Butdid', '1971-11-12', 'Male', 'Married', '09313789337', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(757, 'Geller', 'Lubantud', 'Pikit-pikit', '1983-11-12', 'Male', 'Single', '09239041924', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(758, 'Joan', 'Roldena', 'Sondo', '1990-11-12', 'Male', 'Married', '09299317479', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(759, 'Nilo', 'Inamor', 'Estreba', '1971-11-12', 'Male', 'Married', '09285677440', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(760, 'Senerio', 'Claudel', 'Llanita', '1965-11-12', 'Male', 'Married', '09241054388', 'Elementary', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(761, 'Ramel', 'Kimlog', 'T', '1973-11-12', 'Male', 'Married', '09277073035', 'Vocational', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(762, 'Jeffrey', 'Echavez', 'Nadayag', '1975-11-12', 'Male', 'Married', '09244327998', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(763, 'Alfredo_Jr.', 'Bintelacion', 'Squadro', '1977-11-12', 'Male', 'Married', '09281920839', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(764, 'Ancro', 'Omentin', 'Ondo', '1970-11-12', 'Male', 'Married', '09341194634', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(765, 'Marivic', 'Alubido', 'Calubag', '1985-11-12', 'Female', 'Separated', '09295641377', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(766, 'Richard', 'Calubag', 'Batapa', '1956-11-12', 'Male', 'Married', '09343895809', 'Highschool Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(767, 'Renato', 'Loreña', 'Mapa', '1955-11-12', 'Male', 'Married', '09240383567', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(768, 'Francisco', 'Aying', 'Lumokso', '1957-11-12', 'Male', 'Married', '09284487850', 'Highschool Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(769, 'Elsa', 'Entira', 'Balbotin', '1943-11-12', 'Female', 'Married', '09258111145', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(770, 'Jesus', 'Vergara', 'Buca', '1947-11-12', 'Male', 'Married', '09268298689', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(771, 'Dolpa', 'Vergara', 'Bungas', '1927-11-12', 'Female', 'Widow', '09270973031', 'Elementary', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(772, 'Leonora', 'Cabasag', 'Balcot', '1961-11-12', 'Female', 'Widow', '09327384654', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(773, 'Josepina', 'Hondina', 'Labo', '1929-11-12', 'Female', 'Widow', '09274389749', 'Elementary', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(774, 'Juliet', 'Asocina', 'Tulusa', '1979-11-12', 'Female', 'Single', '09273987256', 'College Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(775, 'Neil', 'Caralde', 'Bedro', '1971-11-12', 'Male', 'Married', '09337053429', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(776, 'Ronan', 'Eslit', 'Lubguban', '1979-11-12', 'Male', 'Living_in', '09286706033', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(777, 'Donalou', 'Cañas', 'Bocol', '1994-11-12', 'Male', 'Single', '09307841385', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(778, 'Nicanor', 'Sintos', 'Tequillo', '1937-11-12', 'Male', 'Widow', '09324325708', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(779, 'Russell', 'Untolan', 'Pacuba', '1962-11-12', 'Male', 'Married', '09255445747', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(780, 'Alvin', 'Mariquit', 'Ibendoc', '1976-11-12', 'Male', 'Married', '09272359396', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(781, 'Wilfredo', 'Banaag', 'Dapa', '1945-11-12', 'Male', 'Married', '09321830251', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(782, 'Ricky', 'Tubin', 'Baloncio', '1970-11-12', 'Male', 'Married', '09236135030', 'Elementary', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(783, 'Angelina', 'Candonis', 'Tangaal', '1954-11-12', 'Female', 'Widow', '09282600605', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(784, 'Ricardo', 'Torportis', 'Catayaris', '1961-11-12', 'Male', 'Married', '09247708939', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(785, 'Samuel', 'Cantalay', 'Barok', '1961-11-12', 'Male', 'Married', '09279720545', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(786, 'Peter', 'Migrenio', 'Atienda', '1972-11-12', 'Male', 'Living_in', '09265865843', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(787, 'Efemia', 'Omungos', 'Migrenio', '1960-11-12', 'Female', 'Widow', '09235338989', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(788, 'Michael', 'Jimenez', 'Tarok', '1970-11-12', 'Male', 'Married', '09322662070', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(789, 'Ester', 'Vergara', 'Benolirao', '1956-11-12', 'Female', 'Married', '09291419673', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(790, 'Mae', 'Vergara', 'Benolirao', '1979-11-12', 'Female', 'Single', '09230339132', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(791, 'Jaime_jr.', 'Magsayo', 'Rugay', '1976-11-12', 'Male', 'Married', '09223568306', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(792, 'Archie', 'Cabasag', 'Balcot', '1982-11-12', 'Male', 'Living_in', '09314039777', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(793, 'Virginita', 'Jaraba', 'Saludes', '1959-11-12', 'Female', 'Widow', '09320291834', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(794, 'Timoteo', 'Dalegan', 'Balucan', '1949-11-12', 'Male', 'Married', '09239462305', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(795, 'Balista', 'Villaver', 'Catina', '1936-11-12', 'Female', 'Widow', '09357195965', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(796, 'Joel', 'Bakot', 'Rodriguez', '1966-11-12', 'Male', 'Married', '09331749467', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(797, 'Michell', 'Lozano', 'Alaya-ay', '1982-11-12', 'Female', 'Married', '09329701225', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(798, 'Amador', 'Pantillano', 'Sancho', '1969-11-12', 'Male', 'Married', '09256599561', 'Highschool Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(799, 'Ma_Fe', 'Lozano', 'Alaya-ay', '1985-11-12', 'Female', 'Married', '09306499742', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(800, 'Jocely', 'Dalagan', 'Pukol', '1971-11-12', 'Female', 'Single', '09339155337', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(801, 'Perla', 'Lozano', 'Alaya-ay', '1953-11-12', 'Female', 'Widow', '09283012042', 'Elementary', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(802, 'Benjamin', 'Ortega', 'Brehenti', '1941-11-12', 'Male', 'Married', '09245115095', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(803, 'Dixon', 'Ortega', 'Aralba', '1979-11-12', 'Male', 'Married', '09327930256', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(804, 'Warlita', 'Salazar', 'Longayan', '1942-11-12', 'Female', 'Widow', '09299621585', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(805, 'Benjie', 'Ortega', 'Aralba', '1977-11-12', 'Male', 'Married', '09290131696', 'College Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(806, 'Justino', 'Paradero', 'Cosido', '1960-11-12', 'Male', 'Married', '09314916317', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(807, 'Ester', 'Antonio', 'Tinay', '1941-11-12', 'Female', 'Widow', '09238308492', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(808, 'Roger', 'Chinchuntic', 'Magaro', '1976-11-12', 'Male', 'Married', '09323055619', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(809, 'Veronico', 'Balaba', 'Rico', '1964-11-12', 'Male', 'Married', '09314424381', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(810, 'Peter', 'Daog', 'Lepalan', '1971-11-12', 'Male', 'Married', '09282824212', 'Elementary', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(811, 'Darwin', 'Ortega', 'Aying', '1972-11-12', 'Male', 'Married', '09294085071', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(812, 'Lemuel', 'Alicer', 'Rubio', '1989-11-12', 'Male', 'Married', '09226278425', 'Highschool Graduate', 'Skilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(813, 'Feliza', 'Katada', 'Mariquit', '1953-11-12', 'Female', 'Widow', '09319254297', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(814, 'Allen_Cris', 'Bunag', 'Mariquit', '1988-11-12', 'Male', 'Married', '09258746190', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(815, 'Robin', 'Bunag', 'Garcia', '1962-11-12', 'Male', 'Married', '09312080978', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(816, 'Aron_Jhon', 'Bunag', 'Mariquit', '1986-11-12', 'Male', 'Married', '09265740623', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(817, 'Esabilo', 'Mariquit', 'Macasiro', '1955-11-12', 'Male', 'Married', '09267985639', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(818, 'Selvistra', 'Apas', 'Gumahad', '1938-11-12', 'Female', 'Widow', '09352589657', 'Elementary', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(819, 'Jose', 'Apas', 'Tyrus', '1969-11-12', 'Male', 'Married', '09255660410', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(820, 'Bonifacio', 'Emit', 'Reconalya', '1956-11-12', 'Male', 'Married', '09258263198', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(821, 'Ricarda', 'Suan', 'Obatay', '1960-11-12', 'Female', 'Widow', '09270525817', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(822, 'Marlon', 'Mariquit', 'Jusma', '1977-11-12', 'Male', 'Married', '09234632390', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(823, 'Virgilio', 'Suan', 'Mariquit', '1964-11-12', 'Male', 'Married', '09234730777', 'Elementary', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(824, 'Francisco', 'Suan', 'Mariquit', '1956-11-12', 'Male', 'Married', '09313753560', 'Elementary', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(825, 'Roberto', 'Gabonada', 'Racinyo', '1958-11-12', 'Male', 'Married', '09290239027', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(826, 'Jonver', 'Yapag', 'Sumalpong', '1962-11-12', 'Male', 'Married', '09307868218', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(827, 'Virgilio', 'Pomicpic', 'Catiil', '1977-11-12', 'Male', 'Married', '09359199486', 'Vocational', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(828, 'Glyn', 'Bayron', 'Omayao', '1973-11-12', 'Male', 'Married', '09249032693', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(829, 'Rosita', 'Bayron', 'Omayao', '1948-11-12', 'Female', 'Married', '09290489467', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(830, 'josefa', 'Jariol', 'Goles', '1961-11-12', 'Female', 'Married', '09242574917', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(831, 'Rey', 'Bongolto', 'Baloran', '1980-11-12', 'Male', 'Living_in', '09299344312', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(832, 'Saturnino_Jr', 'Nahara', 'Delacerna', '1980-11-12', 'Male', 'Married', '09320551218', 'Elementary', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(833, 'Ransily', 'Abuzo', 'Tapis', '1975-11-12', 'Female', 'Single', '09234641334', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(834, 'Dante', 'Zacarias', 'Alin', '1977-11-12', 'Male', 'Single', '09295203107', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(835, 'Salvador', 'Maglasang', 'Jumawan', '1975-11-12', 'Male', 'Married', '09311615875', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(836, 'Joseph', 'Dionson', 'Canoy', '1992-11-12', 'Male', 'Living_in', '09345130121', 'Vocational', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(837, 'Junita', 'Abulanda', 'Daligdig', '1971-11-12', 'Female', 'Married', '09232602036', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(838, 'Roger', 'Cadiliña', 'Lumando', '1981-11-12', 'Male', 'Living_in', '09282573772', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(839, 'Jerson', 'Uy', 'Bubolante', '1992-11-12', 'Male', 'Single', '09359378371', 'Elementary', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(840, 'Bernadette', 'Sumalpong', 'Firado', '1966-11-12', 'Female', 'Widow', '09286133599', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(841, 'Nestor', 'Maghilum', 'Dag-uman', '1958-11-12', 'Male', 'Married', '09247735771', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(842, 'Anastasia', 'Fuentes', 'Nirecua', '1956-11-12', 'Female', 'Widow', '09314594323', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(843, 'Gene', 'Aleviano', 'Gonzales', '1965-11-12', 'Male', 'Married', '09259452788', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(844, 'Romel_Vincent_Jr', 'Mansano', 'Rebyas', '1978-11-12', 'Male', 'Married', '09253469060', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(845, 'Nicolas', 'Colasilo', 'Ralinclona', '1953-11-12', 'Male', 'Married', '09243406736', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(846, 'Cecilio', 'Cobrado', 'S', '1952-11-12', 'Male', 'Married', '09354628955', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(847, 'Rogelio', 'Arcasa', 'Garcia', '1955-11-12', 'Male', 'Widow', '09268289745', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(848, 'Dennis', 'Eltanal', 'Manaba', '1981-11-12', 'Male', 'Married', '09357043912', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(849, 'Mila', 'Cagatan', 'C', '1962-11-12', 'Female', 'Widow', '09329522339', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(850, 'Felix_Sr', 'Gumahad', 'P', '1957-11-12', 'Male', 'Married', '09219498655', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(851, 'Pedro', 'Tapere', 'Paypa', '1942-11-12', 'Male', 'Single', '09349253438', 'Elementary', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(852, 'Clapita', 'Bation', 'Tapere', '1936-11-12', 'Female', 'Widow', '09267135932', 'Elementary', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(853, 'Linang', 'Onotan', 'So-ong', '1982-11-12', 'Female', 'Married', '09322903566', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(854, 'Salma', 'Onotan', 'So-ong', '1990-11-12', 'Female', 'Living_in', '09312197253', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(855, 'Caironesa', 'Onotan', 'So-ong', '1970-11-12', 'Female', 'Separated', '09319164854', 'Vocational', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(856, 'Mario', 'Arcasa', 'Garcia', '1964-11-12', 'Male', 'Married', '09240195737', 'Vocational', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(857, 'Jimmy', 'Onotan', 'So-ong', '1973-11-12', 'Male', 'Married', '09333457826', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(858, 'Gerelene', 'Otaza', 'Roa', '1979-11-12', 'Female', 'Married', '09303002526', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(859, 'Epifania', 'Balcot', 'R', '1937-11-12', 'Female', 'Widow', '09287931401', 'Elementary', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(860, 'Leonila', 'Ruedas', 'Razo', '1947-11-12', 'Female', 'Widow', '09239587525', 'Elementary', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(861, 'Lilibeth', 'Ruedas', 'Yabo', '1971-11-12', 'Female', 'Widow', '09324549315', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(862, 'David', 'Bayog', 'Manon-og', '1963-11-12', 'Male', 'Married', '09301821880', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(863, 'Paterno', 'Galimbas', 'Villafuerte', '1961-11-12', 'Male', 'Married', '09218917276', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(864, 'Rosie', 'Trasportes', 'Castanres', '1958-11-12', 'Female', 'Single', '09228675494', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(865, 'Miguel', 'Torres', 'Borromeo', '1992-11-12', 'Male', 'Married', '09259542231', 'Vocational', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(866, 'Joel', 'Arcasa', 'Sarino', '1981-11-12', 'Male', 'Separated', '09272019513', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(867, 'Rene', 'Arcasa', 'Sarino', '1979-11-12', 'Male', 'Separated', '09222029888', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(868, 'Jeffrey', 'Cuadro', 'Y', '1986-11-12', 'Male', 'Married', '09317367052', 'Vocational', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(869, 'Ramilito', 'Rotor', 'Lambino', '1965-11-12', 'Male', 'Widow', '09248343983', 'College Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(870, 'Dolores', 'Manligues', 'Macaliag', '1952-11-12', 'Female', 'Separated', '09323502833', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(871, 'Samuel_Joseph', 'Cantutay', 'B', '1988-11-12', 'Male', 'Married', '09260633434', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(872, 'Jill', 'Cimen', 'Acha', '1970-11-12', 'Male', 'Married', '09322483184', 'Vocational', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(873, 'Eduardo', 'Monera', 'Estenzo', '1963-11-12', 'Male', 'Married', '09254318767', 'Elementary', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(874, 'Leonisa', 'Dologmando', 'Belar', '1931-11-12', 'Female', 'Widow', '09273092827', 'Elementary', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(875, 'Domingo', 'Paghasian', 'Enot', '1966-11-12', 'Male', 'Married', '09298092112', 'Elementary', 'Skilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(876, 'Francisco', 'Almero', 'Duron', '1966-11-12', 'Male', 'Married', '09353931300', 'Highschool Graduate', 'Skilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(877, 'Elvie', 'Villa', 'Maghanoy', '1981-11-12', 'Female', 'Married', '09240830781', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(878, 'Hermenio', 'Paghasian', 'Enot', '1967-11-12', 'Male', 'Married', '09230696903', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(879, 'Nelfred', 'Orida', 'Potutan', '1976-11-12', 'Male', 'Married', '09297770117', 'Vocational', 'Non-Government Organization', 'per_day', 'Yes', 'No', NULL, NULL),
(880, 'Cynthia', 'Mariquit', 'Along', '1955-11-12', 'Female', 'Widow', '09228532386', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(881, 'Wilfredo', 'Jaralba', 'Batinsila', '1948-11-12', 'Male', 'Separated', '09317787433', 'Vocational', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(882, 'Ester', 'Lagudas', 'Tina-i', '1959-11-12', 'Female', 'Single', '09306222469', 'Elementary', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(883, 'Julieta', 'Malicay', 'A', '1964-11-12', 'Female', 'Widow', '09223031649', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(884, 'Rosita', 'De_Vera', 'Awitin', '1944-11-12', 'Female', 'Separated', '09349280271', 'Vocational', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(885, 'Romeo', 'Tubin', 'Baloncio', '1973-11-12', 'Male', 'Married', '09302009710', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(886, 'Evangeline', 'Gallardo', 'E', '1969-11-12', 'Female', 'Single', '09316490512', 'Elementary', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(887, 'Nenita', 'Tapere', 'Bartolaba', '1955-11-12', 'Female', 'Separated', '09330327325', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(888, 'Maryann', 'Tortugo', 'Cabanag', '1980-11-12', 'Female', 'Single', '09239909520', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(889, 'Loreto', 'Maata', 'Maglangit', '1965-11-12', 'Male', 'Married', '09303405019', 'Elementary', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(890, 'Bonifacio', 'Baobao', 'Santander', '1967-11-12', 'Male', 'Married', '09224865228', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(891, 'Abundio_Jr', 'Pomicpic', 'Cosare', '1969-11-12', 'Male', 'Widow', '09289934921', 'Elementary', 'Non-Government Organization', 'per_day', 'Yes', 'No', NULL, NULL),
(892, 'Ricky', 'Duhaylungsod', 'Makiling', '1976-11-12', 'Male', 'Married', '09303413963', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(893, 'Roberto', 'Buenaventura', 'Dungca', '1970-11-12', 'Male', 'Married', '09285337557', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(894, 'Babie_Julie', 'Eltanal', 'Manaba', '1977-11-12', 'Female', 'Living_in', '09287797236', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(895, 'Rico', 'Tubin', 'Baloncio', '1971-11-12', 'Male', 'Married', '09358305057', 'Elementary', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(896, 'Alejo', 'Balucan', 'It', '1971-11-12', 'Male', 'Widow', '09356614587', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(897, 'Zita', 'Tadena', 'Cimen', '1957-11-12', 'Female', 'Married', '09357714734', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(898, 'Glenn_Mar', 'Densing', 'Rivera', '1984-11-12', 'Male', 'Married', '09322107524', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(899, 'Melandro', 'Velasquez', 'Matigas', '1962-11-12', 'Male', 'Married', '09352258718', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(900, 'Pedro_Jr.', 'Mariquit', 'Chavez', '1975-11-12', 'Male', 'Married', '09216332377', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(901, 'Rogelio', 'Boloron', 'Quering', '1974-11-12', 'Male', 'Married', '09337357535', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(902, 'Marilyn', 'Cuadro', 'Ylaya', '1954-11-12', 'Female', 'Separated', '09291160289', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(903, 'Genaro_Sr.', 'Aban', 'Badilla', '1962-11-12', 'Male', 'Married', '09235160103', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(904, 'Pio', 'Macapil', 'Bangcuyan', '1985-11-12', 'Male', 'Married', '09285561164', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(905, 'Roel', 'Duhaylungsod', 'Cenas', '1972-11-12', 'Male', 'Married', '09334173369', 'College Graduate', 'Unemployed', 'per_day', 'Yes', 'No', NULL, NULL),
(906, 'Benson_Sr.', 'Alforque', 'Magwate', '1981-11-12', 'Male', 'Married', '09304862937', 'Elementary', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(907, 'Liberato', 'Elcanel', 'Lacay', '1959-11-12', 'Male', 'Married', '09263459829', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(908, 'Rolando', 'Paypa', 'D', '1964-11-12', 'Male', 'Married', '09234578724', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(909, 'Reynaldo_Sr.', 'Fuentivilla', 'Castillon', '1961-11-12', 'Male', 'Married', '09311526432', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(910, 'Tarciana', 'Sadernas', 'B', '1965-11-12', 'Female', 'Widow', '09326579668', 'Elementary', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(911, 'Merlyn', 'Ferinal', 'Basco', '1962-11-12', 'Female', 'Widow', '09253978884', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(912, 'Rene', 'Tangaw', 'T', '1970-11-12', 'Male', 'Married', '09319835675', 'Highschool Graduate', 'Goverment Employee', 'per_day', 'Yes', 'No', NULL, NULL),
(913, 'Ernesto', 'Mariquit', 'Pangilinan', '1973-11-12', 'Male', 'Married', '09232780922', 'Vocational', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(914, 'Froilan_Francis', 'Boloro', 'M', '1982-11-12', 'Male', 'Married', '09319674678', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(915, 'Louie', 'Macaliag', 'Pelotea', '1974-11-12', 'Male', 'Married', '09316624676', 'Vocational', 'Laborer/Unskilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(916, 'Edmundo_Sr.', 'Balodo', 'Miral', '1950-11-12', 'Male', 'Married', '09358153004', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(917, 'Jeffrey', 'Sasil', 'D', '1986-11-12', 'Male', 'Married', '09354387459', 'Vocational', 'Non-Government Organization', 'per_day', 'Yes', 'No', NULL, NULL),
(918, 'Rosalinda', 'Tulusa', 'Layos', '1962-11-12', 'Female', 'Single', '09247512164', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(919, 'Jeffrey', 'Cuadro', 'Ylaya', '1985-11-12', 'Male', 'Married', '09268218190', 'Vocational', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL);
INSERT INTO `residents` (`id`, `first_name`, `last_name`, `middle_name`, `birthdate`, `gender`, `civil_status`, `contact_number`, `education`, `occupation_category`, `occupation_specific`, `if_voter`, `if_disabled`, `created_at`, `updated_at`) VALUES
(920, 'Melchora', 'Catambacan', 'U', '1950-11-12', 'Female', 'Widow', '09312894908', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(921, 'Rene', 'Salazar', 'Longayan', '1967-11-12', 'Male', 'Married', '09346623817', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(922, 'Ernest', 'Virtudez', 'Rosal', '1983-11-12', 'Male', 'Single', '09219999535', 'Vocational', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(923, 'Tibor', 'Maglasang', 'Cloma', '1985-11-12', 'Male', 'Married', '09218666836', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(924, 'Rudy', 'Sumalpong', 'Perez', '1981-11-12', 'Male', 'Single', '09293968795', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(925, 'Ernie', 'Mariquit', 'Cabahug', '1983-11-12', 'Male', 'Married', '09319397405', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(926, 'Marcelino', 'Padayhag', 'Mariquit', '1963-11-12', 'Male', 'Single', '09347044199', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(927, 'Manuel', 'Lupera', 'Vargas', '1968-11-12', 'Male', 'Married', '09277878021', 'Elementary', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(928, 'Joselito', 'Padayhag', 'Depaz', '1961-11-12', 'Male', 'Living_in', '09264738862', 'College Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(929, 'Narciso', 'Catso', 'Abela', '1961-11-12', 'Male', 'Married', '09236072420', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(930, 'Emelia', 'Jagonal', 'Nanaman', '1978-11-12', 'Female', 'Married', '09298923930', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(931, 'Gerry', 'Cadorna', 'Salva', '1973-11-12', 'Male', 'Married', '09262672732', 'College Graduate', 'Laborer/Unskilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(932, 'Alfredo', 'Llyaso', 'Cabatsa', '1953-11-12', 'Male', 'Married', '09335112519', 'College Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(933, 'Rosita', 'Buhion', 'Layno', '1957-11-12', 'Female', 'Widow', '09353099481', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(934, 'Sabelo', 'Regasaho', '', '2013-11-12', 'Male', 'Single', '09332089349', 'Vocational', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(935, 'Rogelio', 'Taborada', 'Canilo', '1983-11-12', 'Male', 'Single', '09282958377', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(936, 'Andrew', 'Nadayag', 'Agasino', '1959-11-12', 'Male', 'Single', '09321910750', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(937, 'Alfredo', 'Nadayag', 'Agasino', '1959-11-12', 'Male', 'Widow', '09340756364', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(938, 'Erlito', 'Amarga', 'Dadang', '1957-11-12', 'Male', 'Married', '09263361442', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(939, 'Teresita', 'Remitasis', '', '2013-11-12', 'Female', 'Single', '09302099153', 'Vocational', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(940, 'Atoy', 'Layno', '', '2013-11-12', 'Male', 'Single', '09335040964', 'Vocational', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(941, 'Delfin', 'Layno', '', '2013-11-12', 'Male', 'Single', '09308950477', 'Vocational', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(942, 'Erlito', 'Echavez', '', '2013-11-12', 'Male', 'Single', '09349190828', 'Vocational', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(943, 'Reto', 'Bacuaja', 'Layno', '1959-11-12', 'Male', 'Widow', '09283459257', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(944, 'Pablo', 'Maglasang', 'Ortiga', '1963-11-12', 'Male', 'Widow', '09337867359', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(945, 'Lorna', 'Bacuaja', 'Layno', '2013-11-12', 'Female', 'Single', '09221046017', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(946, 'Pepito_Jr', 'Bacuaja', 'Layno', '1950-11-12', 'Male', 'Married', '09259855281', 'Elementary', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(947, 'Boyet', 'Andalok', 'Layno', '2013-11-12', 'Male', 'Single', '09336946098', 'Vocational', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(948, 'Arlyn', 'Lacuna', 'Gareta', '1971-11-12', 'Female', 'Living_in', '09293754132', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(949, 'Edie', 'Nacona', 'Gareta', '1964-11-12', 'Male', 'Married', '09333493603', 'Elementary', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(950, 'Meo', 'Along', 'Asyoni', '1953-11-12', 'Male', 'Married', '09251805422', 'Vocational', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(951, 'Arjely', 'Peyala', 'Delatorre', '1993-11-12', 'Female', 'Living_in', '09279380662', 'Highschool Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(952, 'Jose_Jr', 'Niez', 'Tangoy', '1979-11-12', 'Male', 'Married', '09312608691', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(953, 'Ronald', 'Macaubos', 'Borangot', '1979-11-12', 'Male', 'Single', '09316571010', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(954, 'Roberto', 'Macaubos', 'Nageta', '1954-11-12', 'Male', 'Married', '09288405448', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(955, 'Dicky', 'Oregie', 'Lera', '1959-11-12', 'Male', 'Widow', '09220670357', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(956, 'Tata', 'Orenis', '', '2013-11-12', 'Male', 'Single', '09357795233', 'Vocational', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(957, 'Bebot', 'Layno', 'Taledo', '1962-11-12', 'Male', 'Single', '09280185647', 'Vocational', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(958, 'Florenciano', 'Macapel', 'Layno', '1973-11-12', 'Male', 'Married', '09333019555', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(959, 'Patricio', 'Alegarme', 'Oman', '1933-11-12', 'Male', 'Married', '09270722591', 'Elementary', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(960, 'Polaris', 'Macapil', 'Biaka', '1954-11-12', 'Female', 'Widow', '09246134744', 'Vocational', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(961, 'Oliver', 'Villacastin', 'Usok', '1988-11-12', 'Male', 'Living_in', '09334244923', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(962, 'Vicente', 'Macapil', 'Obaug', '1960-11-12', 'Male', 'Married', '09349011942', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(963, 'Thelma', 'Verano', 'Ragadio', '1943-11-12', 'Female', 'Widow', '09246358351', 'Vocational', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(964, 'Filipe', 'Villaver', 'Salonoy', '1934-11-12', 'Male', 'Widow', '09234077844', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(965, 'Josiao', 'Macapil', 'Maglasang', '1953-11-12', 'Male', 'Widow', '09295569822', 'Highschool Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(966, 'Epanyo', 'Adolfo', 'Limotan', '1953-11-12', 'Male', 'Married', '09299746805', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(967, 'Fernando', 'Villaver', 'Paga', '2013-11-12', 'Male', 'Single', '09257485045', 'Vocational', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(968, 'Avilino', 'Mirino', 'Paga', '1951-11-12', 'Male', 'Married', '09284988730', 'Elementary', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(969, 'Bayani', 'Villagonzano', 'Paga', '1967-11-12', 'Male', 'Married', '09274067755', 'College Graduate', 'Businessman', 'Casual', 'Yes', 'No', NULL, NULL),
(970, 'Tata', 'Binaobawan', '', '2013-11-12', 'Male', 'Single', '09295131552', 'Vocational', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(971, 'Jose', 'Naguita', 'Sadernas', '1962-11-12', 'Male', 'Married', '09267466870', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(972, 'Roseller', 'Ermac', 'Galgro', '1969-11-12', 'Male', 'Married', '09215688388', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(973, 'Urbano', 'Ermac', 'R', '1948-11-12', 'Male', 'Married', '09233102917', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(974, 'Martiniana', 'Lozano', 'K', '1958-11-12', 'Female', 'Single', '09298530382', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(975, 'Napoleon', 'Morales', 'C', '1955-11-12', 'Male', 'Married', '09239668024', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(976, 'Lane', 'Ermac', 'D', '1967-11-12', 'Male', 'Married', '09282627438', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(977, 'Leonarda', 'Gonzaga', 'M', '1936-11-12', 'Female', 'Widow', '09282582717', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(978, 'Glenda', 'Capangpangan', 'L', '1961-11-12', 'Female', 'Widow', '09273307490', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(979, 'Ricarda', 'Mariquit', 'P', '1944-11-12', 'Female', 'Widow', '09283995914', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(980, 'Gilbert', 'Apas', 'S', '1968-11-12', 'Male', 'Married', '09302626866', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(981, 'Leo_Sr', 'Tayone', 'R', '1966-11-12', 'Male', 'Married', '09239328141', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(982, 'Milaflor', 'Bado', 'B', '1961-11-12', 'Female', 'Widow', '09329370286', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(983, 'Sthil', 'Bado', 'C', '1987-11-12', 'Male', 'Married', '09217271527', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(984, 'Maximo', 'Cabahug', '', '1955-11-12', 'Male', 'Single', '09239050868', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(985, 'Alvin', 'Batican', 'C', '1971-11-12', 'Male', 'Married', '09359789809', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(986, 'Nonito', 'Ricarpel', 'E', '1979-11-12', 'Male', 'Married', '09283539755', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(987, 'Rasdi', 'Mohamod', 'C', '1985-11-12', 'Male', 'Married', '09295945483', 'Highschool Graduate', 'Goverment Employee', 'per_day', 'Yes', 'No', NULL, NULL),
(988, 'Berando', 'Sanchez', 'Baternabe', '1966-11-12', 'Male', 'Married', '09348350065', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(989, 'Custodio', 'Grabato', 'N', '1943-11-12', 'Male', 'Married', '09314245495', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(990, 'Ronnie_Joe', 'Grabato', 'N', '1968-11-12', 'Male', 'Married', '09245723307', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(991, 'Demilou', 'Grabato', 'U', '1976-11-12', 'Male', 'Married', '09336838766', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(992, 'Conrado', 'Magtajas', 'A', '1960-11-12', 'Male', 'Married', '09300802231', 'Vocational', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(993, 'Edilberto', 'Paragoso', 'S', '1965-11-12', 'Male', 'Married', '09359145820', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(994, 'Premitivo', 'Paragoso', 'B', '1945-11-12', 'Male', 'Married', '09325828348', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(995, 'Agustin', 'Opot', 'M', '1957-11-12', 'Male', 'Married', '09303315576', 'Vocational', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(996, 'Melvin', 'Mangumpit', 'P', '1993-11-12', 'Male', 'Married', '09352857986', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(997, 'Salvador_Jr', 'Mugot', 'R', '1946-11-12', 'Male', 'Married', '09311311769', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(998, 'Danilo_Sr', 'Tinoy', 'L', '1952-11-12', 'Male', 'Married', '09340675866', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(999, 'Mark_Anthony', 'Tinoy', 'L', '1985-11-12', 'Male', 'Married', '09305283319', 'College Graduate', 'Unemployed', 'Casual', 'Yes', 'No', NULL, NULL),
(1000, 'Mary_jane', 'Quipao', 'L', '1970-11-12', 'Female', 'Single', '09321338316', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(1001, 'Francisca', 'Radigos', 'C', '1959-11-12', 'Female', 'Widow', '09280650750', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1002, 'Ramil', 'Radigos', 'C', '1980-11-12', 'Male', 'Married', '09253630057', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1003, 'Benjie', 'Sumando', 'C', '1981-11-12', 'Male', 'Married', '09306106193', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1004, 'Bienvinido', 'Sumando', 'F', '1957-11-12', 'Male', 'Married', '09316150629', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1005, 'Warlito', 'Demaluna', 'C', '1974-11-12', 'Male', 'Married', '09230526962', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1006, 'Joan', 'Rupinta', 'C', '1977-11-12', 'Female', 'Single', '09321141541', 'Vocational', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1007, 'James_Paul', 'Notarte', 'B', '1974-11-12', 'Male', 'Married', '09269148396', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1008, 'Jose', 'Sabaysabay', 'D', '1957-11-12', 'Male', 'Married', '09300659122', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(1009, 'Romeo', 'Mariquit', 'P', '1969-11-12', 'Male', 'Married', '09270847811', 'College Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(1010, 'Jason', 'Sabaysabay', 'M', '1985-11-12', 'Male', 'Married', '09213488094', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1011, 'Adrian', 'Omadle', 'C', '1952-11-12', 'Male', 'Married', '09304317336', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1012, 'Benjamin', 'Pagarigan', 'C', '1953-11-12', 'Male', 'Married', '09238227994', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1013, 'Jeffrey', 'Pagarigan', 'C', '1973-11-12', 'Male', 'Married', '09218434285', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1014, 'Manuelito', 'Pagarigan', 'C', '1954-11-12', 'Male', 'Single', '09333663544', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(1015, 'Basilio', 'Deloso', 'B', '1975-11-12', 'Male', 'Married', '09228433998', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1016, 'Rene', 'Agac-ac', 'R', '1981-11-12', 'Male', 'Single', '09238764651', 'Highschool Graduate', 'Non-Government Organization', 'Casual', 'Yes', 'No', NULL, NULL),
(1017, 'Quirino', 'Agac-ac', 'R', '1959-11-12', 'Male', 'Married', '09329737002', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1018, 'Flaviano', 'Lucagbo', 'D', '1971-11-12', 'Male', 'Married', '09351945668', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1019, 'Alain', 'Delos_Santos', 'U', '1975-11-12', 'Male', 'Married', '09297949003', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(1020, 'Ricardo', 'Pagarigan', 'C', '1955-11-12', 'Male', 'Married', '09265633291', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1021, 'Jason', 'Baruc', 'A', '1981-11-12', 'Male', 'Single', '09275033738', 'Vocational', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1022, 'Leopoldo', 'Delos_Santos', 'S', '1943-11-12', 'Male', 'Married', '09231698663', 'Vocational', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1023, 'Eleno_Boy', 'Luveros', 'Beriso', '1959-11-12', 'Male', 'Married', '09329683336', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1024, 'Rochelle', 'Ardeles', 'Carpio', '1954-11-12', 'Female', 'Married', '09282198112', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(1025, 'Bernon', 'Ardeles', 'Carpio', '1980-11-12', 'Male', 'Married', '09310775112', 'Vocational', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1026, 'Junard', 'Unggaket', 'Galape', '1985-11-12', 'Male', 'Married', '09229373149', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(1027, 'Junbi', 'Laurita', 'Pirocillo', '1984-11-12', 'Male', 'Married', '09287001195', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1028, 'Phycie', 'Vecaso ', 'Vasalo', '1980-11-12', 'Female', 'Married', '09251823311', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1029, 'Philip', 'Vasalo', 'Nadayag', '1981-11-12', 'Male', 'Living_in', '09253782110', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1030, 'Harold', 'Vasalo', 'Nadayag', '1991-11-12', 'Male', 'Living_in', '09308333321', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(1031, 'Julito', 'Vasalo', 'Jeminez', '1952-11-12', 'Male', 'Married', '09279809987', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1032, 'Grace', 'Galarpe', 'L', '1991-11-12', 'Female', 'Separated', '09284416296', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(1033, 'George', 'Paica', 'Bantoc', '1985-11-12', 'Male', 'Married', '09213962141', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1034, 'Esteban', 'Calica', 'Vergara', '1974-11-12', 'Male', 'Married', '09285400167', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1035, 'Roldan', 'Malunhaw', 'Bravo', '1975-11-12', 'Male', 'Living_in', '09271473911', 'Vocational', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1036, 'Revelino', 'Carbonel', 'Caliso', '1949-11-12', 'Male', 'Married', '09343341264', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1037, 'Abraham', 'Gonzales', 'Ballester', '1948-11-12', 'Male', 'Married', '09301222612', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(1038, 'William', 'Vergara', 'Abatajo', '1962-11-12', 'Male', 'Widow', '09270481095', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1039, 'Hubert', 'Vergara', 'Abatajo', '1968-11-12', 'Male', 'Single', '09225357163', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(1040, 'Alvin', 'Vergara', 'Abatajo', '1970-11-12', 'Male', 'Married', '09245419201', 'College Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1041, 'Sulpicio', 'Corbita', 'Caldeo', '1951-11-12', 'Male', 'Married', '09332384511', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(1042, 'Florante', 'Vasquez', 'Marabilis', '1975-11-12', 'Male', 'Married', '09226940302', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1043, 'Christopher', 'Almaden', 'Maglasang', '1972-11-12', 'Male', 'Married', '09251367152', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1044, 'Leopoldo', 'Vasquez', 'Pajadanas', '1954-11-12', 'Male', 'Married', '09247100727', 'Highschool Graduate', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(1045, 'Carlos', 'Cabatinan', 'Hernane', '1963-11-12', 'Male', 'Married', '09270812034', 'Elementary', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1046, 'Michael', 'Suan', 'Amion', '1981-11-12', 'Male', 'Married', '09264685197', 'Highschool Graduate', 'Private Employee', 'per_day', 'Yes', 'No', NULL, NULL),
(1047, 'Edgar', 'Esteva', 'Silva', '1960-11-12', 'Male', 'Married', '09312868075', 'Vocational', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1048, 'Estrella', 'Pagdilao', 'Racal', '1963-11-12', 'Female', 'Married', '09311750039', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1049, 'Bernardo', 'Ramos', 'Panes', '1966-11-12', 'Male', 'Married', '09226412589', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1050, 'Sapiah', 'Asaad', 'Calamata', '1953-11-12', 'Female', 'Widow', '09347079976', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(1051, 'Junie_ven', 'Uglasan', 'Gomez', '1978-11-12', 'Male', 'Married', '09226680918', 'Vocational', 'Private Employee', 'per_day', 'Yes', 'No', NULL, NULL),
(1052, 'Romero', 'Padillo', 'Mequiabas', '1956-11-12', 'Male', 'Married', '09256188123', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(1053, 'Manuel', 'Lagda', 'Dueñas', '1959-11-12', 'Male', 'Married', '09309093586', 'College Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1054, 'Allan', 'Sabando', 'Mocorro', '1953-11-12', 'Male', 'Married', '09290945626', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1055, 'Richard', 'Tabano', 'Luceñara', '1978-11-12', 'Male', 'Married', '09249256300', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1056, 'Arnold', 'Tabano', 'Luceñara', '1980-11-12', 'Male', 'Married', '09336865599', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1057, 'Antonio', 'Mira', 'Caboc', '1971-11-12', 'Male', 'Living_in', '09335676009', 'Elementary', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(1058, 'Arnolfo', 'Arbes', 'Pasigna', '1956-11-12', 'Male', 'Married', '09352732766', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1059, 'Demetria', 'Cristobal', 'Abitago', '1963-11-12', 'Female', 'Married', '09343958419', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1060, 'Merlyn', 'Layno', 'Abitago', '1967-11-12', 'Female', 'Married', '09224060242', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1061, 'Gregorio', 'Rufino', 'Simborio', '1974-11-12', 'Male', 'Married', '09269524056', 'Highschool Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1062, 'Elojeo', 'Lupague', 'Maturan', '1971-11-12', 'Male', 'Living_in', '09349262382', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1063, 'Benjie_jr', 'Ladega', 'Landitcho', '1986-11-12', 'Male', 'Married', '09327608261', 'Vocational', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1064, 'Rodolfo', 'Rufino', 'Gamboa', '1942-11-12', 'Male', 'Married', '09320765881', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1065, 'Serbillano', 'Rufino', 'Semboryo', '1978-11-12', 'Male', 'Married', '09220545137', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1066, 'Federico', 'Daligdig', 'Bensolano', '1979-11-12', 'Male', 'Married', '09243898672', 'Highschool Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(1067, 'Anthony', 'Rufino', 'Semboryo', '1980-11-12', 'Male', 'Married', '09310113234', 'Highschool Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1068, 'Ronald', 'Maglangit', 'Hipos', '1978-11-12', 'Male', 'Married', '09297260293', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1069, 'Clark', 'Tuyan', 'Mariquit', '1985-11-12', 'Male', 'Married', '09298646657', 'Highschool Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1070, 'Allan', 'Monding', 'Bahuansua', '1975-11-12', 'Male', 'Married', '09293092255', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1071, 'Christopher', 'Lee', 'Edquilang', '1975-11-12', 'Male', 'Married', '09254837536', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1072, 'Vicente', 'Timba', 'Jalagat', '1970-11-12', 'Male', 'Married', '09263450885', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1073, 'Eddie', 'Pasco', 'Caay', '1977-11-12', 'Male', 'Married', '09320649605', 'Vocational', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1074, 'Roberto_jr', 'Tañia', 'Palangan', '1985-11-12', 'Male', 'Married', '09313664117', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1075, 'Edgardo', 'Tuyan', 'Albarico', '1959-11-12', 'Male', 'Married', '09271688574', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1076, 'Wenefredo', 'Owayas', 'Escosio', '1973-11-12', 'Male', 'Married', '09329245066', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(1077, 'Dante', 'Densing', 'Testa', '1971-11-12', 'Male', 'Married', '09249918178', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1078, 'Lolita', 'Narona', 'Edquilang', '1953-11-12', 'Female', 'Widow', '09268978455', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1079, 'Natividad', 'Nabises', 'Gamos', '1944-11-12', 'Female', 'Widow', '09324030546', 'Highschool Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(1080, 'Elsie', 'Gamos', 'Sumili', '1950-11-12', 'Female', 'Widow', '09311463822', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(1081, 'Sajid', 'Dangcal', 'Sucalat', '1973-11-12', 'Male', 'Living_in', '09342902993', 'College Graduate', 'Skilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1082, 'Mila', 'Gonzales', 'Salban', '1956-11-12', 'Female', 'Widow', '09268942678', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1083, 'Ricky', 'Gamos', 'Sumili', '1968-11-12', 'Male', 'Married', '09228684438', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1084, 'Roel', 'Gamos', 'Sumili', '1972-11-12', 'Male', 'Married', '09320014561', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1085, 'Roberto', 'Tañan', 'Villano', '1956-11-12', 'Male', 'Married', '09269881828', 'Highschool Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1086, 'Arnolfo', 'Ragasajo', 'Jimenez', '1964-11-12', 'Male', 'Married', '09276920982', 'Highschool Graduate', 'Skilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1087, 'Sofricio', 'Capricho', 'Fullante', '1953-11-12', 'Male', 'Married', '09242100870', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(1088, 'Magdalena', 'Arado', 'Saudian', '1957-11-12', 'Female', 'Widow', '09318261481', 'Highschool Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1089, 'Gorio', 'Libre', 'Bongolto', '1962-11-12', 'Male', 'Married', '09287305301', 'Elementary', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1090, 'Jerry', 'Abolanda', 'Monto', '1971-11-12', 'Male', 'Married', '09256277566', 'Highschool Graduate', 'Unemployed', 'per_day', 'Yes', 'No', NULL, NULL),
(1091, 'Arfil', 'Patagoc', 'Dagpen', '1980-11-12', 'Male', 'Married', '09327644038', 'Elementary', 'Unemployed', 'per_day', 'Yes', 'No', NULL, NULL),
(1092, 'Fritz_Jay', 'Ballanca', 'Patubon', '1984-11-12', 'Male', 'Living_in', '09269568778', 'Highschool Graduate', 'Businessman', 'per_day', 'Yes', 'No', NULL, NULL),
(1093, 'Annie', 'Amado', 'Regudon', '1963-11-12', 'Female', 'Widow', '09358537608', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1094, 'Clemente_jr', 'Auditor', 'Dalagwan', '1959-11-12', 'Male', 'Married', '09316919837', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1095, 'Sarah', 'Radasa', 'Villegas', '1963-11-12', 'Female', 'Widow', '09302134930', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1096, 'Rosalina', 'Buenavista', 'Fortuna', '1945-11-12', 'Female', 'Widow', '09283843861', 'Elementary', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1097, 'Michael', 'Mahinay', 'Bardolosa', '1977-11-12', 'Male', 'Married', '09300399738', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1098, 'Cito', 'Langamin', 'Tangaro', '1953-11-12', 'Male', 'Married', '09275668782', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1099, 'Maribeth', 'Tingas', 'Abantas', '1969-11-12', 'Female', 'Separated', '09275480952', 'Highschool Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1100, 'Estela', 'Alcantara', 'Balabat', '1939-11-12', 'Female', 'Widow', '09324450928', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1101, 'Romeo', 'Abadines', 'Macapal', '1956-11-12', 'Male', 'Married', '09222799097', 'Elementary', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1102, 'Redemptor', 'Regis', 'Iglupas', '1949-11-12', 'Male', 'Widow', '09242431809', 'College Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(1103, 'Hans', 'Pasague', 'Zalsos', '1985-11-12', 'Male', 'Single', '09357589514', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(1104, 'Juliet', 'Carillo', 'Regis', '1976-11-12', 'Female', 'Married', '09354754175', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1105, 'Danny', 'Belivestre', 'Salawague', '1968-11-12', 'Male', 'Married', '09235643094', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1106, 'Annalou', 'Amorguez', 'Cuizon', '1982-11-12', 'Female', 'Married', '09327116325', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1107, 'Derrick', 'Diola', 'Coquilla', '1978-11-12', 'Male', 'Married', '09218738390', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1108, 'Jovita', 'Dolliento', 'Belen', '1946-11-12', 'Female', 'Separated', '09338117799', 'Elementary', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(1109, 'Flaviano', 'Daclan', 'Langamin', '1959-11-12', 'Male', 'Married', '09302295927', 'Highschool Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(1110, 'Joefil', 'Daclan', 'Langamin', '1968-11-12', 'Male', 'Married', '09346543319', 'Elementary', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1111, 'Nestor', 'Castillon', 'Etic', '1958-11-12', 'Male', 'Married', '09261921412', 'Elementary', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1112, 'Esperi_jun', 'Mendez', 'Olmilla', '1941-11-12', 'Male', 'Married', '09237905999', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(1113, 'Manuel', 'Mejogue', 'Pariolan', '1963-11-12', 'Male', 'Married', '09239578581', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1114, 'Josef', 'Sumapig', 'Garcia', '1945-11-12', 'Male', 'Married', '09264076985', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1115, 'Solidad', 'Disierto', 'Anores', '1946-11-12', 'Female', 'Widow', '09303959564', 'Elementary', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(1116, 'Bernard', 'Mutia', 'Cabactulan', '1974-11-12', 'Male', 'Married', '09310569393', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1117, 'Jay', 'Banggo', 'Machan', '1983-11-12', 'Male', 'Married', '09303941676', 'Highschool Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1118, 'Devon_Christ', 'Taan', 'Candawan', '1990-11-12', 'Male', 'Living_in', '09336167945', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1119, 'Modesto', 'Pepania', 'Pohanes', '1960-11-12', 'Male', 'Married', '09308217045', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(1120, 'Fidel', 'Peradillo', 'Bohol', '1968-11-12', 'Male', 'Married', '09226385756', 'Highschool Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(1121, 'Jomar', 'Omandam', 'Maghinay', '1976-11-12', 'Male', 'Married', '09312206198', 'Elementary', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1122, 'Charlie', 'Trinidad', 'Digoro', '1976-11-12', 'Male', 'Living_in', '09233093972', 'Vocational', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(1123, 'Armando', 'Tenchavez', 'Scarpe', '1988-11-12', 'Male', 'Living_in', '09238058052', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1124, 'Benito', 'Las_Piñas', 'Marbilla', '1960-11-12', 'Male', 'Married', '09241805709', 'Highschool Graduate', 'Skilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(1125, 'Roque', 'Novela', 'Babayo', '1972-11-12', 'Male', 'Married', '09227736344', 'Highschool Graduate', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(1126, 'Arnel', 'Angkee', 'San_antonio', '1957-11-12', 'Male', 'Married', '09357848898', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1127, 'Allan', 'Iglupas', 'Pagara', '1954-11-12', 'Male', 'Married', '09349933204', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1128, 'Pablo', 'Mama', 'Decina', '1936-11-12', 'Male', 'Married', '09320193447', 'Elementary', 'Private Employee', '', 'Yes', 'No', NULL, NULL),
(1129, 'Nena', 'Sanitllan', 'Atay', '1941-11-12', 'Female', 'Widow', '09306982734', 'Elementary', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1130, 'Teresita', 'Ubatay', 'Verde', '1951-11-12', 'Female', 'Widow', '09234167287', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1131, 'Danilo', 'Perijan', 'Mentopa', '1972-11-12', 'Male', 'Married', '09314120275', 'Elementary', 'Skilled Worker', 'per_day', 'Yes', 'No', NULL, NULL),
(1132, 'Eddie', 'Imperial', 'Jabado', '1971-11-12', 'Male', 'Married', '09278369957', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1133, 'Clyde', 'Fernan', 'Suson', '1975-11-12', 'Male', 'Married', '09220223142', 'College Graduate', 'Skilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1134, 'Raul', 'Wong', 'Soria', '1957-11-12', 'Male', 'Married', '09265042968', 'Vocational', 'Non-Government Organization', 'self_employed', 'Yes', 'No', NULL, NULL),
(1135, 'Conchita', 'Ungkit', 'Jocson', '1946-11-12', 'Female', 'Widow', '09240526675', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1136, 'Alawya', 'Olama', 'Rabia', '1943-11-12', 'Male', 'Married', '09226242648', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(1137, 'Gillerma', 'Cagula', 'Juarez', '1947-11-12', 'Female', 'Widow', '09223908189', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1138, 'Eddie', 'Magusara', 'Cabiltis', '1955-11-12', 'Male', 'Married', '09267296929', 'Highschool Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1139, 'Ernesto', 'Camasura', 'Pundoc', '1954-11-12', 'Male', 'Married', '09239059812', 'Highschool Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1140, 'Catalino', 'Budan', 'Ugpoy', '1980-11-12', 'Male', 'Married', '09273718927', 'Vocational', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1141, 'Rafael', 'Lahoylahoy', 'Gersale', '1948-11-12', 'Male', 'Married', '09281402071', 'College Graduate', 'Businessman', '', 'Yes', 'No', NULL, NULL),
(1142, 'Catalina', 'Gohel', 'Lahoylahoy', '1947-11-12', 'Female', 'Single', '09350836577', 'College Graduate', 'Private Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1143, 'Cristina', 'Carloman', 'Sillacay', '1939-11-12', 'Female', 'Widow', '09273083883', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1144, 'Julius_sr', 'Doleguez', 'Segobia', '1965-11-12', 'Male', 'Married', '09237619782', 'College Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(1145, 'Rizalina', 'Togunon', 'Amarga', '1953-11-12', 'Female', 'Widow', '09356068985', 'Highschool Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1146, 'Lamberto', 'Maghinay', '', '1945-11-12', 'Male', 'Married', '09332482898', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1147, 'Rafael', 'Lonoy', 'Anches', '1964-11-12', 'Male', 'Married', '09305963085', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(1148, 'Winona', 'Lanoy', 'Anches', '1969-11-12', 'Female', 'Single', '09227852620', 'College Graduate', 'Goverment Employee', '', 'Yes', 'No', NULL, NULL),
(1149, 'Virginia', 'Sarin', 'Rapliza', '1954-11-12', 'Female', 'Widow', '09264729918', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1150, 'Christy', 'Alivio', 'Ladlad', '1973-11-12', 'Female', 'Married', '09322143301', 'College Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1151, 'Eduardo', 'Ramirez', 'Baul', '1975-11-12', 'Male', 'Married', '09301061615', 'Highschool Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1152, 'Godofredo_Sr.', 'Duyaguit', 'Malakay', '1929-11-12', 'Male', 'Married', '09354324849', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1153, 'Samson_Jr', 'Amba', 'Fudotan', '1967-11-12', 'Male', 'Married', '09263835489', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1154, 'Mark', 'Sierra', 'Tapales', '1981-11-12', 'Male', 'Married', '09283181984', 'College Graduate', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(1155, 'Patricio_jr', 'Corona', 'Galicia', '1965-11-12', 'Male', 'Married', '09221743671', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1156, 'Ronald', 'Fuentes', '', '1971-11-12', 'Male', 'Married', '09287314245', 'College Graduate', 'Laborer/Unskilled Worker', 'self_employed', 'Yes', 'No', NULL, NULL),
(1157, 'Nazario_jr', 'Calimpong', 'Ruelan', '1962-11-12', 'Male', 'Married', '09316749896', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1158, 'Emma', 'Lauron', 'Burra', '1945-11-12', 'Female', 'Widow', '09325506354', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1159, 'Danilo', 'Lauron', 'Burra', '1973-11-12', 'Male', 'Living_in', '09324459872', 'College Graduate', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL),
(1160, 'Carlito', 'Lauron', 'Burra', '1972-11-12', 'Male', 'Married', '09283271427', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1161, 'Jeck', 'Cajes', 'Senio', '1966-11-12', 'Male', 'Married', '09240294124', 'College Graduate', 'Private Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1162, 'John', 'Sahera', 'Jusin', '1963-11-12', 'Male', 'Married', '09265937397', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1163, 'Allan', 'Tomaquin', 'Cabahug', '1962-11-12', 'Male', 'Married', '09279487993', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(1164, 'Dante', 'Velayo', 'Cabiling', '1973-11-12', 'Male', 'Married', '09305560592', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1165, 'Guidion', 'Galleno', 'Laganson', '1956-11-12', 'Male', 'Married', '09290918793', 'College Graduate', 'Unemployed', 'self_employed', 'Yes', 'No', NULL, NULL),
(1166, 'Arnold', 'Hipayo', 'Intong', '1966-11-12', 'Male', 'Married', '09214382522', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1167, 'Sherwin', 'Bado', 'Cordero', '1975-11-12', 'Male', 'Married', '09343278653', 'College Graduate', 'Private Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1168, 'Elmer', 'Adaza', 'Banaag', '1956-11-12', 'Male', 'Married', '09317545938', 'College Graduate', 'Businessman', 'permanent', 'Yes', 'No', NULL, NULL),
(1169, 'Lomesindo', 'Caparida', 'Tormis', '1961-11-12', 'Male', 'Married', '09285444889', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1170, 'Claro', 'Bongcawil', 'Sande', '1955-11-12', 'Male', 'Married', '09280749138', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1171, 'Radja_Ali', 'Delangcaten', 'Barazar', '1957-11-12', 'Male', 'Married', '09332652840', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1172, 'Ibrahim', 'Daing', 'Asimpin', '1973-11-12', 'Male', 'Married', '09282591661', 'College Graduate', 'Laborer/Unskilled Worker', 'permanent', 'Yes', 'No', NULL, NULL),
(1173, 'Bayani', 'Jimenez', 'Encarnacion', '1957-11-12', 'Male', 'Married', '09333779820', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1174, 'Leo_Richard', 'Orbeta', 'Andrade', '1978-11-12', 'Male', 'Married', '09281858229', 'College Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1175, 'Adonis', 'Reserva', 'Montillo', '1962-11-12', 'Male', 'Married', '09357517960', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1176, 'Myrna', 'Maruhumsar', 'Maruhumsar', '1949-11-12', 'Female', 'Widow', '09310605170', 'College Graduate', 'Non-Government Organization', 'permanent', 'Yes', 'No', NULL, NULL),
(1177, 'Joffrey', 'Peñola', 'Trinidad', '1971-11-12', 'Male', 'Married', '09252744573', 'College Graduate', 'Goverment Employee', 'Casual', 'Yes', 'No', NULL, NULL),
(1178, 'Henrietto', 'Cabili', 'Palaca', '1955-11-12', 'Male', 'Married', '09327617206', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1179, 'Cipriano', 'Del_Rosario', 'Padilla', '1944-11-12', 'Male', 'Married', '09234695000', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1180, 'Al\'annuar', 'Asakil', 'Hasar', '1983-11-12', 'Male', 'Married', '09218407452', 'College Graduate', 'Goverment Employee', 'permanent', 'Yes', 'No', NULL, NULL),
(1181, 'Vicente', 'Mag_usara', 'Pilosas', '1942-11-12', 'Female', 'Married', '09298789766', 'College Graduate', 'Laborer/Unskilled Worker', '', 'Yes', 'No', NULL, NULL),
(1182, 'Trinidad', 'Tabuelog', 'Malinao', '1964-11-12', 'Female', 'Widow', '09234847053', 'College Graduate', 'Non-Government Organization', '', 'Yes', 'No', NULL, NULL),
(1183, 'Victoria', 'Tabuco', 'Hersale', '1955-11-12', 'Female', 'Widow', '09220634579', 'College Graduate', 'Unemployed', 'permanent', 'Yes', 'No', NULL, NULL),
(1184, 'Andres_jr', 'Benabaye', 'Renegado', '1951-11-12', 'Male', 'Married', '09262449125', 'College Graduate', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1185, 'Judy', 'Enojardo', 'Todan', '1955-11-12', 'Male', 'Widow', '09288736387', 'Vocational', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(1186, 'Angelito', 'Maliao', 'Actub', '1946-11-12', 'Male', 'Married', '09259998390', 'Highschool Graduate', 'Unemployed', '', 'Yes', 'No', NULL, NULL),
(1187, 'Ranolfo', 'Omas-as', 'Liray', '1940-11-12', 'Male', 'Married', '09278700896', 'Elementary', 'Skilled Worker', '', 'Yes', 'No', NULL, NULL),
(1188, 'Jessie', 'Malonhao', 'Sebua', '1967-11-12', 'Male', 'Married', '09259551176', 'Highschool Graduate', 'Goverment Employee', 'self_employed', 'Yes', 'No', NULL, NULL),
(1189, 'Alfredo', 'Bordaje', 'Suansing', '1960-11-12', 'Male', 'Married', '09332491842', 'Vocational', 'Businessman', 'self_employed', 'Yes', 'No', NULL, NULL),
(1190, 'Randy', 'Bonto', 'Rijas', '1976-11-12', 'Male', 'Married', '09219892204', 'Elementary', 'Laborer/Unskilled Worker', 'Casual', 'Yes', 'No', NULL, NULL);

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
(1, 'BRIS', 'Admin', '', 'admin@brisgis.com', '$2y$10$WNeMhZsnJbYx.DdD1Csfau2i1A8GPM5eHhoLGH3djMsAc6T3Rct3C', 'Admin', 'G4KkJ68bkF2H4T9U04wvHrJjgeeoaolBlDI1vqFhIHZoPmPbqBurrAraLoLo', NULL, '2016-05-04 21:24:27'),
(4, 'Christer John', 'Santiago', 'Duma-og', 'christer@brisgis.com', '$2y$10$9Fd/LyXVln8hsk7FCt.iyOtLz/YI/cM3JuffkYmwsr0By2l1ojxPu', 'Admin', 'iIQAnZM9clnM5xhEufd2BdGPYYNykFMctof36rGFQ89y1sKyfOw5VKdicvcd', '2016-05-01 19:14:05', '2016-05-01 21:41:49'),
(5, 'BRIS', 'User', 'GIS', 'user@brisgis.com', '$2y$10$sLfH0kzEMSKdd0rwXwNuxu8RpqWu2ciqdwjHiy.cwcAhXnB2kPJ0W', 'User', 'rzNki2FIPJlCrYYvtqNA6M3CGkf15XqA0NRY2dEZNx9fYbpRQdpaql1Lk1Ep', '2016-05-09 21:43:02', '2016-05-09 21:53:42'),
(6, 'User', 'BRIS', 'GIS', 'barangay.tibanga@brisgis.com', '$2y$10$bkHeMGtXqK7mEQzT3zl8NORMk.hdTlB2e8Yz8eOhOYvpFriSQjye6', 'User', NULL, '2016-05-09 21:54:58', '2016-05-09 21:54:58');

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
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1191;
--
-- AUTO_INCREMENT for table `disasters`
--
ALTER TABLE `disasters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `puroks`
--
ALTER TABLE `puroks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  ADD CONSTRAINT `disasters_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE;

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
