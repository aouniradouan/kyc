-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2021 at 07:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `job_id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `sname` text NOT NULL,
  `nationality` text NOT NULL,
  `birth_day` int(11) NOT NULL,
  `birth_month` int(11) NOT NULL,
  `birth_year` int(11) NOT NULL,
  `residence_country` text NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `postal_code` varchar(6) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(19) NOT NULL,
  `expierence` text NOT NULL,
  `resume` longtext NOT NULL,
  `gender` text NOT NULL,
  `cv_img` text NOT NULL,
  `certificate_img` text NOT NULL,
  `achievement_img` text NOT NULL,
  `accept_terms` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2021-08-13 11:48:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'http://localhost/kyc/admin/public/index.php/admin/logout', 'admin@crudbooster.com logout', '', 1, '2021-08-13 16:25:12', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'http://localhost/kyc/admin/public/index.php/admin/login', 'admin@demo.com login with IP Address ::1', '', 2, '2021-08-13 16:25:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(6, 'Job Requests', 'Route', 'AdminJobRequestsControllerGetIndex', NULL, 'fa fa-users', 0, 1, 0, 1, 4, '2021-08-13 13:42:19', NULL),
(7, 'Job Requests', 'Module', 'job-requests', 'normal', 'fa fa-folder-open', 0, 1, 0, 1, 2, '2021-08-13 14:06:51', '2021-08-13 14:51:32'),
(8, 'Job Posts', 'Route', 'AdminAddJobControllerGetIndex', 'normal', 'fa fa-plus-circle', 0, 1, 0, 1, 5, '2021-08-13 14:07:53', '2021-08-13 14:17:05'),
(9, 'Countries', 'Route', 'AdminCountriesControllerGetIndex', NULL, 'fa fa-map-marker', 0, 1, 0, 1, 6, '2021-08-13 14:22:29', NULL),
(10, 'Job List', 'Module', 'job-posts', 'normal', 'fa fa-list', 0, 1, 0, 1, 1, '2021-08-13 14:45:31', NULL),
(11, 'Countries', 'Module', 'countries', 'normal', 'fa fa-map-marker', 0, 1, 0, 1, 3, '2021-08-13 14:46:45', NULL),
(12, 'Job Requests', 'Statistic', 'statistic_builder/show/job-requests', 'normal', 'fa fa-line-chart', 0, 1, 1, 1, NULL, '2021-08-13 15:49:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(3, 2, 2),
(4, 3, 2),
(5, 4, 2),
(7, 5, 1),
(8, 6, 1),
(12, 8, 1),
(13, 9, 1),
(14, 10, 2),
(15, 11, 2),
(16, 7, 2),
(17, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2021-08-13 11:48:01', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2021-08-13 11:48:01', NULL, NULL),
(12, 'Job Applications', 'fa fa-envelope-o', 'jobapplications', 'applications', 'AdminJobApplicationsController', 0, 0, '2021-08-13 12:08:15', NULL, '2021-08-13 13:40:37'),
(13, 'Countries', 'fa fa-map-marker', 'countries', 'countries', 'AdminCountriesmanagmentController', 0, 0, '2021-08-13 13:27:52', NULL, '2021-08-13 13:40:17'),
(14, 'Job Requests', 'fa fa-users', 'job-requests', 'applications', 'AdminJobRequestsController', 0, 0, '2021-08-13 13:42:19', NULL, NULL),
(15, 'Job Posts', 'fa fa-plus-circle', 'job-posts', 'jobs', 'AdminAddJobController', 0, 0, '2021-08-13 14:07:53', NULL, NULL),
(16, 'Countries', 'fa fa-map-marker', 'countries', 'countries', 'AdminCountriesController', 0, 0, '2021-08-13 14:22:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-black', '2021-08-13 11:48:03', NULL),
(2, 'Admin', 0, 'skin-purple-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(27, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(40, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(41, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(42, 1, 1, 1, 1, 1, 2, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2021-08-13 11:48:01', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2021-08-13 11:48:01', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2021-08-13 11:48:01', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2021-08-13 11:48:01', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Joobi Panel', 'text', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2021-08-13 11:48:01', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2021-08-13 11:48:01', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2021-08-13 11:48:01', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Job Requests', 'job-requests', '2021-08-13 15:47:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'c828df156b5e021c371cb1ca7a2bfc20', 'table', 'area5', 0, NULL, '{\"name\":\"Applications\",\"sql\":\"select job_id, residence_country from applications\"}', '2021-08-13 13:05:36', NULL),
(3, 2, '92813c7c6134b04203155f5ca67725c7', 'table', 'area5', 0, NULL, '{\"name\":\"Job Requests\",\"sql\":\"SELECT fname,sname,email,phone FROM applications\"}', '2021-08-13 15:47:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$LUJgxDMqRDovc/d1AfpF9.bRNul1hY97Qkg71yG.EBPKShEc97fma', 1, '2021-08-13 11:48:01', NULL, 'Active'),
(2, 'Redwan Aouni', NULL, 'admin@demo.com', '$2y$10$LUJgxDMqRDovc/d1AfpF9.bRNul1hY97Qkg71yG.EBPKShEc97fma', 2, '2021-08-13 13:01:32', '2021-08-13 15:56:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_enName` varchar(100) NOT NULL DEFAULT '',
  `country_arName` varchar(100) NOT NULL DEFAULT '',
  `country_enNationality` varchar(100) NOT NULL DEFAULT '',
  `country_arNationality` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_code`, `country_enName`, `country_arName`, `country_enNationality`, `country_arNationality`, `status`) VALUES
('AF', 'Afghanistan', 'أفغانستان', 'Afghan', 'أفغانستاني', 1),
('AL', 'Albania', 'ألبانيا', 'Albanian', 'ألباني', 1),
('AX', 'Aland Islands', 'جزر آلاند', 'Aland Islander', 'آلاندي', 1),
('DZ', 'Algeria', 'الجزائر', 'Algerian', 'جزائري', 1),
('AS', 'American Samoa', 'ساموا-الأمريكي', 'American Samoan', 'أمريكي سامواني', 1),
('AD', 'Andorra', 'أندورا', 'Andorran', 'أندوري', 1),
('AO', 'Angola', 'أنغولا', 'Angolan', 'أنقولي', 1),
('AI', 'Anguilla', 'أنغويلا', 'Anguillan', 'أنغويلي', 1),
('AQ', 'Antarctica', 'أنتاركتيكا', 'Antarctican', 'أنتاركتيكي', 1),
('AG', 'Antigua and Barbuda', 'أنتيغوا وبربودا', 'Antiguan', 'بربودي', 1),
('AR', 'Argentina', 'الأرجنتين', 'Argentinian', 'أرجنتيني', 1),
('AM', 'Armenia', 'أرمينيا', 'Armenian', 'أرميني', 1),
('AW', 'Aruba', 'أروبه', 'Aruban', 'أوروبهيني', 1),
('AU', 'Australia', 'أستراليا', 'Australian', 'أسترالي', 1),
('AT', 'Austria', 'النمسا', 'Austrian', 'نمساوي', 1),
('AZ', 'Azerbaijan', 'أذربيجان', 'Azerbaijani', 'أذربيجاني', 1),
('BS', 'Bahamas', 'الباهاماس', 'Bahamian', 'باهاميسي', 1),
('BH', 'Bahrain', 'البحرين', 'Bahraini', 'بحريني', 1),
('BD', 'Bangladesh', 'بنغلاديش', 'Bangladeshi', 'بنغلاديشي', 1),
('BB', 'Barbados', 'بربادوس', 'Barbadian', 'بربادوسي', 1),
('BY', 'Belarus', 'روسيا البيضاء', 'Belarusian', 'روسي', 1),
('BE', 'Belgium', 'بلجيكا', 'Belgian', 'بلجيكي', 1),
('BZ', 'Belize', 'بيليز', 'Belizean', 'بيليزي', 1),
('BJ', 'Benin', 'بنين', 'Beninese', 'بنيني', 1),
('BL', 'Saint Barthelemy', 'سان بارتيلمي', 'Saint Barthelmian', 'سان بارتيلمي', 1),
('BM', 'Bermuda', 'جزر برمودا', 'Bermudan', 'برمودي', 1),
('BT', 'Bhutan', 'بوتان', 'Bhutanese', 'بوتاني', 1),
('BO', 'Bolivia', 'بوليفيا', 'Bolivian', 'بوليفي', 1),
('BA', 'Bosnia and Herzegovina', 'البوسنة و الهرسك', 'Bosnian / Herzegovinian', 'بوسني/هرسكي', 1),
('BW', 'Botswana', 'بوتسوانا', 'Botswanan', 'بوتسواني', 1),
('BV', 'Bouvet Island', 'جزيرة بوفيه', 'Bouvetian', 'بوفيهي', 1),
('BR', 'Brazil', 'البرازيل', 'Brazilian', 'برازيلي', 1),
('IO', 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني', 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني', 1),
('BN', 'Brunei Darussalam', 'بروني', 'Bruneian', 'بروني', 1),
('BG', 'Bulgaria', 'بلغاريا', 'Bulgarian', 'بلغاري', 1),
('BF', 'Burkina Faso', 'بوركينا فاسو', 'Burkinabe', 'بوركيني', 1),
('BI', 'Burundi', 'بوروندي', 'Burundian', 'بورونيدي', 1),
('KH', 'Cambodia', 'كمبوديا', 'Cambodian', 'كمبودي', 1),
('CM', 'Cameroon', 'كاميرون', 'Cameroonian', 'كاميروني', 1),
('CA', 'Canada', 'كندا', 'Canadian', 'كندي', 1),
('CV', 'Cape Verde', 'الرأس الأخضر', 'Cape Verdean', 'الرأس الأخضر', 1),
('KY', 'Cayman Islands', 'جزر كايمان', 'Caymanian', 'كايماني', 1),
('CF', 'Central African Republic', 'جمهورية أفريقيا الوسطى', 'Central African', 'أفريقي', 1),
('TD', 'Chad', 'تشاد', 'Chadian', 'تشادي', 1),
('CL', 'Chile', 'شيلي', 'Chilean', 'شيلي', 1),
('CN', 'China', 'الصين', 'Chinese', 'صيني', 1),
('CX', 'Christmas Island', 'جزيرة عيد الميلاد', 'Christmas Islander', 'جزيرة عيد الميلاد', 1),
('CC', 'Cocos (Keeling) Islands', 'جزر كوكوس', 'Cocos Islander', 'جزر كوكوس', 1),
('CO', 'Colombia', 'كولومبيا', 'Colombian', 'كولومبي', 1),
('KM', 'Comoros', 'جزر القمر', 'Comorian', 'جزر القمر', 1),
('CG', 'Congo', 'الكونغو', 'Congolese', 'كونغي', 1),
('CK', 'Cook Islands', 'جزر كوك', 'Cook Islander', 'جزر كوك', 1),
('CR', 'Costa Rica', 'كوستاريكا', 'Costa Rican', 'كوستاريكي', 1),
('HR', 'Croatia', 'كرواتيا', 'Croatian', 'كوراتي', 1),
('CU', 'Cuba', 'كوبا', 'Cuban', 'كوبي', 1),
('CY', 'Cyprus', 'قبرص', 'Cypriot', 'قبرصي', 1),
('CW', 'Curaçao', 'كوراساو', 'Curacian', 'كوراساوي', 1),
('CZ', 'Czech Republic', 'الجمهورية التشيكية', 'Czech', 'تشيكي', 1),
('DK', 'Denmark', 'الدانمارك', 'Danish', 'دنماركي', 1),
('DJ', 'Djibouti', 'جيبوتي', 'Djiboutian', 'جيبوتي', 1),
('DM', 'Dominica', 'دومينيكا', 'Dominican', 'دومينيكي', 1),
('DO', 'Dominican Republic', 'الجمهورية الدومينيكية', 'Dominican', 'دومينيكي', 1),
('EC', 'Ecuador', 'إكوادور', 'Ecuadorian', 'إكوادوري', 1),
('EG', 'Egypt', 'مصر', 'Egyptian', 'مصري', 1),
('SV', 'El Salvador', 'إلسلفادور', 'Salvadoran', 'سلفادوري', 1),
('GQ', 'Equatorial Guinea', 'غينيا الاستوائي', 'Equatorial Guinean', 'غيني', 1),
('ER', 'Eritrea', 'إريتريا', 'Eritrean', 'إريتيري', 1),
('EE', 'Estonia', 'استونيا', 'Estonian', 'استوني', 1),
('ET', 'Ethiopia', 'أثيوبيا', 'Ethiopian', 'أثيوبي', 1),
('FK', 'Falkland Islands (Malvinas)', 'جزر فوكلاند', 'Falkland Islander', 'فوكلاندي', 1),
('FO', 'Faroe Islands', 'جزر فارو', 'Faroese', 'جزر فارو', 1),
('FJ', 'Fiji', 'فيجي', 'Fijian', 'فيجي', 1),
('FI', 'Finland', 'فنلندا', 'Finnish', 'فنلندي', 1),
('FR', 'France', 'فرنسا', 'French', 'فرنسي', 1),
('GF', 'French Guiana', 'غويانا الفرنسية', 'French Guianese', 'غويانا الفرنسية', 1),
('PF', 'French Polynesia', 'بولينيزيا الفرنسية', 'French Polynesian', 'بولينيزيي', 1),
('TF', 'French Southern and Antarctic Lands', 'أراض فرنسية جنوبية وأنتارتيكية', 'French', 'أراض فرنسية جنوبية وأنتارتيكية', 1),
('GA', 'Gabon', 'الغابون', 'Gabonese', 'غابوني', 1),
('GM', 'Gambia', 'غامبيا', 'Gambian', 'غامبي', 1),
('GE', 'Georgia', 'جيورجيا', 'Georgian', 'جيورجي', 1),
('DE', 'Germany', 'ألمانيا', 'German', 'ألماني', 1),
('GH', 'Ghana', 'غانا', 'Ghanaian', 'غاني', 1),
('GI', 'Gibraltar', 'جبل طارق', 'Gibraltar', 'جبل طارق', 1),
('GG', 'Guernsey', 'غيرنزي', 'Guernsian', 'غيرنزي', 1),
('GR', 'Greece', 'اليونان', 'Greek', 'يوناني', 1),
('GL', 'Greenland', 'جرينلاند', 'Greenlandic', 'جرينلاندي', 1),
('GD', 'Grenada', 'غرينادا', 'Grenadian', 'غرينادي', 1),
('GP', 'Guadeloupe', 'جزر جوادلوب', 'Guadeloupe', 'جزر جوادلوب', 1),
('GU', 'Guam', 'جوام', 'Guamanian', 'جوامي', 1),
('GT', 'Guatemala', 'غواتيمال', 'Guatemalan', 'غواتيمالي', 1),
('GN', 'Guinea', 'غينيا', 'Guinean', 'غيني', 1),
('GW', 'Guinea-Bissau', 'غينيا-بيساو', 'Guinea-Bissauan', 'غيني', 1),
('GY', 'Guyana', 'غيانا', 'Guyanese', 'غياني', 1),
('HT', 'Haiti', 'هايتي', 'Haitian', 'هايتي', 1),
('HM', 'Heard and Mc Donald Islands', 'جزيرة هيرد وجزر ماكدونالد', 'Heard and Mc Donald Islanders', 'جزيرة هيرد وجزر ماكدونالد', 1),
('HN', 'Honduras', 'هندوراس', 'Honduran', 'هندوراسي', 1),
('HK', 'Hong Kong', 'هونغ كونغ', 'Hongkongese', 'هونغ كونغي', 1),
('HU', 'Hungary', 'المجر', 'Hungarian', 'مجري', 1),
('IS', 'Iceland', 'آيسلندا', 'Icelandic', 'آيسلندي', 1),
('IN', 'India', 'الهند', 'Indian', 'هندي', 1),
('IM', 'Isle of Man', 'جزيرة مان', 'Manx', 'ماني', 1),
('ID', 'Indonesia', 'أندونيسيا', 'Indonesian', 'أندونيسيي', 1),
('IR', 'Iran', 'إيران', 'Iranian', 'إيراني', 1),
('IQ', 'Iraq', 'العراق', 'Iraqi', 'عراقي', 1),
('IE', 'Ireland', 'إيرلندا', 'Irish', 'إيرلندي', 1),
('IL', 'Israel', 'إسرائيل', 'Israeli', 'إسرائيلي', 1),
('IT', 'Italy', 'إيطاليا', 'Italian', 'إيطالي', 1),
('CI', 'Ivory Coast', 'ساحل العاج', 'Ivory Coastian', 'ساحل العاج', 1),
('JE', 'Jersey', 'جيرزي', 'Jersian', 'جيرزي', 1),
('JM', 'Jamaica', 'جمايكا', 'Jamaican', 'جمايكي', 1),
('JP', 'Japan', 'اليابان', 'Japanese', 'ياباني', 1),
('JO', 'Jordan', 'الأردن', 'Jordanian', 'أردني', 1),
('KZ', 'Kazakhstan', 'كازاخستان', 'Kazakh', 'كازاخستاني', 1),
('KE', 'Kenya', 'كينيا', 'Kenyan', 'كيني', 1),
('KI', 'Kiribati', 'كيريباتي', 'I-Kiribati', 'كيريباتي', 1),
('KP', 'Korea(North Korea)', 'كوريا الشمالية', 'North Korean', 'كوري', 1),
('KR', 'Korea(South Korea)', 'كوريا الجنوبية', 'South Korean', 'كوري', 1),
('XK', 'Kosovo', 'كوسوفو', 'Kosovar', 'كوسيفي', 1),
('KW', 'Kuwait', 'الكويت', 'Kuwaiti', 'كويتي', 1),
('KG', 'Kyrgyzstan', 'قيرغيزستان', 'Kyrgyzstani', 'قيرغيزستاني', 1),
('LA', 'Lao PDR', 'لاوس', 'Laotian', 'لاوسي', 1),
('LV', 'Latvia', 'لاتفيا', 'Latvian', 'لاتيفي', 1),
('LB', 'Lebanon', 'لبنان', 'Lebanese', 'لبناني', 1),
('LS', 'Lesotho', 'ليسوتو', 'Basotho', 'ليوسيتي', 1),
('LR', 'Liberia', 'ليبيريا', 'Liberian', 'ليبيري', 1),
('LY', 'Libya', 'ليبيا', 'Libyan', 'ليبي', 1),
('LI', 'Liechtenstein', 'ليختنشتين', 'Liechtenstein', 'ليختنشتيني', 1),
('LT', 'Lithuania', 'لتوانيا', 'Lithuanian', 'لتوانيي', 1),
('LU', 'Luxembourg', 'لوكسمبورغ', 'Luxembourger', 'لوكسمبورغي', 1),
('LK', 'Sri Lanka', 'سريلانكا', 'Sri Lankian', 'سريلانكي', 1),
('MO', 'Macau', 'ماكاو', 'Macanese', 'ماكاوي', 1),
('MK', 'Macedonia', 'مقدونيا', 'Macedonian', 'مقدوني', 1),
('MG', 'Madagascar', 'مدغشقر', 'Malagasy', 'مدغشقري', 1),
('MW', 'Malawi', 'مالاوي', 'Malawian', 'مالاوي', 1),
('MY', 'Malaysia', 'ماليزيا', 'Malaysian', 'ماليزي', 1),
('MV', 'Maldives', 'المالديف', 'Maldivian', 'مالديفي', 1),
('ML', 'Mali', 'مالي', 'Malian', 'مالي', 1),
('MT', 'Malta', 'مالطا', 'Maltese', 'مالطي', 1),
('MH', 'Marshall Islands', 'جزر مارشال', 'Marshallese', 'مارشالي', 1),
('MQ', 'Martinique', 'مارتينيك', 'Martiniquais', 'مارتينيكي', 1),
('MR', 'Mauritania', 'موريتانيا', 'Mauritanian', 'موريتانيي', 1),
('MU', 'Mauritius', 'موريشيوس', 'Mauritian', 'موريشيوسي', 1),
('YT', 'Mayotte', 'مايوت', 'Mahoran', 'مايوتي', 1),
('MX', 'Mexico', 'المكسيك', 'Mexican', 'مكسيكي', 1),
('FM', 'Micronesia', 'مايكرونيزيا', 'Micronesian', 'مايكرونيزيي', 1),
('MD', 'Moldova', 'مولدافيا', 'Moldovan', 'مولديفي', 1),
('MC', 'Monaco', 'موناكو', 'Monacan', 'مونيكي', 1),
('MN', 'Mongolia', 'منغوليا', 'Mongolian', 'منغولي', 1),
('ME', 'Montenegro', 'الجبل الأسود', 'Montenegrin', 'الجبل الأسود', 1),
('MS', 'Montserrat', 'مونتسيرات', 'Montserratian', 'مونتسيراتي', 1),
('MA', 'Morocco', 'المغرب', 'Moroccan', 'مغربي', 1),
('MZ', 'Mozambique', 'موزمبيق', 'Mozambican', 'موزمبيقي', 1),
('MM', 'Myanmar', 'ميانمار', 'Myanmarian', 'ميانماري', 1),
('NA', 'Namibia', 'ناميبيا', 'Namibian', 'ناميبي', 1),
('NR', 'Nauru', 'نورو', 'Nauruan', 'نوري', 1),
('NP', 'Nepal', 'نيبال', 'Nepalese', 'نيبالي', 1),
('NL', 'Netherlands', 'هولندا', 'Dutch', 'هولندي', 1),
('AN', 'Netherlands Antilles', 'جزر الأنتيل الهولندي', 'Dutch Antilier', 'هولندي', 1),
('NC', 'New Caledonia', 'كاليدونيا الجديدة', 'New Caledonian', 'كاليدوني', 1),
('NZ', 'New Zealand', 'نيوزيلندا', 'New Zealander', 'نيوزيلندي', 1),
('NI', 'Nicaragua', 'نيكاراجوا', 'Nicaraguan', 'نيكاراجوي', 1),
('NE', 'Niger', 'النيجر', 'Nigerien', 'نيجيري', 1),
('NG', 'Nigeria', 'نيجيريا', 'Nigerian', 'نيجيري', 1),
('NU', 'Niue', 'ني', 'Niuean', 'ني', 1),
('NF', 'Norfolk Island', 'جزيرة نورفولك', 'Norfolk Islander', 'نورفوليكي', 1),
('MP', 'Northern Mariana Islands', 'جزر ماريانا الشمالية', 'Northern Marianan', 'ماريني', 1),
('NO', 'Norway', 'النرويج', 'Norwegian', 'نرويجي', 1),
('OM', 'Oman', 'عمان', 'Omani', 'عماني', 1),
('PK', 'Pakistan', 'باكستان', 'Pakistani', 'باكستاني', 1),
('PW', 'Palau', 'بالاو', 'Palauan', 'بالاوي', 1),
('PS', 'Palestine', 'فلسطين', 'Palestinian', 'فلسطيني', 1),
('PA', 'Panama', 'بنما', 'Panamanian', 'بنمي', 1),
('PG', 'Papua New Guinea', 'بابوا غينيا الجديدة', 'Papua New Guinean', 'بابوي', 1),
('PY', 'Paraguay', 'باراغواي', 'Paraguayan', 'بارغاوي', 1),
('PE', 'Peru', 'بيرو', 'Peruvian', 'بيري', 1),
('PH', 'Philippines', 'الفليبين', 'Filipino', 'فلبيني', 1),
('PN', 'Pitcairn', 'بيتكيرن', 'Pitcairn Islander', 'بيتكيرني', 1),
('PL', 'Poland', 'بولندا', 'Polish', 'بولندي', 1),
('PT', 'Portugal', 'البرتغال', 'Portuguese', 'برتغالي', 1),
('PR', 'Puerto Rico', 'بورتو ريكو', 'Puerto Rican', 'بورتي', 1),
('QA', 'Qatar', 'قطر', 'Qatari', 'قطري', 1),
('RE', 'Reunion Island', 'ريونيون', 'Reunionese', 'ريونيوني', 1),
('RO', 'Romania', 'رومانيا', 'Romanian', 'روماني', 1),
('RU', 'Russian', 'روسيا', 'Russian', 'روسي', 1),
('RW', 'Rwanda', 'رواندا', 'Rwandan', 'رواندا', 1),
('KN', 'Saint Kitts and Nevis', 'سانت كيتس ونيفس,', 'Kittitian/Nevisian', 'سانت كيتس ونيفس', 1),
('MF', 'Saint Martin (French part)', 'ساينت مارتن فرنسي', 'St. Martian(French)', 'ساينت مارتني فرنسي', 1),
('SX', 'Sint Maarten (Dutch part)', 'ساينت مارتن هولندي', 'St. Martian(Dutch)', 'ساينت مارتني هولندي', 1),
('LC', 'Saint Pierre and Miquelon', 'سان بيير وميكلون', 'St. Pierre and Miquelon', 'سان بيير وميكلوني', 1),
('VC', 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين', 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين', 1),
('WS', 'Samoa', 'ساموا', 'Samoan', 'ساموي', 1),
('SM', 'San Marino', 'سان مارينو', 'Sammarinese', 'ماريني', 1),
('ST', 'Sao Tome and Principe', 'ساو تومي وبرينسيبي', 'Sao Tomean', 'ساو تومي وبرينسيبي', 1),
('SA', 'Saudi Arabia', 'المملكة العربية السعودية', 'Saudi Arabian', 'سعودي', 1),
('SN', 'Senegal', 'السنغال', 'Senegalese', 'سنغالي', 1),
('RS', 'Serbia', 'صربيا', 'Serbian', 'صربي', 1),
('SC', 'Seychelles', 'سيشيل', 'Seychellois', 'سيشيلي', 1),
('SL', 'Sierra Leone', 'سيراليون', 'Sierra Leonean', 'سيراليوني', 1),
('SG', 'Singapore', 'سنغافورة', 'Singaporean', 'سنغافوري', 1),
('SK', 'Slovakia', 'سلوفاكيا', 'Slovak', 'سولفاكي', 1),
('SI', 'Slovenia', 'سلوفينيا', 'Slovenian', 'سولفيني', 1),
('SB', 'Solomon Islands', 'جزر سليمان', 'Solomon Island', 'جزر سليمان', 1),
('SO', 'Somalia', 'الصومال', 'Somali', 'صومالي', 1),
('ZA', 'South Africa', 'جنوب أفريقيا', 'South African', 'أفريقي', 1),
('GS', 'South Georgia and the South Sandwich', 'المنطقة القطبية الجنوبية', 'South Georgia and the South Sandwich', 'لمنطقة القطبية الجنوبية', 1),
('SS', 'South Sudan', 'السودان الجنوبي', 'South Sudanese', 'سوادني جنوبي', 1),
('ES', 'Spain', 'إسبانيا', 'Spanish', 'إسباني', 1),
('SH', 'Saint Helena', 'سانت هيلانة', 'St. Helenian', 'هيلاني', 1),
('SD', 'Sudan', 'السودان', 'Sudanese', 'سوداني', 1),
('SR', 'Suriname', 'سورينام', 'Surinamese', 'سورينامي', 1),
('SJ', 'Svalbard and Jan Mayen', 'سفالبارد ويان ماين', 'Svalbardian/Jan Mayenian', 'سفالبارد ويان ماين', 1),
('SZ', 'Swaziland', 'سوازيلند', 'Swazi', 'سوازيلندي', 1),
('SE', 'Sweden', 'السويد', 'Swedish', 'سويدي', 1),
('CH', 'Switzerland', 'سويسرا', 'Swiss', 'سويسري', 1),
('SY', 'Syria', 'سوريا', 'Syrian', 'سوري', 1),
('TW', 'Taiwan', 'تايوان', 'Taiwanese', 'تايواني', 1),
('TJ', 'Tajikistan', 'طاجيكستان', 'Tajikistani', 'طاجيكستاني', 1),
('TZ', 'Tanzania', 'تنزانيا', 'Tanzanian', 'تنزانيي', 1),
('TH', 'Thailand', 'تايلندا', 'Thai', 'تايلندي', 1),
('TL', 'Timor-Leste', 'تيمور الشرقية', 'Timor-Lestian', 'تيموري', 1),
('TG', 'Togo', 'توغو', 'Togolese', 'توغي', 1),
('TK', 'Tokelau', 'توكيلاو', 'Tokelaian', 'توكيلاوي', 1),
('TO', 'Tonga', 'تونغا', 'Tongan', 'تونغي', 1),
('TT', 'Trinidad and Tobago', 'ترينيداد وتوباغو', 'Trinidadian/Tobagonian', 'ترينيداد وتوباغو', 1),
('TN', 'Tunisia', 'تونس', 'Tunisian', 'تونسي', 1),
('TR', 'Turkey', 'تركيا', 'Turkish', 'تركي', 1),
('TM', 'Turkmenistan', 'تركمانستان', 'Turkmen', 'تركمانستاني', 1),
('TC', 'Turks and Caicos Islands', 'جزر توركس وكايكوس', 'Turks and Caicos Islands', 'جزر توركس وكايكوس', 1),
('TV', 'Tuvalu', 'توفالو', 'Tuvaluan', 'توفالي', 1),
('UG', 'Uganda', 'أوغندا', 'Ugandan', 'أوغندي', 1),
('UA', 'Ukraine', 'أوكرانيا', 'Ukrainian', 'أوكراني', 1),
('AE', 'United Arab Emirates', 'الإمارات العربية المتحدة', 'Emirati', 'إماراتي', 1),
('GB', 'United Kingdom', 'المملكة المتحدة', 'British', 'بريطاني', 1),
('US', 'United States', 'الولايات المتحدة', 'American', 'أمريكي', 1),
('UM', 'US Minor Outlying Islands', 'قائمة الولايات والمناطق الأمريكية', 'US Minor Outlying Islander', 'أمريكي', 1),
('UY', 'Uruguay', 'أورغواي', 'Uruguayan', 'أورغواي', 1),
('UZ', 'Uzbekistan', 'أوزباكستان', 'Uzbek', 'أوزباكستاني', 1),
('VU', 'Vanuatu', 'فانواتو', 'Vanuatuan', 'فانواتي', 1),
('VE', 'Venezuela', 'فنزويلا', 'Venezuelan', 'فنزويلي', 1),
('VN', 'Vietnam', 'فيتنام', 'Vietnamese', 'فيتنامي', 1),
('VI', 'Virgin Islands (U.S.)', 'الجزر العذراء الأمريكي', 'American Virgin Islander', 'أمريكي', 1),
('VA', 'Vatican City', 'فنزويلا', 'Vatican', 'فاتيكاني', 1),
('WF', 'Wallis and Futuna Islands', 'والس وفوتونا', 'Wallisian/Futunan', 'فوتوني', 1),
('EH', 'Western Sahara', 'الصحراء الغربية', 'Sahrawian', 'صحراوي', 1),
('YE', 'Yemen', 'اليمن', 'Yemeni', 'يمني', 1),
('ZM', 'Zambia', 'زامبيا', 'Zambian', 'زامبياني', 1),
('ZW', 'Zimbabwe', 'زمبابوي', 'Zimbabwean', 'زمبابوي', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `short_description` longtext NOT NULL,
  `salary` varchar(20) NOT NULL,
  `work_type` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `short_description`, `salary`, `work_type`, `status`) VALUES
(3, 'Data Engineer', '<p style=\"margin-bottom: 11px; padding: 0px; overflow: hidden; float: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px;\">we provides world-class solutions for continuous code quality and security. help developers and organizations of all sizes to manage the quality &amp; security of their code, and ultimately deliver better software.&nbsp;</p><h3 style=\"margin: 33px 0px 11px; padding: 0px; overflow: hidden; font-size: 21px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">The Impact you can have</h3><p style=\"margin-bottom: 11px; padding: 0px; overflow: hidden; float: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px;\"></p><p style=\"margin-bottom: 11px; padding: 0px; overflow: hidden; float: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px;\">we are an online service to eliminate bugs and vulnerabilities, and champion quality code in the software development process</p><p style=\"margin-bottom: 11px; padding: 0px; overflow: hidden; float: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px;\">We want to make the best decisions we can for our products and in order to do that we want to make data-driven decisions.</p><p style=\"margin-bottom: 11px; padding: 0px; overflow: hidden; float: none; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 16px;\">To achieve this goal, we are looking for a talented Data Engineer - you! - to join the team.</p>', '2900', 'FULL', 1),
(4, 'Web Developer', 'Web Developer', '9800', 'PART', 1),
(5, 'Product Manager - Python Ecosystem', 'Product Manager Description', '4820', 'FULL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
