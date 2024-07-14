-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2024 at 06:32 AM
-- Server version: 8.0.38
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wlms_harvard`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE `accounting` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `creator_id` int DEFAULT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `meeting_time_id` int UNSIGNED DEFAULT NULL,
  `subscribe_id` int UNSIGNED DEFAULT NULL,
  `promotion_id` int UNSIGNED DEFAULT NULL,
  `registration_package_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `tax` tinyint(1) NOT NULL DEFAULT '0',
  `amount` decimal(13,2) DEFAULT NULL,
  `type` enum('addiction','deduction') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_account` enum('income','asset','subscribe','promotion','registration_package') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_type` enum('automatic','manual') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'automatic',
  `referred_user_id` int UNSIGNED DEFAULT NULL,
  `is_affiliate_amount` tinyint(1) NOT NULL DEFAULT '0',
  `is_affiliate_commission` tinyint(1) NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `accounting`
--

INSERT INTO `accounting` (`id`, `user_id`, `creator_id`, `webinar_id`, `bundle_id`, `meeting_time_id`, `subscribe_id`, `promotion_id`, `registration_package_id`, `product_id`, `system`, `tax`, `amount`, `type`, `type_account`, `store_type`, `referred_user_id`, `is_affiliate_amount`, `is_affiliate_commission`, `description`, `created_at`) VALUES
(251, 996, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 500.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625944212),
(252, 996, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, 0, 165.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:30 hours of consultation', 1625944347),
(253, 996, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, 1, 15.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625944347),
(254, 1015, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, 0, 120.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625944347),
(255, 1015, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 1, 0, 30.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625944347),
(256, 930, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 600.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 'Gifts from the platform', 1625950715),
(257, 995, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1000.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625950749),
(258, 995, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1625952630),
(259, 995, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625952630),
(260, 934, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625952630),
(261, 934, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625952630),
(262, 995, NULL, 2005, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625953197),
(263, 995, NULL, 2005, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625953198),
(264, 4, NULL, 2005, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625953198),
(265, 4, NULL, 2005, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625953198),
(266, 979, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 400.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625992548),
(267, 995, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, 0, 137.50, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:15 hours of consultation', 1625996816),
(268, 995, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, 1, 12.50, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996817),
(269, 1015, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, 0, 100.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996817),
(270, 1015, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 1, 0, 25.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996817),
(271, 995, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625996942),
(272, 995, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996943),
(273, 929, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 45.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996943),
(274, 929, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 5.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996943),
(275, 995, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625996979),
(276, 995, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996979),
(277, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 40.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996979),
(278, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 10.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996979),
(279, 995, NULL, 2001, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 17.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625997105),
(280, 995, NULL, 2001, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625997106),
(281, 3, NULL, 2001, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 14.40, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625997106),
(282, 3, NULL, 2001, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1.60, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625997106),
(283, 996, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.75, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060488),
(284, 996, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.25, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060488),
(285, 867, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 18.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060488),
(286, 867, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060488),
(287, 996, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 44.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060553),
(288, 996, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 4.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060553),
(289, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 32.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060553),
(290, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060553),
(291, 930, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060836),
(292, 930, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060837),
(293, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 40.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060837),
(294, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 10.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060837),
(295, 1015, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 332.00, 'deduction', 'income', 'automatic', NULL, 0, 0, 'Payout request', 1626061220),
(296, 979, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 66.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061333),
(297, 979, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 6.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061334),
(298, 929, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 54.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061334),
(299, 929, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 6.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061334),
(300, 979, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 22.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061374),
(301, 979, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061374),
(302, 863, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061374),
(303, 863, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061374),
(304, 979, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061375),
(305, 979, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061376),
(306, 867, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061376),
(307, 867, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 6.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061376),
(308, 995, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, 0, 22.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061450),
(309, 995, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, 1, 2.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061451),
(310, 995, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'subscribe', 'automatic', NULL, 0, 0, 'Income for Subscribe', 1626061451),
(311, 867, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.16, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061483),
(312, 1, NULL, 2006, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.16, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061483),
(313, 929, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.16, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061490),
(314, 1, NULL, 2004, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.16, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061490),
(315, 863, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.16, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061494),
(316, 1, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.16, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061494),
(317, 1015, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 500.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1626132570),
(318, 1015, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 17.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626132845),
(319, 1015, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626132845),
(320, 863, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 12.80, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626132845),
(321, 863, NULL, 2002, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3.20, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626132845),
(322, 929, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 300.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1626241074),
(323, 929, NULL, 2004, NULL, NULL, NULL, 3, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626241152),
(324, 929, NULL, 2004, NULL, NULL, NULL, 3, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626241153),
(325, 929, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 0, 50.00, 'addiction', 'promotion', 'automatic', NULL, 0, 0, 'Paid for Promotion', 1626241153),
(326, 929, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626241213),
(327, 929, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626241214),
(328, 864, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626241214),
(329, 864, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 6.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626241214),
(330, 995, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1626247196),
(331, 995, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626247196),
(332, 870, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626247196),
(333, 870, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626247196),
(334, 995, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Refunded to Buyer', 1626247245),
(335, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Refunded Tax', 1626247245),
(336, 870, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, 0, 100.00, 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded Income', 1626247245),
(337, 870, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Refunded Commission to Seller', 1626247245),
(338, 870, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 1, 0, 20.00, 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded Commission', 1626247245),
(339, 996, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 29.70, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626508957),
(340, 996, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.70, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626508957),
(341, 867, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21.60, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626508957),
(342, 867, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 5.40, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626508957),
(343, 930, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 250.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704280),
(344, 923, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 300.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704284),
(345, 995, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 200.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704378),
(346, 995, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 100.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704382),
(347, 996, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 200.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704397),
(348, 929, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1635412197),
(349, 929, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1635412197),
(350, 867, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1635412197),
(351, 867, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 6.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1635412197),
(352, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', 1017, 1, 0, 'public.get_amount_from_referral', 1639378855),
(353, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 80.00, 'deduction', 'income', 'automatic', 1017, 1, 0, 'public.get_amount_from_referral', 1639378855),
(354, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 50.00, 'addiction', 'income', 'automatic', NULL, 1, 0, 'public.get_amount_from_referral', 1639378855),
(355, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 50.00, 'deduction', 'income', 'automatic', NULL, 1, 0, 'public.get_amount_from_referral', 1639378855),
(356, 1017, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 500.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 'charging for test', 1639379205),
(357, 1017, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379284),
(358, 1017, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379285),
(359, 867, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379285),
(360, 867, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379285),
(361, 1015, NULL, 2000, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1.50, 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379285),
(362, 1017, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 110.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379351),
(363, 1017, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 10.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379352),
(364, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 80.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379352),
(365, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 15.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379352),
(366, 1015, NULL, 1998, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 5.00, 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379352),
(367, 1017, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379394),
(368, 1017, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379395),
(369, 864, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 24.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379395),
(370, 864, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379395),
(371, 1015, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1.50, 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379395),
(372, 995, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172087),
(373, 995, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172087),
(374, 1015, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172087),
(375, 1015, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172087),
(376, 996, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 9.90, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172124),
(377, 996, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0.90, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172124),
(378, 1015, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7.20, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172124),
(379, 1015, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1.80, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172124),
(380, 979, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172160),
(381, 979, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172160),
(382, 1015, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172160),
(383, 1015, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172160),
(384, 929, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172296),
(385, 929, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172297),
(386, 1015, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172297),
(387, 1015, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172297),
(388, 995, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, 0, 0, 825.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1646379290),
(389, 995, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, 0, 1, 75.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646379290),
(390, 1015, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, 0, 0, 600.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646379290),
(391, 1015, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, 1, 0, 150.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646379290),
(392, 867, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 200.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 'gift', 1646381415),
(393, 930, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, 0, 218.90, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646386792),
(394, 930, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, 1, 19.90, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646386797),
(395, 1, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 0, 199.00, 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid For Registration Package', 1646386797),
(396, 859, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 500.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 'Charge for the test.', 1646387608),
(397, 859, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 0, 220.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646387660),
(398, 859, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, 1, 20.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646387660),
(399, 1, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, 0, 200.00, 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid For Registration Package', 1646387660),
(400, 930, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 55.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656083263),
(401, 930, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 5.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656083263),
(402, 1015, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 40.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656083263),
(403, 1015, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 10.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656083263),
(404, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, 5.25, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656103844),
(405, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 1, 0.25, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656103844),
(406, 1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, 4.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656103844),
(407, 1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 0, 1.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656103844),
(408, 923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 31.25, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656104131),
(409, 923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1.25, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656104132),
(410, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 27.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656104132),
(411, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 2.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656104132),
(412, 996, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 39.60, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656130482),
(413, 996, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3.60, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656130482),
(414, 864, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 28.80, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656130482),
(415, 864, NULL, 2003, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 7.20, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656130482),
(416, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 314.50, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656130707),
(417, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 1, 14.50, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656130707),
(418, 934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 271.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656130707),
(419, 934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 29.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656130707),
(420, 996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, 78.75, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656130963),
(421, 996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, 3.75, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656130964),
(422, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, 60.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656130964),
(423, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 0, 15.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656130964),
(424, 979, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.80, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656139704),
(425, 979, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 1, 0.80, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656139705),
(426, 934, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, 6.40, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656139705),
(427, 934, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, 0, 1.60, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656139705),
(428, 979, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, 27.50, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656139705),
(429, 979, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 2.50, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656139706),
(430, 929, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, 20.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656139706),
(431, 929, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, 0, 5.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656139706),
(432, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 26.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656148574),
(433, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656148574),
(434, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 23.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656148574),
(435, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 2.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656148574),
(436, 995, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 300.00, 'addiction', 'asset', 'manual', NULL, 0, 0, 'Gift Balance', 1656148789),
(437, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 52.25, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656148838),
(438, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 2.25, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656148838),
(439, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 45.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656148838),
(440, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 4.50, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656148838),
(441, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, 0, 17.00, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form credit', 1656322658),
(442, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, 1, 1.00, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form buyer', 1656322658),
(443, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, 0, 12.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales income', 1656322658),
(444, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 0, 4.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller commission', 1656322658),
(445, 930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 218.90, 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Refunded to buyer', 1659767122),
(446, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 19.90, 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Refunded tax', 1659767122),
(447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 199.00, 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded income', 1659767122),
(448, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.00, 'addiction', 'income', 'automatic', NULL, 0, 0, 'Refunded commission to seller', 1659767122),
(449, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded commission', 1659767122);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners`
--

CREATE TABLE `advertising_banners` (
  `id` int UNSIGNED NOT NULL,
  `position` enum('home1','home2','course','course_sidebar','product_show','bundle','bundle_sidebar') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int UNSIGNED NOT NULL DEFAULT '12',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `advertising_banners`
--

INSERT INTO `advertising_banners` (`id`, `position`, `size`, `link`, `published`, `created_at`) VALUES
(2, 'home1', 12, '/login', 1, 1607885353),
(3, 'home2', 6, '/certificate_validation', 1, 1607885656),
(4, 'home2', 6, '/instructors', 1, 1607885681),
(6, 'course_sidebar', 12, '/instructors', 1, 1607886391),
(7, 'course_sidebar', 12, '/certificate_validation', 1, 1607886440),
(8, 'product_show', 12, '/products', 1, 1656569687),
(9, 'bundle_sidebar', 12, '/classes?type[]=bundle', 1, 1656571896);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners_translations`
--

CREATE TABLE `advertising_banners_translations` (
  `id` int UNSIGNED NOT NULL,
  `advertising_banner_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertising_banners_translations`
--

INSERT INTO `advertising_banners_translations` (`id`, `advertising_banner_id`, `locale`, `title`, `image`) VALUES
(1, 2, 'en', 'Home - Join as instructor', '/store/1/default_images/banners/become_instructor_banner.png'),
(2, 3, 'en', 'Certificate validation - Home', '/store/1/default_images/banners/validate_certificates_banner.png'),
(3, 4, 'en', 'Reserve a meeting - Home', '/store/1/default_images/banners/reserve_a_meeting.png'),
(4, 6, 'en', 'Reserve a meeting - Course page', '/store/1/default_images/banners/reserve_a_meeting.png'),
(5, 7, 'en', 'Certificate validation - Course page', '/store/1/default_images/banners/validate_certificates_banner.png'),
(7, 2, 'ar', 'الصفحة الرئيسية - انضم كمدرس', '/store/1/default_images/banners/become_instructor_banner_ar.png'),
(8, 2, 'es', 'Inicio - Únete como instructora', '/store/1/default_images/banners/become_instructor_banner_es.png'),
(9, 3, 'ar', 'التحقق من صحة الشهادة - الصفحة الرئيسية', '/store/1/default_images/banners/validate_certificates_banner_ar.png'),
(10, 3, 'es', 'Validación de certificados - Inicio', '/store/1/default_images/banners/validate_certificates_banner_es.png'),
(11, 4, 'ar', 'حجز اجتماع - الصفحة الرئيسية', '/store/1/default_images/banners/reserve_a_meeting_ar.png'),
(12, 4, 'es', 'Reservar una reunión - Inicio', '/store/1/default_images/banners/reserve_a_meeting_es.png'),
(13, 6, 'ar', 'حجز اجتماع - صفحة الدورة', '/store/1/default_images/banners/reserve_a_meeting_ar.png'),
(14, 6, 'es', 'Reservar una reunión - página del curso', '/store/1/default_images/banners/reserve_a_meeting_es.png'),
(15, 7, 'ar', 'التحقق من صحة الشهادة - صفحة الدورة', '/store/1/default_images/banners/validate_certificates_banner_ar.png'),
(16, 7, 'es', 'Validación del certificado - página del curso', '/store/1/default_images/banners/validate_certificates_banner_es.png'),
(17, 8, 'en', 'Store - Product page', '/store/1/default_images/banners/store_en.png'),
(18, 8, 'ar', 'المتجر - صفحة المنتج', '/store/1/default_images/banners/store_ar.png'),
(19, 8, 'es', 'Tienda - Página del producto', '/store/1/default_images/banners/store_es.png'),
(20, 9, 'en', 'Course Bundle - Sidebar', '/store/1/default_images/banners/bundle_en.png'),
(21, 9, 'ar', 'حزمة الدورة - الشريط الجانبي', '/store/1/default_images/banners/bundle_ar.png'),
(22, 9, 'es', 'Paquete de cursos - Barra lateral', '/store/1/default_images/banners/bundle_es.png');

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int UNSIGNED NOT NULL,
  `affiliate_user_id` int UNSIGNED NOT NULL,
  `referred_user_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliates_codes`
--

CREATE TABLE `affiliates_codes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agora_history`
--

CREATE TABLE `agora_history` (
  `id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `start_at` int UNSIGNED NOT NULL,
  `end_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('register_date','course_count','course_rate','sale_count','support_rate','product_sale_count','make_topic','send_post_in_topic','instructor_blog') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int DEFAULT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `image`, `type`, `condition`, `score`, `created_at`) VALUES
(21, '/store/1/default_images/badges/new_user.png', 'register_date', '{\"from\":\"1\",\"to\":\"30\"}', 5, 1625553769),
(22, '/store/1/default_images/badges/loyal_user.png', 'register_date', '{\"from\":\"31\",\"to\":\"365\"}', 10, 1625554171),
(23, '/store/1/default_images/badges/faithful_user.png', 'register_date', '{\"from\":\"365\",\"to\":\"1000\"}', 15, 1625554495),
(24, '/store/1/default_images/badges/junior_vendor.png', 'course_count', '{\"from\":\"1\",\"to\":\"1\"}', 10, 1625554772),
(25, '/store/1/default_images/badges/senior_vendor.png', 'course_count', '{\"from\":\"2\",\"to\":\"2\"}', 20, 1625554960),
(26, '/store/1/default_images/badges/expert_vendor.png', 'course_count', '{\"from\":\"3\",\"to\":\"6\"}', 30, 1625555421),
(27, '/store/1/default_images/badges/bronze_classes.png', 'course_rate', '{\"from\":\"2\",\"to\":\"3\"}', NULL, 1625556048),
(28, '/store/1/default_images/badges/silver_classes.png', 'course_rate', '{\"from\":\"3\",\"to\":\"4\"}', 10, 1625556159),
(29, '/store/1/default_images/badges/golden_classes.png', 'course_rate', '{\"from\":\"4\",\"to\":\"5\"}', 50, 1625556284),
(30, '/store/1/default_images/badges/best_seller.png', 'sale_count', '{\"from\":\"1\",\"to\":\"2\"}', NULL, 1625557021),
(31, '/store/1/default_images/badges/top_seller.png', 'sale_count', '{\"from\":\"3\",\"to\":\"9\"}', 20, 1625557247),
(32, '/store/1/default_images/badges/king_seller.png', 'sale_count', '{\"from\":\"10\",\"to\":\"20\"}', 50, 1625558061),
(33, '/store/1/default_images/badges/good_support.png', 'support_rate', '{\"from\":\"2\",\"to\":\"3\"}', NULL, 1625558473),
(34, '/store/1/default_images/badges/amazing_support.png', 'support_rate', '{\"from\":\"3\",\"to\":\"4\"}', NULL, 1625558682),
(35, '/store/1/default_images/badges/fantastic_support.png', 'support_rate', '{\"from\":\"4\",\"to\":\"5\"}', 20, 1625558892),
(36, '/store/1/default_images/badges/Best Store Seller.svg', 'product_sale_count', '{\"from\":\"5\",\"to\":\"9\"}', 5, 1656145531),
(37, '/store/1/default_images/badges/King Store Seller.svg', 'product_sale_count', '{\"from\":\"10\",\"to\":\"15\"}', 10, 1656145677),
(38, '/store/1/default_images/badges/Forums Top User.svg', 'make_topic', '{\"from\":\"1\",\"to\":\"5\"}', 10, 1656145989),
(39, '/store/1/default_images/badges/Forums Best User.svg', 'make_topic', '{\"from\":\"6\",\"to\":\"10\"}', 15, 1656146136),
(40, '/store/1/default_images/badges/Loyal Writer.svg', 'instructor_blog', '{\"from\":\"5\",\"to\":\"10\"}', 20, 1656146397),
(41, '/store/1/default_images/badges/Forums Loyal User.svg', 'send_post_in_topic', '{\"from\":\"20\",\"to\":\"30\"}', 10, 1656146689);

-- --------------------------------------------------------

--
-- Table structure for table `badge_translations`
--

CREATE TABLE `badge_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `badge_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badge_translations`
--

INSERT INTO `badge_translations` (`id`, `badge_id`, `locale`, `title`, `description`) VALUES
(1, 21, 'en', 'New User', '1 Month of Membership'),
(2, 22, 'en', 'Loyal User', '1 year of Membership'),
(3, 23, 'en', 'Faithful User', 'Old Membership'),
(4, 24, 'en', 'Junior Vendor', 'Has 1 Class'),
(5, 25, 'en', 'Senior Vendor', 'Has 2 Classes'),
(6, 26, 'en', 'Expert Vendor', 'Has 3 to 6 Classes'),
(7, 27, 'en', 'Bronze Classes', 'Classes Rating from 2 to 3'),
(8, 28, 'en', 'Silver Classes', 'Classes Rating from 3 to 4'),
(9, 29, 'en', 'Golden Classes', 'Classes Rating from 4 to 5'),
(10, 30, 'en', 'Best Seller', 'Classes Sales from 1 to 2'),
(11, 31, 'en', 'Top Seller', 'Classes Sales from 3 to 9'),
(12, 32, 'en', 'King Seller', 'Classes Sales from 10 to 20'),
(13, 33, 'en', 'Good Support', 'Support Rating from 2 to 3'),
(14, 34, 'en', 'Amazing Support', 'Support Rating from 3 to 4'),
(15, 35, 'en', 'Fantastic Support', 'Support Rating from 4 to 5'),
(16, 36, 'en', 'Store Best Seller', 'Store Products Sales from 1 to 5'),
(17, 37, 'en', 'Store King Seller', 'Store Products Sales from 6 to 15'),
(18, 38, 'en', 'Forums Top User', 'Has 2 to 5 Topics'),
(19, 39, 'en', 'Forums Best User', 'Has 6 to 10 Topics'),
(20, 40, 'en', 'Loyal Writer', 'Has 5 to 10 Articles'),
(21, 41, 'en', 'Forum Loyal User', 'Has 20 to 30 Posts in Forums');

-- --------------------------------------------------------

--
-- Table structure for table `batchs`
--

CREATE TABLE `batchs` (
  `id` int UNSIGNED NOT NULL,
  `batch_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_id` int NOT NULL DEFAULT (0),
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `batchs`
--

INSERT INTO `batchs` (`id`, `batch_name`, `webinar_id`, `remark`, `start_date`, `end_date`, `created_at`) VALUES
(42, 'Batch-1', 2046, '', '2024-01-01', '2024-12-31', '2024-03-06 17:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `become_instructors`
--

CREATE TABLE `become_instructors` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `role` enum('teacher','organization') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int UNSIGNED DEFAULT NULL,
  `certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','accept','reject') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `author_id` int UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_count` int UNSIGNED DEFAULT '0',
  `enable_comment` tinyint(1) NOT NULL DEFAULT '1',
  `status` enum('pending','publish') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int UNSIGNED NOT NULL,
  `updated_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `author_id`, `slug`, `image`, `visit_count`, `enable_comment`, `status`, `created_at`, `updated_at`) VALUES
(21, 34, 1014, 'How-To-Teach-Your-Kid-Anything-Easily', '/store/1/default_images/blogs/blog1.jpg', 21, 1, 'publish', 1625091953, 1656136960),
(22, 37, 1014, 'Better-Relationship-Between-You-and-Your-Student-s-Parent', '/store/1/default_images/blogs/blog2.jpg', 9, 1, 'publish', 1625093279, 1645386787),
(23, 36, 1, '3-Laws-to-Become-a-Straight-A-Student', '/store/1014/blog3.jpg', 17, 1, 'publish', 1625094412, 1656136976);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`) VALUES
(33, 'Announcements', 'Vel-consequatur'),
(34, 'Articles', 'Facilis-ea'),
(36, 'Events', 'Fugit-dignissimos-possimus'),
(37, 'News', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `blog_id`, `locale`, `title`, `description`, `content`, `meta_description`) VALUES
(2, 21, 'en', 'How To Teach Your Kid Easily', '<p>The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault. I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p>', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 'The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault.'),
(3, 22, 'en', 'Better Relationship Between Friends', '<p>The tutor-parent relationship is an important relationship and unfortunately greatly overlooked. Why is it important? Well, a good relationship between you and the student’s parent or guardian serves to help students perform better personally and academically. Fostering a relationship with them as a tutor can be challenging due to a number of factors, however, there are a number of ways to build this relationship and optimize students’ learning support system over time.</p>', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 'The tutor-parent relationship is an important relationship and unfortunately greatly overlooked.'),
(4, 23, 'en', 'Become a Straight-A Student', '<p>In this article, I’ll explain the two rules I followed to become a straight-A student. If you take my advice, you’ll get better grades and lead a more balanced life too.</p>', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 'In this article, I’ll explain the two rules I followed to become a straight-A student.'),
(5, 21, 'ar', 'كيف تعلم طفلك أي شيء بسهولة', '<p style=\"text-align: right; \">الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين. بدأت في تدريس الرياضيات بسبب اليأس المالي.</p>', '<p style=\"text-align: right; \">بدأت في تدريس الرياضيات بسبب اليأس المالي. لقد طُردت للتو من وظيفتي كنادل ، ومعظم عمليات التدقيق اللغوي في الوظائف في نيويورك تم الاستعانة بمصادر خارجية للهند ، وللمرة الثالثة في حياتي ، كنت أواجه فقرًا مدقعًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان المبلغ الذي نسيته مذهلاً في البداية ، وقد تفوقت في الرياضيات طوال حياتي الأكاديمية. إذا كنت لا تستخدمها ، فأنت تخسرها حقًا ، لذلك ليس من المستغرب أن يبكي معظم الآباء عمي في الرياضيات في الصف الرابع تقريبًا. إنهم لا يتذكرون ولا يريدون أن يتذكروا ، مما يديم هذا الموقف لدى أطفالهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تخيل أنك تفعل أي شيء ، حتى لو كنت بارعًا فيه ، بما يعادل عملاقًا يلوح في الأفق خلفك ويفحص كل تحركاتك. وهذا هو ما يفعله الآباء لأطفالهم. إنهم يحومون وينقضون على كل خطأ.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">1) تعاطف مع أطفالك</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">في جلستي الأولى مع تلميذي الأول ، تراجعت والدته بعصبية خلفنا ، ثم اتصلت بي لمدة خمس دقائق. سألت إذا لاحظت أن ابنها قد أجاب على السؤال الأخير بشكل غير صحيح ، ورأيت على الفور جوهر المشكلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">عليك أن ترتاح وتسترخي حتى يكون طفلك مرتاحًا وتنتظر حتى النهاية قبل أن تبدأ في تصحيح أي شيء. هذه هي الطريقة التي يتعلم بها الأطفال التحقق من عملهم ، وأن ارتكاب الأخطاء ليس مشكلة كبيرة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الأخطاء لا مفر منها ، ولكن كيفية التعامل معها ليست كذلك. إذا كنت تريد أن يشعر ابنك بالرعب إلى الأبد من الرياضيات ، إذن ، بكل الوسائل ، استمر في الازدحام ومقاطعته على الدوام. من المحتمل أن تجعلهم حذرين من محاولة تعلم أي شيء على الإطلاق.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">2) إعطاء نفسك وأطلق عليه الرصاص</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لحسن الحظ ، فهمت هذه الأم ومعظم الآباء الآخرين ما كنت أفعله ، وأدركوا تواطؤهم في كفاح أطفالهم. بعد تلك الجلسة الأولى ، تركتنا أمي وشأننا ، وبدأ طفلها في التحسن على الفور.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تم تشجيع والديه لدرجة أنهم سألوا عما إذا كان بإمكاني المساعدة في مواضيع أخرى. كان التاريخ والعلوم واللغة الإنجليزية داخل غرفة قيادتي ، لكن الطفل ذهب إلى مدرسة كاثوليكية وكان عليه أن يتعلم اللاتينية.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">استعرت نسخة من كتابه اللاتيني وأصيبت بالإحباط تمامًا. اللغة اللاتينية محيرة ، خاصة في البداية. هذا العدد الكبير من الإقتران، ومسألة السياق. الطريقة التي تتحدث بها إلى النبلاء والأقران والعبيد تشبه عمليًا تعلم ثلاث لغات مختلفة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">ما زلت مفلسة ، وهذا يعني المزيد من المال. وهل كان علي بالفعل معرفة اللاتينية؟ كل ما كان علي فعله هو البقاء قبل الطفل ببضعة أيام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">3) كن صادقا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">حالتنا الافتراضية هي إنكار جهلنا ، خاصة أمام الأطفال. نحن دفاعيون ورفضون ، ويمكن لمعظم الأطفال أن يقولوا إنك ضائع مثلهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان الحل هو الاعتراف بذلك منذ البداية. سألني الطفل عن وجهة نظر تعلم اللاتينية وأخبرته أنني لا أعرف. من المفترض أنه ساعد مع لغات أخرى ، لكن ربما يمكنه استخدامه يومًا ما لإثارة إعجاب الأشخاص الطنانين في حفلات الكوكتيل. سألني لماذا تكسر بعض الأفعال أنماط الاقتران ، وقلت له إنها طريقة القدماء في تعذيبنا.</p><p style=\"text-align: right; \">عندما كان طفلاً صغيرًا ، كان يتعلم اللغة أسرع مني ، لكنه كان يواجه صعوبة أكبر في بعض التفاصيل الدقيقة. كانت هناك أوقات حيرتني فيها وأتحدث بصوت عالٍ أمامه.</p><p style=\"text-align: right; \">أنا مدرس رياضيات. ما الذي جعلني أعتقد أنني مستعد لتدريس اللاتينية ، ناهيك عن تعلمها؟</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قال لي الطفل إنني أبدو جيدًا في كل شيء آخر ، لذا من المحتمل أن أفهم ذلك ، لكن كان هناك القليل من القلق في صوته. كلما فعلت الأسوأ ، زاد احتمال فشله ، وأراد إخراج اللاتينية من حياته أكثر مما فعلت.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لقد قربنا كراهيتنا المتبادل للغة اللاتينية من بعضنا البعض. لأول مرة ، أدرك كلانا أننا في هذا معًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">4) التعامل مع أولياء الأمور والمعلمين هو جزء من التعليم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">مع تقدمه في السن ، بدأ يسألني عن والديه ، اللذين كانا من المحافظين في قناة فوكس نيوز. قال لي انه يمكن ان نرى انهم منحازون، ولكن لم أفهم لماذا، أو أعرف ما يفكر.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">أخبرته أن يفكر بنفسه ويعترف عندما لا يعرف شيئًا ، وأنه لا يجب أن يخشى تغيير رأيه في ضوء أدلة جديدة صحيحة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">واشتكى أساتذته، واحد منهم لم يكن سعيدا كنت قد علمته الطرق المختلفة لعلم الجبر. في نهاية المطاف، وعلم أنه كيفية القيام بذلك بطريقة المعلم، ولكن عنيدا حاجة سبيلا آخر للوصول إلى هناك. كنا غاضبين بعض الشيء ، لكنني أخبرته أن تعلم التعامل مع المعلمين هو جزء من التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">احتفظت بالضغينة لنفسي ، لكنني أردت أيضًا خنق معلمه. وكان هذا الطفل قد ذهب من متوسط ​​D إلى B +، وكان هذا المعلم لا يزال يطارد له. ولا عجب في ذلك كثير من الناس رديء في الرياضيات - الآباء والامهات والمعلمين ضدهم وحتى لم يدرك ذلك.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">5) احتضان موقف التعلم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">إذا لم تكن على استعداد للتعلم ، فسيكون من الصعب تدريسه ، والخطوة الأولى هي قبول مدى ضآلة معرفتنا. من النفاق أن تنقض على ابنك عندما لا تتمكن من أداء واجبه المنزلي أيضًا ، ويلاحظ الأطفال ذلك ويشعرون بحق أنك غير عادل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">التعلم الإلكتروني) سيحسن إدراكك بشكل عام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">القراءة والرياضيات مهارات أساسية ، وتعلم الرياضيات أمر متواضع. في حين أن هناك القليل من الأدلة التي تدعم أن الرياضيات تحسن التفكير بشكل عام ، فأنت بحاجة إليها لفهم العلوم ، وعندما تشعر بالحيرة تجاه الكثير من الواجبات المدرسية لطفلك في المدرسة الابتدائية ، فإن القليل على الأقل من عدم اليقين يخترق آرائك. أنت تدرك أنك لا تعرف الكثير كما كنت تعتقد ، وبالنسبة لمعظم الناس ، يمكن أن يمثل هذا بداية جديدة. مع انحسار الصلابة ، تعاود اللدونة الظهور ، وعادات التعلم مدى الحياة هي أثمن هدية يمكن أن تقدمها لنفسك ولطفلك.إذا اخترت أن يكون الأطفال، يجب أن يكون لديك الاولوية رقم واحد، وسوف يفاجأ في مقدار التعلم (أو ص</p>', 'الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين.'),
(6, 21, 'es', 'Cómo enseñar a tu hija cualquier cosa fácilmente', '<p>La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres. Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p>', '<p>Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p><p><br></p><p>La cantidad que había olvidado fue sorprendente al principio, y había sobresalido en matemáticas durante toda mi vida académica. Si no lo usas, realmente lo pierdes, así que no es de extrañar que la mayoría de los padres lloren a tío en matemáticas de cuarto grado. No recuerdan y no quieren recordar, perpetuando esta actitud en sus hijos.</p><p><br></p><p>Imagínese haciendo cualquier cosa, incluso algo en lo que se le da bien, con el equivalente a un gigante acechando detrás de usted y escudriñando cada uno de sus movimientos. Esto es lo que les hacen los padres a sus hijos. Se ciernen y se abalanzan sobre cada error.</p><p><br></p><p>1) Tenga empatía por sus hijos</p><p><br></p><p>En mi primera sesión con mi primer alumno, su madre se escondió nerviosamente detrás de nosotros, luego me llamó unos cinco minutos después. Me preguntó si noté que su hijo había respondido la última pregunta incorrectamente, e inmediatamente vi la esencia del problema.</p><p><br></p><p>Tienes que descansar y relajarte para que tu hijo se sienta cómodo y esperar hasta el final antes de empezar a corregir algo. Así es como los niños aprenden a controlar su trabajo y que cometer errores no es gran cosa.</p><p><br></p><p>Los errores son inevitables, pero la forma en que los manejamos no lo es. Si quiere que su hijo esté eternamente aterrorizado por las matemáticas, entonces, por supuesto, continúe apiñándolos e interrumpiéndolos perpetuamente. Lo más probable es que los haga desconfiar de intentar aprender algo.</p><p><br></p><p>2) Date una oportunidad</p><p><br></p><p>Afortunadamente, esta madre y la mayoría de los otros padres entendieron lo que estaba haciendo y reconocieron su complicidad en las luchas de sus hijos. Después de esa primera sesión, mamá nos dejó solos y su hijo comenzó a mejorar de inmediato.</p><p><br></p><p>Sus padres estaban tan animados que me preguntaron si podía ayudar con otros temas. La historia, la ciencia y el inglés estaban a mi alcance, pero el niño fue a una escuela católica y tuvo que aprender latín.</p><p><br></p><p>Pedí prestada una copia de su libro en latín y me desmoralicé por completo. El latín es desconcertante, especialmente al principio. Tantas conjugaciones y contexto son importantes. La forma de hablar con nobles, compañeros y esclavos es prácticamente como aprender tres idiomas diferentes.</p><p><br></p><p>Aún así, estaba arruinado y esto significaría más dinero. ¿Y realmente tenía que saber latín? Todo lo que tenía que hacer era quedarme unos días por delante del chico.</p><p><br></p><p>3) Sea honesto</p><p><br></p><p>Nuestro estado predeterminado es negar nuestra ignorancia, especialmente frente a los niños. Estamos a la defensiva y desdeñosos, y la mayoría de los niños pueden decir que estás tan perdido como ellos.</p><p><br></p><p>Mi solución fue admitir esto desde el principio. El niño me preguntó qué sentido tenía aprender latín y le dije que no lo sabía. Supuestamente le ayudó con otros idiomas, pero tal vez algún día podría usarlo para impresionar a personas pretenciosas en los cócteles. Me preguntó por qué algunos verbos rompían los patrones de conjugación y le dije que era la forma de los antiguos de torturarnos.</p><p><br></p><p>Cuando era niño, aprendió el idioma más rápido que yo, pero tuvo más dificultades con algunas de las sutilezas. Hubo momentos en que estaba desconcertado y me hablaba en voz alta frente a él.</p><p><br></p><p>Soy un tutor de matemáticas. ¿Qué diablos me hizo pensar que estaba equipado para enseñar latín, y mucho menos aprenderlo?</p><p><br></p><p>El chico me dijo que parecía ser bastante bueno en todo lo demás, así que probablemente lo entendería, pero había un matiz de preocupación en su voz. Cuanto peor lo hacía, más probabilidades había de que fracasara, y quería que el latín fuera de su vida incluso más que yo.</p><p><br></p><p>Nuestro odio mutuo por el latín nos acercó más. Por primera vez, ambos comprendimos que estábamos juntos en esto.</p><p><br></p><p>4) Tratar con padres y maestros es parte de la educación</p><p><br></p><p>A medida que crecía, empezó a preguntarme sobre sus padres, que eran conservadores de Fox News. Me dijo que podía ver que eran parciales, pero que no entendía por qué ni sabía qué pensar.</p><p><br></p><p>Le dije que pensara por sí mismo y admitiera cuando no sabía algo, y que no debería tener miedo de cambiar de opinión a la luz de nuevas pruebas válidas.</p><p><br></p><p>Se quejaba de sus profesores, uno de los cuales no estaba contento de que le hubiera enseñado diferentes enfoques del álgebra. Con el tiempo, aprendió a hacerlo a la manera del maestro, pero necesitaba otra vía para llegar allí. Ambos estábamos un poco enojados, pero le dije que aprender a tratar con los maestros es parte de la educación.</p><p><br></p><p>Me guardé mi rencor, pero también quería estrangular a su maestro. Este niño había pasado de un promedio D a un B +, y esta maestra todavía lo perseguía. No es de extrañar que tanta gente sea pésima en matemáticas: sus padres y maestros estaban en contra de ellos y ni siquiera se dieron cuenta.</p><p><br></p><p>5) Adopte una actitud de aprendizaje</p><p><br></p><p>Si no está dispuesto a aprender, será difícil enseñar y el primer paso es aceptar lo poco que sabemos. Es hipócrita atacar a tu hijo cuando tú tampoco puedes hacer su tarea, y los niños se dan cuenta de esto y sienten que estás siendo injusto.</p><p><br></p><p>Si elige tener hijos, deberían ser su prioridad número uno y se sorprenderá de cuánto aprendizaje (o relearning) mejorará su cognición en general.</p><p><br></p><p>La lectura y las matemáticas son habilidades fundamentales, y aprender matemáticas es una lección de humildad. Si bien hay poca evidencia que respalde que las matemáticas mejoran el razonamiento en general, las necesita para comprender las ciencias, y cuando gran parte de las tareas de la escuela primaria de su hijo le desconcierta, al menos un poco de incertidumbre penetra en sus puntos de vista. Te das cuenta de que no sabes tanto como pensabas y, para la mayoría, esto puede marcar un nuevo comienzo. A medida que cede la rigidez, resurge la plasticidad y el hábito del aprendizaje permanente es el regalo más valioso que puede hacerse a sí mismo y a su hijo.</p>', 'La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres.'),
(7, 23, 'es', '3 leyes para convertirse en una estudiante heterosexual', '<p>En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente. Si sigue mi consejo, obtendrá mejores calificaciones y también llevará una vida más equilibrada.</p>', '<p>Un historial académico sólido puede abrirle puertas en el futuro. Más importante aún, a través del proceso de convertirse en un estudiante sobresaliente, aprenderá valores como el trabajo duro, la disciplina y la determinación.</p><p>Regla 1: siempre tenga un plan.</p><p>(a) A medida que avanza el semestre, realice un seguimiento de las fechas clave: pruebas y exámenes, fechas límite para la presentación de proyectos, interrupciones del período, etc.</p><p>Ingrese estas fechas en un calendario físico o digital.</p><p>Si elige utilizar un calendario digital, le recomiendo Google Calendar.</p><p><br></p><p>(b) Programe un horario fijo cada semana en el que revise sus próximos eventos durante los próximos dos meses. Marque cuándo comenzará a prepararse para ese examen de matemáticas, a trabajar en ese proyecto de historia o a escribir ese ensayo en inglés.</p><p>(d) A continuación, anote sus compromisos para la próxima semana, p. ej. actividades extracurriculares, reuniones familiares, clases extra. En su calendario, resalte los bloques de tiempo que tendrá para el trabajo escolar.</p><p>Este proceso de planificación puede parecer lento, pero por lo general solo tomará 15 minutos cada semana.</p><p>Esta es una sabia inversión de tiempo como estudiante, porque el resto de la semana será mucho más productiva.</p><p>De esta manera, estudiarás inteligentemente, ¡no solo duro!</p><p><br></p><p>Regla # 2: Sea organizado.</p><p>Alguna vez ha tenido problemas para encontrar sus notas o tareas cuando las necesitaba? Probablemente terminó perdiendo un tiempo precioso buscándolos, antes de que finalmente se los pidiera prestados a su amigo.</p><p>Muchos estudiantes me dicen que guardan todas sus notas y tareas en una gran pila, ¡y solo las clasifican antes de sus exámenes!</p><p>Ser organizado, es más fácil decirlo que hacerlo, lo sé.</p>', 'En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente.'),
(8, 23, 'ar', 'علاقة أفضل بينك وبين ولي أمر الطالب', '<div style=\"text-align: right;\">في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا. إذا أخذت بنصيحتي ، ستحصل على درجات أفضل وتعيش حياة أكثر توازناً أيضًا.</div>', '<div style=\"text-align: right; \">يمكن للسجل الأكاديمي القوي أن يفتح لك الأبواب في المستقبل. والأهم من ذلك ، من خلال عملية أن تصبح طالبًا عاديًا ، ستتعلم قيمًا مثل العمل الجاد والانضباط والتصميم.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة 1: امتلك خطة دائمًا.</div><div style=\"text-align: right; \">(أ) مع تقدم الفصل الدراسي ، تتبع التواريخ الرئيسية: الاختبارات والامتحانات والمواعيد النهائية لتقديم المشروع وفواصل الفصل الدراسي وما إلى ذلك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">أدخل هذه التواريخ في تقويم مادي أو رقمي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">إذا اخترت استخدام تقويم رقمي ، فإنني أوصي بتقويم Google.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(ب) حدد موعدًا محددًا كل أسبوع حيث تقوم بمراجعة الأحداث القادمة على مدار الشهرين المقبلين. ضع علامة على الوقت الذي ستبدأ فيه التحضير لامتحان الرياضيات هذا ، أو العمل في مشروع التاريخ ، أو كتابة هذه الورقة باللغة الإنجليزية.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(د) بعد ذلك ، دوِّن التزاماتك للأسبوع القادم ، على سبيل المثال الأنشطة اللامنهجية والتجمعات العائلية والفصول الإضافية. في التقويم الخاص بك ، حدد فترات الوقت التي ستتاح لك للعمل المدرسي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">قد تبدو عملية التخطيط هذه مضيعة للوقت ، ولكنها عادة ما تستغرق 15 دقيقة فقط كل أسبوع.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">هذا استثمار حكيم للوقت كطالب ، لأن بقية الأسبوع ستصبح أكثر إنتاجية بكثير.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">بهذه الطريقة ، ستدرس بذكاء ، وليس فقط بجد!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة رقم 2: كن منظمًا.</div><div style=\"text-align: right; \">هل واجهت مشكلة في العثور على ملاحظاتك أو مهامك عندما احتجت إليها؟ ربما انتهى بك الأمر إلى إضاعة الوقت الثمين في البحث عنهم ، قبل أن تطلب أخيرًا استعارتهم من صديقك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">يخبرني العديد من الطلاب أنهم يحتفظون بجميع ملاحظاتهم وواجباتهم في كومة كبيرة واحدة ، ولا يقوموا بفرزها إلا قبل امتحاناتهم!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">كونك منظمًا - القول أسهل من الفعل ، أعلم.</div>', 'في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا.'),
(9, 22, 'ar', 'علاقة أفضل بينك وبين ولي أمر الطالب', '<p style=\"text-align: right; \">العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير. لماذا هو مهم؟ حسنًا ، تساعد العلاقة الجيدة بينك وبين ولي أمر الطالب أو الوصي عليه في مساعدة الطلاب على أداء أفضل على المستوى الشخصي والأكاديمي. </p>', '<p style=\"text-align: right; \">الرحمة والإيجابية هي كل شيء</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون التعامل معك أمرًا مرهقًا للوالدين أو الأوصياء. قد يكون هناك خوف من أن أداء طفلهم ليس جيدًا كما ينبغي ، أو ضيق الوقت للتواصل ، أو حتى حواجز اللغة. بصفتك مدرسًا ، فإن التعاطف وتقديم المعلومات بنبرة مهذبة يؤدي إلى العجائب في مثل هذه المواقف. من الأفضل الابتسام والتواصل البصري والترحيب وتقديم أي نصيحة إذا لزم الأمر. إحدى الحيل الجيدة للمساعدة في تهدئة الآباء أو الأوصياء عند التحدث إليهم هي الاعتراف أولاً بشيء إيجابي عن طفلهم لاحظته مهما كان صغيراً. على سبيل المثال ، ربما لاحظت أنهم أكثر انخراطًا في دروسهم وطرحوا المزيد من الأسئلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كن استباقيًا وتواصل كثيرًا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يتحدث بعض المعلمين مع الوالدين أو الأوصياء فقط عندما تكون هناك مشكلة ، مما يخلق بيئة سلبية لكليهما. هذا هو السبب في أنه من الضروري بذل الجهد للتحدث معهم كثيرًا سواء كان ذلك وجهًا لوجه أو مكالمة هاتفية أو حتى رسالة بريد إلكتروني. من الأفضل إبقائهم على اطلاع دائم بما يتعلمه أطفالهم. غالبًا ما يمنعهم التواصل من الشعور باليقظة القصوى عند التواصل معهم ويمكنه أيضًا تعزيز صداقة جميلة. بالطبع من المهم معرفة أن الآباء والأوصياء مشغولون! لذا تأكد عند التواصل معهم أنك تخطط مسبقًا للعثور على وقت يناسبهم بشكل أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">اجعل الوالد أو الوصي يشعر بالتقدير واطلب مشورتهما</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">من الطرق الرائعة لبناء علاقة مع الوالدين أو الأوصياء إشراكهم في تعليم أطفالهم. هذا لا يعني مجرد مساعدتهم في أداء واجباتهم المدرسية ، ولكن قد يعني مطالبتهم بالمشاركة في الأنشطة أو الأحداث المدرسية. يُعد سؤالهم عما إذا كانوا يرغبون في المساعدة في تنظيم حدث طريقة رائعة للتعرف عليهم ومنحهم فرصة لمقابلة أولياء الأمور أو الأوصياء الآخرين. يمكن أن يكون أيضًا شيئًا بسيطًا مثل إنشاء خطة درس تطلب مدخلات منهم. بالطبع كل هذا يعتمد على جدولهم الزمني وما إذا كان لديهم الوقت للمشاركة. في النهاية ، كلما حاولت إشراكهم في الأنشطة ، كان ذلك أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">طريقة أخرى رائعة لجعلهم يشعرون بالتقدير هي طلب نصيحتهم. إذا كان الطالب يعرض سلوكيات سلبية أثناء الدرس ، فمن الحكمة طلب مشورة الوالد أو الوصي. من خلال طلب نصيحتهم ، يمكن أن يحدث شيئان. أولاً ، قد لا يعرفون أن هناك سلوكًا سلبيًا للبدء به لأن الطالب قد لا يعرضه في المنزل. ثانيًا ، أنت تبني علاقة أفضل مع الوالد أو الوصي من خلال الحصول على مدخلاتهم في هذا الموقف ، مما سيبني الثقة. لا يجب أن تدور الأسئلة حول تعليم الطالب فقط عند التحدث إليهم ، بل يمكنك أيضًا طرح أسئلة حول اهتمامات الطالب والخطط التي لديهم خلال العطلات. من المهم دائمًا أن تتصرف بشكل احترافي عند التعامل مع أحد الوالدين أو الوصي ، ولكن لا يجب أن تكون المحادثة فقط حول التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تجنب أخذها بشكل شخصي والافتراضات</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الآباء والأوصياء بشر ولديهم ضغوط خاصة بهم للتعامل معها سواء كان ذلك في العمل أو في حياتهم المنزلية. من الأفضل لك أن تحافظ على هدوئك دائمًا ولا تأخذ أي شيء يقولونه على محمل الجد. يجب عليك دائمًا الرد بأسئلة من شأنها أن تساعد في نزع فتيل الموقف. على سبيل المثال ، قد يقول أحد الوالدين أو الوصي \"أنت تقول هذا لأنك خرجت لإحضار طفلي\" وأفضل طريقة للرد على سؤال مثل هذا هي \"أنا آسف لأنك تشعر بهذه الطريقة ، يرجى إعلامي لماذا تعتقد هذا؟\"</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كما يجب ألا تضع افتراضات حول الحياة المنزلية للطالب. ما لم يتم ذكر ذلك ، يمكن للافتراض أن يسبب العديد من المشاكل ويمكن أن يكون غير حساس لوضع الأسرة. يجب ألا تفترض أن الطالب يعيش مع كلا الوالدين أو أي من الوالدين في هذا الشأن. الآن ، في عالمنا المتنوع عالميًا ، لا يجب أن تفترض أن اللغة الأولى للوالد أو الوصي هي اللغة الإنجليزية ويجب دائمًا تأكيد ما إذا كان بإمكانهم التحدث باللغة الإنجليزية في المقام الأول. سيكون لكل طالب وضع مختلف عن الوضع الذي يليه. تؤدي الافتراضات إلى سوء الفهم الذي يمكن أن يخلق ظروفًا أكثر صعوبة للتعلم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون بناء علاقة مع أحد الوالدين أو الوصي أمرًا صعبًا في بعض الأحيان. يمكن أن يساعدك وضع هذه الأفكار في الاعتبار على التواصل معها بشكل أفضل. من الجيد أن تتذكر ، في نهاية اليوم ، أنه كلما كان لديك اتصال أفضل معهم ، كان من الأفضل أن يساعدوا في تعليم الطالب ، مما يسمح لهم في النهاية بتحقيق النجاح الأكاديمي وتعزيز حب التعلم.</p>', 'العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير.'),
(10, 22, 'es', 'Mejor relación entre usted y los padres de su estudiante', '<p>La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida. ¿Por qué es importante? Bueno, una buena relación entre usted y el padre o tutor del estudiante sirve para ayudar a los estudiantes a desempeñarse mejor a nivel personal y académico. Fomentar una relación con ellos como tutor puede ser un desafío debido a una serie de factores; sin embargo, hay varias formas de construir esta relación y optimizar el sistema de apoyo al aprendizaje de los estudiantes a lo largo del tiempo.</p>', '<p>La compasión y la positividad lo son todo</p><p>Puede ser estresante para los padres o tutores interactuar con usted. Puede haber temor de que a su hijo no le esté yendo tan bien como debería, falta de tiempo para conectarse o incluso barreras del idioma. Como tutor, ser compasivo y brindar información en un tono educado hace maravillas en situaciones como esta. Es mejor sonreír, hacer contacto visual, ser acogedor y ofrecer cualquier consejo si es necesario. Un buen truco para ayudar a los padres o tutores a hablar con ellos es reconocer primero algo positivo acerca de su hijo que haya notado, sin importar lo pequeño que sea. Por ejemplo, es posible que haya notado que están más involucrados en sus lecciones y hacen más preguntas.</p><p><br></p><p>Sea proactivo y comuníquese con frecuencia</p><p><br></p><p>Es posible que algunos tutores solo hablen con los padres o tutores cuando hay un problema, lo que crea un entorno negativo para ambos. Por eso es clave hacer el esfuerzo de hablar con ellos a menudo, ya sea cara a cara, por teléfono o incluso por correo electrónico. Es mejor mantenerlos actualizados sobre el aprendizaje de sus hijos. Comunicarse a menudo evita que se sientan en alerta máxima cuando se acerca e incluso puede fomentar una hermosa amistad. ¡Por supuesto que es importante saber que los padres y tutores están ocupados! Por eso, cuando te comuniques con ellos, asegúrate de planificar con anticipación para encontrar el momento que mejor funcione para ellos.</p><p><br></p><p>Haga que el padre o tutor se sienta valorado y solicite su consejo</p><p><br></p><p>Una excelente manera de entablar una relación con los padres o tutores es involucrarlos en la educación de sus hijos. Esto no significa solo que los ayuden con la tarea, sino que también podría significar pedirles que participen en actividades o eventos escolares. Preguntarles si les gustaría ayudar a organizar un evento es una excelente manera de conocerlos y darles la oportunidad de conocer a otros padres o tutores. También podría ser algo tan simple como crear un plan de lección que solicite su opinión. Por supuesto, todo esto depende de su horario y si tienen tiempo para participar. Al final, cuanto más intente involucrarlos en las actividades, mejor.</p><p><br></p><p>Otra excelente manera de hacerlos sentir valorados es pedirles su consejo. Si su estudiante muestra comportamientos negativos durante una lección, es aconsejable buscar el consejo del padre o tutor. Al pedirles su consejo, pueden ocurrir dos cosas. Uno, para empezar, es posible que no sepan que existe un comportamiento negativo, ya que es posible que el estudiante no lo esté mostrando en casa. Dos, está construyendo una mejor relación con el padre o tutor al obtener su opinión en esta situación, lo que generará confianza. Las preguntas no tienen que ser solo sobre la educación del estudiante al hablar con él, también puede hacer preguntas sobre el interés del estudiante y los planes que tiene durante las vacaciones. Siempre es importante que te comportes de manera profesional cuando trates con un padre o tutor, pero la conversación no tiene que ser estrictamente sobre educación.</p><p><br></p><p>Evite tomárselo personalmente y hacer suposiciones</p><p><br></p><p>Los padres y tutores son humanos y tienen que lidiar con su propio estrés, ya sea en el trabajo o en su vida familiar. Es mejor para usted mantener siempre la calma y nunca tomar en serio nada de lo que le digan. Siempre debe responder con preguntas que ayuden a calmar la situación. Por ejemplo, un padre o tutor puede decir \"Dices esto porque quieres atrapar a mi hijo\" y la mejor manera de responder a una pregunta como esta es \"Lamento que te sientas así, por favor avísame Por qué piensas esto?</p><p>Además, no debe hacer suposiciones sobre la vida hogareña de un estudiante. A menos que se haya indicado así, una suposición puede causar muchos problemas y puede ser insensible a la situación de una familia. No debe asumir que el estudiante vive con ambos padres o con cualquier padre. Ahora, en nuestro mundo globalmente diverso, no debe asumir que el primer idioma del padre o tutor es el inglés y siempre debe confirmar si pueden hablar inglés en primer lugar. Cada estudiante tendrá una situación diferente a la del próximo. Las suposiciones conducen a malentendidos que pueden crear circunstancias más desafiantes para el aprendizaje.</p><p><br></p><p>Establecer una relación con un padre o tutor a veces puede ser un desafío. Tener estas ideas en mente puede ayudarlo a conectarse mejor con ellas. Es bueno recordar que, al final del día, cuanto mejor sea la conexión que tenga con ellos, mejor podrán ayudar a enseñar al estudiante, lo que en última instancia les permitirá alcanzar el éxito académico y fomentar el amor por el aprendizaje.</p>', 'La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida.');

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `teacher_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_demo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_demo_source` enum('upload','youtube','vimeo','external_link') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `access_days` int UNSIGNED DEFAULT NULL COMMENT 'Number of days to access the bundle',
  `message_for_reviewer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','pending','is_draft','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL,
  `updated_at` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_filter_option`
--

CREATE TABLE `bundle_filter_option` (
  `id` int UNSIGNED NOT NULL,
  `bundle_id` int UNSIGNED NOT NULL,
  `filter_option_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_translations`
--

CREATE TABLE `bundle_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `bundle_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_webinars`
--

CREATE TABLE `bundle_webinars` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `bundle_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `product_order_id` int UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int UNSIGNED DEFAULT NULL,
  `subscribe_id` int UNSIGNED DEFAULT NULL,
  `promotion_id` int UNSIGNED DEFAULT NULL,
  `ticket_id` int UNSIGNED DEFAULT NULL,
  `special_offer_id` int UNSIGNED DEFAULT NULL,
  `product_discount_id` int UNSIGNED DEFAULT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `icon`, `order`) VALUES
(520, NULL, '/store/1/default_images/categories_icons/feather.png', NULL),
(522, NULL, '/store/1/default_images/categories_icons/briefcase.png', NULL),
(523, NULL, '/store/1/default_images/categories_icons/heart.png', NULL),
(524, NULL, '/store/1/default_images/categories_icons/umbrella.png', NULL),
(525, NULL, '/store/1/default_images/categories_icons/pie-chart.png', NULL),
(526, NULL, '/store/1/default_images/categories_icons/anchor.png', NULL),
(528, NULL, '/store/1/default_images/categories_icons/code.png', NULL),
(601, 522, '/store/1/default_images/categories_icons/sub_categories/divide-square.png', 1),
(602, 522, '/store/1/default_images/categories_icons/sub_categories/zap.png', 2),
(603, 522, '/store/1/default_images/categories_icons/sub_categories/globe.png', 3),
(604, 524, '/store/1/default_images/categories_icons/sub_categories/sun.png', 1),
(605, 524, '/store/1/default_images/categories_icons/sub_categories/droplet.png', 2),
(606, 528, '/store/1/default_images/categories_icons/sub_categories/layout.png', 1),
(607, 528, '/store/1/default_images/categories_icons/sub_categories/smartphone.png', 2),
(608, 528, '/store/1/default_images/categories_icons/sub_categories/codesandbox.png', 3),
(609, 526, '/store/1/default_images/categories_icons/sub_categories/users.png', 1),
(610, 526, '/store/1/default_images/categories_icons/sub_categories/share-2.png', 2),
(611, 526, '/store/1/default_images/categories_icons/sub_categories/target.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`) VALUES
(1, 520, 'en', 'Design'),
(2, 522, 'en', 'Academics'),
(3, 523, 'en', 'Health & Fitness'),
(4, 524, 'en', 'Lifestyle'),
(5, 525, 'en', 'Marketing'),
(6, 526, 'en', 'Business'),
(7, 528, 'en', 'Development'),
(8, 601, 'en', 'Math'),
(9, 602, 'en', 'Science'),
(10, 603, 'en', 'Language'),
(11, 604, 'en', 'Lifestyle'),
(12, 605, 'en', 'Beauty & Makeup'),
(13, 606, 'en', 'Web Development'),
(14, 607, 'en', 'Mobile Development'),
(15, 608, 'en', 'Game Development'),
(16, 609, 'en', 'Management'),
(17, 610, 'en', 'Communications'),
(18, 611, 'en', 'Business Strategy'),
(19, 528, 'ar', 'تطوير'),
(20, 606, 'ar', 'تطوير الشبكة'),
(21, 607, 'ar', 'تطوير المحمول'),
(22, 608, 'ar', 'تطوير اللعبة'),
(23, 526, 'ar', 'عمل'),
(24, 609, 'ar', 'إدارة'),
(25, 610, 'ar', 'مجال الاتصالات'),
(26, 611, 'ar', 'استراتيجية العمل'),
(27, 525, 'ar', 'تسويق'),
(28, 524, 'ar', 'أسلوب الحياة'),
(29, 604, 'ar', 'أسلوب الحياة'),
(30, 605, 'ar', 'الجمال والمكياج'),
(31, 523, 'ar', 'الصحة واللياقة البدنية'),
(32, 522, 'ar', 'أكاديميون'),
(33, 601, 'ar', 'رياضيات'),
(34, 602, 'ar', 'علم'),
(35, 603, 'ar', 'لغة'),
(36, 520, 'ar', 'تصميم'),
(37, 528, 'es', 'Desarrollo'),
(38, 606, 'es', 'Desarrollo web'),
(39, 607, 'es', 'Desarrollo móvil'),
(40, 608, 'es', 'Desarrollo de juegos'),
(41, 526, 'es', 'Negocio'),
(42, 609, 'es', 'Gestión'),
(43, 610, 'es', 'Comunicaciones'),
(44, 611, 'es', 'Estrategia de negocios'),
(45, 525, 'es', 'Márketing'),
(46, 524, 'es', 'Estilo de vida'),
(47, 604, 'es', 'Estilo de vida'),
(48, 605, 'es', 'Belleza y maquillaje'),
(49, 523, 'es', 'salud y estado fisico'),
(50, 522, 'es', 'Académica'),
(51, 601, 'es', 'Matemáticas'),
(52, 602, 'es', 'Ciencias'),
(53, 603, 'es', 'Idioma'),
(54, 520, 'es', 'Diseño');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int UNSIGNED NOT NULL,
  `quiz_id` int UNSIGNED DEFAULT NULL,
  `quiz_result_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `user_grade` int UNSIGNED DEFAULT NULL,
  `type` enum('quiz','course') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `certificates_templates`
--

CREATE TABLE `certificates_templates` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('quiz','course') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_y` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','publish') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `certificates_templates`
--

INSERT INTO `certificates_templates` (`id`, `image`, `type`, `position_x`, `position_y`, `font_size`, `text_color`, `status`, `created_at`, `updated_at`) VALUES
(1, '/store/1/default_images/certificate.jpg', 'quiz', '300', '400', '32', '#314963', 'publish', 1608663541, 1656581793),
(2, '/store/1/default_images/certificate.jpg', 'course', '200', '400', '28', '#314963', 'publish', 1656581772, 1656664628);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_template_translations`
--

CREATE TABLE `certificate_template_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `certificate_template_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rtl` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_template_translations`
--

INSERT INTO `certificate_template_translations` (`id`, `certificate_template_id`, `locale`, `title`, `body`, `rtl`) VALUES
(1, 1, 'en', 'Quiz-depended Certificate Template', 'This certificate awarded to [student] \r\nregarding passing the [course] with \r\nthe [grade] with success\r\nCertificate ID : [certificate_id]', 0),
(2, 1, 'es', 'Certificado', 'Este certificado se otorgó a [student]\r\nen cuanto a aprobar el [course] con\r\nel [grade] con éxito\r\nID de certificado: [certificate_id]', NULL),
(3, 2, 'en', 'Completion Certificate Template', 'This certificate awarded to [student] \r\nregarding completing the course [course] with \r\nsuccess for [duration] minutes.\r\nCertificate ID : [certificate_id]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `review_id` int UNSIGNED DEFAULT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `blog_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_review_id` int UNSIGNED DEFAULT NULL,
  `reply_id` int UNSIGNED DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `report` tinyint(1) NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int NOT NULL,
  `viewed_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `comments_reports`
--

CREATE TABLE `comments_reports` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `blog_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `comment_id` int UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','replied') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `course_forums`
--

CREATE TABLE `course_forums` (
  `id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum_answers`
--

CREATE TABLE `course_forum_answers` (
  `id` int UNSIGNED NOT NULL,
  `forum_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT '0',
  `resolved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_instructions`
--

CREATE TABLE `course_instructions` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `author_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int UNSIGNED NOT NULL,
  `updated_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_instructions`
--

INSERT INTO `course_instructions` (`id`, `course_id`, `teacher_id`, `author_id`, `name`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(3, 2005, 930, 1, 'ASD', '/store/1/Where-the-Crawdads-Sing.pdf', 1, 1662371577, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_learning`
--

CREATE TABLE `course_learning` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `text_lesson_id` int UNSIGNED DEFAULT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_learning`
--

INSERT INTO `course_learning` (`id`, `user_id`, `text_lesson_id`, `file_id`, `session_id`, `created_at`) VALUES
(92, 1056, NULL, 339, NULL, 1719803682),
(93, 1051, NULL, 392, NULL, 1719990720);

-- --------------------------------------------------------

--
-- Table structure for table `course_noticeboards`
--

CREATE TABLE `course_noticeboards` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `color` enum('warning','danger','neutral','info','success') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_noticeboard_status`
--

CREATE TABLE `course_noticeboard_status` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `noticeboard_id` int UNSIGNED NOT NULL,
  `seen_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delete_account_requests`
--

CREATE TABLE `delete_account_requests` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` enum('percentage','fixed_amount') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` enum('all','course','category','meeting','product') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int UNSIGNED DEFAULT NULL,
  `amount` int UNSIGNED DEFAULT NULL,
  `max_amount` int UNSIGNED DEFAULT NULL,
  `minimum_order` int UNSIGNED DEFAULT NULL,
  `count` int NOT NULL DEFAULT '1',
  `user_type` enum('all_users','special_users') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_type` enum('all','physical','virtual') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_first_purchase` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `expired_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `creator_id`, `title`, `discount_type`, `source`, `code`, `percent`, `amount`, `max_amount`, `minimum_order`, `count`, `user_type`, `product_type`, `for_first_purchase`, `status`, `expired_at`, `created_at`) VALUES
(7, 1, 'Black Friday', 'percentage', 'all', 'BLK2021', 20, 10, NULL, NULL, 20, 'all_users', NULL, 0, 'active', 1639427340, 1626132792),
(8, 1, 'Store Physical Products Coupon', 'percentage', 'product', 'SPGH22', 10, NULL, NULL, NULL, 5, 'all_users', 'physical', 0, 'active', 1678494600, 1656320198),
(9, 1, 'Store Virtual Products Coupon', 'percentage', 'product', 'VKRYT22', 20, NULL, NULL, NULL, 10, 'all_users', 'virtual', 0, 'active', 1680357600, 1656320568),
(10, 1, 'Categories Coupon', 'percentage', 'category', 'GJKTPW', 10, NULL, 10, NULL, 1, 'all_users', 'all', 0, 'active', 1702684800, 1656320749);

-- --------------------------------------------------------

--
-- Table structure for table `discount_categories`
--

CREATE TABLE `discount_categories` (
  `id` int UNSIGNED NOT NULL,
  `discount_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_categories`
--

INSERT INTO `discount_categories` (`id`, `discount_id`, `category_id`, `created_at`) VALUES
(4, 10, 520, 1656395856),
(5, 10, 608, 1656395856),
(6, 10, 606, 1656395856);

-- --------------------------------------------------------

--
-- Table structure for table `discount_courses`
--

CREATE TABLE `discount_courses` (
  `id` int UNSIGNED NOT NULL,
  `discount_id` int UNSIGNED NOT NULL,
  `course_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_groups`
--

CREATE TABLE `discount_groups` (
  `id` int UNSIGNED NOT NULL,
  `discount_id` int UNSIGNED NOT NULL,
  `group_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_users`
--

CREATE TABLE `discount_users` (
  `id` int UNSIGNED NOT NULL,
  `discount_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `entake_units`
--

CREATE TABLE `entake_units` (
  `id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `unit_id` int UNSIGNED DEFAULT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `batch_id` int UNSIGNED DEFAULT NULL,
  `unit_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durration` int UNSIGNED DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `entake_units`
--

INSERT INTO `entake_units` (`id`, `student_id`, `unit_id`, `webinar_id`, `batch_id`, `unit_title`, `unit_code`, `durration`, `start_date`, `end_date`, `created_at`) VALUES
(9, 1043, 80, 2046, 42, 'Provide individualised support', 'CHCCCS031', 100, '2024-03-19 00:00:00', '2024-06-27 00:00:00', NULL),
(10, 1043, 82, 2046, 42, 'Support independence and wellbeing', 'CHCCCS040', 120, '2024-03-06 00:00:00', '2024-07-04 00:00:00', NULL),
(11, 1043, 83, 2046, 42, 'Communicate and work in health or community services', 'CHCCOM005', 50, '2024-03-06 00:00:00', '2024-04-25 00:00:00', NULL),
(12, 1043, 84, 2046, 42, 'Recognise healthy body systems', 'CHCCCS041', 34, '2024-03-13 00:00:00', '2024-04-16 00:00:00', NULL),
(13, 1043, 85, 2046, 42, 'Work with diverse people', 'CHCDIV001', 120, '2024-03-13 00:00:00', '2024-07-11 00:00:00', NULL),
(14, 1043, 86, 2046, 42, 'Work legally and ethically', 'CHCLEG001', 50, '2024-03-19 00:00:00', '2024-05-08 00:00:00', NULL),
(15, 1043, 87, 2046, 42, 'Follow safe work practices for direct client care', 'HLTWHS002', 59, '2024-03-19 00:00:00', '2024-05-17 00:00:00', NULL),
(16, 1043, 88, 2046, 42, 'Apply basic principles and practices of infection prevention and control', 'HLTINF006', 130, '2024-03-12 00:00:00', '2024-07-20 00:00:00', NULL),
(17, 1043, 89, 2046, 42, 'Facilitate the empowerment of people receiving support', 'CHCCCS038', 12, '2024-03-19 00:00:00', '2024-03-31 00:00:00', NULL),
(18, 1048, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(19, 1048, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(20, 1047, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(21, 1047, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(22, 1047, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(23, 1047, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(24, 1047, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(25, 1047, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(26, 1047, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(27, 1047, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(28, 1047, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(29, 1047, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(30, 1047, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(31, 1047, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(32, 1047, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(33, 1047, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(34, 1047, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(35, 1049, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(36, 1049, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(37, 1049, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(38, 1049, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(39, 1049, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(40, 1049, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(41, 1049, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(42, 1049, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(43, 1049, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(44, 1049, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(45, 1049, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(46, 1049, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(47, 1049, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(48, 1049, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(49, 1049, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(50, 1053, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(51, 1053, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(52, 1053, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(53, 1053, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(54, 1053, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(55, 1053, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(56, 1053, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(57, 1053, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(58, 1053, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(59, 1053, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(60, 1053, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(61, 1053, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(62, 1053, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(63, 1053, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(64, 1053, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(65, 1054, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(66, 1054, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(67, 1054, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(68, 1054, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(69, 1054, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(70, 1054, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(71, 1054, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(72, 1054, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(73, 1054, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(74, 1054, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(75, 1054, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(76, 1054, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(77, 1054, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(78, 1054, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(79, 1054, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(80, 1055, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(81, 1055, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(82, 1055, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(83, 1055, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(84, 1055, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(85, 1055, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(86, 1055, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(87, 1055, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(88, 1055, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(89, 1055, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(90, 1055, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(91, 1055, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(92, 1055, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(93, 1055, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(94, 1055, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(95, 1056, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(96, 1056, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(97, 1056, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(98, 1056, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(99, 1056, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(100, 1056, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(101, 1056, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(102, 1056, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(103, 1056, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(104, 1056, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(105, 1056, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(106, 1056, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(107, 1056, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(108, 1056, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(109, 1056, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(110, 1051, 106, 2048, 42, '-', 'CHCECE030', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(111, 1052, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(112, 1052, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(113, 1052, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(114, 1052, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(115, 1052, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(116, 1052, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(117, 1052, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(118, 1052, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(119, 1052, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(120, 1052, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(121, 1052, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(122, 1052, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(123, 1052, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(124, 1052, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(125, 1052, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(126, 1044, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(127, 1044, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(128, 1044, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(129, 1044, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(130, 1044, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(131, 1044, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(132, 1044, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(133, 1044, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(134, 1044, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(135, 1044, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(136, 1044, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(137, 1044, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(138, 1044, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(139, 1044, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(140, 1044, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(141, 1051, 125, 2049, 42, '-', 'CHCCCS006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(142, 1051, 126, 2049, 42, '-', 'HLTWHS004', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(143, 1051, 127, 2049, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(144, 1051, 128, 2049, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(145, 1052, 125, 2049, 42, '-', 'CHCCCS006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(146, 1052, 126, 2049, 42, '-', 'HLTWHS004', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(147, 1052, 127, 2049, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(148, 1052, 128, 2049, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(149, 1057, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(150, 1057, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(151, 1057, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(152, 1057, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(153, 1057, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(154, 1057, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(155, 1057, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(156, 1057, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(157, 1057, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(158, 1057, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(159, 1057, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(160, 1057, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(161, 1057, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(162, 1057, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(163, 1057, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(164, 1059, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(165, 1059, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(166, 1059, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(167, 1059, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(168, 1059, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(169, 1059, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(170, 1059, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(171, 1059, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(172, 1059, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(173, 1059, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(174, 1059, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(175, 1059, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(176, 1059, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(177, 1059, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(178, 1059, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(179, 1060, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(180, 1060, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(181, 1060, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(182, 1060, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(183, 1060, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(184, 1060, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(185, 1060, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(186, 1060, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(187, 1060, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(188, 1060, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(189, 1060, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(190, 1060, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(191, 1060, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(192, 1060, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(193, 1060, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(194, 1061, 133, 2050, 42, '-', 'HLTWHS003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(195, 1061, 134, 2050, 42, '-', 'CHCMHS001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(196, 1062, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(197, 1062, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(198, 1062, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(199, 1062, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(200, 1062, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(201, 1062, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(202, 1062, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(203, 1062, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(204, 1062, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(205, 1062, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(206, 1062, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(207, 1062, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(208, 1062, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(209, 1062, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(210, 1062, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(211, 1063, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(212, 1063, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(213, 1063, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(214, 1063, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(215, 1063, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(216, 1063, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(217, 1063, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(218, 1063, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(219, 1063, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(220, 1063, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(221, 1063, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(222, 1063, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(223, 1063, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(224, 1063, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(225, 1063, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(226, 1064, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(227, 1064, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(228, 1064, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(229, 1064, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(230, 1064, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(231, 1064, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(232, 1064, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(233, 1064, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(234, 1064, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(235, 1064, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(236, 1064, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(237, 1064, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(238, 1064, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(239, 1064, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(240, 1064, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(241, 1065, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(242, 1065, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(243, 1065, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(244, 1065, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(245, 1065, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(246, 1065, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(247, 1065, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(248, 1065, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(249, 1065, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(250, 1065, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(251, 1065, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(252, 1065, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(253, 1065, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(254, 1065, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(255, 1065, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(256, 1066, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(257, 1066, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(258, 1066, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(259, 1066, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(260, 1066, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(261, 1066, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(262, 1066, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(263, 1066, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(264, 1066, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(265, 1066, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(266, 1066, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(267, 1066, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(268, 1066, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(269, 1066, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(270, 1066, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(271, 1067, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(272, 1067, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(273, 1067, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(274, 1067, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(275, 1067, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(276, 1067, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(277, 1067, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(278, 1067, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(279, 1067, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(280, 1067, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(281, 1067, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(282, 1067, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(283, 1067, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(284, 1067, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(285, 1067, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(286, 1068, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(287, 1068, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(288, 1068, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(289, 1068, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(290, 1068, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(291, 1068, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(292, 1068, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(293, 1068, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(294, 1068, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(295, 1068, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(296, 1068, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(297, 1068, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(298, 1068, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(299, 1068, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(300, 1068, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(301, 1069, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(302, 1069, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(303, 1069, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(304, 1069, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(305, 1069, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(306, 1069, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(307, 1069, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(308, 1069, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(309, 1069, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(310, 1069, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(311, 1069, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(312, 1069, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(313, 1069, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(314, 1069, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(315, 1069, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(316, 1070, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(317, 1070, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(318, 1070, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(319, 1070, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(320, 1070, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(321, 1070, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(322, 1070, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(323, 1070, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(324, 1070, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(325, 1070, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(326, 1070, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(327, 1070, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(328, 1070, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(329, 1070, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(330, 1070, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(331, 1052, 125, 2049, 42, '-', 'CHCCCS006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(332, 1052, 126, 2049, 42, '-', 'HLTWHS004', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(333, 1052, 127, 2049, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(334, 1052, 128, 2049, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(335, 1052, 129, 2049, 42, '-', 'HLTAAP001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(336, 1052, 130, 2049, 42, '-', 'CHCPAL001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(337, 1052, 131, 2049, 42, '-', 'CHCLEG003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(338, 1052, 132, 2049, 42, '-', 'CHCAGE005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(339, 1073, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(340, 1073, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(341, 1073, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(342, 1073, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(343, 1073, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(344, 1073, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(345, 1073, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(346, 1073, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(347, 1073, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(348, 1073, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(349, 1073, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(350, 1073, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(351, 1073, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(352, 1073, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(353, 1073, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(354, 1072, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(355, 1072, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(356, 1072, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(357, 1072, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(358, 1072, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(359, 1072, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(360, 1072, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(361, 1072, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(362, 1072, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(363, 1072, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(364, 1072, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(365, 1072, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(366, 1072, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(367, 1072, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(368, 1072, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(369, 1071, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(370, 1071, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(371, 1071, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(372, 1071, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(373, 1071, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(374, 1071, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(375, 1071, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(376, 1071, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(377, 1071, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(378, 1071, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(379, 1071, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(380, 1071, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(381, 1071, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(382, 1071, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(383, 1071, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(384, 1074, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(385, 1074, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(386, 1074, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(387, 1074, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(388, 1074, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(389, 1074, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(390, 1074, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(391, 1074, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(392, 1074, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(393, 1074, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(394, 1074, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(395, 1074, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(396, 1074, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(397, 1074, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(398, 1074, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(399, 1075, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(400, 1075, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(401, 1075, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(402, 1075, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(403, 1075, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(404, 1075, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(405, 1075, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(406, 1075, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(407, 1075, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(408, 1075, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(409, 1075, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(410, 1075, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(411, 1075, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(412, 1075, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(413, 1075, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(414, 1076, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(415, 1076, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(416, 1076, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(417, 1076, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(418, 1076, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(419, 1076, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(420, 1076, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(421, 1076, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(422, 1076, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(423, 1076, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(424, 1076, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(425, 1076, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(426, 1076, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(427, 1076, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(428, 1076, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(429, 1077, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(430, 1077, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(431, 1077, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(432, 1077, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(433, 1077, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(434, 1077, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(435, 1077, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(436, 1077, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(437, 1077, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(438, 1077, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(439, 1077, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(440, 1077, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(441, 1077, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(442, 1077, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(443, 1077, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(444, 1078, 91, 2047, 42, '-', 'CHCCCS031', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(445, 1078, 92, 2047, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(446, 1078, 93, 2047, 42, '-', 'CHCDIS012', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(447, 1078, 94, 2047, 42, '-', 'CHCDIS011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(448, 1078, 95, 2047, 42, '-', 'CHCPAL003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(449, 1078, 96, 2047, 42, '-', 'CHCAGE013', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(450, 1078, 97, 2047, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(451, 1078, 98, 2047, 42, '-', 'HLTWHS002', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(452, 1078, 99, 2047, 42, '-', 'HLTINF006', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(453, 1078, 100, 2047, 42, '-', 'CHCLEG001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(454, 1078, 101, 2047, 42, '-', 'CHCDIV001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(455, 1078, 102, 2047, 42, '-', 'CHCCOM005', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(456, 1078, 103, 2047, 42, '-', 'CHCCCS041', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(457, 1078, 104, 2047, 42, '-', 'CHCCCS040', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(458, 1078, 105, 2047, 42, '-', 'CHCCCS038', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(459, 1079, 133, 2050, 42, '-', 'HLTWHS003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(460, 1079, 134, 2050, 42, '-', 'CHCMHS001', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(461, 1079, 135, 2050, 42, '-', 'CHCLEG003', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(462, 1079, 136, 2050, 42, '-', 'CHCDIS020', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(463, 1079, 137, 2050, 42, '-', 'CHCDIS017', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(464, 1079, 138, 2050, 42, '-', 'CHCCCS044', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(465, 1079, 139, 2050, 42, '-', 'CHCAGE011', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(466, 1079, 140, 2050, 42, '-', 'CHCAGE009', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(467, 1079, 141, 2050, 42, '-', 'CHCDIS019', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL),
(468, 1079, 142, 2050, 42, '-', 'CHCDIS018', 0, '2024-01-01 00:00:00', '2024-12-31 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `created_at` int UNSIGNED DEFAULT NULL,
  `updated_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `faq_translations`
--

CREATE TABLE `faq_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `faq_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinars`
--

CREATE TABLE `feature_webinars` (
  `id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `page` enum('categories','home','home_categories') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('publish','pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinar_translations`
--

CREATE TABLE `feature_webinar_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `feature_webinar_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `chapter_id` int UNSIGNED DEFAULT NULL,
  `accessibility` enum('free','paid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `downloadable` tinyint(1) DEFAULT '0',
  `storage` enum('upload','youtube','vimeo','external_link','google_drive','dropbox','iframe','s3','upload_archive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `interactive_type` enum('adobe_captivate','i_spring','custom') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interactive_file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interactive_file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_previous_parts` tinyint(1) NOT NULL DEFAULT '0',
  `access_after_day` int UNSIGNED DEFAULT NULL,
  `online_viewer` tinyint(1) NOT NULL DEFAULT '0',
  `order` int UNSIGNED DEFAULT NULL,
  `admin_permission` tinyint(1) DEFAULT NULL,
  `teacher_permission` tinyint(1) DEFAULT NULL,
  `student_permission` tinyint(1) DEFAULT NULL,
  `classroom_learning` tinyint(1) NOT NULL DEFAULT '0',
  `student_handbook` tinyint(1) NOT NULL DEFAULT '0',
  `assesment` tinyint(1) NOT NULL DEFAULT '0',
  `upload_file_type` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `accessibility`, `downloadable`, `storage`, `file`, `volume`, `file_type`, `interactive_type`, `interactive_file_name`, `permission`, `interactive_file_path`, `check_previous_parts`, `access_after_day`, `online_viewer`, `order`, `admin_permission`, `teacher_permission`, `student_permission`, `classroom_learning`, `student_handbook`, `assesment`, `upload_file_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(328, 1030, 2047, 91, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS031-LG-F-v1.3 (2).pdf', '7.83 MB', 'pdf', NULL, NULL, '4,1,', NULL, 0, NULL, 1, NULL, 0, 1, 1, 0, 0, 0, 1, 'active', 1717493303, NULL, NULL),
(329, 1030, 2047, 91, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS031-LG-F-v1.3 (2).pdf', '7.83 MB', 'pdf', NULL, NULL, '4,1,', NULL, 0, NULL, 1, NULL, 0, 1, 1, 0, 0, 0, 1, 'active', 1717493321, NULL, NULL),
(333, 1030, 2047, 92, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/CHCDIS020-LABT-F-v1.2.pdf', '677.39 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717493660, NULL, NULL),
(335, 1030, 2047, 93, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/CHCDIS012-LABT-F-v1.2.pdf', '658.69 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717494389, NULL, NULL),
(339, 1030, 2047, 94, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/CHCDIS011-LAB-F-v1.3.pdf', '676.06 KB', 'pdf', NULL, NULL, '4,1,', NULL, 0, NULL, 1, NULL, 0, 1, 1, 0, 0, 0, 1, 'active', 1717495009, NULL, NULL),
(342, 1030, 2047, 95, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/CHCPAL003-LABT-F-v1.1.pdf', '782.82 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717495812, NULL, NULL),
(345, 1030, 2047, 96, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/CHCAGE013-LABT-F-v1.1.pdf', '697.15 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717496489, NULL, NULL),
(348, 1030, 2047, 97, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/CHCAGE011-LABT-F-v1.2.pdf', '727.34 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717505959, NULL, NULL),
(349, 1030, 2047, 98, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HLTWHS002-LABT-F-v1.2.pdf', '699.87 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717506148, NULL, NULL),
(351, 1030, 2047, 99, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HLTINF006-LABT-F-v1.1.pdf', '619.43 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717506359, NULL, NULL),
(354, 1030, 2047, 100, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HMI - CHCLEG001-LABT-F-v1.2.pdf', '609.29 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717506713, NULL, NULL),
(357, 1030, 2047, 101, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HMI - CHCDIV001-LABT-F-v2.3.pdf', '577.28 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717507104, NULL, NULL),
(360, 1030, 2047, 102, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HMI - CHCCOM005-LABT-F-v1.1.pdf', '687.55 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717507523, NULL, NULL),
(363, 1030, 2047, 103, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS041-LABT-F-v1.2.pdf', '726.85 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717508012, NULL, NULL),
(368, 1030, 2047, 91, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS031-LABT-F-v1.3  (1).pdf', '677.84 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717509703, NULL, NULL),
(369, 1030, 2047, 105, 'free', 1, 'upload', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS038-LABT-F-v1.2.pdf', '716.56 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1717510133, NULL, NULL),
(377, 1045, 2048, 109, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/HLTWHS001-LABT-F-v2.1.pdf', '599.46 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719465081, NULL, NULL),
(378, 1045, 2048, 110, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/HLTAID012-LABT-F-v1.2.pdf', '598.88 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719465556, NULL, NULL),
(379, 1045, 2048, 112, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE056-LABT-F-v1.2.pdf', '626.54 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719466854, NULL, NULL),
(380, 1045, 2048, 113, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE055-LABT-F-v1.2.pdf', '578.03 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719467159, NULL, NULL),
(381, 1045, 2048, 114, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE054-LABT-F-v2.1.pdf', '729.27 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719467463, NULL, NULL),
(382, 1045, 2048, 115, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE038-LABT-F-v1.1.pdf', '588.06 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719467756, NULL, NULL),
(383, 1045, 2048, 116, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE037-LABT-F-v1.1.pdf', '623.13 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719468019, NULL, NULL),
(384, 1045, 2048, 117, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE036-LABT-F-v1.1.pdf', '614.33 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719468191, NULL, NULL),
(385, 1045, 2048, 118, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE035-LABT-F-v1.1.pdf', '698.84 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719468469, NULL, NULL),
(386, 1045, 2048, 119, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE034-LABT-F-v1.3.pdf', '574.33 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719469338, NULL, NULL),
(387, 1045, 2048, 120, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE033-LABT-F-v1.1.pdf', '626.15 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719469547, NULL, NULL),
(388, 1045, 2048, 121, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE032-LABT-F-v1.1.pdf', '651.87 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719469808, NULL, NULL),
(389, 1045, 2048, 122, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE031-LABT-F-v1.1.pdf', '691.59 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719470049, NULL, NULL),
(390, 1045, 2048, 123, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCECE030-LABT-F-v1.2.pdf', '523.77 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719470303, NULL, NULL),
(391, 1045, 2048, 124, 'free', 1, 'upload', '/store/1/CERT III CHILDCARE/CHCDIV001-LABT-F-v2.3.pdf', '604.07 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719470635, NULL, NULL),
(392, 1045, 2049, 125, 'free', 0, 'upload', '/store/1/CERT IV AGE/CHCCCS006-LABT-F-v1.1.pdf', '707.34 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719473286, 1720412117, NULL),
(393, 1045, 2049, 126, 'free', 0, 'upload', '/store/1/CERT IV AGE/HLTWHS004-LABT-F-v1.0.pdf', '574.02 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719473438, 1720412398, NULL),
(394, 1045, 2049, 127, 'free', 0, 'upload', '/store/1/CERT IV AGE/HLTWHS002-LABT-F-v1.2.pdf', '699.87 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719473626, 1720412545, NULL),
(395, 1045, 2049, 128, 'free', 0, 'upload', '/store/1/CERT IV AGE/HMI - CHCDIV001-LABT-F-v2.3.pdf', '577.28 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719473793, 1720412695, NULL),
(396, 1045, 2049, 129, 'free', 0, 'upload', '/store/1/CERT IV AGE/HLTAAP001-LABT-F-v1.1.pdf', '597.08 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719730894, 1720412897, NULL),
(397, 1045, 2049, 130, 'free', 0, 'upload', '/store/1/CERT IV AGE/CHCPAL001-LABT-F-v1.1.pdf', '782.92 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719731466, 1720412977, NULL),
(398, 1045, 2049, 131, 'free', 0, 'upload', '/store/1/CERT IV AGE/CHCLEG003-LABT-F-v1.2.pdf', '578.33 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719733017, 1720413045, NULL),
(399, 1045, 2049, 132, 'free', 0, 'upload', '/store/1/CERT IV AGE/CHCAGE005-LABT-F-v1.2.pdf', '727.47 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719733546, 1720413128, NULL),
(400, 1045, 2050, 133, 'free', 1, 'upload', '/store/1/CERT IV DIS./HLTWHS003-LABT-F-v1.1.pdf', '574.33 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719808531, NULL, NULL),
(401, 1045, 2050, 134, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCMHS001-LABT-F-v1.1.pdf', '571.54 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719812686, NULL, NULL),
(402, 1045, 2050, 135, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCLEG003-LABT-F-v1.2.pdf', '578.33 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719813166, NULL, NULL),
(403, 1045, 2050, 136, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCDIS020-LABT-F-v1.2.pdf', '623.49 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1719992866, NULL, NULL),
(404, 1045, 2050, 137, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCDIS017-LABT-F-v1.1.pdf', '651.42 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1720080607, NULL, NULL),
(405, 1045, 2050, 138, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCCCS044-LABT-F-v1.3.pdf', '666.64 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1720080871, NULL, NULL),
(406, 1045, 2050, 139, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCAGE011-LABT-F-v1.2.pdf', '693.79 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1720081179, NULL, NULL),
(407, 1045, 2050, 140, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCAGE009-LABT-F-v1.1.pdf', '619.75 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1720081449, NULL, NULL),
(408, 1045, 2050, 141, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCDIS019 Simulation Guide.docx', '1,007.50 KB', 'document', NULL, NULL, '4,1,', NULL, 0, NULL, 1, NULL, 0, 1, 1, 0, 0, 0, 2, 'active', 1720081661, NULL, NULL),
(409, 1045, 2050, 142, 'free', 1, 'upload', '/store/1/CERT IV DIS./CHCDIS018-LABT-F-v1.2.pdf', '649.58 KB', 'pdf', NULL, NULL, '4,', NULL, 0, NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 1, 'active', 1720081776, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_translations`
--

CREATE TABLE `file_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `file_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_translations`
--

INSERT INTO `file_translations` (`id`, `file_id`, `locale`, `title`, `description`) VALUES
(291, 333, 'en', 'CHCDIS020-LABT-F', ''),
(293, 335, 'en', 'CHCDIS012-LABT-F', ''),
(297, 339, 'en', 'CHCDIS011-LAB-F', ''),
(300, 342, 'en', 'CHCPAL003-LABT-F', ''),
(303, 345, 'en', 'CHCAGE013-LABT-F', ''),
(306, 348, 'en', 'CHCAGE011-LABT-F', ''),
(307, 349, 'en', 'HLTWHS002-LABT-F', ''),
(309, 351, 'en', 'HLTINF006-LABT-F', ''),
(312, 354, 'en', 'CHCLEG001-LABT-F', ''),
(315, 357, 'en', 'CHCDIV001-LABT-F', ''),
(318, 360, 'en', 'CHCCOM005-LABT-F', ''),
(321, 363, 'en', 'CHCCCS041-LABT-F', ''),
(326, 368, 'en', 'CHCCCS031-LABT-F', ''),
(327, 369, 'en', 'CHCCCS038-LABT', ''),
(335, 377, 'en', 'HLTWHS001-LABT', ''),
(336, 378, 'en', 'HLTAID012-LABT', ''),
(337, 379, 'en', 'CHCECE056-LABT', ''),
(338, 380, 'en', 'CHCECE055-LABT', ''),
(339, 381, 'en', 'CHCECE054-LABT', ''),
(340, 382, 'en', 'CHCECE038-LABT', ''),
(341, 383, 'en', 'CHCECE037-LABT', ''),
(342, 384, 'en', 'CHCECE036-LABT', ''),
(343, 385, 'en', 'CHCECE035-LABT', ''),
(344, 386, 'en', 'CHCECE034-LABT', ''),
(345, 387, 'en', 'CHCECE033-LABT', ''),
(346, 388, 'en', 'CHCECE032-LABT', ''),
(347, 389, 'en', 'CHCECE031-LABT', ''),
(348, 390, 'en', 'CHCECE030-LABT', ''),
(349, 391, 'en', 'CHCDIV001-LABT', ''),
(350, 392, 'en', 'CHCCCS006-LABT', ''),
(351, 393, 'en', 'HLTWHS004-LABT', ''),
(352, 394, 'en', 'HLTWHS002-LABT', ''),
(353, 395, 'en', 'CHCDIV001-LABT', ''),
(354, 396, 'en', 'HLTAAP001-LABT', ''),
(355, 397, 'en', 'CHCPAL001-LABT', ''),
(356, 398, 'en', 'CHCLEG003-LABT', ''),
(357, 399, 'en', 'CHCAGE005-LABT', ''),
(358, 400, 'en', 'HLTWHS003-LABT', ''),
(359, 401, 'en', 'CHCMHS001-LABT', ''),
(360, 402, 'en', 'CHCLEG003-LABT', ''),
(361, 403, 'en', 'CHCDIS020-LABT', ''),
(362, 404, 'en', 'CHCDIS017-LABT', ''),
(363, 405, 'en', 'CHCCCS044-LABT', ''),
(364, 406, 'en', 'CHCAGE011-LABT', ''),
(365, 407, 'en', 'CHCAGE009-LABT', ''),
(366, 408, 'en', 'CHCDIS019 Simulation Guide', ''),
(367, 409, 'en', 'CHCDIS018-LABT', '');

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `category_id`) VALUES
(1805, 520),
(1819, 520),
(1834, 520),
(1809, 523),
(1823, 523),
(1838, 523),
(1812, 525),
(1826, 525),
(1841, 525),
(1806, 601),
(1820, 601),
(1835, 601),
(1807, 602),
(1821, 602),
(1836, 602),
(1808, 603),
(1822, 603),
(1837, 603),
(1810, 604),
(1824, 604),
(1839, 604),
(1811, 605),
(1825, 605),
(1840, 605),
(1816, 606),
(1831, 606),
(1845, 606),
(1817, 607),
(1832, 607),
(1846, 607),
(1818, 608),
(1833, 608),
(1847, 608),
(1813, 609),
(1827, 609),
(1842, 609),
(1814, 610),
(1829, 610),
(1843, 610),
(1815, 611),
(1830, 611),
(1844, 611);

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

CREATE TABLE `filter_options` (
  `id` int UNSIGNED NOT NULL,
  `filter_id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `filter_options`
--

INSERT INTO `filter_options` (`id`, `filter_id`, `order`) VALUES
(9114, 1805, 1),
(9115, 1805, 2),
(9116, 1805, 3),
(9117, 1806, 1),
(9118, 1806, 2),
(9119, 1806, 3),
(9120, 1807, 1),
(9121, 1807, 2),
(9122, 1807, 3),
(9123, 1808, 1),
(9124, 1808, 2),
(9125, 1808, 3),
(9126, 1809, 1),
(9127, 1809, 2),
(9128, 1809, 3),
(9129, 1810, 1),
(9130, 1810, 2),
(9131, 1810, 3),
(9132, 1811, 1),
(9133, 1811, 2),
(9134, 1811, 3),
(9135, 1812, 1),
(9136, 1812, 2),
(9137, 1812, 3),
(9138, 1813, 1),
(9139, 1813, 2),
(9140, 1813, 3),
(9141, 1814, 1),
(9142, 1814, 2),
(9143, 1814, 3),
(9144, 1815, 1),
(9145, 1815, 2),
(9146, 1815, 3),
(9147, 1816, 1),
(9148, 1816, 2),
(9149, 1816, 3),
(9150, 1817, 1),
(9151, 1817, 2),
(9152, 1817, 3),
(9153, 1818, 1),
(9154, 1818, 2),
(9155, 1818, 3),
(9156, 1819, 1),
(9157, 1819, 3),
(9158, 1819, 2),
(9159, 1819, 4),
(9160, 1819, 5),
(9161, 1820, 1),
(9162, 1820, 3),
(9163, 1820, 2),
(9164, 1820, 4),
(9165, 1820, 5),
(9166, 1821, 1),
(9167, 1821, 3),
(9168, 1821, 2),
(9169, 1821, 4),
(9170, 1821, 5),
(9171, 1822, 1),
(9172, 1822, 3),
(9173, 1822, 2),
(9174, 1822, 4),
(9175, 1822, 5),
(9176, 1823, 1),
(9177, 1823, 3),
(9178, 1823, 2),
(9179, 1823, 4),
(9180, 1823, 5),
(9181, 1824, 1),
(9182, 1824, 3),
(9183, 1824, 2),
(9184, 1824, 4),
(9185, 1824, 5),
(9186, 1825, 1),
(9187, 1825, 3),
(9188, 1825, 2),
(9189, 1825, 4),
(9190, 1825, 5),
(9191, 1826, 1),
(9192, 1826, 3),
(9193, 1826, 2),
(9194, 1826, 4),
(9195, 1826, 5),
(9196, 1827, 1),
(9197, 1827, 3),
(9198, 1827, 2),
(9199, 1827, 4),
(9200, 1827, 5),
(9206, 1829, 1),
(9207, 1829, 3),
(9208, 1829, 2),
(9209, 1829, 4),
(9210, 1829, 5),
(9211, 1830, 1),
(9212, 1830, 3),
(9213, 1830, 2),
(9214, 1830, 4),
(9215, 1830, 5),
(9216, 1831, 1),
(9217, 1831, 3),
(9218, 1831, 2),
(9219, 1831, 4),
(9220, 1831, 5),
(9221, 1832, 1),
(9222, 1832, 3),
(9223, 1832, 2),
(9224, 1832, 4),
(9225, 1832, 5),
(9226, 1833, 1),
(9227, 1833, 3),
(9228, 1833, 2),
(9229, 1833, 4),
(9230, 1833, 5),
(9231, 1834, 1),
(9232, 1834, 2),
(9233, 1834, 3),
(9234, 1834, 4),
(9235, 1834, 5),
(9236, 1835, 1),
(9237, 1835, 2),
(9238, 1835, 3),
(9239, 1835, 4),
(9240, 1836, 1),
(9241, 1836, 2),
(9242, 1836, 3),
(9243, 1836, 4),
(9244, 1837, 1),
(9245, 1837, 2),
(9246, 1837, 3),
(9247, 1837, 4),
(9248, 1837, 5),
(9249, 1838, 1),
(9250, 1838, 2),
(9251, 1838, 3),
(9252, 1838, 4),
(9253, 1839, 3),
(9254, 1839, 1),
(9255, 1839, 2),
(9256, 1839, 4),
(9257, 1840, 1),
(9258, 1840, 2),
(9259, 1840, 3),
(9260, 1840, 4),
(9261, 1840, 5),
(9262, 1841, 1),
(9263, 1841, 2),
(9264, 1841, 3),
(9265, 1841, 4),
(9266, 1842, 1),
(9267, 1842, 2),
(9268, 1842, 3),
(9269, 1842, 4),
(9270, 1843, 1),
(9271, 1843, 2),
(9272, 1843, 3),
(9273, 1843, 4),
(9274, 1843, 5),
(9275, 1844, 1),
(9276, 1844, 2),
(9277, 1844, 3),
(9278, 1844, 4),
(9279, 1845, 1),
(9280, 1845, 2),
(9281, 1845, 3),
(9282, 1845, 4),
(9283, 1845, 5),
(9284, 1846, 1),
(9285, 1846, 2),
(9286, 1846, 3),
(9287, 1846, 4),
(9288, 1847, 1),
(9289, 1847, 2),
(9290, 1847, 3),
(9291, 1847, 4),
(9292, 1847, 5);

-- --------------------------------------------------------

--
-- Table structure for table `filter_option_translations`
--

CREATE TABLE `filter_option_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `filter_option_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_option_translations`
--

INSERT INTO `filter_option_translations` (`id`, `filter_option_id`, `locale`, `title`) VALUES
(1, 9114, 'en', 'Beginner'),
(2, 9115, 'en', 'Intermediate'),
(3, 9116, 'en', 'Expert'),
(4, 9117, 'en', 'Beginner'),
(5, 9118, 'en', 'Intermediate'),
(6, 9119, 'en', 'Expert'),
(7, 9120, 'en', 'Beginner'),
(8, 9121, 'en', 'Intermediate'),
(9, 9122, 'en', 'Expert'),
(10, 9123, 'en', 'Beginner'),
(11, 9124, 'en', 'Intermediate'),
(12, 9125, 'en', 'Expert'),
(13, 9126, 'en', 'Beginner'),
(14, 9127, 'en', 'Intermediate'),
(15, 9128, 'en', 'Expert'),
(16, 9129, 'en', 'Beginner'),
(17, 9130, 'en', 'Intermediate'),
(18, 9131, 'en', 'Intermediate'),
(19, 9132, 'en', 'Beginner'),
(20, 9133, 'en', 'Intermediate'),
(21, 9134, 'en', 'Expert'),
(22, 9135, 'en', 'Beginner'),
(23, 9136, 'en', 'Intermediate'),
(24, 9137, 'en', 'Expert'),
(25, 9138, 'en', 'Beginner'),
(26, 9139, 'en', 'Intermediate'),
(27, 9140, 'en', 'Expert'),
(28, 9141, 'en', 'Beginner'),
(29, 9142, 'en', 'Intermediate'),
(30, 9143, 'en', 'Expert'),
(31, 9144, 'en', 'Beginner'),
(32, 9145, 'en', 'Intermediate'),
(33, 9146, 'en', 'Expert'),
(34, 9147, 'en', 'Beginner'),
(35, 9148, 'en', 'Intermediate'),
(36, 9149, 'en', 'Expert'),
(37, 9150, 'en', 'Beginner'),
(38, 9151, 'en', 'Intermediate'),
(39, 9152, 'en', 'Expert'),
(40, 9153, 'en', 'Beginner'),
(41, 9154, 'en', 'Intermediate'),
(42, 9155, 'en', 'Expert'),
(43, 9156, 'en', 'English'),
(44, 9157, 'en', 'Português'),
(45, 9158, 'en', 'Español'),
(46, 9159, 'en', 'हिन्'),
(47, 9160, 'en', 'العربية'),
(48, 9161, 'en', 'English'),
(49, 9162, 'en', 'Português'),
(50, 9163, 'en', 'Español'),
(51, 9164, 'en', 'हिन्'),
(52, 9165, 'en', 'العربية'),
(53, 9166, 'en', 'English'),
(54, 9167, 'en', 'Português'),
(55, 9168, 'en', 'Español'),
(56, 9169, 'en', 'हिन्'),
(57, 9170, 'en', 'العربية'),
(58, 9171, 'en', 'English'),
(59, 9172, 'en', 'Português'),
(60, 9173, 'en', 'Español'),
(61, 9174, 'en', 'हिन्'),
(62, 9175, 'en', 'العربية'),
(63, 9176, 'en', 'English'),
(64, 9177, 'en', 'Português'),
(65, 9178, 'en', 'Español'),
(66, 9179, 'en', 'हिन्'),
(67, 9180, 'en', 'العربية'),
(68, 9181, 'en', 'English'),
(69, 9182, 'en', 'Português'),
(70, 9183, 'en', 'Español'),
(71, 9184, 'en', 'हिन्'),
(72, 9185, 'en', 'العربية'),
(73, 9186, 'en', 'English'),
(74, 9187, 'en', 'Português'),
(75, 9188, 'en', 'Español'),
(76, 9189, 'en', 'हिन्'),
(77, 9190, 'en', 'العربية'),
(78, 9191, 'en', 'English'),
(79, 9192, 'en', 'Português'),
(80, 9193, 'en', 'Español'),
(81, 9194, 'en', 'हिन्'),
(82, 9195, 'en', 'العربية'),
(83, 9196, 'en', 'English'),
(84, 9197, 'en', 'Português'),
(85, 9198, 'en', 'Español'),
(86, 9199, 'en', 'हिन्'),
(87, 9200, 'en', 'العربية'),
(88, 9206, 'en', 'English'),
(89, 9207, 'en', 'Português'),
(90, 9208, 'en', 'Español'),
(91, 9209, 'en', 'हिन्'),
(92, 9210, 'en', 'العربية'),
(93, 9211, 'en', 'English'),
(94, 9212, 'en', 'Português'),
(95, 9213, 'en', 'Español'),
(96, 9214, 'en', 'हिन्'),
(97, 9215, 'en', 'العربية'),
(98, 9216, 'en', 'English'),
(99, 9217, 'en', 'Português'),
(100, 9218, 'en', 'Español'),
(101, 9219, 'en', 'हिन्'),
(102, 9220, 'en', 'العربية'),
(103, 9221, 'en', 'English'),
(104, 9222, 'en', 'Português'),
(105, 9223, 'en', 'Español'),
(106, 9224, 'en', 'हिन्'),
(107, 9225, 'en', 'العربية'),
(108, 9226, 'en', 'English'),
(109, 9227, 'en', 'Português'),
(110, 9228, 'en', 'Español'),
(111, 9229, 'en', 'हिन्'),
(112, 9230, 'en', 'العربية'),
(113, 9231, 'en', 'Photoshop'),
(114, 9232, 'en', 'Adobe Illustrator'),
(115, 9233, 'en', 'Blender'),
(116, 9234, 'en', '3D Modeling'),
(117, 9235, 'en', 'After Effects'),
(118, 9236, 'en', 'Math'),
(119, 9237, 'en', 'Algebra'),
(120, 9238, 'en', 'Calculus'),
(121, 9239, 'en', 'Statistics'),
(122, 9240, 'en', 'Physics'),
(123, 9241, 'en', 'Chemistry'),
(124, 9242, 'en', 'Biology'),
(125, 9243, 'en', 'Genetics'),
(126, 9244, 'en', 'English Language'),
(127, 9245, 'en', 'English Grammar'),
(128, 9246, 'en', 'Spanish Language'),
(129, 9247, 'en', 'Arabic Language'),
(130, 9248, 'en', 'IELTS'),
(131, 9249, 'en', 'Yoga'),
(132, 9250, 'en', 'Fitness'),
(133, 9251, 'en', 'Health'),
(134, 9252, 'en', 'Dance'),
(135, 9253, 'en', 'Chess'),
(136, 9254, 'en', 'Cooking'),
(137, 9255, 'en', 'Drawing'),
(138, 9256, 'en', 'Reiki'),
(139, 9257, 'en', 'Makeup Artistry'),
(140, 9258, 'en', 'Hair Styling'),
(141, 9259, 'en', 'Skincare'),
(142, 9260, 'en', 'Fashion'),
(143, 9261, 'en', 'Nail Art'),
(144, 9262, 'en', 'Digital Marketing'),
(145, 9263, 'en', 'SEO'),
(146, 9264, 'en', 'Marketing Strategy'),
(147, 9265, 'en', 'Social Media Marketing'),
(148, 9266, 'en', 'Leadership'),
(149, 9267, 'en', 'Management Skills'),
(150, 9268, 'en', 'ISO 9001'),
(151, 9269, 'en', 'Manager Training'),
(152, 9270, 'en', 'Communication Skills'),
(153, 9271, 'en', 'Presentation Skills'),
(154, 9272, 'en', 'Public Speaking'),
(155, 9273, 'en', 'Business Communication'),
(156, 9274, 'en', 'Writing'),
(157, 9275, 'en', 'Business Strategy'),
(158, 9276, 'en', 'Strategic Planning'),
(159, 9277, 'en', 'Marketing Strategy'),
(160, 9278, 'en', 'Innovation'),
(161, 9279, 'en', 'HTML'),
(162, 9280, 'en', 'CSS'),
(163, 9281, 'en', 'PHP'),
(164, 9282, 'en', 'JavaScript'),
(165, 9283, 'en', 'Laravel'),
(166, 9284, 'en', 'Android Development'),
(167, 9285, 'en', 'iOS Development'),
(168, 9286, 'en', 'Google Flutter'),
(169, 9287, 'en', 'React NativeKotlin'),
(170, 9288, 'en', 'Unity'),
(171, 9289, 'en', 'Unreal Engine'),
(172, 9290, 'en', 'Unreal Engine Blueprints'),
(173, 9291, 'en', '3D Game Development'),
(174, 9292, 'en', 'Game Development Fundamentals');

-- --------------------------------------------------------

--
-- Table structure for table `filter_translations`
--

CREATE TABLE `filter_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `filter_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_translations`
--

INSERT INTO `filter_translations` (`id`, `filter_id`, `locale`, `title`) VALUES
(1, 1805, 'en', 'Level'),
(2, 1806, 'en', 'Level'),
(3, 1807, 'en', 'Level'),
(4, 1808, 'en', 'Level'),
(5, 1809, 'en', 'Level'),
(6, 1810, 'en', 'Level'),
(7, 1811, 'en', 'Level'),
(8, 1812, 'en', 'Level'),
(9, 1813, 'en', 'Level'),
(10, 1814, 'en', 'Level'),
(11, 1815, 'en', 'Level'),
(12, 1816, 'en', 'Level'),
(13, 1817, 'en', 'Level'),
(14, 1818, 'en', 'Level'),
(15, 1819, 'en', 'Language'),
(16, 1820, 'en', 'Language'),
(17, 1821, 'en', 'Language'),
(18, 1822, 'en', 'Language'),
(19, 1823, 'en', 'Language'),
(20, 1824, 'en', 'Language'),
(21, 1825, 'en', 'Language'),
(22, 1826, 'en', 'Language'),
(23, 1827, 'en', 'Language'),
(24, 1829, 'en', 'Language'),
(25, 1830, 'en', 'Language'),
(26, 1831, 'en', 'Language'),
(27, 1832, 'en', 'Language'),
(28, 1833, 'en', 'Language'),
(29, 1834, 'en', 'Topic'),
(30, 1835, 'en', 'Topic'),
(31, 1836, 'en', 'Topic'),
(32, 1837, 'en', 'Topic'),
(33, 1838, 'en', 'Topic'),
(34, 1839, 'en', 'Topic'),
(35, 1840, 'en', 'Topic'),
(36, 1841, 'en', 'Topic'),
(37, 1842, 'en', 'Topic'),
(38, 1843, 'en', 'Topic'),
(39, 1844, 'en', 'Topic'),
(40, 1845, 'en', 'Topic'),
(41, 1846, 'en', 'Topic'),
(42, 1847, 'en', 'Topic');

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int UNSIGNED NOT NULL,
  `follower` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` enum('requested','accepted','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `follower`, `user_id`, `status`) VALUES
(2, 1059, 1045, 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `group_id` int UNSIGNED DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('disabled','active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close` tinyint(1) NOT NULL DEFAULT '0',
  `order` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `slug`, `role_id`, `group_id`, `parent_id`, `icon`, `status`, `close`, `order`) VALUES
(1, 'Lifestyle', NULL, NULL, NULL, '/store/1/default_images/forums/icons/makeup.png', 'active', 0, NULL),
(2, 'Beauty-Makeup', NULL, NULL, 1, '/store/1/default_images/forums/icons/makeup.png', 'active', 0, 1),
(3, 'Food-Beverage', NULL, NULL, 1, '/store/1/default_images/forums/icons/donut.png', 'active', 0, 2),
(4, 'Travel', NULL, NULL, 1, '/store/1/default_images/forums/icons/airplane.png', 'active', 0, 3),
(5, 'Music', NULL, NULL, NULL, '/store/1/default_images/forums/icons/love-song.png', 'active', 0, NULL),
(6, 'Marketing', NULL, NULL, NULL, '/store/1/default_images/forums/icons/advertising.png', 'active', 0, NULL),
(7, 'Digital-Marketing', NULL, NULL, 6, '/store/1/default_images/forums/icons/digital-marketing.png', 'active', 0, 1),
(8, 'Public-Relations', NULL, NULL, 6, '/store/1/default_images/forums/icons/security.png', 'active', 0, 2),
(9, 'Advertising', NULL, NULL, 6, '/store/1/default_images/forums/icons/ads.png', 'active', 0, 3),
(10, 'Social-Media', NULL, NULL, 6, '/store/1/default_images/forums/icons/twitter.png', 'active', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `forum_featured_topics`
--

CREATE TABLE `forum_featured_topics` (
  `id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_recommended_topics`
--

CREATE TABLE `forum_recommended_topics` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_recommended_topics`
--

INSERT INTO `forum_recommended_topics` (`id`, `title`, `icon`, `created_at`) VALUES
(1, 'Food & Health', '/store/1/default_images/forums/icons/dish.png', 1655794486),
(2, 'Math', '/store/1/default_images/forums/icons/drawing-compass.png', 1655796024),
(3, 'Marketing', '/store/1/default_images/forums/icons/target.png', 1655796482),
(4, 'Language', '/store/1/default_images/forums/icons/translate.png', 1655796824);

-- --------------------------------------------------------

--
-- Table structure for table `forum_recommended_topic_items`
--

CREATE TABLE `forum_recommended_topic_items` (
  `id` int UNSIGNED NOT NULL,
  `recommended_topic_id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `forum_id` int UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT '0',
  `close` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_attachments`
--

CREATE TABLE `forum_topic_attachments` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_bookmarks`
--

CREATE TABLE `forum_topic_bookmarks` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_likes`
--

CREATE TABLE `forum_topic_likes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED DEFAULT NULL,
  `topic_post_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_posts`
--

CREATE TABLE `forum_topic_posts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_reports`
--

CREATE TABLE `forum_topic_reports` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED DEFAULT NULL,
  `topic_post_id` int UNSIGNED DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_translations`
--

CREATE TABLE `forum_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `forum_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_translations`
--

INSERT INTO `forum_translations` (`id`, `forum_id`, `locale`, `title`, `description`) VALUES
(1, 1, 'en', 'Lifestyle', 'Lifestyle is the interests, opinions, behaviours, and behavioural orientations of an individual, group, or culture. The term was introduced by Austrian psychologist Alfred Adler in his 1929 book, The Case of Miss R., with the meaning of \"a person\'s basic character as established early in childhood\".'),
(2, 2, 'en', 'Beauty & Makeup', 'How to create your natural skincare perfect'),
(3, 3, 'en', 'Food & Beverage', 'A practical forum to take your cooking skills from dull to delicious'),
(4, 4, 'en', 'Travel', 'How You Can Afford a Life of Travel and Adventure!'),
(5, 5, 'en', 'Music', 'Discuss music with The World\'s Top instructors'),
(6, 6, 'en', 'Marketing', 'Marketing is the process of exploring.'),
(7, 7, 'en', 'Digital Marketing', 'Master Digital Marketing Strategy'),
(8, 8, 'en', 'Public Relations', 'Everything you need to know to be successful at PR'),
(9, 9, 'en', 'Advertising', 'Learn the inner workings of a massive digital industry'),
(10, 10, 'en', 'Social Media', 'MASTER online marketing on Twitter, Pinterest, Instagram');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `commission` int DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `creator_id`, `name`, `discount`, `commission`, `status`, `created_at`) VALUES
(2, 1, 'Vip Instructors', 20, 10, 'active', 1613379096),
(3, 1, 'Special Students', 10, NULL, 'active', 1614530208);

-- --------------------------------------------------------

--
-- Table structure for table `groups_registration_packages`
--

CREATE TABLE `groups_registration_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `group_id` int UNSIGNED NOT NULL,
  `instructors_count` int DEFAULT NULL,
  `students_count` int DEFAULT NULL,
  `courses_capacity` int DEFAULT NULL,
  `courses_count` int DEFAULT NULL,
  `meeting_count` int DEFAULT NULL,
  `status` enum('disabled','active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE `group_users` (
  `id` int UNSIGNED NOT NULL,
  `group_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` int UNSIGNED NOT NULL,
  `name` enum('featured_classes','latest_bundles','latest_classes','best_rates','trend_categories','full_advertising_banner','best_sellers','discount_classes','free_classes','store_products','testimonials','subscribes','find_instructors','reward_program','become_instructor','forum_section','video_or_image_section','instructors','half_advertising_banner','organizations','blog') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `name`, `order`) VALUES
(1, 'latest_classes', 2),
(2, 'featured_classes', 1),
(3, 'latest_bundles', 3),
(4, 'best_rates', 4),
(5, 'best_sellers', 6),
(6, 'free_classes', 7),
(7, 'trend_categories', 5),
(8, 'full_advertising_banner', 8),
(9, 'discount_classes', 9),
(10, 'store_products', 10),
(11, 'subscribes', 11),
(12, 'become_instructor', 12),
(13, 'forum_section', 13),
(14, 'find_instructors', 14),
(15, 'reward_program', 16),
(16, 'instructors', 17),
(17, 'video_or_image_section', 15),
(18, 'testimonials', 19),
(19, 'half_advertising_banner', 18),
(20, 'organizations', 20),
(21, 'blog', 21);

-- --------------------------------------------------------

--
-- Table structure for table `jazzcash_transactions`
--

CREATE TABLE `jazzcash_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `txn_ref_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Order data fields and values',
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Jazzcash request data fields and values',
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'Jazzcash response data fields and values',
  `status` enum('pending','error','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `amount` int UNSIGNED DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `in_person` tinyint(1) NOT NULL DEFAULT '0',
  `in_person_amount` int DEFAULT NULL,
  `group_meeting` tinyint(1) NOT NULL DEFAULT '0',
  `online_group_min_student` int DEFAULT NULL,
  `online_group_max_student` int DEFAULT NULL,
  `online_group_amount` int DEFAULT NULL,
  `in_person_group_min_student` int DEFAULT NULL,
  `in_person_group_max_student` int DEFAULT NULL,
  `in_person_group_amount` int DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_times`
--

CREATE TABLE `meeting_times` (
  `id` int UNSIGNED NOT NULL,
  `meeting_id` int UNSIGNED NOT NULL,
  `meeting_type` enum('all','in_person','online') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `day_label` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_09_145553_create_roles_table', 1),
(4, '2020_08_09_145834_create_sections_table', 1),
(5, '2020_08_09_145926_create_permissions_table', 1),
(6, '2020_08_24_163003_create_webinars_table', 1),
(7, '2020_08_24_164823_create_webinar_partner_teacher_table', 1),
(8, '2020_08_24_165658_create_tags_table', 1),
(9, '2020_08_24_165835_create_webinar_tag_table', 1),
(10, '2020_08_24_171611_create_categories_table', 1),
(11, '2020_08_29_052437_create_filters_table', 1),
(12, '2020_08_29_052900_create_filter_options_table', 1),
(13, '2020_08_29_054455_add_category_id_in_webinar_table', 1),
(14, '2020_09_01_174741_add_seo_description_and_start_end_time_in_webinar_table', 1),
(15, '2020_09_02_180508_create_webinar_filter_option_table', 1),
(16, '2020_09_02_193923_create_tickets_table', 1),
(17, '2020_09_02_210447_create_sessions_table', 1),
(18, '2020_09_02_212642_create_files_table', 1),
(19, '2020_09_03_175543_create_faqs_table', 1),
(20, '2020_09_08_175539_delete_webinar_tag_and_update_tag_table', 1),
(21, '2020_09_09_154522_create_quizzes_table', 1),
(22, '2020_09_09_174646_create_quizzes_questions_table', 1),
(23, '2020_09_09_182726_create_quizzes_questions_answers_table', 1),
(24, '2020_09_14_160028_create_prerequisites_table', 1),
(25, '2020_09_14_183235_nullable_item_id_in_quizzes_table', 1),
(26, '2020_09_14_190110_create_webinar_quizzes_table', 1),
(27, '2020_09_16_163835_create_quizzes_results_table', 1),
(28, '2020_09_24_102115_add_total_mark_in_quize_table', 1),
(29, '2020_09_24_132242_create_comment_table', 1),
(30, '2020_09_24_132639_create_favorites_table', 1),
(31, '2020_09_26_181200_create_certificate_table', 1),
(32, '2020_09_26_181444_create_certificates_templates_table', 1),
(33, '2020_09_30_170451_add_slug_in_webinars_table', 1),
(34, '2020_09_30_191202_create_purchases_table', 1),
(35, '2020_10_02_063828_create_rating_table', 1),
(36, '2020_10_02_094723_edit_table_and_add_foreign_key', 1),
(37, '2020_10_08_055408_add_reviwes_table', 1),
(38, '2020_10_08_084100_edit_status_comments_table', 1),
(39, '2020_10_08_121041_create_meetings_table', 2),
(40, '2020_10_08_121621_create_meeting_times_table', 2),
(41, '2020_10_08_121848_create_meeting_requests_table', 2),
(42, '2020_10_15_172913_add_about_and_head_line_in_users_table', 2),
(43, '2020_10_15_173645_create_follow_table', 2),
(46, '2020_10_17_100606_create_badges_table', 3),
(47, '2020_10_08_121848_create_reserve_meetings_table', 4),
(48, '2020_10_20_193013_update_users_table', 5),
(50, '2020_10_18_220323_convert_creatore_user_id_to_creator_id', 7),
(51, '2020_10_22_153502_create_cart_table', 7),
(52, '2020_10_22_154636_create_orders_table', 7),
(53, '2020_10_22_155930_create_order_items_table', 7),
(54, '2020_10_23_204203_create_sales_table', 7),
(55, '2020_10_23_211459_create_accounting_table', 7),
(56, '2020_10_23_213515_create_discounts_table', 7),
(57, '2020_10_23_213934_create_discount_users_table', 7),
(58, '2020_10_23_235444_create_ticket_users_table', 7),
(59, '2020_10_25_172331_create_groups_table', 7),
(60, '2020_10_25_172523_create_group_users_table', 7),
(62, '2020_11_02_202754_edit_email_in_users_table', 8),
(63, '2020_11_03_200314_edit_some_tables', 9),
(64, '2020_11_06_193300_create_settings_table', 10),
(67, '2020_11_09_202533_create_feature_webinars_table', 11),
(68, '2020_11_10_193459_edit_webinars_table', 12),
(69, '2020_11_11_203344_create_trend_categories_table', 13),
(72, '2020_11_11_222833_create_blog_categories_table', 14),
(75, '2020_11_11_231204_create_blog_table', 15),
(76, '2020_10_25_223247_add_sub_title_tickets_table', 16),
(77, '2020_10_28_001340_add_count_in_discount_users_table', 16),
(78, '2020_10_28_221509_create_payment_channels_table', 16),
(79, '2020_11_01_120909_change_class_name_enum_payment_channels_table', 16),
(80, '2020_11_07_233948_add_some_raw_in_order_items__table', 16),
(81, '2020_11_10_061350_add_discount_id_in_order_items_table', 16),
(82, '2020_11_10_071651_decimal_orders_order_items_sales_table', 16),
(83, '2020_11_11_193138_change_reference_id_type_in_orders_tabel', 16),
(84, '2020_11_11_222413_change_meeting_id_to_meeting_time_id_in_order_items_table', 16),
(85, '2020_11_11_225421_add_locked_at_and_reserved_at_and_change_request_time_to_day_in_reserve_meetings_table', 17),
(86, '2020_11_12_000116_add_type_in_orders_table', 17),
(87, '2020_11_12_001912_change_meeting_id_to_meeting_time_id_in_accounting_table', 17),
(88, '2020_11_12_133009_decimal_paid_amount_in_reserve_meetings_table', 17),
(91, '2020_11_12_170109_add_blog_id_to_comments_table', 18),
(98, '2020_11_14_201228_add_bio_and_ban_to_users_table', 20),
(99, '2020_11_14_224447_create_users_badges_table', 21),
(100, '2020_11_14_233319_create_payout_request_table', 22),
(101, '2020_11_15_010622_change_byer_id_and_add_seller_id_in_sales_table', 22),
(102, '2020_11_16_195009_create_supports_table', 22),
(103, '2020_11_16_201814_create_support_departments_table', 22),
(107, '2020_11_16_202254_create_supports_table', 23),
(109, '2020_11_17_192744_create_support_conversations_table', 24),
(110, '2020_11_17_072348_create_offline_payments_table', 25),
(111, '2020_11_19_191943_add_replied_status_to_comments_table', 25),
(114, '2020_11_20_215748_create_subscribes_table', 26),
(115, '2020_11_21_185519_create_notification_templates_table', 27),
(116, '2020_11_22_210832_create_promotions_table', 28),
(118, '2020_11_23_194153_add_status_column_to_discounts_table', 29),
(119, '2020_11_23_213532_create_users_occupations_table', 30),
(120, '2020_11_30_220855_change_amount_in_payouts_table', 31),
(121, '2020_11_30_231334_add_pay_date_in_offline_payments_table', 31),
(122, '2020_11_30_233018_add_charge_enum_in_type_in_orders_table', 31),
(123, '2020_12_01_193948_create_testimonials_table', 32),
(124, '2020_12_02_202043_edit_and_add_types_to_webinars_table', 33),
(128, '2020_12_04_204048_add_column_creator_id_to_some_tables', 34),
(129, '2020_12_05_205320_create_text_lessons_table', 35),
(130, '2020_12_05_210052_create_text_lessons_attachments_table', 36),
(131, '2020_12_06_215701_add_order_column_to_webinar_items_tables', 37),
(132, '2020_12_11_114844_add_column_storage_to_files_table', 38),
(133, '2020_12_07_211009_add_subscribe_id_in_order_items_table', 39),
(134, '2020_12_07_211657_nullable_payment_method_in_orders_table', 39),
(135, '2020_12_07_212306_add_subscribe_enum__type_in_orders_table', 39),
(136, '2020_12_07_223237_changes_in_sales_table', 39),
(137, '2020_12_07_224925_add_subscribe_id_in_accounting_table', 39),
(138, '2020_12_07_230200_create_subscribe_uses_table', 39),
(139, '2020_12_11_123209_add_subscribe_type_account_in_accounting_table', 39),
(140, '2020_12_11_132819_add_sale_id_in_subscribe_use_in_subscribe_uses_table', 39),
(141, '2020_12_11_135824_add_subscribe_payment_method_in_sales_table', 39),
(143, '2020_12_13_205751_create_advertising_banners_table', 41),
(145, '2020_12_14_204251_create_become_instructors_table', 42),
(146, '2020_11_12_232207_create_reports_table', 43),
(147, '2020_11_12_232207_create_comments_reports_table', 44),
(148, '2020_12_17_210822_create_webinar_reports_table', 45),
(150, '2020_12_18_181551_create_notifications_table', 46),
(151, '2020_12_18_195833_create_notifications_status_table', 47),
(152, '2020_12_19_195152_add_status_column_to_payment_channels_table', 48),
(154, '2020_12_20_231434_create_contacts_table', 49),
(155, '2020_12_21_210345_edit_quizzes_table', 50),
(156, '2020_12_24_221715_add_column_to_users_table', 50),
(157, '2020_12_24_084728_create_special_offers_table', 51),
(158, '2020_12_25_204545_add_promotion_enum_type_in_orders_table', 51),
(159, '2020_12_25_205139_add_promotion_id_in_order_items_table', 51),
(160, '2020_12_25_205811_add_promotion_id_in_accounting_table', 51),
(161, '2020_12_25_210341_add_promotion_id_in_sales_table', 51),
(162, '2020_12_25_212453_add_promotion_type_account_enum_in_accounting_table', 51),
(163, '2020_12_25_231005_add_promotion_type_enum_in_sales_table', 51),
(166, '2020_12_29_192943_add_column_reply_to_contacts_table', 53),
(167, '2020_12_30_225001_create_payu_transactions_table', 54),
(168, '2021_01_06_202649_edit_column_password_from_users_table', 55),
(169, '2021_01_08_134022_add_api_column_to_sessions_table', 56),
(170, '2021_01_10_215540_add_column_store_type_to_accounting', 57),
(173, '2021_01_13_214145_edit_carts_table', 58),
(174, '2021_01_13_230725_delete_column_type_from_orders_table', 59),
(175, '2021_01_20_214653_add_discount_column_to_reserve_meetings_table', 60),
(177, '2021_01_27_193915_add_foreign_key_to_support_conversations_table', 61),
(178, '2021_02_02_203821_add_viewed_at_column_to_comments_table', 62),
(180, '2021_02_12_134504_add_financial_approval_column_to_users_table', 64),
(181, '2021_02_12_131916_create_verifications_table', 65),
(182, '2021_02_15_221518_add_certificate_to_users_table', 66),
(183, '2021_02_16_194103_add_cloumn_private_to_webinars_table', 66),
(184, '2021_02_18_213601_edit_rates_column_webinar_reviews_table', 67),
(188, '2021_02_27_212131_create_noticeboards_table', 68),
(189, '2021_02_27_213940_create_noticeboards_status_table', 68),
(191, '2021_02_28_195025_edit_groups_table', 69),
(192, '2021_03_06_205221_create_newsletters_table', 70),
(193, '2021_03_12_105526_add_is_main_column_to_roles_table', 71),
(194, '2021_03_12_202441_add_description_column_to_feature_webinars_table', 72),
(195, '2021_03_18_130248_edit_status_column_from_supports_table', 73),
(196, '2021_03_19_113306_add_column_order_to_categories_table', 74),
(197, '2021_03_19_115939_add_column_order_to_filter_options_table', 75),
(199, '2021_03_24_100005_edit_discounts_table', 76),
(200, '2021_03_27_204551_create_sales_status_table', 77),
(202, '2021_03_28_182558_add_column_page_to_settings_table', 78),
(206, '2021_03_31_195835_add_new_status_in_reserve_meetings_table', 79),
(207, '2020_12_12_204705_create_course_learning_table', 80),
(208, '2021_04_19_195452_add_meta_description_column_to_blog_table', 81),
(209, '2021_04_21_200131_add_icon_column_to_categories_table', 82),
(210, '2021_04_21_203746_add_is_popular_column_to_subscribes_table', 83),
(211, '2021_04_25_203955_add_is_charge_account_column_to_order_items', 84),
(212, '2021_04_25_203955_add_is_charge_account_column_to_orders', 85),
(213, '2021_05_13_111720_add_moderator_secret_column_to_sessions_table', 86),
(214, '2021_05_13_123920_add_zoom_id_column_to_sessions_table', 87),
(215, '2021_05_14_182848_create_session_reminds_table', 88),
(217, '2021_05_25_193743_create_users_zoom_api_table', 89),
(218, '2021_05_25_205716_add_new_column_to_sessions_table', 90),
(219, '2021_05_27_095128_add_user_id_to_newsletters_table', 91),
(220, '2020_12_27_192459_create_pages_table', 92),
(221, '2021_07_03_222439_add_special_offer_id_to_cart_table', 93),
(222, '2021_09_02_101422_add_payment_data_to_orders_table', 94),
(223, '2021_09_02_110519_add_sender_id_to_notifications_table', 95),
(224, '2021_09_06_113524_create_webinar_chapters_table', 96),
(228, '2021_09_06_114459_add_chapter_id_to_files_table', 97),
(229, '2021_09_06_114532_add_chapter_id_to_text_lessons_table', 97),
(230, '2021_09_06_114547_add_chapter_id_to_sessions_table', 97),
(231, '2021_09_13_134659_add_chapter_id_to_quizzes_table', 98),
(234, '2021_09_14_122505_create_affiliates_table', 100),
(235, '2021_09_14_122117_create_affiliates_codes_table', 101),
(239, '2021_09_14_142927_add_affiliate_column_to_users_table', 105),
(241, '2021_09_14_142302_add_affiliate_column_to_accounting_table', 106),
(244, '2021_09_18_155914_create_blog_translations_table', 107),
(246, '2021_09_19_190400_create_page_translations_table', 108),
(248, '2021_09_19_203526_create_setting_translations_table', 109),
(250, '2021_09_20_140241_create_advertising_banners_translations_table', 110),
(252, '2021_09_20_175518_create_category_translations_table', 111),
(255, '2021_09_20_184724_create_filter_translations_table', 112),
(256, '2021_09_20_185132_create_filter_option_translations_table', 112),
(258, '2021_09_21_160650_create_subscribe_translations_table', 113),
(260, '2021_09_21_162922_create_promotion_translations_table', 114),
(262, '2021_09_21_164954_create_testimonial_translations_table', 115),
(264, '2021_09_21_182251_create_feature_webinar_translations_table', 116),
(266, '2021_09_21_184239_create_certificate_template_translations_table', 117),
(268, '2021_09_21_195731_create_support_department_translations_table', 118),
(270, '2021_09_21_201512_create_badge_translations_table', 119),
(272, '2021_09_22_120723_create_webinar_translations_table', 120),
(274, '2021_09_22_135518_create_ticket_translations_table', 121),
(276, '2021_09_22_144342_create_webinar_chapter_translations_table', 122),
(278, '2021_09_22_162502_create_session_translations_table', 123),
(280, '2021_09_22_172309_create_file_translations_table', 124),
(282, '2021_09_22_173500_create_faq_translations_table', 125),
(284, '2021_09_23_094903_create_text_lesson_translations_table', 126),
(286, '2021_09_27_194537_create_quiz_translations_table', 127),
(288, '2021_09_28_112529_create_quiz_question_translations_table', 128),
(290, '2021_09_28_122513_create_quizzes_questions_answer_translations_table', 129),
(291, '2021_12_03_103010_add_agora_session_api_to_sessions_table', 130),
(292, '2021_12_03_103558_add_agora_to_sessions_table', 131),
(293, '2021_12_03_114009_create_agora_history_table', 132),
(295, '2021_12_04_183524_create_regions_table', 133),
(298, '2021_12_25_151304_add_new_column_to_meetings_table', 135),
(299, '2021_12_26_142304_add_new_column_to_meeting_times_table', 136),
(302, '2022_01_01_162247_add_new_column_to_reserve_meetings_table', 137),
(305, '2022_01_02_142927_create_rewards_table', 138),
(307, '2022_01_03_153517_create_rewards_accounting_table', 139),
(308, '2022_01_04_161756_add_score_column_to_badges_table', 140),
(309, '2022_01_04_165147_add_points_column_to_webinars_table', 141),
(312, '2022_01_08_154504_edit_storage_column_and_add_new_value_to_files_table', 142),
(313, '2022_01_11_162839_add_timezone_column_to_users_table', 143),
(314, '2022_01_12_142238_add_timezone_column_to_webinars_table', 144),
(315, '2022_01_15_131828_create_registration_packages_table', 145),
(319, '2022_01_15_203133_edit_columns_in_accounting_table', 146),
(320, '2022_01_16_102825_edit_columns_in_order_items_table', 147),
(321, '2022_01_17_152605_add_registration_package_id_to_sales_table', 148),
(322, '2022_01_18_103414_create_users_registration_packages_table', 149),
(323, '2022_01_18_113331_create_groups_registration_packages_table', 150),
(325, '2022_01_20_110119_add_become_instructor_id_column_to_order_items_table', 152),
(326, '2022_01_18_160228_add_column_role_to_become_instructors_table', 153),
(327, '2022_01_26_080434_add_reserve_date_columns_to_reserve_meetings_table', 154),
(328, '2022_01_28_094259_edit_column_in_discounts_table', 155),
(329, '2022_01_28_094515_create_discount_courses_table', 155),
(330, '2022_01_28_094527_create_discount_groups_table', 155),
(331, '2022_01_31_093231_add_column_description_to_meeting_times_table', 156),
(332, '2022_01_31_093306_add_column_description_to_reserve_meetings_table', 156),
(334, '2022_02_01_092922_create_newsletters_history_table', 157),
(335, '2022_02_01_104529_create_discount_categories_table', 158),
(337, '2022_02_02_092820_add_attachment_column_to_offline_payments_table', 159),
(339, '2022_02_02_184235_add_column_video_demo_source_to_webinars_table', 160),
(340, '2021_12_05_193333_add_new_column_to_users_table', 161),
(341, '2022_02_27_072819_add_forign_key_for_region_to_users_table', 162),
(347, '2022_03_05_123830_create_product_categories_table', 163),
(348, '2022_03_05_125138_create_product_filters_table', 163),
(350, '2022_03_06_091528_create_product_filter_options_table', 163),
(351, '2022_03_07_081257_create_product_specifications_table', 164),
(353, '2022_03_07_081808_create_product_specification_categories_table', 165),
(357, '2022_03_05_125434_create_products_table', 166),
(358, '2022_03_07_093128_create_product_discounts_table', 166),
(362, '2022_03_08_101832_create_product_media_table', 167),
(363, '2022_03_09_054031_create_product_selected_filter_options_table', 168),
(364, '2022_03_09_083337_create_product_specification_meta_table', 169),
(369, '2022_03_09_084108_create_product_selected_specifications_table', 170),
(370, '2022_03_09_140558_create_product_faqs_table', 171),
(374, '2022_03_11_180436_create_product_reviews_table', 174),
(375, '2022_03_11_182715_add_product_id_to_comments_reports_table', 175),
(376, '2022_03_08_094452_create_product_files_table', 176),
(377, '2022_03_11_180746_add_product_id_to_comments_table', 177),
(378, '2022_03_12_102233_add_new_position_to_advertising_banners_table', 178),
(383, '2022_03_13_072108_add_product_id_to_sales_table', 179),
(385, '2022_03_13_081212_create_product_orders_table', 180),
(386, '2022_03_19_171559_create_product_selected_specification_translations_table', 181),
(387, '2022_03_21_161055_add_create_store_column_to_users_table', 182),
(388, '2022_03_26_065509_add_new_type_to_rewards_table', 183),
(389, '2022_03_28_051949_add_product_count_column_to_registration_packages_table', 184),
(391, '2022_03_28_054322_add_product_type_column_to_discounts_table', 185),
(392, '2022_03_28_062248_edit_type_column_of_rewards_accounting_table', 186),
(393, '2022_03_28_083906_edit_type_column_to_badges_table', 187),
(394, '2022_04_02_051515_create_webinar_chapter_items_table', 188),
(395, '2022_04_02_085059_remove_type_column_from_webinar_chapters_table', 189),
(396, '2022_04_02_131352_add_check_sequence_content_fields_to_contents_tables', 190),
(399, '2022_04_04_075541_add_assignment_type_to_webinar_chapter_items_table', 192),
(400, '2022_04_04_071203_create_webinar_assignments_table', 193),
(401, '2022_04_04_071303_create_webinar_assignment_attachments_table', 193),
(405, '2022_04_05_053308_create_webinar_assignment_history_table', 194),
(406, '2022_04_05_060030_create_webinar_assignment_history_messages_table', 194),
(407, '2022_04_06_121240_add_new_type_passed_assignment_to_rewards_table', 195),
(408, '2022_04_09_064609_add_access_content_column_to_users_table', 196),
(409, '2022_04_10_073822_create_bundles_table', 197),
(410, '2022_04_10_092348_create_bundle_filter_option_table', 198),
(413, '2022_04_10_130733_create_bundle_webinars_table', 200),
(421, '2022_04_10_093457_add_bundle_id_to_needle_tables', 201),
(422, '2022_04_12_153052_add_access_time_to_webinars_table', 202),
(423, '2022_04_13_053947_create_course_noticeboards_table', 203),
(424, '2022_04_13_054536_create_course_noticeboard_status_table', 203),
(425, '2022_04_13_130155_add_column_forum_to_webinars_table', 204),
(427, '2022_04_14_060606_create_course_forums_table', 205),
(428, '2022_04_14_063316_create_course_forum_answers_table', 206),
(447, '2022_04_21_133513_add_new_type_in_rewards_table', 216),
(448, '2022_04_21_135212_add_new_type_in_badges_table', 217),
(449, '2022_04_24_081637_add_new_type_instructor_blog_in_rewards_table', 218),
(450, '2022_04_24_082515_add_new_type_instructor_blog_in_badges_table', 219),
(452, '2022_04_25_043945_create_users_cookie_security_table', 220),
(453, '2022_04_25_143142_add_organization_price__column_to_webinars_table', 221),
(454, '2022_04_25_165256_add_image_and_video_to_quizzes_questions_table', 222),
(456, '2022_04_26_060018_edit_certificates_templates_table', 223),
(458, '2022_04_26_082017_edit_certificates_table', 224),
(459, '2022_04_26_155421_create_subscribe_reminds_table', 225),
(460, '2022_04_26_163428_add_instructor_id_to_noticeboards_table', 226),
(461, '2022_04_27_133655_add_unlimited_download_to_subscribes_table', 227),
(462, '2022_04_27_133655_add_infinite_use_to_subscribes_table', 228),
(463, '2022_04_27_140844_add_extra_time_to_join_to_sessions_table', 229),
(464, '2022_04_28_052318_create_webinar_extra_description_table', 230),
(466, '2022_05_09_125820_create_navbar_buttons_table', 232),
(467, '2021_06_07_000000_create_payku_transactions_table', 233),
(468, '2021_06_07_000001_create_payku_payments_table', 233),
(469, '2021_11_30_122831_create_jazzcash_transactions_table', 233),
(470, '2021_12_15_000000_add_new_columns_to_tables', 233),
(471, '2022_05_23_081324_create_product_specification_multi_values_table', 234),
(472, '2022_05_23_091527_create_product_selected_specification_multi_values_table', 235),
(475, '2022_05_23_151601_add_product_delivery_fee_column_to_sales_table', 236),
(476, '2022_04_18_103856_create_forums_table', 237),
(477, '2022_04_18_152201_create_forum_topics_table', 237),
(478, '2022_04_18_152845_create_forum_topic_attachments_table', 237),
(479, '2022_04_19_071911_create_forum_topic_posts_table', 237),
(480, '2022_04_19_123745_create_forum_topic_reports_table', 237),
(481, '2022_04_19_135314_create_forum_topic_bookmarks_table', 237),
(482, '2022_04_19_152929_create_forum_topic_likes_table', 237),
(483, '2022_04_20_152756_create_forum_featured_topics_table', 237),
(484, '2022_04_21_054043_create_forum_recommended_topics_table', 237),
(485, '2022_04_21_054815_create_forum_recommended_topic_items_table', 237),
(486, '2022_05_26_085212_change_some_column_varchar_to_text', 238),
(487, '2022_05_27_142612_add_avarat_settings_to_users_table', 239),
(489, '2022_05_01_151107_add_manual_added_column_to_sales_table', 240),
(490, '2022_05_29_162315_create_delete_account_requests_table', 241),
(491, '2020_10_20_211927_create_users_metas_table', 242),
(492, '2022_05_31_133347_add_certificate_column_to_webinars_table', 243),
(494, '2022_05_31_165839_add_online_viewer_column_to_files_table', 244),
(495, '2022_06_08_071712_create_home_sections_table', 245);

-- --------------------------------------------------------

--
-- Table structure for table `navbar_buttons`
--

CREATE TABLE `navbar_buttons` (
  `id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbar_buttons`
--

INSERT INTO `navbar_buttons` (`id`, `role_id`) VALUES
(1, 1),
(2, 2),
(4, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `navbar_button_translations`
--

CREATE TABLE `navbar_button_translations` (
  `id` int UNSIGNED NOT NULL,
  `navbar_button_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbar_button_translations`
--

INSERT INTO `navbar_button_translations` (`id`, `navbar_button_id`, `locale`, `title`, `url`) VALUES
(1, 1, 'en', 'Become instructor', '/become-instructor'),
(2, 1, 'ar', 'أصبح مدربا', '/become-instructor'),
(3, 1, 'es', 'Convertirse en instructora', '/become-instructor'),
(4, 2, 'en', 'Admin panel', '/admin'),
(5, 3, 'en', 'Create a new course', '/panel/webinars/new'),
(6, 3, 'es', 'Crear un nuevo curso', '/panel/webinars/new'),
(7, 3, 'ar', 'أنشئ دورة جديدة', '/panel/webinars/new'),
(8, 4, 'en', 'Create a new course', '/panel/webinars/new'),
(9, 4, 'es', 'Crear un nuevo curso', '/panel/webinars/new'),
(10, 4, 'ar', 'أنشئ دورة جديدة', '/panel/webinars/new');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `user_id`, `email`, `created_at`) VALUES
(8, 995, 'cameronschofield@gmail.com', 1625090411),
(9, 1017, 'a.pmelaa@gmail.com', 1646389129),
(10, 996, 'robert2002@gmail.com', 1646414262);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters_history`
--

CREATE TABLE `newsletters_history` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_method` enum('send_to_all','send_to_bcc','send_to_excel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_count` int DEFAULT NULL,
  `created_at` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters_history`
--

INSERT INTO `newsletters_history` (`id`, `title`, `description`, `send_method`, `bcc_email`, `email_count`, `created_at`) VALUES
(1, 'Black Friday OFF', '<p>Hello,</p><p>Be sure to check our Black Friday discounts.</p><p>Regards.</p>', 'send_to_all', NULL, 2, 1646389249);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

CREATE TABLE `noticeboards` (
  `id` int UNSIGNED NOT NULL,
  `organ_id` int UNSIGNED DEFAULT NULL,
  `instructor_id` int UNSIGNED DEFAULT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `type` enum('all','organizations','students','instructors','students_and_instructors') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards`
--

INSERT INTO `noticeboards` (`id`, `organ_id`, `instructor_id`, `webinar_id`, `user_id`, `type`, `sender`, `title`, `message`, `created_at`) VALUES
(10, NULL, NULL, NULL, NULL, 'all', 'Staff', 'Top summer classes', '<p>You can find top summer courses on the platform homepage and get all of them with 50% discount by using \"mysummer\" discount coupon.</p>', 1625921717),
(11, NULL, NULL, NULL, NULL, 'instructors', 'Staff', 'Instructor terms of services changed', '<p>Instructors terms of services changed on July 17. You can read terms on the terms page.</p>', 1625921872),
(12, NULL, NULL, NULL, NULL, 'all', 'Staff', 'New Year Sales Festival', '<p>Due to the New Year Festival, users who buy more than $ 200 will be given a 20% discount code.</p>', 1626132374);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards_status`
--

CREATE TABLE `noticeboards_status` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `noticeboard_id` int UNSIGNED NOT NULL,
  `seen_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards_status`
--

INSERT INTO `noticeboards_status` (`id`, `user_id`, `noticeboard_id`, `seen_at`) VALUES
(7, 1015, 11, 1626204347);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `sender_id` int UNSIGNED DEFAULT NULL,
  `group_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` enum('system','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'system',
  `type` enum('single','all_users','students','instructors','organizations','group') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `group_id`, `title`, `message`, `sender`, `type`, `created_at`) VALUES
(1368, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625863108),
(1370, 1, NULL, NULL, 'New comment for your class', '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625863203),
(1372, 1, NULL, NULL, 'New comment for your class', '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625863345),
(1373, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625863462),
(1378, 1, NULL, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625864259),
(1380, 1, NULL, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>', 'system', 'single', 1625864416),
(1382, 1, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625864526),
(1384, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Convert Videos .</p>', 'system', 'single', 1625891270),
(1385, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Pre-purchase question .</p>', 'system', 'single', 1625891677),
(1386, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Pending Offline Payment .</p>', 'system', 'single', 1625891851),
(1387, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Commission Rate .</p>', 'system', 'single', 1625892221),
(1388, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Class delay .</p>', 'system', 'single', 1625895874),
(1389, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625897110),
(1390, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625898890),
(1459, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 332 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061192),
(1462, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 80 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061254),
(1474, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Bronze Subscribe .</p>', 'system', 'single', 1626061450),
(1491, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Refund Request #64237 .</p>', 'system', 'single', 1626063457),
(1492, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Refund Request #64237 updated with a new reply.</p>', 'system', 'single', 1626063547),
(1534, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626235679),
(1546, 1, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240118),
(1556, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>', 'system', 'single', 1626241152),
(1564, 1, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626241320),
(1566, 1, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241386),
(1570, 1, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1626242992),
(1583, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Problem with quiz .</p>', 'system', 'single', 1626250124),
(1590, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1626493830),
(1599, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509207),
(1600, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509327),
(1601, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626509546),
(1790, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Pro Registration package .</p>', 'system', 'single', 1646386787),
(1800, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Basic Registration package .</p>', 'system', 'single', 1646387655),
(1903, 1, NULL, NULL, 'new badge', '<p>You received Faithful User&nbsp;badge</p>', 'system', 'single', 1655618081),
(2022, 1, NULL, NULL, 'New comment', '<p>user Aston Student add new comment fro course with title TEST VIDEO COURSE</p>', 'system', 'single', 1660369980),
(2029, 1, NULL, NULL, 'New comment', '<p>user Aston Student add new comment fro course with title TEST VIDEO COURSE</p>', 'system', 'single', 1661059459),
(2098, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700707358),
(2099, 1030, NULL, NULL, 'new badge', '<p>You received Junior Vendor&nbsp;badge</p>', 'system', 'single', 1700718367),
(2100, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700721075),
(2101, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700721133),
(2102, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700721783),
(2103, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700722014),
(2104, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700722019),
(2105, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700722543),
(2106, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700722644),
(2107, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700722706),
(2108, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700722746),
(2109, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700722829),
(2110, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700722863),
(2111, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700724146),
(2112, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700727750),
(2113, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700727756),
(2115, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700781351),
(2116, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700781646),
(2117, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1700781654),
(2118, 1030, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1700783432),
(2119, 1030, NULL, NULL, 'new badge', '<p>You received Best Seller&nbsp;badge</p>', 'system', 'single', 1700783432),
(2120, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1701915518),
(2121, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1701915544),
(2123, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702118612),
(2124, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702349923),
(2125, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702356311),
(2126, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702357451),
(2127, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702358664),
(2128, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702358753),
(2130, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702429543),
(2131, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702432688),
(2132, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702440900),
(2133, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1702450930),
(2136, 1030, NULL, NULL, 'new badge', '<p>You received Top Seller&nbsp;badge</p>', 'system', 'single', 1702515875),
(2139, 1030, NULL, NULL, 'new badge', '<p>You received Loyal User&nbsp;badge</p>', 'system', 'single', 1704160948),
(2141, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1705992457),
(2142, 1044, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1708560189),
(2144, 1030, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1717510819),
(2145, 1030, NULL, NULL, 'new badge', '<p>You received Senior Vendor&nbsp;badge</p>', 'system', 'single', 1717511033),
(2146, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1717511591),
(2147, 1045, NULL, NULL, 'new badge', '<p>You received Junior Vendor&nbsp;badge</p>', 'system', 'single', 1717511696),
(2148, 1045, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1718163439),
(2150, 1047, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1718850241),
(2151, 1049, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1718947910),
(2152, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Individual Support approved</p>', 'system', 'single', 1719304271),
(2153, 1051, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719363697),
(2154, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719412248),
(2155, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719414255),
(2156, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719465663),
(2157, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719466000),
(2158, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719466025),
(2159, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719466201),
(2160, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719468818),
(2161, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719470885),
(2162, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate III in Early Childhood Education & Care approved</p>', 'system', 'single', 1719470921),
(2163, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate IV in Ageing Support approved</p>', 'system', 'single', 1719473935),
(2164, 1052, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719477340),
(2165, 1056, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719483728),
(2166, 1054, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719544327),
(2167, 1045, NULL, NULL, 'new badge', '<p>You received Expert Vendor&nbsp;badge</p>', 'system', 'single', 1719573417),
(2168, 1045, NULL, NULL, 'new badge', '<p>You received Best Seller&nbsp;badge</p>', 'system', 'single', 1719573417),
(2169, 1053, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719581771),
(2170, 1055, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719663412),
(2171, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate IV in Ageing Support approved</p>', 'system', 'single', 1719733775),
(2172, 1057, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719799387),
(2173, 1060, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719811364),
(2174, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate IV in Disability Support approved</p>', 'system', 'single', 1719813739),
(2175, 1059, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719878882),
(2176, 1061, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719882465),
(2177, 1045, NULL, NULL, 'new badge', '<p>You received Top Seller&nbsp;badge</p>', 'system', 'single', 1719918310),
(2178, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate IV in Disability Support approved</p>', 'system', 'single', 1719993075),
(2179, 1062, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1719995955),
(2180, 1065, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1720053787),
(2181, 1066, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1720067639),
(2182, 1064, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1720075226),
(2183, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate IV in Disability Support approved</p>', 'system', 'single', 1720082081),
(2184, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate IV in Disability Support approved</p>', 'system', 'single', 1720082161),
(2185, 1070, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1720157286),
(2186, 1045, NULL, NULL, 'new badge', '<p>You received Loyal User&nbsp;badge</p>', 'system', 'single', 1720236560),
(2187, 1072, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1720406043),
(2188, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate IV in Ageing Support approved</p>', 'system', 'single', 1720412185),
(2189, 1045, NULL, NULL, 'Course approve', '<p>your course with title Certificate IV in Ageing Support approved</p>', 'system', 'single', 1720413210),
(2190, 1030, NULL, NULL, 'Course approve', '<p>your course with title Diploma of Project Management approved</p>', 'system', 'single', 1720519251),
(2191, 1073, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1720604957),
(2192, 1074, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1720657866),
(2193, 1077, NULL, NULL, 'new badge', '<p>You received New User&nbsp;badge</p>', 'system', 'single', 1720690931);

-- --------------------------------------------------------

--
-- Table structure for table `notifications_status`
--

CREATE TABLE `notifications_status` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `notification_id` int UNSIGNED NOT NULL,
  `seen_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications_status`
--

INSERT INTO `notifications_status` (`id`, `user_id`, `notification_id`, `seen_at`) VALUES
(40, 1, 2029, 1702526881),
(41, 1, 2022, 1702526900),
(42, 1, 1903, 1702526904),
(44, 1030, 2130, 1704163321),
(45, 1030, 2139, 1704263450),
(46, 1045, 2146, 1718163463),
(47, 1045, 2147, 1718163466),
(48, 1045, 2148, 1718163470),
(49, 1047, 2150, 1718850305),
(50, 1049, 2151, 1718957807),
(51, 1051, 2153, 1719364078),
(52, 1056, 2165, 1719484390),
(53, 1053, 2169, 1719581830),
(54, 1055, 2170, 1719663726),
(55, 1061, 2176, 1719882522),
(56, 1059, 2175, 1719918019),
(57, 1057, 2172, 1719924727),
(58, 1062, 2179, 1720054978),
(59, 1052, 2164, 1720092604),
(60, 1066, 2181, 1720145848),
(61, 1070, 2185, 1720187811),
(62, 1072, 2187, 1720406115),
(63, 1077, 2193, 1720690982);

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `title`, `template`) VALUES
(2, 'new badge', '<p>You received [u.b.title]&nbsp;badge</p>'),
(3, 'Change user group', '<p>your group change to [u.g.title]</p>'),
(4, 'Course created', '<p>you create new course&nbsp;with Title [c.title]</p>'),
(5, 'Course approve', '<p>your course with title [c.title] approved</p>'),
(6, 'Course rejection', '<p>Your course with title [c.title] rejected</p>'),
(7, 'New comment', '<p>user [u.name] add new comment fro course with title [c.title]</p>'),
(8, 'New support message', '<p>user [u.name] send new support message for course with title [c.title]</p>'),
(9, 'support message replied', '<p>support message replied fro course [c.title]</p>'),
(10, 'New support for admin', '<p>send new support&nbsp; ticket with title&nbsp;[s.t.title]</p>'),
(11, 'support ticket replied for admin', '<p>replied support&nbsp; ticket with title&nbsp;[s.t.title]</p>'),
(12, 'New financial document', '<p>&nbsp;New financial document for course [c.title] with type [f.d.type] with price [amount]</p>'),
(13, 'Payout request', '<p>payout request with amount&nbsp; [payout.amount]</p>'),
(14, 'Payout proceed', 'Payout with amount [payout.amount]&nbsp;&nbsp;proceed by account [payout.account]'),
(15, 'New sales', '<p>new sale for course with title [c.title]</p>'),
(16, 'New purchase', '<p>new purchase for course with title [c.title]</p>'),
(17, 'Rating (Feedback)', '<p>new feedback submitted for course with title [c.title] bu student [student.name] and rate [rate.count]</p>'),
(18, 'Offline payment request', '<p>Offline payment request with amount [amount]</p>'),
(19, 'Offline payment approved', '<p>Offline payment request with amount [amount]&nbsp;approved</p>'),
(20, 'Offline payment rejected', '<p>Offline payment request with amount [amount]&nbsp;rejected</p>'),
(21, 'New subscribe plan', '<p>New subscribe plan activated by user [u.name] for plan [s.p.name]</p>'),
(22, 'New appointment [amount]', '<p>New appointment booked by user [u.name] in time [time.date] with price&nbsp;[amount]</p>'),
(23, 'New appointment link', '<p>appointment&nbsp; link defined by the [instructor.name]. time [time.date] and link is [link]</p>'),
(24, 'Appointment reminder', '<p>You have an appointment on [time.date]</p>'),
(25, 'Meeting finished', '<p>meeting finished instructor : [instructor.name] and student :&nbsp; [student.name] and time : [time.date]</p>'),
(26, 'New contact message', '<p>New contact message with title [c.u.title] and user name [u.name] recived</p>'),
(27, 'Webinar reminder', '<p>Webinar reminder time [time.date] webinar title [c.title]</p>'),
(28, 'Promotion plan', '<p>plan [p.p.name]&nbsp;&nbsp;activated for course [c.title]</p>'),
(29, 'Promotion plan for admin', '<p>new request promotion plan [p.p.name] for course [c.title]</p>'),
(30, 'Certificate', '<p>certificate recived for course [c.title]</p>'),
(31, 'Waiting quiz', '<p>student [student.name]&nbsp; waiting for quiz [q.title] for course [c.title]</p>'),
(32, 'Waiting quiz result', '<p>course [c.title]&nbsp;calculated quiz [q.title] result [q.result] by instructor</p>'),
(33, 'product new sale', '<p>new sale for product with title [p.title]</p>'),
(34, 'Product New purchase', '<p>new purchase for product with title [p.title]</p>'),
(35, 'Product New comment', '<p>user [u.name] add new comment fro product with title [p.title]</p>'),
(36, 'Product tracking code', '<p>user [u.name] add tracking code for product with title [p.title]</p>'),
(37, 'Product Rating (Feedback)', '<p>new feedback submitted for product with title [p.title] by user [u.name] and rate [rate.count]</p>'),
(38, 'Product receive shipment', '<p>user [u.name] received product with title [p.title]</p>'),
(39, 'Product out of stock', '<p>The product inventory ended with the title [p.title]</p>'),
(40, 'Send assignment by the student to the instructor', '<p>[student.name] send assignment for course by title [c.title]</p>'),
(41, 'when the instructor sends a message for assignment', '<p>[instructor.name] send message for course by title [c.title]</p>'),
(42, 'assignment grade', '<p>The [instructor.name]&nbsp;gave you a grade of [assignment_grade]&nbsp;for course by title [c.title]</p>'),
(43, 'user access to content', '<p>Your access to content is enabled.</p>'),
(44, 'Send post in topic', '<p>[u.name] send post in your topic with title [topic_title]&nbsp;</p>'),
(45, 'publish instructor blog post', '<p>your post with title [blog_title] published.</p>'),
(46, 'new comment for instructor blog', '<p>user [u.name] add new comment for your blog with title [blog_title]</p>'),
(47, 'Meeting reminder', '<p>Meeting reminder time [time.date] with instructor by name [instructor.name]</p>'),
(48, 'subscribe expire reminder', '<p>Your subscribe has been expired in&nbsp;[time.date]</p>'),
(49, 'Course Forum new Question', '<p>[u.name] registered a question in the [c.title]&nbsp;course forum.</p>'),
(50, 'New answer in course forum', '<p>[u.name] registered a answer in the [c.title]&nbsp;course forum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `amount` int NOT NULL,
  `bank` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('waiting','approved','reject') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_date` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` enum('pending','paying','paid','fail') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('credit','payment_channel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_charge_account` tinyint(1) NOT NULL DEFAULT '0',
  `amount` int UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `total_discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `product_delivery_fee` decimal(13,2) DEFAULT NULL,
  `reference_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `subscribe_id` int UNSIGNED DEFAULT NULL,
  `promotion_id` int UNSIGNED DEFAULT NULL,
  `registration_package_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_order_id` int UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int UNSIGNED DEFAULT NULL,
  `ticket_id` int UNSIGNED DEFAULT NULL,
  `discount_id` int DEFAULT NULL,
  `become_instructor_id` int UNSIGNED DEFAULT NULL,
  `amount` int UNSIGNED DEFAULT NULL,
  `tax` int UNSIGNED DEFAULT NULL,
  `tax_price` decimal(13,2) DEFAULT NULL,
  `commission` int UNSIGNED DEFAULT NULL,
  `commission_price` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `product_delivery_fee` decimal(13,2) DEFAULT NULL,
  `created_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `webinar_id`, `bundle_id`, `subscribe_id`, `promotion_id`, `registration_package_id`, `product_id`, `product_order_id`, `reserve_meeting_id`, `ticket_id`, `discount_id`, `become_instructor_id`, `amount`, `tax`, `tax_price`, `commission`, `commission_price`, `discount`, `total_amount`, `product_delivery_fee`, `created_at`) VALUES
(310, 1015, 306, 1996, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63, 10, 6.30, 0, 0.00, NULL, 69.30, NULL, 1625145687),
(311, 996, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, 150, 10, 15.00, 20, 30.00, 0.00, 165.00, NULL, 1625944333),
(312, 995, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, 100, 10, 10.00, 20, 20.00, 0.00, 110.00, NULL, 1625952623),
(313, 995, 309, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 1.00, 20, 2.00, 0.00, 11.00, NULL, 1625953190),
(314, 995, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, 125, 10, 12.50, 20, 25.00, 0.00, 137.50, NULL, 1625996807),
(315, 995, 311, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 10, 5.00, 10, 5.00, 0.00, 55.00, NULL, 1625996936),
(316, 995, 312, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, 5.00, 20, 10.00, 50.00, 55.00, NULL, 1625996974),
(317, 995, 313, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 1.60, 10, 1.60, 4.00, 17.60, NULL, 1625997096),
(318, 996, 314, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 10, 2.25, 20, 4.50, 2.50, 24.75, NULL, 1626060481),
(319, 996, 315, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, 4.00, 20, 8.00, 60.00, 44.00, NULL, 1626060548),
(320, 930, 316, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, 5.00, 20, 10.00, 50.00, 55.00, NULL, 1626060832),
(321, 979, 317, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 10, 6.00, 10, 6.00, 0.00, 66.00, NULL, 1626061329),
(322, 979, 318, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 2.00, 20, 4.00, 0.00, 22.00, NULL, 1626061366),
(323, 979, 318, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, 3.00, 20, 6.00, 0.00, 33.00, NULL, 1626061366),
(324, 995, 319, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 2.00, 0, 0.00, NULL, 22.00, NULL, 1626061431),
(325, 1015, 320, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 2.00, 20, 4.00, 0.00, 22.00, NULL, 1626132487),
(326, 1015, 321, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 20, 10, 1.60, 20, 3.20, 4.00, 17.60, NULL, 1626132840),
(327, 929, 322, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, 3.00, 20, 6.00, 10.00, 33.00, NULL, 1626240993),
(328, 929, 323, 2004, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 10, 5.00, 0, 0.00, NULL, 55.00, NULL, 1626241146),
(329, 929, 324, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, 3.00, 20, 6.00, 10.00, 33.00, NULL, 1626241207),
(330, 995, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, 100, 10, 10.00, 20, 20.00, 0.00, 110.00, NULL, 1626247189),
(331, 1015, 326, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 1.60, 10, 1.60, 4.00, 17.60, NULL, 1626284818),
(332, 996, 327, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, 2.70, 20, 5.40, 3.00, 29.70, NULL, 1626508952),
(333, 929, 328, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, 3.00, 20, 6.00, 0.00, 33.00, NULL, 1635412190),
(334, 979, 329, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 10, 10.00, 0, 0.00, NULL, 110.00, NULL, 1635448382),
(335, 1017, 330, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, 3.00, 20, 6.00, 0.00, 33.00, NULL, 1639379271),
(336, 1017, 331, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 10, 10.00, 20, 20.00, 0.00, 110.00, NULL, 1639379347),
(337, 1017, 332, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, 3.00, 20, 6.00, 10.00, 33.00, NULL, 1639379382),
(338, 995, 333, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 1.00, 20, 2.00, 0.00, 11.00, NULL, 1646172083),
(339, 996, 334, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 0.90, 20, 1.80, 1.00, 9.90, NULL, 1646172119),
(340, 979, 335, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 1.00, 20, 2.00, 0.00, 11.00, NULL, 1646172156),
(341, 929, 336, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 1.00, 20, 2.00, 0.00, 11.00, NULL, 1646172292),
(342, 995, 337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 750, 10, 75.00, 20, 150.00, 0.00, 825.00, NULL, 1646379279),
(343, 1017, 338, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 300, 10, 30.00, 20, 60.00, 0.00, 330.00, NULL, 1646380150),
(344, 930, 339, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 5, 199, 10, 19.90, 0, 0.00, NULL, 218.90, NULL, 1646386782),
(345, 859, 340, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 6, 200, 10, 20.00, 0, 0.00, NULL, 220.00, NULL, 1646387650),
(346, 930, 341, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 10, 5.00, 20, 10.00, 0.00, 55.00, 0.00, 1656083106),
(347, 995, 342, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, 5, 5, 0.25, 20, 1.00, 0.00, 5.25, 0.00, 1656103838),
(348, 923, 343, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, 25, 5, 1.25, 10, 2.50, 0.00, 31.25, 5.00, 1656104126),
(349, 996, 344, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 10, 3.60, 20, 7.20, 4.00, 39.60, 0.00, 1656130476),
(350, 930, 345, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, 290, 5, 14.50, 10, 29.00, 0.00, 314.50, 10.00, 1656130702),
(351, 996, 346, NULL, NULL, NULL, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, 75, 5, 3.75, 20, 15.00, 0.00, 78.75, 0.00, 1656130959),
(352, 979, 347, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 10, 0.80, 20, 1.60, 0.00, 8.80, 0.00, 1656139699),
(353, 979, 347, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 10, 2.50, 20, 5.00, 0.00, 27.50, 0.00, 1656139699),
(354, 1017, 348, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, NULL, NULL, NULL, 25, 5, 1.00, 10, 2.00, 5.00, 26.00, 5.00, 1656148569),
(355, 995, 349, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, NULL, NULL, NULL, 50, 5, 2.25, 10, 4.50, 5.00, 52.25, 5.00, 1656148735),
(356, 995, 350, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, NULL, NULL, NULL, 50, 5, 2.25, 10, 4.50, 5.00, 52.25, 5.00, 1656148833),
(357, 995, 351, NULL, NULL, NULL, NULL, NULL, 6, 7, NULL, NULL, 9, NULL, 20, 5, 1.00, 20, 4.00, 4.00, 17.00, 0.00, 1656322652);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `robot` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('publish','draft') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `link`, `name`, `robot`, `status`, `created_at`) VALUES
(3, '/about', 'About', 1, 'publish', 1659780108),
(5, '/terms', 'Terms & rules', 1, 'publish', 1659780138),
(6, '/reward_points_system', 'Reward Points System', 1, 'publish', 1646398467);

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `seo_description`, `content`) VALUES
(1, 3, 'en', 'About TRAIN ME', 'TRAIN ME  is an online course marketplace with a pile of features that helps you to run your online education business easily.', '<div><b>TRAIN ME</b> is an online course marketplace with a pile of features that helps you to run your online education business easily. This platform helps instructors and students get in touch together and share knowledge.</div><div><br></div><div>Teachers will be able to create unlimited video courses, live classes, text courses, projects, quizzes, files, etc and students will be able to use the educational material and increase their skill level.</div><div><br></div><div>Rocket LMS is based on real business needs, cultural differences, and advanced user researches so it covers your business requirements efficiently.</div><div style=\"text-align: center; \"><img src=\"/store/1/default_images/about.png\" style=\"width: 1110px;\"><br></div><div><br></div><div><b>WHY CHOOSE Rocket LMS?</b></div><div><br></div><div>- Comprehensive solution for online education businesses</div><div>- Based on real business needs</div><div>- Multiple content types (Video courses, Live classes, text courses)</div><div>- Youtube, Vimeo, and AWS integration</div><div>- Google calendar integration</div><div>- Online 1 to 1 meetings support</div><div>- Single & multiple instructors</div><div>- Organizational education system</div><div>- Subscribe system</div><div>- Various payment gateways for worldwide</div><div>- Offline payment</div><div>- Multilanguage</div><div>- Fully responsive</div><div>- Fully customizable</div><div>- RTL support</div>'),
(2, 5, 'en', 'Terms of Service', 'Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn.', '<p><b>Note: This is just demo data.</b></p><p>Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn (students). We consider our marketplace model the best way to offer valuable educational content to our users. We need rules to keep our platform and services safe for you, us, and our student and instructor community. These Terms apply to all your activities on the Udemy website, the Udemy mobile applications, our TV applications, our APIs, and other related services (“<b>Services</b>”).</p><p>If you publish content on our platform, you must also agree to the Instructor Terms. We also provide details regarding our processing of the personal data of our students and instructors in our Privacy Policy. If you are using our platform for Business as part of your organization’s Udemy for Business subscription, you should consult our Udemy for Business Privacy Statement.</p><p style=\"text-align: center; \"><br></p><p>You need an account for most activities on our platform, including to <b>purchase</b> and access content or to <b>submit content for publication</b>. When setting up and maintaining your account, you must provide and continue to provide accurate and complete information, including a valid email address. You have complete responsibility for your account and everything that happens on your account, including for any harm or damage (to us or anyone else) caused by someone using your account without your permission. This means you need to be careful with your password. You may not transfer your account to someone else or use someone else’s account. If you contact us to request access to an account, we will not grant you such access unless you can provide us with the information that we need to prove you are the owner of that account. In the event of the death of a user, the account of that user will be closed.</p>'),
(3, 6, 'en', 'Reward Points System', 'Rocket LMS Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin.', '<p><img src=\"/store/1/default_images/Reward Points System.jpg\" style=\"width: 800px;\"><br></p><p><b>Rocket LMS&nbsp;Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin. Reward your Customers using Reward Points for Product Purchase, Writing Reviews, Sign up, Referrals, etc. The earned Reward Points can be redeemed for future purchases.&nbsp;</b></p>'),
(4, 5, 'es', 'Términos de servicio', 'Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender.', '<p>Nota: Estos son solo datos de demostración.</p><p><br></p><p>Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender (estudiantes). Consideramos nuestro modelo de mercado la mejor manera de ofrecer contenido educativo valioso a nuestros usuarios. Necesitamos reglas para mantener nuestra plataforma y servicios seguros para usted, nosotros y nuestra comunidad de estudiantes e instructores. Estos Términos se aplican a todas sus actividades en el sitio web de Udemy, las aplicaciones móviles de Udemy, nuestras aplicaciones de TV, nuestras API y otros servicios relacionados (\"Servicios\").</p><p><br></p><p>Si publica contenido en nuestra plataforma, también debe aceptar los Términos del instructor. También proporcionamos detalles sobre nuestro procesamiento de los datos personales de nuestros estudiantes e instructores en nuestra Política de privacidad. Si utiliza nuestra plataforma para empresas como parte de la suscripción a Udemy for Business de su organización, debe consultar nuestra Declaración de privacidad de Udemy for Business.</p><p><br></p><p><br></p><p><br></p><p>Necesita una cuenta para la mayoría de las actividades en nuestra plataforma, incluso para comprar y acceder a contenido o para enviar contenido para su publicación. Al configurar y mantener su cuenta, debe proporcionar y continuar proporcionando información precisa y completa, incluida una dirección de correo electrónico válida. Usted es completamente responsable de su cuenta y de todo lo que sucede en ella, incluido cualquier daño o perjuicio (a nosotros o a cualquier otra persona) causado por alguien que usa su cuenta sin su permiso. Esto significa que debe tener cuidado con su contraseña. No puede transferir su cuenta a otra persona ni usar la cuenta de otra persona. Si se comunica con nosotros para solicitar acceso a una cuenta, no le otorgaremos dicho acceso a menos que pueda proporcionarnos la información que necesitamos para demostrar que es el propietario de esa cuenta. En caso de fallecimiento de un usuario, la cuenta de ese usuario se cerrará.</p>'),
(5, 5, 'ar', 'شروط الخدمة', 'مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم.', '<p style=\"direction: rtl; text-align: right;\">ملاحظة: هذه مجرد بيانات تجريبية.</p><p style=\"direction: rtl; text-align: right;\">مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم (الطلاب). نحن نعتبر نموذج السوق الخاص بنا هو أفضل طريقة لتقديم محتوى تعليمي قيم لمستخدمينا. نحن بحاجة إلى قواعد للحفاظ على نظامنا الأساسي وخدماتنا آمنة لك ولنا ومجتمع الطلاب والمدرسين لدينا. تنطبق هذه الشروط على جميع أنشطتك على موقع Udemy على الويب ، وتطبيقات Udemy للهاتف المحمول ، وتطبيقات التلفزيون لدينا ، وواجهات برمجة التطبيقات الخاصة بنا ، والخدمات الأخرى ذات الصلة (\"الخدمات\").</p><p style=\"direction: rtl; text-align: right;\">إذا قمت بنشر محتوى على نظامنا الأساسي ، فيجب عليك أيضًا الموافقة على شروط المدرب. نقدم أيضًا تفاصيل تتعلق بمعالجتنا للبيانات الشخصية لطلابنا ومعلمينا في سياسة الخصوصية الخاصة بنا. إذا كنت تستخدم منصتنا للأعمال كجزء من اشتراك Udemy for Business الخاص بمؤسستك ، فيجب عليك الرجوع إلى بيان خصوصية Udemy for Business.</p><p style=\"direction: rtl; text-align: right;\">أنت بحاجة إلى حساب لمعظم الأنشطة على نظامنا الأساسي ، بما في ذلك شراء المحتوى والوصول إليه أو إرسال المحتوى للنشر. عند إعداد حسابك وصيانته ، يجب عليك تقديم معلومات دقيقة وكاملة والاستمرار في تقديمها ، بما في ذلك عنوان بريد إلكتروني صالح. أنت تتحمل المسؤولية الكاملة عن حسابك وكل ما يحدث على حسابك ، بما في ذلك أي ضرر أو ضرر (لنا أو لأي شخص آخر) ناجم عن شخص يستخدم حسابك دون إذنك. هذا يعني أنك بحاجة إلى توخي الحذر بشأن كلمة المرور الخاصة بك. لا يجوز لك نقل حسابك إلى شخص آخر أو استخدام حساب شخص آخر. إذا اتصلت بنا لطلب الوصول إلى حساب ، فلن نمنحك هذا الوصول ما لم تتمكن من تزويدنا بالمعلومات التي نحتاجها لإثبات أنك مالك هذا الحساب. في حالة وفاة المستخدم ، سيتم إغلاق حساب هذا المستخدم.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('keykore.charlie@gmail.com', 'mV9y9iUqCPnOLrxWYChslwurnCu9qfBW24RUth4uZyP1xeuvnIWWzHbrDcvn', '2023-08-10 02:26:40'),
('keykore.charlie@gmail.com', 'L3NZvyKbNhviTbIe7jrV65aXWz34o27yx8MGIR78KDTV5D6dfh6QmSKODZjM', '2023-08-14 17:37:20'),
('keykore.charlie@gmail.com', 'GvxmhpGg1kxKHYWSvZCxqTKcwG5UemHKOX8yAIKvN6HPOfq38GXml4bkoWRK', '2023-10-05 14:52:46'),
('sabinabhattarai03@gmail.com', 'j6XuFnnDmaFF8471dawTOUb37HSCAfZr68mB99djRGXfGGNWKrip4y5lUFHl', '2024-07-01 23:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `payku_payments`
--

CREATE TABLE `payku_payments` (
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `media` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_4_digits` int UNSIGNED DEFAULT NULL,
  `installments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_parameters` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payku_transactions`
--

CREATE TABLE `payku_transactions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` int UNSIGNED DEFAULT NULL,
  `notified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_channels`
--

CREATE TABLE `payment_channels` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_channels`
--

INSERT INTO `payment_channels` (`id`, `title`, `class_name`, `status`, `image`, `settings`, `created_at`) VALUES
(19, 'Paypal', 'Paypal', 'active', '/store/1/default_images/payment gateways/paypal.png', '', '1654755044'),
(23, 'Payu', 'Payu', 'active', '/store/1/default_images/payment gateways/payu.png', '', '1654755044'),
(24, 'Razorpay', 'Razorpay', 'active', '/store/1/default_images/payment gateways/razorpay.png', '', '1654755044');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `account_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_bank_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('waiting','done','reject') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `payu_transactions`
--

CREATE TABLE `payu_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `paid_for_id` bigint UNSIGNED DEFAULT NULL,
  `paid_for_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','failed','successful','invalid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `allow` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `section_id`, `allow`) VALUES
(11950, 2, 1, 1),
(11951, 2, 2, 1),
(11952, 2, 3, 1),
(11953, 2, 4, 1),
(11954, 2, 5, 1),
(11955, 2, 6, 1),
(11956, 2, 7, 1),
(11957, 2, 8, 1),
(11958, 2, 9, 1),
(11959, 2, 10, 1),
(11960, 2, 11, 1),
(11961, 2, 12, 1),
(11962, 2, 13, 1),
(11963, 2, 14, 1),
(11964, 2, 15, 1),
(11965, 2, 16, 1),
(11966, 2, 17, 1),
(11967, 2, 25, 1),
(11968, 2, 26, 1),
(11969, 2, 50, 1),
(11970, 2, 51, 1),
(11971, 2, 52, 1),
(11972, 2, 53, 1),
(11973, 2, 54, 1),
(11974, 2, 100, 1),
(11975, 2, 101, 1),
(11976, 2, 102, 1),
(11977, 2, 103, 1),
(11978, 2, 104, 1),
(11979, 2, 105, 1),
(11980, 2, 106, 1),
(11981, 2, 107, 1),
(11982, 2, 108, 1),
(11983, 2, 109, 1),
(11984, 2, 110, 1),
(11985, 2, 111, 1),
(11986, 2, 112, 1),
(11987, 2, 113, 1),
(11988, 2, 114, 1),
(11989, 2, 115, 1),
(11990, 2, 116, 1),
(11991, 2, 117, 1),
(11992, 2, 150, 1),
(11993, 2, 151, 1),
(11994, 2, 152, 1),
(11995, 2, 153, 1),
(11996, 2, 154, 1),
(11997, 2, 155, 1),
(11998, 2, 156, 1),
(11999, 2, 157, 1),
(12000, 2, 158, 1),
(12001, 2, 159, 1),
(12002, 2, 160, 1),
(12003, 2, 161, 1),
(12004, 2, 162, 1),
(12005, 2, 163, 1),
(12006, 2, 164, 1),
(12007, 2, 165, 1),
(12008, 2, 200, 1),
(12009, 2, 201, 1),
(12010, 2, 202, 1),
(12011, 2, 203, 1),
(12012, 2, 204, 1),
(12013, 2, 205, 1),
(12014, 2, 206, 1),
(12015, 2, 207, 1),
(12016, 2, 208, 1),
(12017, 2, 250, 1),
(12018, 2, 251, 1),
(12019, 2, 252, 1),
(12020, 2, 253, 1),
(12021, 2, 254, 1),
(12022, 2, 300, 1),
(12023, 2, 301, 1),
(12024, 2, 302, 1),
(12025, 2, 303, 1),
(12026, 2, 304, 1),
(12027, 2, 350, 1),
(12028, 2, 351, 1),
(12029, 2, 352, 1),
(12030, 2, 353, 1),
(12031, 2, 354, 1),
(12032, 2, 355, 1),
(12033, 2, 356, 1),
(12034, 2, 357, 1),
(12035, 2, 400, 1),
(12036, 2, 401, 1),
(12037, 2, 402, 1),
(12038, 2, 403, 1),
(12039, 2, 404, 1),
(12040, 2, 405, 1),
(12041, 2, 450, 1),
(12042, 2, 451, 1),
(12043, 2, 452, 1),
(12044, 2, 453, 1),
(12045, 2, 454, 1),
(12046, 2, 455, 1),
(12047, 2, 456, 1),
(12048, 2, 457, 1),
(12049, 2, 458, 1),
(12050, 2, 459, 1),
(12051, 2, 460, 1),
(12052, 2, 500, 1),
(12053, 2, 501, 1),
(12054, 2, 502, 1),
(12055, 2, 503, 1),
(12056, 2, 504, 1),
(12057, 2, 505, 1),
(12058, 2, 550, 1),
(12059, 2, 551, 1),
(12060, 2, 552, 1),
(12061, 2, 553, 1),
(12062, 2, 554, 1),
(12063, 2, 555, 1),
(12064, 2, 600, 1),
(12065, 2, 601, 1),
(12066, 2, 602, 1),
(12067, 2, 603, 1),
(12068, 2, 650, 1),
(12069, 2, 651, 1),
(12070, 2, 652, 1),
(12071, 2, 653, 1),
(12072, 2, 654, 1),
(12073, 2, 655, 1),
(12074, 2, 656, 1),
(12075, 2, 657, 1),
(12076, 2, 658, 1),
(12077, 2, 700, 1),
(12078, 2, 701, 1),
(12079, 2, 702, 1),
(12080, 2, 703, 1),
(12081, 2, 704, 1),
(12082, 2, 705, 1),
(12083, 2, 706, 1),
(12084, 2, 707, 1),
(12085, 2, 708, 1),
(12086, 2, 750, 1),
(12087, 2, 751, 1),
(12088, 2, 752, 1),
(12089, 2, 753, 1),
(12090, 2, 754, 1),
(12091, 2, 800, 1),
(12092, 2, 801, 1),
(12093, 2, 802, 1),
(12094, 2, 803, 1),
(12095, 2, 850, 1),
(12096, 2, 851, 1),
(12097, 2, 852, 1),
(12098, 2, 853, 1),
(12099, 2, 854, 1),
(12100, 2, 900, 1),
(12101, 2, 901, 1),
(12102, 2, 902, 1),
(12103, 2, 903, 1),
(12104, 2, 904, 1),
(12105, 2, 950, 1),
(12106, 2, 951, 1),
(12107, 2, 952, 1),
(12108, 2, 953, 1),
(12109, 2, 954, 1),
(12110, 2, 955, 1),
(12111, 2, 956, 1),
(12112, 2, 957, 1),
(12113, 2, 958, 1),
(12114, 2, 959, 1),
(12115, 2, 1000, 1),
(12116, 2, 1001, 1),
(12117, 2, 1002, 1),
(12118, 2, 1003, 1),
(12119, 2, 1004, 1),
(12120, 2, 1050, 1),
(12121, 2, 1051, 1),
(12122, 2, 1052, 1),
(12123, 2, 1053, 1),
(12124, 2, 1054, 1),
(12125, 2, 1055, 1),
(12126, 2, 1056, 1),
(12127, 2, 1057, 1),
(12128, 2, 1058, 1),
(12129, 2, 1059, 1),
(12130, 2, 1060, 1),
(12131, 2, 1075, 1),
(12132, 2, 1076, 1),
(12133, 2, 1077, 1),
(12134, 2, 1078, 1),
(12135, 2, 1079, 1),
(12136, 2, 1080, 1),
(12137, 2, 1081, 1),
(12138, 2, 1082, 1),
(12139, 2, 1083, 1),
(12140, 2, 1100, 1),
(12141, 2, 1101, 1),
(12142, 2, 1102, 1),
(12143, 2, 1103, 1),
(12144, 2, 1104, 1),
(12145, 2, 1150, 1),
(12146, 2, 1151, 1),
(12147, 2, 1152, 1),
(12148, 2, 1153, 1),
(12149, 2, 1154, 1),
(12150, 2, 1200, 1),
(12151, 2, 1201, 1),
(12152, 2, 1202, 1),
(12153, 2, 1203, 1),
(12154, 2, 1204, 1),
(12155, 2, 1230, 1),
(12156, 2, 1231, 1),
(12157, 2, 1232, 1),
(12158, 2, 1233, 1),
(12159, 2, 1234, 1),
(12160, 2, 1235, 1),
(12161, 2, 1250, 1),
(12162, 2, 1251, 1),
(12163, 2, 1252, 1),
(12164, 2, 1253, 1),
(12165, 2, 1300, 1),
(12166, 2, 1301, 1),
(12167, 2, 1302, 1),
(12168, 2, 1303, 1),
(12169, 2, 1304, 1),
(12170, 2, 1305, 1),
(12171, 2, 1350, 1),
(12172, 2, 1351, 1),
(12173, 2, 1352, 1),
(12174, 2, 1353, 1),
(12175, 2, 1354, 1),
(12176, 2, 1355, 1),
(12177, 2, 1400, 1),
(12178, 2, 1401, 1),
(12179, 2, 1402, 1),
(12180, 2, 1403, 1),
(12181, 2, 1404, 1),
(12182, 2, 1405, 1),
(12183, 2, 1406, 1),
(12184, 2, 1407, 1),
(12185, 2, 1408, 1),
(12186, 2, 1409, 1),
(12187, 2, 1410, 1),
(12188, 2, 1411, 1),
(12189, 2, 1412, 1),
(12190, 2, 1413, 1),
(12191, 2, 1414, 1),
(12192, 2, 1415, 1),
(12193, 2, 1450, 1),
(12194, 2, 1451, 1),
(12195, 2, 1452, 1),
(12196, 2, 1453, 1),
(12197, 2, 1454, 1),
(12198, 2, 1455, 1),
(12199, 2, 1456, 1),
(12200, 2, 1457, 1),
(12201, 2, 1500, 1),
(12202, 2, 1501, 1),
(12203, 2, 1502, 1),
(12204, 2, 1503, 1),
(12205, 2, 1504, 1),
(12206, 2, 1550, 1),
(12207, 2, 1551, 1),
(12208, 2, 1552, 1),
(12209, 2, 1553, 1),
(12210, 2, 1554, 1),
(12211, 2, 1600, 1),
(12212, 2, 1601, 1),
(12213, 2, 1602, 1),
(12214, 2, 1603, 1),
(12215, 2, 1604, 1),
(12216, 2, 1650, 1),
(12217, 2, 1651, 1),
(12218, 2, 1652, 1),
(12219, 2, 1675, 1),
(12220, 2, 1676, 1),
(12221, 2, 1677, 1),
(12222, 2, 1678, 1),
(12223, 2, 1725, 1),
(12224, 2, 1726, 1),
(12225, 2, 1727, 1),
(12226, 2, 1728, 1),
(12227, 2, 1729, 1),
(12228, 2, 1730, 1),
(12229, 2, 1731, 1),
(12230, 2, 1732, 1),
(12231, 2, 1750, 1),
(12232, 2, 1751, 1),
(12233, 2, 1752, 1),
(12234, 2, 1753, 1),
(12235, 2, 1754, 1),
(12236, 2, 1775, 1),
(12237, 2, 1776, 1),
(12238, 2, 1777, 1),
(12239, 2, 1778, 1),
(12240, 2, 1779, 1),
(12241, 2, 1780, 1),
(12242, 2, 1781, 1),
(12243, 2, 1800, 1),
(12244, 2, 1801, 1),
(12245, 2, 1802, 1),
(12246, 2, 1803, 1),
(12247, 2, 1804, 1),
(12248, 2, 1805, 1),
(12249, 2, 1806, 1),
(12250, 2, 1807, 1),
(12251, 2, 1808, 1),
(12252, 2, 1809, 1),
(12253, 2, 1810, 1),
(12254, 2, 1811, 1),
(12255, 2, 1812, 1),
(12256, 2, 1813, 1),
(12257, 2, 1814, 1),
(12258, 2, 1815, 1),
(12259, 2, 1816, 1),
(12260, 2, 1817, 1),
(12261, 2, 1818, 1),
(12262, 2, 1819, 1),
(12263, 2, 1820, 1),
(12264, 2, 1821, 1),
(12265, 2, 1822, 1),
(12266, 2, 1823, 1),
(12267, 2, 1824, 1),
(12268, 2, 1825, 1),
(12269, 2, 1826, 1),
(12270, 2, 1827, 1),
(12271, 2, 1828, 1),
(12272, 2, 1829, 1),
(12273, 2, 1830, 1),
(12274, 2, 1831, 1),
(12275, 2, 1832, 1),
(12276, 2, 1833, 1),
(12277, 2, 1834, 1),
(12278, 2, 1835, 1),
(12279, 2, 1836, 1),
(12280, 2, 1837, 1),
(12281, 2, 1838, 1),
(12282, 2, 1850, 1),
(12283, 2, 1851, 1),
(12284, 2, 1852, 1),
(12285, 2, 1853, 1),
(12286, 2, 1875, 1),
(12287, 2, 1876, 1),
(12288, 2, 1877, 1),
(12289, 2, 1900, 1),
(12290, 2, 1901, 1),
(12291, 2, 1902, 1),
(12292, 2, 1903, 1),
(12293, 2, 1904, 1),
(12294, 2, 1905, 1),
(12295, 2, 1925, 1),
(12296, 2, 1926, 1),
(12297, 2, 1927, 1),
(12298, 2, 1928, 1),
(12299, 2, 1929, 1),
(12300, 2, 1930, 1),
(12301, 2, 1931, 1),
(12302, 2, 1932, 1),
(12303, 2, 1933, 1),
(12304, 2, 1934, 1),
(12305, 2, 1950, 1),
(12306, 2, 1951, 1),
(12307, 2, 1952, 1),
(12308, 2, 1953, 1),
(12309, 2, 1954, 1),
(12310, 2, 1975, 1),
(12311, 2, 1976, 1),
(12312, 2, 1977, 1),
(12313, 2, 1978, 1),
(12314, 2, 1979, 1),
(12315, 2, 2000, 1),
(12316, 2, 2001, 1),
(12317, 2, 2015, 1),
(12318, 2, 2016, 1),
(12319, 2, 2017, 1),
(12320, 2, 2018, 1),
(12321, 2, 2019, 1),
(12322, 2, 2020, 1),
(12323, 2, 2021, 1),
(12324, 2, 2030, 1),
(12325, 2, 2031, 1),
(12326, 2, 2032, 1),
(12327, 6, 1, 1),
(12328, 6, 2, 1),
(12329, 6, 3, 1),
(12330, 6, 4, 1),
(12331, 6, 5, 1),
(12332, 6, 6, 1),
(12333, 6, 7, 1),
(12334, 6, 8, 1),
(12335, 6, 9, 1),
(12336, 6, 10, 1),
(12337, 6, 11, 1),
(12338, 6, 12, 1),
(12339, 6, 13, 1),
(12340, 6, 14, 1),
(12341, 6, 15, 1),
(12342, 6, 16, 1),
(12343, 6, 17, 1),
(12344, 6, 700, 1),
(12345, 6, 701, 1),
(12346, 6, 702, 1),
(12347, 6, 703, 1),
(12348, 6, 704, 1),
(12349, 6, 705, 1),
(12350, 6, 706, 1),
(12351, 6, 707, 1),
(12352, 6, 708, 1),
(12353, 2, 2034, 1),
(12354, 4, 2034, 1),
(12355, 2, 2033, 1),
(12356, 4, 2033, 1),
(12397, 8, 1, 1),
(12398, 8, 2, 1),
(12399, 8, 17, 1),
(12400, 8, 100, 1),
(12401, 8, 102, 1),
(12402, 8, 105, 1),
(12403, 8, 106, 1),
(12404, 8, 107, 1),
(12405, 8, 2015, 1),
(12406, 8, 2017, 1),
(12407, 8, 2018, 1),
(12408, 8, 2019, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisites`
--

CREATE TABLE `prerequisites` (
  `id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `prerequisite_id` int UNSIGNED NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `order` int UNSIGNED DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `type` enum('virtual','physical') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `price` bigint UNSIGNED DEFAULT NULL,
  `point` bigint UNSIGNED DEFAULT NULL,
  `unlimited_inventory` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(1) NOT NULL DEFAULT '0',
  `inventory` int UNSIGNED DEFAULT NULL,
  `inventory_warning` int UNSIGNED DEFAULT NULL,
  `inventory_updated_at` bigint UNSIGNED DEFAULT NULL,
  `delivery_fee` bigint UNSIGNED DEFAULT NULL,
  `delivery_estimated_time` int UNSIGNED DEFAULT NULL,
  `message_for_reviewer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tax` int UNSIGNED DEFAULT NULL,
  `commission` int UNSIGNED DEFAULT NULL,
  `status` enum('active','pending','draft','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` bigint UNSIGNED NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `creator_id`, `type`, `slug`, `category_id`, `price`, `point`, `unlimited_inventory`, `ordering`, `inventory`, `inventory_warning`, `inventory_updated_at`, `delivery_fee`, `delivery_estimated_time`, `message_for_reviewer`, `tax`, `commission`, `status`, `updated_at`, `created_at`) VALUES
(6, 1, 'virtual', 'Where-the-Crawdads-Sing-e-book', 3, 20, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1656322425, 1656321480);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `icon`, `order`) VALUES
(1, NULL, '/store/1/default_images/categories_icons/feather.png', NULL),
(2, NULL, '/store/1/default_images/categories_icons/pie-chart.png', NULL),
(3, NULL, '/store/1/default_images/categories_icons/umbrella.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category_translations`
--

CREATE TABLE `product_category_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_category_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category_translations`
--

INSERT INTO `product_category_translations` (`id`, `product_category_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Design Tools'),
(2, 2, 'en', 'Science Tools'),
(3, 3, 'en', 'e-book');

-- --------------------------------------------------------

--
-- Table structure for table `product_discounts`
--

CREATE TABLE `product_discounts` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent` int UNSIGNED NOT NULL,
  `count` int UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` int UNSIGNED NOT NULL,
  `end_date` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_faqs`
--

CREATE TABLE `product_faqs` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_faq_translations`
--

CREATE TABLE `product_faq_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_faq_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_files`
--

CREATE TABLE `product_files` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_viewer` tinyint(1) NOT NULL DEFAULT '0',
  `order` int UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_files`
--

INSERT INTO `product_files` (`id`, `creator_id`, `product_id`, `path`, `file_type`, `volume`, `online_viewer`, `order`, `status`, `created_at`) VALUES
(5, 1, 6, '/store/1/Where-the-Crawdads-Sing.pdf', 'pdf', '3', 1, NULL, 'active', 1656322274);

-- --------------------------------------------------------

--
-- Table structure for table `product_file_translations`
--

CREATE TABLE `product_file_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_file_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_file_translations`
--

INSERT INTO `product_file_translations` (`id`, `product_file_id`, `locale`, `title`, `description`) VALUES
(5, 5, 'en', 'Where the Crawdads Sing e-book', 'Where the Crawdads Sing is at once an exquisite ode to the natural world, a heartbreaking coming-of-age story, and a surprising tale of possible murder. Owens reminds us that we are forever shaped by the children we once were, and that we are all subject to the beautiful and violent secrets that nature keeps.');

-- --------------------------------------------------------

--
-- Table structure for table `product_filters`
--

CREATE TABLE `product_filters` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_filters`
--

INSERT INTO `product_filters` (`id`, `category_id`) VALUES
(1, 1),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_filter_options`
--

CREATE TABLE `product_filter_options` (
  `id` int UNSIGNED NOT NULL,
  `filter_id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_filter_options`
--

INSERT INTO `product_filter_options` (`id`, `filter_id`, `order`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_filter_option_translations`
--

CREATE TABLE `product_filter_option_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_filter_option_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_filter_option_translations`
--

INSERT INTO `product_filter_option_translations` (`id`, `product_filter_option_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Brushes'),
(2, 2, 'en', 'Novel'),
(3, 3, 'en', 'Laguage learning'),
(4, 4, 'en', 'Scientific');

-- --------------------------------------------------------

--
-- Table structure for table `product_filter_translations`
--

CREATE TABLE `product_filter_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_filter_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_filter_translations`
--

INSERT INTO `product_filter_translations` (`id`, `product_filter_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Paint Tools'),
(2, 2, 'en', 'Type');

-- --------------------------------------------------------

--
-- Table structure for table `product_media`
--

CREATE TABLE `product_media` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `type` enum('thumbnail','image','video') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_media`
--

INSERT INTO `product_media` (`id`, `creator_id`, `product_id`, `type`, `path`, `order`, `created_at`) VALUES
(77, 1, 6, 'thumbnail', '/store/1/default_images/Where the Crawdads Sing e-book.jpg', NULL, 1656322425),
(78, 1, 6, 'image', '/store/1/default_images/Where the Crawdads Sing e-book_1.jpg', NULL, 1656322425),
(79, 1, 6, 'image', '/store/1/default_images/Where the Crawdads Sing e-book_2.jpg', NULL, 1656322425);

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `seller_id` int UNSIGNED NOT NULL,
  `buyer_id` int UNSIGNED NOT NULL,
  `sale_id` int UNSIGNED DEFAULT NULL,
  `specifications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quantity` int UNSIGNED NOT NULL,
  `discount_id` int UNSIGNED DEFAULT NULL,
  `message_to_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tracking_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','waiting_delivery','shipped','success','canceled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `product_id`, `seller_id`, `buyer_id`, `sale_id`, `specifications`, `quantity`, `discount_id`, `message_to_seller`, `tracking_code`, `status`, `created_at`) VALUES
(1, 4, 1016, 995, 193, NULL, 1, NULL, NULL, NULL, 'success', 1656103830),
(2, 1, 1015, 923, 194, '{\"Size\":\"Small\"}', 1, NULL, 'Please deliver faster.\r\nRegards.', NULL, 'waiting_delivery', 1656104034),
(3, 2, 934, 930, 196, NULL, 1, NULL, NULL, NULL, 'waiting_delivery', 1656130623),
(4, 5, 1015, 996, 197, NULL, 1, NULL, NULL, NULL, 'success', 1656130950),
(5, 1, 1015, 1017, 200, '{\"Size\":\"Medium\"}', 1, 1, NULL, '43956044000324128', 'success', 1656148501),
(6, 1, 1015, 995, 201, '{\"Size\":\"Small\"}', 2, 1, 'Please deliver fast.\r\nRegards.', '596324000328246', 'shipped', 1656148667),
(7, 6, 1, 995, 202, NULL, 1, NULL, NULL, NULL, 'success', 1656322618);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `product_quality` int UNSIGNED NOT NULL,
  `purchase_worth` int UNSIGNED NOT NULL,
  `delivery_quality` int UNSIGNED NOT NULL,
  `seller_quality` int UNSIGNED NOT NULL,
  `rates` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int UNSIGNED NOT NULL,
  `status` enum('pending','active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_selected_filter_options`
--

CREATE TABLE `product_selected_filter_options` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `filter_option_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_selected_filter_options`
--

INSERT INTO `product_selected_filter_options` (`id`, `product_id`, `filter_option_id`) VALUES
(16, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_selected_specifications`
--

CREATE TABLE `product_selected_specifications` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `product_specification_id` int UNSIGNED NOT NULL,
  `type` enum('textarea','multi_value') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `allow_selection` tinyint(1) NOT NULL DEFAULT '0',
  `order` int UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_selected_specifications`
--

INSERT INTO `product_selected_specifications` (`id`, `creator_id`, `product_id`, `product_specification_id`, `type`, `allow_selection`, `order`, `status`, `created_at`) VALUES
(6, 1, 6, 5, 'multi_value', 0, NULL, 'active', 1656322503),
(7, 1, 6, 4, 'textarea', 0, NULL, 'active', 1656322546);

-- --------------------------------------------------------

--
-- Table structure for table `product_selected_specification_multi_values`
--

CREATE TABLE `product_selected_specification_multi_values` (
  `id` int UNSIGNED NOT NULL,
  `selected_specification_id` int UNSIGNED NOT NULL,
  `specification_multi_value_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_selected_specification_multi_values`
--

INSERT INTO `product_selected_specification_multi_values` (`id`, `selected_specification_id`, `specification_multi_value_id`) VALUES
(10, 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `product_selected_specification_translations`
--

CREATE TABLE `product_selected_specification_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_selected_specification_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_selected_specification_translations`
--

INSERT INTO `product_selected_specification_translations` (`id`, `product_selected_specification_id`, `locale`, `value`) VALUES
(2, 7, 'en', 'Publisher ‏ : ‎ Penguin Publishing Group (March 30, 2021)\r\nLanguage ‏ : ‎ English\r\nPaperback ‏ : ‎ 400 pages\r\nISBN-10 ‏ : ‎ 0735219109\r\nISBN-13 ‏ : ‎ 978-0735219106\r\nItem Weight ‏ : ‎ 11.2 ounces\r\nDimensions ‏ : ‎ 5.5 x 0.79 x 8.22 inches');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` int UNSIGNED NOT NULL,
  `input_type` enum('textarea','multi_value') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `input_type`) VALUES
(1, 'multi_value'),
(2, 'multi_value'),
(3, 'multi_value'),
(4, 'textarea'),
(5, 'multi_value');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_categories`
--

CREATE TABLE `product_specification_categories` (
  `id` int UNSIGNED NOT NULL,
  `specification_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_categories`
--

INSERT INTO `product_specification_categories` (`id`, `specification_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(5, 5, 3),
(6, 4, 1),
(7, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_multi_values`
--

CREATE TABLE `product_specification_multi_values` (
  `id` int UNSIGNED NOT NULL,
  `specification_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_multi_values`
--

INSERT INTO `product_specification_multi_values` (`id`, `specification_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 5),
(12, 5),
(13, 5),
(14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_multi_value_translations`
--

CREATE TABLE `product_specification_multi_value_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_specification_multi_value_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_multi_value_translations`
--

INSERT INTO `product_specification_multi_value_translations` (`id`, `product_specification_multi_value_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Small'),
(2, 2, 'en', 'Medium'),
(3, 3, 'en', 'Large'),
(4, 4, 'en', 'Basic'),
(5, 5, 'en', 'Advanced'),
(6, 6, 'en', '3-5'),
(7, 7, 'en', '5-8'),
(8, 8, 'en', '8-13'),
(9, 9, 'en', '13-18'),
(10, 10, 'en', '+18'),
(11, 11, 'en', 'Novel'),
(12, 12, 'en', 'Language learning'),
(13, 13, 'en', 'Scientific'),
(14, 14, 'en', 'literature');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_translations`
--

CREATE TABLE `product_specification_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_specification_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_translations`
--

INSERT INTO `product_specification_translations` (`id`, `product_specification_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Size'),
(2, 2, 'en', 'Skill Level'),
(3, 3, 'en', 'Age Range'),
(4, 4, 'en', 'Main Features'),
(5, 5, 'en', 'E-book type');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `title`, `seo_description`, `summary`, `description`) VALUES
(6, 6, 'en', 'Where the Crawdads Sing e-book', 'The #1 New York Times bestselling worldwide sensation with more than 12 million copies sold', 'SOON TO BE A MAJOR MOTION PICTURE—The #1 New York Times bestselling worldwide sensation with more than 12 million copies sold, hailed by The New York Times Book Review as “a painfully beautiful first novel that is at once a murder mystery, a coming-of-age narrative and a celebration of nature.”\r\n\r\nFor years, rumors of the “Marsh Girl” have haunted Barkley Cove, a quiet town on the North Carolina coast. So in late 1969, when handsome Chase Andrews is found dead, the locals immediately suspect Kya Clark, the so-called Marsh Girl. But Kya is not what they say. Sensitive and intelligent, she has survived for years alone in the marsh that she calls home, finding friends in the gulls and lessons in the sand. Then the time comes when she yearns to be touched and loved. When two young men from town become intrigued by her wild beauty, Kya opens herself to a new life—until the unthinkable happens.\r\n\r\nWhere the Crawdads Sing is at once an exquisite ode to the natural world, a heartbreaking coming-of-age story, and a surprising tale of possible murder. Owens reminds us that we are forever shaped by the children we once were and that we are all subject to the beautiful and violent secrets that nature keeps.', '<div>“A painfully beautiful first novel that is at once a murder mystery, a coming-of-age narrative and a celebration of nature....Owens here surveys the desolate marshlands of the North Carolina coast through the eyes of an abandoned child. And in her isolation that child makes us open our own eyes to the secret wonders—and dangers—of her private world.”—The New York Times Book Review</div><div><br></div><div>“Steeped in the rhythms and shadows of the coastal marshes of North Carolina’s Outer Banks, this fierce and hauntingly beautiful novel centers on...Kya’s heartbreaking story of learning to trust human connections, intertwine[d] with a gripping murder mystery, revealing savage truths. An astonishing debut.”—People</div><div><br></div><div>“This lush mystery is perfect for fans of Barbara Kingsolver.”—Bustle</div><div><br></div><div>“A lush debut novel, Owens delivers her mystery wrapped in gorgeous, lyrical prose. It’s clear she’s from this place—the land of the southern coasts, but also the emotional terrain—you can feel it in the pages.  A magnificent achievement, ambitious, credible and very timely.”—Alexandra Fuller, New York Times bestselling author of Don’t Let’s Go to the Dogs Tonight</div><div><br></div><div>“Heart-wrenching...A fresh exploration of isolation and nature from a female perspective along with a compelling love story.”—Entertainment Weekly</div><div><br></div><div>“This wonderful novel has a bit of everything—mystery, romance, and fascinating characters, all told in a story that takes place in North Carolina.”—Nicholas Sparks, New York Times bestselling author of Every Breath</div><div><br></div><div>“Delia Owen’s gorgeous novel is both a coming-of-age tale and an engrossing whodunit.”—Real Simple</div><div><br></div><div>“Evocative...Kya makes for an unforgettable heroine.”—Publishers Weekly</div><div><br></div><div>“The New Southern novel...A lyrical debut.”—Southern Living</div><div><br></div><div>“A nature-infused romance with a killer twist.”—Refinery29</div><div><br></div><div>“Anyone who liked The Great Alone will want to read Where the Crawdads Sing....This astonishing debut is a beautiful and haunting novel that packs a powerful punch. It’s the first novel in a long time that made me cry.”—Kristin Hannah, author ofThe Great AloneandThe Nightingale</div><div><br></div><div>“Both a coming-of-age story and a mysterious account of a murder investigation told from the perspective of a young girl...Through Kya’s story, Owens explores how isolation affects human behavior, and the deep effect that rejection can have on our lives.”—Vanity Fair</div><div><br></div><div>“Lyrical...Its appeal ris[es] from Kya’s deep connection to the place where makes her home, and to all of its creatures.”—Booklist</div><div><br></div><div>“This beautiful, evocative novel is likely to stay with you for many days afterward....absorbing.”—AARP </div><div><br></div><div>“This haunting tale captivates every bit as much for its crime drama elements as for the humanity at its core.” —Mystery & Suspense Magazine</div><div><br></div><div>“Compelling, original...A mystery, a courtroom drama, a romance and a coming-of-age story, Where the Crawdads Sing is a moving, beautiful tale. Readers will remember Kya for a long, long time.”—ShelfAwareness</div><div><br></div><div>“With prose luminous as a low-country moon, Owens weaves a compelling tale of a forgotten girl in the unforgiving coastal marshes of North Carolina. It is a murder mystery/love story/courtroom drama that readers will love, but the novel delves so much deeper into the bone and sinew of our very nature, asking often unanswerable questions, old and intractable as the marsh itself. A stunning debut!”—Christopher Scotton, author of The Secret Wisdom of the Earth</div><div><br></div><div>“A compelling mystery with prose so luminous it can cut through the murkiest of pluff mud.”—Augusta Chronicle</div><div><br></div><div>“Carries the rhythm of an old time ballad. It is clear Owens knows this land intimately, from the black mud sucking at footsteps to the taste of saltwater and the cry of seagulls.”—David Joy, author of The Line That Held Us</div>');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int UNSIGNED NOT NULL,
  `days` int UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `days`, `price`, `icon`, `is_popular`, `created_at`) VALUES
(2, 15, 150, '/store/1/default_images/subscribe_packages/gold.png', 1, 1635446032),
(3, 15, 50, '/store/1/default_images/subscribe_packages/bronze.png', 0, 1646415095),
(4, 15, 90, '/store/1/default_images/subscribe_packages/silver.png', 0, 1635446095);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_translations`
--

CREATE TABLE `promotion_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `promotion_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_translations`
--

INSERT INTO `promotion_translations` (`id`, `promotion_id`, `locale`, `title`, `description`) VALUES
(1, 2, 'en', 'Gold', 'One of your classes will be displayed at the top of the category list and homepage slider'),
(2, 3, 'en', 'Bronze', 'One of your classes will be displayed at the top of the category list'),
(3, 4, 'en', 'Silver', 'One of your classes will be displayed at the homepage slider'),
(4, 2, 'es', 'Oro', 'Una de sus clases se mostrará en la parte superior de la lista de categorías y el control deslizante de la página de inicio.'),
(5, 2, 'ar', 'ذهب', 'سيتم عرض أحد فصولك الدراسية في أعلى قائمة الفئات وشريط تمرير الصفحة الرئيسية'),
(6, 4, 'ar', 'فضة', 'سيتم عرض إحدى فصولك الدراسية في شريط تمرير الصفحة الرئيسية'),
(7, 4, 'es', 'Plata', 'Una de sus clases se mostrará en el control deslizante de la página de inicio.'),
(8, 3, 'ar', 'برونزية', 'سيتم عرض أحد فصولك في أعلى قائمة الفئات'),
(9, 3, 'es', 'Bronce', 'Una de sus clases se mostrará en la parte superior de la lista de categorías.');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `chapter_id` int UNSIGNED DEFAULT NULL,
  `webinar_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int DEFAULT '0',
  `attempt` int DEFAULT NULL,
  `pass_mark` int NOT NULL,
  `certificate` tinyint(1) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_mark` int UNSIGNED DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions`
--

CREATE TABLE `quizzes_questions` (
  `id` int UNSIGNED NOT NULL,
  `quiz_id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('multiple','descriptive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answers`
--

CREATE TABLE `quizzes_questions_answers` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `question_id` int UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `correct` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answer_translations`
--

CREATE TABLE `quizzes_questions_answer_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `quizzes_questions_answer_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_results`
--

CREATE TABLE `quizzes_results` (
  `id` int UNSIGNED NOT NULL,
  `quiz_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `results` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_grade` int DEFAULT NULL,
  `status` enum('passed','failed','waiting') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question_translations`
--

CREATE TABLE `quiz_question_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `quizzes_question_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_translations`
--

CREATE TABLE `quiz_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `quiz_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `rate` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int UNSIGNED NOT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `province_id` int UNSIGNED DEFAULT NULL,
  `city_id` int UNSIGNED DEFAULT NULL,
  `geo_center` point DEFAULT NULL,
  `type` enum('country','province','city','district') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `country_id`, `province_id`, `city_id`, `geo_center`, `type`, `title`, `created_at`) VALUES
(16, NULL, NULL, NULL, 0x000000000101000000502c37a3fd2748400000000000910440, 'country', 'France', 1646175250),
(17, NULL, NULL, NULL, 0x000000000101000000cc4c51ad1a29374000000000509c5340, 'country', 'India', 1646045215),
(18, NULL, NULL, NULL, 0x000000000101000000fc87794512fd434000000000787e58c0, 'country', 'United States', 1646208799),
(19, NULL, NULL, NULL, 0x000000000101000000c399e9d9582130400000000040da3240, 'country', 'Chad', 1646045318),
(20, NULL, NULL, NULL, 0x000000000101000000c914e2b7f634384000000000e0634640, 'country', 'Saudi Arabia', 1646045651),
(21, 16, NULL, NULL, 0x000000000101000000b7417d8d9700484000000000c01709c0, 'province', 'Brittany', 1646175600),
(22, 16, NULL, NULL, 0x000000000101000000c28d5422c26d484000000000e0b20240, 'province', 'Île-de-France', 1646176998),
(23, 16, 22, NULL, 0x00000000010100000043242b8d136e4840f6ffffff3dcd0240, 'city', 'Paris', 1646177038),
(24, 16, 22, 23, 0x000000000101000000f4056521416f4840f7ffff7f315a0240, 'district', 'Chaillot', 1646177131),
(25, 16, 22, 23, 0x000000000101000000fecb2c1406684840f9ffff7f26fc0140, 'district', 'Le val', 1646177195),
(26, 16, 22, 23, 0x000000000101000000da05b69e8a6d484008000000cd2e0340, 'district', 'Charonne', 1646177249),
(27, 17, NULL, NULL, 0x00000000010100000032073e5acab03c4004000000934a5340, 'province', 'Delhi', 1646177430),
(28, 17, NULL, NULL, 0x000000000101000000e7331bb0e31333400200008025395240, 'province', 'Maharashtra', 1646177529),
(29, 17, 27, NULL, 0x0000000001010000004ea45133209e3c4002000050f54c5340, 'city', 'New Delhi', 1646177585),
(30, 17, 28, NULL, 0x0000000001010000000fd66a9d27f13240040000305b355240, 'city', 'Mumbai', 1646177660),
(31, 20, NULL, NULL, 0x0000000001010000005aa3dd6a75923840070000004acf4340, 'province', 'Medina', 1646207588),
(32, 20, 31, NULL, 0x0000000001010000007522ebce077938400500005028ce4340, 'city', 'Medina', 1646207641),
(33, 20, NULL, NULL, 0x000000000101000000f87d72b19dd33840000000007c5d4740, 'province', 'Riyadh', 1646207846),
(34, 20, 33, NULL, 0x0000000001010000003352eaadc2a23840050000207c5b4740, 'city', 'Riyadh', 1646207899),
(35, 17, 27, 29, 0x000000000101000000677eaddc83933c40000000f4e44f5340, 'district', 'Jal vihar', 1646208038),
(36, 17, 27, 29, 0x0000000001010000000c564b253b8f3c40030000f4f54d5340, 'district', 'Anand lok', 1646208100),
(37, 17, 28, 30, 0x000000000101000000744a1102cef732400000003c9b345240, 'district', 'Tardeo', 1646208151),
(38, 17, 28, 30, 0x000000000101000000e1347d6ea4ed32400000009235355240, 'district', 'Kala ghoda', 1646208227),
(39, 17, 28, 30, 0x0000000001010000007f59b3f397003340feffffa36f345240, 'district', 'Nehru nagar', 1646208287),
(40, 20, 31, 32, 0x0000000001010000009f9a107be67a3840fcfffff32bcc4340, 'district', 'Al fath', 1646208357),
(41, 20, 31, 32, 0x0000000001010000004a9335c11e7c384001000084fbd54340, 'district', 'Al mabuth', 1646208449),
(42, 20, 33, 34, 0x000000000101000000ecdbbe5e4ca438400400001821554740, 'district', 'Al rafiah', 1646208501),
(43, 20, 33, 34, 0x00000000010100000047a393f74fa83840fdffff8f195d4740, 'district', 'Al malaz', 1646208541),
(44, 20, 33, 34, 0x000000000101000000b3cc5d99029b384004000090d3574740, 'district', 'Sultanah', 1646208741),
(45, 18, NULL, NULL, 0x0000000001010000008a421c62479242402300000002ef5dc0, 'province', 'California', 1646208923),
(46, 18, NULL, NULL, 0x00000000010100000073bb0212f86a4540000000006add52c0, 'province', 'New York', 1646209125),
(47, 18, 45, NULL, 0x000000000101000000c0eb475b13e44240e2ffffafd29a5ec0, 'city', 'San Francisco', 1646209213),
(48, 18, 45, NULL, 0x000000000101000000996d3806e37c4240f8fffff7ee815ec0, 'city', 'Santa Cruz', 1646209310),
(49, 18, 46, NULL, 0x0000000001010000002ff3954dd15d4440020000504b7f52c0, 'city', 'New York', 1646209459),
(50, 18, 46, NULL, 0x00000000010100000035c4cc6279534540000000b85b7052c0, 'city', 'Albany', 1646209552),
(51, 18, 45, 47, 0x0000000001010000003aeafdd6abe04240faffffd7b49f5ec0, 'district', 'Sunset district', 1646209607),
(52, 18, 45, 47, 0x0000000001010000001d646d8c1bdf4240f1ffff57859a5ec0, 'district', 'Bernal heights', 1646209668),
(53, 18, 45, 48, 0x000000000101000000798fe4b88f7b4240220000d4f3825ec0, 'district', 'Westside', 1646209704),
(54, 18, 45, 48, 0x0000000001010000000ea4fdcb187c4240e4ffffdb84805ec0, 'district', 'Seabright', 1646209756),
(55, 18, 46, 49, 0x000000000101000000502d3717765b444003000064278052c0, 'district', 'Civic center', 1646209822),
(56, 18, 46, 49, 0x000000000101000000895ffa4836624440fffffff7687d52c0, 'district', 'Lenox hill', 1646209902),
(57, 18, 46, 50, 0x0000000001010000002a11fd866f5445400400000c7e7252c0, 'district', 'Pine hills', 1646209945),
(58, 18, 46, 50, 0x000000000101000000132a6a90cb5445400400000a557052c0, 'district', 'Arbor hill', 1646209990),
(59, 19, NULL, NULL, 0x000000000101000000e02f3b6e02472840f2ffffff83122e40, 'province', 'N\'Djaména', 1646210607),
(60, 19, 59, NULL, 0x0000000001010000000b5659aeba3d284018000040c4192e40, 'city', 'N\'Djaména', 1646210643),
(61, 19, NULL, NULL, 0x000000000101000000776860c6695021400e00000094103040, 'province', 'Logone Occidental', 1646210813),
(62, 19, 61, NULL, 0x000000000101000000d1cf427b71222140030000a0e2123040, 'city', 'Moundou', 1646210881),
(63, 19, 59, 60, 0x0000000001010000002e2f2cc30d312840e6ffffdf71262e40, 'district', 'Moursal', 1646210978),
(64, 19, 59, 60, 0x0000000001010000009f93ddbcdc392840f1ffff9feb192e40, 'district', 'Blabline', 1646211027),
(65, 19, 61, 62, 0x0000000001010000000b91007923232140f7ffff9732163040, 'district', 'Bornou', 1646211077),
(66, 19, 61, 62, 0x0000000001010000006b07cb49aa192140f6ffffa7650f3040, 'district', 'Dokapti', 1646211168),
(67, 16, 21, NULL, 0x00000000010100000018e23f51690e4840fffffffff1e3fabf, 'city', 'Rennes', 1646295560),
(68, 16, 21, 67, 0x0000000001010000001d2d3bd0140e4840060000009f54fbbf, 'district', 'Moulin du comte', 1646295696);

-- --------------------------------------------------------

--
-- Table structure for table `registration_packages`
--

CREATE TABLE `registration_packages` (
  `id` int UNSIGNED NOT NULL,
  `days` int UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('instructors','organizations') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructors_count` int DEFAULT NULL,
  `students_count` int DEFAULT NULL,
  `courses_capacity` int DEFAULT NULL,
  `courses_count` int DEFAULT NULL,
  `meeting_count` int DEFAULT NULL,
  `product_count` int UNSIGNED DEFAULT NULL,
  `status` enum('disabled','active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_packages`
--

INSERT INTO `registration_packages` (`id`, `days`, `price`, `icon`, `role`, `instructors_count`, `students_count`, `courses_capacity`, `courses_count`, `meeting_count`, `product_count`, `status`, `created_at`) VALUES
(1, 30, 99, '/store/1/default_images/registertion_packages/bronze_instructor.png', 'instructors', NULL, NULL, 40, 10, 30, NULL, 'active', 1646040584),
(2, 90, 199, '/store/1/default_images/registertion_packages/silver_instructor.png', 'instructors', NULL, NULL, 60, 20, 50, NULL, 'active', 1646041075),
(3, 180, 400, '/store/1/default_images/registertion_packages/gold_instructor.png', 'instructors', NULL, NULL, 100, 40, 75, NULL, 'active', 1646041329),
(4, 30, 200, '/store/1/default_images/registertion_packages/bronze_organization.png', 'organizations', 5, 50, 40, 10, 30, NULL, 'active', 1646041807),
(5, 90, 400, '/store/1/default_images/registertion_packages/silver_organization.png', 'organizations', 10, 100, 70, 20, 50, NULL, 'active', 1646041992),
(6, 180, 600, '/store/1/default_images/registertion_packages/gold_organization.png', 'organizations', 30, 300, 150, 50, 100, NULL, 'active', 1646042364);

-- --------------------------------------------------------

--
-- Table structure for table `registration_packages_translations`
--

CREATE TABLE `registration_packages_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `registration_package_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_packages_translations`
--

INSERT INTO `registration_packages_translations` (`id`, `registration_package_id`, `locale`, `title`, `description`) VALUES
(1, 1, 'en', 'Basic', 'Suggested for starter instructors.'),
(2, 2, 'en', 'Pro', 'Suggested for professional instructors.'),
(3, 3, 'en', 'Premium', 'Suggested for expert instructors.'),
(4, 4, 'en', 'Basic', 'Suggested for small organizations'),
(5, 5, 'en', 'Pro', 'Suggested for medium organizations'),
(6, 6, 'en', 'Premium', 'Suggested for big organizations');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_meetings`
--

CREATE TABLE `reserve_meetings` (
  `id` int UNSIGNED NOT NULL,
  `meeting_id` int DEFAULT NULL,
  `sale_id` int UNSIGNED DEFAULT NULL,
  `meeting_time_id` int UNSIGNED NOT NULL,
  `day` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int UNSIGNED NOT NULL,
  `start_at` bigint UNSIGNED NOT NULL,
  `end_at` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `paid_amount` decimal(13,2) NOT NULL,
  `meeting_type` enum('in_person','online') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `student_count` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','open','finished','canceled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int NOT NULL,
  `locked_at` int DEFAULT NULL,
  `reserved_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int UNSIGNED NOT NULL,
  `type` enum('account_charge','create_classes','buy','pass_the_quiz','certificate','comment','register','review_courses','instructor_meeting_reserve','student_meeting_reserve','newsletters','badge','referral','learning_progress_100','charge_wallet','buy_store_product','pass_assignment','send_post_in_topic','make_topic','create_blog_by_instructor','comment_for_instructor_blog') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int UNSIGNED DEFAULT NULL,
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','disabled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `type`, `score`, `condition`, `status`, `created_at`) VALUES
(3, 'charge_wallet', 50, '150', 'active', 1641205067),
(4, 'account_charge', 50, '100', 'active', 1641369989),
(5, 'badge', NULL, NULL, 'active', 1641300755),
(6, 'create_classes', 50, NULL, 'active', 1641369921),
(7, 'buy', 50, '10', 'active', 1641369938),
(8, 'pass_the_quiz', 50, NULL, 'active', 1641369947),
(9, 'certificate', 30, NULL, 'active', 1641369955),
(10, 'comment', 5, NULL, 'active', 1641369968),
(11, 'register', 5, NULL, 'active', 1641370008),
(12, 'review_courses', 15, NULL, 'active', 1641370016),
(13, 'instructor_meeting_reserve', 30, NULL, 'active', 1641370026),
(14, 'student_meeting_reserve', 30, NULL, 'active', 1641370036),
(15, 'newsletters', 10, NULL, 'active', 1641370050),
(16, 'referral', 5, NULL, 'active', 1641370059),
(18, 'learning_progress_100', 20, NULL, 'active', 1641372957),
(19, 'buy_store_product', 50, '26', 'active', 1648277874),
(20, 'pass_assignment', 50, NULL, 'active', 1649247227),
(21, 'make_topic', 1, NULL, 'active', 1650548269),
(22, 'send_post_in_topic', 1, NULL, 'active', 1650548278),
(23, 'create_blog_by_instructor', 5, NULL, 'active', 1650788324),
(24, 'comment_for_instructor_blog', 3, NULL, 'active', 1650788336);

-- --------------------------------------------------------

--
-- Table structure for table `rewards_accounting`
--

CREATE TABLE `rewards_accounting` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `type` enum('account_charge','create_classes','buy','pass_the_quiz','certificate','comment','register','review_courses','instructor_meeting_reserve','student_meeting_reserve','newsletters','badge','referral','learning_progress_100','charge_wallet','withdraw','buy_store_product','pass_assignment','send_post_in_topic','make_topic','create_blog_by_instructor','comment_for_instructor_blog') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int UNSIGNED NOT NULL,
  `status` enum('addiction','deduction') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards_accounting`
--

INSERT INTO `rewards_accounting` (`id`, `user_id`, `item_id`, `type`, `score`, `status`, `created_at`) VALUES
(77, 1, 23, 'badge', 15, 'addiction', 1655618081),
(198, 1030, 2043, 'create_classes', 50, 'addiction', 1700707358),
(199, 1030, 24, 'badge', 10, 'addiction', 1700718367),
(201, 1030, 21, 'badge', 5, 'addiction', 1700783432),
(206, 1030, 31, 'badge', 20, 'addiction', 1702515875),
(209, 1030, 22, 'badge', 10, 'addiction', 1704160948),
(211, 1030, 2046, 'create_classes', 50, 'addiction', 1705992457),
(212, 1044, 21, 'badge', 5, 'addiction', 1708560189),
(214, 1030, 2047, 'create_classes', 50, 'addiction', 1717510819),
(215, 1030, 25, 'badge', 20, 'addiction', 1717511033),
(216, 1045, 24, 'badge', 10, 'addiction', 1717511696),
(217, 1045, 21, 'badge', 5, 'addiction', 1718163439),
(219, 1047, 21, 'badge', 5, 'addiction', 1718850241),
(220, 1049, 21, 'badge', 5, 'addiction', 1718947910),
(221, 1051, 21, 'badge', 5, 'addiction', 1719363697),
(222, 1045, 2048, 'create_classes', 50, 'addiction', 1719412248),
(223, 1045, 2049, 'create_classes', 50, 'addiction', 1719473935),
(224, 1052, 21, 'badge', 5, 'addiction', 1719477340),
(225, 1056, 21, 'badge', 5, 'addiction', 1719483728),
(226, 1054, 21, 'badge', 5, 'addiction', 1719544327),
(227, 1045, 26, 'badge', 30, 'addiction', 1719573417),
(228, 1053, 21, 'badge', 5, 'addiction', 1719581771),
(229, 1055, 21, 'badge', 5, 'addiction', 1719663412),
(230, 1057, 21, 'badge', 5, 'addiction', 1719799387),
(231, 1060, 21, 'badge', 5, 'addiction', 1719811364),
(232, 1045, 2050, 'create_classes', 50, 'addiction', 1719813739),
(233, 1059, 21, 'badge', 5, 'addiction', 1719878882),
(234, 1061, 21, 'badge', 5, 'addiction', 1719882465),
(235, 1045, 31, 'badge', 20, 'addiction', 1719918310),
(236, 1062, 21, 'badge', 5, 'addiction', 1719995955),
(237, 1065, 21, 'badge', 5, 'addiction', 1720053787),
(238, 1066, 21, 'badge', 5, 'addiction', 1720067639),
(239, 1064, 21, 'badge', 5, 'addiction', 1720075226),
(240, 1070, 21, 'badge', 5, 'addiction', 1720157286),
(241, 1045, 22, 'badge', 10, 'addiction', 1720236560),
(242, 1072, 21, 'badge', 5, 'addiction', 1720406043),
(243, 1030, 2051, 'create_classes', 50, 'addiction', 1720519251),
(244, 1073, 21, 'badge', 5, 'addiction', 1720604956),
(245, 1074, 21, 'badge', 5, 'addiction', 1720657866),
(246, 1077, 21, 'badge', 5, 'addiction', 1720690931);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_count` int UNSIGNED NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `caption`, `users_count`, `is_admin`, `created_at`) VALUES
(1, 'student', 'Student role', 0, 0, 1604418504),
(2, 'admin', 'Admin role', 0, 1, 1604418504),
(3, 'organization', 'Organization role', 0, 0, 1604418504),
(4, 'teacher', 'Instructor role', 0, 0, 1604418504),
(6, 'education', 'Author', 0, 1, 1613370817),
(8, 'Student Agent', 'Student Agent', 0, 1, 1702364768);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int UNSIGNED NOT NULL,
  `seller_id` int UNSIGNED DEFAULT NULL,
  `buyer_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `meeting_id` int UNSIGNED DEFAULT NULL,
  `subscribe_id` int UNSIGNED DEFAULT NULL,
  `ticket_id` int UNSIGNED DEFAULT NULL,
  `promotion_id` int UNSIGNED DEFAULT NULL,
  `product_order_id` int UNSIGNED DEFAULT NULL,
  `registration_package_id` int UNSIGNED DEFAULT NULL,
  `type` enum('webinar','meeting','subscribe','promotion','registration_package','product','bundle') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('credit','payment_channel','subscribe') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `commission` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `product_delivery_fee` decimal(13,2) DEFAULT NULL,
  `manual_added` tinyint(1) NOT NULL DEFAULT '0',
  `access_to_purchased_item` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int UNSIGNED NOT NULL,
  `refund_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `seller_id`, `buyer_id`, `order_id`, `webinar_id`, `bundle_id`, `meeting_id`, `subscribe_id`, `ticket_id`, `promotion_id`, `product_order_id`, `registration_package_id`, `type`, `payment_method`, `amount`, `tax`, `commission`, `discount`, `total_amount`, `product_delivery_fee`, `manual_added`, `access_to_purchased_item`, `created_at`, `refund_at`) VALUES
(219, 1030, 1031, NULL, 2043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1700720536, NULL),
(221, 1030, 1038, NULL, 2043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1702515546, NULL),
(222, 1030, 1039, NULL, 2043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1702515748, NULL),
(223, 1030, 1041, NULL, 2043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1702956987, NULL),
(224, 1030, 1042, NULL, 2043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1704270810, NULL),
(225, 1030, 1043, NULL, 2046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1705992860, NULL),
(226, 1030, 1048, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1718819977, NULL),
(227, 1030, 1047, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1718857682, NULL),
(228, 1030, 1049, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1718875178, NULL),
(229, 1030, 1053, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719304641, NULL),
(230, 1030, 1054, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719305328, NULL),
(231, 1030, 1055, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719401492, NULL),
(232, 1030, 1056, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719402437, NULL),
(235, 1030, 1044, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719412841, NULL),
(236, 1045, 1051, NULL, 2049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719476532, NULL),
(238, 1030, 1057, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719641728, NULL),
(239, 1030, 1059, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719644611, NULL),
(240, 1030, 1060, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719646611, NULL),
(241, 1045, 1061, NULL, 2050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719812864, NULL),
(242, 1030, 1062, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719813222, NULL),
(243, 1030, 1063, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719813813, NULL),
(244, 1030, 1064, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719814613, NULL),
(245, 1030, 1065, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1719985889, NULL),
(246, 1030, 1066, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720007061, NULL),
(247, 1030, 1067, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720069516, NULL),
(248, 1030, 1068, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720086938, NULL),
(249, 1030, 1069, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720087283, NULL),
(250, 1030, 1070, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720087522, NULL),
(251, 1045, 1052, NULL, 2049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720411878, NULL),
(252, 1030, 1073, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720510517, NULL),
(253, 1030, 1072, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720523573, NULL),
(254, 1030, 1071, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720523618, NULL),
(255, 1030, 1074, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720596292, NULL),
(256, 1030, 1075, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720604621, NULL),
(257, 1030, 1076, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720606251, NULL),
(258, 1030, 1077, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720613446, NULL),
(259, 1030, 1078, NULL, 2047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720613651, NULL),
(260, 1045, 1079, NULL, 2050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, 0.00, NULL, 1, 1, 1720613799, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_log`
--

CREATE TABLE `sales_log` (
  `id` int UNSIGNED NOT NULL,
  `sale_id` int UNSIGNED NOT NULL,
  `viewed_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_log`
--

INSERT INTO `sales_log` (`id`, `sale_id`, `viewed_at`) VALUES
(72, 219, 1700720537),
(74, 221, 1702515546),
(75, 222, 1702515748),
(76, 223, 1704263512),
(77, 224, 1704270810),
(78, 225, 1705992860),
(79, 226, 1718819978),
(80, 227, 1718857683),
(81, 228, 1718875180),
(82, 229, 1719304642),
(83, 230, 1719305329),
(84, 231, 1719401493),
(85, 232, 1719402438),
(88, 235, 1719412842),
(89, 236, 1719476533),
(91, 238, 1719641729),
(92, 239, 1719644612),
(93, 240, 1719646614),
(94, 241, 1719813194),
(95, 242, 1719813223),
(96, 243, 1719813814),
(97, 244, 1719814614),
(98, 245, 1719985891),
(99, 246, 1720007062),
(100, 247, 1720069517),
(101, 248, 1720086939),
(102, 249, 1720087285),
(103, 250, 1720087523),
(104, 251, 1720411879),
(105, 252, 1720510518),
(106, 253, 1720523573),
(107, 254, 1720523619),
(108, 255, 1720596293),
(109, 256, 1720604622),
(110, 257, 1720606253),
(111, 258, 1720613448),
(112, 259, 1720613653),
(113, 260, 1720613799);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_group_id` int UNSIGNED DEFAULT NULL,
  `caption` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `section_group_id`, `caption`) VALUES
(1, 'admin_general_dashboard', NULL, 'General Dashboard'),
(2, 'admin_general_dashboard_show', 1, 'General Dashboard page'),
(3, 'admin_general_dashboard_quick_access_links', 1, 'Quick access links in General Dashboard'),
(4, 'admin_general_dashboard_daily_sales_statistics', 1, 'Daily Sales Type Statistics Section'),
(5, 'admin_general_dashboard_income_statistics', 1, 'Income Statistics Section'),
(6, 'admin_general_dashboard_total_sales_statistics', 1, 'Total Sales Statistics Section'),
(7, 'admin_general_dashboard_new_sales', 1, 'New Sales Section'),
(8, 'admin_general_dashboard_new_comments', 1, 'New Comments Section'),
(9, 'admin_general_dashboard_new_tickets', 1, 'New Tickets Section'),
(10, 'admin_general_dashboard_new_reviews', 1, 'New Reviews Section'),
(11, 'admin_general_dashboard_sales_statistics_chart', 1, 'Sales Statistics Chart'),
(12, 'admin_general_dashboard_recent_comments', 1, 'Recent comments Section'),
(13, 'admin_general_dashboard_recent_tickets', 1, 'Recent tickets Section'),
(14, 'admin_general_dashboard_recent_webinars', 1, 'Recent webinars Section'),
(15, 'admin_general_dashboard_recent_courses', 1, 'Recent courses Section'),
(16, 'admin_general_dashboard_users_statistics_chart', 1, 'Users Statistics Chart'),
(17, 'admin_clear_cache', 1, 'Clear cache'),
(25, 'admin_marketing_dashboard', NULL, 'Marketing Dashboard'),
(26, 'admin_marketing_dashboard_show', 25, 'Marketing Dashboard page'),
(50, 'admin_roles', NULL, 'Roles'),
(51, 'admin_roles_list', 50, 'Roles List'),
(52, 'admin_roles_create', 50, 'Roles Create'),
(53, 'admin_roles_edit', 50, 'Roles Edit'),
(54, 'admin_roles_delete', 50, 'Roles Delete'),
(100, 'admin_users', NULL, 'Users'),
(101, 'admin_staffs_list', 100, 'Staffs list'),
(102, 'admin_users_list', 100, 'Students list'),
(103, 'admin_instructors_list', 100, 'Instructors list'),
(104, 'admin_organizations_list', 100, 'Organizations list'),
(105, 'admin_users_create', 100, 'Users Create'),
(106, 'admin_users_edit', 100, 'Users Edit'),
(107, 'admin_users_delete', 100, 'Users Delete'),
(108, 'admin_users_export_excel', 100, 'List Export excel'),
(109, 'admin_users_badges', 100, 'Users Badges'),
(110, 'admin_users_badges_edit', 100, 'Badges edit'),
(111, 'admin_users_badges_delete', 100, 'Badges delete'),
(112, 'admin_users_impersonate', 100, 'users impersonate (login by users)'),
(113, 'admin_become_instructors_list', 100, 'Lists of requests for become instructors'),
(114, 'admin_become_instructors_reject', 100, 'Reject requests for become instructors'),
(115, 'admin_become_instructors_delete', 100, 'Delete requests for become instructors'),
(116, 'admin_update_user_registration_package', 100, 'Edit user registration package'),
(117, 'admin_update_user_meeting_settings', 100, 'Edit user meeting settings'),
(150, 'admin_webinars', NULL, 'Webinars'),
(151, 'admin_webinars_list', 150, 'Webinars List'),
(152, 'admin_webinars_create', 150, 'Webinars Create'),
(153, 'admin_webinars_edit', 150, 'Webinars Edit'),
(154, 'admin_webinars_delete', 150, 'Webinars Delete'),
(155, 'admin_webinars_export_excel', 150, 'Export excel webinars list'),
(156, 'admin_feature_webinars', 150, 'Feature webinars list'),
(157, 'admin_feature_webinars_create', 150, 'create feature webinar'),
(158, 'admin_feature_webinars_export_excel', 150, 'Feature webinar export excel'),
(159, 'admin_webinar_students_lists', 150, 'Webinar students Lists'),
(160, 'admin_webinar_notification_to_students', 150, 'Send notification to course students'),
(161, 'admin_webinar_statistics', 150, 'Course statistics'),
(162, 'admin_agora_history_list', 150, 'Agora history lists'),
(163, 'admin_agora_history_export', 150, 'Agora history export'),
(164, 'admin_course_question_forum_list', 150, 'Forum Question Lists'),
(165, 'admin_course_question_forum_answers', 150, 'Forum Answers Lists'),
(200, 'admin_categories', NULL, 'Categories'),
(201, 'admin_categories_list', 200, 'Categories List'),
(202, 'admin_categories_create', 200, 'Categories Create'),
(203, 'admin_categories_edit', 200, 'Categories Edit'),
(204, 'admin_categories_delete', 200, 'Categories Delete'),
(205, 'admin_trending_categories', 200, 'Trends Categories List'),
(206, 'admin_create_trending_categories', 200, 'Create Trend Categories'),
(207, 'admin_edit_trending_categories', 200, 'Edit Trend Categories'),
(208, 'admin_delete_trending_categories', 200, 'Delete Trend Categories'),
(250, 'admin_tags', NULL, 'Tags'),
(251, 'admin_tags_list', 250, 'Tags List'),
(252, 'admin_tags_create', 250, 'Tags Create'),
(253, 'admin_tags_edit', 250, 'Tags Edit'),
(254, 'admin_tags_delete', 250, 'Tags Delete'),
(300, 'admin_filters', NULL, 'Filters'),
(301, 'admin_filters_list', 300, 'Filters List'),
(302, 'admin_filters_create', 300, 'Filters Create'),
(303, 'admin_filters_edit', 300, 'Filters Edit'),
(304, 'admin_filters_delete', 300, 'Filters Delete'),
(350, 'admin_quizzes', NULL, 'Quizzes'),
(351, 'admin_quizzes_list', 350, 'Quizzes List'),
(352, 'admin_quizzes_create', 350, 'Create Quiz'),
(353, 'admin_quizzes_edit', 350, 'Edit Quiz'),
(354, 'admin_quizzes_delete', 350, 'Delete Quiz'),
(355, 'admin_quizzes_results', 350, 'Quizzes results'),
(356, 'admin_quizzes_results_delete', 350, 'Quizzes results delete'),
(357, 'admin_quizzes_lists_excel', 350, 'Quizzes export excel'),
(400, 'admin_quiz_result', NULL, 'Quiz Result'),
(401, 'admin_quiz_result_list', 400, 'Quiz Result List'),
(402, 'admin_quiz_result_create', 400, 'Quiz Result Create'),
(403, 'admin_quiz_result_edit', 400, 'Quiz Result Edit'),
(404, 'admin_quiz_result_delete', 400, 'Quiz Result Delete'),
(405, 'admin_quiz_result_export_excel', 400, 'quiz result export excel'),
(450, 'admin_certificate', NULL, 'Certificate'),
(451, 'admin_certificate_list', 450, 'Certificate List'),
(452, 'admin_certificate_create', 450, 'Certificate Create'),
(453, 'admin_certificate_edit', 450, 'Certificate Edit'),
(454, 'admin_certificate_delete', 450, 'Certificate Delete'),
(455, 'admin_certificate_template_list', 450, 'Certificate template lists'),
(456, 'admin_certificate_template_create', 450, 'Certificate template create'),
(457, 'admin_certificate_template_edit', 450, 'Certificate template edit'),
(458, 'admin_certificate_template_delete', 450, 'Certificate template delete'),
(459, 'admin_certificate_export_excel', 450, 'Certificates export excel'),
(460, 'admin_course_certificate_list', 450, 'Course Competition Certificates'),
(500, 'admin_discount_codes', NULL, 'Discount codes'),
(501, 'admin_discount_codes_list', 500, 'Discount codes list'),
(502, 'admin_discount_codes_create', 500, 'Discount codes create'),
(503, 'admin_discount_codes_edit', 500, 'Discount codes edit'),
(504, 'admin_discount_codes_delete', 500, 'Discount codes delete'),
(505, 'admin_discount_codes_export', 500, 'Discount codes export excel'),
(550, 'admin_group', NULL, 'Groups'),
(551, 'admin_group_list', 550, 'Groups List'),
(552, 'admin_group_create', 550, 'Groups Create'),
(553, 'admin_group_edit', 550, 'Groups Edit'),
(554, 'admin_group_delete', 550, 'Groups Delete'),
(555, 'admin_update_group_registration_package', 550, 'Update group registration package'),
(600, 'admin_payment_channel', NULL, 'Payment Channels'),
(601, 'admin_payment_channel_list', 600, 'Payment Channels List'),
(602, 'admin_payment_channel_toggle_status', 600, 'active or inactive channel'),
(603, 'admin_payment_channel_edit', 600, 'Payment Channels Edit'),
(650, 'admin_settings', NULL, 'settings'),
(651, 'admin_settings_general', 650, 'General settings'),
(652, 'admin_settings_financial', 650, 'Financial settings'),
(653, 'admin_settings_personalization', 650, 'Personalization settings'),
(654, 'admin_settings_notifications', 650, 'Notifications settings'),
(655, 'admin_settings_seo', 650, 'Seo settings'),
(656, 'admin_settings_customization', 650, 'Customization settings'),
(657, 'admin_settings_notifications', 650, 'Notifications settings'),
(658, 'admin_settings_home_sections', 650, 'Home sections settings'),
(700, 'admin_blog', NULL, 'Blog'),
(701, 'admin_blog_lists', 700, 'Blog lists'),
(702, 'admin_blog_create', 700, 'Blog create'),
(703, 'admin_blog_edit', 700, 'Blog edit'),
(704, 'admin_blog_delete', 700, 'Blog delete'),
(705, 'admin_blog_categories', 700, 'Blog categories list'),
(706, 'admin_blog_categories_create', 700, 'Blog categories create'),
(707, 'admin_blog_categories_edit', 700, 'Blog categories edit'),
(708, 'admin_blog_categories_delete', 700, 'Blog categories delete'),
(750, 'admin_sales', NULL, 'Sales'),
(751, 'admin_sales_list', 750, 'Sales List'),
(752, 'admin_sales_refund', 750, 'Sales Refund'),
(753, 'admin_sales_invoice', 750, 'Sales invoice'),
(754, 'admin_sales_export', 750, 'Sales Export Excel'),
(800, 'admin_documents', NULL, 'Balances'),
(801, 'admin_documents_list', 800, 'Balances List'),
(802, 'admin_documents_create', 800, 'Balances Create'),
(803, 'admin_documents_print', 800, 'Balances print'),
(850, 'admin_payouts', NULL, 'Payout'),
(851, 'admin_payouts_list', 850, 'Payout List'),
(852, 'admin_payouts_reject', 850, 'Payout Reject'),
(853, 'admin_payouts_payout', 850, 'Payout accept'),
(854, 'admin_payouts_export_excel', 850, 'Payout export excel'),
(900, 'admin_offline_payments', NULL, 'Offline Payments'),
(901, 'admin_offline_payments_list', 900, 'Offline Payments List'),
(902, 'admin_offline_payments_reject', 900, 'Offline Payments Reject'),
(903, 'admin_offline_payments_approved', 900, 'Offline Payments Approved'),
(904, 'admin_offline_payments_export_excel', 900, 'Offline Payments export excel'),
(950, 'admin_supports', NULL, 'Supports'),
(951, 'admin_supports_list', 950, 'Supports List'),
(952, 'admin_support_send', 950, 'Send Support'),
(953, 'admin_supports_reply', 950, 'Supports reply'),
(954, 'admin_supports_delete', 950, 'Supports delete'),
(955, 'admin_support_departments', 950, 'Support departments lists'),
(956, 'admin_support_department_create', 950, 'Create support department'),
(957, 'admin_support_departments_edit', 950, 'Edit support departments'),
(958, 'admin_support_departments_delete', 950, 'Delete support department'),
(959, 'admin_support_course_conversations', 950, 'Course conversations'),
(1000, 'admin_subscribe', NULL, 'Subscribes'),
(1001, 'admin_subscribe_list', 1000, 'Subscribes list'),
(1002, 'admin_subscribe_create', 1000, 'Subscribes create'),
(1003, 'admin_subscribe_edit', 1000, 'Subscribes edit'),
(1004, 'admin_subscribe_delete', 1000, 'Subscribes delete'),
(1050, 'admin_notifications', NULL, 'Notifications'),
(1051, 'admin_notifications_list', 1050, 'Notifications list'),
(1052, 'admin_notifications_send', 1050, 'Send Notifications'),
(1053, 'admin_notifications_edit', 1050, 'Edit and details Notifications'),
(1054, 'admin_notifications_delete', 1050, 'Delete Notifications'),
(1055, 'admin_notifications_markAllRead', 1050, 'Mark All Read Notifications'),
(1056, 'admin_notifications_templates', 1050, 'Notifications templates'),
(1057, 'admin_notifications_template_create', 1050, 'Create notification template'),
(1058, 'admin_notifications_template_edit', 1050, 'Edit notification template'),
(1059, 'admin_notifications_template_delete', 1050, 'Delete notification template'),
(1060, 'admin_notifications_posted_list', 1050, 'Notifications Posted list'),
(1075, 'admin_noticeboards', NULL, 'Noticeboards'),
(1076, 'admin_noticeboards_list', 1075, 'Noticeboards list'),
(1077, 'admin_noticeboards_send', 1075, 'Send Noticeboards'),
(1078, 'admin_noticeboards_edit', 1075, 'Edit Noticeboards'),
(1079, 'admin_noticeboards_delete', 1075, 'Delete Noticeboards'),
(1080, 'admin_course_noticeboards_list', 1075, 'Course Noticeboards list'),
(1081, 'admin_course_noticeboards_send', 1075, 'Send Course Noticeboards'),
(1082, 'admin_course_noticeboards_edit', 1075, 'Edit Course Noticeboards'),
(1083, 'admin_course_noticeboards_delete', 1075, 'Delete Course Noticeboards'),
(1100, 'admin_promotion', NULL, 'Promotions'),
(1101, 'admin_promotion_list', 1100, 'Promotions list'),
(1102, 'admin_promotion_create', 1100, 'Promotion create'),
(1103, 'admin_promotion_edit', 1100, 'Promotion edit'),
(1104, 'admin_promotion_delete', 1100, 'Promotion delete'),
(1150, 'admin_testimonials', NULL, 'testimonials'),
(1151, 'admin_testimonials_list', 1150, 'testimonials list'),
(1152, 'admin_testimonials_create', 1150, 'testimonials create'),
(1153, 'admin_testimonials_edit', 1150, 'testimonials edit'),
(1154, 'admin_testimonials_delete', 1150, 'testimonials delete'),
(1200, 'admin_advertising', NULL, 'advertising'),
(1201, 'admin_advertising_banners', 1200, 'advertising banners list'),
(1202, 'admin_advertising_banners_create', 1200, 'create advertising banner'),
(1203, 'admin_advertising_banners_edit', 1200, 'edit advertising banner'),
(1204, 'admin_advertising_banners_delete', 1200, 'delete advertising banner'),
(1230, 'admin_newsletters', NULL, 'Newsletters'),
(1231, 'admin_newsletters_lists', 1230, 'Newsletters lists'),
(1232, 'admin_newsletters_send', 1230, 'Send Newsletters'),
(1233, 'admin_newsletters_history', 1230, 'Newsletters histories'),
(1234, 'admin_newsletters_delete', 1230, 'Delete newsletters item'),
(1235, 'admin_newsletters_export_excel', 1230, 'Export excel newsletters item'),
(1250, 'admin_contacts', NULL, 'Contacts'),
(1251, 'admin_contacts_lists', 1250, 'Contacts lists'),
(1252, 'admin_contacts_reply', 1250, 'Contacts reply'),
(1253, 'admin_contacts_delete', 1250, 'Contacts delete'),
(1300, 'admin_product_discount', NULL, 'product discount'),
(1301, 'admin_product_discount_list', 1300, 'product discount list'),
(1302, 'admin_product_discount_create', 1300, 'create product discount'),
(1303, 'admin_product_discount_edit', 1300, 'edit product discount'),
(1304, 'admin_product_discount_delete', 1300, 'delete product discount'),
(1305, 'admin_product_discount_export', 1300, 'delete product export excel'),
(1350, 'admin_pages', NULL, 'pages'),
(1351, 'admin_pages_list', 1350, 'pages list'),
(1352, 'admin_pages_create', 1350, 'pages create'),
(1353, 'admin_pages_edit', 1350, 'pages edit'),
(1354, 'admin_pages_toggle', 1350, 'pages toggle publish/draft'),
(1355, 'admin_pages_delete', 1350, 'pages delete'),
(1400, 'admin_comments', NULL, 'Comments'),
(1401, 'admin_webinar_comments', 1400, 'Classes comments'),
(1402, 'admin_webinar_comments_edit', 1400, 'Classes comments edit'),
(1403, 'admin_webinar_comments_reply', 1400, 'Classes comments reply'),
(1404, 'admin_webinar_comments_delete', 1400, 'Classes comments delete'),
(1405, 'admin_webinar_comments_status', 1400, 'Classes comments status (active or pending)'),
(1406, 'admin_blog_comments', 1400, 'Blog comments'),
(1407, 'admin_blog_comments_edit', 1400, 'Blog comments edit'),
(1408, 'admin_blog_comments_reply', 1400, 'Blog comments reply'),
(1409, 'admin_blog_comments_delete', 1400, 'Blog comments delete'),
(1410, 'admin_blog_comments_status', 1400, 'Blog comments status (active or pending)'),
(1411, 'admin_product_comments', 1400, 'Product comments'),
(1412, 'admin_product_comments_edit', 1400, 'Product comments edit'),
(1413, 'admin_product_comments_reply', 1400, 'Product comments reply'),
(1414, 'admin_product_comments_delete', 1400, 'Product comments delete'),
(1415, 'admin_product_comments_status', 1400, 'Product comments status (active or pending)'),
(1450, 'admin_reports', NULL, 'Reports'),
(1451, 'admin_webinar_reports', 1450, 'Classes reports'),
(1452, 'admin_webinar_comments_reports', 1450, 'Classes Comments reports'),
(1453, 'admin_webinar_reports_delete', 1450, 'Classes reports delete'),
(1454, 'admin_blog_comments_reports', 1450, 'Blog Comments reports'),
(1455, 'admin_report_reasons', 1450, 'Reports reasons'),
(1456, 'admin_product_comments_reports', 1450, 'Products Comments reports'),
(1457, 'admin_forum_topic_post_reports', 1450, 'Forum Topic Posts Reports'),
(1500, 'admin_additional_pages', NULL, 'Additional Pages'),
(1501, 'admin_additional_pages_404', 1500, '404 error page settings'),
(1502, 'admin_additional_pages_contact_us', 1500, 'Contact page settings'),
(1503, 'admin_additional_pages_footer', 1500, 'Footer settings'),
(1504, 'admin_additional_pages_navbar_links', 1500, 'Top Navbar links settings'),
(1550, 'admin_appointments', NULL, 'Appointments'),
(1551, 'admin_appointments_lists', 1550, 'Appointments lists'),
(1552, 'admin_appointments_join', 1550, 'Appointments join'),
(1553, 'admin_appointments_send_reminder', 1550, 'Appointments send reminder'),
(1554, 'admin_appointments_cancel', 1550, 'Appointments cancel'),
(1600, 'admin_reviews', NULL, 'Reviews'),
(1601, 'admin_reviews_lists', 1600, 'Reviews lists'),
(1602, 'admin_reviews_status_toggle', 1600, 'Reviews status toggle (publish or hidden)'),
(1603, 'admin_reviews_detail_show', 1600, 'Review details page'),
(1604, 'admin_reviews_delete', 1600, 'Review delete'),
(1650, 'admin_consultants', NULL, 'Consultants'),
(1651, 'admin_consultants_lists', 1650, 'Consultants lists'),
(1652, 'admin_consultants_export_excel', 1650, 'Consultants export excel'),
(1675, 'admin_referrals', NULL, 'Referrals'),
(1676, 'admin_referrals_history', 1675, 'Referrals History'),
(1677, 'admin_referrals_users', 1675, 'Referrals users'),
(1678, 'admin_referrals_export', 1675, 'Export Referrals'),
(1725, 'admin_regions', NULL, 'Regions'),
(1726, 'admin_regions_countries', 1725, 'countries lists'),
(1727, 'admin_regions_provinces', 1725, 'provinces lists'),
(1728, 'admin_regions_cities', 1725, 'cities lists'),
(1729, 'admin_regions_districts', 1725, 'districts lists'),
(1730, 'admin_regions_create', 1725, 'create item'),
(1731, 'admin_regions_edit', 1725, 'edit item'),
(1732, 'admin_regions_delete', 1725, 'delete item'),
(1750, 'admin_rewards', NULL, 'Rewards'),
(1751, 'admin_rewards_history', 1750, 'Rewards history'),
(1752, 'admin_rewards_settings', 1750, 'Rewards settings'),
(1753, 'admin_rewards_items', 1750, 'Rewards items'),
(1754, 'admin_rewards_item_delete', 1750, 'Reward item delete'),
(1775, 'admin_registration_packages', NULL, 'Registration packages'),
(1776, 'admin_registration_packages_lists', 1775, 'packages lists'),
(1777, 'admin_registration_packages_new', 1775, 'New package'),
(1778, 'admin_registration_packages_edit', 1775, 'Edit package'),
(1779, 'admin_registration_packages_delete', 1775, 'Delete package'),
(1780, 'admin_registration_packages_reports', 1775, 'Reports'),
(1781, 'admin_registration_packages_settings', 1775, 'Settings'),
(1800, 'admin_store', NULL, 'Store'),
(1801, 'admin_store_products', 1800, 'Products lists'),
(1802, 'admin_store_new_product', 1800, 'Create New Product'),
(1803, 'admin_store_edit_product', 1800, 'Edit Product'),
(1804, 'admin_store_delete_product', 1800, 'Delete Product'),
(1805, 'admin_store_export_products', 1800, 'Export excel Products'),
(1806, 'admin_store_categories_list', 1800, 'Store Categories Lists'),
(1807, 'admin_store_categories_create', 1800, 'Create Store Category'),
(1808, 'admin_store_categories_edit', 1800, 'Edit Store Category'),
(1809, 'admin_store_categories_delete', 1800, 'Delete Store Category'),
(1810, 'admin_store_filters_list', 1800, 'Store Filters Lists'),
(1811, 'admin_store_filters_create', 1800, 'Create Store Filter'),
(1812, 'admin_store_filters_edit', 1800, 'Edit Store Filter'),
(1813, 'admin_store_filters_delete', 1800, 'Delete Store Filter'),
(1814, 'admin_store_specifications', 1800, 'Store Specifications'),
(1815, 'admin_store_specifications_create', 1800, 'Create New Store Specification'),
(1816, 'admin_store_specifications_edit', 1800, 'Edit Store Specification'),
(1817, 'admin_store_specifications_delete', 1800, 'Delete Store Specification'),
(1818, 'admin_store_discounts', 1800, 'Store Discounts Lists'),
(1819, 'admin_store_discounts_create', 1800, 'Create New Store discount'),
(1820, 'admin_store_discounts_edit', 1800, 'Edit Store discount'),
(1821, 'admin_store_discounts_delete', 1800, 'Delete Store discount'),
(1822, 'admin_store_products_orders', 1800, 'Products Orders'),
(1823, 'admin_store_products_orders_refund', 1800, 'Products Orders Refund'),
(1824, 'admin_store_products_orders_invoice', 1800, 'Products Orders View Invoice'),
(1825, 'admin_store_products_orders_export', 1800, 'Products Orders Export Excel'),
(1826, 'admin_store_products_orders_tracking_code', 1800, 'Products Orders Tracking code'),
(1827, 'admin_store_products_reviews', 1800, 'Reviews lists'),
(1828, 'admin_store_products_reviews_status_toggle', 1800, 'Reviews status toggle (publish or hidden)'),
(1829, 'admin_store_products_reviews_detail_show', 1800, 'Review details page'),
(1830, 'admin_store_products_reviews_delete', 1800, 'Review delete'),
(1831, 'admin_store_settings', 1800, 'Store settings'),
(1832, 'admin_store_in_house_products', 1800, 'In-house products'),
(1833, 'admin_store_in_house_orders', 1800, 'In-house Products Orders'),
(1834, 'admin_store_products_sellers', 1800, 'Products Sellers'),
(1835, 'admin_store_in_house_products_delete', 1800, 'In-house Products Delete'),
(1836, 'admin_store_in_house_products_export', 1800, 'In-house Products Export Excel'),
(1837, 'admin_store_in_house_orders', 1800, 'In-house Products Orders'),
(1838, 'admin_store_products_sellers', 1800, 'Products Sellers'),
(1850, 'admin_webinar_assignments', NULL, 'Webinar assignments'),
(1851, 'admin_webinar_assignments_lists', 1850, 'Assignments lists'),
(1852, 'admin_webinar_assignments_students', 1850, 'Assignment students'),
(1853, 'admin_webinar_assignments_conversations', 1850, 'Assignment students conversations'),
(1875, 'admin_users_not_access_content', NULL, 'Users do not have access to the content'),
(1876, 'admin_users_not_access_content_lists', 1875, 'Users lists'),
(1877, 'admin_users_not_access_content_toggle', 1875, 'Toggle active/inactive users to view content'),
(1900, 'admin_bundles', NULL, 'Bundles'),
(1901, 'admin_bundles_list', 1900, 'Bundles Lists'),
(1902, 'admin_bundles_create', 1900, 'Create new Bundle'),
(1903, 'admin_bundles_edit', 1900, 'Edit bundle'),
(1904, 'admin_bundles_delete', 1900, 'Delete bundle'),
(1905, 'admin_bundles_export_excel', 1900, 'Export excel'),
(1925, 'admin_forum', NULL, 'Forums'),
(1926, 'admin_forum_list', 1925, 'Forums Lists'),
(1927, 'admin_forum_create', 1925, 'Forums create'),
(1928, 'admin_forum_edit', 1925, 'Forums edit'),
(1929, 'admin_forum_delete', 1925, 'Forums delete'),
(1930, 'admin_forum_topics_lists', 1925, 'Forums topics lists'),
(1931, 'admin_forum_topics_create', 1925, 'Forums topics create'),
(1932, 'admin_forum_topics_delete', 1925, 'Forums topics delete'),
(1933, 'admin_forum_topics_posts', 1925, 'Forums topic posts'),
(1934, 'admin_forum_topics_create_posts', 1925, 'Forums topic store posts'),
(1950, 'admin_featured_topics', NULL, 'Featured topics'),
(1951, 'admin_featured_topics_list', 1950, 'Featured topics Lists'),
(1952, 'admin_featured_topics_create', 1950, 'Featured topics create'),
(1953, 'admin_featured_topics_edit', 1950, 'Featured topics edit'),
(1954, 'admin_featured_topics_delete', 1950, 'Featured topics delete'),
(1975, 'admin_recommended_topics', NULL, 'Recommended topics'),
(1976, 'admin_recommended_topics_list', 1975, 'Recommended topics Lists'),
(1977, 'admin_recommended_topics_create', 1975, 'Recommended topics create'),
(1978, 'admin_recommended_topics_edit', 1975, 'Recommended topics edit'),
(1979, 'admin_recommended_topics_delete', 1975, 'Recommended topics delete'),
(2000, 'admin_advertising_modal', NULL, 'Advertising modal'),
(2001, 'admin_advertising_modal_config', 2000, 'Set Advertising modal'),
(2015, 'admin_enrollment', NULL, 'Enrollment'),
(2016, 'admin_enrollment_history', 2015, 'Enrollment History'),
(2017, 'admin_enrollment_add_student_to_items', 2015, 'Enrollment Add Student To Items'),
(2018, 'admin_enrollment_block_access', 2015, 'Enrollment Block Access'),
(2019, 'admin_enrollment_enable_access', 2015, 'Enrollment Enable Access'),
(2020, 'admin_enrollment_export', 2015, 'Enrollment Export History'),
(2021, 'admin_enrollment_export', 2015, 'Enrollment Export History'),
(2030, 'admin_delete_account_requests', NULL, 'Delete Account Requests'),
(2031, 'admin_delete_account_requests_lists', 2030, 'Delete Account Requests Lists'),
(2032, 'admin_delete_account_requests_confirm', 2030, 'Delete Account Requests Confirm'),
(2033, 'admin_course_instruction', NULL, 'Course Instruction'),
(2034, 'course_instruction_view', 2033, 'Course Instruction View');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `chapter_id` int UNSIGNED DEFAULT NULL,
  `date` int NOT NULL,
  `duration` int NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_time_to_join` int UNSIGNED DEFAULT NULL COMMENT 'Specifies that the user can see the join button up to a few minutes after the start time of the webinar.',
  `zoom_start_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `zoom_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_api` enum('local','big_blue_button','zoom','agora') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `api_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderator_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agora_settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `check_previous_parts` tinyint(1) NOT NULL DEFAULT '0',
  `access_after_day` int UNSIGNED DEFAULT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `session_reminds`
--

CREATE TABLE `session_reminds` (
  `id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_translations`
--

CREATE TABLE `session_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `page` enum('general','financial','personalization','notifications','seo','customization','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page`, `name`, `updated_at`) VALUES
(1, 'seo', 'seo_metas', 1656149218),
(2, 'general', 'socials', 1645553984),
(4, 'other', 'footer', 1632071275),
(5, 'general', 'general', 1716577121),
(6, 'financial', 'financial', 1645554757),
(8, 'personalization', 'home_hero', 1645562921),
(12, 'customization', 'custom_css_js', 1636119881),
(14, 'personalization', 'page_background', 1655654319),
(15, 'personalization', 'home_hero2', 1645563058),
(20, 'other', 'report_reasons', 1656323233),
(22, 'notifications', 'notifications', 1656570715),
(23, 'financial', 'site_bank_accounts', 1645555160),
(24, 'other', 'contact_us', 1645564086),
(25, 'personalization', 'home_sections', 1641234869),
(26, 'other', 'navbar_links', 1656101148),
(27, 'personalization', 'home_video_or_image_box', 1645563215),
(28, 'other', '404', 1645563969),
(29, 'personalization', 'panel_sidebar', 1645563328),
(30, 'financial', 'referral', 1656667641),
(31, 'general', 'features', 1656667675),
(32, 'personalization', 'find_instructors', 1645610065),
(33, 'personalization', 'reward_program', 1655132304),
(34, 'general', 'rewards_settings', 1656667591),
(37, 'financial', 'registration_packages_general', 1656667610),
(38, 'financial', 'registration_packages_instructors', 1656667615),
(39, 'financial', 'registration_packages_organizations', 1656667619),
(40, 'personalization', 'become_instructor_section', 1645609839),
(41, 'general', 'store_settings', 1656667545),
(42, 'personalization', 'theme_colors', 1687000806),
(43, 'personalization', 'forums_section', 1655973550),
(44, 'personalization', 'cookie_settings', 1655700817),
(45, 'personalization', 'mobile_app', 1656395706),
(46, 'personalization', 'theme_fonts', 1655657642),
(47, 'general', 'reminders', 1656405333),
(48, 'other', 'advertising_modal', 1656666062),
(52, 'personalization', 'others_personalization', 1656219072);

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `setting_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', '{\"home\":{\"title\":\"Home\",\"description\":\"home page Description\",\"robot\":\"index\"},\"search\":{\"title\":\"Search\",\"description\":\"search page Description\",\"robot\":\"index\"},\"categories\":{\"title\":\"Category\",\"description\":\"categories page Description\",\"robot\":\"index\"},\"login\":{\"title\":\"Login\",\"description\":\"login page description\",\"robot\":\"index\"},\"register\":{\"title\":\"Register\",\"description\":\"register page Description\",\"robot\":\"index\"},\"about\":{\"title\":\"about page title\",\"description\":\"about page Description\"},\"contact\":{\"title\":\"Contact\",\"description\":\"contact page Description\",\"robot\":\"index\"},\"certificate_validation\":{\"title\":\"Certificate validation\",\"description\":\"Certificate validation description\",\"robot\":\"index\"},\"classes\":{\"title\":\"Courses\",\"description\":\"Courses page Description\",\"robot\":\"index\"},\"blog\":{\"title\":\"Blog\",\"description\":\"Blog page description\",\"robot\":\"index\"},\"instructors\":{\"title\":\"Instructors\",\"description\":\"instructors page Description\",\"robot\":\"index\"},\"organizations\":{\"title\":\"Organizations\",\"description\":\"Organizations page description\",\"robot\":\"index\"},\"instructor_finder_wizard\":{\"title\":\"Instructor finder wizard\",\"description\":\"Instructor finder wizard description\",\"robot\":\"noindex\"},\"instructor_finder\":{\"title\":\"Instructor finder\",\"description\":\"Instructor finder description\",\"robot\":\"index\"},\"reward_courses\":{\"title\":\"Reward courses\",\"description\":\"Reward courses description\",\"robot\":\"index\"},\"products_lists\":{\"title\":\"Store Products\",\"description\":\"Store Products Description\",\"robot\":\"noindex\"},\"reward_products\":{\"title\":\"Reward Products\",\"description\":\"Reward Products Description\",\"robot\":\"noindex\"},\"forum\":{\"title\":\"Forums\",\"description\":\"Forums Description\",\"robot\":\"noindex\"}}'),
(2, 2, 'en', '{\"Instagram\":{\"title\":\"Instagram\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/instagram.svg\",\"link\":\"https:\\/\\/www.instagram.com\\/\",\"order\":\"1\"},\"Whatsapp\":{\"title\":\"Whatsapp\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/whatsapp.svg\",\"link\":\"https:\\/\\/web.whatsapp.com\\/\",\"order\":\"2\"},\"Twitter\":{\"title\":\"Twitter\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/twitter.svg\",\"link\":\"https:\\/\\/twitter.com\\/\",\"order\":\"3\"},\"Facebook\":{\"title\":\"Facebook\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/facebook.svg\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"order\":\"4\"}}'),
(3, 4, 'fa', '{\"first_column\":{\"title\":\"\\u0633\\u062a\\u0648\\u0646 \\u0627\\u0648\\u0644\",\"value\":\"<p>\\u0644\\u06cc\\u0646\\u06a9 \\u06f1<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 \\u06f2<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 \\u06f3<\\/p>\"},\"second_column\":{\"title\":\"\\u0633\\u062a\\u0648\\u0646 \\u062f\\u0648\\u0645\",\"value\":\"<p>\\u0644\\u06cc\\u0646\\u06a9 1<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 2<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 3<\\/p>\"},\"third_column\":{\"title\":\"\\u0633\\u062a\\u0648\\u0646 \\u0633\\u0648\\u0645\",\"value\":\"<p>\\u0644\\u06cc\\u0646\\u06a9 1<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 \\u06f2<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 \\u06f3<\\/p>\"},\"forth_column\":{\"title\":\"\\u0633\\u062a\\u0648\\u0646 \\u0686\\u0647\\u0627\\u0631\",\"value\":\"<p>\\u0644\\u06cc\\u0646\\u06a9 1<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 \\u06f2<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 \\u06f3<\\/p><p>\\u0644\\u06cc\\u0646\\u06a9 \\u06f4<\\/p>\"}}'),
(4, 5, 'en', '{\"site_name\":\"Harvard\",\"site_email\":\"abc@xyz.com\",\"site_phone\":\"017-000-11111\",\"site_language\":\"EN\",\"register_method\":\"email\",\"user_languages\":[\"EN\"],\"fav_icon\":\"\\/store\\/1\\/harvard.jpg\",\"logo\":\"\\/store\\/1\\/harvard.jpg\",\"footer_logo\":\"\\/store\\/1\\/harvard.jpg\",\"webinar_reminder_schedule\":\"1\",\"preloading\":\"1\",\"hero_section2\":\"1\"}'),
(5, 6, 'en', '{\"commission\":\"20\",\"tax\":\"10\",\"minimum_payout\":\"50\",\"currency\":\"USD\",\"currency_position\":\"left\",\"price_display\":\"only_price\"}'),
(6, 8, 'en', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Rocket LMS is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(7, 12, 'en', '{\"css\":null,\"js\":null}'),
(8, 14, 'en', '{\"admin_login\":\"\\/store\\/1\\/default_images\\/admin_login.jpg\",\"admin_dashboard\":\"\\/store\\/1\\/default_images\\/admin_dashboard.jpg\",\"login\":\"\\/store\\/1\\/default_images\\/front_login.jpg\",\"register\":\"\\/store\\/1\\/default_images\\/front_register.jpg\",\"remember_pass\":\"\\/store\\/1\\/default_images\\/password_recovery.jpg\",\"verification\":\"\\/store\\/1\\/default_images\\/verification.jpg\",\"search\":\"\\/store\\/1\\/default_images\\/search_cover.png\",\"categories\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"become_instructor\":\"\\/store\\/1\\/default_images\\/become_instructor.jpg\",\"certificate_validation\":\"\\/store\\/1\\/default_images\\/certificate_validation.jpg\",\"blog\":\"\\/store\\/1\\/default_images\\/blogs_cover.png\",\"instructors\":\"\\/store\\/1\\/default_images\\/instructors_cover.png\",\"organizations\":\"\\/store\\/1\\/default_images\\/organizations_cover.png\",\"dashboard\":\"\\/store\\/1\\/dashboard.png\",\"user_avatar\":\"\\/store\\/1\\/default_images\\/default_profile.jpg\",\"user_cover\":\"\\/store\\/1\\/default_images\\/default_cover.jpg\",\"instructor_finder_wizard\":\"\\/store\\/1\\/default_images\\/instructor_finder_wizard.jpg\",\"products_lists\":\"\\/store\\/1\\/default_images\\/category_cover.png\"}'),
(9, 15, 'en', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Rocket LMS is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(10, 20, 'en', '[\"Inappropriate Course Content\",\"Inappropriate Behavior\",\"Policy Violation\",\"Spammy Content\",\"Other\"]'),
(11, 22, 'en', '{\"new_comment_admin\":\"7\",\"support_message_admin\":\"10\",\"support_message_replied_admin\":\"11\",\"promotion_plan_admin\":\"29\",\"new_contact_message\":\"26\",\"new_badge\":\"2\",\"change_user_group\":\"3\",\"course_created\":\"4\",\"course_approve\":\"5\",\"course_reject\":\"6\",\"new_comment\":\"7\",\"support_message\":\"8\",\"support_message_replied\":\"9\",\"new_rating\":\"17\",\"webinar_reminder\":\"27\",\"new_financial_document\":\"12\",\"payout_request\":\"13\",\"payout_proceed\":\"14\",\"offline_payment_request\":\"18\",\"offline_payment_approved\":\"19\",\"offline_payment_rejected\":\"20\",\"new_sales\":\"15\",\"new_purchase\":\"16\",\"new_subscribe_plan\":\"21\",\"promotion_plan\":\"28\",\"new_appointment\":\"22\",\"new_appointment_link\":\"23\",\"appointment_reminder\":\"24\",\"meeting_finished\":\"25\",\"new_certificate\":\"30\",\"waiting_quiz\":\"31\",\"waiting_quiz_result\":\"32\",\"payout_request_admin\":\"13\",\"product_new_sale\":\"33\",\"product_new_purchase\":\"34\",\"product_new_comment\":\"35\",\"product_tracking_code\":\"36\",\"product_new_rating\":\"37\",\"product_receive_shipment\":\"38\",\"product_out_of_stock\":\"39\",\"student_send_message\":\"40\",\"instructor_send_message\":\"41\",\"instructor_set_grade\":\"42\",\"send_post_in_topic\":\"44\",\"publish_instructor_blog_post\":\"45\",\"new_comment_for_instructor_blog_post\":\"46\",\"meeting_reserve_reminder\":\"47\",\"subscribe_reminder\":\"48\"}'),
(12, 23, 'en', '{\"540\":{\"title\":\"Qatar National Bank\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/Qatar National Bank.png\",\"card_id\":\"2578-4910-3682-6288\",\"account_id\":\"38152294372\",\"iban\":\"QA66QUWW934528129454345775226\"},\"334\":{\"title\":\"State Bank of India\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/State Bank of India.png\",\"card_id\":\"6282-4518-1237-7641\",\"account_id\":\"56238341127\",\"iban\":\"IN37ABNA2422193788\"},\"jhgDW\":{\"title\":\"JPMorgan\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/jpmorgan.png\",\"card_id\":\"5012-4518-1772-8911\",\"account_id\":\"46237751125\",\"iban\":\"NL37ABNA2423554788\"}}'),
(13, 24, 'en', '{\"background\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"latitude\":\"43.45905\",\"longitude\":\"11.87300\",\"map_zoom\":\"16\",\"phones\":\"415-716-1166 , 415-716-1167\",\"emails\":\"mail@lms.rocket-soft.org , info@lms.rocket-soft.org\",\"address\":\"4193 Roosevelt Street\\r\\nSan Francisco, CA 94103\"}'),
(14, 25, 'en', '{\"latest_classes\":\"1\",\"best_sellers\":\"1\",\"free_classes\":\"1\",\"discount_classes\":\"1\",\"best_rates\":\"1\",\"trend_categories\":\"1\",\"testimonials\":\"1\",\"subscribes\":\"1\",\"blog\":\"1\",\"organizations\":\"1\",\"instructors\":\"1\",\"video_or_image_section\":\"1\",\"find_instructors\":\"1\",\"reward_program\":\"1\"}'),
(15, 26, 'en', '{\"02nh9a\":{\"title\":\"Home\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"Courses\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"Instructors\",\"link\":\"\\/instructor-finder\",\"order\":\"3\"},\"Uo5b2v\":{\"title\":\"Store\",\"link\":\"\\/products\",\"order\":\"4\"},\"Wnq5Qb\":{\"title\":\"Forums\",\"link\":\"\\/forums\",\"order\":\"5\"}}'),
(16, 27, 'en', '{\"link\":\"\\/classes\",\"title\":\"Start learning anywhere, anytime...\",\"description\":\"Use Rocket LMS to access high-quality education materials without any limitations in the easiest way.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(17, 28, 'en', '{\"error_image\":\"\\/store\\/1\\/default_images\\/404.svg\",\"error_title\":\"title for error 404\",\"error_description\":\"404 Error description\"}'),
(18, 29, 'en', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user.png\"}'),
(19, 30, 'en', '{\"affiliate_user_commission\":\"5\",\"affiliate_user_amount\":\"20\",\"referred_user_amount\":\"10\",\"referral_description\":\"You can share your affiliate URL you will get the above rewards when a user uses the platform.\"}'),
(20, 4, 'en', '{\"first_column\":{\"title\":\"About US\",\"value\":\"<p><span style=\\\"font-weight: bolder;\\\">TRAIN ME<\\/span>&nbsp;&nbsp;is a fully-featured learning management system that helps you to run your education business in several hours. This platform helps instructors to create professional education materials and helps students to learn from the best instructors.<span style=\\\"color: rgb(255, 255, 255); font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\\\">Rocket LMS is a fully-featured learning management system that helps you to run your education business in several hours. This platform helps instructors to create professional education materials and helps students to learn from the best instructors.<\\/span><font color=\\\"#ffffff\\\"><\\/font><\\/p>\"},\"second_column\":{\"title\":\"Additional Links\",\"value\":\"<p><a href=\\\"\\/login\\\"><font color=\\\"#ffffff\\\">- Login<\\/font><\\/a><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/register\\\"><font color=\\\"#ffffff\\\">- Register<\\/font><\\/a><br><\\/font><\\/p><p><a href=\\\"\\/blog\\\"><font color=\\\"#ffffff\\\">- Blog<\\/font><\\/a><\\/p><p><a href=\\\"\\/contact\\\"><font color=\\\"#ffffff\\\">- Contact us<\\/font><\\/a><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/certificate_validation\\\"><font color=\\\"#ffffff\\\">- Certificate validation<\\/font><\\/a><br><\\/font><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/become-instructor\\\"><font color=\\\"#ffffff\\\">- Become instructor<\\/font><\\/a><br><\\/font><\\/p><p><a href=\\\"\\/pages\\/terms\\\"><font color=\\\"#ffffff\\\">- Terms &amp; rules<\\/font><\\/a><\\/p><p><a href=\\\"\\/pages\\/about\\\"><font color=\\\"#ffffff\\\">- About us<\\/font><\\/a><br><\\/p>\"},\"third_column\":{\"title\":\"Similar Businesses\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udemy<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillshare<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Coursera<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Lynda<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillsoft<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udacity<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- edX<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Masterclass<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"Purchase Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(21, 4, 'de', '{\"first_column\":{\"title\":\"german first\",\"value\":\"<p>german link 1<\\/p><p>german link 2<\\/p><p>german link 3<\\/p>\"}}'),
(24, 26, 'fa', '{\"About_Us\":{\"title\":\"\\u062f\\u0631\\u0628\\u0627\\u0631\\u0647 \\u0645\\u0627\",\"link\":\"\\/pages\\/about\",\"order\":\"4\"},\"Blog\":{\"title\":\"\\u0648\\u0628\\u0644\\u0627\\u06af\",\"link\":\"\\/blog\",\"order\":\"3\"},\"Contact\":{\"title\":\"\\u062a\\u0645\\u0627\\u0633 \\u0628\\u0627 \\u0645\\u0627\",\"link\":\"\\/contact\",\"order\":\"2\"},\"KfoH9Y\":{\"title\":\"\\u062e\\u0627\\u0646\\u0647\",\"link\":\"\\/\",\"order\":\"1\"}}'),
(25, 29, 'fa', '{\"link\":\"\\/pages\\/about\",\"background\":\"\\/store\\/1\\/WallpaperGram.IR_1553794510_24488.jpg\"}'),
(26, 8, 'fa', '{\"title\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0635\\u0644\\u06cc\",\"description\":\"\\u0622\\u0645\\u0648\\u0632\\u0634 \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646 \\u06cc\\u06a9\\u06cc \\u0627\\u0632 \\u0628\\u0647\\u062a\\u0631\\u06cc\\u0646 \\u0627\\u0646\\u062a\\u062e\\u0627\\u0628 \\u0647\\u0627 \\u0628\\u0631\\u0627\\u06cc \\u0631\\u0634\\u062f \\u0627\\u0633\\u062a\\r\\n\\u0627\\u0632 \\u0628\\u0647\\u062a\\u0631\\u06cc\\u0646 \\u0645\\u0639\\u0644\\u0645\\u0627\\u0646 \\u0633\\u0631\\u0627\\u0633\\u0631 \\u062c\\u0647\\u0627\\u0646 \\u0628\\u06cc\\u0627\\u0645\\u0648\\u0632\\u06cc\\u062f\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/slider.png\"}'),
(27, 15, 'fa', '{\"title\":\"\\u0627\\u0632 \\u0622\\u0645\\u0648\\u0632\\u0634 \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646 \\u0647\\u0645\\u06cc\\u0634\\u0647 \\u0644\\u0630\\u062a \\u0628\\u0628\\u0631\\u06cc\\u062f ...\",\"description\":\"\\u0622\\u0645\\u0648\\u0632\\u0634 \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646 \\u06cc\\u06a9\\u06cc \\u0627\\u0632 \\u0628\\u0647\\u062a\\u0631\\u06cc\\u0646 \\u0627\\u0646\\u062a\\u062e\\u0627\\u0628 \\u0647\\u0627 \\u0628\\u0631\\u0627\\u06cc \\u0631\\u0634\\u062f \\u0627\\u0633\\u062a\\r\\n\\u0627\\u0632 \\u0628\\u0647\\u062a\\u0631\\u06cc\\u0646 \\u0645\\u0639\\u0644\\u0645\\u0627\\u0646 \\u0633\\u0631\\u0627\\u0633\\u0631 \\u062c\\u0647\\u0627\\u0646 \\u0628\\u06cc\\u0627\\u0645\\u0648\\u0632\\u06cc\\u062f\\r\\n\\u0622\\u0645\\u0648\\u0632\\u0634 \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646 \\u06cc\\u06a9\\u06cc \\u0627\\u0632 \\u0628\\u0647\\u062a\\u0631\\u06cc\\u0646 \\u0627\\u0646\\u062a\\u062e\\u0627\\u0628 \\u0647\\u0627 \\u0628\\u0631\\u0627\\u06cc \\u0631\\u0634\\u062f \\u0627\\u0633\\u062a\\r\\n\\u0627\\u0632 \\u0628\\u0647\\u062a\\u0631\\u06cc\\u0646 \\u0645\\u0639\\u0644\\u0645\\u0627\\u0646 \\u0633\\u0631\\u0627\\u0633\\u0631 \\u062c\\u0647\\u0627\\u0646 \\u0628\\u06cc\\u0627\\u0645\\u0648\\u0632\\u06cc\\u062f\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/assets\\/default\\/img\\/home\\/business-team.json\",\"has_lottie\":\"1\"}'),
(28, 27, 'fa', '{\"link\":\"\\/home\",\"title\":\"\\u0634\\u0631\\u0648\\u0639 \\u06a9\\u0644\\u0627\\u0633\\u0647\\u0627\\u06cc \\u0632\\u0646\\u062f\\u0647 \\u062e\\u0635\\u0648\\u0635\\u06cc \\u0648 \\u0639\\u0645\\u0648\\u0645\\u06cc\",\"description\":\"\\u0628\\u0647 \\u0631\\u0627\\u062d\\u062a\\u06cc \\u0645\\u06cc \\u062a\\u0648\\u0627\\u0646\\u06cc\\u062f \\u06a9\\u0644\\u0627\\u0633 \\u0647\\u0627\\u06cc \\u0632\\u0646\\u062f\\u0647 \\u0631\\u0627\\u06cc\\u06af\\u0627\\u0646 \\u0648 \\u067e\\u0648\\u0644\\u06cc \\u0627\\u06cc\\u062c\\u0627\\u062f \\u06a9\\u0646\\u06cc\\u062f\",\"background\":\"\\/assets\\/default\\/img\\/home\\/video-bg.png\"}'),
(29, 20, 'fa', '[\"\\u062f\\u0644\\u06cc\\u0644 \\u06f1\",\"\\u062f\\u0644\\u06cc\\u0644 \\u06f2\",\"\\u062f\\u0644\\u06cc\\u0644 \\u06f3\"]'),
(31, 4, 'ar', '{\"first_column\":{\"title\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS \\u0647\\u0648 \\u0646\\u0638\\u0627\\u0645 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u062a\\u0639\\u0644\\u0645 \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f\\u0643 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0639\\u0645\\u0627\\u0644\\u0643 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0641\\u064a \\u0639\\u062f\\u0629 \\u0633\\u0627\\u0639\\u0627\\u062a. \\u062a\\u0633\\u0627\\u0639\\u062f \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0648\\u0627\\u062f \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0627\\u062d\\u062a\\u0631\\u0627\\u0641\\u064a\\u0629 \\u0648\\u062a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0645\\u0646 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\",\"value\":\"<p><a href=\\\"\\/login\\\"><span style=\\\"color: #ffffff;\\\">- \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/register\\\"><span style=\\\"color: #ffffff;\\\">- \\u062a\\u0633\\u062c\\u064a\\u0644<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/blog\\\"><span style=\\\"color: #ffffff;\\\">- \\u0645\\u0642\\u0627\\u0644\\u0627\\u062a<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/contact\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/certificate_validation\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0635\\u062d\\u0629 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/become-instructor\\\"><span style=\\\"color: #ffffff;\\\">- \\u0623\\u0635\\u0628\\u062d \\u0645\\u062f\\u0631\\u0628\\u0627<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/terms\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0648\\u0627\\u0644\\u0642\\u0648\\u0627\\u0639\\u062f<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/about\\\"><span style=\\\"color: #ffffff;\\\">- \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627<\\/span><\\/a><\\/p>\"},\"third_column\":{\"title\":\"\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0645\\u0645\\u0627\\u062b\\u0644\\u0629\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u064a\\u0648\\u062f\\u0645\\u064a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0633\\u06a9\\u06cc\\u0644 \\u0634\\u06cc\\u0631<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0643\\u0631\\u0633 \\u0627\\u064a\\u0631\\u0627<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0644\\u06cc\\u0646\\u062f\\u0627<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0633\\u0643\\u064a\\u0644 \\u0633\\u0641\\u062a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0648\\u062f\\u0627\\u0633\\u064a\\u062a\\u064a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">\\u0627\\u062f\\u0643\\u0633<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0645\\u0633\\u062a\\u0631 \\u0643\\u0644\\u0633<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"\\u0642\\u0645 \\u0628\\u0634\\u0631\\u0627\\u0621 Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(32, 31, 'en', '{\"agora_max_bitrate\":\"2260\",\"agora_min_bitrate\":\"1130\",\"agora_frame_rate\":\"15\",\"timezone_in_register\":\"1\",\"timezone_in_create_webinar\":\"1\",\"direct_classes_payment_button_status\":\"1\",\"extra_time_to_join_status\":\"1\",\"extra_time_to_join_default_value\":\"20\",\"show_other_register_method\":\"1\",\"show_certificate_additional_in_register\":\"1\"}'),
(33, 32, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"Find the best instructor\",\"description\":\"Looking for an instructor? Find the best instructors according to different parameters like gender, skill level, price, meeting type, rating, etc.\\r\\nFind instructors on the map.\",\"button1\":{\"title\":\"Tutor Finder\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"Tutors on Map\",\"link\":\"\\/instructor-finder\"}}'),
(34, 33, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"Win Club Points\",\"description\":\"Use Rocket LMS and win club points according to different activities.\\r\\nYou will be able to use your club points to get free prizes and courses. Start using the system now and collect points!\",\"button1\":{\"title\":\"Rewards\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"Points Club\",\"link\":\"\\/panel\\/rewards\"}}'),
(35, 34, 'en', '{\"status\":\"0\",\"exchangeable\":\"1\",\"exchangeable_unit\":\"200\",\"want_more_points_link\":\"\\/pages\\/reward_points_system\"}'),
(38, 37, 'en', '[]'),
(39, 38, 'en', '{\"courses_capacity\":\"20\",\"courses_count\":\"5\",\"meeting_count\":\"20\",\"product_count\":\"5\"}'),
(40, 39, 'en', '{\"instructors_count\":\"3\",\"students_count\":\"30\",\"courses_capacity\":\"30\",\"courses_count\":\"10\",\"meeting_count\":\"40\",\"product_count\":\"10\"}'),
(41, 40, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"Become an instructor\",\"description\":\"Are you interested to be a part of our community?\\r\\nYou can be a part of our community by signing up as an instructor or organization.\",\"button1\":{\"title\":\"Become an Instructor\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"Registration Packages\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(42, 8, 'ar', '{\"title\":\"\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 ...\",\"description\":\"Rocket LMS \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0648\\u0646\\u0634\\u0631 \\u062f\\u0648\\u0631\\u0627\\u062a \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0641\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0646\\u0635\\u064a\\u0629 \\u0648\\u0643\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u060c \\u0648\\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(43, 8, 'es', '{\"title\":\"Alegr\\u00eda de aprender y ense\\u00f1ar ...\",\"description\":\"Rocket LMS es una plataforma educativa con todas las funciones que ayuda a los instructores a crear y publicar cursos de video, clases en vivo y cursos de texto y ganar dinero, y ayuda a los estudiantes a aprender de la manera m\\u00e1s f\\u00e1cil.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(44, 15, 'ar', '{\"title\":\"\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 ...\",\"description\":\"Rocket LMS \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0648\\u0646\\u0634\\u0631 \\u062f\\u0648\\u0631\\u0627\\u062a \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0641\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0646\\u0635\\u064a\\u0629 \\u0648\\u0643\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u060c \\u0648\\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(45, 15, 'es', '{\"title\":\"Alegr\\u00eda de aprender y ense\\u00f1ar ...\",\"description\":\"Rocket LMS es una plataforma educativa con todas las funciones que ayuda a los instructores a crear y publicar cursos de video, clases en vivo y cursos de texto y ganar dinero, y ayuda a los estudiantes a aprender de la manera m\\u00e1s f\\u00e1cil.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(46, 27, 'ar', '{\"link\":\"\\/classes\",\"title\":\"\\u0627\\u0628\\u062f\\u0623 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0641\\u064a \\u0623\\u064a \\u0645\\u0643\\u0627\\u0646 \\u0648\\u0641\\u064a \\u0623\\u064a \\u0648\\u0642\\u062a ...\",\"description\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 Rocket LMS \\u0644\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u0645\\u0648\\u0627\\u062f \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u062f\\u0648\\u0646 \\u0623\\u064a \\u0642\\u064a\\u0648\\u062f \\u0648\\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(47, 27, 'es', '{\"link\":\"\\/classes\",\"title\":\"Empiece a aprender en cualquier lugar, en cualquier momento ...\",\"description\":\"Utilice Rocket LMS para acceder a materiales educativos de alta calidad sin limitaciones de la forma m\\u00e1s sencilla.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(48, 29, 'ar', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user-ar.png\"}'),
(49, 29, 'es', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user-sp.png\"}'),
(50, 4, 'es', '{\"first_column\":{\"title\":\"Sobre Nosotras\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS es un sistema de gesti\\u00f3n de aprendizaje con todas las funciones que le ayuda a gestionar su negocio educativo en varias horas. Esta plataforma ayuda a los instructores a crear materiales educativos profesionales y ayuda a los estudiantes a aprender de los mejores instructores.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"Enlaces Adicionales\",\"value\":\"<p><a href=\\\"\\/login\\\"><span style=\\\"color: #ffffff;\\\">- Acceso<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/register\\\"><span style=\\\"color: #ffffff;\\\">- Registrarse<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/blog\\\"><span style=\\\"color: #ffffff;\\\">- Blog<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/contact\\\"><span style=\\\"color: #ffffff;\\\">- Contacta con nosotras<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/certificate_validation\\\"><span style=\\\"color: #ffffff;\\\">- Validaci\\u00f3n de certificado<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/become-instructor\\\"><span style=\\\"color: #ffffff;\\\">- Convi\\u00e9rtete en instructor<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/terms\\\"><span style=\\\"color: #ffffff;\\\">- T\\u00e9rminos y reglas<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/about\\\"><span style=\\\"color: #ffffff;\\\">- Sobre nosotras<\\/span><\\/a><\\/p>\"},\"third_column\":{\"title\":\"Negocios Similares\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udemy<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillshare<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Coursera<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Lynda<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillsoft<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udacity<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- edX<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Masterclass<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"Compra Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(51, 26, 'es', '{\"02nh9a\":{\"title\":\"hogar\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"Cursos\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"Instructoras\",\"link\":\"\\/instructor-finder\",\"order\":\"3\"},\"VBxDrB\":{\"title\":\"Blog\",\"link\":\"\\/blog\",\"order\":\"4\"},\"Uo5b2v\":{\"title\":\"Tienda\",\"link\":\"\\/products\",\"order\":\"4\"},\"Wnq5Qb\":{\"title\":\"Foros\",\"link\":\"\\/forums\",\"order\":\"5\"}}'),
(52, 26, 'ar', '{\"02nh9a\":{\"title\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"\\u0627\\u0644\\u062f\\u0648\\u0631\\u0627\\u062a\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"\\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646\",\"link\":\"\\/instructor-finder\",\"order\":\"3\"},\"Uo5b2v\":{\"title\":\"\\u0645\\u062a\\u062c\\u0631\",\"link\":\"\\/products\",\"order\":\"4\"},\"Wnq5Qb\":{\"title\":\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062f\\u064a\\u0627\\u062a\",\"link\":\"\\/forums\",\"order\":\"5\"}}'),
(53, 32, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"\\u0627\\u0639\\u062b\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0641\\u0636\\u0644 \\u0645\\u062f\\u0631\\u0628\",\"description\":\"\\u062a\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0645\\u062f\\u0631\\u0628\\u061f \\u0627\\u0639\\u062b\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0645\\u0639\\u0627\\u064a\\u064a\\u0631 \\u0645\\u062e\\u062a\\u0644\\u0641\\u0629 \\u0645\\u062b\\u0644 \\u0627\\u0644\\u062c\\u0646\\u0633 \\u0648\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0629 \\u0648\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0648\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639 \\u0648\\u0627\\u0644\\u062a\\u0642\\u064a\\u064a\\u0645 \\u0648\\u0645\\u0627 \\u0625\\u0644\\u0649 \\u0630\\u0644\\u0643.\\r\\n\\u0627\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629.\",\"button1\":{\"title\":\"\\u0627\\u0644\\u0628\\u0627\\u062d\\u062b \\u0639\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"\\u0645\\u062f\\u0631\\u0633\\u0648\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629\",\"link\":\"\\/instructor-finder\"}}'),
(54, 32, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"Encuentra la mejor instructora\",\"description\":\"\\u00bfBuscas un instructor? Encuentre los mejores instructores seg\\u00fan diferentes par\\u00e1metros como g\\u00e9nero, nivel de habilidad, precio, tipo de reuni\\u00f3n, calificaci\\u00f3n, etc.\\r\\nEncuentra instructores en el mapa.\",\"button1\":{\"title\":\"Buscadora de tutores\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"Tutores en el mapa\",\"link\":\"\\/instructor-finder\"}}'),
(55, 33, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"\\u0627\\u0631\\u0628\\u062d \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a\",\"description\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 Rocket LMS \\u0648\\u0627\\u0631\\u0628\\u062d \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0644\\u0641\\u0629.\\r\\n\\u0633\\u062a\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062c\\u0648\\u0627\\u0626\\u0632 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0645\\u062c\\u0627\\u0646\\u064a\\u0629. \\u0627\\u0628\\u062f\\u0623 \\u0641\\u064a \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0622\\u0646 \\u0648\\u0627\\u062c\\u0645\\u0639 \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637!\",\"button1\":{\"title\":\"\\u0627\\u0644\\u0645\\u0643\\u0627\\u0641\\u0622\\u062a\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637\",\"link\":\"\\/panel\\/rewards\"}}'),
(56, 33, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"Gana puntos del club\",\"description\":\"Utilice Rocket LMS y gane puntos del club seg\\u00fan diferentes actividades.\\r\\nPodr\\u00e1s utilizar tus puntos del club para conseguir premios y cursos gratuitos. \\u00a1Comience a usar el sistema ahora y acumule puntos!\",\"button1\":{\"title\":\"Recompensas\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"club de puntos\",\"link\":\"\\/panel\\/rewards\"}}'),
(57, 40, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"\\u0643\\u0646 \\u0645\\u062f\\u0631\\u0628\\u064b\\u0627\",\"description\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u0647\\u062a\\u0645 \\u0628\\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u062c\\u0632\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u062c\\u062a\\u0645\\u0639\\u0646\\u0627\\u061f\\r\\n\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u062c\\u0632\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u062c\\u062a\\u0645\\u0639\\u0646\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0643\\u0645\\u062f\\u0631\\u0628 \\u0623\\u0648 \\u0645\\u0646\\u0638\\u0645\\u0629.\",\"button1\":{\"title\":\"\\u0643\\u0646 \\u0645\\u062f\\u0631\\u0633\\u064b\\u0627\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"\\u062d\\u0632\\u0645 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(58, 40, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"Convi\\u00e9rtete en instructora\",\"description\":\"\\u00bfEst\\u00e1s interesado en ser parte de nuestra comunidad?\\r\\nPuedes ser parte de nuestra comunidad registr\\u00e1ndote como instructor u organizaci\\u00f3n.\",\"button1\":{\"title\":\"Convi\\u00e9rtete en instructora\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"Paquetes de registro\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(59, 42, 'en', '{\"primary\":\"#050a30\",\"primary-border\":\"#050a30\",\"admin_primary\":\"#050a30\"}'),
(60, 44, 'en', '{\"cookie_settings_modal_message\":\"<p>When you visit any of our websites, it may store or retrieve information on your browser, mostly in the form of cookies. This information might be about you, your preferences or your device and is mostly used to make the site work as you expect it to. The information does not usually directly identify you, but it can give you a more personalized web experience. Because we respect your right to privacy, you can choose not to allow some types of cookies. Click on the different category headings to find out more and manage your preferences. Please note, that blocking some types of cookies may impact your experience of the site and the services we are able to offer.<\\/p>\",\"cookie_settings_modal_items\":{\"dDRjfkGvQfFzQJpa\":{\"title\":\"Strictly Necessary\",\"description\":\"These cookies are necessary for our website to function properly and cannot be switched off in our systems. They are usually only set in response to actions made by you that amount to a request for services, such as setting your privacy preferences, logging in or filling in forms, or where they\\u2019re essential to providing you with a service you have requested. You cannot opt out of these cookies. You can set your browser to block or alert you about these cookies, but if you do, some parts of the site will not then work. These cookies do not store any personally identifiable information.\",\"required\":\"1\"},\"mOzJowgvTnWFlRzz\":{\"title\":\"Performance Cookies\",\"description\":\"These cookies allow us to count visits and traffic sources so we can measure and improve the performance of our site. They help us to know which pages are the most and least popular and see how visitors move around the site, which helps us optimize your experience. All information these cookies collect is aggregated and therefore anonymous. If you do not allow these cookies we will not be able to use your data in this way.\",\"required\":\"0\"},\"XBMtdYaeSrqMicTH\":{\"title\":\"Functional Cookies\",\"description\":\"These cookies enable the website to provide enhanced functionality and personalization. They may be set by us or by third-party providers whose services we have added to our pages. If you do not allow these cookies then some or all of these services may not function properly.\",\"required\":\"0\"},\"XlLqzsvNpRqdcNWP\":{\"title\":\"Targeting Cookies\",\"description\":\"These cookies may be set through our site by our advertising partners. They may be used by those companies to build a profile of your interests and show you relevant adverts on other sites. They do not store directly personal information but are based on uniquely identifying your browser and internet device. If you do not allow these cookies, you will experience less targeted advertising.\",\"required\":\"0\"}}}'),
(61, 41, 'en', '{\"status\":\"0\",\"virtual_product_commission\":\"20\",\"physical_product_commission\":\"10\",\"store_tax\":\"5\",\"possibility_create_virtual_product\":\"1\",\"possibility_create_physical_product\":\"1\",\"shipping_tracking_url\":\"https:\\/\\/www.tracking.my\\/\",\"activate_comments\":\"1\"}'),
(62, 46, 'en', '{\"main\":{\"regular\":\"\\/store\\/1\\/fonts\\/montserrat-regular.woff2\",\"bold\":\"\\/store\\/1\\/fonts\\/montserrat-bold.woff2\",\"medium\":\"\\/store\\/1\\/fonts\\/montserrat-medium.woff2\"},\"rtl\":{\"regular\":\"\\/store\\/1\\/fonts\\/Vazir-Regular.woff2\",\"bold\":\"\\/store\\/1\\/fonts\\/Vazir-Bold.woff2\",\"medium\":\"\\/store\\/1\\/fonts\\/Vazir-Medium.woff2\"}}'),
(63, 43, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/forums\\/forum_section.jpg\",\"title\":\"Have a Question? Ask it in forum and get answer\",\"description\":\"Our forums helps you to create your questions on different subjects and communicate with other forum users. Our users will help you to get the best answer!\",\"button1\":{\"title\":\"Create a new topic\",\"link\":\"\\/forums\\/create-topic\"},\"button2\":{\"title\":\"Browse forums\",\"link\":\"\\/forums\"}}'),
(64, 45, 'en', '{\"mobile_app_hero_image\":\"\\/store\\/1\\/default_images\\/app_only.png\",\"mobile_app_description\":\"<div>Is an amazing, modern, and clean landing page for showcasing your app or anything else.<\\/div><div><br><\\/div><div>A mobile application or app is a computer program or software application designed to run on a mobile device such as a phone, tablet, or watch. Mobile applications often stand in contrast to desktop applications which are designed to run on desktop computers, and web applications which run in mobile web browsers rather than directly on the mobile device.<\\/div>\",\"mobile_app_buttons\":{\"htQgcSjzjLJlGRyY\":{\"title\":\"Download from Play Store\",\"link\":\"https:\\/\\/play.google.com\\/store\\/games\",\"icon\":\"\\/store\\/1\\/default_images\\/google-play.png\",\"color\":\"primary\"}}}'),
(65, 48, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/ads_modal.png\",\"title\":\"Sales Campaign\",\"description\":\"We have a sales campaign on our promoted courses and products. You can purchase 150 products at a discounted price up to 50% discount.\",\"button1\":{\"title\":\"View Courses\",\"link\":\"\\/classes\"},\"button2\":{\"title\":\"View Products\",\"link\":\"\\/products\"}}'),
(66, 52, 'en', '{\"show_guarantee_text\":\"1\",\"guarantee_text\":\"5 Days money back guarantee\"}'),
(67, 47, 'en', '{\"webinar_reminder_schedule\":\"1\",\"meeting_reminder_schedule\":\"1\",\"subscribe_reminder_schedule\":\"48\"}');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent` int UNSIGNED NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  `from_date` int UNSIGNED NOT NULL,
  `to_date` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int UNSIGNED NOT NULL,
  `usable_count` int UNSIGNED NOT NULL,
  `days` int UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `infinite_use` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `usable_count`, `days`, `price`, `icon`, `is_popular`, `infinite_use`, `created_at`) VALUES
(3, 100, 15, 20, '/store/1/default_images/subscribe_packages/bronze.png', 0, 0, 1635441672),
(4, 1000, 30, 100, '/store/1/default_images/subscribe_packages/gold.png', 1, 0, 1635442074),
(5, 400, 30, 50, '/store/1/default_images/subscribe_packages/silver.png', 0, 0, 1635442132);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_reminds`
--

CREATE TABLE `subscribe_reminds` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `subscribe_id` int UNSIGNED NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_translations`
--

CREATE TABLE `subscribe_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `subscribe_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe_translations`
--

INSERT INTO `subscribe_translations` (`id`, `subscribe_id`, `locale`, `title`, `description`) VALUES
(1, 3, 'en', 'Bronze', 'Suggested for personal usage'),
(2, 4, 'en', 'Gold', 'Suggested for big businesses'),
(3, 5, 'en', 'Silver', 'Suggested for small businesses'),
(4, 3, 'ar', 'برونزية', 'اقترح للاستخدام الشخصي'),
(5, 3, 'es', 'Bronce', 'Sugerido para uso personal'),
(6, 4, 'es', 'Oro', 'Sugerido para grandes empresas'),
(7, 4, 'ar', 'ذهب', 'مقترح للشركات الكبيرة'),
(8, 5, 'ar', 'فضة', 'اقترح للشركات الصغيرة'),
(9, 5, 'es', 'Plata', 'Sugerido para pequeñas empresas');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_uses`
--

CREATE TABLE `subscribe_uses` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `subscribe_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `sale_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `department_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('open','close','replied','supporter_replied') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` int UNSIGNED DEFAULT NULL,
  `updated_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_conversations`
--

CREATE TABLE `support_conversations` (
  `id` int UNSIGNED NOT NULL,
  `support_id` int UNSIGNED NOT NULL,
  `supporter_id` int UNSIGNED DEFAULT NULL,
  `sender_id` int UNSIGNED DEFAULT NULL,
  `attach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_departments`
--

CREATE TABLE `support_departments` (
  `id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `support_departments`
--

INSERT INTO `support_departments` (`id`, `created_at`) VALUES
(2, 1635445554),
(3, 1635445486),
(4, 1635445505);

-- --------------------------------------------------------

--
-- Table structure for table `support_department_translations`
--

CREATE TABLE `support_department_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `support_department_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_department_translations`
--

INSERT INTO `support_department_translations` (`id`, `support_department_id`, `locale`, `title`) VALUES
(1, 2, 'en', 'Financial'),
(2, 3, 'en', 'Content'),
(3, 4, 'en', 'Marketing'),
(4, 4, 'ar', 'تسويق'),
(5, 4, 'es', 'Márketing'),
(6, 3, 'es', 'Contenido'),
(7, 3, 'ar', 'المحتوى'),
(8, 2, 'ar', 'الأمور المالية'),
(9, 2, 'es', 'Financiera');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int UNSIGNED NOT NULL,
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('active','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disable',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_avatar`, `rate`, `status`, `created_at`) VALUES
(2, '/store/1/default_images/testimonials/profile_picture (28).jpg', '5', 'active', 1606841889),
(3, '/store/1/default_images/testimonials/profile_picture (50).jpg', '5', 'active', 1606841910),
(4, '/store/1/default_images/testimonials/profile_picture (38).jpg', '5', 'active', 1606841929),
(5, '/store/1/default_images/testimonials/profile_picture (20).jpg', '5', 'active', 1606841946),
(6, '/store/1/default_images/testimonials/profile_picture (52).jpg', '5', 'active', 1606842000);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_translations`
--

CREATE TABLE `testimonial_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `testimonial_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_bio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial_translations`
--

INSERT INTO `testimonial_translations` (`id`, `testimonial_id`, `locale`, `user_name`, `user_bio`, `comment`) VALUES
(1, 2, 'en', 'Ryan Newman', 'Data Analyst at Microsoft', '\"We\'ve used Rocket LMS for the last 2  years. Thanks for the great service.\"'),
(2, 3, 'en', 'Megan Hayward', 'System Administrator at Amazon', '\"We\'re loving it. Rocket LMS is both perfect    and highly adaptable.\"'),
(3, 4, 'en', 'Natasha Hope', 'IT Technician at IBM', '\"I am really satisfied with my Rocket LMS. It\'s the perfect solution for our business.\"'),
(4, 5, 'en', 'Charles Dale', 'Computer Engineer at Oracle', '\"I am so pleased with this product. I couldn\'t have asked for more than this.\"'),
(5, 6, 'en', 'David Patterson', 'Network Technician at Cisco', '\"Rocket LMS impressed me on multiple           levels.\"'),
(6, 2, 'ar', 'Abdul Jabbaar el-Kaleel', 'محلل بيانات في مايكروسوفت', '\"لقد استخدمنا Rocket LMS خلال العامين الماضيين. شكرًا على الخدمة الرائعة.\"'),
(7, 2, 'es', 'Ryan Newman', 'Analista de datos en Microsoft', '\"Hemos utilizado Rocket LMS durante los últimos 2 años. Gracias por el gran servicio\"'),
(8, 3, 'es', 'Megan Hayward', 'Administradora de sistemas en Amazon', '\"Nos encanta. Rocket LMS es perfecto y muy adaptable\".'),
(9, 3, 'ar', 'Khaleela el-Alam', 'مسؤول النظام في أمازون', '\"نحن نحبها. Rocket LMS مثالي وقابل للتكيف بشكل كبير.\"'),
(10, 4, 'es', 'Natasha Hope', 'Técnico de TI en IBM', '\"Estoy realmente satisfecho con mi Rocket LMS. Es la solución perfecta para nuestro negocio\"'),
(11, 4, 'ar', 'Sakeena el-Shad', 'فني تكنولوجيا المعلومات في شركة آی بی ام', '\"أنا راضٍ حقًا عن Rocket LMS. إنه الحل الأمثل لأعمالنا.\"'),
(12, 5, 'es', 'Charles Dale', 'Ingeniera informatica en oracle', '\"Estoy muy satisfecho con este producto. No podría haber pedido más que esto\"'),
(13, 5, 'ar', 'Rifat el-Younis', 'مهندس كمبيوتر', '\"أنا مسرور جدًا بهذا المنتج. لم أستطع طلب أكثر من هذا.\"'),
(14, 6, 'es', 'David Patterson', 'Técnico de redes en Cisco', '\"Rocket LMS me impresionó en varios niveles\"'),
(15, 6, 'ar', 'Ahmed al-Mansouri', 'فني شبكات في سيسكو', '\"لقد أبهرني صاروخ Rocket LMS على مستويات متعددة.\"');

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons`
--

CREATE TABLE `text_lessons` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `chapter_id` int UNSIGNED DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_time` int UNSIGNED DEFAULT NULL,
  `accessibility` enum('free','paid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `check_previous_parts` tinyint(1) NOT NULL DEFAULT '0',
  `access_after_day` int UNSIGNED DEFAULT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int UNSIGNED NOT NULL,
  `updated_at` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons_attachments`
--

CREATE TABLE `text_lessons_attachments` (
  `id` int UNSIGNED NOT NULL,
  `text_lesson_id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `text_lesson_translations`
--

CREATE TABLE `text_lesson_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `text_lesson_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `start_date` int UNSIGNED DEFAULT NULL,
  `end_date` int UNSIGNED DEFAULT NULL,
  `discount` int NOT NULL,
  `capacity` int DEFAULT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_translations`
--

CREATE TABLE `ticket_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `ticket_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_users`
--

CREATE TABLE `ticket_users` (
  `id` int UNSIGNED NOT NULL,
  `ticket_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `trend_categories`
--

CREATE TABLE `trend_categories` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `trend_categories`
--

INSERT INTO `trend_categories` (`id`, `category_id`, `icon`, `color`, `created_at`) VALUES
(1, 609, '/store/1/default_images/trend_categories_icons/briefcase.png', '#7367f0', 1605117336),
(2, 611, '/store/1/default_images/trend_categories_icons/bulb.png', '#ad82e0', 1605117336),
(3, 604, '/store/1/default_images/trend_categories_icons/family.png', '#ff7c59', 1605117336),
(4, 523, '/store/1/default_images/trend_categories_icons/muscle.png', '#28c76f', 1605117336),
(5, 602, '/store/1/default_images/trend_categories_icons/connection.png', '#ea5455', 1605117336),
(6, 520, '/store/1/default_images/trend_categories_icons/palette.png', '#45c0f9', 1605117336);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `organ_id` int DEFAULT NULL,
  `mobile` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `financial_approval` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_settings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `province_id` int UNSIGNED DEFAULT NULL,
  `city_id` int UNSIGNED DEFAULT NULL,
  `district_id` int UNSIGNED DEFAULT NULL,
  `location` point DEFAULT NULL,
  `level_of_training` bit(3) DEFAULT NULL,
  `meeting_type` enum('all','in_person','online') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `status` enum('active','pending','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `access_content` tinyint(1) NOT NULL DEFAULT '1',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `public_message` tinyint(1) NOT NULL DEFAULT '0',
  `account_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_scan` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` int UNSIGNED DEFAULT NULL,
  `affiliate` tinyint(1) NOT NULL DEFAULT '1',
  `can_create_store` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Despite disabling the store feature in the settings, we can enable this feature for that user through the edit page of a user and turning on the store toggle.',
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `ban_start_at` int UNSIGNED DEFAULT NULL,
  `ban_end_at` int UNSIGNED DEFAULT NULL,
  `offline` tinyint(1) NOT NULL DEFAULT '0',
  `offline_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `first_name`, `last_name`, `role_name`, `role_id`, `organ_id`, `mobile`, `email`, `bio`, `password`, `google_id`, `facebook_id`, `remember_token`, `verified`, `financial_approval`, `avatar`, `avatar_settings`, `cover_img`, `headline`, `about`, `address`, `country_id`, `province_id`, `city_id`, `district_id`, `location`, `level_of_training`, `meeting_type`, `status`, `access_content`, `language`, `timezone`, `newsletter`, `public_message`, `account_type`, `iban`, `account_id`, `identity_scan`, `certificate`, `commission`, `affiliate`, `can_create_store`, `ban`, `ban_start_at`, `ban_end_at`, `offline`, `offline_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mr Admin', 'Mr', 'Admin', 'admin', 2, NULL, '0478492537', 'admin@harvard.com.au', 'Senior software developer', '$2a$12$gh2AbpjiCo6ZoZcccmXE7.aLAbl7riDnN3OHL7tSGhs5.KA9f5RO2', NULL, NULL, 'lnNM1zW5wkUzcLDNrGI3rYVmT7aeKM60U9ttz2axMx2sfjJoHtW9exg89kmW', 1, 0, '/store/1/default_images/logo-new.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 'EN', 'Australia/Sydney', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(1030, 'Mr Trainer', 'Mr', 'Trainer', 'teacher', 4, NULL, '0416732053', 'trainer@harvard.com.au', NULL, '$2a$12$tGGSVNU8eu8jzonxP8RoSujhETiOaW/0LozCUgAn2nvYRPtU2OBdK', NULL, NULL, '29dr3SzSOprrapcWK4JNAEixgKnRs29NnKb1hUZQVsyGXrtZUPKOQTIb2qDr', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"ffe082\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, 'EN', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1700703958, NULL, NULL),
(1040, 'Study Leap', 'Study', 'Leap', 'Student Agent', 8, NULL, NULL, 'studyleap@harvard.com.au', NULL, '$2y$10$x8OO71CmiEadm94WNFrKc.39Vrk.8kHQu6a9LX61KMSwrUVLnrfs6', NULL, NULL, 'Xrx4OFp0N8ZcNaPNKjLNRgoLOxyP0deRCVW2GDr3oGUQDO14DtztLRc0xTu4', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"C51162\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1702952793, NULL, NULL),
(1044, 'Samira FARHADI', 'Samira', 'FARHADI', 'student', 1, NULL, NULL, 'sami.farhadi369@gmail.com', NULL, '$2y$10$bLs/WBkqm9ocooHkLS1wAOKuOidquEBHZvj5gXRcceS7Xk8DVZsau', NULL, NULL, 'wTS3SoU5gHqCBwgyQdBSDZ1jaeZ779zJw387dHXkzCL9WbprfnCyGgX9PpdY', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"00796b\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1707882312, NULL, NULL),
(1045, 'Mr. Sam', 'Mr.', 'Sam', 'teacher', 4, NULL, NULL, 'sam_460@aol.com', NULL, '$2y$10$JbCLw/h7zLyo3Z8ECsW47.qob/Xv6uIABR6VMryg5q2ja/qqNmR3u', NULL, NULL, 'oguu6Z6XgDpN7oZ0sTnbqDrRa2yXvqYmmgh1tE8qdV5FdNEF2WQlgEHNYrju', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"fffde7\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1717511298, NULL, NULL),
(1047, 'Himshikha DEVKOTA', 'Himshikha', 'DEVKOTA', 'student', 1, NULL, NULL, 'himshikadevkota1@gmail.com', NULL, '$2y$10$KUJeasy2JZzsHbOs6B.gI.o4AYOs8MvXyhEQa.7RJhFElbXCMLW9.', NULL, NULL, 'd3joRmHyAYDxTVsnje1deVSxLgdX92e4VL5p6ae26ObmjrX2O94Ichn1JIQn', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"f57f17\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1718783897, NULL, NULL),
(1049, 'Santosh ACHARYA', 'Santosh', 'ACHARYA', 'student', 1, NULL, NULL, 'ACHARYASANTOSH65@GMAIL.COM', NULL, '$2y$10$2oyJ/X8XFBeHiaXRY7m4oO6njzAtFHPot4xBE8/4WjzxpuDHwnEf.', NULL, NULL, 'pgTo8vcA3JTxjsmc3a6Q8935DjUeq4kGkKReBHg2HTNXysjl5wWh1ECJc9am', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"D32F2F\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1718875140, NULL, NULL),
(1050, 'Shadab Shahriar', 'Shadab', 'Shahriar', 'admin', 2, NULL, NULL, 'shadab.shahriar@gmail.com', NULL, '$2y$10$sLoP4UXvE6AVKIoKahOlmuLkuKA3cKzZWE/j57MFS8hhFWWI194o2', NULL, NULL, 'lbTZcjTnH4AHLzWWLrLLucPXCouRuYl5yE6i8MmFYNVkrhDEeTbXMcNofPml', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"00acc1\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1718875358, NULL, NULL),
(1051, 'Khadka Sabina', 'Khadka', 'Sabina', 'student', 1, NULL, NULL, 'khadkasawbu@gmail.com', NULL, '$2y$10$Ju34lQBxq7EcrvPYR5UMfO0Yo9MF3CM2g2Ts8vcCfGAitIEGDzwAS', NULL, NULL, 'fmPixlyE4r2B3yMTtcv6g4lTr0tXechCltLHNyJa6ML87WOel575u0njBc7A', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"bf360c\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719290890, NULL, NULL),
(1052, 'Sabina Basnet', 'Sabina', 'Basnet', 'student', 1, NULL, NULL, 'sabinabasnet202@gmail.com', NULL, '$2y$10$YaQFHgiFuPkZYHUaWDoiIuIehdV0TsdJnK9qiWI4qxXQAH2WK157G', NULL, NULL, 'IXvxjcD6IqdMZTBYM5LX2mLQyTBCCG2vtUozqTsrSOz73wJ9lmjPaKr9sXnG', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"ccff90\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719291106, NULL, NULL),
(1053, 'Shakya Shreya', 'Shakya', 'Shreya', 'student', 1, NULL, NULL, 'shreyashakya2004@gmail.com', NULL, '$2y$10$ep976xJG01jLheyyItoRXuUFZARHUdjBlLZmK5Tj8Dj7tEZQzN80O', NULL, NULL, 'whZzWcn40SKkY7xlEnc5gC0cUjeoDqHeQyNlTVOCjEbua1xMXdGmhEsIy9Xx', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"304ffe\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719304477, NULL, NULL),
(1054, 'Shradha KC', 'Shradha', 'KC', 'student', 1, NULL, NULL, 'shraddhakc456@gmail.com', NULL, '$2y$10$Fl15a74QOfu0r4LveRfjdO9fFEmCZjNXMbiU0ma9KTNDSlctyge0e', NULL, NULL, 'Vzj5ICXm4Z36epBwzB9AC81TmVdFUO76zcc0piTTwcOLk51RMMuegC3EpBLY', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"D50000\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719305096, NULL, NULL),
(1055, 'Japsleen Kaur', 'Japsleen', 'Kaur', 'student', 1, NULL, NULL, 'japsleenbajwa@gmail.com', NULL, '$2y$10$lqznCLE1Vi6vScNzzJ7bX.kxTNpF8TWr3rlTMJ5DtOmnihJPPvG0K', NULL, NULL, 'YHyDPBxTs7v1TMCKMHpoO8makj6rRa7OevO8kTFtYHTiIbFP6PNW9euBIMIZ', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"673ab7\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719401372, NULL, NULL),
(1056, 'Nisha Chaudhary', 'Nisha', 'Chaudhary', 'student', 1, NULL, NULL, 'nishach280@gmail.com', NULL, '$2y$10$N27iIIT2Wx6Dw/L2FJku3eoc3IZR07woDUKLm1YCch5hpXrS/pmuG', NULL, NULL, '4JctdHPrUynOymOORvrXEcgnnxPrcuIUv9tjDIB1K47muR9njusgLLYYAqro', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"fafafa\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719401809, NULL, NULL),
(1057, 'KATUWAL ARYA', 'KATUWAL', 'ARYA', 'student', 1, NULL, NULL, 'aryachhetri543@gmail.com', NULL, '$2y$10$nrTgaW.Ol15zXKaecyuZQ..41v9D/JGuawQRab5TyGNN6ceurnuRS', NULL, NULL, 'txsdCnDSHo6bkPEo8VUdGI1EHrTvGH2LzwzvzHHTd1EEHxX4cZTEY5sQ8pgF', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"9fa8da\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719640952, NULL, NULL),
(1058, 'Rabeya Akther', 'Rabeya', 'Akther', 'admin', 2, NULL, NULL, 'rabeya.akther362@outlook.com', NULL, '$2y$10$I0uVkB9mQoXS3VH.V4C5yeKnNaS9dvdBQD8sjgLdg/8TLILDBK.HG', NULL, NULL, 'KnhthUZ8qPrHGssPNwj9849IUJK3sSj1591CP3w4D2yZEyLPMAdnqPAYoESr', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"5e35b1\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719642091, NULL, NULL),
(1059, 'Sabina Bhattarai', 'Sabina', 'Bhattarai', 'student', 1, NULL, NULL, 'sabinabhattarai03@gmail.com', NULL, '$2y$10$6lm9wwJUn1NvuKbBoVupIOb55C2vY9g9o7WASlv5IJseuH7MjF0Ua', NULL, NULL, 'v9OlNzxkm8jeJE1un84BKSjWd17C2E1Rpqe8eEbHqX3W3OJ8RP3Zyp8vkkWu', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"4caf50\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719644556, NULL, NULL),
(1060, 'Riya Shahi', 'Riya', 'Shahi', 'student', 1, NULL, NULL, 'riyashahi043@gmail.com', NULL, '$2y$10$ZW9jB7rp6n9vVU3nOTSjXOAdc1R8g9wTYNBCTKB8gLH6YjgqE3ajW', NULL, NULL, 'WfajnPfTNLrye9szrAw7OHgyEosDtR0Dm7GzjdbaVuNDWlznKBNYlEWYOYhJ', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"5e35b1\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719646554, NULL, NULL),
(1061, 'SUNIL PAUDEL', 'SUNIL', 'PAUDEL', 'student', 1, NULL, NULL, 'sunil.chhetri22222@gmail.com', NULL, '$2y$10$M5jqP0ee/VU1GX1HjnrX.OXOLK1PwnHrmfYmWpXdFtfzM6RJPcOqu', NULL, NULL, 'Urqgg3r4rpFQy1i7O1J5gt5U1CDysh2qyT0Eqpy6OONO4D2SpF4rE9hQLq4W', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"F44336\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719812793, NULL, NULL),
(1062, 'ZANNATUL FERDOUSHI NIPA', 'ZANNATUL FERDOUSHI', 'NIPA', 'student', 1, NULL, NULL, 'zannat97@gmail.com', NULL, '$2y$10$cdyr/aUlJibpf1Y1VqI6OuGjFPp8wzxyVrgRYhZZOR4K7GliWRs2a', NULL, NULL, 'p7nYoa5QbG8dwxAqbocbpMsGbt8Bva97Lw81CK9rxUDnOvFXEfpvZDTtTEqX', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"FF8A80\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719813115, NULL, NULL),
(1063, 'Pawan Neupane', 'Pawan', 'Neupane', 'student', 1, NULL, NULL, 'rneupane602@gmail.com', NULL, '$2y$10$m6D99i6aCpUw2Dyv7MftvOcFrawVdwnwximC7VCYx.zs1MVvrduXW', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"ffff8d\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719813746, NULL, NULL),
(1064, 'Aayush Kandel', 'Aayush', 'Kandel', 'student', 1, NULL, NULL, 'kandelaayush66@gmail.com', NULL, '$2y$10$1tGXSZUK6Dd1HrR9TysmZuXoU77B1luZ1RQGp4qpbnaasBS5ynxWe', NULL, NULL, 'MRKGv481UoPlktCfim0M86yINvzjJLrV1fOzwQLhnGWV40Xe8Y3N0vx6KiTg', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"F06292\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719814591, NULL, NULL),
(1065, 'Aayush Bhusal', 'Aayush', 'Bhusal', 'student', 1, NULL, NULL, 'ayushbhusal2004@gmail.com', NULL, '$2y$10$RuC2LGXhwUOmCHxnJj35H.O.F6V8XAoDDrHNwxHyN53rCNUb0O1gi', NULL, NULL, '0M7lTQnl1IvkCgIiSWsbrPf8ZknB1LcKxuQPu0Iny3tU8C3uAFwvZ1B7Ylx6', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"aed581\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1719985868, NULL, NULL),
(1066, 'Bal Kumari GURUNG', 'Bal Kumari', 'GURUNG', 'student', 1, NULL, NULL, 'seematamushyo@gmail.com', NULL, '$2y$10$7evJu5X3zHlOI4gK5ojrHOKu322NK9IMaWAv2dPHEmSE6gF5eE6Oy', NULL, NULL, 'ODxH6cp7TZL3TwUlmBpfBFfT20VxKxPmWIf03Ss319BC4r93oZVQWaUdgd2w', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"b2ebf2\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720007039, NULL, NULL),
(1067, 'Ramandeep Kaur DHALIWAL', 'Ramandeep Kaur', 'DHALIWAL', 'student', 1, NULL, NULL, 'raandeepkaur@gmail.com', NULL, '$2y$10$g56yIVG/jYKddpKGOu006eLJ.WS4EXspawx/k/.kTqvk0PFyd8kwm', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"827717\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720069430, NULL, NULL),
(1068, 'Salina Magar', 'Salina', 'Magar', 'student', 1, NULL, NULL, 'mgrsalina320@gmail.com', NULL, '$2y$10$qM.0O8Py5O3eWjl7BwYqk.fO53Iy4HQAVxTQlQiUZtyEg9RZ09u2m', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"EF9A9A\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720086793, NULL, NULL),
(1069, 'Utsab Khatiwada', 'Utsab', 'Khatiwada', 'student', 1, NULL, NULL, 'utsabkhatiwada12@gmail.com', NULL, '$2y$10$B9oEx.WWt2w4g/ektgju3ekRHS49lYzO0KufXQN/QoZg2k9fo50YO', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"ff9800\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720087228, NULL, NULL),
(1070, 'Mohammadakram Sirajbhai Vohara', 'Mohammadakram Sirajbhai', 'Vohara', 'student', 1, NULL, NULL, 'arkamvhora45@gmail.com', NULL, '$2y$10$AQiRzqGijpso.MsBwCAI2OYu/OFN8vUeV974YCKeXH5R7Y2Po/Egi', NULL, NULL, 'bPsa8TQBbVm29Ve5druPnYp550WAvbKvsxMhbQhOgPWpQ49LR0rIbDYCpdPz', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"e0e0e0\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720087477, NULL, NULL),
(1071, 'Sanjaya lama lama', 'Sanjaya lama', 'lama', 'student', 1, NULL, NULL, 'sanjay.lama333@gmail.com', NULL, '$2y$10$pSs.nazroDls5Vf8Ay75e.e0hOqJlTbR6wNZk1rJamcuR4gDnjA4q', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"c8e6c9\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720161618, NULL, NULL),
(1072, 'Saru Mahato', 'Saru', 'Mahato', 'student', 1, NULL, NULL, 'sarumahato3@gmail.com', NULL, '$2y$10$X6GpJso1NtpQZq0ogk.XeuItKnj5IeoR6QwtF6CwkzXGe1JOlh.vO', NULL, NULL, '2xCLHWARUbyyfloiITnumnxRH4pTbyRyo2AK5YY18pVpIKRdiUbM1ec79m7p', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"C2185B\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720162026, NULL, NULL),
(1073, 'Prativa K C', 'Prativa', 'K C', 'student', 1, NULL, NULL, 'Prativhakc@gmail.com', NULL, '$2y$10$yxHKiLv4wUsaK1G8k9Z5V.Y9JaM5UBzKn/dlipowD8X0LTGj6zY7O', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"a5d6a7\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720510450, NULL, NULL),
(1074, 'Chhetij THAPA SIRIS', 'Chhetij', 'THAPA SIRIS', 'student', 1, NULL, NULL, 'kshitizathapa@gmail.com', NULL, '$2y$10$AjN5l3rEiXItE61gmdftIe3DjDPeLcEnZTdYu1W3ZKxeL6dbm3Y72', NULL, NULL, 'F0U9OTXSPJS27bPdacwIbaxzOu6Fng8x4gzG7f8c2eiokmL3Iu7vY6jOAxJP', 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"ffca28\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720596272, NULL, NULL),
(1075, 'Kripa Matanchhea', 'Kripa', 'Matanchhea', 'student', 1, NULL, NULL, 'Kripa.01matanchhea@gmail.com', NULL, '$2y$10$nliaTRsCblnrwtTz4PF6mup6OqXE6Xj2PK8muaicJLPw8z79m5Noy', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"7c4dff\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720604467, NULL, NULL),
(1076, 'Mr. Demo Student', 'Mr.', 'Demo Student', 'student', 1, NULL, NULL, 'demo_101@aol.com', NULL, '$2y$10$AQU3pvIlc2Z5fAHsvJjKNejXsAXeFOhz3Tklts95hmMVqx3fCs.s6', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"1565c0\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720606206, NULL, NULL),
(1077, 'Sujata RAI', 'Sujata', 'RAI', 'student', 1, NULL, NULL, 'rai.sujata1111@gmail.com', NULL, '$2y$10$t1qrQJRybqF.ICpzVFUg0e6hh57wgGw7dEJH9sv61md/0YK58/gme', NULL, NULL, 'RCrsNABmLDqNZbQZ86RSx4DHwrWkCQQ4UEfrsbpFRiX3YdBW6nys91VZA7dc', 1, 0, NULL, '{\"color\":\"FFFFFF\",\"background\":\"C62828\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720613422, NULL, NULL),
(1078, 'Gita ARYAL', 'Gita', 'ARYAL', 'student', 1, NULL, NULL, 'geetuaryal111@gmail.com', NULL, '$2y$10$fA74Dz/aKNtqOJDWCX.LIu5b4MBchsNjKuYl/nK1juSh2dTF5.YVK', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"18ffff\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720613620, NULL, NULL),
(1079, 'Gaurav ACHARYA', 'Gaurav', 'ACHARYA', 'student', 1, NULL, NULL, 'gauravach0@gmail.com', NULL, '$2y$10$0zZFm2xyJfTDn9d2AwUH0e5swtruSt8mCEQNZTi6ChNGV.n1COCy2', NULL, NULL, NULL, 1, 0, NULL, '{\"color\":\"000000\",\"background\":\"ccff90\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1720613774, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_badges`
--

CREATE TABLE `users_badges` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `badge_id` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_cookie_security`
--

CREATE TABLE `users_cookie_security` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `type` enum('all','customize') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_cookie_security`
--

INSERT INTO `users_cookie_security` (`id`, `user_id`, `type`, `settings`, `created_at`) VALUES
(2, 1, 'all', NULL, 1655624844);

-- --------------------------------------------------------

--
-- Table structure for table `users_manual_purchase`
--

CREATE TABLE `users_manual_purchase` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_metas`
--

CREATE TABLE `users_metas` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_occupations`
--

CREATE TABLE `users_occupations` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_registration_packages`
--

CREATE TABLE `users_registration_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `instructors_count` int DEFAULT NULL,
  `students_count` int DEFAULT NULL,
  `courses_capacity` int DEFAULT NULL,
  `courses_count` int DEFAULT NULL,
  `meeting_count` int DEFAULT NULL,
  `status` enum('disabled','active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_zoom_api`
--

CREATE TABLE `users_zoom_api` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `jwt_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `mobile` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_at` int UNSIGNED DEFAULT NULL,
  `expired_at` int UNSIGNED DEFAULT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinars`
--

CREATE TABLE `webinars` (
  `id` int UNSIGNED NOT NULL,
  `teacher_id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `type` enum('webinar','course','text_lesson') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` int DEFAULT NULL,
  `duration` int UNSIGNED DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_demo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_demo_source` enum('upload','youtube','vimeo','external_link') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int UNSIGNED DEFAULT NULL,
  `price` int UNSIGNED DEFAULT NULL,
  `organization_price` int UNSIGNED DEFAULT NULL,
  `support` tinyint(1) DEFAULT '0',
  `certificate` tinyint(1) NOT NULL DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `partner_instructor` tinyint(1) DEFAULT '0',
  `subscribe` tinyint(1) DEFAULT '0',
  `forum` tinyint(1) NOT NULL DEFAULT '0',
  `access_days` int UNSIGNED DEFAULT NULL COMMENT 'Number of days to access the course',
  `points` int DEFAULT NULL,
  `message_for_reviewer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','pending','is_draft','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int NOT NULL,
  `updated_at` int DEFAULT NULL,
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinars`
--

INSERT INTO `webinars` (`id`, `teacher_id`, `creator_id`, `category_id`, `type`, `private`, `code`, `slug`, `start_date`, `duration`, `timezone`, `thumbnail`, `image_cover`, `video_demo`, `video_demo_source`, `capacity`, `price`, `organization_price`, `support`, `certificate`, `downloadable`, `partner_instructor`, `subscribe`, `forum`, `access_days`, `points`, `message_for_reviewer`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2047, 1045, 1030, 528, 'course', 0, 'CHC33021', 'Certificate-III-in-Individual-Support-1', NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, 0, 0, 1, 0, 0, 1, NULL, NULL, NULL, 'active', 1717493072, 1719304271, NULL),
(2048, 1045, 1045, 528, 'course', 0, 'CHC30121', 'Certificate-III-in-Early-Childhood-Education-Care-1', NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, 0, 0, 1, 0, 0, 1, NULL, NULL, NULL, 'active', 1719406249, 1719470921, NULL),
(2049, 1045, 1045, 528, 'course', 0, 'CHC43015', 'Certificate-IV-in-Ageing-Support', NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, 0, 0, 1, 0, 0, 1, NULL, NULL, NULL, 'active', 1719472869, 1720413210, NULL),
(2050, 1045, 1045, 528, 'course', 0, 'CHC43121', 'Certificate-IV-in-Disability-Support', NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, 0, 0, 1, 0, 0, 1, NULL, NULL, NULL, 'active', 1719808094, 1720082161, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignments`
--

CREATE TABLE `webinar_assignments` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `chapter_id` int UNSIGNED NOT NULL,
  `marking_system` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marking_type` tinyint(1) DEFAULT NULL,
  `grade` int UNSIGNED DEFAULT NULL,
  `pass_grade` int UNSIGNED DEFAULT NULL,
  `deadline` int UNSIGNED DEFAULT NULL,
  `attempts` int UNSIGNED DEFAULT NULL,
  `check_previous_parts` tinyint(1) NOT NULL DEFAULT '0',
  `access_after_day` int UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_assignments`
--

INSERT INTO `webinar_assignments` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `marking_system`, `marking_type`, `grade`, `pass_grade`, `deadline`, `attempts`, `check_previous_parts`, `access_after_day`, `status`, `created_at`) VALUES
(84, 1030, 2047, 91, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719301596),
(85, 1030, 2047, 91, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719301715),
(86, 1030, 2047, 92, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719301839),
(87, 1030, 2047, 92, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719301919),
(88, 1030, 2047, 93, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302021),
(89, 1030, 2047, 93, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302075),
(90, 1030, 2047, 94, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302248),
(91, 1030, 2047, 94, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302334),
(92, 1030, 2047, 95, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302412),
(93, 1030, 2047, 95, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302485),
(94, 1030, 2047, 96, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302552),
(95, 1030, 2047, 96, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302621),
(96, 1030, 2047, 97, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302739),
(97, 1030, 2047, 97, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302803),
(98, 1030, 2047, 98, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719302983),
(99, 1030, 2047, 99, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303100),
(100, 1030, 2047, 99, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303153),
(101, 1030, 2047, 100, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303220),
(102, 1030, 2047, 100, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303292),
(103, 1030, 2047, 101, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303358),
(104, 1030, 2047, 101, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303438),
(105, 1030, 2047, 102, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303541),
(106, 1030, 2047, 102, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303610),
(107, 1030, 2047, 103, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303816),
(108, 1030, 2047, 104, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303893),
(109, 1030, 2047, 104, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719303959),
(110, 1030, 2047, 105, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719304044),
(111, 1030, 2047, 105, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719304206),
(114, 1045, 2048, 109, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719465254),
(115, 1045, 2048, 109, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719465297),
(116, 1045, 2048, 110, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719465923),
(117, 1045, 2048, 110, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719466181),
(118, 1045, 2048, 111, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719466674),
(119, 1045, 2048, 112, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719466917),
(120, 1045, 2048, 112, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719466998),
(121, 1045, 2048, 113, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719467209),
(122, 1045, 2048, 113, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719467260),
(123, 1045, 2048, 114, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719467552),
(124, 1045, 2048, 114, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719467597),
(125, 1045, 2048, 115, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719467801),
(126, 1045, 2048, 115, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719467850),
(127, 1045, 2048, 116, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719468057),
(128, 1045, 2048, 116, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719468092),
(129, 1045, 2048, 117, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719468242),
(130, 1045, 2048, 117, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719468287),
(131, 1045, 2048, 118, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719468523),
(132, 1045, 2048, 118, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719468874),
(133, 1045, 2048, 119, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719469379),
(134, 1045, 2048, 119, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719469419),
(135, 1045, 2048, 120, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719469590),
(136, 1045, 2048, 120, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719469662),
(137, 1045, 2048, 121, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719469865),
(138, 1045, 2048, 121, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719469924),
(139, 1045, 2048, 122, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719470090),
(140, 1045, 2048, 122, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719470140),
(141, 1045, 2048, 123, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719470346),
(142, 1045, 2048, 123, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719470398),
(143, 1045, 2048, 124, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719470697),
(144, 1045, 2048, 124, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719470759),
(145, 1045, 2049, 125, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719473323),
(146, 1045, 2049, 125, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719473360),
(147, 1045, 2049, 126, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719473482),
(148, 1045, 2049, 126, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719473522),
(149, 1045, 2049, 127, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719473666),
(150, 1045, 2049, 127, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719473703),
(151, 1045, 2049, 128, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719473875),
(152, 1045, 2049, 128, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719473921),
(153, 1045, 2049, 129, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719730940),
(154, 1045, 2049, 129, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719731171),
(155, 1045, 2049, 130, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719732503),
(156, 1045, 2049, 130, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719732763),
(157, 1045, 2049, 131, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719733118),
(158, 1045, 2049, 131, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719733429),
(159, 1045, 2049, 132, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719733601),
(160, 1045, 2049, 132, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719733732),
(161, 1045, 2050, 133, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719808608),
(162, 1045, 2050, 133, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719808661),
(163, 1045, 2050, 134, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719812776),
(164, 1045, 2050, 134, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719812832),
(165, 1045, 2050, 135, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719813240),
(166, 1045, 2050, 135, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719813346),
(167, 1045, 2050, 136, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719992957),
(168, 1045, 2050, 136, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1719993056),
(169, 1045, 2050, 137, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720080646),
(170, 1045, 2050, 137, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720080692),
(171, 1045, 2050, 138, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720080932),
(172, 1045, 2050, 138, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720080987),
(173, 1045, 2050, 139, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720081259),
(174, 1045, 2050, 139, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720081310),
(175, 1045, 2050, 140, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720081489),
(176, 1045, 2050, 140, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720081541),
(177, 1045, 2050, 142, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720081831),
(178, 1045, 2050, 142, 'others', 0, NULL, NULL, NULL, NULL, 0, NULL, 'active', 1720081892);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignment_attachments`
--

CREATE TABLE `webinar_assignment_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `assignment_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_assignment_attachments`
--

INSERT INTO `webinar_assignment_attachments` (`id`, `creator_id`, `assignment_id`, `title`, `attach`) VALUES
(79, 1030, 84, 'CHCCCS031-LG', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS031-LG-F-v1.3 (2).pdf'),
(80, 1030, 85, 'CHCCCS031-LAB', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS031-LAB-F-v1.3 (1).pdf'),
(81, 1030, 86, 'CHCDIS020-LG', '/store/1/CERT III UNITS/FILES/CHCDIS020-LG-F-v1.4.pdf'),
(82, 1030, 87, 'CHCDIS020-LAB', '/store/1/CERT III UNITS/FILES/CHCDIS020-LAB-F-v1.2.pdf'),
(83, 1030, 88, 'CHCDIS012-LG', '/store/1/CERT III UNITS/FILES/CHCDIS012-LG-F-v1.4.pdf'),
(84, 1030, 89, 'CHCDIS012-LAB', '/store/1/CERT III UNITS/FILES/CHCDIS012-LAB-F-v1.2.pdf'),
(85, 1030, 90, 'CHCDIS011-LG', '/store/1/CERT III UNITS/FILES/CHCDIS011-LG-F-v1.5.pdf'),
(86, 1030, 91, 'CHCDIS011-LAB', '/store/1/CERT III UNITS/FILES/CHCDIS011-LAB-F-v1.3.pdf'),
(87, 1030, 92, 'CHCPAL003-LG', '/store/1/CERT III UNITS/FILES/CHCPAL003-LG-F-v1.2.pdf'),
(88, 1030, 93, 'CHCPAL003-LAB', '/store/1/CERT III UNITS/FILES/CHCPAL003-LAB-F-v1.1.pdf'),
(89, 1030, 94, 'CHCAGE013-LG', '/store/1/CERT III UNITS/FILES/CHCAGE013-LG-F-v1.2.pdf'),
(90, 1030, 95, 'CHCAGE013-LAB', '/store/1/CERT III UNITS/FILES/CHCAGE013-LAB-F-v1.1.pdf'),
(91, 1030, 96, 'CHCAGE011-LG', '/store/1/CERT III UNITS/FILES/CHCAGE011-LG-F-v1.3.pdf'),
(92, 1030, 97, 'CHCAGE011-LAB', '/store/1/CERT III UNITS/FILES/CHCAGE011-LAB-F-v1.2.pdf'),
(93, 1030, 98, 'HLTWHS002-LG', '/store/1/CERT III UNITS/FILES/HLTWHS002-LG-F-v1.2 (1).pdf'),
(94, 1030, 99, 'HLTINF006-LAB', '/store/1/CERT III UNITS/FILES/HLTINF006-LAB-F-v1.1.pdf'),
(95, 1030, 100, 'HLTINF006-LG', '/store/1/CERT III UNITS/FILES/HMI - HLTINF006-LG-F-v1.3.pdf'),
(96, 1030, 101, 'CHCLEG001-LAB', '/store/1/CERT III UNITS/FILES/HMI - CHCLEG001-LAB-F-v1.2.pdf'),
(97, 1030, 102, 'CHCLEG001-LG', '/store/1/CERT III UNITS/FILES/HMI - CHCLEG001-LG-F-v1.1.pdf'),
(98, 1030, 103, 'CHCDIV001-LAB', '/store/1/CERT III UNITS/FILES/HMI - CHCDIV001-LAB-F-v2.3.pdf'),
(99, 1030, 104, 'CHCDIV001-LG', '/store/1/CERT III UNITS/FILES/HMI - CHCDIV001-LG-F-v2.2.pdf'),
(100, 1030, 105, 'CHCCOM005-LG', '/store/1/CERT III UNITS/FILES/HMI - CHCCOM005-LG-F-v1.3.pdf'),
(101, 1030, 106, 'CHCCOM005-LAB', '/store/1/CERT III UNITS/FILES/HMI - CHCCOM005-LAB-F-v1.1.pdf'),
(102, 1030, 107, 'CHCCCS041-LAB', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS041-LAB-F-v1.2.pdf'),
(103, 1030, 108, 'CHCCCS040-LG', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS040-LG-F-v1.5.pdf'),
(104, 1030, 109, 'CHCCCS040-LAB', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS040-LAB-F-v1.3.pdf'),
(105, 1030, 110, 'CHCCCS038-LAB', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS038-LAB-F-v1.2.pdf'),
(106, 1030, 111, 'CHCCCS038-LG', '/store/1/CERT III UNITS/FILES/HMI - CHCCCS038-LG-F-v1.4.pdf'),
(109, 1045, 114, 'HLTWHS001-LG', '/store/1/CERT III CHILDCARE/HLTWHS001-LG-F-v2.1.pdf'),
(110, 1045, 115, 'HLTWHS001-LAB', '/store/1/CERT III CHILDCARE/HLTWHS001-LAB-F-v2.1.pdf'),
(111, 1045, 116, 'HLTAID012-LG', '/store/1/CERT III CHILDCARE/HLTAID012-LG-F-v2.2.pdf'),
(112, 1045, 117, 'HLTAID012-LAB', '/store/1/CERT III CHILDCARE/HLTAID012-LAB-F-v1.2.pdf'),
(113, 1045, 118, 'CHCPRT025-LG', '/store/1/CERT III CHILDCARE/CHCPRT025-LG-F-v1.1.pdf'),
(114, 1045, 119, 'CHCECE056-LG', '/store/1/CERT III CHILDCARE/CHCECE056-LG-F-v1.1.pdf'),
(115, 1045, 120, 'CHCECE056-LAB', '/store/1/CERT III CHILDCARE/CHCECE056-LAB-F-v1.2.pdf'),
(116, 1045, 121, 'CHCECE055-LG', '/store/1/CERT III CHILDCARE/CHCECE055-LG-F-v1.2.pdf'),
(117, 1045, 122, 'CHCECE055-LAB', '/store/1/CERT III CHILDCARE/CHCECE055-LAB-F-v1.2.pdf'),
(118, 1045, 123, 'CHCECE054-LG', '/store/1/CERT III CHILDCARE/CHCECE054-LG-F-v2.1.pdf'),
(119, 1045, 124, 'CHCECE054-LAB', '/store/1/CERT III CHILDCARE/CHCECE054-LAB-F-v2.1.pdf'),
(120, 1045, 125, 'CHCECE038-LG', '/store/1/CERT III CHILDCARE/CHCECE038-LG-F-v1.1.pdf'),
(121, 1045, 126, 'CHCECE038-LAB', '/store/1/CERT III CHILDCARE/CHCECE038-LAB-F-v1.1.pdf'),
(122, 1045, 127, 'CHCECE037-LG', '/store/1/CERT III CHILDCARE/CHCECE037-LG-F-v2.2.pdf'),
(123, 1045, 128, 'CHCECE037-LAB', '/store/1/CERT III CHILDCARE/CHCECE037-LAB-F-v1.1.pdf'),
(124, 1045, 129, 'CHCECE036-LG', '/store/1/CERT III CHILDCARE/CHCECE036-LG-F-v1.1.pdf'),
(125, 1045, 130, 'CHCECE036-LAB', '/store/1/CERT III CHILDCARE/CHCECE036-LAB-F-v1.1.pdf'),
(126, 1045, 131, 'CHCECE035-LG', '/store/1/CERT III CHILDCARE/CHCECE035-LG-F-v1.2.pdf'),
(127, 1045, 132, 'CHCECE035-LAB', '/store/1/CERT III CHILDCARE/CHCECE035-LAB-F-v1.1.pdf'),
(128, 1045, 133, 'CHCECE034-LG', '/store/1/CERT III CHILDCARE/CHCECE034-LG-F-v2.1.pdf'),
(129, 1045, 134, 'CHCECE034-LAB', '/store/1/CERT III CHILDCARE/CHCECE034-LAB-F-v1.3.pdf'),
(130, 1045, 135, 'CHCECE033-LG', '/store/1/CERT III CHILDCARE/CHCECE033-LG-F-v1.1.pdf'),
(131, 1045, 136, 'CHCECE033-LAB', '/store/1/CERT III CHILDCARE/CHCECE033-LAB-F-v1.1.pdf'),
(132, 1045, 137, 'CHCECE032-LG', '/store/1/CERT III CHILDCARE/CHCECE032-LG-F-v2.1 (1).pdf'),
(133, 1045, 138, 'CHCECE032-LAB', '/store/1/CERT III CHILDCARE/CHCECE032-LAB-F-v1.1.pdf'),
(134, 1045, 139, 'CHCECE031-LG', '/store/1/CERT III CHILDCARE/CHCECE031-LG-F-v1.2.pdf'),
(135, 1045, 140, 'CHCECE031-LAB', '/store/1/CERT III CHILDCARE/CHCECE031-LAB-F-v1.1.pdf'),
(136, 1045, 141, 'CHCECE030-LG', '/store/1/CERT III CHILDCARE/CHCECE030-LG-F-v2.1.pdf'),
(137, 1045, 142, 'CHCECE030-LAB', '/store/1/CERT III CHILDCARE/CHCECE030-LAB-F-v1.1.pdf'),
(138, 1045, 143, 'CHCDIV001-LG', '/store/1/CERT III CHILDCARE/CHCDIV001-LG-F-v2.2.pdf'),
(139, 1045, 144, 'CHCDIV001-LAB', '/store/1/CERT III CHILDCARE/CHCDIV001-LAB-F-v2.3.pdf'),
(156, 1045, 161, 'HLTWHS003-LG', '/store/1/CERT IV DIS./HLTWHS003-LG-F-v1.2.pdf'),
(157, 1045, 162, 'HLTWHS003-LAB', '/store/1/CERT IV DIS./HLTWHS003-LAB-F-v1.1.pdf'),
(158, 1045, 163, 'CHCMHS001-LG', '/store/1/CERT IV DIS./CHCMHS001-LG-F-v1.3.pdf'),
(159, 1045, 164, 'CHCMHS001-LAB', '/store/1/CERT IV DIS./CHCMHS001-LAB-F-v1.1.pdf'),
(160, 1045, 165, 'CHCLEG003-LG', '/store/1/CERT IV DIS./CHCLEG003-LG-F-v1.3.pdf'),
(161, 1045, 166, 'CHCLEG003-LAB', '/store/1/CERT IV DIS./CHCLEG003-LAB-F-v1.2.pdf'),
(162, 1045, 167, 'CHCDIS020-LG', '/store/1/CERT IV DIS./CHCDIS020-LG-F-v1.4.pdf'),
(163, 1045, 168, 'CHCDIS020-LAB', '/store/1/CERT IV DIS./CHCDIS020-LAB-F-v1.2.pdf'),
(164, 1045, 169, 'CHCDIS017-LG', '/store/1/CERT IV DIS./CHCDIS017-LG-F-v1.3.pdf'),
(165, 1045, 170, 'CHCDIS017-LAB', '/store/1/CERT IV DIS./CHCDIS017-LAB-F-v1.2.pdf'),
(166, 1045, 171, 'CHCCCS044-LG', '/store/1/CERT IV DIS./CHCCCS044-LG-F-v1.4.pdf'),
(167, 1045, 172, 'CHCCCS044-LAB', '/store/1/CERT IV DIS./CHCCCS044-LAB-F-v1.3.pdf'),
(168, 1045, 173, 'CHCAGE011-LG', '/store/1/CERT IV DIS./CHCAGE011-LG-F-v1.3.pdf'),
(169, 1045, 174, 'CHCAGE011-LAB', '/store/1/CERT IV DIS./CHCAGE011-LAB-F-v1.2.pdf'),
(170, 1045, 175, 'CHCAGE009-LG', '/store/1/CERT IV DIS./CHCAGE009-LG-F-v1.3.pdf'),
(171, 1045, 176, 'CHCAGE009-LAB', '/store/1/CERT IV DIS./CHCAGE009-LAB-F-v1.1.pdf'),
(172, 1045, 177, 'CHCDIS018-LG', '/store/1/CERT IV DIS./CHCDIS018-LG-F-v1.3.pdf'),
(173, 1045, 178, 'CHCDIS018-LAB', '/store/1/CERT IV DIS./CHCDIS018-LAB-F-v1.2.pdf'),
(174, 1045, 145, 'CHCCCS006-LG', '/store/1/CERT IV AGE/CHCCCS006-LG-F-v1.1.pdf'),
(175, 1045, 146, 'CHCCCS006-LAB', '/store/1/CERT IV AGE/CHCCCS006-LAB-F-v1.1.pdf'),
(176, 1045, 147, 'HLTWHS004-LG', '/store/1/CERT IV AGE/HLTWHS004-LG-F-v1.2.pdf'),
(177, 1045, 148, 'HLTWHS004-LAB', '/store/1/CERT IV AGE/HLTWHS004-LAB-F-v1.1.pdf'),
(178, 1045, 149, 'HLTWHS002-LG', '/store/1/CERT IV AGE/HLTWHS002-LG-F-v1.2.pdf'),
(179, 1045, 150, 'HLTWHS002-LAB', '/store/1/CERT IV AGE/HLTWHS002-LAB-F-v1.2.pdf'),
(180, 1045, 151, 'CHCDIV001-LG', '/store/1/CERT IV AGE/HMI - CHCDIV001-LG-F-v2.2.pdf'),
(181, 1045, 152, 'CHCDIV001-LAB', '/store/1/CERT IV AGE/HMI - CHCDIV001-LAB-F-v2.3.pdf'),
(182, 1045, 154, 'HLTAAP001-LG', '/store/1/CERT IV AGE/HLTAAP001-LG-F-v1.1.pdf'),
(183, 1045, 153, 'HLTAAP001-LAB', '/store/1/CERT IV AGE/HLTAAP001-LAB-F-v1.1.pdf'),
(184, 1045, 156, 'CHCPAL001-LG', '/store/1/CERT IV AGE/CHCPAL001-LG-F-v1.2.pdf'),
(185, 1045, 155, 'CHCPAL001-LAB', '/store/1/CERT IV AGE/CHCPAL001-LAB-F-v1.1.pdf'),
(186, 1045, 158, 'CHCLEG003-LG', '/store/1/CERT IV AGE/CHCLEG003-LG-F-v1.3.pdf'),
(187, 1045, 157, 'CHCLEG003-LAB', '/store/1/CERT IV AGE/CHCLEG003-LAB-F-v1.2.pdf'),
(188, 1045, 160, 'CHCAGE005-LG', '/store/1/CERT IV AGE/CHCAGE005-LG-F-v1.2.pdf'),
(189, 1045, 159, 'CHCAGE005-LAB', '/store/1/CERT IV AGE/CHCAGE005-LAB-F-v1.2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignment_history`
--

CREATE TABLE `webinar_assignment_history` (
  `id` int UNSIGNED NOT NULL,
  `instructor_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `assignment_id` int UNSIGNED NOT NULL,
  `marking_type` tinyint(1) DEFAULT NULL,
  `mark` tinyint(1) DEFAULT NULL,
  `grade` int UNSIGNED DEFAULT NULL,
  `status` enum('pending','passed','not_passed','not_submitted') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_assignment_history`
--

INSERT INTO `webinar_assignment_history` (`id`, `instructor_id`, `student_id`, `assignment_id`, `marking_type`, `mark`, `grade`, `status`, `created_at`) VALUES
(62, 1045, 1051, 131, NULL, NULL, NULL, 'not_submitted', 1719471461),
(63, 1030, 1056, 84, NULL, NULL, NULL, 'pending', 1719483771),
(64, 1030, 1056, 85, NULL, NULL, NULL, 'pending', 1719484229),
(65, 1030, 1056, 86, NULL, NULL, NULL, 'pending', 1719484586),
(66, 1030, 1056, 87, NULL, NULL, NULL, 'pending', 1719484598),
(67, 1030, 1054, 84, NULL, NULL, NULL, 'not_submitted', 1719544355),
(68, 1030, 1056, 88, NULL, NULL, NULL, 'pending', 1719556571),
(69, 1030, 1056, 89, NULL, NULL, NULL, 'pending', 1719556582),
(70, 1030, 1056, 99, NULL, NULL, NULL, 'pending', 1719556756),
(71, 1030, 1056, 90, NULL, NULL, NULL, 'pending', 1719556765),
(72, 1030, 1056, 91, NULL, NULL, NULL, 'pending', 1719556807),
(73, 1030, 1056, 92, NULL, NULL, NULL, 'pending', 1719556847),
(74, 1030, 1056, 93, NULL, NULL, NULL, 'pending', 1719557007),
(75, 1030, 1056, 94, NULL, NULL, NULL, 'pending', 1719557171),
(76, 1030, 1056, 95, NULL, NULL, NULL, 'pending', 1719557181),
(77, 1030, 1056, 96, NULL, NULL, NULL, 'pending', 1719557225),
(78, 1030, 1056, 97, NULL, NULL, NULL, 'pending', 1719557236),
(79, 1030, 1056, 98, NULL, NULL, NULL, 'pending', 1719557249),
(80, 1030, 1056, 100, NULL, NULL, NULL, 'pending', 1719557285),
(81, 1030, 1056, 101, NULL, NULL, NULL, 'pending', 1719557297),
(82, 1030, 1056, 102, NULL, NULL, NULL, 'pending', 1719557301),
(83, 1030, 1056, 103, NULL, NULL, NULL, 'pending', 1719557344),
(84, 1030, 1056, 104, NULL, NULL, NULL, 'pending', 1719557349),
(85, 1030, 1056, 105, NULL, NULL, NULL, 'pending', 1719557382),
(86, 1030, 1056, 106, NULL, NULL, NULL, 'pending', 1719557394),
(87, 1030, 1056, 107, NULL, NULL, NULL, 'pending', 1719557409),
(88, 1030, 1056, 108, NULL, NULL, NULL, 'pending', 1719557424),
(89, 1030, 1056, 109, NULL, NULL, NULL, 'pending', 1719557438),
(90, 1030, 1056, 110, NULL, NULL, NULL, 'pending', 1719557461),
(91, 1030, 1056, 111, NULL, NULL, NULL, 'pending', 1719557471),
(92, 1030, 1055, 84, NULL, NULL, NULL, 'not_submitted', 1719663480),
(93, 1030, 1055, 85, NULL, NULL, NULL, 'not_submitted', 1719663613),
(94, 1030, 1055, 86, NULL, NULL, NULL, 'not_submitted', 1719663634),
(95, 1045, 1051, 145, NULL, NULL, NULL, 'pending', 1719747531),
(96, 1045, 1051, 146, NULL, NULL, NULL, 'pending', 1719747874),
(97, 1030, 1054, 85, NULL, NULL, NULL, 'not_submitted', 1719803403),
(98, 1030, 1054, 86, NULL, NULL, NULL, 'not_submitted', 1719805642),
(99, 1030, 1054, 99, NULL, NULL, NULL, 'not_submitted', 1719805833),
(100, 1030, 1055, 87, NULL, NULL, NULL, 'not_submitted', 1719808250),
(101, 1030, 1060, 84, NULL, NULL, NULL, 'not_submitted', 1719811394),
(102, 1030, 1060, 85, NULL, NULL, NULL, 'not_submitted', 1719811409),
(103, 1030, 1060, 86, NULL, NULL, NULL, 'not_submitted', 1719811438),
(104, 1030, 1060, 87, NULL, NULL, NULL, 'not_submitted', 1719811450),
(105, 1030, 1060, 91, NULL, NULL, NULL, 'not_submitted', 1719812806),
(106, 1045, 1061, 161, NULL, NULL, NULL, 'pending', 1719882861),
(107, 1045, 1061, 163, NULL, NULL, NULL, 'not_submitted', 1719882988),
(108, 1045, 1061, 164, NULL, NULL, NULL, 'pending', 1719883039),
(109, 1045, 1061, 162, NULL, NULL, NULL, 'pending', 1719905358),
(110, 1030, 1059, 84, NULL, NULL, NULL, 'not_submitted', 1719918083),
(111, 1030, 1059, 85, NULL, NULL, NULL, 'not_submitted', 1719919567),
(112, 1030, 1057, 84, NULL, NULL, NULL, 'not_submitted', 1719924764),
(113, 1030, 1057, 85, NULL, NULL, NULL, 'not_submitted', 1719924876),
(114, 1030, 1053, 84, NULL, NULL, NULL, 'not_submitted', 1719927967),
(115, 1030, 1053, 85, NULL, NULL, NULL, 'pending', 1719928881),
(116, 1030, 1053, 106, NULL, NULL, NULL, 'not_submitted', 1719929727),
(117, 1030, 1062, 84, NULL, NULL, NULL, 'not_submitted', 1719996100),
(118, 1030, 1066, 84, NULL, NULL, NULL, 'not_submitted', 1720067736),
(119, 1045, 1061, 165, NULL, NULL, NULL, 'not_submitted', 1720071135),
(120, 1045, 1061, 166, NULL, NULL, NULL, 'pending', 1720071170),
(121, 1045, 1061, 167, NULL, NULL, NULL, 'not_submitted', 1720071208),
(122, 1045, 1061, 168, NULL, NULL, NULL, 'pending', 1720071234),
(123, 1030, 1064, 84, NULL, NULL, NULL, 'not_submitted', 1720075248),
(124, 1030, 1049, 90, NULL, NULL, NULL, 'not_submitted', 1720086956),
(125, 1030, 1049, 91, NULL, NULL, NULL, 'pending', 1720087353),
(126, 1030, 1049, 96, NULL, NULL, NULL, 'not_submitted', 1720087664),
(127, 1030, 1049, 97, NULL, NULL, NULL, 'pending', 1720087744),
(128, 1045, 1052, 145, NULL, NULL, NULL, 'not_submitted', 1720092642),
(129, 1045, 1052, 146, NULL, NULL, NULL, 'not_submitted', 1720092696),
(130, 1045, 1052, 147, NULL, NULL, NULL, 'not_submitted', 1720092841),
(131, 1030, 1060, 110, NULL, NULL, NULL, 'not_submitted', 1720097794),
(132, 1030, 1060, 111, NULL, NULL, NULL, 'not_submitted', 1720111072),
(133, 1030, 1066, 85, NULL, NULL, NULL, 'pending', 1720146614),
(134, 1030, 1066, 86, NULL, NULL, NULL, 'not_submitted', 1720147924),
(135, 1030, 1066, 87, NULL, NULL, NULL, 'pending', 1720148040),
(136, 1030, 1066, 88, NULL, NULL, NULL, 'not_submitted', 1720148095),
(137, 1030, 1066, 98, NULL, NULL, NULL, 'not_submitted', 1720148194),
(138, 1030, 1064, 85, NULL, NULL, NULL, 'not_submitted', 1720156223),
(139, 1030, 1070, 84, NULL, NULL, NULL, 'not_submitted', 1720157351),
(140, 1045, 1051, 147, NULL, NULL, NULL, 'not_submitted', 1720173592),
(141, 1045, 1051, 148, NULL, NULL, NULL, 'not_submitted', 1720173720),
(142, 1030, 1070, 107, NULL, NULL, NULL, 'not_submitted', 1720236432),
(143, 1030, 1054, 87, NULL, NULL, NULL, 'not_submitted', 1720256693),
(144, 1030, 1054, 89, NULL, NULL, NULL, 'not_submitted', 1720261718),
(145, 1030, 1054, 91, NULL, NULL, NULL, 'not_submitted', 1720265112),
(146, 1030, 1053, 86, NULL, NULL, NULL, 'not_submitted', 1720316941),
(147, 1030, 1053, 87, NULL, NULL, NULL, 'pending', 1720316945),
(148, 1045, 1061, 169, NULL, NULL, NULL, 'not_submitted', 1720323873),
(149, 1045, 1061, 170, NULL, NULL, NULL, 'pending', 1720323930),
(150, 1030, 1053, 88, NULL, NULL, NULL, 'not_submitted', 1720331237),
(151, 1030, 1053, 89, NULL, NULL, NULL, 'pending', 1720331250),
(152, 1045, 1061, 171, NULL, NULL, NULL, 'not_submitted', 1720332178),
(153, 1045, 1061, 172, NULL, NULL, NULL, 'pending', 1720332217),
(154, 1045, 1061, 173, NULL, NULL, NULL, 'not_submitted', 1720345089),
(155, 1045, 1061, 174, NULL, NULL, NULL, 'pending', 1720345166),
(156, 1045, 1061, 175, NULL, NULL, NULL, 'not_submitted', 1720355459),
(157, 1045, 1061, 176, NULL, NULL, NULL, 'pending', 1720355488),
(158, 1045, 1061, 177, NULL, NULL, NULL, 'not_submitted', 1720355523),
(159, 1045, 1061, 178, NULL, NULL, NULL, 'pending', 1720355598),
(160, 1030, 1057, 86, NULL, NULL, NULL, 'not_submitted', 1720358789),
(161, 1030, 1060, 109, NULL, NULL, NULL, 'not_submitted', 1720418801),
(162, 1030, 1060, 107, NULL, NULL, NULL, 'not_submitted', 1720420848),
(163, 1030, 1060, 106, NULL, NULL, NULL, 'not_submitted', 1720441468),
(164, 1030, 1060, 103, NULL, NULL, NULL, 'not_submitted', 1720443548),
(165, 1030, 1060, 101, NULL, NULL, NULL, 'not_submitted', 1720444916),
(166, 1030, 1060, 99, NULL, NULL, NULL, 'not_submitted', 1720446266),
(167, 1030, 1053, 90, NULL, NULL, NULL, 'not_submitted', 1720503798),
(168, 1030, 1053, 91, NULL, NULL, NULL, 'pending', 1720503807),
(169, 1030, 1062, 85, NULL, NULL, NULL, 'not_submitted', 1720505067),
(170, 1030, 1073, 86, NULL, NULL, NULL, 'not_submitted', 1720520693),
(171, 1030, 1073, 84, NULL, NULL, NULL, 'not_submitted', 1720520929),
(172, 1030, 1065, 84, NULL, NULL, NULL, 'not_submitted', 1720535431),
(173, 1030, 1065, 85, NULL, NULL, NULL, 'not_submitted', 1720535624),
(174, 1030, 1053, 92, NULL, NULL, NULL, 'not_submitted', 1720580349),
(175, 1030, 1053, 93, NULL, NULL, NULL, 'not_submitted', 1720580360),
(176, 1030, 1049, 107, NULL, NULL, NULL, 'pending', 1720599309),
(177, 1030, 1066, 89, NULL, NULL, NULL, 'pending', 1720604774),
(178, 1030, 1076, 86, NULL, NULL, NULL, 'pending', 1720606815),
(179, 1030, 1076, 84, NULL, NULL, NULL, 'not_submitted', 1720607989),
(180, 1030, 1076, 88, NULL, NULL, NULL, 'pending', 1720611983),
(181, 1030, 1066, 91, NULL, NULL, NULL, 'pending', 1720620098),
(182, 1030, 1066, 90, NULL, NULL, NULL, 'not_submitted', 1720620231),
(183, 1030, 1066, 93, NULL, NULL, NULL, 'not_submitted', 1720620449),
(184, 1030, 1066, 95, NULL, NULL, NULL, 'not_submitted', 1720620477),
(185, 1030, 1066, 97, NULL, NULL, NULL, 'not_submitted', 1720620490),
(186, 1030, 1066, 92, NULL, NULL, NULL, 'not_submitted', 1720620872),
(187, 1030, 1066, 94, NULL, NULL, NULL, 'not_submitted', 1720620969),
(188, 1030, 1066, 96, NULL, NULL, NULL, 'not_submitted', 1720621005),
(189, 1030, 1074, 84, NULL, NULL, NULL, 'not_submitted', 1720658030),
(190, 1030, 1074, 85, NULL, NULL, NULL, 'not_submitted', 1720664633),
(191, 1030, 1072, 84, NULL, NULL, NULL, 'pending', 1720667805),
(192, 1030, 1072, 85, NULL, NULL, NULL, 'not_submitted', 1720668366),
(193, 1030, 1072, 86, NULL, NULL, NULL, 'not_submitted', 1720668383),
(194, 1030, 1072, 108, NULL, NULL, NULL, 'not_submitted', 1720668947),
(195, 1045, 1051, 149, NULL, NULL, NULL, 'not_submitted', 1720674603),
(196, 1045, 1051, 150, NULL, NULL, NULL, 'not_submitted', 1720674615),
(197, 1030, 1070, 86, NULL, NULL, NULL, 'not_submitted', 1720676596),
(198, 1045, 1051, 151, NULL, NULL, NULL, 'not_submitted', 1720679229),
(199, 1045, 1051, 152, NULL, NULL, NULL, 'not_submitted', 1720679242),
(200, 1030, 1049, 98, NULL, NULL, NULL, 'not_submitted', 1720689969),
(201, 1030, 1049, 85, NULL, NULL, NULL, 'not_submitted', 1720690987),
(202, 1030, 1077, 84, NULL, NULL, NULL, 'not_submitted', 1720691136),
(203, 1030, 1047, 84, NULL, NULL, NULL, 'not_submitted', 1720691832),
(204, 1030, 1077, 85, NULL, NULL, NULL, 'not_submitted', 1720692477);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignment_history_messages`
--

CREATE TABLE `webinar_assignment_history_messages` (
  `id` int UNSIGNED NOT NULL,
  `assignment_history_id` int UNSIGNED NOT NULL,
  `sender_id` int UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_assignment_history_messages`
--

INSERT INTO `webinar_assignment_history_messages` (`id`, `assignment_history_id`, `sender_id`, `message`, `file_title`, `file_path`, `created_at`) VALUES
(68, 64, 1056, NULL, NULL, '/store/1056/1719724109_CHCCCS031-LAB.pdf', 1719724109),
(69, 63, 1056, NULL, NULL, '/store/1056/1719724163_CHCCCS031-LG.pdf', 1719724163),
(70, 65, 1056, NULL, NULL, '/store/1056/1719724337_CHCDIS020-LG.pdf', 1719724337),
(71, 66, 1056, NULL, NULL, '/store/1056/1719724381_CHCDIS020-LAB.pdf', 1719724381),
(72, 68, 1056, NULL, NULL, '/store/1056/1719724761_CHCDIS020-LG.pdf', 1719724761),
(73, 69, 1056, NULL, NULL, '/store/1056/1719724819_CHCDIS012-LAB.pdf', 1719724819),
(74, 71, 1056, NULL, NULL, '/store/1056/1719803841_CHCDIS011-LG.pdf', 1719803841),
(75, 72, 1056, NULL, NULL, '/store/1056/1719803885_CHCDIS011-LAB.pdf', 1719803885),
(76, 74, 1056, NULL, NULL, '/store/1056/1719901524_CHCPAL003-LAB.pdf', 1719901524),
(77, 73, 1056, NULL, NULL, '/store/1056/1719901576_CHCPAL003-LG (1).pdf', 1719901576),
(78, 73, 1056, NULL, NULL, '/store/1056/1719901616_CHCAGE013-LG.pdf', 1719901616),
(79, 75, 1056, NULL, NULL, '/store/1056/1719910123_CHCAGE013-LG.pdf', 1719910123),
(80, 76, 1056, NULL, NULL, '/store/1056/1719910276_CHCAGE013-LAB.pdf', 1719910276),
(81, 77, 1056, NULL, NULL, '/store/1056/1719910400_CHCAGE011-LG.pdf', 1719910400),
(82, 78, 1056, NULL, NULL, '/store/1056/1719910504_CHCAGE011-LAB.pdf', 1719910504),
(83, 79, 1056, NULL, NULL, '/store/1056/1719910925_HLTWHS002-LG.pdf', 1719910925),
(84, 70, 1056, NULL, NULL, '/store/1056/1719910969_HLTINF006-LAB.pdf', 1719910969),
(85, 80, 1056, NULL, NULL, '/store/1056/1719911025_HLTINF006-LG.pdf', 1719911025),
(86, 81, 1056, NULL, NULL, '/store/1056/1719911073_CHCLEG001-LAB.pdf', 1719911073),
(87, 82, 1056, NULL, NULL, '/store/1056/1719911102_CHCLEG001-LAB.pdf', 1719911102),
(88, 83, 1056, NULL, NULL, '/store/1056/1719911248_CHCDIV001-LAB.pdf', 1719911248),
(89, 84, 1056, NULL, NULL, '/store/1056/1719911332_CHCDIV001-LG.pdf', 1719911332),
(90, 96, 1051, NULL, 'CHCCCS006-lab', '/store/1051/1720010948_Assessment of  CHCCCS006.pdf', 1720010948),
(91, 85, 1056, NULL, NULL, '/store/1056/1720058735_CHCCOM005-LG.pdf', 1720058735),
(92, 86, 1056, NULL, NULL, '/store/1056/1720058767_CHCCOM005-LAB.pdf', 1720058767),
(93, 87, 1056, NULL, NULL, '/store/1056/1720058818_CHCCCS041-LAB.pdf', 1720058818),
(94, 88, 1056, NULL, NULL, '/store/1056/1720058861_CHCCCS040-LG.pdf', 1720058861),
(95, 89, 1056, NULL, NULL, '/store/1056/1720058891_CHCCCS040-LAB.pdf', 1720058891),
(96, 90, 1056, NULL, NULL, '/store/1056/1720059006_CHCCCS038-LAB.pdf', 1720059006),
(97, 91, 1056, NULL, NULL, '/store/1056/1720059064_CHCCCS038-LG.pdf', 1720059064),
(98, 127, 1049, NULL, NULL, '/store/1049/1720087840_CHCAGE011.pdf', 1720087840),
(99, 115, 1053, NULL, 'S032-LAB ACTIVITY', '/store/1053/1720110870_CHCCCS031-LAB ACITIVITIES .docx', 1720110870),
(100, 95, 1051, NULL, 'CHCCCS006-(Sabina Khadka)', '/store/1051/1720170157_Assessment of  CHCCCS006.pdf', 1720170157),
(101, 106, 1061, NULL, 'Sunil Paudel HLTWHS003', '/store/1061/1720186667_HLTWHS003-LAB.docx', 1720186667),
(102, 108, 1061, NULL, 'Sunil CHCMHS001 lab', '/store/1061/1720230316_CHCMHS001-LAB-2 sunil.docx', 1720230316),
(103, 109, 1061, NULL, 'Sunil', '/store/1061/1720230588_HLTWHS003-LAB.docx', 1720230588),
(104, 120, 1061, NULL, 'Sunil CHCLEG003 lab', '/store/1061/1720271297_CHCLEG003-LAB copy.docx', 1720271297),
(105, 122, 1061, NULL, 'CHCDISO20 sunil', '/store/1061/1720323841_CHCDIS020-LAB.docx', 1720323841),
(106, 122, 1061, NULL, 'CHCDISO20 sunil', '/store/1061/1720323849_CHCDIS020-LAB.docx', 1720323849),
(107, 147, 1053, NULL, 'S020 LAB-ACTIVITY', '/store/1053/1720331136_CHCDIS020-LAB ACTIVITIES.docx', 1720331136),
(108, 149, 1061, NULL, 'CHCDIS017-lab sunil', '/store/1061/1720341463_CHCDIS017-LAB.docx', 1720341463),
(109, 153, 1061, NULL, 'CHCCCS044-LAB SUNIL', '/store/1061/1720345050_CHCCCS044-LAB.docx', 1720345050),
(110, 155, 1061, NULL, 'CHCAGE011-Lab sunil', '/store/1061/1720355260_CHCAGE011-LAB.docx', 1720355260),
(111, 157, 1061, NULL, 'CHCAGE009-LAB sunil', '/store/1061/1720361975_CHCAGE009-LAB.docx', 1720361975),
(112, 159, 1061, NULL, 'CHCDIS018-LAB sunil', '/store/1061/1720362272_CHCDIS018-LAB 1.docx', 1720362272),
(113, 151, 1053, NULL, 'S012-LAB ACTIVITY', '/store/1053/1720503678_CHCDIS012-LAB ACTIVITIES.docx', 1720503678),
(114, 133, 1066, NULL, NULL, '/store/1066/1720539754_CHCCCS031-LAB (1).pdf', 1720539754),
(115, 168, 1053, NULL, 'S011-LAB ACTIVITY', '/store/1053/1720580125_CHCDIS011-LAB-ACTIVITIES.docx', 1720580125),
(116, 125, 1049, NULL, NULL, '/store/1049/1720599131_CHCDIS011-santosh.pdf', 1720599131),
(117, 135, 1066, NULL, NULL, '/store/1066/1720604671_CHCDIS020-LAB(1).pdf', 1720604671),
(118, 178, 1076, NULL, 'Name of the Assessment or file!', '/store/1076/1720608123_HMI - CHCCCS031-LG-F-v1.3.pdf', 1720608123),
(119, 178, 1076, NULL, NULL, '/store/1076/1720611718_HMI - CHCCCS031-LG-F-v1.3.pdf', 1720611718),
(120, 178, 1076, NULL, 'Attachment (Updated)', '/store/1076/1720611778_HMI - CHCCCS031-LG-F-v1.3.pdf', 1720611778),
(121, 180, 1076, NULL, 'ABCD', '/store/1076/1720612024_HMI - CHCCCS031-LG-F-v1.3.pdf', 1720612024),
(122, 180, 1076, NULL, 'ABCD (Updated)', '/store/1076/1720612071_HMI - CHCCCS031-LG-F-v1.3.pdf', 1720612071),
(123, 177, 1066, NULL, NULL, '/store/1066/1720620078_CHCDIS012-LAB(1).pdf', 1720620078),
(124, 191, 1072, NULL, NULL, '/store/1072/1720669436_CHCCCS031-LG.pdf', 1720669436),
(125, 181, 1066, NULL, NULL, '/store/1066/1720677607_CHCDIS011-LAB(1).pdf', 1720677607),
(126, 176, 1049, NULL, NULL, '/store/1049/1720689792_CHCCCS041-santosh.pdf', 1720689792);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_assignment_translations`
--

CREATE TABLE `webinar_assignment_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_assignment_id` int UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_assignment_translations`
--

INSERT INTO `webinar_assignment_translations` (`id`, `locale`, `webinar_assignment_id`, `title`, `description`) VALUES
(82, 'en', 84, 'CHCCCS031-LG', 'CHCCCS031-LG'),
(83, 'en', 85, 'CHCCCS031-LAB', 'CHCCCS031-LAB'),
(84, 'en', 86, 'CHCDIS020-LG', 'CHCDIS020-LG'),
(85, 'en', 87, 'CHCDIS020-LAB', 'CHCDIS020-LAB'),
(86, 'en', 88, 'CHCDIS012-LG', 'CHCDIS012-LG'),
(87, 'en', 89, 'CHCDIS012-LAB', 'CHCDIS012-LAB'),
(88, 'en', 90, 'CHCDIS011-LG', 'CHCDIS011-LG'),
(89, 'en', 91, 'CHCDIS011-LAB', 'CHCDIS011-LAB'),
(90, 'en', 92, 'CHCPAL003-LG', 'CHCPAL003-LG'),
(91, 'en', 93, 'CHCPAL003-LAB', 'CHCPAL003-LAB'),
(92, 'en', 94, 'CHCAGE013-LG', 'CHCAGE013-LG'),
(93, 'en', 95, 'CHCAGE013-LAB', 'CHCAGE013-LAB'),
(94, 'en', 96, 'CHCAGE011-LG', 'CHCAGE011-LG'),
(95, 'en', 97, 'CHCAGE011-LAB', 'CHCAGE011-LAB'),
(96, 'en', 98, 'HLTWHS002-LG', 'HLTWHS002-LG'),
(97, 'en', 99, 'HLTINF006-LAB', 'HLTINF006-LAB'),
(98, 'en', 100, 'HLTINF006-LG', 'HLTINF006-LG'),
(99, 'en', 101, 'CHCLEG001-LAB', 'CHCLEG001-LAB'),
(100, 'en', 102, 'CHCLEG001-LG', 'CHCLEG001-LG'),
(101, 'en', 103, 'CHCDIV001-LAB', 'CHCDIV001-LAB'),
(102, 'en', 104, 'CHCDIV001-LG', 'CHCDIV001-LG'),
(103, 'en', 105, 'CHCCOM005-LG', 'CHCCOM005-LG'),
(104, 'en', 106, 'CHCCOM005-LAB', 'CHCCOM005-LAB'),
(105, 'en', 107, 'CHCCCS041-LAB', 'CHCCCS041-LAB'),
(106, 'en', 108, 'CHCCCS040-LG', 'CHCCCS040-LG'),
(107, 'en', 109, 'CHCCCS040-LAB', 'CHCCCS040-LAB'),
(108, 'en', 110, 'CHCCCS038-LAB', 'CHCCCS038-LAB'),
(109, 'en', 111, 'CHCCCS038-LG', 'CHCCCS038-LG'),
(112, 'en', 114, 'HLTWHS001-LG', 'HLTWHS001-LG'),
(113, 'en', 115, 'HLTWHS001-LAB', 'HLTWHS001-LAB'),
(114, 'en', 116, 'HLTAID012-LG', 'HLTAID012-LG'),
(115, 'en', 117, 'HLTAID012-LAB', 'HLTAID012-LAB'),
(116, 'en', 118, 'CHCPRT025-LG', 'CHCPRT025-LG'),
(117, 'en', 119, 'CHCECE056-LG', 'CHCECE056-LG'),
(118, 'en', 120, 'CHCECE056-LAB', 'CHCECE056-LAB'),
(119, 'en', 121, 'CHCECE055-LG', 'CHCECE055-LG'),
(120, 'en', 122, 'CHCECE055-LAB', 'CHCECE055-LAB'),
(121, 'en', 123, 'CHCECE054-LG', 'CHCECE054-LG'),
(122, 'en', 124, 'CHCECE054-LAB', 'CHCECE054-LAB'),
(123, 'en', 125, 'CHCECE038-LG', 'CHCECE038-LG'),
(124, 'en', 126, 'CHCECE038-LAB', 'CHCECE038-LAB'),
(125, 'en', 127, 'CHCECE037-LG', 'CHCECE037-LG'),
(126, 'en', 128, 'CHCECE037-LAB', 'CHCECE037-LAB'),
(127, 'en', 129, 'CHCECE036-LG', 'CHCECE036-LG'),
(128, 'en', 130, 'CHCECE036-LAB', 'CHCECE036-LAB'),
(129, 'en', 131, 'CHCECE035-LG', 'CHCECE035-LG'),
(130, 'en', 132, 'CHCECE035-LAB', 'CHCECE035-LAB'),
(131, 'en', 133, 'CHCECE034-LG', 'CHCECE034-LG'),
(132, 'en', 134, 'CHCECE034-LAB', 'CHCECE034-LAB'),
(133, 'en', 135, 'CHCECE033-LG', 'CHCECE033-LG'),
(134, 'en', 136, 'CHCECE033-LAB', 'CHCECE033-LAB'),
(135, 'en', 137, 'CHCECE032-LG', 'CHCECE032-LG'),
(136, 'en', 138, 'CHCECE032-LAB', 'CHCECE032-LAB'),
(137, 'en', 139, 'CHCECE031-LG', 'CHCECE031-LG'),
(138, 'en', 140, 'CHCECE031-LAB', 'CHCECE031-LAB'),
(139, 'en', 141, 'CHCECE030-LG', 'CHCECE030-LG'),
(140, 'en', 142, 'CHCECE030-LAB', 'CHCECE030-LAB'),
(141, 'en', 143, 'CHCDIV001-LG', 'CHCDIV001-LG'),
(142, 'en', 144, 'CHCDIV001-LAB', 'CHCDIV001-LAB'),
(143, 'en', 145, 'CHCCCS006-LG', 'CHCCCS006-LG'),
(144, 'en', 146, 'CHCCCS006-LAB', 'CHCCCS006-LAB'),
(145, 'en', 147, 'HLTWHS004-LG', 'HLTWHS004-LG'),
(146, 'en', 148, 'HLTWHS004-LAB', 'HLTWHS004-LAB'),
(147, 'en', 149, 'HLTWHS002-LG', 'HLTWHS002-LG'),
(148, 'en', 150, 'HLTWHS002-LAB', 'HLTWHS002-LAB'),
(149, 'en', 151, 'CHCDIV001-LG', 'CHCDIV001-LG'),
(150, 'en', 152, 'CHCDIV001-LAB', 'CHCDIV001-LAB'),
(151, 'en', 153, 'HLTAAP001-LAB', 'HLTAAP001-LAB'),
(152, 'en', 154, 'HLTAAP001-LG', 'HLTAAP001-LG'),
(153, 'en', 155, 'CHCPAL001-LAB', 'CHCPAL001-LAB'),
(154, 'en', 156, 'CHCPAL001-LG', 'CHCPAL001-LG'),
(155, 'en', 157, 'CHCLEG003-LAB', 'CHCLEG003-LAB'),
(156, 'en', 158, 'CHCLEG003-LG', 'CHCLEG003-LG'),
(157, 'en', 159, 'CHCAGE005-LAB', 'CHCAGE005-LAB'),
(158, 'en', 160, 'CHCAGE005-LG', 'CHCAGE005-LG'),
(159, 'en', 161, 'HLTWHS003-LG', 'HLTWHS003-LG'),
(160, 'en', 162, 'HLTWHS003-LAB', 'HLTWHS003-LAB'),
(161, 'en', 163, 'CHCMHS001-LG', 'CHCMHS001-LG'),
(162, 'en', 164, 'CHCMHS001-LAB', 'CHCMHS001-LAB'),
(163, 'en', 165, 'CHCLEG003-LG', 'CHCLEG003-LG'),
(164, 'en', 166, 'CHCLEG003-LAB', 'CHCLEG003-LAB'),
(165, 'en', 167, 'CHCDIS020-LG', 'CHCDIS020-LG'),
(166, 'en', 168, 'CHCDIS020-LAB', 'CHCDIS020-LAB'),
(167, 'en', 169, 'CHCDIS017-LG', 'CHCDIS017-LG'),
(168, 'en', 170, 'CHCDIS017-LAB', 'CHCDIS017-LAB'),
(169, 'en', 171, 'CHCCCS044-LG', 'CHCCCS044-LG'),
(170, 'en', 172, 'CHCCCS044-LAB', 'CHCCCS044-LAB'),
(171, 'en', 173, 'CHCAGE011-LG', 'CHCAGE011-LG'),
(172, 'en', 174, 'CHCAGE011-LAB', 'CHCAGE011-LAB'),
(173, 'en', 175, 'CHCAGE009-LG', 'CHCAGE009-LG'),
(174, 'en', 176, 'CHCAGE009-LAB', 'CHCAGE009-LAB'),
(175, 'en', 177, 'CHCDIS018-LG', 'CHCDIS018-LG'),
(176, 'en', 178, 'CHCDIS018-LAB', 'CHCDIS018-LAB');

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapters`
--

CREATE TABLE `webinar_chapters` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `check_all_contents_pass` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapters`
--

INSERT INTO `webinar_chapters` (`id`, `code`, `user_id`, `webinar_id`, `order`, `check_all_contents_pass`, `status`, `created_at`) VALUES
(91, 'CHCCCS031', 1030, 2047, NULL, 0, 'active', 1717493165),
(92, 'CHCDIS020', 1030, 2047, NULL, 0, 'active', 1717493399),
(93, 'CHCDIS012', 1030, 2047, NULL, 0, 'active', 1717494002),
(94, 'CHCDIS011', 1030, 2047, NULL, 0, 'active', 1717494618),
(95, 'CHCPAL003', 1030, 2047, NULL, 0, 'active', 1717495149),
(96, 'CHCAGE013', 1030, 2047, NULL, 0, 'active', 1717496115),
(97, 'CHCAGE011', 1030, 2047, NULL, 0, 'active', 1717505653),
(98, 'HLTWHS002', 1030, 2047, NULL, 0, 'active', 1717505980),
(99, 'HLTINF006', 1030, 2047, NULL, 0, 'active', 1717506262),
(100, 'CHCLEG001', 1030, 2047, NULL, 0, 'active', 1717506533),
(101, 'CHCDIV001', 1030, 2047, NULL, 0, 'active', 1717506930),
(102, 'CHCCOM005', 1030, 2047, NULL, 0, 'active', 1717507327),
(103, 'CHCCCS041', 1030, 2047, NULL, 0, 'active', 1717507882),
(104, 'CHCCCS040', 1030, 2047, NULL, 0, 'active', 1717508206),
(105, 'CHCCCS038', 1030, 2047, NULL, 0, 'active', 1717509789),
(109, 'HLTWHS001', 1045, 2048, NULL, 0, 'active', 1719464834),
(110, 'HLTAID012', 1045, 2048, NULL, 0, 'active', 1719465343),
(111, 'CHCPRT025', 1045, 2048, NULL, 0, 'active', 1719466423),
(112, 'CHCECE056', 1045, 2048, NULL, 0, 'active', 1719466745),
(113, 'CHCECE055', 1045, 2048, NULL, 0, 'active', 1719467040),
(114, 'CHCECE054', 1045, 2048, NULL, 0, 'active', 1719467352),
(115, 'CHCECE038', 1045, 2048, NULL, 0, 'active', 1719467652),
(116, 'CHCECE037', 1045, 2048, NULL, 0, 'active', 1719467876),
(117, 'CHCECE036', 1045, 2048, NULL, 0, 'active', 1719468122),
(118, 'CHCECE035', 1045, 2048, NULL, 0, 'active', 1719468317),
(119, 'CHCECE034', 1045, 2048, NULL, 0, 'active', 1719469122),
(120, 'CHCECE033', 1045, 2048, NULL, 0, 'active', 1719469452),
(121, 'CHCECE032', 1045, 2048, NULL, 0, 'active', 1719469702),
(122, 'CHCECE031', 1045, 2048, NULL, 0, 'active', 1719469944),
(123, 'CHCECE030', 1045, 2048, NULL, 0, 'active', 1719470212),
(124, 'CHCDIV001', 1045, 2048, NULL, 0, 'active', 1719470470),
(125, 'CHCCCS006', 1045, 2049, NULL, 0, 'active', 1719473187),
(126, 'HLTWHS004', 1045, 2049, NULL, 0, 'active', 1719473382),
(127, 'HLTWHS002', 1045, 2049, NULL, 0, 'active', 1719473565),
(128, 'CHCDIV001', 1045, 2049, NULL, 0, 'active', 1719473731),
(129, 'HLTAAP001', 1045, 2049, NULL, 0, 'active', 1719730789),
(130, 'CHCPAL001', 1045, 2049, NULL, 0, 'active', 1719731309),
(131, 'CHCLEG003', 1045, 2049, NULL, 0, 'active', 1719732833),
(132, 'CHCAGE005', 1045, 2049, NULL, 0, 'active', 1719733470),
(133, 'HLTWHS003', 1045, 2050, NULL, 0, 'active', 1719808124),
(134, 'CHCMHS001', 1045, 2050, NULL, 0, 'active', 1719812528),
(135, 'CHCLEG003', 1045, 2050, NULL, 0, 'active', 1719812881),
(136, 'CHCDIS020', 1045, 2050, NULL, 0, 'active', 1719992732),
(137, 'CHCDIS017', 1045, 2050, NULL, 0, 'active', 1720080437),
(138, 'CHCCCS044', 1045, 2050, NULL, 0, 'active', 1720080742),
(139, 'CHCAGE011', 1045, 2050, NULL, 0, 'active', 1720081027),
(140, 'CHCAGE009', 1045, 2050, NULL, 0, 'active', 1720081362),
(141, 'CHCDIS019', 1045, 2050, NULL, 0, 'active', 1720081574),
(142, 'CHCDIS018', 1045, 2050, NULL, 0, 'active', 1720081685);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapter_items`
--

CREATE TABLE `webinar_chapter_items` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `chapter_id` int UNSIGNED NOT NULL,
  `item_id` int UNSIGNED NOT NULL,
  `type` enum('file','session','text_lesson','quiz','assignment') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `admin_permission` tinyint(1) DEFAULT NULL,
  `teacher_permission` tinyint(1) DEFAULT NULL,
  `student_permission` tinyint(1) DEFAULT NULL,
  `classroom_learning` tinyint(1) NOT NULL DEFAULT '0',
  `student_handbook` tinyint(1) NOT NULL DEFAULT '0',
  `assesment` tinyint(1) NOT NULL DEFAULT '0',
  `upload_file_type` tinyint(1) DEFAULT '0',
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapter_items`
--

INSERT INTO `webinar_chapter_items` (`id`, `user_id`, `chapter_id`, `item_id`, `type`, `order`, `admin_permission`, `teacher_permission`, `student_permission`, `classroom_learning`, `student_handbook`, `assesment`, `upload_file_type`, `created_at`) VALUES
(440, 1030, 92, 333, 'file', 3, 0, 1, 0, 0, 0, 0, 0, 1717493660),
(442, 1030, 93, 335, 'file', 2, 0, 1, 0, 0, 0, 0, 0, 1717494389),
(446, 1030, 94, 339, 'file', 3, 0, 1, 1, 0, 0, 0, 0, 1717495009),
(449, 1030, 95, 342, 'file', 3, 0, 1, 0, 0, 0, 0, 0, 1717495812),
(452, 1030, 96, 345, 'file', 3, 0, 1, 0, 0, 0, 0, 0, 1717496489),
(455, 1030, 97, 348, 'file', 3, 0, 1, 0, 0, 0, 0, 0, 1717505960),
(456, 1030, 98, 349, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1717506148),
(458, 1030, 99, 351, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1717506359),
(461, 1030, 100, 354, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1717506713),
(464, 1030, 101, 357, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1717507104),
(467, 1030, 102, 360, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1717507523),
(470, 1030, 103, 363, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1717508012),
(475, 1030, 91, 368, 'file', 3, 0, 1, 0, 0, 0, 0, 0, 1717509703),
(476, 1030, 105, 369, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1717510133),
(480, 1030, 91, 84, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719301596),
(481, 1030, 91, 85, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719301715),
(482, 1030, 92, 86, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719301839),
(483, 1030, 92, 87, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719301919),
(484, 1030, 93, 88, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719302021),
(485, 1030, 93, 89, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719302075),
(486, 1030, 94, 90, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719302248),
(487, 1030, 94, 91, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719302334),
(488, 1030, 95, 92, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719302412),
(489, 1030, 95, 93, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719302485),
(490, 1030, 96, 94, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719302552),
(491, 1030, 96, 95, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719302621),
(492, 1030, 97, 96, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719302739),
(493, 1030, 97, 97, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719302803),
(494, 1030, 98, 98, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719302983),
(495, 1030, 99, 99, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719303100),
(496, 1030, 99, 100, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719303153),
(497, 1030, 100, 101, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719303220),
(498, 1030, 100, 102, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719303292),
(499, 1030, 101, 103, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719303358),
(500, 1030, 101, 104, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719303438),
(501, 1030, 102, 105, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719303541),
(502, 1030, 102, 106, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719303610),
(503, 1030, 103, 107, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719303816),
(504, 1030, 104, 108, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719303893),
(505, 1030, 104, 109, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719303959),
(506, 1030, 105, 110, 'assignment', 4, 1, 1, 1, 0, 0, 0, 0, 1719304044),
(507, 1030, 105, 111, 'assignment', 5, 1, 1, 1, 0, 0, 0, 0, 1719304206),
(515, 1045, 109, 377, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719465081),
(516, 1045, 109, 114, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719465254),
(517, 1045, 109, 115, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719465297),
(518, 1045, 110, 378, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719465556),
(519, 1045, 110, 116, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719465923),
(520, 1045, 110, 117, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719466181),
(521, 1045, 111, 118, 'assignment', 1, 1, 1, 1, 0, 0, 0, 0, 1719466674),
(522, 1045, 112, 379, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719466854),
(523, 1045, 112, 119, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719466917),
(524, 1045, 112, 120, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719466999),
(525, 1045, 113, 380, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719467159),
(526, 1045, 113, 121, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719467209),
(527, 1045, 113, 122, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719467260),
(528, 1045, 114, 381, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719467463),
(529, 1045, 114, 123, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719467552),
(530, 1045, 114, 124, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719467597),
(531, 1045, 115, 382, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719467756),
(532, 1045, 115, 125, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719467801),
(533, 1045, 115, 126, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719467850),
(534, 1045, 116, 383, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719468019),
(535, 1045, 116, 127, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719468057),
(536, 1045, 116, 128, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719468092),
(537, 1045, 117, 384, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719468191),
(538, 1045, 117, 129, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719468242),
(539, 1045, 117, 130, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719468287),
(540, 1045, 118, 385, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719468469),
(541, 1045, 118, 131, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719468523),
(542, 1045, 118, 132, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719468874),
(543, 1045, 119, 386, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719469338),
(544, 1045, 119, 133, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719469379),
(545, 1045, 119, 134, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719469419),
(546, 1045, 120, 387, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719469547),
(547, 1045, 120, 135, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719469590),
(548, 1045, 120, 136, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719469662),
(549, 1045, 121, 388, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719469808),
(550, 1045, 121, 137, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719469865),
(551, 1045, 121, 138, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719469924),
(552, 1045, 122, 389, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719470049),
(553, 1045, 122, 139, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719470090),
(554, 1045, 122, 140, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719470140),
(555, 1045, 123, 390, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719470303),
(556, 1045, 123, 141, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719470346),
(557, 1045, 123, 142, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719470398),
(558, 1045, 124, 391, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719470635),
(559, 1045, 124, 143, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719470697),
(560, 1045, 124, 144, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719470759),
(562, 1045, 125, 145, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719473323),
(563, 1045, 125, 146, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719473360),
(565, 1045, 126, 147, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719473482),
(566, 1045, 126, 148, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719473522),
(568, 1045, 127, 149, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719473666),
(569, 1045, 127, 150, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719473703),
(571, 1045, 128, 151, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719473875),
(572, 1045, 128, 152, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719473921),
(574, 1045, 129, 153, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719730940),
(575, 1045, 129, 154, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719731171),
(577, 1045, 130, 155, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719732503),
(578, 1045, 130, 156, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719732763),
(580, 1045, 131, 157, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719733118),
(581, 1045, 131, 158, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719733429),
(583, 1045, 132, 159, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719733601),
(584, 1045, 132, 160, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719733732),
(585, 1045, 133, 400, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719808531),
(586, 1045, 133, 161, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719808608),
(587, 1045, 133, 162, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719808661),
(588, 1045, 134, 401, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719812686),
(589, 1045, 134, 163, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719812776),
(590, 1045, 134, 164, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719812832),
(591, 1045, 135, 402, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719813166),
(592, 1045, 135, 165, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719813240),
(593, 1045, 135, 166, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719813347),
(594, 1045, 136, 403, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1719992866),
(595, 1045, 136, 167, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1719992957),
(596, 1045, 136, 168, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1719993056),
(597, 1045, 137, 404, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1720080607),
(598, 1045, 137, 169, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1720080646),
(599, 1045, 137, 170, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1720080692),
(600, 1045, 138, 405, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1720080871),
(601, 1045, 138, 171, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1720080932),
(602, 1045, 138, 172, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1720080987),
(603, 1045, 139, 406, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1720081179),
(604, 1045, 139, 173, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1720081259),
(605, 1045, 139, 174, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1720081310),
(606, 1045, 140, 407, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1720081449),
(607, 1045, 140, 175, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1720081489),
(608, 1045, 140, 176, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1720081541),
(609, 1045, 141, 408, 'file', 1, 0, 1, 1, 0, 0, 0, 0, 1720081661),
(610, 1045, 142, 409, 'file', 1, 0, 1, 0, 0, 0, 0, 0, 1720081776),
(611, 1045, 142, 177, 'assignment', 2, 1, 1, 1, 0, 0, 0, 0, 1720081831),
(612, 1045, 142, 178, 'assignment', 3, 1, 1, 1, 0, 0, 0, 0, 1720081892),
(613, 1045, 125, 392, 'file', 4, 0, 1, 0, 0, 0, 0, 0, 1720412117),
(614, 1045, 126, 393, 'file', 4, 0, 1, 0, 0, 0, 0, 0, 1720412398),
(615, 1045, 127, 394, 'file', 4, 0, 1, 0, 0, 0, 0, 0, 1720412545),
(616, 1045, 128, 395, 'file', 4, 0, 1, 0, 0, 0, 0, 0, 1720412695),
(617, 1045, 129, 396, 'file', 4, 0, 1, 0, 0, 0, 0, 0, 1720412897),
(618, 1045, 130, 397, 'file', 4, 0, 1, 0, 0, 0, 0, 0, 1720412977),
(619, 1045, 131, 398, 'file', 4, 0, 1, 0, 0, 0, 0, 0, 1720413045),
(620, 1045, 132, 399, 'file', 4, 0, 1, 0, 0, 0, 0, 0, 1720413128);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapter_translations`
--

CREATE TABLE `webinar_chapter_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `webinar_chapter_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapter_translations`
--

INSERT INTO `webinar_chapter_translations` (`id`, `webinar_chapter_id`, `locale`, `title`) VALUES
(91, 91, 'en', '-'),
(92, 92, 'en', '-'),
(93, 93, 'en', '-'),
(94, 94, 'en', '-'),
(95, 95, 'en', '-'),
(96, 96, 'en', '-'),
(97, 97, 'en', '-'),
(98, 98, 'en', '-'),
(99, 99, 'en', '-'),
(100, 100, 'en', '-'),
(101, 101, 'en', '-'),
(102, 102, 'en', '-'),
(103, 103, 'en', '-'),
(104, 104, 'en', '-'),
(105, 105, 'en', '-'),
(109, 109, 'en', '-'),
(110, 110, 'en', '-'),
(111, 111, 'en', '-'),
(112, 112, 'en', '-'),
(113, 113, 'en', '-'),
(114, 114, 'en', '-'),
(115, 115, 'en', '-'),
(116, 116, 'en', '-'),
(117, 117, 'en', '-'),
(118, 118, 'en', '-'),
(119, 119, 'en', '-'),
(120, 120, 'en', '-'),
(121, 121, 'en', '-'),
(122, 122, 'en', '-'),
(123, 123, 'en', '-'),
(124, 124, 'en', '-'),
(125, 125, 'en', '-'),
(126, 126, 'en', '-'),
(127, 127, 'en', '-'),
(128, 128, 'en', '-'),
(129, 129, 'en', '-'),
(130, 130, 'en', '-'),
(131, 131, 'en', '-'),
(132, 132, 'en', '-'),
(133, 133, 'en', '-'),
(134, 134, 'en', '-'),
(135, 135, 'en', '-'),
(136, 136, 'en', '-'),
(137, 137, 'en', '-'),
(138, 138, 'en', '-'),
(139, 139, 'en', '-'),
(140, 140, 'en', '-'),
(141, 141, 'en', '-'),
(142, 142, 'en', '-');

-- --------------------------------------------------------

--
-- Table structure for table `webinar_extra_descriptions`
--

CREATE TABLE `webinar_extra_descriptions` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `type` enum('learning_materials','company_logos','requirements') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_extra_description_translations`
--

CREATE TABLE `webinar_extra_description_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `webinar_extra_description_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_filter_option`
--

CREATE TABLE `webinar_filter_option` (
  `id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `filter_option_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_partner_teacher`
--

CREATE TABLE `webinar_partner_teacher` (
  `id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `teacher_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reports`
--

CREATE TABLE `webinar_reports` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reviews`
--

CREATE TABLE `webinar_reviews` (
  `id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED DEFAULT NULL,
  `bundle_id` int UNSIGNED DEFAULT NULL,
  `content_quality` int UNSIGNED NOT NULL,
  `instructor_skills` int UNSIGNED NOT NULL,
  `purchase_worth` int UNSIGNED NOT NULL,
  `support_quality` int UNSIGNED NOT NULL,
  `rates` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` int UNSIGNED NOT NULL,
  `status` enum('pending','active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_translations`
--

CREATE TABLE `webinar_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `webinar_id` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_translations`
--

INSERT INTO `webinar_translations` (`id`, `webinar_id`, `locale`, `title`, `seo_description`, `description`) VALUES
(66, 2047, 'en', 'Certificate III in Individual Support', '', ''),
(67, 2048, 'en', 'Certificate III in Early Childhood Education & Care', '', ''),
(68, 2049, 'en', 'Certificate IV in Ageing Support', '', ''),
(69, 2050, 'en', 'Certificate IV in Disability Support', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting`
--
ALTER TABLE `accounting`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `webinar_id` (`webinar_id`) USING BTREE,
  ADD KEY `meeting_time_id` (`meeting_time_id`) USING BTREE,
  ADD KEY `subscribe_id` (`subscribe_id`) USING BTREE,
  ADD KEY `promotion_id` (`promotion_id`) USING BTREE;

--
-- Indexes for table `advertising_banners`
--
ALTER TABLE `advertising_banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertising_banners_translations_advertising_banner_id_foreign` (`advertising_banner_id`),
  ADD KEY `advertising_banners_translations_locale_index` (`locale`);

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affiliates_affiliate_user_id_foreign` (`affiliate_user_id`),
  ADD KEY `affiliates_referred_user_id_foreign` (`referred_user_id`);

--
-- Indexes for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliates_codes_code_unique` (`code`),
  ADD KEY `affiliates_codes_user_id_foreign` (`user_id`);

--
-- Indexes for table `agora_history`
--
ALTER TABLE `agora_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agora_history_session_id_foreign` (`session_id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `badges_type_index` (`type`) USING BTREE;

--
-- Indexes for table `badge_translations`
--
ALTER TABLE `badge_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `badge_translations_badge_id_foreign` (`badge_id`),
  ADD KEY `badge_translations_locale_index` (`locale`);

--
-- Indexes for table `batchs`
--
ALTER TABLE `batchs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `become_instructors`
--
ALTER TABLE `become_instructors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `become_instructors_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `blog_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `slug` (`slug`) USING BTREE;

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_translations_blog_id_locale_unique` (`blog_id`,`locale`),
  ADD KEY `blog_translations_locale_index` (`locale`);

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundles_creator_id_foreign` (`creator_id`),
  ADD KEY `bundles_teacher_id_foreign` (`teacher_id`),
  ADD KEY `bundles_category_id_foreign` (`category_id`),
  ADD KEY `bundles_slug_index` (`slug`);

--
-- Indexes for table `bundle_filter_option`
--
ALTER TABLE `bundle_filter_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_filter_option_bundle_id_foreign` (`bundle_id`),
  ADD KEY `bundle_filter_option_filter_option_id_foreign` (`filter_option_id`);

--
-- Indexes for table `bundle_translations`
--
ALTER TABLE `bundle_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_translations_bundle_id_foreign` (`bundle_id`),
  ADD KEY `bundle_translations_locale_index` (`locale`);

--
-- Indexes for table `bundle_webinars`
--
ALTER TABLE `bundle_webinars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_webinars_bundle_id_foreign` (`bundle_id`),
  ADD KEY `bundle_webinars_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cart_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `cart_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `cart_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `cart_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  ADD KEY `cart_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `cart_promotion_id_foreign` (`promotion_id`) USING BTREE,
  ADD KEY `cart_special_offer_id_foreign` (`special_offer_id`),
  ADD KEY `cart_product_order_id_foreign` (`product_order_id`),
  ADD KEY `cart_product_discount_id_foreign` (`product_discount_id`),
  ADD KEY `cart_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `parent_id` (`parent_id`) USING BTREE;

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_translations_category_id_foreign` (`category_id`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `certificates_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `certificates_quiz_result_id_foreign` (`quiz_result_id`) USING BTREE,
  ADD KEY `certificates_student_id_foreign` (`student_id`) USING BTREE,
  ADD KEY `certificates_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_template_id` (`certificate_template_id`),
  ADD KEY `certificate_template_translations_locale_index` (`locale`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `comments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `comments_review_id_foreign` (`review_id`) USING BTREE,
  ADD KEY `comments_reply_id_foreign` (`reply_id`) USING BTREE,
  ADD KEY `comments_product_id_foreign` (`product_id`),
  ADD KEY `comments_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_reports_comment_id_foreign` (`comment_id`) USING BTREE,
  ADD KEY `comments_reports_product_id_foreign` (`product_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `course_forums`
--
ALTER TABLE `course_forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_forums_webinar_id_foreign` (`webinar_id`),
  ADD KEY `course_forums_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_forum_answers`
--
ALTER TABLE `course_forum_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_forum_answers_user_id_foreign` (`user_id`),
  ADD KEY `course_forum_answers_forum_id_foreign` (`forum_id`);

--
-- Indexes for table `course_instructions`
--
ALTER TABLE `course_instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_learning_user_id_foreign` (`user_id`),
  ADD KEY `course_learning_text_lesson_id_foreign` (`text_lesson_id`),
  ADD KEY `course_learning_file_id_foreign` (`file_id`),
  ADD KEY `course_learning_session_id_foreign` (`session_id`);

--
-- Indexes for table `course_noticeboards`
--
ALTER TABLE `course_noticeboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_noticeboards_creator_id_foreign` (`creator_id`),
  ADD KEY `course_noticeboards_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `course_noticeboard_status`
--
ALTER TABLE `course_noticeboard_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_noticeboard_status_noticeboard_id_foreign` (`noticeboard_id`);

--
-- Indexes for table `delete_account_requests`
--
ALTER TABLE `delete_account_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delete_account_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `discounts_code_unique` (`code`),
  ADD KEY `discounts_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `discount_categories`
--
ALTER TABLE `discount_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_categories_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `discount_courses`
--
ALTER TABLE `discount_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_courses_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_courses_course_id_foreign` (`course_id`);

--
-- Indexes for table `discount_groups`
--
ALTER TABLE `discount_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_groups_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_groups_group_id_foreign` (`group_id`);

--
-- Indexes for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `discount_users_discount_id_foreign` (`discount_id`) USING BTREE,
  ADD KEY `discount_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `entake_units`
--
ALTER TABLE `entake_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `faqs_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `faqs_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `faqs_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_translations_faq_id_foreign` (`faq_id`),
  ADD KEY `faq_translations_locale_index` (`locale`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `favorites_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `favorites_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `favorites_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `feature_webinars_webinar_id_index` (`webinar_id`) USING BTREE;

--
-- Indexes for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_webinar_translations_feature_webinar_id_foreign` (`feature_webinar_id`),
  ADD KEY `feature_webinar_translations_locale_index` (`locale`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `files_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `files_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `files_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `file_translations`
--
ALTER TABLE `file_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_translations_file_id_foreign` (`file_id`),
  ADD KEY `file_translations_locale_index` (`locale`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `filters_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `filter_options_filter_id_foreign` (`filter_id`) USING BTREE;

--
-- Indexes for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_option_translations_filter_option_id_foreign` (`filter_option_id`),
  ADD KEY `filter_option_translations_locale_index` (`locale`);

--
-- Indexes for table `filter_translations`
--
ALTER TABLE `filter_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_translations_filter_id_foreign` (`filter_id`),
  ADD KEY `filter_translations_locale_index` (`locale`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `follows_follower_foreign` (`follower`) USING BTREE,
  ADD KEY `follows_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forums_slug_unique` (`slug`),
  ADD KEY `forums_role_id_foreign` (`role_id`),
  ADD KEY `forums_group_id_foreign` (`group_id`);

--
-- Indexes for table `forum_featured_topics`
--
ALTER TABLE `forum_featured_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_featured_topics_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `forum_recommended_topics`
--
ALTER TABLE `forum_recommended_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_recommended_topic_items`
--
ALTER TABLE `forum_recommended_topic_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_recommended_topic_items_recommended_topic_id_foreign` (`recommended_topic_id`),
  ADD KEY `forum_recommended_topic_items_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_topics_slug_unique` (`slug`),
  ADD KEY `forum_topics_creator_id_foreign` (`creator_id`),
  ADD KEY `forum_topics_forum_id_foreign` (`forum_id`);

--
-- Indexes for table `forum_topic_attachments`
--
ALTER TABLE `forum_topic_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_attachments_topic_id_foreign` (`topic_id`),
  ADD KEY `forum_topic_attachments_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `forum_topic_bookmarks`
--
ALTER TABLE `forum_topic_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `forum_topic_bookmarks_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `forum_topic_likes`
--
ALTER TABLE `forum_topic_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_likes_user_id_foreign` (`user_id`),
  ADD KEY `forum_topic_likes_topic_id_foreign` (`topic_id`),
  ADD KEY `forum_topic_likes_topic_post_id_foreign` (`topic_post_id`);

--
-- Indexes for table `forum_topic_posts`
--
ALTER TABLE `forum_topic_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_posts_user_id_foreign` (`user_id`),
  ADD KEY `forum_topic_posts_topic_id_foreign` (`topic_id`),
  ADD KEY `forum_topic_posts_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `forum_topic_reports`
--
ALTER TABLE `forum_topic_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topic_reports_user_id_foreign` (`user_id`),
  ADD KEY `forum_topic_reports_topic_id_foreign` (`topic_id`),
  ADD KEY `forum_topic_reports_topic_post_id_foreign` (`topic_post_id`);

--
-- Indexes for table `forum_translations`
--
ALTER TABLE `forum_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_translations_forum_id_foreign` (`forum_id`),
  ADD KEY `forum_translations_locale_index` (`locale`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `groups_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_registration_packages_group_id_foreign` (`group_id`);

--
-- Indexes for table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `group_users_group_id_foreign` (`group_id`) USING BTREE,
  ADD KEY `group_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_sections_name_index` (`name`);

--
-- Indexes for table `jazzcash_transactions`
--
ALTER TABLE `jazzcash_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meetings_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meeting_times_meeting_id_foreign` (`meeting_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `navbar_buttons`
--
ALTER TABLE `navbar_buttons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navbar_buttons_role_id_foreign` (`role_id`);

--
-- Indexes for table `navbar_button_translations`
--
ALTER TABLE `navbar_button_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navbar_button_translations_navbar_button_id_foreign` (`navbar_button_id`),
  ADD KEY `navbar_button_translations_locale_index` (`locale`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters_history`
--
ALTER TABLE `newsletters_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_organ_id_foreign` (`organ_id`),
  ADD KEY `noticeboards_user_id_foreign` (`user_id`),
  ADD KEY `noticeboards_instructor_id_foreign` (`instructor_id`),
  ADD KEY `noticeboards_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_status_noticeboard_id_foreign` (`noticeboard_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `notifications_group_id_foreign` (`group_id`) USING BTREE;

--
-- Indexes for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_status_notification_id_foreign` (`notification_id`) USING BTREE;

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `offline_payments_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `order_items_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `order_items_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `order_items_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `order_items_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  ADD KEY `order_items_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `order_items_promotion_id_foreign` (`promotion_id`) USING BTREE;

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_link_unique` (`link`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_translations_page_id_foreign` (`page_id`),
  ADD KEY `page_translations_locale_index` (`locale`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `payku_payments`
--
ALTER TABLE `payku_payments`
  ADD UNIQUE KEY `payku_payments_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `payku_transactions`
--
ALTER TABLE `payku_transactions`
  ADD UNIQUE KEY `payku_transactions_id_unique` (`id`),
  ADD UNIQUE KEY `payku_transactions_order_unique` (`order`);

--
-- Indexes for table `payment_channels`
--
ALTER TABLE `payment_channels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `payouts_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `payu_transactions`
--
ALTER TABLE `payu_transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `payu_transactions_transaction_id_unique` (`transaction_id`) USING BTREE,
  ADD KEY `payu_transactions_status_index` (`status`) USING BTREE,
  ADD KEY `payu_transactions_verified_at_index` (`verified_at`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permissions_role_id_index` (`role_id`) USING BTREE,
  ADD KEY `permissions_section_id_index` (`section_id`) USING BTREE;

--
-- Indexes for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `prerequisites_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `prerequisite_id` (`prerequisite_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_creator_id_foreign` (`creator_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_type_index` (`type`),
  ADD KEY `products_slug_index` (`slug`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_translations`
--
ALTER TABLE `product_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id` (`product_category_id`),
  ADD KEY `product_category_translations_locale_index` (`locale`);

--
-- Indexes for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_discounts_creator_id_foreign` (`creator_id`),
  ADD KEY `product_discounts_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_faqs`
--
ALTER TABLE `product_faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_faqs_product_id_foreign` (`product_id`),
  ADD KEY `product_faqs_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `product_faq_translations`
--
ALTER TABLE `product_faq_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_faq_id` (`product_faq_id`),
  ADD KEY `product_faq_translations_locale_index` (`locale`);

--
-- Indexes for table `product_files`
--
ALTER TABLE `product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_product_id` (`product_id`),
  ADD KEY `file_creator_id` (`creator_id`);

--
-- Indexes for table `product_file_translations`
--
ALTER TABLE `product_file_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_file_id` (`product_file_id`),
  ADD KEY `product_file_translations_locale_index` (`locale`);

--
-- Indexes for table `product_filters`
--
ALTER TABLE `product_filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_filters_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_filter_options`
--
ALTER TABLE `product_filter_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_filter_options_filter_id_foreign` (`filter_id`);

--
-- Indexes for table `product_filter_option_translations`
--
ALTER TABLE `product_filter_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_filter_option_id` (`product_filter_option_id`),
  ADD KEY `product_filter_option_translations_locale_index` (`locale`);

--
-- Indexes for table `product_filter_translations`
--
ALTER TABLE `product_filter_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_filter_id` (`product_filter_id`),
  ADD KEY `product_filter_translations_locale_index` (`locale`);

--
-- Indexes for table `product_media`
--
ALTER TABLE `product_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_product_id` (`product_id`),
  ADD KEY `media_creator_id` (`creator_id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_creator_id_foreign` (`creator_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_selected_filter_options`
--
ALTER TABLE `product_selected_filter_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_selected_filter_options_product_id_foreign` (`product_id`),
  ADD KEY `product_selected_filter_options_filter_option_id_foreign` (`filter_option_id`);

--
-- Indexes for table `product_selected_specifications`
--
ALTER TABLE `product_selected_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_selected_specifications_creator_id_foreign` (`creator_id`),
  ADD KEY `product_selected_specifications_product_id_foreign` (`product_id`),
  ADD KEY `product_selected_specifications_product_specification_id_foreign` (`product_specification_id`);

--
-- Indexes for table `product_selected_specification_multi_values`
--
ALTER TABLE `product_selected_specification_multi_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selected_specification_id` (`selected_specification_id`),
  ADD KEY `specification_multi_value_id` (`specification_multi_value_id`);

--
-- Indexes for table `product_selected_specification_translations`
--
ALTER TABLE `product_selected_specification_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_selected_specification_id_translations` (`product_selected_specification_id`),
  ADD KEY `product_selected_specification_translations_locale_index` (`locale`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specification_categories`
--
ALTER TABLE `product_specification_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_categories_specification_id_foreign` (`specification_id`),
  ADD KEY `product_specification_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_specification_multi_values`
--
ALTER TABLE `product_specification_multi_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_multi_values_specification_id_foreign` (`specification_id`);

--
-- Indexes for table `product_specification_multi_value_translations`
--
ALTER TABLE `product_specification_multi_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_multi_value_id` (`product_specification_multi_value_id`),
  ADD KEY `product_specification_multi_value_translations_locale_index` (`locale`);

--
-- Indexes for table `product_specification_translations`
--
ALTER TABLE `product_specification_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification_id` (`product_specification_id`),
  ADD KEY `product_specification_translations_locale_index` (`locale`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_translations_locale_index` (`locale`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion_translations_promotion_id_foreign` (`promotion_id`),
  ADD KEY `promotion_translations_locale_index` (`locale`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `purchases_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `purchases_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `quizzes_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `quizzes_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_questions_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `quizzes_questions_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_questions_answers_question_id_foreign` (`question_id`) USING BTREE,
  ADD KEY `quizzes_questions_answers_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_questions_answer_id` (`quizzes_questions_answer_id`),
  ADD KEY `quizzes_questions_answer_translations_locale_index` (`locale`);

--
-- Indexes for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_results_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `quizzes_results_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_question_translations_quiz_question_id_foreign` (`quizzes_question_id`),
  ADD KEY `quiz_question_translations_locale_index` (`locale`);

--
-- Indexes for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_translations_quiz_id_foreign` (`quiz_id`),
  ADD KEY `quiz_translations_locale_index` (`locale`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `rating_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `rating_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `rating_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_country_id_foreign` (`country_id`),
  ADD KEY `regions_province_id_foreign` (`province_id`),
  ADD KEY `regions_city_id_foreign` (`city_id`);

--
-- Indexes for table `registration_packages`
--
ALTER TABLE `registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_packages_role_index` (`role`);

--
-- Indexes for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_package` (`registration_package_id`),
  ADD KEY `registration_packages_translations_locale_index` (`locale`);

--
-- Indexes for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `reserve_meetings_meeting_time_id_foreign` (`meeting_time_id`) USING BTREE,
  ADD KEY `reserve_meetings_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `reserve_meetings_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewards_accounting_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sales_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `sales_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `sales_meeting_id_foreign` (`meeting_id`) USING BTREE,
  ADD KEY `sales_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `sales_buyer_id_foreign` (`buyer_id`) USING BTREE,
  ADD KEY `sales_seller_id_foreign` (`seller_id`) USING BTREE,
  ADD KEY `sales_promotion_id_foreign` (`promotion_id`) USING BTREE;

--
-- Indexes for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_status_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `sessions_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `sessions_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_reminds_session_id_foreign` (`session_id`),
  ADD KEY `session_reminds_user_id_foreign` (`user_id`);

--
-- Indexes for table `session_translations`
--
ALTER TABLE `session_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_translations_session_id_foreign` (`session_id`),
  ADD KEY `session_translations_locale_index` (`locale`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_translations_setting_id_foreign` (`setting_id`),
  ADD KEY `setting_translations_locale_index` (`locale`);

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `special_offers_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `special_offers_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `special_offers_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `subscribe_reminds`
--
ALTER TABLE `subscribe_reminds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribe_reminds_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `subscribe_reminds_user_id_foreign` (`user_id`);

--
-- Indexes for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribe_translations_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `subscribe_translations_locale_index` (`locale`);

--
-- Indexes for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `subscribe_uses_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `subscribe_uses_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `subscribe_uses_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `subscribe_uses_sale_id_foreign` (`sale_id`) USING BTREE,
  ADD KEY `subscribe_uses_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `supports_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `supports_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `supports_department_id_foreign` (`department_id`) USING BTREE;

--
-- Indexes for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `support_conversations_support_id_foreign` (`support_id`) USING BTREE,
  ADD KEY `support_conversations_sender_id_foreign` (`sender_id`) USING BTREE,
  ADD KEY `support_conversations_supporter_id_foreign` (`supporter_id`) USING BTREE;

--
-- Indexes for table `support_departments`
--
ALTER TABLE `support_departments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_department_id` (`support_department_id`),
  ADD KEY `support_department_translations_locale_index` (`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tags_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `tags_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_translations_testimonial_id_foreign` (`testimonial_id`),
  ADD KEY `testimonial_translations_locale_index` (`locale`);

--
-- Indexes for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `text_lessons_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `text_lessons_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `text_lessons_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `text_lessons_attachments_text_lesson_id_foreign` (`text_lesson_id`) USING BTREE,
  ADD KEY `text_lessons_attachments_file_id_foreign` (`file_id`) USING BTREE;

--
-- Indexes for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `text_lesson_id` (`text_lesson_id`),
  ADD KEY `text_lesson_translations_locale_index` (`locale`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tickets_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `tickets_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `tickets_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_translations_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_translations_locale_index` (`locale`);

--
-- Indexes for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ticket_users_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `ticket_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `trend_categories_category_id_index` (`category_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`) USING BTREE,
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_province_id_foreign` (`province_id`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_district_id_foreign` (`district_id`);

--
-- Indexes for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users_badges_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `users_badges_badge_id_foreign` (`badge_id`) USING BTREE;

--
-- Indexes for table `users_cookie_security`
--
ALTER TABLE `users_cookie_security`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_cookie_security_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_manual_purchase`
--
ALTER TABLE `users_manual_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_metas_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users_occupations_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `users_occupations_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_registration_packages_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_zoom_api_user_id_foreign` (`user_id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `verifications_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `webinars`
--
ALTER TABLE `webinars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `webinars_slug_unique` (`slug`) USING BTREE,
  ADD KEY `webinars_teacher_id_foreign` (`teacher_id`) USING BTREE,
  ADD KEY `webinars_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `webinars_slug_index` (`slug`) USING BTREE,
  ADD KEY `webinars_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `webinar_assignments`
--
ALTER TABLE `webinar_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignments_creator_id_foreign` (`creator_id`),
  ADD KEY `webinar_assignments_webinar_id_foreign` (`webinar_id`),
  ADD KEY `webinar_assignments_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `webinar_assignment_attachments`
--
ALTER TABLE `webinar_assignment_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignment_attachments_assignment_id_foreign` (`assignment_id`);

--
-- Indexes for table `webinar_assignment_history`
--
ALTER TABLE `webinar_assignment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignment_history_instructor_id_foreign` (`instructor_id`),
  ADD KEY `webinar_assignment_history_student_id_foreign` (`student_id`),
  ADD KEY `webinar_assignment_history_assignment_id_foreign` (`assignment_id`);

--
-- Indexes for table `webinar_assignment_history_messages`
--
ALTER TABLE `webinar_assignment_history_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignment_history_id` (`assignment_history_id`);

--
-- Indexes for table `webinar_assignment_translations`
--
ALTER TABLE `webinar_assignment_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_assignment_id_translate_foreign` (`webinar_assignment_id`),
  ADD KEY `webinar_assignment_translations_locale_index` (`locale`);

--
-- Indexes for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_chapters_user_id_foreign` (`user_id`),
  ADD KEY `webinar_chapters_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `webinar_chapter_items`
--
ALTER TABLE `webinar_chapter_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_chapter_items_chapter_id_foreign` (`chapter_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_chapter_id` (`webinar_chapter_id`),
  ADD KEY `webinar_chapter_translations_locale_index` (`locale`);

--
-- Indexes for table `webinar_extra_descriptions`
--
ALTER TABLE `webinar_extra_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_extra_descriptions_creator_id_foreign` (`creator_id`),
  ADD KEY `webinar_extra_descriptions_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `webinar_extra_description_translations`
--
ALTER TABLE `webinar_extra_description_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_extra_description_id_foreign` (`webinar_extra_description_id`),
  ADD KEY `webinar_extra_description_translations_locale_index` (`locale`);

--
-- Indexes for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_filter_option_filter_option_id_foreign` (`filter_option_id`) USING BTREE,
  ADD KEY `webinar_filter_option_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_partner_teacher_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `webinar_partner_teacher_teacher_id_foreign` (`teacher_id`) USING BTREE;

--
-- Indexes for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_reports_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_reviews_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `webinar_reviews_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `webinar_reviews_bundle_id_foreign` (`bundle_id`);

--
-- Indexes for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_translations_webinar_id_foreign` (`webinar_id`),
  ADD KEY `webinar_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting`
--
ALTER TABLE `accounting`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `advertising_banners`
--
ALTER TABLE `advertising_banners`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `agora_history`
--
ALTER TABLE `agora_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `badge_translations`
--
ALTER TABLE `badge_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `batchs`
--
ALTER TABLE `batchs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `become_instructors`
--
ALTER TABLE `become_instructors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bundle_filter_option`
--
ALTER TABLE `bundle_filter_option`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `bundle_translations`
--
ALTER TABLE `bundle_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bundle_webinars`
--
ALTER TABLE `bundle_webinars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `comments_reports`
--
ALTER TABLE `comments_reports`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forums`
--
ALTER TABLE `course_forums`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_forum_answers`
--
ALTER TABLE `course_forum_answers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course_instructions`
--
ALTER TABLE `course_instructions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_learning`
--
ALTER TABLE `course_learning`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `course_noticeboards`
--
ALTER TABLE `course_noticeboards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_noticeboard_status`
--
ALTER TABLE `course_noticeboard_status`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `delete_account_requests`
--
ALTER TABLE `delete_account_requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `discount_categories`
--
ALTER TABLE `discount_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `discount_courses`
--
ALTER TABLE `discount_courses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_groups`
--
ALTER TABLE `discount_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_users`
--
ALTER TABLE `discount_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entake_units`
--
ALTER TABLE `entake_units`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `faq_translations`
--
ALTER TABLE `faq_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `file_translations`
--
ALTER TABLE `file_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1848;

--
-- AUTO_INCREMENT for table `filter_options`
--
ALTER TABLE `filter_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9293;

--
-- AUTO_INCREMENT for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `filter_translations`
--
ALTER TABLE `filter_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `forum_featured_topics`
--
ALTER TABLE `forum_featured_topics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_recommended_topics`
--
ALTER TABLE `forum_recommended_topics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_recommended_topic_items`
--
ALTER TABLE `forum_recommended_topic_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `forum_topic_attachments`
--
ALTER TABLE `forum_topic_attachments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_topic_bookmarks`
--
ALTER TABLE `forum_topic_bookmarks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic_likes`
--
ALTER TABLE `forum_topic_likes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topic_posts`
--
ALTER TABLE `forum_topic_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `forum_topic_reports`
--
ALTER TABLE `forum_topic_reports`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_translations`
--
ALTER TABLE `forum_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_users`
--
ALTER TABLE `group_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jazzcash_transactions`
--
ALTER TABLE `jazzcash_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `meeting_times`
--
ALTER TABLE `meeting_times`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT for table `navbar_buttons`
--
ALTER TABLE `navbar_buttons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `navbar_button_translations`
--
ALTER TABLE `navbar_button_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `newsletters_history`
--
ALTER TABLE `newsletters_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticeboards`
--
ALTER TABLE `noticeboards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2194;

--
-- AUTO_INCREMENT for table `notifications_status`
--
ALTER TABLE `notifications_status`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_channels`
--
ALTER TABLE `payment_channels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payu_transactions`
--
ALTER TABLE `payu_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12409;

--
-- AUTO_INCREMENT for table `prerequisites`
--
ALTER TABLE `prerequisites`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_category_translations`
--
ALTER TABLE `product_category_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_discounts`
--
ALTER TABLE `product_discounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_faqs`
--
ALTER TABLE `product_faqs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_faq_translations`
--
ALTER TABLE `product_faq_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_files`
--
ALTER TABLE `product_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_file_translations`
--
ALTER TABLE `product_file_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_filters`
--
ALTER TABLE `product_filters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_filter_options`
--
ALTER TABLE `product_filter_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_filter_option_translations`
--
ALTER TABLE `product_filter_option_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_filter_translations`
--
ALTER TABLE `product_filter_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_media`
--
ALTER TABLE `product_media`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_selected_filter_options`
--
ALTER TABLE `product_selected_filter_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_selected_specifications`
--
ALTER TABLE `product_selected_specifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_selected_specification_multi_values`
--
ALTER TABLE `product_selected_specification_multi_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_selected_specification_translations`
--
ALTER TABLE `product_selected_specification_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_specification_categories`
--
ALTER TABLE `product_specification_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_specification_multi_values`
--
ALTER TABLE `product_specification_multi_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_specification_multi_value_translations`
--
ALTER TABLE `product_specification_multi_value_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_specification_translations`
--
ALTER TABLE `product_specification_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `registration_packages`
--
ALTER TABLE `registration_packages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `sales_log`
--
ALTER TABLE `sales_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2035;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `session_reminds`
--
ALTER TABLE `session_reminds`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_translations`
--
ALTER TABLE `session_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribe_reminds`
--
ALTER TABLE `subscribe_reminds`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `support_conversations`
--
ALTER TABLE `support_conversations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `support_departments`
--
ALTER TABLE `support_departments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6626;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `text_lessons`
--
ALTER TABLE `text_lessons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_users`
--
ALTER TABLE `ticket_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trend_categories`
--
ALTER TABLE `trend_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1080;

--
-- AUTO_INCREMENT for table `users_badges`
--
ALTER TABLE `users_badges`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_cookie_security`
--
ALTER TABLE `users_cookie_security`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_manual_purchase`
--
ALTER TABLE `users_manual_purchase`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_metas`
--
ALTER TABLE `users_metas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users_occupations`
--
ALTER TABLE `users_occupations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1072;

--
-- AUTO_INCREMENT for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `webinars`
--
ALTER TABLE `webinars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2052;

--
-- AUTO_INCREMENT for table `webinar_assignments`
--
ALTER TABLE `webinar_assignments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `webinar_assignment_attachments`
--
ALTER TABLE `webinar_assignment_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `webinar_assignment_history`
--
ALTER TABLE `webinar_assignment_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `webinar_assignment_history_messages`
--
ALTER TABLE `webinar_assignment_history_messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `webinar_assignment_translations`
--
ALTER TABLE `webinar_assignment_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `webinar_chapter_items`
--
ALTER TABLE `webinar_chapter_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;

--
-- AUTO_INCREMENT for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `webinar_extra_descriptions`
--
ALTER TABLE `webinar_extra_descriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `webinar_extra_description_translations`
--
ALTER TABLE `webinar_extra_description_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11662;

--
-- AUTO_INCREMENT for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  ADD CONSTRAINT `advertising_banners_translations_advertising_banner_id_foreign` FOREIGN KEY (`advertising_banner_id`) REFERENCES `advertising_banners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD CONSTRAINT `affiliates_affiliate_user_id_foreign` FOREIGN KEY (`affiliate_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `affiliates_referred_user_id_foreign` FOREIGN KEY (`referred_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  ADD CONSTRAINT `affiliates_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `agora_history`
--
ALTER TABLE `agora_history`
  ADD CONSTRAINT `agora_history_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `badge_translations`
--
ALTER TABLE `badge_translations`
  ADD CONSTRAINT `badge_translations_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `become_instructors`
--
ALTER TABLE `become_instructors`
  ADD CONSTRAINT `become_instructors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD CONSTRAINT `blog_translations_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundles`
--
ALTER TABLE `bundles`
  ADD CONSTRAINT `bundles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundles_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundles_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundle_filter_option`
--
ALTER TABLE `bundle_filter_option`
  ADD CONSTRAINT `bundle_filter_option_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundle_filter_option_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundle_translations`
--
ALTER TABLE `bundle_translations`
  ADD CONSTRAINT `bundle_translations_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundle_webinars`
--
ALTER TABLE `bundle_webinars`
  ADD CONSTRAINT `bundle_webinars_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundle_webinars_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_product_discount_id_foreign` FOREIGN KEY (`product_discount_id`) REFERENCES `product_discounts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cart_product_order_id_foreign` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_reserve_meeting_id_foreign` FOREIGN KEY (`reserve_meeting_id`) REFERENCES `reserve_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_special_offer_id_foreign` FOREIGN KEY (`special_offer_id`) REFERENCES `special_offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_quiz_result_id_foreign` FOREIGN KEY (`quiz_result_id`) REFERENCES `quizzes_results` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  ADD CONSTRAINT `certificate_template_id` FOREIGN KEY (`certificate_template_id`) REFERENCES `certificates_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `webinar_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD CONSTRAINT `comments_reports_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_forums`
--
ALTER TABLE `course_forums`
  ADD CONSTRAINT `course_forums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_forums_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_forum_answers`
--
ALTER TABLE `course_forum_answers`
  ADD CONSTRAINT `course_forum_answers_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `course_forums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_forum_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD CONSTRAINT `course_learning_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_noticeboards`
--
ALTER TABLE `course_noticeboards`
  ADD CONSTRAINT `course_noticeboards_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_noticeboards_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_noticeboard_status`
--
ALTER TABLE `course_noticeboard_status`
  ADD CONSTRAINT `course_noticeboard_status_noticeboard_id_foreign` FOREIGN KEY (`noticeboard_id`) REFERENCES `course_noticeboards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delete_account_requests`
--
ALTER TABLE `delete_account_requests`
  ADD CONSTRAINT `delete_account_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_categories`
--
ALTER TABLE `discount_categories`
  ADD CONSTRAINT `discount_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_categories_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_courses`
--
ALTER TABLE `discount_courses`
  ADD CONSTRAINT `discount_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_courses_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_groups`
--
ALTER TABLE `discount_groups`
  ADD CONSTRAINT `discount_groups_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD CONSTRAINT `discount_users_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faqs_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faqs_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD CONSTRAINT `faq_translations_faq_id_foreign` FOREIGN KEY (`faq_id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD CONSTRAINT `feature_webinars_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  ADD CONSTRAINT `feature_webinar_translations_feature_webinar_id_foreign` FOREIGN KEY (`feature_webinar_id`) REFERENCES `feature_webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `file_translations`
--
ALTER TABLE `file_translations`
  ADD CONSTRAINT `file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filters`
--
ALTER TABLE `filters`
  ADD CONSTRAINT `filters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD CONSTRAINT `filter_options_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  ADD CONSTRAINT `filter_option_translations_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_translations`
--
ALTER TABLE `filter_translations`
  ADD CONSTRAINT `filter_translations_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_follower_foreign` FOREIGN KEY (`follower`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forums_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_featured_topics`
--
ALTER TABLE `forum_featured_topics`
  ADD CONSTRAINT `forum_featured_topics_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_recommended_topic_items`
--
ALTER TABLE `forum_recommended_topic_items`
  ADD CONSTRAINT `forum_recommended_topic_items_recommended_topic_id_foreign` FOREIGN KEY (`recommended_topic_id`) REFERENCES `forum_recommended_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_recommended_topic_items_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD CONSTRAINT `forum_topics_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_topics_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_topic_attachments`
--
ALTER TABLE `forum_topic_attachments`
  ADD CONSTRAINT `forum_topic_attachments_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_topic_attachments_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_topic_bookmarks`
--
ALTER TABLE `forum_topic_bookmarks`
  ADD CONSTRAINT `forum_topic_bookmarks_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_topic_bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_topic_likes`
--
ALTER TABLE `forum_topic_likes`
  ADD CONSTRAINT `forum_topic_likes_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_topic_likes_topic_post_id_foreign` FOREIGN KEY (`topic_post_id`) REFERENCES `forum_topic_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_topic_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_topic_posts`
--
ALTER TABLE `forum_topic_posts`
  ADD CONSTRAINT `forum_topic_posts_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `forum_topic_posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `forum_topic_posts_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_topic_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_topic_reports`
--
ALTER TABLE `forum_topic_reports`
  ADD CONSTRAINT `forum_topic_reports_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_topic_reports_topic_post_id_foreign` FOREIGN KEY (`topic_post_id`) REFERENCES `forum_topic_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_topic_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_translations`
--
ALTER TABLE `forum_translations`
  ADD CONSTRAINT `forum_translations_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  ADD CONSTRAINT `groups_registration_packages_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_users`
--
ALTER TABLE `group_users`
  ADD CONSTRAINT `group_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD CONSTRAINT `meeting_times_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navbar_buttons`
--
ALTER TABLE `navbar_buttons`
  ADD CONSTRAINT `navbar_buttons_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navbar_button_translations`
--
ALTER TABLE `navbar_button_translations`
  ADD CONSTRAINT `navbar_button_translations_navbar_button_id_foreign` FOREIGN KEY (`navbar_button_id`) REFERENCES `navbar_buttons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD CONSTRAINT `noticeboards_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `noticeboards_organ_id_foreign` FOREIGN KEY (`organ_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `noticeboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `noticeboards_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD CONSTRAINT `noticeboards_status_noticeboard_id_foreign` FOREIGN KEY (`noticeboard_id`) REFERENCES `noticeboards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD CONSTRAINT `notifications_status_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD CONSTRAINT `offline_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payku_payments`
--
ALTER TABLE `payku_payments`
  ADD CONSTRAINT `payku_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `payku_transactions` (`id`);

--
-- Constraints for table `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD CONSTRAINT `prerequisite_id` FOREIGN KEY (`prerequisite_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prerequisites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_category_translations`
--
ALTER TABLE `product_category_translations`
  ADD CONSTRAINT `product_category_id` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD CONSTRAINT `product_discounts_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_faqs`
--
ALTER TABLE `product_faqs`
  ADD CONSTRAINT `product_faqs_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_faqs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_faq_translations`
--
ALTER TABLE `product_faq_translations`
  ADD CONSTRAINT `product_faq_id` FOREIGN KEY (`product_faq_id`) REFERENCES `product_faqs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_files`
--
ALTER TABLE `product_files`
  ADD CONSTRAINT `file_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `file_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_file_translations`
--
ALTER TABLE `product_file_translations`
  ADD CONSTRAINT `product_file_id` FOREIGN KEY (`product_file_id`) REFERENCES `product_files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_filters`
--
ALTER TABLE `product_filters`
  ADD CONSTRAINT `product_filters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_filter_options`
--
ALTER TABLE `product_filter_options`
  ADD CONSTRAINT `product_filter_options_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `product_filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_filter_option_translations`
--
ALTER TABLE `product_filter_option_translations`
  ADD CONSTRAINT `product_filter_option_id` FOREIGN KEY (`product_filter_option_id`) REFERENCES `product_filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_filter_translations`
--
ALTER TABLE `product_filter_translations`
  ADD CONSTRAINT `product_filter_id` FOREIGN KEY (`product_filter_id`) REFERENCES `product_filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_media`
--
ALTER TABLE `product_media`
  ADD CONSTRAINT `media_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `media_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_selected_filter_options`
--
ALTER TABLE `product_selected_filter_options`
  ADD CONSTRAINT `product_selected_filter_options_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `product_filter_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_selected_filter_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_selected_specifications`
--
ALTER TABLE `product_selected_specifications`
  ADD CONSTRAINT `product_selected_specifications_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_selected_specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_selected_specifications_product_specification_id_foreign` FOREIGN KEY (`product_specification_id`) REFERENCES `product_specifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_selected_specification_multi_values`
--
ALTER TABLE `product_selected_specification_multi_values`
  ADD CONSTRAINT `selected_specification_id` FOREIGN KEY (`selected_specification_id`) REFERENCES `product_selected_specifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `specification_multi_value_id` FOREIGN KEY (`specification_multi_value_id`) REFERENCES `product_specification_multi_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_selected_specification_translations`
--
ALTER TABLE `product_selected_specification_translations`
  ADD CONSTRAINT `product_selected_specification_id_translations` FOREIGN KEY (`product_selected_specification_id`) REFERENCES `product_selected_specifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_specification_categories`
--
ALTER TABLE `product_specification_categories`
  ADD CONSTRAINT `product_specification_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_specification_categories_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `product_specifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_specification_multi_values`
--
ALTER TABLE `product_specification_multi_values`
  ADD CONSTRAINT `product_specification_multi_values_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `product_specifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_specification_multi_value_translations`
--
ALTER TABLE `product_specification_multi_value_translations`
  ADD CONSTRAINT `product_specification_multi_value_id` FOREIGN KEY (`product_specification_multi_value_id`) REFERENCES `product_specification_multi_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_specification_translations`
--
ALTER TABLE `product_specification_translations`
  ADD CONSTRAINT `product_specification_id` FOREIGN KEY (`product_specification_id`) REFERENCES `product_specifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  ADD CONSTRAINT `promotion_translations_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD CONSTRAINT `quizzes_questions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD CONSTRAINT `quizzes_questions_answers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_questions_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  ADD CONSTRAINT `quizzes_questions_answer_id` FOREIGN KEY (`quizzes_questions_answer_id`) REFERENCES `quizzes_questions_answers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD CONSTRAINT `quizzes_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  ADD CONSTRAINT `quiz_question_translations_quiz_question_id_foreign` FOREIGN KEY (`quizzes_question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  ADD CONSTRAINT `quiz_translations_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `regions_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  ADD CONSTRAINT `registration_package` FOREIGN KEY (`registration_package_id`) REFERENCES `registration_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD CONSTRAINT `reserve_meetings_meeting_time_id_foreign` FOREIGN KEY (`meeting_time_id`) REFERENCES `meeting_times` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_meetings_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  ADD CONSTRAINT `rewards_accounting_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD CONSTRAINT `sales_status_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD CONSTRAINT `session_reminds_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_reminds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_translations`
--
ALTER TABLE `session_translations`
  ADD CONSTRAINT `session_translations_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD CONSTRAINT `special_offers_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `special_offers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `special_offers_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_reminds`
--
ALTER TABLE `subscribe_reminds`
  ADD CONSTRAINT `subscribe_reminds_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_reminds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  ADD CONSTRAINT `subscribe_translations_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD CONSTRAINT `subscribe_uses_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supports`
--
ALTER TABLE `supports`
  ADD CONSTRAINT `supports_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD CONSTRAINT `support_conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_conversations_support_id_foreign` FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  ADD CONSTRAINT `support_department_id` FOREIGN KEY (`support_department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD CONSTRAINT `testimonial_translations_testimonial_id_foreign` FOREIGN KEY (`testimonial_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD CONSTRAINT `text_lessons_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD CONSTRAINT `text_lessons_attachments_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_attachments_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  ADD CONSTRAINT `text_lesson_id` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  ADD CONSTRAINT `ticket_translations_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD CONSTRAINT `ticket_users_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD CONSTRAINT `trend_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD CONSTRAINT `users_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_cookie_security`
--
ALTER TABLE `users_cookie_security`
  ADD CONSTRAINT `users_cookie_security_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD CONSTRAINT `users_metas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD CONSTRAINT `users_occupations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_occupations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  ADD CONSTRAINT `users_registration_packages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD CONSTRAINT `users_zoom_api_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verifications`
--
ALTER TABLE `verifications`
  ADD CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinars`
--
ALTER TABLE `webinars`
  ADD CONSTRAINT `webinars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinars_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinars_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_assignments`
--
ALTER TABLE `webinar_assignments`
  ADD CONSTRAINT `webinar_assignments_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_assignments_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_assignments_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_assignment_attachments`
--
ALTER TABLE `webinar_assignment_attachments`
  ADD CONSTRAINT `webinar_assignment_attachments_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `webinar_assignments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_assignment_history`
--
ALTER TABLE `webinar_assignment_history`
  ADD CONSTRAINT `webinar_assignment_history_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `webinar_assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_assignment_history_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_assignment_history_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_assignment_history_messages`
--
ALTER TABLE `webinar_assignment_history_messages`
  ADD CONSTRAINT `webinar_assignment_history_id` FOREIGN KEY (`assignment_history_id`) REFERENCES `webinar_assignment_history` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_assignment_translations`
--
ALTER TABLE `webinar_assignment_translations`
  ADD CONSTRAINT `webinar_assignment_id_translate_foreign` FOREIGN KEY (`webinar_assignment_id`) REFERENCES `webinar_assignments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  ADD CONSTRAINT `webinar_chapters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_chapters_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_chapter_items`
--
ALTER TABLE `webinar_chapter_items`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_chapter_items_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  ADD CONSTRAINT `webinar_chapter_id` FOREIGN KEY (`webinar_chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_extra_descriptions`
--
ALTER TABLE `webinar_extra_descriptions`
  ADD CONSTRAINT `webinar_extra_descriptions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_extra_descriptions_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_extra_description_translations`
--
ALTER TABLE `webinar_extra_description_translations`
  ADD CONSTRAINT `webinar_extra_description_id_foreign` FOREIGN KEY (`webinar_extra_description_id`) REFERENCES `webinar_extra_descriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD CONSTRAINT `webinar_filter_option_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_filter_option_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD CONSTRAINT `webinar_partner_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_partner_teacher_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD CONSTRAINT `webinar_reports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD CONSTRAINT `webinar_reviews_bundle_id_foreign` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_reviews_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_reviews_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  ADD CONSTRAINT `webinar_translations_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
