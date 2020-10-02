-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 08:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tts_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_plans`
--

CREATE TABLE `action_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_event_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_event_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `college_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_date_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_date_to` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_time_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_time_to` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_details` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_coordinator` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_coordinator` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organised_for` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organised_by` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_college` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_college_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_event_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participants` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_year` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_teaching_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_event_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_events_details` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_college` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_college_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_expected_date_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_expected_date_to` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_expected_time_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_expected_time_to` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose_of_event` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_submission` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_publish_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_publish_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `student_last_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_publish_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_publish_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `staff_last_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_items`
--

CREATE TABLE `add_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_activities`
--

CREATE TABLE `assignment_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assignment_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_student_details`
--

CREATE TABLE `assignment_student_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_activity_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_mess_menus`
--

CREATE TABLE `assign_mess_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `automatic_questions`
--

CREATE TABLE `automatic_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blue_print_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preparation_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creating_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `automatic_questions`
--

INSERT INTO `automatic_questions` (`id`, `blue_print_name`, `preparation_type`, `creating_type`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'test', '0', 'book back', NULL, '2020-08-25 00:41:26', '2020-08-25 00:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `automatic_question_chapters`
--

CREATE TABLE `automatic_question_chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `automatic_question_id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `automatic_question_chapters`
--

INSERT INTO `automatic_question_chapters` (`id`, `automatic_question_id`, `syllabus_id`, `created_at`, `updated_at`) VALUES
(43, 4, 1, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(44, 4, 2, '2020-08-25 00:41:27', '2020-08-25 00:46:15'),
(45, 4, 3, '2020-08-25 01:11:30', '2020-08-25 01:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `automatic_question_details`
--

CREATE TABLE `automatic_question_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `automatic_question_id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` bigint(20) UNSIGNED NOT NULL,
  `preparation_type_id` bigint(20) UNSIGNED NOT NULL,
  `segregation_id` bigint(20) UNSIGNED NOT NULL,
  `question_count` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `automatic_question_details`
--

INSERT INTO `automatic_question_details` (`id`, `automatic_question_id`, `syllabus_id`, `preparation_type_id`, `segregation_id`, `question_count`, `created_at`, `updated_at`) VALUES
(134, 4, 1, 1, 1, 2, '2020-08-25 00:41:26', '2020-08-25 00:44:16'),
(135, 4, 1, 2, 1, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(136, 4, 1, 1, 2, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(137, 4, 1, 2, 2, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(138, 4, 1, 1, 3, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(139, 4, 1, 2, 3, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(140, 4, 1, 1, 4, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(141, 4, 1, 2, 4, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(142, 4, 1, 1, 5, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(143, 4, 1, 2, 5, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(144, 4, 1, 1, 6, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(145, 4, 1, 2, 6, 0, '2020-08-25 00:41:26', '2020-08-25 00:41:26'),
(146, 4, 3, 1, 1, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(147, 4, 3, 2, 1, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(148, 4, 3, 1, 2, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(149, 4, 3, 2, 2, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(150, 4, 3, 1, 3, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(151, 4, 3, 2, 3, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(152, 4, 3, 1, 4, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(153, 4, 3, 2, 4, 2, '2020-08-25 00:41:27', '2020-08-25 01:11:30'),
(154, 4, 3, 1, 5, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(155, 4, 3, 2, 5, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(156, 4, 3, 1, 6, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(157, 4, 3, 2, 6, 0, '2020-08-25 00:41:27', '2020-08-25 00:41:27'),
(158, 4, 2, 1, 1, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(159, 4, 2, 2, 1, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(160, 4, 2, 1, 2, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(161, 4, 2, 2, 2, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(162, 4, 2, 1, 3, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(163, 4, 2, 2, 3, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(164, 4, 2, 1, 4, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(165, 4, 2, 2, 4, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(166, 4, 2, 1, 5, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(167, 4, 2, 2, 5, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(168, 4, 2, 1, 6, 0, '2020-08-25 00:46:16', '2020-08-25 00:46:16'),
(169, 4, 2, 2, 6, 1, '2020-08-25 00:46:16', '2020-08-25 01:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_students` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mileage` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petrol_capacity` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fc_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rs_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renewal_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incharge` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`id`, `bus_no`, `model`, `mileage`, `petrol_capacity`, `fc_details`, `rs_details`, `amount`, `purchase_date`, `seat`, `renewal_details`, `warranty_details`, `incharge`, `created_at`, `updated_at`) VALUES
(1, '201', '2012', '20', '240', '7419654', '8645312', '20000', '2004/04/29', '60', '20//02/2021', '25', 'Manikandan', '2020-04-16 04:24:35', '2020-04-16 04:24:35'),
(2, '1', '2018', '123', '132', '123', '123', '123', '2020/04/09', '124', '1234', '123', '213', '2020-04-21 22:12:43', '2020-04-21 22:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `bus_routes`
--

CREATE TABLE `bus_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_routes`
--

INSERT INTO `bus_routes` (`id`, `from`, `to`, `bus_no`, `created_at`, `updated_at`) VALUES
(1, 'Pollachi', 'Udumalpet', '201', '2020-04-16 04:27:48', '2020-04-16 04:27:48'),
(2, 'Pollachi', 'Udumalapet', '201', '2020-04-16 04:28:16', '2020-04-16 04:28:16'),
(3, 'covai', 'Erode', '201', '2020-04-21 22:33:49', '2020-04-21 22:33:49'),
(4, 'covai', 'Erode', '1', '2020-04-21 22:38:02', '2020-04-21 22:38:02'),
(5, 'covai', 'Pollachi', '1', '2020-04-21 22:40:46', '2020-04-21 22:40:46'),
(6, '1', '2', '1', '2020-04-21 22:54:25', '2020-04-21 22:54:25'),
(7, '1', '2', '1', '2020-04-21 22:58:23', '2020-04-21 22:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `bus_route_stoppings`
--

CREATE TABLE `bus_route_stoppings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_route_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_route_stoppings`
--

INSERT INTO `bus_route_stoppings` (`id`, `bus_route_id`, `name`, `time`, `bus_no`, `created_at`, `updated_at`) VALUES
(1, '7', '1', '21:26', '1', '2020-04-21 22:58:23', '2020-04-21 22:58:23'),
(2, '7', '2', '21:26', '1', '2020-04-21 22:58:23', '2020-04-21 22:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_leaves`
--

CREATE TABLE `calendar_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendar_leaves`
--

INSERT INTO `calendar_leaves` (`id`, `date`, `description`, `leave_type`, `created_at`, `updated_at`) VALUES
(1, '2020/05/01', 'Study Leave', 'official_leave', '2020-05-02 02:56:57', '2020-05-02 02:56:57'),
(2, '2020/05/04', 'Study Leave', 'official_leave', '2020-05-02 02:57:37', '2020-05-02 02:57:37'),
(3, '2020/05/04', 'study leave', 'official_leave', '2020-05-02 02:58:09', '2020-05-02 02:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `center_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`id`, `center_name`, `created_at`, `updated_at`) VALUES
(1, 'Pollachi', '2020-04-09 19:05:06', '2020-04-09 19:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_subject_assign_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_from` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_to` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapter_based_questions`
--

CREATE TABLE `chapter_based_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` int(10) UNSIGNED NOT NULL,
  `pattern_prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapter_based_questions`
--

INSERT INTO `chapter_based_questions` (`id`, `syllabus_id`, `pattern_prefix`, `created_at`, `updated_at`) VALUES
(150, 1, 'test', '2020-08-28 03:38:24', '2020-08-28 06:39:25'),
(155, 1, 'test1', '2020-08-28 07:55:56', '2020-08-28 07:55:56'),
(156, 1, 'sadsa', '2020-08-28 08:46:24', '2020-08-28 08:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `chapter_based_question_details`
--

CREATE TABLE `chapter_based_question_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_based_question_id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` bigint(20) UNSIGNED NOT NULL,
  `segregation_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapter_based_question_details`
--

INSERT INTO `chapter_based_question_details` (`id`, `chapter_based_question_id`, `syllabus_id`, `segregation_id`, `question_id`, `created_at`, `updated_at`) VALUES
(743, 150, 1, 1, 12, '2020-08-28 03:38:24', '2020-08-28 03:38:24'),
(744, 150, 1, 1, 17, '2020-08-28 03:38:24', '2020-08-28 03:38:24'),
(745, 150, 1, 3, 22, '2020-08-28 03:38:24', '2020-08-28 03:38:24'),
(746, 150, 1, 3, 23, '2020-08-28 03:38:24', '2020-08-28 03:38:24'),
(747, 150, 1, 4, 18, '2020-08-28 03:38:24', '2020-08-28 03:38:24'),
(748, 150, 1, 4, 19, '2020-08-28 03:38:24', '2020-08-28 03:38:24'),
(749, 150, 1, 2, 25, '2020-08-28 05:01:53', '2020-08-28 05:01:53'),
(787, 150, 1, 1, 16, '2020-08-28 07:14:58', '2020-08-28 07:14:58'),
(796, 155, 1, 3, 23, '2020-08-28 08:28:48', '2020-08-28 08:28:48'),
(813, 155, 1, 1, 12, '2020-08-28 08:40:17', '2020-08-28 08:41:13'),
(815, 155, 1, 1, 16, '2020-08-28 08:40:37', '2020-08-28 08:40:37'),
(816, 155, 1, 3, 21, '2020-08-28 08:40:37', '2020-08-28 08:40:37'),
(817, 156, 1, 1, 12, '2020-08-28 08:46:24', '2020-08-28 08:46:28'),
(818, 156, 1, 1, 11, '2020-08-28 08:46:24', '2020-08-28 08:46:32'),
(819, 156, 1, 1, 16, '2020-08-28 08:46:24', '2020-08-28 08:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `chapter_details`
--

CREATE TABLE `chapter_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_hours` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_from` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_to` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapter_details`
--

INSERT INTO `chapter_details` (`id`, `syllabus_id`, `chapter_number`, `chapter_name`, `chapter_hours`, `chapter_from`, `chapter_to`, `created_at`, `updated_at`) VALUES
(1, '1', '1.1', '1.11', '12', '2020/08/24', '2020/08/24', '2020-08-21 23:16:34', '2020-08-24 02:20:35'),
(2, '1', '1.2', '1.12', '12', '2020/08/24', '2020/08/24', '2020-08-21 23:16:34', '2020-08-24 02:20:35'),
(3, '2', '2.1', '2.11', '2', '2020/08/24', '2020/08/24', '2020-08-21 23:16:34', '2020-08-24 02:20:35'),
(4, '3', '1.1', 'vijay', '2', '2020/08/24', '2020/08/24', '2020-08-22 04:31:58', '2020-08-24 02:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `class_home_works`
--

CREATE TABLE `class_home_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_timetables`
--

CREATE TABLE `class_timetables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `acadamic_year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_timetable_details`
--

CREATE TABLE `class_timetable_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_timetables_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period_1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_7` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_8` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_9` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_10` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_11` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_12` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_13` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_14` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_15` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `official_website` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Official_mail` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number_1` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number_2` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_vacancy` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ceo_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hr` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `eligibility` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `training` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `inteerview_point_view` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complaint`, `created_at`, `updated_at`) VALUES
(1, 'Electrical', '2020-04-09 19:07:59', '2020-04-09 19:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_details`
--

CREATE TABLE `complaint_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wing_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repeatation` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coordinator_details`
--

CREATE TABLE `coordinator_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number_1` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number_2` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acadamic_percentage` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overall_percentage` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reffered_by` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_any_arear` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_expenses`
--

CREATE TABLE `daily_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_whom` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_material_expenses`
--

CREATE TABLE `daily_material_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taken_quantity` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `course`, `department_name`, `semester`, `year`, `created_at`, `updated_at`) VALUES
(1, 'ug', 'Computer Technology', '6', '3', '2020-04-09 19:05:17', '2020-04-09 19:05:17'),
(2, 'pg', 'Computer Science', '4', '2', '2020-04-09 19:05:26', '2020-05-09 03:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Assistant professor', '2020-04-09 19:06:08', '2020-04-09 19:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `driver_bus_allocations`
--

CREATE TABLE `driver_bus_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_bus_allocations`
--

INSERT INTO `driver_bus_allocations` (`id`, `driver_name`, `bus_no`, `created_at`, `updated_at`) VALUES
(1, '1', '201', '2020-04-21 23:03:42', '2020-04-21 23:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `driver_details`
--

CREATE TABLE `driver_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_renewal_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mileage_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_joining` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle_vehicle` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_details`
--

INSERT INTO `driver_details` (`id`, `driver_name`, `driver_id`, `experience`, `license_no`, `license_renewal_date`, `mileage_details`, `date_of_joining`, `service`, `handle_vehicle`, `address`, `phone_number`, `mail_id`, `aadhar_number`, `pan_number`, `license`, `photo`, `created_at`, `updated_at`) VALUES
(1, '123', '1', '123', '123', '2020/04/02', '213', '2020/04/02', '123', '123', '123', '123', '123@df.fvdf', '123', '123', 'app/uploads/driver/license/driver_123.jpg', 'app/uploads/driver/photo/driver_123.jpg', '2020-04-21 22:23:12', '2020-04-21 22:23:12'),
(2, '123', '1', '123', '123', '2020/04/02', '213', '2020/04/02', '123', '123', '123', '123', '123@df.fvdf', '123', '123', 'app/uploads/driver/license/driver_123.jpg', 'app/uploads/driver/photo/driver_123.jpg', '2020-04-21 22:29:35', '2020-04-21 22:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `driver_leaves`
--

CREATE TABLE `driver_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `replacement_driver` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_leaves`
--

INSERT INTO `driver_leaves` (`id`, `driver_name`, `bus_no`, `from`, `to`, `reason`, `replacement_driver`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '201', '2020/04/01', '2020/04/02', '123', '2', '0', '2020-04-21 23:14:41', '2020-04-21 23:14:41'),
(2, '2', '201', '2020/04/01', '2020/04/02', '123', '2', '0', '2020-04-21 23:15:39', '2020-04-21 23:15:39'),
(3, '2', '201', '2020/04/01', '2020/04/02', '123', '2', '0', '2020-04-21 23:15:55', '2020-04-21 23:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `driver_warning_details`
--

CREATE TABLE `driver_warning_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_by` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_warning_details`
--

INSERT INTO `driver_warning_details` (`id`, `driver_name`, `bus_no`, `complaint_type`, `complaint_by`, `reason`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '12', '12', '12', '2020-04-21 23:54:37', '2020-04-21 23:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_joining` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_phone_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `center_id` int(11) DEFAULT NULL,
  `department` int(11) NOT NULL,
  `mobile` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `higher_secondary_group` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_college_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_university` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HS_register_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_department` int(11) DEFAULT NULL,
  `referrer_batch` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_register_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_referrer_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_referrer_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_referrer_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_referrer_source` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_bank_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_bank_account_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_bank_ifsc` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_bank_branch` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrence_amount` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alumni_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alumni_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alumni_batch` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `entry_through` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignee` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_followup_at` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `application_type`, `student_name`, `center_id`, `department`, `mobile`, `alt_mobile`, `higher_secondary_group`, `email`, `address`, `city`, `state`, `student_from`, `previous_school_name`, `previous_college_name`, `previous_university`, `HS_register_no`, `paid_amount`, `receipt_no`, `referred_by`, `referrer_department`, `referrer_batch`, `referrer_register_no`, `other_referrer_name`, `other_referrer_mobile`, `other_referrer_address`, `other_referrer_source`, `referrer_bank_name`, `referrer_bank_account_no`, `referrer_bank_ifsc`, `referrer_bank_branch`, `referrence_amount`, `alumni_name`, `alumni_mobile`, `alumni_batch`, `status`, `entry_through`, `assignee`, `next_followup_at`, `created_at`, `updated_at`) VALUES
(1, 'UG', 'Narmatha', 1, 1, '8098986729', '6385279678', '1', 'narmatharamani95@gmail.com', 'Pollachi', 'Pollachi', 'Tamil Nadu', 'same_institution', 'Shri Nehru Vidyalaya', NULL, NULL, '1276297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'direct_enquiry', 'Vijaya', '2020/04/23', '2020-04-09 19:19:39', '2020-04-09 19:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_audits`
--

CREATE TABLE `enquiry_audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `enquiry_id` int(10) UNSIGNED NOT NULL,
  `next_followup_at` timestamp NULL DEFAULT NULL,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiry_audits`
--

INSERT INTO `enquiry_audits` (`id`, `enquiry_id`, `next_followup_at`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-23 07:00:00', 'Enquiry Created', 'Active', '2020-04-09 19:19:39', '2020-04-09 19:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fresher', '2020-04-09 19:06:29', '2020-04-09 19:06:29'),
(2, 'Symposium', '2020-05-09 17:13:49', '2020-05-09 17:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `examinations`
--

CREATE TABLE `examinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_mark` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass_mark` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examinations`
--

INSERT INTO `examinations` (`id`, `exam_name`, `total_mark`, `pass_mark`, `subject_type`, `created_at`, `updated_at`) VALUES
(1, 'CIA 1', '45', '17', 'theory', '2020-04-09 19:08:23', '2020-05-09 03:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `exam_and_instructions`
--

CREATE TABLE `exam_and_instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_based_question_id` bigint(20) UNSIGNED NOT NULL,
  `school_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_hours` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `standard` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_mark` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_and_instructions`
--

INSERT INTO `exam_and_instructions` (`id`, `chapter_based_question_id`, `school_name`, `exam_date`, `exam_hours`, `standard`, `exam_mark`, `instruction`, `created_at`, `updated_at`) VALUES
(4, 150, 'SSCET12', '2020-07-22', '3:00', '100', '50', 'a:4:{i:1;s:11:\"Must Attend\";i:3;s:20:\"Fill the Bank Answer\";i:4;s:7:\"2 marks\";i:2;s:17:\"Choose the answer\";}', '2020-08-28 03:38:58', '2020-08-28 06:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_assign_departments`
--

CREATE TABLE `fees_assign_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_assign_departments`
--

INSERT INTO `fees_assign_departments` (`id`, `fee_group_id`, `fee_id`, `department_id`, `year`, `semester`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '1', '1', '2020-05-08 15:12:34', '2020-05-08 15:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `fees_collections`
--

CREATE TABLE `fees_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_group_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_group` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fine` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_given_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_groups`
--

CREATE TABLE `fees_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scholarship_for` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fine_per_day` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_groups`
--

INSERT INTO `fees_groups` (`id`, `fee_type`, `scholarship_for`, `due_date`, `fine_per_day`, `created_at`, `updated_at`) VALUES
(1, '1', 'acadamics', '2020/05/21', '5', '2020-05-08 15:11:52', '2020-05-08 15:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `fees_masters`
--

CREATE TABLE `fees_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_masters`
--

INSERT INTO `fees_masters` (`id`, `fee_type`, `created_at`, `updated_at`) VALUES
(1, 'Usual', '2020-05-07 23:04:47', '2020-05-07 23:04:47'),
(2, 'Unusual', '2020-05-07 23:05:01', '2020-05-07 23:05:01'),
(3, 'Admission', '2020-05-07 23:06:47', '2020-05-07 23:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `fees_types`
--

CREATE TABLE `fees_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_code` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scholarship` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_types`
--

INSERT INTO `fees_types` (`id`, `fee_type`, `fee_name`, `fee_code`, `scholarship`, `amount`, `created_at`, `updated_at`) VALUES
(1, '1', 'Tution Fee', '2021', 'yes', '4000', '2020-05-07 23:08:02', '2020-05-07 23:08:02'),
(2, '1', 'LIbrary Fee', '2022', 'yes', '3500', '2020-05-07 23:09:06', '2020-05-07 23:09:06'),
(3, '1', 'Lab Fee', '2023', 'yes', '6000', '2020-05-07 23:09:41', '2020-05-07 23:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `fee_group_type_details`
--

CREATE TABLE `fee_group_type_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_type_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_name_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_group_type_details`
--

INSERT INTO `fee_group_type_details` (`id`, `fee_group_type_id`, `fee_name_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2020-05-08 15:11:52', '2020-05-08 15:11:52'),
(2, '1', '2', '2020-05-08 15:11:52', '2020-05-08 15:11:52'),
(3, '1', '3', '2020-05-08 15:11:52', '2020-05-08 15:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `general_periods`
--

CREATE TABLE `general_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_table_configurations_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `higher_secondary_groups`
--

CREATE TABLE `higher_secondary_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `higher_secondary_groups`
--

INSERT INTO `higher_secondary_groups` (`id`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'Computer Science', '2020-04-09 19:00:33', '2020-04-09 19:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `higher_secondary_group_and_subjects`
--

CREATE TABLE `higher_secondary_group_and_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `subject_ids` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `higher_secondary_group_and_subjects`
--

INSERT INTO `higher_secondary_group_and_subjects` (`id`, `group_id`, `subject_ids`, `created_at`, `updated_at`) VALUES
(1, 1, '1,2,4,5,6,7', '2020-04-09 19:03:59', '2020-04-09 19:03:59'),
(2, 1, '1,2,4,5,6,7', '2020-04-09 19:04:47', '2020-04-09 19:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `higher_secondary_subjects`
--

CREATE TABLE `higher_secondary_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `higher_secondary_subjects`
--

INSERT INTO `higher_secondary_subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES
(1, 'Maths', '2020-04-09 19:01:27', '2020-04-09 19:01:27'),
(2, 'Physics', '2020-04-09 19:01:46', '2020-04-09 19:01:46'),
(4, 'Chemistry', '2020-04-09 19:02:09', '2020-04-09 19:02:09'),
(5, 'Computer Science', '2020-04-09 19:02:29', '2020-04-09 19:02:29'),
(6, 'Tamil', '2020-04-09 19:03:23', '2020-04-09 19:03:23'),
(7, 'English', '2020-04-09 19:03:31', '2020-04-09 19:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `hod_project_reviews`
--

CREATE TABLE `hod_project_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hod_project_review_details`
--

CREATE TABLE `hod_project_review_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hod_project_review_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hod_project_review_students`
--

CREATE TABLE `hod_project_review_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hod_project_review_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_allocations`
--

CREATE TABLE `hostel_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hostel_details_masters_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wings` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_availability` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_allocations`
--

INSERT INTO `hostel_allocations` (`id`, `hostel_details_masters_id`, `reg_no`, `student_id`, `department_id`, `year`, `wings`, `floor`, `room_details`, `bed_availability`, `created_at`, `updated_at`) VALUES
(1, '3', '897645', '1', '1', '1', '1', '2', '3', '1', '2020-04-21 19:32:59', '2020-04-21 19:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_attendence_dates`
--

CREATE TABLE `hostel_attendence_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_attendence_dates`
--

INSERT INTO `hostel_attendence_dates` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '2020/04/21', '2020-04-21 21:37:11', '2020-04-21 21:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_details_masters`
--

CREATE TABLE `hostel_details_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wing_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostel_for` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_fan` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_light` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_bed` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_details_masters`
--

INSERT INTO `hostel_details_masters` (`id`, `wing_id`, `floor`, `room`, `hostel_for`, `room_type`, `no_of_fan`, `no_of_light`, `no_of_bed`, `other_details`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '101', 'girls', 'normal', '2', '3', '1', 'Table', '2020-04-09 19:09:30', '2020-04-09 19:09:30'),
(2, '1', '1', '102', 'boy', 'normal', '2', '3', '1', 'none', '2020-04-15 04:15:33', '2020-04-15 04:15:33'),
(3, '1', '2', '202', 'boy', 'normal', '2', '3', '1', 'none', '2020-04-15 04:15:33', '2020-04-15 04:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_out_passes`
--

CREATE TABLE `hostel_out_passes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wing_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_student_attendence_details`
--

CREATE TABLE `hostel_student_attendence_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hostel_attendence_dates_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendence` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wings` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_student_attendence_details`
--

INSERT INTO `hostel_student_attendence_details` (`id`, `hostel_attendence_dates_id`, `student_id`, `attendence`, `department_id`, `wings`, `floor`, `room_details`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'present', '1', '1', '2', '3', '2020-04-21 21:37:11', '2020-04-21 21:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `interview_questions`
--

CREATE TABLE `interview_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `questions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_option` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_student_details`
--

CREATE TABLE `interview_student_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obtained_mark` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_mark` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_student_qus_ans`
--

CREATE TABLE `interview_student_qus_ans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interview_student_details_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mess_menus`
--

CREATE TABLE `mess_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mess_student_details`
--

CREATE TABLE `mess_student_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_23_063716_create_higher_secondary_groups_table', 1),
(5, '2020_01_24_071926_create_higher_secondary_subjects_table', 1),
(6, '2020_01_24_104848_create_higher_secondary_group_and_subjects_table', 1),
(7, '2020_01_28_120506_create_centers_table', 1),
(8, '2020_01_28_135052_create_departments_table', 1),
(9, '2020_01_28_135053_create_sections_table', 1),
(10, '2020_01_29_094158_create_enquiries_table', 1),
(11, '2020_01_31_070907_create_enquiry_audits_table', 1),
(12, '2020_01_31_120353_create_foreign_key_for_audits', 1),
(13, '2020_02_01_124148_create_students_table', 1),
(14, '2020_02_03_105625_create_student_parents_table', 1),
(15, '2020_02_03_105951_create_student_documents_table', 1),
(16, '2020_02_03_110742_create_student_previous_education_table', 1),
(17, '2020_02_13_113037_create_staff_table', 1),
(18, '2020_02_13_124633_create_staff_award_details_table', 1),
(19, '2020_02_13_125219_create_staff_phd_award_details_table', 1),
(20, '2020_02_13_125536_create_staff_event_details_table', 1),
(21, '2020_02_13_131540_create_staff_special_award_details_table', 1),
(22, '2020_02_13_131800_create_staff_participation_details_table', 1),
(23, '2020_02_13_133312_create_staff_certificate_details_table', 1),
(24, '2020_02_14_050850_create_staff_work_experience_details_table', 1),
(25, '2020_02_17_041223_create_staff_roll_details_table', 1),
(26, '2020_02_20_053817_create_designations_table', 1),
(27, '2020_02_20_062026_create_staff_roles_table', 1),
(28, '2020_02_25_104227_create_subjects_table', 1),
(29, '2020_02_26_092718_create_staff_subject_allocations_table', 1),
(30, '2020_02_28_115255_create_staff_subject_requests_table', 1),
(132, '2020_03_02_110417_create_chapter_details_table', 17),
(131, '2020_02_29_064040_create_syllabi_table', 17),
(33, '2020_03_02_144024_create_permission_tables', 1),
(34, '2020_03_03_093222_create_session_masters_table', 1),
(35, '2020_03_06_093525_create_events_table', 1),
(36, '2020_03_06_104706_create_other_colleges_table', 1),
(37, '2020_03_09_055119_create_action_plans_table', 1),
(38, '2020_03_16_054656_create_examinations_table', 1),
(39, '2020_03_16_083108_create_student_sections_table', 1),
(40, '2020_03_16_083109_create_student_section_details_table', 1),
(41, '2020_03_16_083110_create_student_marks_table', 1),
(42, '2020_03_19_073015_create_student_mark_details_table', 1),
(43, '2020_03_27_105421_create_student_leaves_table', 1),
(44, '2020_03_27_132942_create_class_home_works_table', 1),
(45, '2020_03_27_133019_create_student_home_works_table', 1),
(46, '2020_03_28_111911_create_assignment_activities_table', 1),
(47, '2020_03_28_155522_create_assignment_student_details_table', 1),
(48, '2020_04_01_060746_create_staff_leaves_table', 1),
(49, '2020_04_01_092448_create_student_leave_masters_table', 1),
(50, '2020_04_01_114644_create_staff_leave_masters_table', 1),
(51, '2020_04_01_160040_create_staff_leave_subject_allocations_table', 1),
(52, '2020_04_02_073531_create_complaints_table', 1),
(53, '2020_04_02_084420_create_wings_table', 1),
(54, '2020_04_02_092720_create_hostel_details_masters_table', 1),
(55, '2020_04_02_161931_create_hostel_allocations_table', 1),
(56, '2020_04_03_130522_create_hostel_out_passes_table', 1),
(57, '2020_04_04_142411_create_hostel_attendence_dates_table', 1),
(58, '2020_04_04_142523_create_hostel_student_attendence_details_table', 1),
(59, '2020_04_06_061151_create_complaint_details_table', 1),
(60, '2020_04_06_134613_create_bus_details_table', 1),
(61, '2020_04_06_161503_create_driver_details_table', 1),
(62, '2020_04_07_062145_create_bus_routes_table', 1),
(63, '2020_04_07_063145_create_bus_route_stoppings_table', 1),
(64, '2020_04_08_110705_create_driver_bus_allocations_table', 2),
(65, '2020_04_08_145617_create_driver_leaves_table', 2),
(66, '2020_04_09_071405_create_petrol_allowances_table', 3),
(67, '2020_04_09_144703_create_mileage_details_table', 3),
(68, '2020_04_10_070743_create_driver_warning_details_table', 3),
(69, '2020_04_10_095859_create_spare_details_table', 3),
(70, '2020_04_13_063025_create_transport_forms_table', 3),
(71, '2020_04_14_100641_create_placement_details_table', 4),
(72, '2020_04_14_105952_create_placement_agenda_details_table', 4),
(73, '2020_04_14_124654_create_placement_departments_table', 4),
(74, '2020_04_14_124750_create_placement_department_years_table', 4),
(75, '2020_04_14_172532_create_company_details_table', 4),
(76, '2020_04_15_080820_create_placement_registrations_table', 4),
(77, '2020_04_15_113852_create_placed_student_details_table', 4),
(78, '2020_04_15_154415_create_placement_student_details_table', 4),
(79, '2020_04_16_103716_create_upcoming_interviews_table', 4),
(80, '2020_04_16_103717_create_upcoming_interview_departments_table', 4),
(81, '2020_04_16_114438_create_upcoming_interview_types_table', 4),
(82, '2020_04_16_155803_create_pool_interviews_table', 4),
(83, '2020_04_18_082040_create_coordinator_details_table', 4),
(84, '2020_04_18_112249_create_training_details_table', 4),
(85, '2020_04_18_171542_create_interview_questions_table', 4),
(86, '2020_04_18_194646_create_interview_student_details_table', 4),
(87, '2020_04_18_194713_create_interview_student_qus_ans_table', 4),
(88, '2020_04_22_055654_create_mess_menus_table', 5),
(89, '2020_04_22_131017_create_assign_mess_menus_table', 5),
(90, '2020_04_22_153943_create_daily_expenses_table', 5),
(91, '2020_04_22_162709_create_employee_details_table', 5),
(92, '2020_04_23_055428_create_add_items_table', 5),
(93, '2020_04_23_083014_create_raw_material_stack_details_table', 5),
(94, '2020_04_23_091709_create_daily_material_expenses_table', 5),
(95, '2020_04_23_130252_create_mess_student_details_table', 5),
(119, '2020_02_01_124149_create_student_year_semesters_table', 12),
(97, '2020_04_24_085825_create_fees_masters_table', 6),
(98, '2020_04_24_095720_create_fees_types_table', 6),
(99, '2020_04_24_121721_create_fees_groups_table', 6),
(100, '2020_04_25_060908_create_fee_group_type_details_table', 6),
(101, '2020_04_25_090503_create_fees_assign_departments_table', 6),
(102, '2020_04_25_114706_create_scholarship_acadamics_table', 6),
(106, '2020_04_28_062547_create_student_scholar_ships_table', 8),
(104, '2020_04_28_155314_create_year_semesters_table', 7),
(105, '2020_04_29_092707_create_calendar_leaves_table', 7),
(107, '2020_04_30_160145_create_student_assign_fees_table', 9),
(108, '2020_04_30_160950_create_student_assign_fees_details_table', 9),
(109, '2020_05_05_145849_create_fees_collections_table', 9),
(110, '2020_05_08_063623_create_project_details_table', 10),
(111, '2020_05_09_123238_create_hod_project_reviews_table', 10),
(112, '2020_05_09_123539_create_hod_project_review_students_table', 10),
(113, '2020_05_11_064309_create_project_review_marks_table', 10),
(114, '2020_05_11_135903_create_hod_project_review_details_table', 10),
(115, '2020_05_13_101913_create_time_table_configurations_table', 11),
(116, '2020_05_14_064148_create_general_periods_table', 11),
(117, '2020_05_18_062301_create_class_timetables_table', 11),
(118, '2020_05_18_074142_create_class_timetable_details_table', 11),
(120, '2020_08_10_201857_create_question_types_table', 13),
(121, '2020_08_11_134209_create_preparation_types_table', 13),
(130, '2020_08_11_160840_create_question_models_table', 16),
(123, '2020_08_11_191408_create_years_table', 13),
(124, '2020_08_12_102012_create_chapters_table', 13),
(125, '2020_08_14_155412_create_batches_table', 13),
(126, '2020_08_14_192613_create_online_test_schedules_table', 13),
(127, '2020_08_11_160841_create_segregations_table', 14),
(133, '2020_08_19_140923_create_questions_table', 17),
(134, '2020_08_19_140942_create_question_years_table', 18),
(135, '2020_08_24_102257_create_automatic_questions_table', 19),
(136, '2020_08_24_102338_create_automatic_question_chapters_table', 19),
(137, '2020_08_24_102354_create_automatic_question_details_table', 20),
(138, '2020_08_26_124524_create_chapter_based_questions_table', 21),
(140, '2020_08_26_124808_create_chapter_based_question_details_table', 22),
(141, '2020_08_27_155331_create_exam_and_instructions_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `mileage_details`
--

CREATE TABLE `mileage_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_place` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_km` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_place` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_km` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mileage_details`
--

INSERT INTO `mileage_details` (`id`, `driver_name`, `bus_no`, `date`, `starting_place`, `starting_km`, `destination_place`, `destination_km`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '2020/04/02', '12', '12', '12', '12', '2020-04-21 23:54:14', '2020-04-21 23:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `online_test_schedules`
--

CREATE TABLE `online_test_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `topic` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_colleges`
--

CREATE TABLE `other_colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `college_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_colleges`
--

INSERT INTO `other_colleges` (`id`, `college_name`, `mail_id`, `college_type`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Krishna colloge', 'Krishna@gmail.com', 'Arts and science', 'Coimbatore', '2020-04-09 19:06:44', '2020-04-09 19:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petrol_allowances`
--

CREATE TABLE `petrol_allowances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petrol_capacity` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_litre_amount` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_amount` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placed_student_details`
--

CREATE TABLE `placed_student_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annual_income` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_per_month` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_period` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bond_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_letter` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_phone_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sibilings_in_our_college` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hod` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_agenda_details`
--

CREATE TABLE `placement_agenda_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `placement_details_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_departments`
--

CREATE TABLE `placement_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `placement_details_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_department_years`
--

CREATE TABLE `placement_department_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `placement_details_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_details`
--

CREATE TABLE `placement_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interview` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eligibility` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `acadamin_percentage` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_registrations`
--

CREATE TABLE `placement_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll_number` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `college` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_college` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_arears` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_phone_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_any_arear` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_pan_card` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_passport` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_aadhar_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_student_details`
--

CREATE TABLE `placement_student_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_phone_number` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone_number` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relocate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_salary` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bond` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `if_any_arear` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_arears` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acadamic_percentage` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overal_percentage` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance_percentage` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_number` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `if_pan_card` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_passport` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `if_license` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenth_percentage` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twelve_percentage` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biology` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maths` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physics` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chemistry` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `computer_science` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pool_interviews`
--

CREATE TABLE `pool_interviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `college_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placement_college` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quadinator_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_address` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interview_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_link` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preparation_types`
--

CREATE TABLE `preparation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preparation_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preparation_types`
--

INSERT INTO `preparation_types` (`id`, `preparation_type`, `created_at`, `updated_at`) VALUES
(1, 'Creative', '2020-08-19 23:41:54', '2020-08-19 23:41:54'),
(2, 'Book Back', '2020-08-19 23:42:06', '2020-08-19 23:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intern_detail` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abstrct` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_end` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_end` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_details` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_review_marks`
--

CREATE TABLE `project_review_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` bigint(20) UNSIGNED NOT NULL,
  `preparation_type_id` bigint(20) UNSIGNED NOT NULL,
  `question_type_id` bigint(20) UNSIGNED NOT NULL,
  `segregation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_option` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `syllabus_id`, `preparation_type_id`, `question_type_id`, `segregation_id`, `question_name`, `answer_option`, `answer`, `created_at`, `updated_at`) VALUES
(11, 1, 1, 1, 1, '<p>hai</p>', NULL, 'a:1:{i:0;s:4:\"true\";}', '2020-08-24 23:20:41', '2020-08-24 23:20:41'),
(12, 1, 1, 1, 1, '<p>vijay</p>', NULL, '', '2020-08-24 23:21:25', '2020-08-24 23:21:25'),
(13, 3, 2, 2, 4, '<p>hai&nbsp;&nbsp;&nbsp;&nbsp;</p>', NULL, 'a:1:{i:0;s:10:\"<p>yes</p>\";}', '2020-08-24 23:22:32', '2020-08-24 23:22:32'),
(14, 3, 2, 2, 4, '<p>this is vijay?&nbsp;&nbsp;&nbsp;&nbsp;</p>', NULL, 'a:1:{i:0;s:10:\"<p>Yes</p>\";}', '2020-08-24 23:22:32', '2020-08-24 23:22:32'),
(15, 2, 2, 11, 6, '<p>hai this is vijay&nbsp;&nbsp;&nbsp;&nbsp;</p>', NULL, 'a:1:{i:0;s:19:\"<p>yes am vijay</p>\";}', '2020-08-25 00:44:49', '2020-08-25 00:44:49'),
(16, 1, 1, 1, 1, '<p>vijay is bad?</p>', NULL, 'a:1:{i:0;s:5:\"false\";}', '2020-08-25 06:52:19', '2020-08-25 06:52:19'),
(17, 1, 1, 1, 1, '<p>vijay s native t.gode</p>', NULL, 'a:1:{i:0;s:4:\"true\";}', '2020-08-25 06:52:19', '2020-08-25 06:52:19'),
(18, 1, 2, 2, 4, '<p>sdfadsfasdf</p>', NULL, 'a:1:{i:0;s:22:\"<p>asdfasdfasdfasd</p>\";}', '2020-08-25 06:52:49', '2020-08-25 06:52:49'),
(19, 1, 2, 2, 4, '<p>asdfasdfasdfasdf</p>', NULL, 'a:1:{i:0;s:23:\"<p>ASDadsASDSADFSDF</p>\";}', '2020-08-25 06:52:49', '2020-08-25 06:52:49'),
(20, 1, 2, 2, 4, '<p>GFHFGHDFGHD</p>', NULL, 'a:1:{i:0;s:21:\"<p>GHDFHDFGDHFGHD</p>\";}', '2020-08-25 06:52:49', '2020-08-25 06:52:49'),
(21, 1, 1, 1, 3, '<p>SFSDFDSF</p>', NULL, 'a:1:{i:0;s:12:\"<p>DFSDF</p>\";}', '2020-08-25 06:53:21', '2020-08-25 06:53:21'),
(22, 1, 1, 1, 3, '<p>DSFGDFG</p>', NULL, 'a:1:{i:0;s:21:\"<p>DFGRRTYUTYIUYI</p>\";}', '2020-08-25 06:53:21', '2020-08-25 06:53:21'),
(23, 1, 1, 1, 3, '<p>YUIYUITYU</p>', NULL, 'a:1:{i:0;s:18:\"<p>RTYERTERTER</p>\";}', '2020-08-25 06:53:21', '2020-08-25 06:53:21'),
(25, 1, 1, 1, 2, 'bala is waste fellow?', 'a:2:{i:0;s:10:\"<p>yes</p>\";i:1;s:9:\"<p>No</p>\";}', '', '2020-08-28 05:01:32', '2020-08-28 05:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `question_models`
--

CREATE TABLE `question_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_model` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_models`
--

INSERT INTO `question_models` (`id`, `question_model`, `created_at`, `updated_at`) VALUES
(1, 'Blue print', '2020-08-20 03:19:02', '2020-08-20 03:19:02'),
(2, 'Manual', '2020-08-20 03:19:07', '2020-08-20 03:19:07'),
(3, 'Automatic', '2020-08-20 03:19:16', '2020-08-20 03:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `question_types`
--

CREATE TABLE `question_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_mark` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_types`
--

INSERT INTO `question_types` (`id`, `question_type`, `question_mark`, `created_at`, `updated_at`) VALUES
(1, '1 Marks', 1, '2020-08-19 23:42:51', '2020-08-19 23:42:51'),
(2, '2 Marks', 2, '2020-08-19 23:43:00', '2020-08-19 23:43:00'),
(3, '3 Marks', 3, '2020-08-24 02:11:21', '2020-08-24 02:11:21'),
(4, '4 Marks', 4, '2020-08-24 02:11:29', '2020-08-24 02:11:29'),
(5, '5 Marks', 5, '2020-08-24 02:11:35', '2020-08-24 02:11:35'),
(6, '6 Marks', 6, '2020-08-24 02:11:42', '2020-08-24 02:11:42'),
(7, '8 Marks', 8, '2020-08-24 02:11:48', '2020-08-24 02:11:48'),
(8, '10 Marks', 10, '2020-08-24 02:11:54', '2020-08-24 02:11:54'),
(9, '12 Marks', 12, '2020-08-24 02:12:01', '2020-08-24 02:12:01'),
(10, '13 Marks', 13, '2020-08-24 02:12:10', '2020-08-24 02:12:10'),
(11, '16 Marks', 16, '2020-08-24 02:12:16', '2020-08-24 02:12:16'),
(12, '20 Marks', 10, '2020-08-24 02:12:23', '2020-08-24 02:12:23'),
(13, '15 Mark', 15, '2020-08-24 02:19:12', '2020-08-24 02:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `question_years`
--

CREATE TABLE `question_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `syllabus_id` bigint(20) UNSIGNED NOT NULL,
  `preparation_type_id` bigint(20) UNSIGNED NOT NULL,
  `question_type_id` bigint(20) UNSIGNED NOT NULL,
  `segregation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_years`
--

INSERT INTO `question_years` (`id`, `question_id`, `syllabus_id`, `preparation_type_id`, `question_type_id`, `segregation_id`, `year`, `created_at`, `updated_at`) VALUES
(11, 11, 1, 1, 1, 1, '0', '2020-08-24 23:20:41', '2020-08-24 23:20:41'),
(12, 13, 3, 2, 2, 4, '0', '2020-08-24 23:22:32', '2020-08-24 23:22:32'),
(13, 14, 3, 2, 2, 4, '0', '2020-08-24 23:22:32', '2020-08-24 23:22:32'),
(14, 15, 2, 2, 11, 6, '0', '2020-08-25 00:44:49', '2020-08-25 00:44:49'),
(15, 16, 1, 1, 1, 1, '2', '2020-08-25 06:52:19', '2020-08-25 06:52:19'),
(16, 17, 1, 1, 1, 1, '0', '2020-08-25 06:52:19', '2020-08-25 06:52:19'),
(17, 18, 1, 2, 2, 4, '0', '2020-08-25 06:52:49', '2020-08-25 06:52:49'),
(18, 19, 1, 2, 2, 4, '0', '2020-08-25 06:52:49', '2020-08-25 06:52:49'),
(19, 20, 1, 2, 2, 4, '0', '2020-08-25 06:52:49', '2020-08-25 06:52:49'),
(20, 21, 1, 1, 1, 3, '0', '2020-08-25 06:53:21', '2020-08-25 06:53:21'),
(21, 22, 1, 1, 1, 3, '0', '2020-08-25 06:53:21', '2020-08-25 06:53:21'),
(22, 23, 1, 1, 1, 3, '0', '2020-08-25 06:53:21', '2020-08-25 06:53:21'),
(24, 25, 1, 1, 1, 2, '1', '2020-08-28 05:01:32', '2020-08-28 05:01:32'),
(25, 25, 1, 1, 1, 2, '2', '2020-08-28 05:01:32', '2020-08-28 05:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_stack_details`
--

CREATE TABLE `raw_material_stack_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_incess` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_acadamics`
--

CREATE TABLE `scholarship_acadamics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acadamic_scholarship_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage_to` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acadamic_fees_concertion` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_percentage` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zonal_scholarship_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zonal_particulars` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zonal_fees_concertion` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `course_id`, `department_id`, `section`, `created_at`, `updated_at`) VALUES
(1, 'ug', '1', 'A', '2020-04-09 19:05:52', '2020-04-09 19:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `segregations`
--

CREATE TABLE `segregations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_type_id` bigint(20) UNSIGNED NOT NULL,
  `segregation` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `segregations`
--

INSERT INTO `segregations` (`id`, `question_type_id`, `segregation`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'True r False', '1', '2020-08-20 01:19:33', '2020-08-20 03:11:16'),
(2, 1, 'Choose the best', '0', '2020-08-20 03:23:36', '2020-08-20 03:23:36'),
(3, 1, 'Fill in the blanks', '0', '2020-08-20 03:56:36', '2020-08-20 03:56:36'),
(4, 2, '2 Mark', '0', '2020-08-24 02:21:57', '2020-08-24 02:21:57'),
(5, 8, '10 Mark', '0', '2020-08-24 02:22:13', '2020-08-24 02:22:13'),
(6, 11, '16 Mark', '0', '2020-08-24 02:22:23', '2020-08-24 02:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `session_masters`
--

CREATE TABLE `session_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_masters`
--

INSERT INTO `session_masters` (`id`, `course`, `department`, `name`, `from_time`, `to_time`, `created_at`, `updated_at`) VALUES
(1, 'ug', 'ug', 'maths', '01:11', '02:11', '2020-05-02 05:11:20', '2020-05-02 05:11:20'),
(2, 'ug', 'ug', 'CS', '02:15', '03:15', '2020-05-02 05:11:20', '2020-05-02 05:11:20'),
(3, 'ug', 'ug', 'CS', '08:00', '08:40', '2020-05-09 03:20:39', '2020-05-09 03:20:39'),
(4, 'ug', 'ug', 'maths', '08:45', '09:30', '2020-05-09 03:20:39', '2020-05-09 03:20:39'),
(5, 'ug', 'ug', 'DIP', '09:35', '10:10', '2020-05-09 03:20:39', '2020-05-09 03:20:39'),
(6, 'ug', 'ug', 'CS', '08:09', '09:15', '2020-05-09 17:10:23', '2020-05-09 17:10:23'),
(7, 'ug', 'ug', '1', '15:40', '15:40', '2020-05-09 17:11:07', '2020-05-09 17:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `spare_details`
--

CREATE TABLE `spare_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waranty` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_for_change` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_changed_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spare_details`
--

INSERT INTO `spare_details` (`id`, `product_name`, `purpose`, `model`, `purchase_date`, `waranty`, `issue`, `reason_for_change`, `last_changed_details`, `created_at`, `updated_at`) VALUES
(1, 'mirror', '12', '12', '2020/04/17', '12', '12', '12', '12', '2020-04-21 23:55:08', '2020-04-21 23:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pancard_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_photo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_stop` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_mobile` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_mobile` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `husband_wife_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ug_qualification` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_qualification` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification_approval_ug` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification_approval_pg` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_edcucation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_year_passing` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slet_year_passing` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phd_year_passing` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_college_experience_from` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_college_experience_to` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_college_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_experience` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_knowledge` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_designation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workshop_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workshop_department` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workshop_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `casual_leave` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_leave` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sick_leave` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_hours` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snmv_account_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snmv_bank_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snmv_account_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snmv_bank_branch` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snmv_ifsc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_account_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_bank_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_account_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_bank_branch` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_ifsc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epf_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_shift` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_facility` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_stage` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_reduction_amount` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostel_facility` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostel_reduction_amount` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `department_id`, `designation`, `dob`, `gender`, `mobile`, `email`, `alt_mobile`, `alt_email`, `pancard_no`, `aadhar_no`, `present_address`, `permanent_address`, `staff_photo`, `bus_stop`, `bus_no`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `marital_status`, `husband_wife_name`, `mobile_number`, `ug_qualification`, `pg_qualification`, `qualification_approval_ug`, `qualification_approval_pg`, `completed_edcucation`, `net_year_passing`, `slet_year_passing`, `phd_year_passing`, `our_college_experience_from`, `our_college_experience_to`, `our_college_name`, `total_experience`, `subject_knowledge`, `last_designation`, `workshop_title`, `workshop_department`, `workshop_date`, `casual_leave`, `medical_leave`, `sick_leave`, `permission_hours`, `snmv_account_type`, `snmv_bank_name`, `snmv_account_no`, `snmv_bank_branch`, `snmv_ifsc`, `personal_account_type`, `personal_bank_name`, `personal_account_no`, `personal_bank_branch`, `personal_ifsc`, `epf_no`, `basic_salary`, `contract_type`, `work_shift`, `bus_facility`, `bus_stage`, `bus_reduction_amount`, `hostel_facility`, `room_details`, `hostel_reduction_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vijay', '1', '1', '2020/04/17', 'male', '1231231231', 'vijay@gmail.com', NULL, NULL, '1231231231', '123123123123', 'covai', 'Covai', 'app/uploads/staffs/staff/staff_vijay.jpg', NULL, NULL, 'sekar', '1231231231', 'rajamani', '1231231231', 'un_married', NULL, NULL, '1', '2', '123123', '123123', 'no', '2018', '2016', '2010', '2020/04/13', '2020/04/22', NULL, '2', 'maths', 'HOD', 'SYMPOSIUM', 'ECE', '2020/04/13', '10', '10', '10', '10', '123', '123', '123', '123', '123', '123', '2131', '123', '123', '123', '123', '123', 'permanent', 'part_time', 'yes', '21', '123', 'no', 'boys', '123', '1', '2020-04-20 13:58:33', '2020-04-20 13:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `staff_award_details`
--

CREATE TABLE `staff_award_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title_of_innovation` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_award` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `awarding_agency` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_award_details`
--

INSERT INTO `staff_award_details` (`id`, `staff_id`, `title_of_innovation`, `name_of_award`, `awarding_agency`, `date`, `category`, `created_at`, `updated_at`) VALUES
(1, 1, 'Youtube', '1', '1', '2020/04/20', 'maths', '2020-04-20 13:58:40', '2020-04-20 13:58:40'),
(2, 1, 'GOOGLE', '12', '21', '2020/04/20', 'EDCE', '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff_certificate_details`
--

CREATE TABLE `staff_certificate_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `file_sslc_tc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sslc_roll_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sslc_sno` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sslc_certificate_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_hsc_tc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_sno` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_bcom_consolidated_mark` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_consolidated_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_consolidated_folio_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_consolidated_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_bcom_provisional_certificate` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_provisional_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_provisional_folio_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_provisional_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_bcom_degree_certificate` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_degree_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_degree_cno` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_degree_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcom_degree_issued_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mcom_consolidated_mark` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_consolidated_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_consolidated_folio_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_consolidated_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mcom_provisional_certificate` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_provisional_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_provisional_folio_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_provisional_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mcom_degree_certificate` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_degree_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_degree_cno` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_degree_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcom_degree_issued_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mphil_consolidated_mark_part1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_consolidated_reg_no_part1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_consolidated_folio_no_part1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_consolidated_date_part1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mphil_consolidated_mark_part2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_consolidated_reg_no_part2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_consolidated_folio_no_part2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_consolidated_date_part2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mphil_provisional_certificate` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_provisional_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_provisional_folio_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_provisional_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mphil_degree_certificate` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_degree_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_degree_cno` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_degree_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mphil_degree_issued_on` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mba_provisional_certificate` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mba_provisional_reg_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mba_provisional_folio_no` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mba_provisional_date` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_certificate_details`
--

INSERT INTO `staff_certificate_details` (`id`, `staff_id`, `file_sslc_tc`, `sslc_roll_no`, `sslc_sno`, `sslc_certificate_date`, `file_hsc_tc`, `hsc_reg_no`, `hsc_sno`, `hsc_date`, `file_bcom_consolidated_mark`, `bcom_consolidated_reg_no`, `bcom_consolidated_folio_no`, `bcom_consolidated_date`, `file_bcom_provisional_certificate`, `bcom_provisional_reg_no`, `bcom_provisional_folio_no`, `bcom_provisional_date`, `file_bcom_degree_certificate`, `bcom_degree_reg_no`, `bcom_degree_cno`, `bcom_degree_date`, `bcom_degree_issued_on`, `file_mcom_consolidated_mark`, `mcom_consolidated_reg_no`, `mcom_consolidated_folio_no`, `mcom_consolidated_date`, `file_mcom_provisional_certificate`, `mcom_provisional_reg_no`, `mcom_provisional_folio_no`, `mcom_provisional_date`, `file_mcom_degree_certificate`, `mcom_degree_reg_no`, `mcom_degree_cno`, `mcom_degree_date`, `mcom_degree_issued_on`, `file_mphil_consolidated_mark_part1`, `mphil_consolidated_reg_no_part1`, `mphil_consolidated_folio_no_part1`, `mphil_consolidated_date_part1`, `file_mphil_consolidated_mark_part2`, `mphil_consolidated_reg_no_part2`, `mphil_consolidated_folio_no_part2`, `mphil_consolidated_date_part2`, `file_mphil_provisional_certificate`, `mphil_provisional_reg_no`, `mphil_provisional_folio_no`, `mphil_provisional_date`, `file_mphil_degree_certificate`, `mphil_degree_reg_no`, `mphil_degree_cno`, `mphil_degree_date`, `mphil_degree_issued_on`, `file_mba_provisional_certificate`, `mba_provisional_reg_no`, `mba_provisional_folio_no`, `mba_provisional_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'app/uploads/staffs/staff_certificate/sslc_tc_1_vijay.jpg', '123', '213', '2020/04/20', 'app/uploads/staffs/staff_certificate/hsc_tc_1_vijay.jpeg', '123', '123', '2020/04/20', 'app/uploads/staffs/staff_certificate/bcom_consolidated_mark_1_vijay.jpg', '123', '123', '2020/04/20', 'app/uploads/staffs/staff_certificate/bcom_provisional_certificate_1_vijay.png', '123', '123', '2020/04/20', 'app/uploads/staffs/staff_certificate/bcom_degree_certificate_1_vijay.jpg', '123', '23', '2020/04/20', '2020/04/20', 'app/uploads/staffs/staff_certificate/mcom_consolidated_mark_1_vijay.jpg', '123', '23', '2020/04/15', 'app/uploads/staffs/staff_certificate/mcom_provisional_certificate_1_vijay.jpg', '123', '23', '2020/04/22', 'app/uploads/staffs/staff_certificate/mcom_degree_certificate_1_vijay.jpg', '123', '123', '2020/04/18', '2020/04/16', 'app/uploads/staffs/staff_certificate/mphil_consolidated_mark_part1_1_vijay.jpg', '123', '123', '2020/04/15', 'app/uploads/staffs/staff_certificate/mphil_consolidated_mark_part2_1_vijay.png', '123', '123', '2020/04/20', 'app/uploads/staffs/staff_certificate/mphil_provisional_certificate_1_vijay.jpg', '123', 'Q23', '2020/04/15', 'app/uploads/staffs/staff_certificate/mphil_degree_certificate_1_vijay.jpg', '123', '2342', '2020/04/16', '2020/04/20', 'app/uploads/staffs/staff_certificate/mba_provisional_certificate_1_vijay.jpg', '123', '123', '2020/04/08', '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff_event_details`
--

CREATE TABLE `staff_event_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_event_details`
--

INSERT INTO `staff_event_details` (`id`, `staff_id`, `name`, `prize`, `created_at`, `updated_at`) VALUES
(1, 1, 'SYMPOSIUM', 'KSR', '2020-04-20 13:58:40', '2020-04-20 13:58:40'),
(2, 1, 'ANNUAL', 'SCEW', '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff_leaves`
--

CREATE TABLE `staff_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adhoc_leave_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_days` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_masters`
--

CREATE TABLE `staff_leave_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_leave_masters`
--

INSERT INTO `staff_leave_masters` (`id`, `leave_type`, `created_at`, `updated_at`) VALUES
(1, 'Sick Leave', '2020-04-09 19:07:24', '2020-04-09 19:07:24'),
(2, 'Medical Leave', '2020-04-09 19:07:37', '2020-04-09 19:07:37'),
(3, 'Maternity Leave', '2020-04-09 19:07:43', '2020-04-09 19:07:43'),
(4, 'Casual Leave', '2020-04-09 19:07:49', '2020-04-09 19:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_subject_allocations`
--

CREATE TABLE `staff_leave_subject_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_leave_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_participation_details`
--

CREATE TABLE `staff_participation_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participate_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participate_to` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conducted_by` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_participation_details`
--

INSERT INTO `staff_participation_details` (`id`, `staff_id`, `type`, `participate_from`, `participate_to`, `conducted_by`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'conference', '2020/04/14', '2020/04/29', 'KSR', 'ERODE', '2020-04-20 13:58:40', '2020-04-20 13:58:40'),
(2, 1, 'quest_lucture', '2020/04/22', '2020/04/13', 'SCE', 'T.GODE', '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff_phd_award_details`
--

CREATE TABLE `staff_phd_award_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_phd_award_details`
--

INSERT INTO `staff_phd_award_details` (`id`, `staff_id`, `student_name`, `batch`, `created_at`, `updated_at`) VALUES
(1, 1, 'VIJAY', '2010', '2020-04-20 13:58:40', '2020-04-20 13:58:40'),
(2, 1, 'RAJA', '2012', '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `staff_role`, `created_at`, `updated_at`) VALUES
(1, 'Tutor', '2020-04-09 19:06:15', '2020-04-09 19:06:15'),
(2, 'HOD', '2020-04-09 19:06:19', '2020-04-09 19:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `staff_roll_details`
--

CREATE TABLE `staff_roll_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_roll_details`
--

INSERT INTO `staff_roll_details` (`id`, `staff_id`, `roles`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2020-04-20 13:58:40', '2020-04-20 13:58:40'),
(2, '1', '2', '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff_special_award_details`
--

CREATE TABLE `staff_special_award_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `award_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_special_award_details`
--

INSERT INTO `staff_special_award_details` (`id`, `staff_id`, `award_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'SPORTS', '2020-04-20 13:58:40', '2020-04-20 13:58:40'),
(2, 1, 'KABADDI', '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `staff_subject_allocations`
--

CREATE TABLE `staff_subject_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_from` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_to` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours_per_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours_per_week` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_subject_allocations`
--

INSERT INTO `staff_subject_allocations` (`id`, `subject_id`, `department_id`, `section_id`, `batch_from`, `batch_to`, `year`, `semester`, `staff_id`, `hours_per_total`, `hours_per_week`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '2020', '2020', '1', '1', '1', '10', '5', '2020-04-20 20:34:07', '2020-08-19 08:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `staff_subject_requests`
--

CREATE TABLE `staff_subject_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handled_subject_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `willing_subject_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_work_experience_details`
--

CREATE TABLE `staff_work_experience_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `college_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_work_experience_details`
--

INSERT INTO `staff_work_experience_details` (`id`, `staff_id`, `from`, `to`, `college_name`, `created_at`, `updated_at`) VALUES
(1, 1, '2020/04/20', '2020/04/17', 'snmv', '2020-04-20 13:58:40', '2020-04-20 13:58:40'),
(2, 1, '2020/04/06', '2020/04/30', 'ksr', '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `receipt_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` int(11) NOT NULL,
  `dob` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `community` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_nri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pancard_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_expiry_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_from_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_expiry_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banck_account_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `want_hostel` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_facility` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interested_activity` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sports` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sports_certificates` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_curricular_activities` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disablity_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disablity_certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disablity_percentage` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disablity_comments` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_service_man_child` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `andaman_nicobar_student` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native_place` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_from` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_to` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studing_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studing_semester` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_lateral` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_qualifying_exam_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_qualifying_exam_others` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `higher_secondary_percentage` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrance_exam_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrance_registration_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrance_marksheet` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `higher_secondary_group` int(11) DEFAULT NULL,
  `previous_school_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HS_registration_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HS_medium_of_instruction` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_qualifying_exam_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_college_address` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_college_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_university` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_university_pincode` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_university_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_university_landline` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_stop` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `receipt_no`, `student_name`, `application_type`, `department`, `dob`, `community`, `caste`, `is_nri`, `nationality`, `religion`, `gender`, `aadhar_no`, `mobile`, `alt_mobile`, `email`, `pancard_no`, `blood_group`, `passport_no`, `passport_expiry_date`, `visa_no`, `visa_type`, `visa_from_date`, `visa_expiry_date`, `bank_name`, `photo`, `banck_account_no`, `ifsc_code`, `branch_name`, `present_address`, `permanent_address`, `want_hostel`, `bus_facility`, `interested_activity`, `sports`, `sports_certificates`, `co_curricular_activities`, `disablity_type`, `disablity_certificate`, `disablity_percentage`, `disablity_comments`, `ex_service_man_child`, `andaman_nicobar_student`, `mother_tongue`, `native_place`, `admission_no`, `roll_no`, `registration_no`, `batch_from`, `batch_to`, `year`, `studing_year`, `studing_semester`, `is_lateral`, `hsc_qualifying_exam_type`, `hsc_qualifying_exam_others`, `higher_secondary_percentage`, `entrance_exam_type`, `entrance_registration_no`, `entrance_marksheet`, `higher_secondary_group`, `previous_school_name`, `HS_registration_no`, `HS_medium_of_instruction`, `pg_qualifying_exam_name`, `previous_college_address`, `previous_college_name`, `previous_university`, `previous_university_pincode`, `previous_university_mobile`, `previous_university_landline`, `bus_stop`, `bus_no`, `created_at`, `updated_at`) VALUES
(1, '789654', 'Narmatha', 'UG', 1, '1995/08/29', 'BC', 'Naikar', 'no', 'India', 'Hindu', 'female', '78965412300', '8098986729', NULL, 'narmatharamani95@gmail.com', '789635412305', 'O+ve', '7412', '2020/04/23', '745lk', 'Educational', NULL, NULL, 'Indian Overseas', 'students/student/student_1.jpg', '978645138645', 'IOB2147', 'Pollachi', 'Pollachi', 'Pollachi', 'yes', 'no', 'activities', '1', '1', 'NSS', 'none', '', '1', '1', 'no', 'no', 'Tamil', 'Pollachi', 'SNMV20201', 'SNVMAT0021', '897645', '2020', '2023', '1', NULL, NULL, 'no', 'hsc', NULL, '65', NULL, NULL, '', 1, 'Shri Nehru Vidyalaya', '845123', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-09 20:27:08', '2020-04-23 17:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `student_assign_fees`
--

CREATE TABLE `student_assign_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_assign_fees`
--

INSERT INTO `student_assign_fees` (`id`, `fee_group_id`, `department_id`, `year`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', NULL, '2020-05-09 02:44:14', '2020-05-09 02:44:14'),
(2, '1', '1', '1', NULL, '2020-05-09 02:44:26', '2020-05-09 02:44:26'),
(3, '1', '1', '1', NULL, '2020-05-09 02:44:59', '2020-05-09 02:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `student_assign_fees_details`
--

CREATE TABLE `student_assign_fees_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_assign_fee_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_group_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_documents`
--

CREATE TABLE `student_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `file_birth_certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_10th_tc` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_12th_tc` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_community_certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_ug_marksheet` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_income_certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_aadhar` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_pan` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_migration_certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_passport` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_equivalence_certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_visa` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_provisional` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_degree_certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_consolidated_certificate` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_documents`
--

INSERT INTO `student_documents` (`id`, `student_id`, `file_birth_certificate`, `file_10th_tc`, `file_12th_tc`, `file_community_certificate`, `file_ug_marksheet`, `file_income_certificate`, `file_aadhar`, `file_pan`, `file_migration_certificate`, `file_passport`, `file_equivalence_certificate`, `file_visa`, `file_provisional`, `file_degree_certificate`, `file_consolidated_certificate`, `created_at`, `updated_at`) VALUES
(1, 1, 'students/certificates/birth_1.jpg', 'students/certificates/sslc_1.jpg', 'students/certificates/hsc_1.jpg', 'students/certificates/community_1.jpg', 'students/certificates/ug_marksheet_1.jpg', 'students/certificates/income_1.jpg', 'students/certificates/aadhar_1.jpg', 'students/certificates/pan_1.jpg', 'students/certificates/migration_1.jpg', 'students/certificates/passport_1.jpg', 'students/certificates/equivalence_1.jpg', 'students/certificates/visa_1.jpg', '', '', '', '2020-04-09 20:27:10', '2020-04-09 20:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `student_home_works`
--

CREATE TABLE `student_home_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_leaves`
--

CREATE TABLE `student_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_days` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_approval` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `hostel_incharge_approval` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tutor_approval` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `hod_approval` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_leave_masters`
--

CREATE TABLE `student_leave_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_leave` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_leave_masters`
--

INSERT INTO `student_leave_masters` (`id`, `course_id`, `department_id`, `year`, `semester`, `no_of_leave`, `created_at`, `updated_at`) VALUES
(1, 'ug', '1', '1', '1', '5', '2020-04-09 19:07:17', '2020-04-09 19:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_mark_details`
--

CREATE TABLE `student_mark_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_marks_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_mark` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_parents`
--

CREATE TABLE `student_parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `father_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_photo` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_photo` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `have_guardian` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_photo` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_income` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_parents`
--

INSERT INTO `student_parents` (`id`, `student_id`, `father_name`, `father_mobile`, `father_occupation`, `father_photo`, `mother_name`, `mother_mobile`, `mother_occupation`, `mother_photo`, `have_guardian`, `guardian_name`, `guardian_mobile`, `guardian_occupation`, `guardian_photo`, `annual_income`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ram', '978645312', '978645312', 'students/student/father_1.jpg', '978645312', '978645312', '978645312', 'students/student/mother_1.jpg', 'no', NULL, NULL, NULL, '', '741852', '2020-04-09 20:27:10', '2020-04-23 17:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `student_previous_education`
--

CREATE TABLE `student_previous_education` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `hsc_subject1` int(11) DEFAULT NULL,
  `hsc_mark1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_max_mark1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_month_year_of_passing1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_attempts_no1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_subject2` int(11) DEFAULT NULL,
  `hsc_mark2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_max_mark2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_month_year_of_passing2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_attempts_no2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_subject3` int(11) DEFAULT NULL,
  `hsc_mark3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_max_mark3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_month_year_of_passing3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_attempts_no3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_subject4` int(11) DEFAULT NULL,
  `hsc_mark4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_max_mark4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_month_year_of_passing4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_attempts_no4` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_subject5` int(11) DEFAULT NULL,
  `hsc_mark5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_max_mark5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_month_year_of_passing5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_attempts_no5` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_subject6` int(11) DEFAULT NULL,
  `hsc_mark6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_max_mark6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_month_year_of_passing6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_attempts_no6` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_total_marks` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_total_max_marks` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_cut_off` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_subject1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_mark1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_max_mark1` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_subject2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_mark2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_max_mark2` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_subject3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_mark3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_max_mark3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_total_marks` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_total_max_marks` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_overall_class_obtained` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_class_obtained_in_part3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_qualifying_exam_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_qualifying_exam_others` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `higher_secondary_percentage` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrance_exam_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrance_registration_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrance_marksheet` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_previous_education`
--

INSERT INTO `student_previous_education` (`id`, `student_id`, `hsc_subject1`, `hsc_mark1`, `hsc_max_mark1`, `hsc_month_year_of_passing1`, `hsc_attempts_no1`, `hsc_subject2`, `hsc_mark2`, `hsc_max_mark2`, `hsc_month_year_of_passing2`, `hsc_attempts_no2`, `hsc_subject3`, `hsc_mark3`, `hsc_max_mark3`, `hsc_month_year_of_passing3`, `hsc_attempts_no3`, `hsc_subject4`, `hsc_mark4`, `hsc_max_mark4`, `hsc_month_year_of_passing4`, `hsc_attempts_no4`, `hsc_subject5`, `hsc_mark5`, `hsc_max_mark5`, `hsc_month_year_of_passing5`, `hsc_attempts_no5`, `hsc_subject6`, `hsc_mark6`, `hsc_max_mark6`, `hsc_month_year_of_passing6`, `hsc_attempts_no6`, `hsc_total_marks`, `hsc_total_max_marks`, `hsc_cut_off`, `pg_subject1`, `pg_mark1`, `pg_max_mark1`, `pg_subject2`, `pg_mark2`, `pg_max_mark2`, `pg_subject3`, `pg_mark3`, `pg_max_mark3`, `pg_total_marks`, `pg_total_max_marks`, `pg_overall_class_obtained`, `pg_class_obtained_in_part3`, `hsc_qualifying_exam_type`, `hsc_qualifying_exam_others`, `higher_secondary_percentage`, `entrance_exam_type`, `entrance_registration_no`, `entrance_marksheet`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '89', '100', '2019', '1', NULL, '90', '100', '2019', '1', NULL, '85', '100', '2019', '1', NULL, '70', NULL, '2019', '1', NULL, '85', NULL, '2019', '1', NULL, '78', NULL, '2019', '1', '497', '600', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-09 20:27:10', '2020-04-23 17:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `student_scholar_ships`
--

CREATE TABLE `student_scholar_ships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scholarship_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scholarship_acadamics_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_sections`
--

CREATE TABLE `student_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_section_details`
--

CREATE TABLE `student_section_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_section_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_year_semesters`
--

CREATE TABLE `student_year_semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_1` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `year_2` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `year_3` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `year_4` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `year_5` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `semester_1` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `semester_2` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `semester_3` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `semester_4` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `semester_5` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `semester_6` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `semester_7` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `semester_8` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_year_semesters`
--

INSERT INTO `student_year_semesters` (`id`, `student_id`, `year_1`, `year_2`, `year_3`, `year_4`, `year_5`, `semester_1`, `semester_2`, `semester_3`, `semester_4`, `semester_5`, `semester_6`, `semester_7`, `semester_8`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programme_code` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_method` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_hours` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_marks` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `internal` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `course_id`, `department_id`, `programme_code`, `subject_name`, `subject_code`, `subject_method`, `total_hours`, `total_marks`, `internal`, `external`, `subject_type`, `created_at`, `updated_at`) VALUES
(1, 'ug', '1', '123', 'Tamil', 'TA123', 'theory', '12', '12', '12', '12', 'core', '2020-04-20 20:27:20', '2020-08-19 08:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `syllabi`
--

CREATE TABLE `syllabi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_subject_allocations_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_from` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_to` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabi`
--

INSERT INTO `syllabi` (`id`, `staff_subject_allocations_id`, `unit_number`, `unit_name`, `unit_type`, `unit_from`, `unit_to`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Intro', 'theory', '2020/08/24', '2020/08/24', '2020-08-21 23:16:34', '2020-08-24 02:20:34'),
(2, '1', '2', 'Biology', 'theory', '2020/08/24', '2020/08/24', '2020-08-21 23:16:34', '2020-08-24 02:20:35'),
(3, '1', '3', 'Zoology', 'theory', '2020/08/24', '2020/08/24', '2020-08-22 04:31:58', '2020-08-24 02:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_configurations`
--

CREATE TABLE `time_table_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_per_week` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_periods` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_time_start` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_time_end` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gab_duration_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_details`
--

CREATE TABLE `training_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hall_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `traniner_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mandatory` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_link` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_forms`
--

CREATE TABLE `transport_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_purpose` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_no` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_tutor_seal` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_forms`
--

INSERT INTO `transport_forms` (`id`, `event_name`, `event_purpose`, `paid`, `bus_no`, `bus_tutor_seal`, `driver_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '123', '123', '123', '1', '123', '2', '0', '2020-04-22 00:01:33', '2020-04-22 00:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_interviews`
--

CREATE TABLE `upcoming_interviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_details` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eligibility` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mandatory_documents` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authority` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `round_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_interview_departments`
--

CREATE TABLE `upcoming_interview_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upcoming_interview_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_interview_types`
--

CREATE TABLE `upcoming_interview_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upcoming_interview_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interview` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `email_verified_at`, `password`, `user_type`, `user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$C4sBkFbyxLgLw6DzTQbuRON34itPt8HY0LwZJr.rvoGZ9ood1G2ey', NULL, NULL, NULL, '2020-04-08 16:34:16', '2020-04-08 16:34:16'),
(2, 'narmatharamani95@gmail.com', 'narmatharamani95@gmail.com', NULL, '$2y$10$f/775v38uQCM9gBhgo8CrOfjWTbBkJzvEMcXcwlsqenx5V0BO34ym', 'Student', '1', NULL, '2020-04-09 20:27:11', '2020-04-09 20:27:11'),
(3, 'vijay@gmail.com', 'vijay@gmail.com', NULL, '$2y$10$bBDk5q6uiADCfkzKfi6ape83rNVI64l1l/xGBhgVfZz3u1d3S5bxm', 'Staff', '1', NULL, '2020-04-20 13:58:40', '2020-04-20 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `wings`
--

CREATE TABLE `wings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wing_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_floor` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_room` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_hostel` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wings`
--

INSERT INTO `wings` (`id`, `wing_name`, `no_of_floor`, `no_of_room`, `for_hostel`, `created_at`, `updated_at`) VALUES
(1, 'Block A', '2', '10', 'Girls', '2020-04-09 19:08:10', '2020-04-09 19:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Oct 2018', '2020-08-20 03:23:43', '2020-08-20 03:23:43'),
(2, 'Mar 2019', '2020-08-20 03:23:54', '2020-08-20 03:23:54'),
(3, 'DEC 2019', '2020-08-20 03:24:04', '2020-08-20 03:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `year_semesters`
--

CREATE TABLE `year_semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_for` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_year` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FromYear` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ToYear` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_semester` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `year_semesters`
--

INSERT INTO `year_semesters` (`id`, `assign_for`, `from_year`, `to_year`, `FromYear`, `ToYear`, `year_semester`, `created_at`, `updated_at`) VALUES
(1, 'semester', '2019/11/01', '2020/05/02', '2019', '2020', '3', '2020-05-02 02:47:38', '2020-05-02 02:47:38'),
(2, 'semester', '2020/05/01', '2020/05/10', '2020', '2020', '1', '2020-05-09 03:21:44', '2020-05-09 03:21:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_plans`
--
ALTER TABLE `action_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_items`
--
ALTER TABLE `add_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_activities`
--
ALTER TABLE `assignment_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_student_details`
--
ALTER TABLE `assignment_student_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_mess_menus`
--
ALTER TABLE `assign_mess_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automatic_questions`
--
ALTER TABLE `automatic_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automatic_question_chapters`
--
ALTER TABLE `automatic_question_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `automatic_question_chapters_automatic_question_id_foreign` (`automatic_question_id`),
  ADD KEY `automatic_question_chapters_syllabus_id_foreign` (`syllabus_id`);

--
-- Indexes for table `automatic_question_details`
--
ALTER TABLE `automatic_question_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `automatic_question_details_automatic_question_id_foreign` (`automatic_question_id`),
  ADD KEY `automatic_question_details_syllabus_id_foreign` (`syllabus_id`),
  ADD KEY `automatic_question_details_preparation_type_id_foreign` (`preparation_type_id`),
  ADD KEY `automatic_question_details_segregation_id_foreign` (`segregation_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_route_stoppings`
--
ALTER TABLE `bus_route_stoppings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_leaves`
--
ALTER TABLE `calendar_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter_based_questions`
--
ALTER TABLE `chapter_based_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapter_based_questions_syllabus_id_foreign` (`syllabus_id`);

--
-- Indexes for table `chapter_based_question_details`
--
ALTER TABLE `chapter_based_question_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapter_based_question_details_chapter_based_question_id_foreign` (`chapter_based_question_id`),
  ADD KEY `chapter_based_question_details_syllabus_id_foreign` (`syllabus_id`),
  ADD KEY `chapter_based_question_details_segregation_id_foreign` (`segregation_id`),
  ADD KEY `chapter_based_question_details_question_id_foreign` (`question_id`);

--
-- Indexes for table `chapter_details`
--
ALTER TABLE `chapter_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_home_works`
--
ALTER TABLE `class_home_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_timetables`
--
ALTER TABLE `class_timetables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_timetable_details`
--
ALTER TABLE `class_timetable_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_details`
--
ALTER TABLE `complaint_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coordinator_details`
--
ALTER TABLE `coordinator_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_expenses`
--
ALTER TABLE `daily_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_material_expenses`
--
ALTER TABLE `daily_material_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_bus_allocations`
--
ALTER TABLE `driver_bus_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_details`
--
ALTER TABLE `driver_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_leaves`
--
ALTER TABLE `driver_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_warning_details`
--
ALTER TABLE `driver_warning_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enquiries_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `enquiries_email_unique` (`email`),
  ADD UNIQUE KEY `enquiries_hs_register_no_unique` (`HS_register_no`);

--
-- Indexes for table `enquiry_audits`
--
ALTER TABLE `enquiry_audits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enquiry_audits_enquiry_id_unique` (`enquiry_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_and_instructions`
--
ALTER TABLE `exam_and_instructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_and_instructions_chapter_based_question_id_foreign` (`chapter_based_question_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_assign_departments`
--
ALTER TABLE `fees_assign_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_collections`
--
ALTER TABLE `fees_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_groups`
--
ALTER TABLE `fees_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_masters`
--
ALTER TABLE `fees_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_types`
--
ALTER TABLE `fees_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_group_type_details`
--
ALTER TABLE `fee_group_type_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_periods`
--
ALTER TABLE `general_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `higher_secondary_groups`
--
ALTER TABLE `higher_secondary_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `higher_secondary_group_and_subjects`
--
ALTER TABLE `higher_secondary_group_and_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `higher_secondary_subjects`
--
ALTER TABLE `higher_secondary_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod_project_reviews`
--
ALTER TABLE `hod_project_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod_project_review_details`
--
ALTER TABLE `hod_project_review_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod_project_review_students`
--
ALTER TABLE `hod_project_review_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_allocations`
--
ALTER TABLE `hostel_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_attendence_dates`
--
ALTER TABLE `hostel_attendence_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_details_masters`
--
ALTER TABLE `hostel_details_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_out_passes`
--
ALTER TABLE `hostel_out_passes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_student_attendence_details`
--
ALTER TABLE `hostel_student_attendence_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_questions`
--
ALTER TABLE `interview_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_student_details`
--
ALTER TABLE `interview_student_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_student_qus_ans`
--
ALTER TABLE `interview_student_qus_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mess_menus`
--
ALTER TABLE `mess_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mess_student_details`
--
ALTER TABLE `mess_student_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mileage_details`
--
ALTER TABLE `mileage_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_test_schedules`
--
ALTER TABLE `online_test_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_colleges`
--
ALTER TABLE `other_colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `petrol_allowances`
--
ALTER TABLE `petrol_allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placed_student_details`
--
ALTER TABLE `placed_student_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_agenda_details`
--
ALTER TABLE `placement_agenda_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_departments`
--
ALTER TABLE `placement_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_department_years`
--
ALTER TABLE `placement_department_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_details`
--
ALTER TABLE `placement_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_registrations`
--
ALTER TABLE `placement_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_student_details`
--
ALTER TABLE `placement_student_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool_interviews`
--
ALTER TABLE `pool_interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preparation_types`
--
ALTER TABLE `preparation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_details`
--
ALTER TABLE `project_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_review_marks`
--
ALTER TABLE `project_review_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_syllabus_id_foreign` (`syllabus_id`),
  ADD KEY `questions_preparation_type_id_foreign` (`preparation_type_id`),
  ADD KEY `questions_question_type_id_foreign` (`question_type_id`),
  ADD KEY `questions_segregation_id_foreign` (`segregation_id`);

--
-- Indexes for table `question_models`
--
ALTER TABLE `question_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_types`
--
ALTER TABLE `question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_years`
--
ALTER TABLE `question_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_years_question_id_foreign` (`question_id`),
  ADD KEY `question_years_syllabus_id_foreign` (`syllabus_id`),
  ADD KEY `question_years_preparation_type_id_foreign` (`preparation_type_id`),
  ADD KEY `question_years_question_type_id_foreign` (`question_type_id`),
  ADD KEY `question_years_segregation_id_foreign` (`segregation_id`);

--
-- Indexes for table `raw_material_stack_details`
--
ALTER TABLE `raw_material_stack_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship_acadamics`
--
ALTER TABLE `scholarship_acadamics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `segregations`
--
ALTER TABLE `segregations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `segregations_question_type_id_foreign` (`question_type_id`);

--
-- Indexes for table `session_masters`
--
ALTER TABLE `session_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spare_details`
--
ALTER TABLE `spare_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_award_details`
--
ALTER TABLE `staff_award_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_certificate_details`
--
ALTER TABLE `staff_certificate_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_event_details`
--
ALTER TABLE `staff_event_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leaves`
--
ALTER TABLE `staff_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_masters`
--
ALTER TABLE `staff_leave_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_subject_allocations`
--
ALTER TABLE `staff_leave_subject_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_participation_details`
--
ALTER TABLE `staff_participation_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_phd_award_details`
--
ALTER TABLE `staff_phd_award_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_roll_details`
--
ALTER TABLE `staff_roll_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_special_award_details`
--
ALTER TABLE `staff_special_award_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_subject_allocations`
--
ALTER TABLE `staff_subject_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_subject_requests`
--
ALTER TABLE `staff_subject_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_work_experience_details`
--
ALTER TABLE `staff_work_experience_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_assign_fees`
--
ALTER TABLE `student_assign_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_assign_fees_details`
--
ALTER TABLE `student_assign_fees_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_documents`
--
ALTER TABLE `student_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_home_works`
--
ALTER TABLE `student_home_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_leaves`
--
ALTER TABLE `student_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_leave_masters`
--
ALTER TABLE `student_leave_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_mark_details`
--
ALTER TABLE `student_mark_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_parents`
--
ALTER TABLE `student_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_previous_education`
--
ALTER TABLE `student_previous_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_scholar_ships`
--
ALTER TABLE `student_scholar_ships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_sections`
--
ALTER TABLE `student_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_section_details`
--
ALTER TABLE `student_section_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_year_semesters`
--
ALTER TABLE `student_year_semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_year_semesters_student_id_unique` (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabi`
--
ALTER TABLE `syllabi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table_configurations`
--
ALTER TABLE `time_table_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_details`
--
ALTER TABLE `training_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_forms`
--
ALTER TABLE `transport_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_interviews`
--
ALTER TABLE `upcoming_interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_interview_departments`
--
ALTER TABLE `upcoming_interview_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_interview_types`
--
ALTER TABLE `upcoming_interview_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wings`
--
ALTER TABLE `wings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year_semesters`
--
ALTER TABLE `year_semesters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_plans`
--
ALTER TABLE `action_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_items`
--
ALTER TABLE `add_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_activities`
--
ALTER TABLE `assignment_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_student_details`
--
ALTER TABLE `assignment_student_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_mess_menus`
--
ALTER TABLE `assign_mess_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `automatic_questions`
--
ALTER TABLE `automatic_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `automatic_question_chapters`
--
ALTER TABLE `automatic_question_chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `automatic_question_details`
--
ALTER TABLE `automatic_question_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bus_routes`
--
ALTER TABLE `bus_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bus_route_stoppings`
--
ALTER TABLE `bus_route_stoppings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `calendar_leaves`
--
ALTER TABLE `calendar_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapter_based_questions`
--
ALTER TABLE `chapter_based_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `chapter_based_question_details`
--
ALTER TABLE `chapter_based_question_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=820;

--
-- AUTO_INCREMENT for table `chapter_details`
--
ALTER TABLE `chapter_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_home_works`
--
ALTER TABLE `class_home_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_timetables`
--
ALTER TABLE `class_timetables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_timetable_details`
--
ALTER TABLE `class_timetable_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint_details`
--
ALTER TABLE `complaint_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coordinator_details`
--
ALTER TABLE `coordinator_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_expenses`
--
ALTER TABLE `daily_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_material_expenses`
--
ALTER TABLE `daily_material_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_bus_allocations`
--
ALTER TABLE `driver_bus_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_details`
--
ALTER TABLE `driver_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver_leaves`
--
ALTER TABLE `driver_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `driver_warning_details`
--
ALTER TABLE `driver_warning_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry_audits`
--
ALTER TABLE `enquiry_audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `examinations`
--
ALTER TABLE `examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_and_instructions`
--
ALTER TABLE `exam_and_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_assign_departments`
--
ALTER TABLE `fees_assign_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fees_collections`
--
ALTER TABLE `fees_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_groups`
--
ALTER TABLE `fees_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fees_masters`
--
ALTER TABLE `fees_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fees_types`
--
ALTER TABLE `fees_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee_group_type_details`
--
ALTER TABLE `fee_group_type_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_periods`
--
ALTER TABLE `general_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `higher_secondary_groups`
--
ALTER TABLE `higher_secondary_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `higher_secondary_group_and_subjects`
--
ALTER TABLE `higher_secondary_group_and_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `higher_secondary_subjects`
--
ALTER TABLE `higher_secondary_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hod_project_reviews`
--
ALTER TABLE `hod_project_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hod_project_review_details`
--
ALTER TABLE `hod_project_review_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hod_project_review_students`
--
ALTER TABLE `hod_project_review_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_allocations`
--
ALTER TABLE `hostel_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hostel_attendence_dates`
--
ALTER TABLE `hostel_attendence_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hostel_details_masters`
--
ALTER TABLE `hostel_details_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hostel_out_passes`
--
ALTER TABLE `hostel_out_passes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_student_attendence_details`
--
ALTER TABLE `hostel_student_attendence_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `interview_questions`
--
ALTER TABLE `interview_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_student_details`
--
ALTER TABLE `interview_student_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_student_qus_ans`
--
ALTER TABLE `interview_student_qus_ans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mess_menus`
--
ALTER TABLE `mess_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mess_student_details`
--
ALTER TABLE `mess_student_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `mileage_details`
--
ALTER TABLE `mileage_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_test_schedules`
--
ALTER TABLE `online_test_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_colleges`
--
ALTER TABLE `other_colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `petrol_allowances`
--
ALTER TABLE `petrol_allowances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placed_student_details`
--
ALTER TABLE `placed_student_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_agenda_details`
--
ALTER TABLE `placement_agenda_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_departments`
--
ALTER TABLE `placement_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_department_years`
--
ALTER TABLE `placement_department_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_details`
--
ALTER TABLE `placement_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_registrations`
--
ALTER TABLE `placement_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_student_details`
--
ALTER TABLE `placement_student_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_interviews`
--
ALTER TABLE `pool_interviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preparation_types`
--
ALTER TABLE `preparation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_details`
--
ALTER TABLE `project_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_review_marks`
--
ALTER TABLE `project_review_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `question_models`
--
ALTER TABLE `question_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question_types`
--
ALTER TABLE `question_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `question_years`
--
ALTER TABLE `question_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `raw_material_stack_details`
--
ALTER TABLE `raw_material_stack_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarship_acadamics`
--
ALTER TABLE `scholarship_acadamics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `segregations`
--
ALTER TABLE `segregations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session_masters`
--
ALTER TABLE `session_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `spare_details`
--
ALTER TABLE `spare_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_award_details`
--
ALTER TABLE `staff_award_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_certificate_details`
--
ALTER TABLE `staff_certificate_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_event_details`
--
ALTER TABLE `staff_event_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_leaves`
--
ALTER TABLE `staff_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_leave_masters`
--
ALTER TABLE `staff_leave_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_leave_subject_allocations`
--
ALTER TABLE `staff_leave_subject_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_participation_details`
--
ALTER TABLE `staff_participation_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_phd_award_details`
--
ALTER TABLE `staff_phd_award_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_roll_details`
--
ALTER TABLE `staff_roll_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_special_award_details`
--
ALTER TABLE `staff_special_award_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_subject_allocations`
--
ALTER TABLE `staff_subject_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_subject_requests`
--
ALTER TABLE `staff_subject_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_work_experience_details`
--
ALTER TABLE `staff_work_experience_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_assign_fees`
--
ALTER TABLE `student_assign_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_assign_fees_details`
--
ALTER TABLE `student_assign_fees_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_documents`
--
ALTER TABLE `student_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_home_works`
--
ALTER TABLE `student_home_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_leaves`
--
ALTER TABLE `student_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_leave_masters`
--
ALTER TABLE `student_leave_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_mark_details`
--
ALTER TABLE `student_mark_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_parents`
--
ALTER TABLE `student_parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_previous_education`
--
ALTER TABLE `student_previous_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_scholar_ships`
--
ALTER TABLE `student_scholar_ships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_sections`
--
ALTER TABLE `student_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_section_details`
--
ALTER TABLE `student_section_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_year_semesters`
--
ALTER TABLE `student_year_semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `syllabi`
--
ALTER TABLE `syllabi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `time_table_configurations`
--
ALTER TABLE `time_table_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_details`
--
ALTER TABLE `training_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_forms`
--
ALTER TABLE `transport_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upcoming_interviews`
--
ALTER TABLE `upcoming_interviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upcoming_interview_departments`
--
ALTER TABLE `upcoming_interview_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upcoming_interview_types`
--
ALTER TABLE `upcoming_interview_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wings`
--
ALTER TABLE `wings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `year_semesters`
--
ALTER TABLE `year_semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `automatic_question_chapters`
--
ALTER TABLE `automatic_question_chapters`
  ADD CONSTRAINT `automatic_question_chapters_automatic_question_id_foreign` FOREIGN KEY (`automatic_question_id`) REFERENCES `automatic_questions` (`id`),
  ADD CONSTRAINT `automatic_question_chapters_syllabus_id_foreign` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabi` (`id`);

--
-- Constraints for table `automatic_question_details`
--
ALTER TABLE `automatic_question_details`
  ADD CONSTRAINT `automatic_question_details_automatic_question_id_foreign` FOREIGN KEY (`automatic_question_id`) REFERENCES `automatic_questions` (`id`),
  ADD CONSTRAINT `automatic_question_details_preparation_type_id_foreign` FOREIGN KEY (`preparation_type_id`) REFERENCES `preparation_types` (`id`),
  ADD CONSTRAINT `automatic_question_details_segregation_id_foreign` FOREIGN KEY (`segregation_id`) REFERENCES `segregations` (`id`),
  ADD CONSTRAINT `automatic_question_details_syllabus_id_foreign` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabi` (`id`);

--
-- Constraints for table `chapter_based_question_details`
--
ALTER TABLE `chapter_based_question_details`
  ADD CONSTRAINT `chapter_based_question_details_chapter_based_question_id_foreign` FOREIGN KEY (`chapter_based_question_id`) REFERENCES `chapter_based_questions` (`id`),
  ADD CONSTRAINT `chapter_based_question_details_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `chapter_based_question_details_segregation_id_foreign` FOREIGN KEY (`segregation_id`) REFERENCES `segregations` (`id`),
  ADD CONSTRAINT `chapter_based_question_details_syllabus_id_foreign` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabi` (`id`);

--
-- Constraints for table `exam_and_instructions`
--
ALTER TABLE `exam_and_instructions`
  ADD CONSTRAINT `exam_and_instructions_chapter_based_question_id_foreign` FOREIGN KEY (`chapter_based_question_id`) REFERENCES `chapter_based_questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_preparation_type_id_foreign` FOREIGN KEY (`preparation_type_id`) REFERENCES `preparation_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_question_type_id_foreign` FOREIGN KEY (`question_type_id`) REFERENCES `question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_segregation_id_foreign` FOREIGN KEY (`segregation_id`) REFERENCES `segregations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_syllabus_id_foreign` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabi` (`id`);

--
-- Constraints for table `question_years`
--
ALTER TABLE `question_years`
  ADD CONSTRAINT `question_years_preparation_type_id_foreign` FOREIGN KEY (`preparation_type_id`) REFERENCES `preparation_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_years_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_years_question_type_id_foreign` FOREIGN KEY (`question_type_id`) REFERENCES `question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_years_segregation_id_foreign` FOREIGN KEY (`segregation_id`) REFERENCES `segregations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_years_syllabus_id_foreign` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabi` (`id`);

--
-- Constraints for table `segregations`
--
ALTER TABLE `segregations`
  ADD CONSTRAINT `segregations_question_type_id_foreign` FOREIGN KEY (`question_type_id`) REFERENCES `question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
