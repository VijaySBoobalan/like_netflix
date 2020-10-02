-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 08:37 AM
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
-- Database: `virtualclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `automatic_questions`
--

CREATE TABLE `automatic_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preperation_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creating_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prepared_staff_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preparation_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `automatic_question_chapters`
--

CREATE TABLE `automatic_question_chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `automatic_question_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `automatic_question_details`
--

CREATE TABLE `automatic_question_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `automatic_question_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preparation_type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `segregation_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_count` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_students` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_subject_assign_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `staff_subject_assign_id`, `unit_number`, `unit_name`, `unit_type`, `unit_from`, `unit_to`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Intro', 'theory', '2020-08-18', '2020-09-03', '2020-08-18 16:27:19', '2020-08-18 16:27:19'),
(2, '1', '2', 'Biology', 'theory', '2020-08-16', '2020-09-03', '2020-08-18 16:27:19', '2020-08-18 16:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `chapter_based_questions`
--

CREATE TABLE `chapter_based_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapter_details`
--

CREATE TABLE `chapter_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_hours` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapter_details`
--

INSERT INTO `chapter_details` (`id`, `chapter_id`, `chapter_number`, `chapter_name`, `chapter_hours`, `chapter_from`, `chapter_to`, `created_at`, `updated_at`) VALUES
(1, '1', '1.1', '1.1', '11', '2020-08-02', '2020-08-27', '2020-08-18 16:27:19', '2020-08-18 16:27:19'),
(2, '2', '2.1', '2.1', '12', '2020-07-27', '2020-09-03', '2020-08-18 16:27:19', '2020-08-18 16:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commenter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commented_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class`, `section`, `created_at`, `updated_at`) VALUES
(1, 'DEEE', 'A', '2020-08-18 16:17:29', '2020-08-19 16:31:24'),
(2, 'DCEE', 'A', '2020-08-19 16:33:25', '2020-08-19 16:33:25');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_assign_departments`
--

CREATE TABLE `fees_assign_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_id` bigint(20) UNSIGNED NOT NULL,
  `fee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_collections`
--

CREATE TABLE `fees_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_given_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dd_number` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_groups`
--

CREATE TABLE `fees_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_type` bigint(20) UNSIGNED NOT NULL,
  `scholarship_for` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fine_per_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_masters`
--

CREATE TABLE `fees_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_types`
--

CREATE TABLE `fees_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_type` bigint(20) UNSIGNED NOT NULL,
  `fee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scholarship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_group_type_details`
--

CREATE TABLE `fee_group_type_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_type_id` bigint(20) UNSIGNED NOT NULL,
  `fee_name_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homework_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homework_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimated_mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evaluated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institution_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_institutions_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_05_03_000001_create_customer_columns', 1),
(10, '2019_05_03_000002_create_subscriptions_table', 1),
(11, '2019_05_03_000003_create_subscription_items_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2020_05_29_115444_create_class_sections_table', 1),
(14, '2020_05_29_115445_create_students_table', 1),
(15, '2020_05_29_115609_create_staff_table', 1),
(16, '2020_05_29_182749_create_subjects_table', 1),
(17, '2020_05_29_185903_create_staff_subject_assigns_table', 1),
(18, '2020_06_02_164520_create_staff_schedule_classes_table', 1),
(19, '2020_06_02_164611_create_staff_schedule_subject_details_table', 1),
(20, '2020_06_05_042414_create_permission_tables', 1),
(21, '2020_06_08_180257_create_onlineclass_table', 1),
(22, '2020_06_11_050647_create_records_table', 1),
(23, '2020_06_13_080330_create_share_screen_files_table', 1),
(24, '2020_06_16_062909_create_tokens_table', 1),
(25, '2020_06_17_075053_create_sessions_table', 1),
(26, '2020_06_29_105527_create_homework_table', 1),
(27, '2020_07_01_041026_create_student_attendences_table', 1),
(28, '2020_07_02_175614_create_staff_attendances_table', 1),
(29, '2020_07_06_193810_create_student_homework_lists_table', 1),
(30, '2020_07_08_041114_create_fees_masters_table', 1),
(31, '2020_07_08_045139_create_fees_types_table', 1),
(32, '2020_07_08_090357_create_fees_groups_table', 1),
(33, '2020_07_08_090433_create_fee_group_type_details_table', 1),
(34, '2020_07_08_110738_create_fees_assign_departments_table', 1),
(35, '2020_07_10_193821_create_scholarship_acadamics_table', 1),
(36, '2020_07_11_223434_create_student_assign_fees_table', 1),
(37, '2020_07_11_223550_create_student_assign_fees_details_table', 1),
(38, '2020_07_12_011658_create_fees_collections_table', 1),
(39, '2020_07_14_150154_create_chats_table', 1),
(40, '2020_07_22_202448_create_online_fee_pay_details_table', 1),
(41, '2020_08_03_055440_create_settings_table', 1),
(42, '2020_08_10_201857_create_question_types_table', 1),
(43, '2020_08_11_134209_create_preparation_types_table', 1),
(44, '2020_08_11_160840_create_question_models_table', 1),
(45, '2020_08_11_160841_create_segregations_table', 1),
(46, '2020_08_11_191408_create_years_table', 1),
(47, '2020_08_12_102012_create_chapters_table', 1),
(48, '2020_08_12_102107_create_chapter_details_table', 1),
(51, '2020_08_17_122504_create_questions_table', 2),
(52, '2020_08_17_122557_create_question_years_table', 2),
(53, '2020_08_14_155412_create_batches_table', 3),
(54, '2020_08_14_192613_create_online_test_schedules_table', 3),
(55, '2020_08_20_135424_create_automatic_questions_table', 3),
(56, '2020_08_25_222933_create_automatic_question_chapters_table', 3),
(57, '2020_08_25_223155_create_automatic_question_details_table', 3),
(58, '2020_08_26_023752_create_chapter_based_questions_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(1, 'App\\User', 3),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(3, 'App\\User', 6),
(4, 'App\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineclass`
--

CREATE TABLE `onlineclass` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audioroom_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduleclass_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_fee_pay_details`
--

CREATE TABLE `online_fee_pay_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fees_collection_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_id` bigint(20) UNSIGNED NOT NULL,
  `mihpayid` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `txnid` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryptedPaymentId` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_test_schedules`
--

CREATE TABLE `online_test_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug_name`, `guard_name`, `description`, `description_name`, `created_at`, `updated_at`) VALUES
(1, 'student_view', 'View', 'web', '2', 'Student', '2020-08-18 10:59:22', NULL),
(2, 'student_create', 'Create', 'web', '2', 'Student', '2020-08-18 10:59:22', NULL),
(3, 'student_update', 'Update', 'web', '2', 'Student', '2020-08-18 10:59:22', NULL),
(4, 'student_delete', 'Delete', 'web', '2', 'Student', '2020-08-18 10:59:22', NULL),
(5, 'all_section_student_view', 'All Section Student Details', 'web', '2', 'Student', '2020-08-18 10:59:22', NULL),
(6, 'assigned_section_student_view', 'Assigned Section Student Details', 'web', '2', 'Student', '2020-08-18 10:59:22', NULL),
(7, 'staff_view', 'View', 'web', '3', 'Staff', '2020-08-18 10:59:22', NULL),
(8, 'staff_create', 'Create', 'web', '3', 'Staff', '2020-08-18 10:59:22', NULL),
(9, 'staff_update', 'Update', 'web', '3', 'Staff', '2020-08-18 10:59:22', NULL),
(10, 'staff_delete', 'Delete', 'web', '3', 'Staff', '2020-08-18 10:59:22', NULL),
(11, 'roles_view', 'View', 'web', '4', 'Roles', '2020-08-18 10:59:22', NULL),
(12, 'roles_create', 'Create', 'web', '4', 'Roles', '2020-08-18 10:59:22', NULL),
(13, 'roles_update', 'Update', 'web', '4', 'Roles', '2020-08-18 10:59:22', NULL),
(14, 'roles_delete', 'Delete', 'web', '4', 'Roles', '2020-08-18 10:59:22', NULL),
(15, 'subject_view', 'View', 'web', '5', 'Subject', '2020-08-18 10:59:22', NULL),
(16, 'subject_create', 'Create', 'web', '5', 'Subject', '2020-08-18 10:59:22', NULL),
(17, 'subject_update', 'Update', 'web', '5', 'Subject', '2020-08-18 10:59:22', NULL),
(18, 'subject_delete', 'Delete', 'web', '5', 'Subject', '2020-08-18 10:59:22', NULL),
(19, 'staff_schedule_assign_view', 'View', 'web', '6', 'Staff Schedule Assign', '2020-08-18 10:59:22', NULL),
(20, 'staff_schedule_assign_create', 'Create', 'web', '6', 'Staff Schedule Assign', '2020-08-18 10:59:22', NULL),
(21, 'staff_schedule_assign_update', 'Update', 'web', '6', 'Staff Schedule Assign', '2020-08-18 10:59:22', NULL),
(22, 'staff_schedule_assign_delete', 'Delete', 'web', '6', 'Staff Schedule Assign', '2020-08-18 10:59:22', NULL),
(23, 'staff_schedule_view', 'View', 'web', '7', 'Staff Schedule', '2020-08-18 10:59:22', NULL),
(24, 'staff_schedule_create', 'Create', 'web', '7', 'Staff Schedule', '2020-08-18 10:59:22', NULL),
(25, 'staff_schedule_update', 'Update', 'web', '7', 'Staff Schedule', '2020-08-18 10:59:22', NULL),
(26, 'staff_schedule_delete', 'Delete', 'web', '7', 'Staff Schedule', '2020-08-18 10:59:22', NULL),
(27, 'total_schedule_view', 'Total Schedule View', 'web', '7', 'Staff Schedule', '2020-08-18 10:59:22', NULL),
(28, 'class_section_view', 'View', 'web', '8', 'Class / Section', '2020-08-18 10:59:22', NULL),
(29, 'class_section_create', 'Create', 'web', '8', 'Class / Section', '2020-08-18 10:59:22', NULL),
(30, 'class_section_update', 'Update', 'web', '8', 'Class / Section', '2020-08-18 10:59:22', NULL),
(31, 'class_section_delete', 'Delete', 'web', '8', 'Class / Section', '2020-08-18 10:59:22', NULL),
(32, 'homework_view', 'View', 'web', '9', 'Home Work', '2020-08-18 10:59:22', NULL),
(33, 'homework_create', 'Create', 'web', '9', 'Home Work', '2020-08-18 10:59:22', NULL),
(34, 'homework_update', 'Update', 'web', '9', 'Home Work', '2020-08-18 10:59:22', NULL),
(35, 'homework_delete', 'Delete', 'web', '9', 'Home Work', '2020-08-18 10:59:22', NULL),
(36, 'fee_master_view', 'View', 'web', '10', 'Fee Master', '2020-08-18 10:59:22', NULL),
(37, 'fee_master_create', 'Create', 'web', '10', 'Fee Master', '2020-08-18 10:59:22', NULL),
(38, 'fee_master_update', 'Update', 'web', '10', 'Fee Master', '2020-08-18 10:59:22', NULL),
(39, 'fee_master_delete', 'Delete', 'web', '10', 'Fee Master', '2020-08-18 10:59:22', NULL),
(40, 'fee_type_view', 'View', 'web', '11', 'Fee Type', '2020-08-18 10:59:22', NULL),
(41, 'fee_type_create', 'Create', 'web', '11', 'Fee Type', '2020-08-18 10:59:22', NULL),
(42, 'fee_type_update', 'Update', 'web', '11', 'Fee Type', '2020-08-18 10:59:22', NULL),
(43, 'fee_type_delete', 'Delete', 'web', '11', 'Fee Type', '2020-08-18 10:59:22', NULL),
(44, 'fee_type_group_view', 'View', 'web', '12', 'Fee Type Group', '2020-08-18 10:59:22', NULL),
(45, 'fee_type_group_create', 'Create', 'web', '12', 'Fee Type Group', '2020-08-18 10:59:22', NULL),
(46, 'fee_type_group_update', 'Update', 'web', '12', 'Fee Type Group', '2020-08-18 10:59:22', NULL),
(47, 'fee_type_group_delete', 'Delete', 'web', '12', 'Fee Type Group', '2020-08-18 10:59:22', NULL),
(48, 'fee_type_assign_class', 'Class Fee Assign', 'web', '12', 'Class Fee Assign', '2020-08-18 10:59:22', NULL),
(49, 'fee_assign_view', 'View', 'web', '13', 'Fee Assign', '2020-08-18 10:59:22', NULL),
(50, 'fee_assign_create', 'Create', 'web', '13', 'Fee Assign', '2020-08-18 10:59:22', NULL),
(51, 'fee_assign_update', 'Update', 'web', '13', 'Fee Assign', '2020-08-18 10:59:22', NULL),
(52, 'fee_assign_delete', 'Delete', 'web', '13', 'Fee Assign', '2020-08-18 10:59:22', NULL),
(53, 'fee_assign_student_list', 'Student List', 'web', '13', 'Fee Assign', '2020-08-18 10:59:22', NULL),
(54, 'student_attendance_view', 'Student Attendance', 'web', '14', 'Attendance', '2020-08-18 10:59:22', NULL),
(55, 'staff_attendance_view', 'Staff Attendance', 'web', '14', 'Attendance', '2020-08-18 10:59:22', NULL),
(56, 'class_attendance_view', 'Class Attendance', 'web', '14', 'Attendance', '2020-08-18 10:59:22', NULL),
(57, 'fee_view', 'Fee Collection View', 'web', '15', 'Fee Collection', '2020-08-18 10:59:22', NULL),
(58, 'fee_collect', 'Fee Collect', 'web', '15', 'Fee Collection', '2020-08-18 10:59:22', NULL),
(59, 'student_pay_fee', 'Student Pay Fee', 'web', '15', 'Fee Collection', '2020-08-18 10:59:22', NULL),
(60, 'upload_videos', 'Upload Videos', 'web', '16', 'Video Upload', '2020-08-18 10:59:22', NULL),
(61, 'view_videos', 'View Videos', 'web', '16', 'Video Upload', '2020-08-18 10:59:22', NULL),
(62, 'preparation_type_view', 'View', 'web', '17', 'Preparation Type', '2020-08-18 10:59:22', NULL),
(63, 'preparation_type_create', 'Create', 'web', '17', 'Preparation Type', '2020-08-18 10:59:22', NULL),
(64, 'preparation_type_update', 'Update', 'web', '17', 'Preparation Type', '2020-08-18 10:59:22', NULL),
(65, 'preparation_type_delete', 'Delete', 'web', '17', 'Preparation Type', '2020-08-18 10:59:22', NULL),
(66, 'questions_type_view', 'View', 'web', '18', 'Question Type', '2020-08-18 10:59:22', NULL),
(67, 'questions_type_create', 'Create', 'web', '18', 'Question Type', '2020-08-18 10:59:22', NULL),
(68, 'questions_type_update', 'Update', 'web', '18', 'Question Type', '2020-08-18 10:59:22', NULL),
(69, 'questions_type_delete', 'Delete', 'web', '18', 'Question Type', '2020-08-18 10:59:22', NULL),
(70, 'questions_model_view', 'View', 'web', '19', 'Question Modal', '2020-08-18 10:59:22', NULL),
(71, 'questions_model_create', 'Create', 'web', '19', 'Question Modal', '2020-08-18 10:59:22', NULL),
(72, 'questions_model_update', 'Update', 'web', '19', 'Question Modal', '2020-08-18 10:59:22', NULL),
(73, 'questions_model_delete', 'Delete', 'web', '19', 'Question Modal', '2020-08-18 10:59:22', NULL),
(74, 'years_view', 'View', 'web', '20', 'Year', '2020-08-18 10:59:22', NULL),
(75, 'years_create', 'Create', 'web', '20', 'Year', '2020-08-18 10:59:22', NULL),
(76, 'years_update', 'Update', 'web', '20', 'Year', '2020-08-18 10:59:22', NULL),
(77, 'years_delete', 'Delete', 'web', '20', 'Year', '2020-08-18 10:59:22', NULL),
(78, 'chapter_view', 'View', 'web', '21', 'Chapter', '2020-08-18 10:59:22', NULL),
(79, 'chapter_create', 'Create', 'web', '21', 'Chapter', '2020-08-18 10:59:22', NULL),
(80, 'chapter_update', 'Update', 'web', '21', 'Chapter', '2020-08-18 10:59:22', NULL),
(81, 'chapter_delete', 'Delete', 'web', '21', 'Chapter', '2020-08-18 10:59:22', NULL),
(82, 'segregation_view', 'View', 'web', '22', 'Segregation', '2020-08-18 10:59:22', NULL),
(83, 'segregation_create', 'Create', 'web', '22', 'Segregation', '2020-08-18 10:59:22', NULL),
(84, 'segregation_update', 'Update', 'web', '22', 'Segregation', '2020-08-18 10:59:22', NULL),
(85, 'segregation_delete', 'Delete', 'web', '22', 'Segregation', '2020-08-18 10:59:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preparation_types`
--

CREATE TABLE `preparation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preparation_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preparation_types`
--

INSERT INTO `preparation_types` (`id`, `preparation_type`, `created_at`, `updated_at`) VALUES
(1, 'Creative', '2020-08-18 16:19:53', '2020-08-18 16:19:53'),
(2, 'Book Back', '2020-08-18 16:20:01', '2020-08-18 16:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `questions` (`id`, `chapter_id`, `preparation_type_id`, `question_type_id`, `segregation_id`, `question_name`, `answer_option`, `answer`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 1, 1, '<p>1 + 1 = 2?</p>', NULL, 'a:1:{i:0;s:4:\"true\";}', '2020-08-19 12:17:07', '2020-08-19 12:17:07'),
(9, 1, 2, 1, 1, '<p>2 == 2?</p>', NULL, 'a:1:{i:0;s:4:\"true\";}', '2020-08-19 12:17:24', '2020-08-19 12:17:24'),
(10, 1, 1, 1, 1, '<p>1 ==3</p>', NULL, 'a:1:{i:0;s:5:\"false\";}', '2020-08-19 12:17:38', '2020-08-19 12:17:38'),
(11, 2, 2, 1, 1, '<p>2 * 2 = 4?</p>', NULL, 'a:1:{i:0;s:4:\"true\";}', '2020-08-19 12:17:58', '2020-08-19 12:17:58'),
(12, 1, 1, 2, 14, '<p>velocity is science</p>', NULL, 'a:1:{i:0;s:26:\"<p>yes.this is science</p>\";}', '2020-08-19 12:18:28', '2020-08-19 12:18:28'),
(13, 1, 1, 1, 2, '<p>vijay is good boy?</p>', 'a:2:{i:0;s:10:\"<p>yes</p>\";i:1;s:9:\"<p>No</p>\";}', 'a:1:{i:0;s:1:\"1\";}', '2020-08-19 12:19:05', '2020-08-19 12:19:05'),
(14, 1, 1, 1, 1, '<p>sdfsdf</p>', NULL, 'a:1:{i:0;s:4:\"true\";}', '2020-08-26 07:14:00', '2020-08-26 07:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `question_models`
--

CREATE TABLE `question_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_models`
--

INSERT INTO `question_models` (`id`, `question_model`, `created_at`, `updated_at`) VALUES
(1, 'Manual', '2020-08-18 16:25:31', '2020-08-18 16:25:31'),
(2, 'Blue Print', '2020-08-19 10:41:51', '2020-08-19 10:41:51'),
(3, 'AutoMatic', '2020-08-19 10:41:57', '2020-08-19 10:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `question_types`
--

CREATE TABLE `question_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_types`
--

INSERT INTO `question_types` (`id`, `question_type`, `is_default`, `created_at`, `updated_at`) VALUES
(1, '1 Mark', '1', '2020-08-18 10:59:22', '2020-08-18 10:59:22'),
(2, '2 Mark', '0', '2020-08-19 10:41:17', '2020-08-19 10:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `question_years`
--

CREATE TABLE `question_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) UNSIGNED NOT NULL,
  `preparation_type_id` bigint(20) UNSIGNED NOT NULL,
  `question_type_id` bigint(20) UNSIGNED NOT NULL,
  `segregation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_years`
--

INSERT INTO `question_years` (`id`, `question_id`, `chapter_id`, `preparation_type_id`, `question_type_id`, `segregation_id`, `year`, `created_at`, `updated_at`) VALUES
(11, 8, 1, 1, 1, 1, '0', '2020-08-19 12:17:07', '2020-08-19 12:17:07'),
(12, 9, 1, 2, 1, 1, '0', '2020-08-19 12:17:24', '2020-08-19 12:17:24'),
(13, 10, 1, 1, 1, 1, '0', '2020-08-19 12:17:38', '2020-08-19 12:17:38'),
(14, 11, 2, 2, 1, 1, '0', '2020-08-19 12:17:58', '2020-08-19 12:17:58'),
(15, 12, 1, 1, 2, 14, '0', '2020-08-19 12:18:28', '2020-08-19 12:18:28'),
(16, 13, 1, 1, 1, 2, '0', '2020-08-19 12:19:05', '2020-08-19 12:19:05'),
(17, 13, 1, 1, 1, 2, '2', '2020-08-19 12:19:05', '2020-08-19 12:19:05'),
(18, 14, 1, 1, 1, 1, '0', '2020-08-26 07:14:00', '2020-08-26 07:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '1', '2020-08-18 10:59:22', '2020-08-18 10:59:22'),
(2, 'Admin', 'web', '0', '2020-08-18 10:59:22', '2020-08-18 10:59:22'),
(3, 'Staff', 'web', '0', '2020-08-18 10:59:22', '2020-08-18 10:59:22'),
(4, 'Student', 'web', '0', '2020-08-18 10:59:22', '2020-08-18 10:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(57, 4),
(58, 1),
(58, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2);

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_acadamics`
--

CREATE TABLE `scholarship_acadamics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acadamic_scholarship_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acadamic_fees_concertion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_percentage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zonal_scholarship_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zonal_particulars` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zonal_fees_concertion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `segregations`
--

CREATE TABLE `segregations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_type_id` bigint(20) UNSIGNED NOT NULL,
  `segregation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `segregations`
--

INSERT INTO `segregations` (`id`, `question_type_id`, `segregation`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'True or False', '1', '2020-08-18 10:59:22', '2020-08-18 10:59:22'),
(2, 1, 'Choose the best answer', '1', '2020-08-18 10:59:22', '2020-08-18 10:59:22'),
(14, 2, '2 Mark', '0', '2020-08-19 10:41:32', '2020-08-19 10:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_fee_for_institution` int(11) NOT NULL,
  `staff_grace_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_grace_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `share_screen_files`
--

CREATE TABLE `share_screen_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id_no`, `staff_name`, `dob`, `qualification`, `mobile_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 'tts_001', 'Narmatha', '1995-01-01', 'BE', '0000000000', '1@gmail.com', '2020-08-18 16:18:15', '2020-08-18 16:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendances`
--

CREATE TABLE `staff_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_schedule_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_schedule_classes`
--

CREATE TABLE `staff_schedule_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_schedule_classes`
--

INSERT INTO `staff_schedule_classes` (`id`, `staff_id`, `class`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEEE', 1, '2020-08-18 16:19:24', '2020-08-18 16:19:24'),
(2, 1, 'DEEE', 1, '2020-08-29 10:18:19', '2020-08-29 10:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `staff_schedule_subject_details`
--

CREATE TABLE `staff_schedule_subject_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_schedule_class_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `subject_day` date NOT NULL,
  `from_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_schedule_subject_details`
--

INSERT INTO `staff_schedule_subject_details` (`id`, `staff_schedule_class_id`, `class`, `section_id`, `staff_id`, `subject_id`, `subject_day`, `from_time`, `to_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEEE', 1, 1, 1, '2020-08-18', '21:49', '23:49', '2020-08-18 16:19:24', '2020-08-18 16:19:24'),
(2, 2, 'DEEE', 1, 1, 1, '2020-08-29', '16:48', '17:48', '2020-08-29 10:18:19', '2020-08-29 10:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `staff_subject_assigns`
--

CREATE TABLE `staff_subject_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `subjects` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_subject_assigns`
--

INSERT INTO `staff_subject_assigns` (`id`, `staff_id`, `class`, `section_id`, `subjects`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEEE', 1, 1, '2020-08-18 16:19:05', '2020-08-18 16:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `dob` date NOT NULL,
  `country_code` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsible` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_fee_date` date NOT NULL DEFAULT '2020-08-18',
  `status` int(11) NOT NULL DEFAULT 0,
  `online_status` int(11) NOT NULL DEFAULT 0,
  `photo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `student_class`, `section_id`, `dob`, `country_code`, `mobile_number`, `email`, `gender`, `responsible`, `person_name`, `person_number`, `application_fee_date`, `status`, `online_status`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'boobalan', 'DEEE', 1, '2020-07-13', NULL, '08667804277', 'vijayempiretest@gmail.com', 'male', 'father', 'Sekar', '9787252130', '2020-08-18', 0, 0, NULL, '2020-08-18 16:18:48', '2020-08-18 16:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `student_assign_fees`
--

CREATE TABLE `student_assign_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_assign_fees_details`
--

CREATE TABLE `student_assign_fees_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_assign_fee_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `fee_group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_schedule_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_homework_lists`
--

CREATE TABLE `student_homework_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `homework_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submitted_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks_obtained` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homework_attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evaluated_on` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evaluated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `class`, `section_id`, `subject_name`, `created_at`, `updated_at`) VALUES
(1, 'DEEE', 1, 'Tamil', '2020-08-18 16:17:49', '2020-08-18 16:17:49'),
(2, 'DEEE', 1, 'English', '2020-08-19 16:33:14', '2020-08-19 16:33:14'),
(3, 'DCEE', 2, 'CSE', '2020-08-19 16:33:37', '2020-08-19 16:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_password_changed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `session_id`, `email_verified_at`, `password`, `user_id`, `user_type`, `country_code`, `mobile_number`, `is_password_changed`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'vle_admin', 'giriprasath7768@gmail.com', NULL, NULL, '$2y$10$u2YzeZdagsgdiNhYTcb.1OhvFZMckx.FT8yB4cUL1sjzPbXXFIUXy', '', 'super_admin', NULL, '9994785467', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Gopi', 'gopi@gmail.com', NULL, NULL, '$2y$10$6I/WlEPAxEPL478Ug8FRsOmSYHXOEkRd7J4bbLl6md.v3IjUhyQ/2', '', 'super_admin', NULL, '9876543210', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Vijay', 'vijay@gmail.com', 'hIb0yeO08NIZWrgBQH0gPh3k8eBkM9MLGUUqZr03', NULL, '$2y$10$NmWEP8CScKsIkS3ZvM9mAOSftrSeCA8YfQl7BVBLgnjv7olcF.uSK', '', 'super_admin', NULL, '0123456789', '0', NULL, NULL, '2020-08-29 09:51:25', NULL, NULL, NULL, NULL),
(4, 'Narmatha', 'narmatha@gmail.com', NULL, NULL, '$2y$10$8s5AU6OMffEIMtT1Vk.fn.NqmjV1DZRD8ttVJAjHvWl8RYs/MAFeK', '', 'super_admin', NULL, '9874563210', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Rubesh', 'rubesh@gmail.com', NULL, NULL, '$2y$10$QnkabM9JAxweQEoRLqjaMuKBpMygtXXWfEy7HIob5434jIazTn9Ru', '', 'super_admin', NULL, '0123654789', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Narmatha', '1@gmail.com', NULL, NULL, '$2y$10$yC0bPKWdKziYSePZrW17L./Y85y.CqVvLCpih5OMKsYk16CJT3cSy', '1', 'Staff', NULL, '0000000000', '0', NULL, '2020-08-18 16:18:15', '2020-08-18 16:18:15', NULL, NULL, NULL, NULL),
(7, 'boobalan', 'vijayempiretest@gmail.com', NULL, NULL, '$2y$10$rJhtC7uymPmKFRmdwdSZ5eFkyoIuYktqMt9Q6Dxnc1quc155rlVPy', '1', 'Student', NULL, '08667804277', '0', NULL, '2020-08-18 16:18:48', '2020-08-18 16:18:48', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Oct 2018', '2020-08-18 16:25:39', '2020-08-18 16:25:39'),
(2, 'Mar 2019', '2020-08-18 16:25:48', '2020-08-18 16:25:48'),
(3, 'Dec 2019', '2020-08-18 16:25:59', '2020-08-18 16:25:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `automatic_questions`
--
ALTER TABLE `automatic_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automatic_question_chapters`
--
ALTER TABLE `automatic_question_chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automatic_question_details`
--
ALTER TABLE `automatic_question_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter_details`
--
ALTER TABLE `chapter_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_assign_departments`
--
ALTER TABLE `fees_assign_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_assign_departments_fee_group_id_foreign` (`fee_group_id`),
  ADD KEY `fees_assign_departments_section_foreign` (`section`);

--
-- Indexes for table `fees_collections`
--
ALTER TABLE `fees_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_collections_student_id_foreign` (`student_id`),
  ADD KEY `fees_collections_section_id_foreign` (`section_id`),
  ADD KEY `fees_collections_fee_group_id_foreign` (`fee_group_id`);

--
-- Indexes for table `fees_groups`
--
ALTER TABLE `fees_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_groups_fee_type_foreign` (`fee_type`);

--
-- Indexes for table `fees_masters`
--
ALTER TABLE `fees_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_types`
--
ALTER TABLE `fees_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_types_fee_type_foreign` (`fee_type`);

--
-- Indexes for table `fee_group_type_details`
--
ALTER TABLE `fee_group_type_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_group_type_details_fee_group_type_id_foreign` (`fee_group_type_id`),
  ADD KEY `fee_group_type_details_fee_name_id_foreign` (`fee_name_id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `institutions_phone_number_1_unique` (`phone_number_1`),
  ADD UNIQUE KEY `institutions_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `onlineclass`
--
ALTER TABLE `onlineclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_fee_pay_details`
--
ALTER TABLE `online_fee_pay_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_fee_pay_details_fees_collection_id_foreign` (`fees_collection_id`),
  ADD KEY `online_fee_pay_details_student_id_foreign` (`student_id`),
  ADD KEY `online_fee_pay_details_section_id_foreign` (`section_id`),
  ADD KEY `online_fee_pay_details_fee_group_id_foreign` (`fee_group_id`);

--
-- Indexes for table `online_test_schedules`
--
ALTER TABLE `online_test_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preparation_types`
--
ALTER TABLE `preparation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_chapter_id_foreign` (`chapter_id`),
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
  ADD KEY `question_years_chapter_id_foreign` (`chapter_id`),
  ADD KEY `question_years_preparation_type_id_foreign` (`preparation_type_id`),
  ADD KEY `question_years_question_type_id_foreign` (`question_type_id`),
  ADD KEY `question_years_segregation_id_foreign` (`segregation_id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `scholarship_acadamics`
--
ALTER TABLE `scholarship_acadamics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `segregations`
--
ALTER TABLE `segregations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `segregations_question_type_id_foreign` (`question_type_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_screen_files`
--
ALTER TABLE `share_screen_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_mobile_number_unique` (`mobile_number`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- Indexes for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_schedule_classes`
--
ALTER TABLE `staff_schedule_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_schedule_classes_staff_id_foreign` (`staff_id`),
  ADD KEY `staff_schedule_classes_section_id_foreign` (`section_id`);

--
-- Indexes for table `staff_schedule_subject_details`
--
ALTER TABLE `staff_schedule_subject_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_schedule_subject_details_staff_schedule_class_id_foreign` (`staff_schedule_class_id`),
  ADD KEY `staff_schedule_subject_details_section_id_foreign` (`section_id`),
  ADD KEY `staff_schedule_subject_details_staff_id_foreign` (`staff_id`),
  ADD KEY `staff_schedule_subject_details_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `staff_subject_assigns`
--
ALTER TABLE `staff_subject_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_subject_assigns_staff_id_foreign` (`staff_id`),
  ADD KEY `staff_subject_assigns_section_id_foreign` (`section_id`),
  ADD KEY `staff_subject_assigns_subjects_foreign` (`subjects`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_mobile_number_unique` (`mobile_number`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD KEY `students_section_id_foreign` (`section_id`);

--
-- Indexes for table `student_assign_fees`
--
ALTER TABLE `student_assign_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_assign_fees_fee_group_id_foreign` (`fee_group_id`),
  ADD KEY `student_assign_fees_section_id_foreign` (`section_id`);

--
-- Indexes for table `student_assign_fees_details`
--
ALTER TABLE `student_assign_fees_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_assign_fees_details_student_assign_fee_id_foreign` (`student_assign_fee_id`),
  ADD KEY `student_assign_fees_details_student_id_foreign` (`student_id`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_homework_lists`
--
ALTER TABLE `student_homework_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_section_id_foreign` (`section_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_number_unique` (`mobile_number`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `automatic_questions`
--
ALTER TABLE `automatic_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `automatic_question_chapters`
--
ALTER TABLE `automatic_question_chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `automatic_question_details`
--
ALTER TABLE `automatic_question_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chapter_based_questions`
--
ALTER TABLE `chapter_based_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapter_details`
--
ALTER TABLE `chapter_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_assign_departments`
--
ALTER TABLE `fees_assign_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_collections`
--
ALTER TABLE `fees_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_groups`
--
ALTER TABLE `fees_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_masters`
--
ALTER TABLE `fees_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_types`
--
ALTER TABLE `fees_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_group_type_details`
--
ALTER TABLE `fee_group_type_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineclass`
--
ALTER TABLE `onlineclass`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_fee_pay_details`
--
ALTER TABLE `online_fee_pay_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_test_schedules`
--
ALTER TABLE `online_test_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `preparation_types`
--
ALTER TABLE `preparation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `question_models`
--
ALTER TABLE `question_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question_types`
--
ALTER TABLE `question_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question_years`
--
ALTER TABLE `question_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scholarship_acadamics`
--
ALTER TABLE `scholarship_acadamics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `segregations`
--
ALTER TABLE `segregations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_screen_files`
--
ALTER TABLE `share_screen_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_schedule_classes`
--
ALTER TABLE `staff_schedule_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_schedule_subject_details`
--
ALTER TABLE `staff_schedule_subject_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_subject_assigns`
--
ALTER TABLE `staff_subject_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_assign_fees`
--
ALTER TABLE `student_assign_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_assign_fees_details`
--
ALTER TABLE `student_assign_fees_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_homework_lists`
--
ALTER TABLE `student_homework_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fees_assign_departments`
--
ALTER TABLE `fees_assign_departments`
  ADD CONSTRAINT `fees_assign_departments_fee_group_id_foreign` FOREIGN KEY (`fee_group_id`) REFERENCES `fees_groups` (`id`),
  ADD CONSTRAINT `fees_assign_departments_section_foreign` FOREIGN KEY (`section`) REFERENCES `class_sections` (`id`);

--
-- Constraints for table `fees_collections`
--
ALTER TABLE `fees_collections`
  ADD CONSTRAINT `fees_collections_fee_group_id_foreign` FOREIGN KEY (`fee_group_id`) REFERENCES `fees_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fees_collections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fees_collections_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fees_groups`
--
ALTER TABLE `fees_groups`
  ADD CONSTRAINT `fees_groups_fee_type_foreign` FOREIGN KEY (`fee_type`) REFERENCES `fees_masters` (`id`);

--
-- Constraints for table `fees_types`
--
ALTER TABLE `fees_types`
  ADD CONSTRAINT `fees_types_fee_type_foreign` FOREIGN KEY (`fee_type`) REFERENCES `fees_masters` (`id`);

--
-- Constraints for table `fee_group_type_details`
--
ALTER TABLE `fee_group_type_details`
  ADD CONSTRAINT `fee_group_type_details_fee_group_type_id_foreign` FOREIGN KEY (`fee_group_type_id`) REFERENCES `fees_groups` (`id`),
  ADD CONSTRAINT `fee_group_type_details_fee_name_id_foreign` FOREIGN KEY (`fee_name_id`) REFERENCES `fees_types` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_fee_pay_details`
--
ALTER TABLE `online_fee_pay_details`
  ADD CONSTRAINT `online_fee_pay_details_fee_group_id_foreign` FOREIGN KEY (`fee_group_id`) REFERENCES `fees_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `online_fee_pay_details_fees_collection_id_foreign` FOREIGN KEY (`fees_collection_id`) REFERENCES `fees_collections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `online_fee_pay_details_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `online_fee_pay_details_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_preparation_type_id_foreign` FOREIGN KEY (`preparation_type_id`) REFERENCES `preparation_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_question_type_id_foreign` FOREIGN KEY (`question_type_id`) REFERENCES `question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_segregation_id_foreign` FOREIGN KEY (`segregation_id`) REFERENCES `segregations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_years`
--
ALTER TABLE `question_years`
  ADD CONSTRAINT `question_years_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_years_preparation_type_id_foreign` FOREIGN KEY (`preparation_type_id`) REFERENCES `preparation_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_years_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_years_question_type_id_foreign` FOREIGN KEY (`question_type_id`) REFERENCES `question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_years_segregation_id_foreign` FOREIGN KEY (`segregation_id`) REFERENCES `segregations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `segregations`
--
ALTER TABLE `segregations`
  ADD CONSTRAINT `segregations_question_type_id_foreign` FOREIGN KEY (`question_type_id`) REFERENCES `question_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_schedule_classes`
--
ALTER TABLE `staff_schedule_classes`
  ADD CONSTRAINT `staff_schedule_classes_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `class_sections` (`id`),
  ADD CONSTRAINT `staff_schedule_classes_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `staff_schedule_subject_details`
--
ALTER TABLE `staff_schedule_subject_details`
  ADD CONSTRAINT `staff_schedule_subject_details_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `class_sections` (`id`),
  ADD CONSTRAINT `staff_schedule_subject_details_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `staff_schedule_subject_details_staff_schedule_class_id_foreign` FOREIGN KEY (`staff_schedule_class_id`) REFERENCES `staff_schedule_classes` (`id`),
  ADD CONSTRAINT `staff_schedule_subject_details_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `staff_subject_assigns`
--
ALTER TABLE `staff_subject_assigns`
  ADD CONSTRAINT `staff_subject_assigns_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `class_sections` (`id`),
  ADD CONSTRAINT `staff_subject_assigns_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `staff_subject_assigns_subjects_foreign` FOREIGN KEY (`subjects`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `class_sections` (`id`);

--
-- Constraints for table `student_assign_fees`
--
ALTER TABLE `student_assign_fees`
  ADD CONSTRAINT `student_assign_fees_fee_group_id_foreign` FOREIGN KEY (`fee_group_id`) REFERENCES `fees_groups` (`id`),
  ADD CONSTRAINT `student_assign_fees_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `class_sections` (`id`);

--
-- Constraints for table `student_assign_fees_details`
--
ALTER TABLE `student_assign_fees_details`
  ADD CONSTRAINT `student_assign_fees_details_student_assign_fee_id_foreign` FOREIGN KEY (`student_assign_fee_id`) REFERENCES `student_assign_fees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_assign_fees_details_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `class_sections` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
