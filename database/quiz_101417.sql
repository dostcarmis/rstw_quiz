-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2017 at 11:55 AM
-- Server version: 5.6.37-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'General'),
(2, 'Luzon'),
(3, 'Visayas'),
(4, 'Mindanao');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `p_id` bigint(20) UNSIGNED NOT NULL,
  `p_code` varchar(255) DEFAULT '',
  `p_name` varchar(255) DEFAULT '',
  `p_affiliation` varchar(255) DEFAULT '',
  `p_score` int(10) UNSIGNED DEFAULT '0',
  `p_count` int(10) UNSIGNED DEFAULT '5',
  `p_datetime` datetime DEFAULT NULL,
  `p_date` date DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`p_id`, `p_code`, `p_name`, `p_affiliation`, `p_score`, `p_count`, `p_datetime`, `p_date`, `cat_id`) VALUES
(1, '00020233', 'Kenny John Z. Cascayan', 'Government Employee', 1, 5, '2017-10-14 07:55:12', '2017-10-14', 0),
(2, '00050670', 'Adrian B. Ao-wat', 'Student/Academe', 0, 5, '2017-10-14 07:58:18', '2017-10-14', 0),
(3, '00030613', 'Aver Daluping', 'Student/Academe', 2, 5, '2017-10-14 07:59:04', '2017-10-14', 0),
(4, '00030615', 'Andre B Ao-wat', 'Student/Academe', 0, 5, '2017-10-14 07:59:32', '2017-10-14', 0),
(5, '00050667', 'Jaydee Calupig', 'Student/Academe', 1, 5, '2017-10-14 08:00:11', '2017-10-14', 0),
(6, '00040852', 'Josie Tagatag', 'Student/Academe', 2, 5, '2017-10-14 08:02:26', '2017-10-14', 0),
(7, '00010558', 'elias l lagrana', 'Government Employee', 3, 5, '2017-10-14 08:04:13', '2017-10-14', 0),
(8, '00050610', 'Mary Liezl A. Dominguez', 'Government Employee', 4, 5, '2017-10-14 08:05:23', '2017-10-14', 0),
(9, '00000513', 'Sherylyn Oggang', 'Government Employee', 3, 5, '2017-10-14 08:05:30', '2017-10-14', 0),
(10, '00030815', 'Japheth Pallogan', 'Student/Academe', 1, 5, '2017-10-14 08:06:43', '2017-10-14', 0),
(11, '00030236', 'joyoc julaton', 'Student/Academe', 3, 5, '2017-10-14 08:14:18', '2017-10-14', 0),
(12, '00020535', 'Ramiel Lindawan Lagaban', 'Government Employee', 1, 5, '2017-10-14 08:15:18', '2017-10-14', 0),
(13, '00040822', 'AJ Liagao', 'Student/Academe', 3, 5, '2017-10-14 08:15:26', '2017-10-14', 0),
(14, '', 'Renier W. Aguibot', 'Student/Academe', 2, 5, '2017-10-14 08:16:21', '2017-10-14', 0),
(15, '00000708', 'Meeduba M. Balace', 'Others', 2, 5, '2017-10-14 08:17:28', '2017-10-14', 0),
(16, '00030582', 'JR Liagao', 'Government Employee', 4, 5, '2017-10-14 08:17:37', '2017-10-14', 0),
(17, '00050666', 'Krisha Mae A. Ancheta', 'Student/Academe', 2, 5, '2017-10-14 08:18:19', '2017-10-14', 0),
(18, '', 'Renier W. Aguibot', 'Student/Academe', 3, 5, '2017-10-14 08:20:35', '2017-10-14', 0),
(19, '', 'Renier W. Aguibot', 'Student/Academe', 1, 5, '2017-10-14 08:24:00', '2017-10-14', 0),
(20, '00050210', 'Renier W. Aguibot', 'Student/Academe', 4, 5, '2017-10-14 08:25:15', '2017-10-14', 0),
(21, '00050727', 'Angelica Casio', 'Student/Academe', 1, 5, '2017-10-14 08:30:02', '2017-10-14', 0),
(22, '00030288', 'kaejun baculi', 'Student/Academe', 1, 5, '2017-10-14 08:30:38', '2017-10-14', 0),
(23, '00030771', 'hanz poul wandagan', 'Student/Academe', 2, 5, '2017-10-14 08:32:04', '2017-10-14', 0),
(24, '00040179', 'Shaira Chumalan', 'Student/Academe', 0, 5, '2017-10-14 08:42:38', '2017-10-14', 0),
(25, '', 'Metzger Chumallan', 'Student/Academe', 1, 5, '2017-10-14 08:42:51', '2017-10-14', 0),
(26, '00040239', 'Jaydee Chumalan', 'Student/Academe', 0, 5, '2017-10-14 08:43:59', '2017-10-14', 0),
(27, '00050059', 'Jumer Manghi', 'Student/Academe', 3, 5, '2017-10-14 08:44:23', '2017-10-14', 0),
(28, '', 'REY JEE APAYO', 'Student/Academe', 2, 5, '2017-10-14 08:45:02', '2017-10-14', 0),
(29, '00040155', 'Rodel Ingaan', 'Government Employee', 3, 5, '2017-10-14 08:47:33', '2017-10-14', 0),
(30, '00030562', 'lovejoy nazaro', 'Student/Academe', 1, 5, '2017-10-14 08:49:10', '2017-10-14', 0),
(31, '00020549', 'marfel angelo vicente fontanilla', 'Government Employee', 2, 5, '2017-10-14 08:51:53', '2017-10-14', 0),
(32, '00040808', 'Amy Ramirez', 'Homemakers', 1, 5, '2017-10-14 08:53:06', '2017-10-14', 0),
(33, '00040403', 'Mark C Denus', 'Government Employee', 2, 5, '2017-10-14 08:53:07', '2017-10-14', 0),
(34, '00040217', 'AJAY Duriano', 'Others', 0, 5, '2017-10-14 08:54:51', '2017-10-14', 0),
(35, '00040357', 'Shaira Chumalan', 'Student/Academe', 2, 5, '2017-10-14 08:55:01', '2017-10-14', 0),
(36, '00050598', 'Felly Banlangan', 'Student/Academe', 0, 5, '2017-10-14 08:56:45', '2017-10-14', 0),
(37, '00040367', 'Ghemalee Duriano', 'Others', 2, 5, '2017-10-14 08:56:50', '2017-10-14', 0),
(38, '00050316', 'Lark Joy Dacanay', 'Student/Academe', 0, 5, '2017-10-14 08:58:16', '2017-10-14', 0),
(39, '00030275', 'tacher balangan', 'Student/Academe', 0, 5, '2017-10-14 08:58:29', '2017-10-14', 0),
(40, '00040125', 'Cecilia Nazarro', 'Student/Academe', 2, 5, '2017-10-14 08:59:57', '2017-10-14', 0),
(41, '00040297', 'Zeir Fontanilla Cabbigat', 'Business/Entrepreneur', 4, 5, '2017-10-14 08:59:58', '2017-10-14', 0),
(42, '00040095', 'Rissell Chumallan', 'Student/Academe', 1, 5, '2017-10-14 09:02:00', '2017-10-14', 0),
(43, '00030670', 'Gf Elizar Vicente Fontanilla', 'Business/Entrepreneur', 2, 5, '2017-10-14 09:05:09', '2017-10-14', 0),
(44, '00040242', 'Claire Omao', 'Student/Academe', 1, 5, '2017-10-14 09:05:23', '2017-10-14', 0),
(45, '00040327', 'Jaycee Calicana', 'Student/Academe', 3, 5, '2017-10-14 09:06:42', '2017-10-14', 0),
(46, '00040417', 'Cleofe Omao', 'Student/Academe', 1, 5, '2017-10-14 09:07:18', '2017-10-14', 0),
(47, '00030305', 'ELIZA GALAMGAM', 'Student/Academe', 2, 5, '2017-10-14 09:11:20', '2017-10-14', 0),
(48, '00030087', 'cassandra bannacas', 'Student/Academe', 4, 5, '2017-10-14 09:12:14', '2017-10-14', 0),
(49, '00030326', 'JANELLE GONZALEZ', 'Student/Academe', 0, 5, '2017-10-14 09:12:58', '2017-10-14', 0),
(50, '00040507', 'Aileen Galdoc', 'Student/Academe', 2, 5, '2017-10-14 09:13:06', '2017-10-14', 0),
(51, '', 'SOCORRO NASUNGAN', 'Government Employee', 3, 5, '2017-10-14 09:14:09', '2017-10-14', 0),
(52, '00010228', 'Melchir L. Bajo', 'Student/Academe', 2, 5, '2017-10-14 09:14:49', '2017-10-14', 0),
(53, '00000190', 'Caisy faith G.  Tawacnig', 'Student/Academe', 3, 5, '2017-10-14 09:16:00', '2017-10-14', 0),
(54, '00040241', 'Ervin Tawagan', 'Student/Academe', 1, 5, '2017-10-14 09:16:06', '2017-10-14', 0),
(55, '00020478', 'Alyzza B Luis', 'Student/Academe', 3, 5, '2017-10-14 09:17:15', '2017-10-14', 0),
(56, '00020702', 'Bea Fatima A. Gangano', 'Government Employee', 3, 5, '2017-10-14 09:17:40', '2017-10-14', 0),
(57, '00020682', 'Bootch Wowie Patigan bagni', 'Student/Academe', 3, 5, '2017-10-14 09:18:39', '2017-10-14', 0),
(58, '00000916', 'Tequila W. Mosing', 'Student/Academe', 0, 5, '2017-10-14 09:19:53', '2017-10-14', 0),
(59, '00010192', 'valerie wasigan', 'Student/Academe', 1, 5, '2017-10-14 09:20:55', '2017-10-14', 0),
(60, '00040233', 'Erlyn Tumapang', 'Student/Academe', 2, 5, '2017-10-14 09:21:18', '2017-10-14', 0),
(61, '00010521', 'Meirren Faye Bolinao', 'Student/Academe', 3, 5, '2017-10-14 09:21:54', '2017-10-14', 0),
(62, '00040539', 'Midran Kurt Juandagan', 'Student/Academe', 4, 5, '2017-10-14 09:22:37', '2017-10-14', 0),
(63, '00030147', 'Jami maslan', 'Student/Academe', 2, 5, '2017-10-14 09:23:22', '2017-10-14', 0),
(64, '00040189', 'Jervin Dawagan', 'Student/Academe', 2, 5, '2017-10-14 09:23:51', '2017-10-14', 0),
(65, '00040223', 'Merly Manghi', 'Student/Academe', 1, 5, '2017-10-14 09:25:38', '2017-10-14', 0),
(66, '00040509', 'Ran Zinger Bongad', 'Student/Academe', 2, 5, '2017-10-14 09:26:13', '2017-10-14', 0),
(67, '00010803', 'Guenevere Bacacao', 'Student/Academe', 2, 5, '2017-10-14 09:27:02', '2017-10-14', 0),
(68, '00040253', 'Heilie Gupaal', 'Student/Academe', 4, 5, '2017-10-14 09:28:11', '2017-10-14', 0),
(69, '00030086', 'rhodesia alicog', 'Student/Academe', 1, 5, '2017-10-14 09:29:25', '2017-10-14', 0),
(70, '00050693', 'Krystal Manzanillo', 'Government Employee', 3, 5, '2017-10-14 09:31:10', '2017-10-14', 0),
(71, '00040569', 'Britney Ito', 'Student/Academe', 2, 5, '2017-10-14 09:31:25', '2017-10-14', 0),
(72, '00040599', 'Rahim Itong', 'Student/Academe', 1, 5, '2017-10-14 09:32:28', '2017-10-14', 0),
(73, '00040113', 'Dante Baingco', 'Student/Academe', 2, 5, '2017-10-14 09:32:31', '2017-10-14', 0),
(74, '', 'Travis Jacob Canao', 'Student/Academe', 1, 5, '2017-10-14 09:34:46', '2017-10-14', 0),
(75, '00040151', 'Gwayn Nangpaso', 'Student/Academe', 2, 5, '2017-10-14 09:35:45', '2017-10-14', 0),
(76, '00040572', 'Travis Jacob Canao', 'Student/Academe', 3, 5, '2017-10-14 09:37:37', '2017-10-14', 0),
(77, '00040491', 'Noli Magayam', 'Student/Academe', 2, 5, '2017-10-14 09:37:38', '2017-10-14', 0),
(78, '00040431', 'Maridel Gannaban', 'Student/Academe', 1, 5, '2017-10-14 09:38:56', '2017-10-14', 0),
(79, '00040371', 'Gwenny Bacacao', 'Student/Academe', 1, 5, '2017-10-14 09:41:46', '2017-10-14', 0),
(80, '', 'Juliet  C Mange', 'Homemakers', 3, 5, '2017-10-14 09:42:24', '2017-10-14', 0),
(81, '00040461', 'Zecariah Agyao', 'Student/Academe', 2, 5, '2017-10-14 09:43:24', '2017-10-14', 0),
(82, '00040121', 'Midran Kurt Wandagan', 'Student/Academe', 3, 5, '2017-10-14 09:43:56', '2017-10-14', 0),
(83, '00020450', 'Juliet  C Mange', 'Homemakers', 1, 5, '2017-10-14 09:45:48', '2017-10-14', 0),
(84, '00040162', 'Ezra Lagasin', 'Student/Academe', 1, 5, '2017-10-14 09:46:07', '2017-10-14', 0),
(85, '00040091', 'Chelim Wingngan', 'Student/Academe', 1, 5, '2017-10-14 09:47:09', '2017-10-14', 0),
(86, '', 'Fitz Jay Mar Jude V Martin', 'Student/Academe', 2, 5, '2017-10-14 09:48:17', '2017-10-14', 0),
(87, '00020378', 'DIARY BALNAO DAODAOEN', 'Government Employee', 1, 5, '2017-10-14 09:48:44', '2017-10-14', 0),
(88, '00020489', 'Fitz Jay Mar Jude V Martin', 'Student/Academe', 1, 5, '2017-10-14 09:49:11', '2017-10-14', 0),
(89, '00050419', 'Dianne Garcia', 'Student/Academe', 2, 5, '2017-10-14 09:52:28', '2017-10-14', 0),
(90, '00040401', 'Marvi Daliong', 'Student/Academe', 1, 5, '2017-10-14 09:52:42', '2017-10-14', 0),
(91, '00040505', 'Hadji Wanason', 'Student/Academe', 2, 5, '2017-10-14 09:53:31', '2017-10-14', 0),
(92, '00040475', 'Jeyoh Mandigi', 'Student/Academe', 1, 5, '2017-10-14 09:55:13', '2017-10-14', 0),
(93, '00040632', 'Zoe Aleria Palicas', 'Student/Academe', 2, 5, '2017-10-14 09:55:46', '2017-10-14', 0),
(94, '', 'jefferson Bosway', 'Student/Academe', 4, 5, '2017-10-14 09:57:04', '2017-10-14', 0),
(95, '00050055', 'Shaleen Baluyan', 'Student/Academe', 2, 5, '2017-10-14 09:57:08', '2017-10-14', 0),
(96, '00040364', 'Kalliya Osway Cola-ao', 'Student/Academe', 2, 5, '2017-10-14 09:58:39', '2017-10-14', 0),
(97, '00000254', 'Kevin Massi', 'Student/Academe', 3, 5, '2017-10-14 09:58:58', '2017-10-14', 0),
(98, '00050803', 'Mark B. Bantiag', 'Student/Academe', 3, 5, '2017-10-14 09:59:50', '2017-10-14', 0),
(99, '00040549', 'Lorlee Sacpa', 'Student/Academe', 4, 5, '2017-10-14 10:00:29', '2017-10-14', 0),
(100, '00040334', 'briane eda ganon', 'Government Employee', 0, 5, '2017-10-14 10:01:14', '2017-10-14', 0),
(101, '00050663', 'Judy Ann Ayangao', 'Student/Academe', 1, 5, '2017-10-14 10:01:59', '2017-10-14', 0),
(102, '00050743', 'James Licaycay', 'Student/Academe', 2, 5, '2017-10-14 10:02:23', '2017-10-14', 0),
(103, '00030777', 'Chrishel A. Macaiba', 'Student/Academe', 0, 5, '2017-10-14 10:03:21', '2017-10-14', 0),
(104, '00050664', 'PHOBIE KATE BANGLAGAN', 'Student/Academe', 3, 5, '2017-10-14 10:03:50', '2017-10-14', 0),
(105, '00040935', 'CHERILYN PALLOGAN', 'Student/Academe', 3, 5, '2017-10-14 10:05:01', '2017-10-14', 0),
(106, '00030121', 'Bonalyn Cadatal', 'Student/Academe', 4, 5, '2017-10-14 10:05:19', '2017-10-14', 0),
(107, '00050773', 'Reminda C Lumiqued', 'Student/Academe', 1, 5, '2017-10-14 10:06:29', '2017-10-14', 0),
(108, '00050713', 'Vemileen Maslan', 'Student/Academe', 3, 5, '2017-10-14 10:06:33', '2017-10-14', 0),
(109, '00040629', 'Althea Maslan', 'Student/Academe', 2, 5, '2017-10-14 10:07:50', '2017-10-14', 0),
(110, '00000786', 'REY JEE APAYO', 'Student/Academe', 3, 5, '2017-10-14 10:10:04', '2017-10-14', 0),
(111, '00040463', 'Emie Joy F. Fernando', 'Student/Academe', 0, 5, '2017-10-14 10:10:32', '2017-10-14', 0),
(112, '00030510', 'Brandon  T. Maggongay', 'Student/Academe', 2, 5, '2017-10-14 10:11:55', '2017-10-14', 0),
(113, '00040477', 'Emily Fernando', 'Student/Academe', 2, 5, '2017-10-14 10:12:10', '2017-10-14', 0),
(114, '00040341', 'Maricris Dalinagay', 'Student/Academe', 1, 5, '2017-10-14 10:13:17', '2017-10-14', 0),
(115, '00040542', 'Lean Caducio', 'Others', 5, 5, '2017-10-14 10:13:48', '2017-10-14', 0),
(116, '00040212', 'Emie Joy Fernando', 'Student/Academe', 3, 5, '2017-10-14 10:16:39', '2017-10-14', 0),
(117, '00040512', 'Brendalyne Ducusin', 'Private Organization', 4, 5, '2017-10-14 10:17:56', '2017-10-14', 0),
(118, '00040211', 'Leo Steve C. Lumiqued', 'Student/Academe', 2, 5, '2017-10-14 10:19:27', '2017-10-14', 0),
(119, '00050404', 'Marife Galo', 'Student/Academe', 2, 5, '2017-10-14 10:20:58', '2017-10-14', 0),
(120, '00030318', 'Christianity B. Ducusin', 'Others', 2, 5, '2017-10-14 10:21:47', '2017-10-14', 0),
(121, '00040602', 'Zephanie Dalere', 'Student/Academe', 1, 5, '2017-10-14 10:22:13', '2017-10-14', 0),
(122, '00050529', 'Chona S. Wacdagan', 'Student/Academe', 1, 5, '2017-10-14 10:23:17', '2017-10-14', 0),
(123, '00030753', 'valerie blas', 'Student/Academe', 2, 5, '2017-10-14 10:24:41', '2017-10-14', 0),
(124, '00050633', 'JD Chumallan', 'Student/Academe', 2, 5, '2017-10-14 10:27:02', '2017-10-14', 0),
(125, '00030776', 'nadja dalupig', 'Student/Academe', 1, 5, '2017-10-14 10:27:22', '2017-10-14', 0),
(126, '00050040', 'Felis Bangsiw', 'Others', 1, 5, '2017-10-14 10:29:39', '2017-10-14', 0),
(127, '00030532', 'abegail yaun', 'Student/Academe', 2, 5, '2017-10-14 10:29:46', '2017-10-14', 0),
(128, '00040170', 'Aki=illis Dong-as', 'Student/Academe', 2, 5, '2017-10-14 10:30:56', '2017-10-14', 0),
(129, '00040382', 'Analyn Foy-os', 'Student/Academe', 1, 5, '2017-10-14 10:31:21', '2017-10-14', 0),
(130, '00020466', 'Annaliza Casem Danggalan', 'Government Employee', 0, 5, '2017-10-14 10:33:04', '2017-10-14', 0),
(131, '00000492', 'VERLINE PANGSIW', 'Student/Academe', 3, 5, '2017-10-14 10:34:06', '2017-10-14', 0),
(132, '00030918', 'Nika O. Daluping', 'Student/Academe', 0, 5, '2017-10-14 10:34:10', '2017-10-14', 0),
(133, '00040163', 'Aiza Tulaban', 'Student/Academe', 2, 5, '2017-10-14 10:36:07', '2017-10-14', 0),
(134, '00040258', 'Esmeralda Costales', 'Student/Academe', 2, 5, '2017-10-14 10:36:09', '2017-10-14', 0),
(135, '00010107', 'JAN NAVELL SALANG-OY', 'Student/Academe', 2, 5, '2017-10-14 10:37:31', '2017-10-14', 0),
(136, '00040198', 'Jarimar Salang-oy', 'Student/Academe', 2, 5, '2017-10-14 10:38:40', '2017-10-14', 0),
(137, '00040228', 'angeli goyong', 'Student/Academe', 2, 5, '2017-10-14 10:39:21', '2017-10-14', 0),
(138, '00030038', 'SHARMAINE DULLABANG', 'Student/Academe', 4, 5, '2017-10-14 10:40:55', '2017-10-14', 0),
(139, '00040133', 'Junlyn Bayog', 'Student/Academe', 0, 5, '2017-10-14 10:41:12', '2017-10-14', 0),
(140, '00040103', 'ashley salang-oy', 'Student/Academe', 1, 5, '2017-10-14 10:42:04', '2017-10-14', 0),
(141, '00050355', 'Zaldy C. Awingan', 'Student/Academe', 1, 5, '2017-10-14 10:43:46', '2017-10-14', 0),
(142, '00040225', 'jason s salida', 'Student/Academe', 3, 5, '2017-10-14 10:44:20', '2017-10-14', 0),
(143, '00040153', 'kenneth duclan', 'Student/Academe', 2, 5, '2017-10-14 10:47:23', '2017-10-14', 0),
(144, '00040778', 'Collen Gray Fafag', 'Student/Academe', 3, 5, '2017-10-14 10:48:58', '2017-10-14', 0),
(145, '', 'Rainer Apoli', 'Student/Academe', 1, 5, '2017-10-14 10:49:52', '2017-10-14', 0),
(146, '00040187', 'Jet Batog', 'Student/Academe', 3, 5, '2017-10-14 10:50:27', '2017-10-14', 0),
(147, '00030801', 'ANGELICA BAYOG', 'Student/Academe', 1, 5, '2017-10-14 10:51:29', '2017-10-14', 0),
(148, '00040748', 'Rainer Apoli', 'Student/Academe', 0, 5, '2017-10-14 10:54:00', '2017-10-14', 0),
(149, '', 'Rochelle Tulaba', 'Student/Academe', 2, 5, '2017-10-14 10:55:31', '2017-10-14', 0),
(150, '', 'Paul Rivera', 'Student/Academe', 1, 5, '2017-10-14 10:56:40', '2017-10-14', 0),
(151, '00030807', 'Lyra Gatin', 'Student/Academe', 1, 5, '2017-10-14 10:57:47', '2017-10-14', 0),
(152, '00040498', 'cleo omao', 'Student/Academe', 1, 5, '2017-10-14 10:57:57', '2017-10-14', 0),
(153, '00040468', 'jessie calictan', 'Student/Academe', 2, 5, '2017-10-14 10:59:00', '2017-10-14', 0),
(154, '00040408', 'rhonel loñez', 'Student/Academe', 4, 5, '2017-10-14 10:59:11', '2017-10-14', 0),
(155, '00050981', 'William Olinon', 'Student/Academe', 0, 5, '2017-10-14 11:00:33', '2017-10-14', 0),
(156, '00040438', 'bradwin cadater', 'Student/Academe', 2, 5, '2017-10-14 11:01:41', '2017-10-14', 0),
(157, '00040623', 'adeline omengan', 'Student/Academe', 3, 5, '2017-10-14 11:03:44', '2017-10-14', 0),
(158, '00040318', 'dastan bula-ay', 'Student/Academe', 3, 5, '2017-10-14 11:05:28', '2017-10-14', 0),
(159, '00040817', 'Levi Serel Bula-ay', 'Student/Academe', 2, 5, '2017-10-14 11:12:01', '2017-10-14', 0),
(160, '00040343', 'kristle lammawin', 'Student/Academe', 0, 5, '2017-10-14 11:13:08', '2017-10-14', 0),
(161, '00040733', 'Jamby Balikaw', 'Student/Academe', 1, 5, '2017-10-14 11:14:33', '2017-10-14', 0),
(162, '00050619', 'wilbren langod', 'Student/Academe', 1, 5, '2017-10-14 11:16:35', '2017-10-14', 0),
(163, '00020565', 'Daniel Adrian Cabrera Rivera', 'Student/Academe', 1, 5, '2017-10-14 11:18:02', '2017-10-14', 0),
(164, '', 'Renzer Asiw', 'Student/Academe', 3, 5, '2017-10-14 11:19:30', '2017-10-14', 0),
(165, '00050649', 'Renzer Asiw', 'Student/Academe', 2, 5, '2017-10-14 11:20:12', '2017-10-14', 0),
(166, '00040286', 'Golamir Esician', 'Student/Academe', 3, 5, '2017-10-14 11:20:36', '2017-10-14', 0),
(167, '00030073', 'Mae Anne G Melanes', 'Student/Academe', 1, 5, '2017-10-14 11:21:01', '2017-10-14', 0),
(168, '00030196', 'Trixhia Avril Tagaruma', 'Student/Academe', 2, 5, '2017-10-14 11:21:50', '2017-10-14', 0),
(169, '00050253', 'Khrisha M. Gunayon', 'Student/Academe', 3, 5, '2017-10-14 11:22:35', '2017-10-14', 0),
(170, '', 'Jam-in Pao-iton', 'Student/Academe', 2, 5, '2017-10-14 11:22:36', '2017-10-14', 0),
(171, '00040793', 'Kyra Althea Pocas', 'Student/Academe', 1, 5, '2017-10-14 11:23:27', '2017-10-14', 0),
(172, '00040394', 'Patricia Sacla', 'Student/Academe', 3, 5, '2017-10-14 11:24:20', '2017-10-14', 0),
(173, '00040850', 'Jam-in Pao-iton', 'Student/Academe', 2, 5, '2017-10-14 11:25:43', '2017-10-14', 0),
(174, '00040787', 'Chris N Zamora', 'Student/Academe', 2, 5, '2017-10-14 11:29:58', '2017-10-14', 0),
(175, '', 'khrisha gunayon', 'Student/Academe', 3, 5, '2017-10-14 11:31:06', '2017-10-14', 0),
(176, '00050087', 'anton batulay', 'Student/Academe', 0, 5, '2017-10-14 11:31:33', '2017-10-14', 0),
(177, '00050928', 'khrisha gunayon', 'Student/Academe', 1, 5, '2017-10-14 11:31:54', '2017-10-14', 0),
(178, '00050182', 'MARY NOR DUGAYON', 'Student/Academe', 2, 5, '2017-10-14 11:33:23', '2017-10-14', 0),
(179, '00050147', 'Kayla B. Sorad', 'Student/Academe', 2, 5, '2017-10-14 11:34:43', '2017-10-14', 0),
(180, '00050117', 'Collin L Dona-al', 'Student/Academe', 1, 5, '2017-10-14 11:35:54', '2017-10-14', 0),
(181, '00010113', 'Virginia  Weygan', 'Business/Entrepreneur', 1, 5, '2017-10-14 11:39:34', '2017-10-14', 0),
(182, '00040373', 'Precious Ocab', 'Student/Academe', 1, 5, '2017-10-14 11:40:30', '2017-10-14', 0),
(183, '00040772', 'Merly Manghi', 'Student/Academe', 3, 5, '2017-10-14 11:41:22', '2017-10-14', 0),
(184, '00040920', 'Geisha Dalignoc', 'Student/Academe', 1, 5, '2017-10-14 11:52:24', '2017-10-14', 0),
(185, '00040888', 'Jenny rose Abejo', 'Student/Academe', 2, 5, '2017-10-14 11:53:26', '2017-10-14', 0),
(186, '00040980', 'Quen Beligan', 'Student/Academe', 0, 5, '2017-10-14 11:54:30', '2017-10-14', 0),
(187, '00040950', 'Fame Bummosao', 'Student/Academe', 1, 5, '2017-10-14 11:55:06', '2017-10-14', 0),
(188, '00040890', 'Hannah Grace Dangin', 'Student/Academe', 1, 5, '2017-10-14 11:55:48', '2017-10-14', 0),
(189, '00040978', 'Ivy Bayed', 'Student/Academe', 0, 5, '2017-10-14 11:56:30', '2017-10-14', 0),
(190, '00050089', 'KRISTELLE GRAIL B CALUMNAG', 'Student/Academe', 1, 5, '2017-10-14 12:01:03', '2017-10-14', 0),
(191, '00040255', 'Jalyn Baluyan', 'Student/Academe', 3, 5, '2017-10-14 12:04:59', '2017-10-14', 0),
(192, '00040195', 'Angel Manantan', 'Student/Academe', 2, 5, '2017-10-14 12:05:56', '2017-10-14', 0),
(193, '00040135', 'diane garcia', 'Student/Academe', 1, 5, '2017-10-14 12:06:55', '2017-10-14', 0),
(194, '00040209', 'Metzger Chumallan', 'Student/Academe', 2, 5, '2017-10-14 12:11:52', '2017-10-14', 0),
(195, '00050141', 'Macey Kyle M. Tumbali', 'Student/Academe', 3, 5, '2017-10-14 12:15:09', '2017-10-14', 0),
(196, '', 'Flordeliza Naje', 'Government Employee', 1, 5, '2017-10-14 12:15:11', '2017-10-14', 0),
(197, '00020585', 'Flordeliza Naje', 'Government Employee', 2, 5, '2017-10-14 12:16:24', '2017-10-14', 0),
(198, '00050389', 'jefferson Bosway', 'Student/Academe', 3, 5, '2017-10-14 12:20:40', '2017-10-14', 0),
(199, '00040710', 'Jen Cariaga', 'Government Employee', 1, 5, '2017-10-14 12:22:21', '2017-10-14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `q_text` text,
  `q_op1` varchar(255) DEFAULT '',
  `q_op2` varchar(255) DEFAULT '',
  `q_op3` varchar(255) DEFAULT '',
  `q_op4` varchar(255) DEFAULT '',
  `q_ans` int(10) UNSIGNED DEFAULT '0',
  `cat_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `q_text`, `q_op1`, `q_op2`, `q_op3`, `q_op4`, `q_ans`, `cat_id`) VALUES
(61, 'Between 50-121 AD, Chinese inventor Cai Lun invented __________. He also included the use of raw materials such as bark, hemp, silk and fishing net in the process of making it.', 'Paper', 'Cork Board', 'Rope', 'Ceramic Pots', 1, 1),
(62, 'Who invented the microscope?', 'Galileo Galilei', 'Zacharias Janssen', 'Archimedes', 'Leonardo da Vinci', 2, 1),
(64, 'What did Galileo Galilei invented?', 'Telescope', 'Microscope', 'Stethoscope', 'Compass', 1, 1),
(65, 'The reflecting telescope, which reduces optical distortion, is invented by ____________.', 'Sir Isaac Newton', 'Galileo Galilei', 'Archimedes', 'Alexander Graham Bell', 1, 1),
(66, 'Alexander Graham Bell, the inventor of telephone, was born on ____________.', 'August 2, 1922', 'March 3, 1847', 'March 2, 1922', 'August 3, 1847', 2, 1),
(67, 'Who invented the steam engine in 1698?', 'Thomas Newcomen', 'James Watt', 'Thomas Watt', 'Thomas Savery', 4, 1),
(68, 'The first great invention of Thomas Edison was the _________.', 'Tin foil phonograph', 'Lightbulbs', 'Stenograph', 'Fluorescent Lamps', 1, 1),
(71, 'In 1891, Canadian James Naismith invented the basketball. What was his occupation?', 'Physicist', 'Science Teacher', 'Physical Education Instructor', 'Scientist', 3, 1),
(72, 'A Filipino biologist, Angel Alcala, is well known for her invention of _____________ to be used for fisheries in Southeast Asia.', 'Artificial multiplication of seawater species', 'Artificial coral reefs', 'Genetically modified Tilapia', 'Seawater Testing Apparatus', 2, 1),
(73, 'Which among the following is/are the invention/s of Nikola Tesla?', 'Fluorescent lighting', 'Tesla induction motor', 'Tesla Coil', 'All of the above', 4, 1),
(74, 'He popularized the gas-powered car with the Model-T. He is known for his proclamation, â€œI will build a car for the great multitudeâ€ in 1903.', 'Henry Ford', 'Kiichiro Toyoda', 'Iwasaki Yataro', 'Ferdinand Porsche', 1, 1),
(75, 'He is famous for his kite experiment which eventually lead to the discovery of electricity.', 'Michael Faraday', 'Benjamin Franklin', 'Nikola Tesla', 'William Gilbert', 2, 1),
(76, 'The cotton gin is a machine that separates seeds, hulls, and other unwanted materials from cotton after it has been picked. Who invented the cotton gin in 1794?', 'Johannes Gutenberg', 'Iwasaki Yataro', 'William Gilbert', 'Eli Whitney', 4, 1),
(77, 'Modified True or False. (John Harrison) was an English agricultural entrepreneur who invented the seed drill and horse drawn hoe. These inventions increased yields prior to the industrial revolution.', 'False. Abrahan Darby', 'False. Jethro Tull', 'False. Cai Lun', 'True.', 2, 1),
(78, 'john Harrison was an English carpenter and clockmaker. He invented a device for __________.', 'Measuring the speed of a car', 'Measuring the travel time of a ship', 'Measuring the latitude at sea', 'Measuring the longitude at sea', 4, 1),
(79, 'William Cullen is a Scottish physician and chemist who is credited with inventing the basis for the first ___________.', 'Artificial refrigerator', 'Television', 'Radio', 'All of the above', 1, 1),
(80, 'He is considered as the "father of the industrial revolution" and was a leading pioneer of the spinning industry.', 'Emile Durkheim', 'Sir Edward Cullen', 'Sir Richard Arkwright', 'John Wilkinson', 3, 1),
(81, 'Who is the Filipino scientist who designed the food-processing machine?', 'Arturo Alcaraz', 'Arturo Escarez', 'Julian Banzon', 'Benjamin Almeda', 4, 1),
(82, 'What was the main contribution of the Filipino scientist, Julian Banzon, in the field of research?', 'Methods of producing alternative fuels', 'The production of biofuels', 'The introduction of the use of genetically modified organisms', 'The invention of aspirin', 1, 1),
(83, 'Aspirin is used to reduce fever and relieve mild to moderate pain from conditions such as muscle aches, toothaches, common colds, and headaches. Who discovered aspirin?', 'Edison Alba', 'Felix Hoffman', 'Ferdinand Aspirin', 'Aspirin Alba', 2, 1),
(84, 'Arturo Alcaraz is a ____________ who specializes in geothermal energy development.', 'Volcanologist', 'Seismologist', 'Physicist', 'Developer', 1, 1),
(85, 'He is an English physicist who related heat energy to mechanical work leading to the conservation of energy law. The SI unit for energy is also named in his honor. Who is he?', 'James Watt', 'James Prescott Joule', 'Prescott Watt', 'Isaac Newton', 2, 1),
(86, 'What unit of measurement was named after Alessandro Volta and Charles-Augustin de Coulomb?', 'V and W', 'Volta and Coulomb', 'V and N', 'None of the above', 4, 1),
(88, 'Statement I. Ohm is the unit of measurement named after Georg Simon Ohm.\r\nStatement II. It is used to measure the Energy Resistance.', 'Both statements are true.', 'Both statements are false.', 'Only the first statement is true.', 'Only the second statement is true.', 3, 1),
(89, 'Statement I. Hertz is the unit of measurement of Power.\r\nStatement II. It is named after Heinrich Hertz.', 'Both statements are true.', 'Both statements are false.', 'Only the first statement is true.', 'Only the second statement is true.', 4, 1),
(90, 'What is the symbol used to represent acceleration?', 'Kwh', 'Hz', 'm s^-2', 'm2', 3, 1),
(91, 'ohm was named after Georg Simon Ohm. What does ohm measures?', 'Force', 'Frequency', 'Electric Potential difference', 'Electric Resistance', 4, 1),
(93, 'Who is the Filipino Scientist best known for his advancements in mango farming research and tropical tree physiology?', 'Benjamin Cabrera', 'Rambon Barba', 'Julian Banzon', 'Aruro Alcaraz', 2, 1),
(94, 'Doctor Benjamin Cabrera is a Filipino Scientist who developed innovations in drug treatments against diseases caused by _______________________.', 'Housefly and compost pit', 'Cats and Dogs', 'Mosquitoes and agricultural soil', 'Bees and Ants', 3, 1),
(96, 'Magdalena Cantoria is a noted Filipino ______________.', 'Zoologist', 'Cytologist', 'Physicist', 'Botanist', 4, 1),
(97, 'She has made scientific contributions to the biochemistry in the field if conotoxins.', 'Josephine Comiso', 'Magdalena Cantoria', 'Lourdes Cruz', 'Emerita de Guzman', 3, 1),
(98, 'Rolando de la Cruz is a Filipino scientist who is well known for his invention of _____________.', 'Anti-aging cream', 'Whitening cream', 'Anti-cancer skin cream', 'Anti-wrinkles skin cream', 3, 1),
(99, 'Who is the Filipino doctor who is credited with the studies that led to the invention of an improved incubator and a jaundice relieving device?', 'Anacleto Del Rosario', 'Fe Del Mundo', 'Rolando de la Cruz', 'Josefino Comiso', 2, 1),
(100, 'Modified True or False. Filipino chemist (Ernesto Del Rosario) is best known for his achievements in biotechnology and applied physical chemistry.', 'False. Roberto Del Rosario', 'False. Anacleto Del Rosario', 'False. Pedro Escuro', 'True.', 4, 1),
(101, 'Roberto del Rosario is the inventor of the Karaoke Sing Along System.\r\nRoberto del Rosario is a biotechnologist.', 'Both statements are true.', 'Both statements are false.', 'Only the first statement is true.', 'Only the second statement is true.', 3, 1),
(102, 'He is the Filipino scientist best known for his isolation of nine rice varieties.', 'Pedro Escuro', 'Julian Banzon', 'Agapito Flores', 'Anacleto del Rosario', 1, 1),
(103, 'Who invented the fluorescent lamp?', 'Aga Fluores', 'Agapito Fluores', 'Agapito Flores', 'None of the above', 3, 1),
(104, 'Francisco Fronda is best known as the father of ______________ in the Philippines.', 'Soil Science', 'Chemical Science', 'Physical Science', 'Poultry Science', 4, 1),
(105, 'He established the National Research Council of the Philippines.', 'Hilario Lara', 'Julian Banzon', 'Agapito Flores', 'Gregorio Reyes', 1, 1),
(106, 'Statement I. Eduardo Quisumbing was a noted expert in the medicinal plants in the Philippines. \r\nStatement II. He also invented the Quink ink.', 'Both statements are true.', 'Both statements are false.', 'Only the first statement is true.', 'Only the second statement is true.', 3, 1),
(107, 'She promoted the development of genetics in the Philippines.', 'Dolores Ramirez', 'Josefa Rodriguez', 'Aurora Quisumbing', 'None of the above', 1, 1),
(108, 'What are the contributions of Filipino Chemist Alfredo Santos?', 'Researches in the chemistry of natural products', 'The invention of Lunar Rover or Moon Buggy', 'The studies of nutritive values and chemical composition of local foods', 'None of the above', 1, 1),
(109, 'A. Carmen Velasquez is a noted Filipino biologist. B. Carmen Velasquez made intensive studies of bluegreen algae.', 'A is true.', 'B is true.', 'Both A and B are true.', 'None of the above is true.', 1, 1),
(111, 'In 1923, a Filipino chemist formulated â€œQuinkâ€ ink for fountain pens.  This ink is permanent, dries easily and remains liquid inside the tube.  What is the name of this Filipino inventor?', 'Manuel Zamora', 'Francisco Quisumbing', 'Enrique Ostrea', 'Rodolfo Arambulo', 2, 1),
(112, 'In 1911, physicist Ernest Rutherford discovered the atomic nucleus by bombarding a thin metal foil with alpha particles.  What metal did he use for this discovery?', 'silver', 'copper', 'gold', 'titanium', 3, 1),
(114, 'Marie Curie was the first woman Nobel Prize Awardee who discovered the two radioactive elements.  One of which is radium.  What is the other?', 'Mercurium', 'Polonium', 'Uranium', 'Titanium', 2, 1),
(115, 'This invention is a simple double loop wire that could hold loose sheets of paper together without damage.  Invented by Johann Vaaler of Norway, this invention was patented in Germany in 1900.  What do you call this invention?', 'staple wire', 'magic clip', 'thumb tacks', 'paperclip', 4, 1),
(116, 'The importance of uranium today lies in its value as a producer of nuclear power.  Who is this German chemist who discovered uranium in 1789?', 'Martin Klapoth', 'Stephen Poplawski', 'Steve Wozniak', 'William Schaare', 1, 1),
(118, 'What is the name of the first Filipino inventor who was awarded by the World Intellectual Property Organization (WIPO) as the Most Outstanding Inventor in 1980?', 'Felipe Santillan', 'Dioscoro Umali', 'Jose Encarnacion, Jr.', 'Camilo Tabalba', 1, 1),
(119, 'An English physician discovered the circulation of the blood without the aid of microscope.  Who is this English physician?', 'William Harvey', 'Charles Drew', 'Edwin Perkins', 'James Ritty', 1, 1),
(120, 'The first mammal to be cloned was a sheep.  What was the name of this sheep?', 'Laika', 'Dolly', 'Clementine', 'Diana', 2, 1),
(121, 'The laser, acronym for light amplification by stimulated emission of radiation, is a light wave amplifier that is more powerful than the maser that amplifies microwaves.  The reason for this is because one photon of light has a hundred times more energy that a microwave photon.  Who invented the laser?', 'Willard F. Libby', 'Robert Bakker', 'Elisha G. Otis', 'Gordon Gould', 4, 1),
(122, 'Textured vegetable protein or TVP are meat substitutes.  During the 1960s, manufacturers saw a great future for TVP.  Made mainly from soya, TVPs have been sold in health-food shops and supermarkets.  In what country was the TVP first patented in 1953?', 'America', 'England', 'Italy', 'Poland', 1, 1),
(123, 'It is known as the worldâ€™s first intelligent shoes.  It senses the cushioning level on every step, understands whether the cushioning provided is too soft or too firm, then adapts itself to provide the right level of cushioning.  What is the name of this worldâ€™s first intelligent shoes that revolutionized the footwear industry?', 'Nike', 'Adidas 1', 'Skecthers', 'Converse', 2, 1),
(124, 'Ladislo Biro was a famous inventor.  What did he invent in 1938?', 'pocket calculators', 'electronic typewriters', 'ball point pens', 'contact lens', 3, 1),
(125, 'Who is credited with the invention of air conditioning?', 'L. E. Waterman', 'Isaac Merrit Singer', 'W. H. Carrier', 'Orville Wright', 3, 1),
(126, 'Ernst FW Alexanderson invented the radio.  The radio was constructed using a 100,000-cycle machine.  In 1904, for the first time the people heard voice and a solo musical instrument played over a radio broadcast.  What was the musical instrument played during that broadcast?', 'piano', 'violin', 'harmonica', 'banjo', 2, 1),
(127, 'Who was the first scientist to describe the laws of motion?', 'Isaac Newton', 'Albert Einstein', 'Charles Darwin', 'Thomas Edison', 1, 1),
(128, 'Alexander Fleming, a British physician, discovered one of the most important drugs known to fight infection caused by many kinds of germs and bacteria.  What drug did he discover?', 'Amoxicillin', 'Cefalexin', 'Penicillin', 'Norfloxacin', 3, 1),
(129, 'Which of the following came first?', 'Elevator', 'Telephone', 'Radio', 'Pocket calculator', 1, 1),
(130, 'In 1455, Gutenberg used his movable type printing technique to produce the first printed book.  Spanning more than 1,200 pages, this book took several years to complete.  What is this book?', 'Encyclopedia', 'Almanac', 'Bible', 'World Atlas', 3, 1),
(131, 'Edwin Perkins invented a drink 1927 that was considered as the â€œOfficial State Soft Drinkâ€ of Hastings, Nebraska.  What was his invention?', 'Tang', 'Kool-Aid', 'Julep', '7up', 2, 1),
(132, 'Who patented the drinking straw in January 3, 1888?', 'Howard Pile', 'John Kemeny', 'Marvin Stone', 'Neil Arnott', 3, 1),
(133, 'Who among the following inventors did not contribute to the development of the first solar battery?', 'Gerald Pearson', 'Calvin Fuller', 'Tom Kurtz', 'Daryl Chapin', 3, 1),
(135, 'This Filipino scientist provided leadership in the development, isolation, and release of many rice cultivars.  His classic C4-63 became the standard for high-quality rice in the Philippines as well as many other rice-growing countries.  What is his name?', 'Jose R. Velasco', 'Pedro B. Escuro', 'Casimiro del Rosario', 'Francisco O. Santos', 2, 1),
(136, 'In the new IP code (RA 8293), how many years is the term of Letters Patent for an invention?', '17 years from the filing date', '20 years from the filing date', '17 years from the grant of patent', '20 years from the grant of patent', 2, 1),
(139, 'The flushing toilet was invented in 1596 but it was not until 1850s when few homes had running water and drains that the invention caught on.  Who is this poet inventor of the flushing toilet?', 'Percival Everitt', 'John Harrington', 'Adolf Fick', 'Jesse Reno', 2, 1),
(140, 'Bicycles were invented about 200 years ago and were improved as the years go by.  In 1896, cycling uphill became much easier and faster with the addition of derailleur gears.  Who is the Englishman who patented the derailleur gears?', 'Obadiah Elliot', 'Edmund Hodgkinson', 'Etienne Lenoir', 'Frederick Lanchester', 2, 1),
(141, 'In many of todayâ€™s offices, the typewriter has been replaced by word processors, which enable text to be stored, and corrections to be made easily.  The first word processor was the size of a desk and had no screen.  Who devised the first word processor in 1964?', 'Texas Instruments', 'Mackintosh', 'IBM Company', 'Microsoft', 3, 1),
(142, 'In the 1960s a space rocket was developed in order to send astronauts to the moon.  Because there is no air in space, scientists had to devise special oxygen-rich fuel to power this rocket.  What is the name of this space rocket?', 'Saturn V', 'Vostok I', 'Apollo 11', 'Soyuz 1', 1, 1),
(144, 'A London tanner invented the toothbrush in 1780.  What is the name of the inventor of the toothbrush?', 'William Addis', 'Charles Strite', 'Edwin Drake', 'Ami Argand', 1, 1),
(145, 'In 1833, this American inventor built the first lock-stitch machine.  What was the name of this inventor who is also the inventor of the safety pin?', 'Elias Howe', 'Walter Hunt', 'Balthazar Krems', 'Isaac Singer', 2, 1),
(146, 'The first car to be sold to the public was made by a German in 1885.  The engine was at the back of the car and powered by rear wheels.  By 1896, more than 130 cars had been built in his factory.  Who is this German carmaker?', 'Nicolaus August Otto', 'Gottlieb Daimler', 'Karl Benz', 'Henry Ford', 3, 1),
(147, 'Who created the Lunar Rover or moon buggy used in 1969 by American astronauts who first landed on the moon?', 'Roberto del Rosario', 'Abelardo Aguilar', 'Eduardo San Juan', 'Cornelio SeÃ±o', 3, 1),
(148, 'This scientist is a pioneer in ophthalmology.  He established the first eye hospital in the country and introduced corneal transplantation.  Who is this scientist?', 'Gregorio Y. Zara', 'Juan S. Salcedo, Jr.', 'Ricardo Lantican', 'Geminiano T. de Ocampo', 4, 1),
(149, 'A lawyer from London patented the first machine gun or mechanically operated repeating weapon in 1718.  At a demonstration in March 1722 it fired 63 rounds in 7 minutes.  Who was this London lawyer responsible for the first machine gun?', 'Richard Gatling', 'James Puckle', 'Hiram Maxim', 'Isaac Lewis', 2, 1),
(150, 'X-rays were discovered in 1895 by a professor of physics in Wurzburg, Germany.  What is the full name of its discoverer?', 'Marie Currie', 'Frederick Banting', 'Wilhelm Roentgen', 'Joseph Swan', 3, 1),
(151, 'In 1825, Danish scientist Hans Oersted discovered the most common metal on earth.  Light and easily shaped, this metal can be made into all kinds of things, from food wrap to aeroplanes.  What is the name of this metal?', 'Copper', 'Magnesium', 'Zinc', 'Aluminum', 4, 1),
(152, 'In 1952, American doctor Paul Zoll used electrical impulses to revive a failing heart.  This led to the invention of the pacemaker, which is inserted next to the patientâ€™s heart and automatically ensures a regular heartbeat.  Who invented the pacemaker?', 'Wilson Greatbach', 'Ian Donald', 'Gregor Pincus', 'Gregor Pincus', 1, 1),
(153, 'Where was ice cream invented?', 'United States', 'France', 'Italy', 'Germany', 3, 1),
(154, 'Edward Binney and Harold Smith are famous for an invention made in 1903.  What was their invention?', 'Liquid paper', 'Etch-a-sketch', 'Crayola Crayons', 'Ballpoint pens', 3, 1),
(155, 'In what year did the first home computer games appear?', '1958', '1963', '1974', '1980', 3, 1),
(156, 'George Eastman (1854-1932) was an American inventor.  Which field has benefited from his inventions?', 'Medicine', 'Photography', 'Telecommunications', 'Genetics', 2, 1),
(157, 'He invented the monolithic integrated circuit also called the microchip in 1959.  He later invented the first pocket calculator.  Who was this inventor who was also awarded the Nobel Prize in Physics in 2000 for his part in the invention of the integrated circuit?', 'Ladislo Biro', 'James Wright', 'L. E. Waterman', 'Jack Kilby', 4, 1),
(158, 'A doorknob is an example of a simple machine.  How is it classified?', 'Pulley', 'Wheel and Axel', 'Inclined plane', 'Lever', 2, 1),
(159, 'This scientist dedicated her life in the cause of pediatrics in the country.  She is also credited with studies that lead to the invention of an improved incubator and a jaundice-relieving device.  Who is this Filipina doctor?', 'Fe del Mundo', 'Emerita de Guzman', 'Luz Oliveros-Belardo', 'Dolores Ramirez', 1, 1),
(160, 'In intellectual property protection, what is the protection extended to expressions of ideas?  Such expressions may be in the form of literary, scholarly, scientific and artistic creations.', 'Copyright', 'Trademarks', 'Utility models', 'Patent', 1, 1),
(161, 'The first person to manufacture the yo-yo in the United States was a Philippine immigrant.  He mass-produced the yo-yos in his small factory in California.  What was his name?', 'Agapito Flores', 'Benjamin Almeda', 'Pedro Escuro', 'Pedro Flores', 4, 1),
(162, 'Born on February 15, 1564, this Tuscan astronomer, philosopher and physicist has been referred to as â€œFather of Modern Astronomyâ€, Father of Modern Physicsâ€ and Father of Scienceâ€.  Who was this scientist who also invented the thermometer?', 'Adolf Eugen Fick', 'Albert Einstein', 'Galileo Galilei', 'Thomas Edison', 3, 1),
(163, 'What is the name of the British programmer who designed and built the first browser called the world-wide-web and the first web server?', 'Louis Sebastien Lenormand', 'Timothy Berners-Lee', 'Jacques-Yves Cousteau', 'Gerald Pearson', 2, 1),
(165, 'In 1953, Raytheon patented a device called the High Frequency Dielectric Heating Appratusâ€ in the US.  What is the more popular name of this apparatus whose use was initially confined to the catering trade?', 'Oven toaster', 'Microwave oven', 'Turbo oven', 'Food dryer', 2, 1),
(166, 'In 1800, an Italian physicist named Alessandro Volta invented this device, which opened up a much wider perspective for electricity.  What is the name of his invention?', 'electric battery', 'voltage regulator', 'Incandescent lamp', 'Transformer', 1, 1),
(168, 'The following are some of the health benefits of wine except___________.', 'Slows down aging', 'Lowers risk of cancer', 'Serve as an aphrodisiac', 'Lower risk of type 2 diabetes', 3, 2),
(169, 'This process involves pureeing of the fruits for honey fruit wine production', 'Yeast Activation', 'Pulping', 'Mixing', 'Peeling', 2, 2),
(170, 'EMOs stands for _________.', 'Energy Monitoring &amp; Operations', 'Energy Management Opportunities', 'Energy Marketing Options', 'All of the above', 2, 3),
(171, 'Energy Audit is the verification, monitoring and __________ of use of energy', 'Management', 'Control', 'Analysis', 'None of the above', 3, 3),
(172, 'Which of the following is not an advantage of Energy Audit.', 'Reduce running cost', 'Identify &amp; minimize wastage', 'Avoid brownouts', 'Identify the cost of energy you use', 3, 3),
(173, 'Jewelries are allowed during production. True or False?', 'True', 'False', 'Maybe', 'None of the above', 2, 1),
(174, 'Energy Management is a judicious and ___________ use of energy to maximize profits and enhance competitive positions.', 'Effective', 'Efficient', 'Wise', 'Proper', 1, 1),
(175, 'These microorganisms are responsible for wine fermentation.', 'Viruses', 'Yeasts', 'Molds', 'Bacteria', 2, 2),
(176, 'What do you call a person who conducts Energy Audit?', 'Energy Manager', 'Energy Auditor', 'Energy Examiner', 'Energy Expert', 2, 3),
(177, 'Wine from honey is also known as _________.', 'Melomel', 'Mead', 'Dry Wine', 'Semi-sweet wine', 2, 2),
(178, 'The primary fermentation of wine takes about ________.', '1-2 days', '1-2 weeks', '1-2 months', '1-2 years', 3, 2),
(179, 'The type of alcohol present in wine is______________.', 'Isopropanol', 'Ethanol', 'Butanol', 'Methanol', 2, 2),
(180, 'Wine ageing takes______.', '6 mos. â€“ 1 year', '6 weeks â€“ 3 months', '6 hours â€“ 1 day', '6 days â€“ 3 weeks', 1, 2),
(181, 'AC stands for ____________.', 'Alternating Current', 'Alternating Cost', 'Available Current', 'None of the above', 1, 3),
(182, 'Ageing is done to____________.', 'Remove the harsh flavor of wine', 'Improve wine clarity', 'All of the above', 'None of the above.', 3, 2),
(183, 'This instrument is used to measure luminance.', 'Power meter', 'Electric meter', 'Lux meter', 'None of the above', 3, 3),
(184, 'What is the recommended wine intake for men?', '2 drinks per day', '2 drinks per week', '1 drink per day', '1 drink every 3 days.', 1, 2),
(185, 'This instrument has in-built chemical cells which measure various gases such as CO2, CO, NOx, SOx, etc.', 'Fuel Analyzer', 'Combustion Analyzer', 'Smoke Analyzer', 'Smoke Detector', 2, 3),
(186, 'What is the recommended wine intake for women?', '2 drinks per day', '2 drinks per week', '1 drink per day', '1 drink every 3 days.', 3, 2),
(187, 'This ultrasonic instrument is used to detect leaks of compressed air and other gases which are normally not possible with human abilities', 'Gas Detector', 'Air Detector', 'Leak Detector', 'Energy Detector', 3, 3),
(188, 'The process of converting fruit and honey sugars to alcohol is known as _________.', 'Oxidation', 'Reduction', 'Fermentation', 'Glycolysis', 3, 2),
(189, 'Wine fermentation is done in the absence of oxygen.', 'True', 'False', 'Maybe', 'None of the above', 1, 2),
(190, 'HVAC is an energy audit term which stands for', 'Heating Ventilation &amp; Air Circulation', 'Heating Ventilation &amp; Air Conditioning', 'Heating Ventilation &amp; Air Current', 'None of the above', 2, 3),
(191, 'To produce mead, fruits should be prepared.', 'False', 'Maybe', 'True', 'None of the above', 1, 2),
(192, '______ is a non-contact type measurement which when directed at a heat source directly gives the temperature read out.', 'Fyrite', 'Barometer', 'Infrared Pyrometer', 'Contact Thermometer', 3, 1),
(193, 'The heat input required for generating â€˜oneâ€™ kilo watt-hour of electrical output is called as ______.', 'Efficiency', 'Heat Rate', 'Calorific Value', 'Heat Value', 2, 3),
(194, 'The power loss in transmission/distribution line depends on __________.', 'Current in the line', 'Resistance of the line', 'Length of the line', 'All of the above', 4, 3),
(195, 'Presenting the load demand of a consumer against time of the day is known as______.', 'Time Curve', 'Load Curve', 'Demand Curve', 'Energy Curve', 2, 3),
(196, 'Power factor is the ratio of ______ and apparent power.', 'Active power', 'Reactive power', 'Load Factor', 'Maximum Demand', 1, 1),
(197, 'The objective of material and energy balance is to assess the:', 'input-output', 'conversion efficiency', 'losses', 'All of the above', 4, 3),
(198, 'From the combination below, which is not a key element of a successful energy management program?', 'Technical ability', 'Monitoring system &amp; a strategy plan', 'Security of plant', 'Top management support', 3, 3),
(199, 'What takes place during the secondary fermentation', 'Completion of fermentation', 'Settling of sediments', 'All of the above', 'None of the above', 3, 2),
(200, 'In energy audit, GLS stands for __________.', 'General Lamp Source', 'General Lamp Service', 'General Lighting Service', 'General Lighting Source', 3, 3),
(201, 'The ratio of luminous flux emitted by lamp to the power consumed by the lamp is ______.', 'Illuminace', 'Lux', 'Luminous Efficacy', 'CRI', 3, 3),
(202, 'The â€œmustâ€ is a combination of fruit and _________', 'Honey', 'Water', 'Yeast', 'All of the above', 4, 2),
(203, 'Why is filtration done?', 'Separate the solids from the wine.', 'It is part of the process', 'Clarify the wine', 'All of the above', 1, 4),
(204, 'One lux is equal to_________.', 'one lumen per meter', 'lumen per cubic meter', 'one lumen per square meter', 'None of the above', 3, 3),
(205, 'Alcohol content is measured using a _____________.', 'pH meter', 'Refractometer', 'Alcohol meter', 'Thermometer', 3, 2),
(206, 'Which of the following light source has least life?', 'Sodium Vapor', 'Mercury Vapor', 'Halogen', 'Incandescent', 4, 1),
(207, 'Total soluble solids is measured using a _________.', 'pH meter', 'Refractometer', 'Alcohol meter', 'Thermometer', 2, 2),
(208, 'Acidity and/or alkalinity is measured using a _________.', 'pH meter', 'Refractometer', 'Alcohol meter', 'Thermometer', 1, 2),
(209, 'What is the tagline of the DOST â€“ Regional Officesâ€™ for this yearâ€™s NSTW?', 'Nangarap, Tinulungan, Umasenso #scienceandtechnologypamore', 'Science, Technology and Innovation of the Future', 'Siyensya, at Teknolohiya ng Makabagong Mundo', 'None of the Above', 1, 2),
(210, 'Energy consumption per unit of GDP is called', 'Energy Ration', 'Energy intensity', 'Per capita consumption', 'None of the above', 2, 3),
(211, 'Which of the following is commercial energy source?', 'Electricity', 'Coal', 'Oil', 'All of the above', 1, 3),
(212, 'What are clouds made out of?', 'water', 'smoke', 'cotton', 'None of the above', 1, 4),
(213, 'What is the chemical formula for water?', 'wTr', 'H2O', 'hijklmno', 'NaCl', 2, 4),
(214, 'Planet Earth is the ______ planet from the Sun.', '1st', '3rd', '5th', '4th', 2, 4),
(215, 'What is the most abundant gas in the atmosphere?', 'Nitrogen', 'Oxygen', 'Argon', 'Carbon dioxide', 1, 4),
(216, 'If you mix all light colours, what is the resulting color?', 'Rainbow', 'black', 'white', 'None of the above', 3, 4),
(217, 'What is the name of the first Philippine microsatellite launched into space?', 'Encantadia-1', 'Diwata-1', 'Dyosa-1', 'None of the above', 2, 4),
(218, 'Infrared thermometer is used to measure', 'Surface temperature', 'Flame temperature', 'Flue gas temperature', 'Hot water temperature', 1, 3),
(219, 'Acids have a pH level below 7. True or False?', 'True', 'False', 'Maybe', 'None of the above', 1, 4),
(220, 'The energy stored in bonds of atoms and molecules is called ______.', 'Kinetic energy', 'Chemical energy', 'Potential energy', 'Magnetic energy', 2, 3),
(221, 'CFC stands for ___________.', 'Chloro Fluro Carbons', 'Carbon Flourine Carbon', 'Compact Fluro Carbons', 'None of the above', 1, 3),
(222, 'Global warming is due to release of _______.', 'Sulfur Dioxide', 'Greenhouse Gases', 'Inert Gases', 'Free Chlorine', 2, 3),
(223, 'Which is not an example of a physical hazard?', 'Wood chips', 'Glass fragments', 'Salmonella', 'Metal splinters', 3, 3),
(224, 'NSTW stands for _____.', 'National Space and Technology Week', 'New Science Technical Work', 'National Science and Technology Week', 'None of the above', 3, 4),
(225, 'Modified True or False. All kinds of microorganisms are bad. True or False?', 'True', 'False. Some kinds of microorganisms are good.', 'Maybe', 'None of the above', 2, 4),
(226, 'Which is body part has the most amount of aerobic bacteria?', 'Legs', 'Hair', 'Hands', 'Arms', 2, 3),
(227, 'Which of the following does bacteria need to assist it to grow and multiply?', 'Water', 'Food', 'Warm Temperatures', 'All of the above', 4, 3),
(228, 'Which of the following food is likely to contain the MOST bacteria?', 'Frozen raw chicken', 'Recently-cooked chicken', 'Opened fizzy drink', 'Bottled mayonnaise', 1, 3),
(229, 'Hands should be washed with water and soap for at least?', '5 seconds', '20 seconds', '30 seconds', '1 minute', 2, 3),
(230, 'Hand sanitizers can be used in place of proper hand washing. True or False?', 'True', 'False', 'Maybe', 'None of the above', 2, 1),
(231, 'The celebration of the NSTW was moved from the 2nd week to the 3rd week of July by virtue of which Proclamation No.?', '782 s. 1993', '56 s. 1993', '169 s. 1993', '267 s.1993', 3, 4),
(232, 'How many DOST regional offices are there in the Philippines?', '13', '10', '15', '12', 3, 4),
(233, 'When did the DOST start organizing and holding Science and Technology Week celebrations?', '1920s', '1950s', '1980s', '1940s', 2, 4),
(234, 'During food preparation, wearing a dirty apron can contaminate food. True or False?', 'True', 'False', 'Maybe', 'None of the above', 1, 1),
(235, 'Food handlers should wash hands after taking a break to smoke. True or False?', 'True', 'False', 'Maybe', 'None of the above', 1, 1),
(236, '_________ is a substance that causes a chemical reaction to happen more quickly.', 'Catalyst', 'Reagents', 'Hydrocarbons', 'None of the above', 1, 4),
(237, 'Which foods are high-risk for the growth of pathogenic bacteria?', 'Meat, poultry, eggs', 'Cereals, biscuits', 'Fruits and vegetables', 'All of the above', 1, 1),
(238, 'The following actions may lead to food contamination except?', 'Handling money', 'Wearing a clean apron', 'Sneezing or coughing', 'Wearing a hat while prepping food', 2, 3),
(239, 'Food dropped on the floor is OK to eat if you pick it up within?', '10 seconds', '3 seconds', '5 seconds', 'It is not OK.', 4, 3),
(240, 'One way to prevent cross-contamination is to use two cutting boards, one strictly for raw meats, poultry and seafood and another for ready-to-eat foods. True or False?', 'True', 'False', 'Maybe', 'None of the above', 2, 3),
(241, 'Meat, fish and poultry should be defrosted _____.', 'In the refrigerator', 'On the counter', 'In the microwave', 'None of the above', 4, 1),
(242, 'How should you store your eggs at home?', 'On the counter, in their original carton', 'In the fridge, in their original carton', 'In the fridge, placed in a new container', 'On the counter, placed in a new container', 2, 3),
(243, 'Which meats should not be eaten pink or rare?', 'Steaks and chops', 'Roast lamb and beef', 'Minced meats and chicken', 'Small goods such as salami and ham', 3, 3),
(244, 'In a â€œrainbow fizzâ€ experiment, the universal indicator changes color to show the _____ level of a substance.', 'Oxygen', 'pH', 'water', 'Temperature', 2, 4),
(245, 'What causes a tsunami?', 'Earthquake', 'LPA', 'Volcanic eruption', 'None of the above', 1, 4),
(246, 'One of the flagship programs of DOST is SETUP. What does SETUP stand for?', 'Small Entry-level Technology Upgrading Program', 'Small Enterprise Technology Upgrading Program', 'Small Enterprise Technical Upgrading Program', 'Small Enterprise Technical Upgrading Project', 2, 4),
(247, 'When did DOST start implementing SETUP', '2001', '2004', '1996', '2002', 1, 4),
(248, 'Since its inception, DOST-SETUP has already provided assistance to _____ MSMEs. (Choose the nearest figure)', 'over 1,800', 'over 2,700', 'over 4,300', 'over 3,500', 3, 4),
(249, '_______ or PHP is defined as an HTML-embedded scripting language that is used to write web pages', 'Philippine Peso', 'Hypetext Pre-Processor', 'PHP Hypetext Pre-Processor', 'None of the above', 3, 1),
(250, 'What does CEST stand for?', 'Community Enrichment for Science and Technology', 'Community Empowerment for Science and Technology', 'Community Empowerment thru Science and Technology', 'Community Empowerment with Science and Technology', 3, 4),
(251, '___________ (CSS) is a simple mechanism for adding style (e.g., fonts, colors, spacing) to Web documents.', 'Cascading Style Sheets', 'Counter-Strike:Source', 'Catholic Social Services', 'None of the above', 1, 1),
(252, 'Which of the following is not a CEST entry point?', 'Water and Sanitation', 'Health and Nutrition', 'Fitness and Leisure', 'None of the above', 3, 4),
(253, '______ is a freely available Web server that is distributed under an &quot;open source&quot; license.', 'MySQL', 'Apache', 'Java', 'Javascript', 2, 1),
(254, 'A _____  is a computer network that interconnects computers within a limited area such as a residence, school, laboratory, university campus or office building and has its network equipment and interconnects locally managed.', 'Wide Area Network (WAN)', 'Metropolitan Area Network (MAN)', 'Internel Area Network (IAN)', 'Local Area Network (LAN)', 4, 1),
(255, 'The _______ is a term referring to accessing computer, information technology (IT), and software applications through a network connection, often by accessing data centers using wide area networking (WAN) or Internet connectivity.', 'Local Area Network', 'Cloud', 'WiFi', 'Router', 2, 1),
(256, '_____________ software, sometimes known as anti-malware software, is computer software used to prevent, detect and remove malicious software.', 'Antivirus', 'Backoffice', 'Website', 'Trojan', 1, 1),
(257, 'What is the short name for the DOST project, which integrates DOST and non-DOST laboratories, whether private or public, into a network that provides convenient access to testing and calibration services for the public?', 'OneLab', 'DOSTLab', 'JuanLab', 'None of the above', 1, 4),
(258, '______ is a file-level computer data storage server connected to a computer network providing data access to a heterogeneous group of clients.', 'Hard disk drive (HDD)', 'Floppy disk storage', 'Network-attached storage (NAS)', 'None of the above', 3, 1),
(259, 'Who si the inventor of Linux operating system?', 'Bill Gates', 'Mark Zuckerberg', 'Linus Torvalds', 'James Gosling', 3, 1),
(260, 'The following are not programming languages except', 'Cascading Style Sheets (CSS)', 'Hyper Text Markup Language (HTML)', 'C', 'MySQL', 3, 1),
(261, 'In baking, _________ is added to the mixture to stop the fat-coated air bubbles, created during creaming, from collapsing when heated.', 'baking powder', 'whole milk', 'beaten egg', 'powdered sugar', 3, 4),
(262, 'This plant, also known as Manila Hemp, is a species of banana native to the Philippines and has great economic importance as they are harvested for the fibrous product extracted from their leaf-stems.', 'pineapple', 'saba', 'lakatan', 'abaca', 4, 4),
(263, 'This food preservation process involves only two basic ingredients: salt and vinegar. This process involves the soaking of produce (fruits or vegetables) in salt solution and allowed to cure.', 'canning', 'pickling', 'acidifying', 'jamming', 2, 4),
(264, 'Bromelain is an enzyme whose properties involve the destruction of proteins. What fruit, which is very common in and exported by the Philippines, is famously known to contain Bromelain?', 'pineapple', 'papaya', 'banana', 'mango', 1, 4),
(265, 'In wine-making, fruits rich in sugars and carbohydrates are allowed to undergo fermentation which converts sugars to alcohol. The fermentation involved in alcohol production is mediated by a specific microorganism. What microorganism is this?', 'yeast', 'bacteria', 'virus', 'mold', 1, 4),
(266, 'In baking, what term is commonly used to describe the fermentation step?', 'rising', 'relaxing', 'curing', 'thickening', 1, 4),
(267, 'In food processing, poultry products are famously known to be carriers of this bacterial pathogen. If ingested, humans can suffer from poisoning from this bacterium which causes diarrhea, fever, and abdominal cramps. What bacterium, which is closely associated to chicken and other poultry products, is this?', 'E. coli', 'Salmonella', 'S. aureus', 'Yeast and Mold', 2, 4),
(268, 'This type of grass is known to be one of the fastest-growing, tallest, and strongest grasses. It also supplies the raw material for industries involved in the manufacture of building materials, crafts, and even the food industry. What grass type is this?', 'cogon grass', 'carabao grass', 'bermuda grass', 'bamboo', 4, 4),
(269, 'What type of fabric is produced from the cocoons of Bombyx mori moth?', 'cotton', 'silk', 'wool', 'leather', 2, 4),
(270, 'What drying technique is used to convert liquid or slurry products into dry powdered products using a hot gas?', 'blast drying', 'vacuum drying', 'air-oven drying', 'spray drying', 4, 4),
(271, 'It is a method of adding vitamins, minerals or other nutrients not normally present in the food during processing.', 'Salting', 'Nutrification', 'Fortification', 'Preservation', 3, 4),
(272, 'What method of food preservation should one use to reduce atmospheric oxygen, limit the growth of aerobic bacteria or fungi, and prevent the evaporation of volatile components?', 'Blast freezing', 'vacuum packing', 'Canning', 'Pickling', 2, 4),
(273, 'In producing virgin coconut oil using wet milling, the oil is separated from the coconut water and curd by a process called ________. This process may take 2 to 5 days depending on the separation of oil, water and curd.', 'fermentation', 'Heating', 'bleaching', 'grinding', 1, 4),
(274, 'What do you call the fiber produced from coconut husks and is used in products such as floor mats, doormats, brushes and mattresses?', 'hemp', 'abaca', 'jute', 'Coir', 4, 4),
(275, 'What is the Filipino term for an alcoholic beverage derived from sugarcane?', 'laksoy', 'tapuy', 'lambanog', 'basi', 4, 4),
(276, 'Cassava normally contains a toxic chemical that is harmful when ingested. This toxic chemical from may be removed by soaking, drying and cooking. What is this chemical?', 'aflatoxin', 'cyanide', 'Malathion', 'potash', 2, 4),
(277, 'â€œPerfectly Natural-Herbal Medsâ€ is one of the SETUP projects in the region and uses different traditional herbal plants in its teas and supplements such as ampalaya, malunggay, sambong and lagundi. What is the scientific name of â€œampalayaâ€?', 'Moringa oleifera', 'Momordica charantia', 'Blumea balsamifera', 'Cymbopogon citratus', 2, 4),
(278, 'What is the kind of bacteria that converts alcohol into vinegar in â€œtubaâ€?', 'yeast', 'Candida albicans', 'Lactobacilli', 'acetobacter', 4, 4),
(279, 'Corn is one of the main ingredients in a pelletized feeds for poultry animals. In the process of producing the pellets, what is added in the mixture that will serve as lubricant in the pelletizer and/or miller?', 'vitamins', 'Fats', 'Gluten', 'antioxidants', 2, 4),
(280, 'Name the city affected by the recent earthquake in Caraga last February 10, 2017.', 'Butuan', 'Cabadbaran', 'Surigao City', 'Bislig', 3, 4),
(281, 'What is the magnitude of the earthquake that shook off Surigao City last February 10, 2017?', '4.5 magnitude', '6.7 magnitude', '3.5 magnitude', '6.0 magnitude', 2, 4),
(282, 'What to do during an earthquake?', 'duck, cover and hold', 'Stay away from beaches', 'Stay inside the house', 'None of the above', 1, 4),
(283, 'What DOST Institution is responsible for monitoring meterological events occurring in our country?', 'ASTI', 'PAGASA', 'PHIVOLCS', 'PCAARRD', 3, 4),
(284, 'What province is located in the CARAGA region?', 'Agusan del Norte', 'Agusan del Sur', 'Dinagat Islands', 'All of the above', 4, 4),
(285, 'In what part of Mindanao (could be the region or province) is the Enchanted River located?', 'Surigao del Sur', 'Surigao del Norte', 'Agusan del Sur', 'Agusan del Norte', 1, 4),
(286, 'Pagusi is a plant thriving in lakes and rivers. In Caraga, the Pagusi plant is common in Lake Mainit, located in the northwestern part of Caraga region. What is the common or English term for Pagusi?', 'Watermeal', 'Water Lily', 'American Pondweed', 'Small Duckweed', 2, 4),
(287, '________ is the city located in CARAGA.', 'Butuan City', 'Cabadbaran City', 'Surigao City', 'All of the above', 4, 4),
(288, 'According to PAGASA, what region is known to be the most vulnerable to La NiÃ±a?', 'CARAGA', 'Region VI', 'Region 4A CALABARZON', 'Region X', 1, 4),
(289, 'What is the international name of the Typhoon which made a landfall on December 3, 2012 in Mindanao, particularly in Davao Oriental and Compostela Valley Province?', 'Typhoon Haiyan', 'Typhoon Bopha', 'Typhoon Ketsana', 'Typhoon Washi', 2, 4),
(290, 'Our national bird, the Philippine Eagle, is also known as the ___________________.', 'Serpent Eagle', 'Bald Eagle', 'Monkey-eating Eagle', 'Lesser spotted Eagle', 3, 4),
(291, 'What fruit is abundant in Davao City and is known for its awful smell but heavenly taste?', 'Rambutan', 'Jackfruit', 'Mangosteen', 'Durian', 4, 4),
(292, 'It is the technology that superimposes a computer-generated image on a userâ€™s view of the real world.', 'Virtual Reality', 'Mixed Reality', 'Enhanced Reality', 'Augmented Reality', 4, 4),
(293, 'Complete the four river systems in Davao City: Lasang Watershed, Lipadas Watershed, Talomo Watershed, and _______________.', 'Davao River Basin', 'Davao City Upstream Watershed', 'Toril Watershed', 'Davao Gulf', 1, 4),
(294, 'The Department of Science and Technology was originally established as NSDB on June 13, 1958. What does NSDB stand for?', 'Natural Sciences and Development Bureau', 'National Science and Development Bureau', 'National Science and Development Board', 'Natural Sciences and Development Board', 3, 4),
(295, 'In a system of coordinates, it is the distance from a point to the vertical or y-axis measured parallel to the horizontal or x-axis.', 'Abscissa', 'Ordinates', 'Integers', 'Y-Coordinates', 1, 4),
(296, 'When sneezing, 10,000 to 1,000,000 germs are spread out into the ambient air. This is mostly spread because of the bacteria based in the nose and skin known as ___________.', 'Staphylococcus aureus', 'Streptococcus pneumonia', 'Streptococcus pyogenes', 'Staphylococcus capitis', 1, 4),
(297, 'Who is the first Undersecretary for Disaster Risk Reduction and Climate Change?', 'Dr. Carol M. Yorobe', 'Atty. Emmanuel S. Galvez', 'Dr. Renato U. Solidum, Jr.', 'Dr. Rowena Cristina L. Guevara', 3, 4),
(298, 'It is the narrow zone near the equator where northern and southern air masses converge, typically producing low atmospheric pressure.', 'Cold Front', 'Inter-Tropical Convergence Zone', 'Gale Warning', 'Confluent Zone', 2, 4),
(299, 'What is the name of the highest mountain in the Philippines and is located between Region XI and Region XII?', 'Mt. Mayon', 'Mt. Kanlaon', 'Mt. Hibok-Hibok', 'Mt. Apo', 4, 4),
(300, 'It is the biomedical device that could capture medical signals through built-in medical sensors and can store data in an electronic medical record.', 'BioMedic', 'CHITS', 'HealthPlus', 'RxBox', 4, 4),
(301, 'According to the Republic Act 10535 or the â€œPhilippine Standard Time (PST) Act of 2013â€, this agency is tasked to monitor, maintain, and disseminate the PST throughout the country.', 'National Telecommunications Commission', 'PAG-ASA', 'Department of Information and Communications Technology', 'Advanced Science and Technology Institute', 2, 4),
(302, 'It refers to the severity of an earthquake assessed using a descriptive scale.', 'Intensity', 'Magnitude', 'Shaking', 'Damage Scale', 1, 4),
(303, 'PCIEERD stands for _______________.', 'Philippine Commission for Industry, Energy and Emerging Technology Research and Development', 'Philippine Council for Industrial Energy and Emerging Technology Research and Development', 'Philippine Council for Industry, Energy and Emerging Technology Research and Development', 'Philippine Council on Industrial Energies and Educational Technology Research and Development', 3, 4),
(304, 'It is the technique used to calculate the mathematical probability of inheriting a specific trait. It is a simple graphical way of discovering all potential combinations of genotypes that can occur in children, given the genotypes of their parents.', 'Mendel Arithmetic', 'Punnett Square', 'Punnett Graph', 'Mendel Graph', 2, 4),
(305, 'She is the Filipina from Batangas who invented banana catsup and pineapple vinegar.', 'Luningning A. Samarita', 'Dr. Liwayway M. Engle', 'Maria Ylagan Orosa', 'Dr. Maria Patricia V. Azanza', 3, 4),
(306, 'It is the unit of concentration measuring the number of moles of a solute per liter of solution.', 'Molarity', 'Molality', 'Chemistry', 'Temparature', 1, 4),
(307, 'Where is the Department of Science and Technology Region XI Office located?', 'Butuan City', 'General Santos City', 'Tagum City', 'Davao City', 4, 4),
(308, 'This is a palm tree that grows wild in the province of Aurora. Its fiber is used in weaving variety of handicrafts/useful products such as fans, bags, hats, and other souvenir items. Scientific Name- Pandanus sabotan Blanco.', 'Sabutan', 'The coconut palm', 'Cabbage Palm', 'Kaong', 1, 2),
(309, 'The sector/s in which  SETUP gave priority to.', 'Food Processing', 'Gift/Decors/Handicrafts', 'Metals and Engineering', 'All of the above', 4, 2),
(310, 'Identify this fruit tree that is known to attack and destroy cancer cells. Native folks believe that this is also good for gall bladder trouble, cough, diarrhea, fever and indigestion. Its dried leaves are processed by MSC Food Products from Nueva Ecija to produce an amazing herbal tea.', 'Guyabano', 'Banana', 'Avocado', 'Apple', 1, 2),
(311, 'What is the theme of this yearâ€™s NSTW celebration?', 'Science for the People', 'Science and Technology for  the better future', 'Innovations that leads to a better future', 'None of the above', 1, 4),
(312, 'The gas usually filled in the electric bulb is', 'nitrogen', 'hydrogen', 'carbon dioxide', 'oxygen', 1, 1),
(313, 'Washing soda is the common name for', 'Sodium carbonate', 'Calcium bicarbonate', 'Sodium bicarbonate', 'Calcium carbonate', 1, 1),
(314, 'Which of the gas is not known as green house gas?', 'Methane', 'Nitrous oxide', 'Carbon dioxide', 'Hydrogen', 4, 1),
(315, 'The hardest substance available on earth is', 'Gold', 'Iron', 'Diamond', 'Platinum', 3, 1),
(316, 'The element common to all acids is', 'hydrogen', 'carbon', 'sulphur', 'oxygen', 1, 1),
(317, 'What is the biggest planet in our solar system?', 'Earth', 'Jupiter', 'Venus', 'Mars', 2, 1),
(318, 'What is the chemical symbol for the element oxygen?', 'O', 'S', 'Ni', 'Cu', 1, 1),
(319, 'The highest mountain on earth is?', 'Mount Makalu', 'Mount Apo', 'Jongsong Peak', 'Mount Everest', 4, 1),
(320, 'What is the name of the closest star to the earth?', 'Polaris', 'Alnilam', 'Sirius', 'Sun', 4, 1),
(321, 'Balloons are filled with', 'nitrogen', 'helium', 'oxygen', 'argon', 2, 1),
(322, 'Which metal pollute the air of a big city?', 'Copper', 'Chromium', 'Lead', 'Cadmium', 3, 1),
(323, 'Which of the following is the lightest metal?', 'Mercury', 'Lithium', 'Lead', 'Silver', 2, 1),
(324, 'Brass gets discoloured in air because of the presence of which of the following gases in air?', 'Oxygen', 'Hydrogen sulphide', 'Carbon dioxide', 'Nitrogen', 2, 1),
(325, 'Which of the following is used in pencils?', 'Graphite', 'Silicon', 'Charcoal', 'Phosphorous', 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_dailytotals`
-- (See below for the actual view)
--
CREATE TABLE `vw_dailytotals` (
`p_code` varchar(255)
,`p_name` varchar(255)
,`p_total_score` decimal(32,0)
,`p_date` date
,`p_affiliation` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_loc1`
-- (See below for the actual view)
--
CREATE TABLE `vw_loc1` (
`p_code` varchar(255)
,`p_date` date
,`score_loc1` bigint(11) unsigned
,`datetime_loc1` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_loc2`
-- (See below for the actual view)
--
CREATE TABLE `vw_loc2` (
`p_code` varchar(255)
,`p_date` date
,`datetime_loc2` datetime
,`score_loc2` bigint(11) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_loc3`
-- (See below for the actual view)
--
CREATE TABLE `vw_loc3` (
`p_code` varchar(255)
,`p_date` date
,`datetime_loc3` datetime
,`score_loc3` bigint(11) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_loc4`
-- (See below for the actual view)
--
CREATE TABLE `vw_loc4` (
`p_code` varchar(255)
,`p_date` date
,`datetime_loc4` datetime
,`score_loc4` bigint(11) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_luzon`
-- (See below for the actual view)
--
CREATE TABLE `vw_luzon` (
`p_code` varchar(255)
,`p_date` date
,`score_luzon` bigint(11) unsigned
,`datetime_luzon` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_mindanao`
-- (See below for the actual view)
--
CREATE TABLE `vw_mindanao` (
`p_code` varchar(255)
,`p_date` date
,`score_mindanao` bigint(11) unsigned
,`datetime_mindanao` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_players`
-- (See below for the actual view)
--
CREATE TABLE `vw_players` (
`p_code` varchar(255)
,`p_name` varchar(255)
,`p_affiliation` varchar(255)
,`p_total_score` decimal(32,0)
,`p_date` date
,`score_luzon` decimal(20,0)
,`played_luzon` int(1)
,`datetime_luzon` datetime
,`score_visayas` decimal(20,0)
,`played_visayas` int(1)
,`datetime_visayas` datetime
,`score_mindanao` decimal(20,0)
,`played_mindanao` int(1)
,`datetime_mindanao` datetime
,`score_datetime` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_players_alt`
-- (See below for the actual view)
--
CREATE TABLE `vw_players_alt` (
`p_code` varchar(255)
,`p_name` varchar(255)
,`p_affiliation` varchar(255)
,`p_date` date
,`score_loc1` decimal(20,0)
,`played_loc1` int(1)
,`datetime_loc1` datetime
,`score_loc2` decimal(20,0)
,`played_loc2` int(1)
,`datetime_loc2` datetime
,`score_loc3` decimal(20,0)
,`played_loc3` int(1)
,`datetime_loc3` datetime
,`score_loc4` decimal(20,0)
,`played_loc4` int(1)
,`datetime_loc4` datetime
,`p_total_score` decimal(23,0)
,`score_datetime` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_questions`
-- (See below for the actual view)
--
CREATE TABLE `vw_questions` (
`q_id` bigint(20) unsigned
,`q_text` text
,`q_op1` varchar(255)
,`q_op2` varchar(255)
,`q_op3` varchar(255)
,`q_op4` varchar(255)
,`q_ans` int(10) unsigned
,`cat_id` bigint(20) unsigned
,`cat_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_visayas`
-- (See below for the actual view)
--
CREATE TABLE `vw_visayas` (
`p_code` varchar(255)
,`p_date` date
,`score_visayas` bigint(11) unsigned
,`datetime_visayas` datetime
);

-- --------------------------------------------------------

--
-- Structure for view `vw_dailytotals`
--
DROP TABLE IF EXISTS `vw_dailytotals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_dailytotals`  AS  select `players`.`p_code` AS `p_code`,`players`.`p_name` AS `p_name`,sum(`players`.`p_score`) AS `p_total_score`,`players`.`p_date` AS `p_date`,`players`.`p_affiliation` AS `p_affiliation` from `players` group by `players`.`p_code`,`players`.`p_date` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_loc1`
--
DROP TABLE IF EXISTS `vw_loc1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_loc1`  AS  select `players`.`p_code` AS `p_code`,`players`.`p_date` AS `p_date`,if((`players`.`p_score` >= 5),(`players`.`p_score` + 50),`players`.`p_score`) AS `score_loc1`,`players`.`p_datetime` AS `datetime_loc1` from `players` where (`players`.`cat_id` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_loc2`
--
DROP TABLE IF EXISTS `vw_loc2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_loc2`  AS  select `players`.`p_code` AS `p_code`,`players`.`p_date` AS `p_date`,`players`.`p_datetime` AS `datetime_loc2`,if((`players`.`p_score` >= 5),(`players`.`p_score` + 50),`players`.`p_score`) AS `score_loc2` from `players` where (`players`.`cat_id` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_loc3`
--
DROP TABLE IF EXISTS `vw_loc3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_loc3`  AS  select `players`.`p_code` AS `p_code`,`players`.`p_date` AS `p_date`,`players`.`p_datetime` AS `datetime_loc3`,if((`players`.`p_score` >= 5),(`players`.`p_score` + 50),`players`.`p_score`) AS `score_loc3` from `players` where (`players`.`cat_id` = 2) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_loc4`
--
DROP TABLE IF EXISTS `vw_loc4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_loc4`  AS  select `players`.`p_code` AS `p_code`,`players`.`p_date` AS `p_date`,`players`.`p_datetime` AS `datetime_loc4`,if((`players`.`p_score` >= 5),(`players`.`p_score` + 50),`players`.`p_score`) AS `score_loc4` from `players` where (`players`.`cat_id` = 3) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_luzon`
--
DROP TABLE IF EXISTS `vw_luzon`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_luzon`  AS  select `players`.`p_code` AS `p_code`,`players`.`p_date` AS `p_date`,if((`players`.`p_score` >= 5),(`players`.`p_score` + 50),`players`.`p_score`) AS `score_luzon`,`players`.`p_datetime` AS `datetime_luzon` from `players` where (`players`.`cat_id` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_mindanao`
--
DROP TABLE IF EXISTS `vw_mindanao`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_mindanao`  AS  select `players`.`p_code` AS `p_code`,`players`.`p_date` AS `p_date`,if((`players`.`p_score` >= 5),(`players`.`p_score` + 50),`players`.`p_score`) AS `score_mindanao`,`players`.`p_datetime` AS `datetime_mindanao` from `players` where (`players`.`cat_id` = 2) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_players`
--
DROP TABLE IF EXISTS `vw_players`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_players`  AS  select `vw_dailytotals`.`p_code` AS `p_code`,`vw_dailytotals`.`p_name` AS `p_name`,`vw_dailytotals`.`p_affiliation` AS `p_affiliation`,`vw_dailytotals`.`p_total_score` AS `p_total_score`,`vw_dailytotals`.`p_date` AS `p_date`,ifnull(`vw_luzon`.`score_luzon`,0) AS `score_luzon`,if(isnull(`vw_luzon`.`datetime_luzon`),0,1) AS `played_luzon`,`vw_luzon`.`datetime_luzon` AS `datetime_luzon`,ifnull(`vw_visayas`.`score_visayas`,0) AS `score_visayas`,if(isnull(`vw_visayas`.`datetime_visayas`),0,1) AS `played_visayas`,`vw_visayas`.`datetime_visayas` AS `datetime_visayas`,ifnull(`vw_mindanao`.`score_mindanao`,0) AS `score_mindanao`,if(isnull(`vw_mindanao`.`datetime_mindanao`),0,1) AS `played_mindanao`,`vw_mindanao`.`datetime_mindanao` AS `datetime_mindanao`,greatest(ifnull(`vw_mindanao`.`datetime_mindanao`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_visayas`.`datetime_visayas`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_luzon`.`datetime_luzon`,cast('2017-01-01 00:00:00' as date))) AS `score_datetime` from (((`vw_dailytotals` left join `vw_luzon` on(((`vw_dailytotals`.`p_code` = `vw_luzon`.`p_code`) and (`vw_dailytotals`.`p_date` = `vw_luzon`.`p_date`)))) left join `vw_mindanao` on(((`vw_dailytotals`.`p_code` = `vw_mindanao`.`p_code`) and (`vw_dailytotals`.`p_date` = `vw_mindanao`.`p_date`)))) left join `vw_visayas` on(((`vw_dailytotals`.`p_code` = convert(`vw_visayas`.`p_code` using utf8)) and (`vw_dailytotals`.`p_date` = `vw_visayas`.`p_date`)))) order by `vw_dailytotals`.`p_total_score` desc,greatest(ifnull(`vw_mindanao`.`datetime_mindanao`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_visayas`.`datetime_visayas`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_luzon`.`datetime_luzon`,cast('2017-01-01 00:00:00' as date))) desc ;

-- --------------------------------------------------------

--
-- Structure for view `vw_players_alt`
--
DROP TABLE IF EXISTS `vw_players_alt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_players_alt`  AS  select `vw_dailytotals`.`p_code` AS `p_code`,`vw_dailytotals`.`p_name` AS `p_name`,`vw_dailytotals`.`p_affiliation` AS `p_affiliation`,`vw_dailytotals`.`p_date` AS `p_date`,ifnull(`vw_loc1`.`score_loc1`,0) AS `score_loc1`,if(isnull(`vw_loc1`.`datetime_loc1`),0,1) AS `played_loc1`,`vw_loc1`.`datetime_loc1` AS `datetime_loc1`,ifnull(`vw_loc2`.`score_loc2`,0) AS `score_loc2`,if(isnull(`vw_loc2`.`datetime_loc2`),0,1) AS `played_loc2`,`vw_loc2`.`datetime_loc2` AS `datetime_loc2`,ifnull(`vw_loc3`.`score_loc3`,0) AS `score_loc3`,if(isnull(`vw_loc3`.`datetime_loc3`),0,1) AS `played_loc3`,`vw_loc3`.`datetime_loc3` AS `datetime_loc3`,ifnull(`vw_loc4`.`score_loc4`,0) AS `score_loc4`,if(isnull(`vw_loc4`.`datetime_loc4`),0,1) AS `played_loc4`,`vw_loc4`.`datetime_loc4` AS `datetime_loc4`,(((ifnull(`vw_loc1`.`score_loc1`,0) + ifnull(`vw_loc2`.`score_loc2`,0)) + ifnull(`vw_loc3`.`score_loc3`,0)) + ifnull(`vw_loc4`.`score_loc4`,0)) AS `p_total_score`,greatest(ifnull(`vw_loc4`.`datetime_loc4`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_loc3`.`datetime_loc3`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_loc2`.`datetime_loc2`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_loc1`.`datetime_loc1`,cast('2017-01-01 00:00:00' as date))) AS `score_datetime` from ((((`vw_dailytotals` left join `vw_loc1` on(((`vw_dailytotals`.`p_code` = `vw_loc1`.`p_code`) and (`vw_dailytotals`.`p_date` = `vw_loc1`.`p_date`)))) left join `vw_loc2` on(((`vw_dailytotals`.`p_code` = `vw_loc2`.`p_code`) and (`vw_dailytotals`.`p_date` = `vw_loc2`.`p_date`)))) left join `vw_loc3` on(((`vw_dailytotals`.`p_code` = `vw_loc3`.`p_code`) and (`vw_dailytotals`.`p_date` = `vw_loc3`.`p_date`)))) left join `vw_loc4` on(((`vw_dailytotals`.`p_code` = `vw_loc4`.`p_code`) and (`vw_dailytotals`.`p_date` = `vw_loc4`.`p_date`)))) order by (((ifnull(`vw_loc1`.`score_loc1`,0) + ifnull(`vw_loc2`.`score_loc2`,0)) + ifnull(`vw_loc3`.`score_loc3`,0)) + ifnull(`vw_loc4`.`score_loc4`,0)) desc,greatest(ifnull(`vw_loc4`.`datetime_loc4`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_loc3`.`datetime_loc3`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_loc2`.`datetime_loc2`,cast('2017-01-01 00:00:00' as date)),ifnull(`vw_loc1`.`datetime_loc1`,cast('2017-01-01 00:00:00' as date))) desc ;

-- --------------------------------------------------------

--
-- Structure for view `vw_questions`
--
DROP TABLE IF EXISTS `vw_questions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_questions`  AS  select `questions`.`q_id` AS `q_id`,`questions`.`q_text` AS `q_text`,`questions`.`q_op1` AS `q_op1`,`questions`.`q_op2` AS `q_op2`,`questions`.`q_op3` AS `q_op3`,`questions`.`q_op4` AS `q_op4`,`questions`.`q_ans` AS `q_ans`,`questions`.`cat_id` AS `cat_id`,`categories`.`cat_name` AS `cat_name` from (`questions` left join `categories` on((`questions`.`cat_id` = `categories`.`cat_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_visayas`
--
DROP TABLE IF EXISTS `vw_visayas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_visayas`  AS  select `players`.`p_code` AS `p_code`,`players`.`p_date` AS `p_date`,if((`players`.`p_score` >= 5),(`players`.`p_score` + 50),`players`.`p_score`) AS `score_visayas`,`players`.`p_datetime` AS `datetime_visayas` from `players` where (`players`.`cat_id` = 1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_id_UNIQUE` (`cat_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `p_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
