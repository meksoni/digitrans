-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2024 at 12:07 AM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 8.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitrans`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac_activities`
--

CREATE TABLE `ac_activities` (
  `id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`context`)),
  `timestamp` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `batch` varchar(191) DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  `resourceKey` varchar(191) NOT NULL,
  `resourceId` varchar(191) NOT NULL,
  `resourceLocale` varchar(191) DEFAULT NULL,
  `resourceWebspaceKey` varchar(191) DEFAULT NULL,
  `resourceTitle` varchar(191) DEFAULT NULL,
  `resourceTitleLocale` varchar(191) DEFAULT NULL,
  `resourceSecurityContext` varchar(191) DEFAULT NULL,
  `resourceSecurityObjectType` varchar(191) DEFAULT NULL,
  `resourceSecurityObjectId` varchar(191) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ac_activities`
--

INSERT INTO `ac_activities` (`id`, `type`, `context`, `timestamp`, `batch`, `payload`, `resourceKey`, `resourceId`, `resourceLocale`, `resourceWebspaceKey`, `resourceTitle`, `resourceTitleLocale`, `resourceSecurityContext`, `resourceSecurityObjectType`, `resourceSecurityObjectId`, `userId`) VALUES
(1, 'created', '[]', '2023-10-05 14:05:07', '651ec2935d20b3.99597048', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'Homepage', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', NULL),
(2, 'published', '[]', '2023-10-05 14:05:07', '651ec2935d20b3.99597048', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'Homepage', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', NULL),
(3, 'created', '[]', '2023-10-05 14:05:08', '651ec294521b16.22965466', NULL, 'collections', '1', 'en', NULL, 'System', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '1', NULL),
(4, 'created', '[]', '2023-10-05 14:05:08', '651ec2945d3944.61905865', NULL, 'collections', '2', 'en', NULL, 'Sulu media', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '2', NULL),
(5, 'translation_added', '[]', '2023-10-05 14:05:08', '651ec29465d572.95105766', NULL, 'collections', '2', 'de', NULL, 'Sulu Medien', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '2', NULL),
(6, 'created', '[]', '2023-10-05 14:05:08', '651ec2946f0c64.45440363', NULL, 'collections', '3', 'en', NULL, 'Preview images', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '3', NULL),
(7, 'translation_added', '[]', '2023-10-05 14:05:08', '651ec29475c5a5.38679730', NULL, 'collections', '3', 'de', NULL, 'Vorschaubilder', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '3', NULL),
(8, 'created', '[]', '2023-10-05 14:05:08', '651ec2947a1531.77746513', NULL, 'collections', '4', 'en', NULL, 'Sulu contacts', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '4', NULL),
(9, 'translation_added', '[]', '2023-10-05 14:05:08', '651ec2947f3632.49877009', NULL, 'collections', '4', 'de', NULL, 'Sulu Kontakte', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '4', NULL),
(10, 'created', '[]', '2023-10-05 14:05:08', '651ec2948a7c67.03796455', NULL, 'collections', '5', 'en', NULL, 'People', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '5', NULL),
(11, 'translation_added', '[]', '2023-10-05 14:05:08', '651ec2949c6373.18074776', NULL, 'collections', '5', 'de', NULL, 'Personen', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '5', NULL),
(12, 'created', '[]', '2023-10-05 14:05:08', '651ec294a3fb44.56599678', NULL, 'collections', '6', 'en', NULL, 'Organizations', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '6', NULL),
(13, 'translation_added', '[]', '2023-10-05 14:05:08', '651ec294aaab89.84536494', NULL, 'collections', '6', 'de', NULL, 'Organisationen', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '6', NULL),
(14, 'modified', '[]', '2023-10-10 11:51:32', '65253ac4e76b73.10224479', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(15, 'published', '[]', '2023-10-10 11:51:32', '65253ac4e76b73.10224479', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(16, 'modified', '[]', '2023-10-12 10:53:34', '6527d02e226764.98019694', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(17, 'published', '[]', '2023-10-12 10:53:34', '6527d02e226764.98019694', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(18, 'modified', '[]', '2023-10-12 11:00:06', '6527d1b6a54a17.16941654', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(19, 'published', '[]', '2023-10-12 11:00:06', '6527d1b6a54a17.16941654', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(20, 'modified', '[]', '2023-10-12 11:00:31', '6527d1cfeea945.06643946', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(21, 'published', '[]', '2023-10-12 11:00:31', '6527d1cfeea945.06643946', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(22, 'modified', '[]', '2023-10-12 11:07:48', '6527d3841d86c0.21252181', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(23, 'published', '[]', '2023-10-12 11:07:48', '6527d3841d86c0.21252181', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(24, 'modified', '[]', '2023-10-12 12:30:37', '6527e6ed7a5c73.37336820', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(25, 'published', '[]', '2023-10-12 12:30:37', '6527e6ed7a5c73.37336820', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(26, 'modified', '[]', '2023-10-12 13:21:49', '6527f2ee088a04.22033840', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(27, 'published', '[]', '2023-10-12 13:21:50', '6527f2ee088a04.22033840', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(28, 'modified', '[]', '2023-10-12 13:24:52', '6527f3a4874452.86194052', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(29, 'published', '[]', '2023-10-12 13:24:52', '6527f3a4874452.86194052', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(30, 'modified', '[]', '2023-10-12 13:27:14', '6527f432bb4fc0.74843207', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(31, 'published', '[]', '2023-10-12 13:27:14', '6527f432bb4fc0.74843207', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(32, 'modified', '[]', '2023-10-12 13:35:46', '6527f6324024e4.86944887', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(33, 'published', '[]', '2023-10-12 13:35:46', '6527f6324024e4.86944887', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(34, 'modified', '[]', '2023-10-12 13:42:29', '6527f7c51c6c47.88419894', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(35, 'published', '[]', '2023-10-12 13:42:29', '6527f7c51c6c47.88419894', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(36, 'created', '[]', '2023-10-13 07:52:42', '6528f74af217e9.36729435', NULL, 'pages', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'en', 'digitrans', 'Predavači', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 1),
(37, 'published', '[]', '2023-10-13 07:52:42', '6528f74af217e9.36729435', NULL, 'pages', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'en', 'digitrans', 'Predavači', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 1),
(38, 'modified', '[]', '2023-10-13 07:52:56', '6528f7589f08a8.47599849', NULL, 'pages', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'en', 'digitrans', 'Predavači-2023', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 1),
(39, 'published', '[]', '2023-10-13 07:52:56', '6528f7589f08a8.47599849', NULL, 'pages', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'en', 'digitrans', 'Predavači-2023', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 1),
(40, 'modified', '[]', '2023-10-13 07:53:08', '6528f764e7f134.35121296', NULL, 'pages', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'en', 'digitrans', 'Predavači', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 1),
(41, 'published', '[]', '2023-10-13 07:53:08', '6528f764e7f134.35121296', NULL, 'pages', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'en', 'digitrans', 'Predavači', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 1),
(42, 'modified', '[]', '2023-10-13 07:54:43', '6528f7c3cb89a3.53999263', NULL, 'pages', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'en', 'digitrans', 'Predavači-2023', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 1),
(43, 'published', '[]', '2023-10-13 07:54:43', '6528f7c3cb89a3.53999263', NULL, 'pages', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'en', 'digitrans', 'Predavači-2023', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 1),
(44, 'created', '[]', '2023-10-13 07:57:47', '6528f87b588576.44667527', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(45, 'published', '[]', '2023-10-13 07:57:47', '6528f87b588576.44667527', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(46, 'modified', '[]', '2023-10-13 07:58:11', '6528f89374d4e9.90228571', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(47, 'published', '[]', '2023-10-13 07:58:11', '6528f89374d4e9.90228571', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(48, 'created', '[]', '2023-10-13 07:58:58', '6528f8c25388a4.28155038', NULL, 'pages', '8f934702-809f-4bce-9fc7-c588686eb15d', 'en', 'digitrans', 'Miljan Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '8f934702-809f-4bce-9fc7-c588686eb15d', 1),
(49, 'published', '[]', '2023-10-13 07:58:58', '6528f8c25388a4.28155038', NULL, 'pages', '8f934702-809f-4bce-9fc7-c588686eb15d', 'en', 'digitrans', 'Miljan Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '8f934702-809f-4bce-9fc7-c588686eb15d', 1),
(50, 'modified', '[]', '2023-10-13 07:59:02', '6528f8c69a8379.44882780', NULL, 'pages', '8f934702-809f-4bce-9fc7-c588686eb15d', 'en', 'digitrans', 'Miljan Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '8f934702-809f-4bce-9fc7-c588686eb15d', 1),
(51, 'published', '[]', '2023-10-13 07:59:02', '6528f8c69a8379.44882780', NULL, 'pages', '8f934702-809f-4bce-9fc7-c588686eb15d', 'en', 'digitrans', 'Miljan Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '8f934702-809f-4bce-9fc7-c588686eb15d', 1),
(52, 'modified', '[]', '2023-10-13 07:59:09', '6528f8cdc84661.66404533', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(53, 'published', '[]', '2023-10-13 07:59:09', '6528f8cdc84661.66404533', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(54, 'modified', '[]', '2023-10-13 08:12:33', '6528fbf16de611.02975579', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(55, 'published', '[]', '2023-10-13 08:12:33', '6528fbf16de611.02975579', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(56, 'created', '[]', '2023-10-13 08:14:07', '6528fc4f298363.71749636', NULL, 'collections', '7', 'en', NULL, 'Predavači', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '7', 1),
(57, 'created', '[]', '2023-10-13 08:14:14', '6528fc56cfa900.85302006', NULL, 'media', '1', 'en', NULL, 'profile', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '7', 1),
(58, 'modified', '[]', '2023-10-13 08:14:21', '6528fc5d2b0b91.89283521', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(59, 'published', '[]', '2023-10-13 08:14:21', '6528fc5d2b0b91.89283521', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(60, 'modified', '[]', '2023-10-13 08:14:27', '6528fc631d6326.93842146', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(61, 'published', '[]', '2023-10-13 08:14:27', '6528fc631d6326.93842146', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(62, 'modified', '[]', '2023-10-13 08:16:30', '6528fcde12e567.42805470', NULL, 'pages', '8f934702-809f-4bce-9fc7-c588686eb15d', 'en', 'digitrans', 'Miljan Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '8f934702-809f-4bce-9fc7-c588686eb15d', 1),
(63, 'published', '[]', '2023-10-13 08:16:30', '6528fcde12e567.42805470', NULL, 'pages', '8f934702-809f-4bce-9fc7-c588686eb15d', 'en', 'digitrans', 'Miljan Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '8f934702-809f-4bce-9fc7-c588686eb15d', 1),
(64, 'created', '[]', '2023-10-13 08:17:14', '6528fd0aee7180.88567389', NULL, 'pages', '568229a0-259b-46b4-92f1-de3c02e60e13', 'en', 'digitrans', 'Nenad Nikolić', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '568229a0-259b-46b4-92f1-de3c02e60e13', 1),
(65, 'published', '[]', '2023-10-13 08:17:14', '6528fd0aee7180.88567389', NULL, 'pages', '568229a0-259b-46b4-92f1-de3c02e60e13', 'en', 'digitrans', 'Nenad Nikolić', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '568229a0-259b-46b4-92f1-de3c02e60e13', 1),
(66, 'modified', '[]', '2023-10-13 08:17:18', '6528fd0e698582.42070739', NULL, 'pages', '568229a0-259b-46b4-92f1-de3c02e60e13', 'en', 'digitrans', 'Nenad Nikolić', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '568229a0-259b-46b4-92f1-de3c02e60e13', 1),
(67, 'published', '[]', '2023-10-13 08:17:18', '6528fd0e698582.42070739', NULL, 'pages', '568229a0-259b-46b4-92f1-de3c02e60e13', 'en', 'digitrans', 'Nenad Nikolić', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '568229a0-259b-46b4-92f1-de3c02e60e13', 1),
(68, 'modified', '[]', '2023-10-13 08:17:29', '6528fd19379652.41128371', NULL, 'pages', '568229a0-259b-46b4-92f1-de3c02e60e13', 'en', 'digitrans', 'Nenad Nikolić', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '568229a0-259b-46b4-92f1-de3c02e60e13', 1),
(69, 'published', '[]', '2023-10-13 08:17:29', '6528fd19379652.41128371', NULL, 'pages', '568229a0-259b-46b4-92f1-de3c02e60e13', 'en', 'digitrans', 'Nenad Nikolić', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '568229a0-259b-46b4-92f1-de3c02e60e13', 1),
(70, 'created', '[]', '2023-10-13 08:17:46', '6528fd2a5639d9.77760390', NULL, 'pages', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 'en', 'digitrans', 'Goran Petrović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 1),
(71, 'published', '[]', '2023-10-13 08:17:46', '6528fd2a5639d9.77760390', NULL, 'pages', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 'en', 'digitrans', 'Goran Petrović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 1),
(72, 'modified', '[]', '2023-10-13 08:17:58', '6528fd36cf5fc6.15038893', NULL, 'pages', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 'en', 'digitrans', 'Goran Petrović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 1),
(73, 'published', '[]', '2023-10-13 08:17:58', '6528fd36cf5fc6.15038893', NULL, 'pages', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 'en', 'digitrans', 'Goran Petrović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 1),
(74, 'created', '[]', '2023-10-13 08:18:19', '6528fd4b279bb8.84891842', NULL, 'pages', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 'en', 'digitrans', 'Dejana Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 1),
(75, 'published', '[]', '2023-10-13 08:18:19', '6528fd4b279bb8.84891842', NULL, 'pages', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 'en', 'digitrans', 'Dejana Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 1),
(76, 'created', '[]', '2023-10-13 08:18:35', '6528fd5b2140e9.97037355', NULL, 'media', '2', 'en', NULL, 'woman', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '7', 1),
(77, 'modified', '[]', '2023-10-13 08:18:42', '6528fd627bf167.69081619', NULL, 'pages', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 'en', 'digitrans', 'Dejana Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 1),
(78, 'published', '[]', '2023-10-13 08:18:42', '6528fd627bf167.69081619', NULL, 'pages', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 'en', 'digitrans', 'Dejana Radanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 1),
(79, 'created', '[]', '2023-10-13 08:18:56', '6528fd70b65ad2.38098035', NULL, 'pages', '787cfc72-c339-461b-b988-f46f1d56ea16', 'en', 'digitrans', 'Goran Bjelica', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '787cfc72-c339-461b-b988-f46f1d56ea16', 1),
(80, 'published', '[]', '2023-10-13 08:18:56', '6528fd70b65ad2.38098035', NULL, 'pages', '787cfc72-c339-461b-b988-f46f1d56ea16', 'en', 'digitrans', 'Goran Bjelica', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '787cfc72-c339-461b-b988-f46f1d56ea16', 1),
(81, 'modified', '[]', '2023-10-13 08:19:10', '6528fd7e676dc3.92801255', NULL, 'pages', '787cfc72-c339-461b-b988-f46f1d56ea16', 'en', 'digitrans', 'Goran Bjelica', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '787cfc72-c339-461b-b988-f46f1d56ea16', 1),
(82, 'published', '[]', '2023-10-13 08:19:10', '6528fd7e676dc3.92801255', NULL, 'pages', '787cfc72-c339-461b-b988-f46f1d56ea16', 'en', 'digitrans', 'Goran Bjelica', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '787cfc72-c339-461b-b988-f46f1d56ea16', 1),
(83, 'created', '[]', '2023-10-13 08:19:30', '6528fd92b22213.20317552', NULL, 'pages', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 'en', 'digitrans', 'Filip Mrdak', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 1),
(84, 'published', '[]', '2023-10-13 08:19:30', '6528fd92b22213.20317552', NULL, 'pages', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 'en', 'digitrans', 'Filip Mrdak', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 1),
(85, 'modified', '[]', '2023-10-13 08:19:46', '6528fda2906629.40407187', NULL, 'pages', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 'en', 'digitrans', 'Filip Mrdak', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 1),
(86, 'published', '[]', '2023-10-13 08:19:46', '6528fda2906629.40407187', NULL, 'pages', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 'en', 'digitrans', 'Filip Mrdak', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 1),
(87, 'created', '[]', '2023-10-13 08:20:07', '6528fdb795e527.49076518', NULL, 'pages', 'cd9f3679-53bc-4230-a304-770ce34ce595', 'en', 'digitrans', 'Darko Bogojević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cd9f3679-53bc-4230-a304-770ce34ce595', 1),
(88, 'published', '[]', '2023-10-13 08:20:07', '6528fdb795e527.49076518', NULL, 'pages', 'cd9f3679-53bc-4230-a304-770ce34ce595', 'en', 'digitrans', 'Darko Bogojević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cd9f3679-53bc-4230-a304-770ce34ce595', 1),
(89, 'modified', '[]', '2023-10-13 08:20:20', '6528fdc495c4e4.66877644', NULL, 'pages', 'cd9f3679-53bc-4230-a304-770ce34ce595', 'en', 'digitrans', 'Darko Bogojević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cd9f3679-53bc-4230-a304-770ce34ce595', 1),
(90, 'published', '[]', '2023-10-13 08:20:20', '6528fdc495c4e4.66877644', NULL, 'pages', 'cd9f3679-53bc-4230-a304-770ce34ce595', 'en', 'digitrans', 'Darko Bogojević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cd9f3679-53bc-4230-a304-770ce34ce595', 1),
(91, 'created', '[]', '2023-10-13 08:20:35', '6528fdd3458fe4.97064134', NULL, 'pages', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 'en', 'digitrans', 'Aleksandra Marić Šćepanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 1),
(92, 'published', '[]', '2023-10-13 08:20:35', '6528fdd3458fe4.97064134', NULL, 'pages', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 'en', 'digitrans', 'Aleksandra Marić Šćepanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 1),
(93, 'modified', '[]', '2023-10-13 08:20:46', '6528fddedded51.85063097', NULL, 'pages', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 'en', 'digitrans', 'Aleksandra Marić Šćepanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 1),
(94, 'published', '[]', '2023-10-13 08:20:46', '6528fddedded51.85063097', NULL, 'pages', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 'en', 'digitrans', 'Aleksandra Marić Šćepanović', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 1),
(95, 'created', '[]', '2023-10-13 08:20:55', '6528fde74c4f12.26807118', NULL, 'pages', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 'en', 'digitrans', 'Dušan Radošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 1),
(96, 'published', '[]', '2023-10-13 08:20:55', '6528fde74c4f12.26807118', NULL, 'pages', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 'en', 'digitrans', 'Dušan Radošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 1),
(97, 'modified', '[]', '2023-10-13 08:20:58', '6528fdeaaeef35.70287088', NULL, 'pages', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 'en', 'digitrans', 'Dušan Radošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 1),
(98, 'published', '[]', '2023-10-13 08:20:58', '6528fdeaaeef35.70287088', NULL, 'pages', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 'en', 'digitrans', 'Dušan Radošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 1),
(99, 'modified', '[]', '2023-10-13 08:21:11', '6528fdf7c57106.37461535', NULL, 'pages', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 'en', 'digitrans', 'Dušan Radošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 1),
(100, 'published', '[]', '2023-10-13 08:21:11', '6528fdf7c57106.37461535', NULL, 'pages', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 'en', 'digitrans', 'Dušan Radošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 1),
(101, 'modified', '[]', '2023-10-13 08:26:32', '6528ff385ca287.28675493', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(102, 'published', '[]', '2023-10-13 08:26:32', '6528ff385ca287.28675493', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(103, 'modified', '[]', '2023-10-13 08:26:56', '6528ff50985470.94712929', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(104, 'published', '[]', '2023-10-13 08:26:56', '6528ff50985470.94712929', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(105, 'modified', '[]', '2023-10-13 09:57:18', '6529147ea59f10.40771974', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(106, 'published', '[]', '2023-10-13 09:57:18', '6529147ea59f10.40771974', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(107, 'modified', '[]', '2023-10-13 09:58:03', '652914ab8572a1.19778183', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(108, 'published', '[]', '2023-10-13 09:58:03', '652914ab8572a1.19778183', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(109, 'modified', '[]', '2023-10-13 10:07:08', '652916cccdf6a6.11235078', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(110, 'published', '[]', '2023-10-13 10:07:08', '652916cccdf6a6.11235078', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(111, 'modified', '[]', '2023-10-13 10:08:45', '6529172d501fd7.09304774', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(112, 'published', '[]', '2023-10-13 10:08:45', '6529172d501fd7.09304774', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(113, 'modified', '[]', '2023-10-13 10:12:47', '6529181fa59cf3.28111904', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(114, 'published', '[]', '2023-10-13 10:12:47', '6529181fa59cf3.28111904', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(115, 'modified', '[]', '2023-10-13 10:22:30', '65291a66178e13.41771953', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(116, 'published', '[]', '2023-10-13 10:22:30', '65291a66178e13.41771953', NULL, 'pages', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'en', 'digitrans', 'Vladimir Lalošević', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 1),
(117, 'created', '[]', '2023-10-13 10:48:09', '65292069821892.89938676', NULL, 'pages', 'ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc', 'en', 'digitrans', 'Sponzori-2023', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc', 1),
(118, 'published', '[]', '2023-10-13 10:48:09', '65292069821892.89938676', NULL, 'pages', 'ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc', 'en', 'digitrans', 'Sponzori-2023', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc', 1),
(119, 'created', '[]', '2023-10-13 11:06:02', '6529249ab8ff36.04414500', NULL, 'pages', 'cbbc2782-8f86-4758-91a6-540baca0787c', 'en', 'digitrans', 'Pokrovitelji i Partneri 2023', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cbbc2782-8f86-4758-91a6-540baca0787c', 1),
(120, 'published', '[]', '2023-10-13 11:06:02', '6529249ab8ff36.04414500', NULL, 'pages', 'cbbc2782-8f86-4758-91a6-540baca0787c', 'en', 'digitrans', 'Pokrovitelji i Partneri 2023', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cbbc2782-8f86-4758-91a6-540baca0787c', 1),
(121, 'created', '[]', '2023-10-13 11:09:35', '6529256fb730c9.72108254', NULL, 'pages', 'cb44160a-f2ff-4469-a269-98494695f242', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cb44160a-f2ff-4469-a269-98494695f242', 1),
(122, 'published', '[]', '2023-10-13 11:09:35', '6529256fb730c9.72108254', NULL, 'pages', 'cb44160a-f2ff-4469-a269-98494695f242', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cb44160a-f2ff-4469-a269-98494695f242', 1),
(123, 'modified', '[]', '2023-10-13 11:10:10', '652925928c0132.01346586', NULL, 'pages', 'cb44160a-f2ff-4469-a269-98494695f242', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cb44160a-f2ff-4469-a269-98494695f242', 1),
(124, 'published', '[]', '2023-10-13 11:10:10', '652925928c0132.01346586', NULL, 'pages', 'cb44160a-f2ff-4469-a269-98494695f242', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cb44160a-f2ff-4469-a269-98494695f242', 1),
(125, 'created', '[]', '2023-10-13 11:10:44', '652925b4797526.31703176', NULL, 'collections', '8', 'en', NULL, 'Partneri', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(126, 'created', '[]', '2023-10-13 11:10:48', '652925b849cf86.72651631', NULL, 'media', '3', 'en', NULL, 'CNT png logo', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(127, 'modified', '[]', '2023-10-13 11:10:56', '652925c0368d19.48440194', NULL, 'pages', 'cb44160a-f2ff-4469-a269-98494695f242', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cb44160a-f2ff-4469-a269-98494695f242', 1),
(128, 'published', '[]', '2023-10-13 11:10:56', '652925c0368d19.48440194', NULL, 'pages', 'cb44160a-f2ff-4469-a269-98494695f242', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cb44160a-f2ff-4469-a269-98494695f242', 1),
(129, 'removed', '[]', '2023-10-13 11:13:51', '6529266fd466c9.61722726', NULL, 'pages', 'cb44160a-f2ff-4469-a269-98494695f242', NULL, 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cb44160a-f2ff-4469-a269-98494695f242', 1),
(130, 'created', '[]', '2023-10-13 11:14:24', '6529269102c8f0.74975415', NULL, 'pages', 'cce11bf1-b31a-427a-b630-13d68222087c', 'en', 'digitrans', 'Centar Novih Tehnologija DOO', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cce11bf1-b31a-427a-b630-13d68222087c', 1),
(131, 'published', '[]', '2023-10-13 11:14:24', '6529269102c8f0.74975415', NULL, 'pages', 'cce11bf1-b31a-427a-b630-13d68222087c', 'en', 'digitrans', 'Centar Novih Tehnologija DOO', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cce11bf1-b31a-427a-b630-13d68222087c', 1),
(132, 'modified', '[]', '2023-10-13 11:14:30', '65292696817513.39774416', NULL, 'pages', 'cce11bf1-b31a-427a-b630-13d68222087c', 'en', 'digitrans', 'Centar Novih Tehnologija DOO', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cce11bf1-b31a-427a-b630-13d68222087c', 1),
(133, 'published', '[]', '2023-10-13 11:14:30', '65292696817513.39774416', NULL, 'pages', 'cce11bf1-b31a-427a-b630-13d68222087c', 'en', 'digitrans', 'Centar Novih Tehnologija DOO', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cce11bf1-b31a-427a-b630-13d68222087c', 1),
(134, 'modified', '[]', '2023-10-13 11:14:38', '6529269e2ab586.13598289', NULL, 'pages', 'cce11bf1-b31a-427a-b630-13d68222087c', 'en', 'digitrans', 'Centar Novih Tehnologija DOO', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cce11bf1-b31a-427a-b630-13d68222087c', 1),
(135, 'published', '[]', '2023-10-13 11:14:38', '6529269e2ab586.13598289', NULL, 'pages', 'cce11bf1-b31a-427a-b630-13d68222087c', 'en', 'digitrans', 'Centar Novih Tehnologija DOO', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cce11bf1-b31a-427a-b630-13d68222087c', 1),
(136, 'removed', '[]', '2023-10-13 11:27:35', '652929a7d22397.04931959', NULL, 'pages', 'cce11bf1-b31a-427a-b630-13d68222087c', NULL, 'digitrans', 'Centar Novih Tehnologija DOO', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cce11bf1-b31a-427a-b630-13d68222087c', 1),
(137, 'created', '[]', '2023-10-13 11:27:48', '652929b4b43813.69540165', NULL, 'pages', 'c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731', 'en', 'digitrans', 'Srebrni', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731', 1),
(138, 'published', '[]', '2023-10-13 11:27:48', '652929b4b43813.69540165', NULL, 'pages', 'c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731', 'en', 'digitrans', 'Srebrni', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731', 1),
(139, 'created', '[]', '2023-10-13 11:27:56', '652929bcefc8a4.81829348', NULL, 'pages', 'c47fe239-e50f-48fb-b10c-023f22bb088a', 'en', 'digitrans', 'Zlatni', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c47fe239-e50f-48fb-b10c-023f22bb088a', 1),
(140, 'published', '[]', '2023-10-13 11:27:56', '652929bcefc8a4.81829348', NULL, 'pages', 'c47fe239-e50f-48fb-b10c-023f22bb088a', 'en', 'digitrans', 'Zlatni', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c47fe239-e50f-48fb-b10c-023f22bb088a', 1),
(141, 'created', '[]', '2023-10-13 11:28:05', '652929c60f2e07.30564413', NULL, 'pages', '8a7c6e6d-ac84-4d3b-a695-d620aaaeb399', 'en', 'digitrans', 'Platinum', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '8a7c6e6d-ac84-4d3b-a695-d620aaaeb399', 1),
(142, 'published', '[]', '2023-10-13 11:28:06', '652929c60f2e07.30564413', NULL, 'pages', '8a7c6e6d-ac84-4d3b-a695-d620aaaeb399', 'en', 'digitrans', 'Platinum', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '8a7c6e6d-ac84-4d3b-a695-d620aaaeb399', 1),
(143, 'created', '[]', '2023-10-13 11:29:57', '65292a35e1f5e0.36906718', NULL, 'pages', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 'en', 'digitrans', 'Unija Poslodavaca Vojvodine', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 1),
(144, 'published', '[]', '2023-10-13 11:29:57', '65292a35e1f5e0.36906718', NULL, 'pages', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 'en', 'digitrans', 'Unija Poslodavaca Vojvodine', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 1),
(145, 'modified', '[]', '2023-10-13 11:30:06', '65292a3e134535.65147253', NULL, 'pages', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 'en', 'digitrans', 'Unija Poslodavaca Vojvodine', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 1),
(146, 'published', '[]', '2023-10-13 11:30:06', '65292a3e134535.65147253', NULL, 'pages', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 'en', 'digitrans', 'Unija Poslodavaca Vojvodine', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 1),
(147, 'created', '[]', '2023-10-13 11:30:38', '65292a5e782867.22668130', NULL, 'media', '4', 'en', NULL, 'CDT logo', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(148, 'created', '[]', '2023-10-13 11:30:38', '65292a5e9b8971.97177924', NULL, 'media', '5', 'en', NULL, 'GoProLogoBeli2021', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(149, 'created', '[]', '2023-10-13 11:30:38', '65292a5ebb65a6.90855030', NULL, 'media', '6', 'en', NULL, 'payspot', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(150, 'created', '[]', '2023-10-13 11:30:38', '65292a5edda0a6.76622280', NULL, 'media', '7', 'en', NULL, 'starcard', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(151, 'created', '[]', '2023-10-13 11:30:39', '65292a5f0ec8f8.28665945', NULL, 'media', '8', 'en', NULL, 'positive', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(152, 'created', '[]', '2023-10-13 11:30:39', '65292a5f2c2144.96474926', NULL, 'media', '9', 'en', NULL, 'upv', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(153, 'created', '[]', '2023-10-13 11:30:40', '65292a60384f76.28701953', NULL, 'media', '10', 'en', NULL, 'privreda-turizam', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(154, 'modified', '[]', '2023-10-13 11:30:55', '65292a6f1a9c23.03073953', NULL, 'pages', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 'en', 'digitrans', 'Unija Poslodavaca Vojvodine', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 1),
(155, 'published', '[]', '2023-10-13 11:30:55', '65292a6f1a9c23.03073953', NULL, 'pages', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 'en', 'digitrans', 'Unija Poslodavaca Vojvodine', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 1),
(156, 'modified', '[]', '2023-10-13 11:31:55', '65292aabcae598.18742828', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(157, 'published', '[]', '2023-10-13 11:31:55', '65292aabcae598.18742828', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(158, 'created', '[]', '2023-10-13 11:32:56', '65292ae8bff2f0.04976441', NULL, 'pages', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 'en', 'digitrans', 'Autonomna Pokrajina Vojvodina', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 1),
(159, 'published', '[]', '2023-10-13 11:32:56', '65292ae8bff2f0.04976441', NULL, 'pages', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 'en', 'digitrans', 'Autonomna Pokrajina Vojvodina', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 1),
(160, 'modified', '[]', '2023-10-13 11:33:00', '65292aec793162.47202752', NULL, 'pages', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 'en', 'digitrans', 'Autonomna Pokrajina Vojvodina', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 1),
(161, 'published', '[]', '2023-10-13 11:33:00', '65292aec793162.47202752', NULL, 'pages', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 'en', 'digitrans', 'Autonomna Pokrajina Vojvodina', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 1),
(162, 'modified', '[]', '2023-10-13 11:33:11', '65292af7d6e2a2.17836469', NULL, 'pages', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 'en', 'digitrans', 'Autonomna Pokrajina Vojvodina', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 1);
INSERT INTO `ac_activities` (`id`, `type`, `context`, `timestamp`, `batch`, `payload`, `resourceKey`, `resourceId`, `resourceLocale`, `resourceWebspaceKey`, `resourceTitle`, `resourceTitleLocale`, `resourceSecurityContext`, `resourceSecurityObjectType`, `resourceSecurityObjectId`, `userId`) VALUES
(163, 'published', '[]', '2023-10-13 11:33:11', '65292af7d6e2a2.17836469', NULL, 'pages', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 'en', 'digitrans', 'Autonomna Pokrajina Vojvodina', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 1),
(164, 'created', '[]', '2023-10-13 11:34:55', '65292b5f621cb0.71658101', NULL, 'pages', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 1),
(165, 'published', '[]', '2023-10-13 11:34:55', '65292b5f621cb0.71658101', NULL, 'pages', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 1),
(166, 'modified', '[]', '2023-10-13 11:34:58', '65292b62c787d7.42963281', NULL, 'pages', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 1),
(167, 'published', '[]', '2023-10-13 11:34:58', '65292b62c787d7.42963281', NULL, 'pages', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 1),
(168, 'modified', '[]', '2023-10-13 11:35:12', '65292b70ae2667.80992154', NULL, 'pages', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 1),
(169, 'published', '[]', '2023-10-13 11:35:12', '65292b70ae2667.80992154', NULL, 'pages', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 'en', 'digitrans', 'Centar Novih Tehnologija', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 1),
(170, 'created', '[]', '2023-10-13 11:36:42', '65292bcae7ba07.17483795', NULL, 'pages', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 'en', 'digitrans', 'Positive', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 1),
(171, 'published', '[]', '2023-10-13 11:36:42', '65292bcae7ba07.17483795', NULL, 'pages', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 'en', 'digitrans', 'Positive', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 1),
(172, 'modified', '[]', '2023-10-13 11:36:46', '65292bcea56bb4.91705618', NULL, 'pages', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 'en', 'digitrans', 'Positive', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 1),
(173, 'published', '[]', '2023-10-13 11:36:46', '65292bcea56bb4.91705618', NULL, 'pages', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 'en', 'digitrans', 'Positive', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 1),
(174, 'modified', '[]', '2023-10-13 11:36:58', '65292bda6a3646.50664548', NULL, 'pages', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 'en', 'digitrans', 'Positive', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 1),
(175, 'published', '[]', '2023-10-13 11:36:58', '65292bda6a3646.50664548', NULL, 'pages', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 'en', 'digitrans', 'Positive', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 1),
(176, 'created', '[]', '2023-10-13 11:37:22', '65292bf24e2ef9.13263886', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Minimax', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(177, 'published', '[]', '2023-10-13 11:37:22', '65292bf24e2ef9.13263886', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Minimax', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(178, 'modified', '[]', '2023-10-13 11:37:26', '65292bf6cb3fa1.09840841', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Minimax', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(179, 'published', '[]', '2023-10-13 11:37:26', '65292bf6cb3fa1.09840841', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Minimax', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(180, 'created', '[]', '2023-10-13 11:37:45', '65292c098d0f46.21579689', NULL, 'media', '11', 'en', NULL, 'Mm 460x460-JPEG', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(181, 'modified', '[]', '2023-10-13 11:37:50', '65292c0e2a4b15.80261117', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Minimax', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(182, 'published', '[]', '2023-10-13 11:37:50', '65292c0e2a4b15.80261117', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Minimax', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(183, 'created', '[]', '2023-10-13 11:38:30', '65292c3697b4c4.77324065', NULL, 'pages', '865398cc-2188-45b4-81d6-8f878e2fb68c', 'en', 'digitrans', 'GoPro', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '865398cc-2188-45b4-81d6-8f878e2fb68c', 1),
(184, 'published', '[]', '2023-10-13 11:38:30', '65292c3697b4c4.77324065', NULL, 'pages', '865398cc-2188-45b4-81d6-8f878e2fb68c', 'en', 'digitrans', 'GoPro', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '865398cc-2188-45b4-81d6-8f878e2fb68c', 1),
(185, 'modified', '[]', '2023-10-13 11:38:33', '65292c39d6db91.28927835', NULL, 'pages', '865398cc-2188-45b4-81d6-8f878e2fb68c', 'en', 'digitrans', 'GoPro', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '865398cc-2188-45b4-81d6-8f878e2fb68c', 1),
(186, 'published', '[]', '2023-10-13 11:38:33', '65292c39d6db91.28927835', NULL, 'pages', '865398cc-2188-45b4-81d6-8f878e2fb68c', 'en', 'digitrans', 'GoPro', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '865398cc-2188-45b4-81d6-8f878e2fb68c', 1),
(187, 'modified', '[]', '2023-10-13 11:38:45', '65292c4541e4f3.24964402', NULL, 'pages', '865398cc-2188-45b4-81d6-8f878e2fb68c', 'en', 'digitrans', 'GoPro', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '865398cc-2188-45b4-81d6-8f878e2fb68c', 1),
(188, 'published', '[]', '2023-10-13 11:38:45', '65292c4541e4f3.24964402', NULL, 'pages', '865398cc-2188-45b4-81d6-8f878e2fb68c', 'en', 'digitrans', 'GoPro', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '865398cc-2188-45b4-81d6-8f878e2fb68c', 1),
(189, 'created', '[]', '2023-10-13 11:39:31', '65292c737b95c8.66737760', NULL, 'pages', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 'en', 'digitrans', 'European Bank for Reconstruction and Development', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 1),
(190, 'modified', '[]', '2023-10-13 11:39:34', '65292c762d97c0.18706204', NULL, 'pages', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 'en', 'digitrans', 'European Bank for Reconstruction and Development', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 1),
(191, 'published', '[]', '2023-10-13 11:39:34', '65292c762d97c0.18706204', NULL, 'pages', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 'en', 'digitrans', 'European Bank for Reconstruction and Development', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 1),
(192, 'modified', '[]', '2023-10-13 11:39:45', '65292c81264356.53426905', NULL, 'pages', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 'en', 'digitrans', 'European Bank for Reconstruction and Development', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 1),
(193, 'published', '[]', '2023-10-13 11:39:45', '65292c81264356.53426905', NULL, 'pages', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 'en', 'digitrans', 'European Bank for Reconstruction and Development', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 1),
(194, 'created', '[]', '2023-10-13 11:40:01', '65292c91c30e85.41204497', NULL, 'pages', '098480c2-da5e-471d-ae1a-e336790e6443', 'en', 'digitrans', 'PaySpot', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '098480c2-da5e-471d-ae1a-e336790e6443', 1),
(195, 'published', '[]', '2023-10-13 11:40:01', '65292c91c30e85.41204497', NULL, 'pages', '098480c2-da5e-471d-ae1a-e336790e6443', 'en', 'digitrans', 'PaySpot', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '098480c2-da5e-471d-ae1a-e336790e6443', 1),
(196, 'modified', '[]', '2023-10-13 11:40:11', '65292c9b7a2f76.44564722', NULL, 'pages', '098480c2-da5e-471d-ae1a-e336790e6443', 'en', 'digitrans', 'PaySpot', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '098480c2-da5e-471d-ae1a-e336790e6443', 1),
(197, 'published', '[]', '2023-10-13 11:40:11', '65292c9b7a2f76.44564722', NULL, 'pages', '098480c2-da5e-471d-ae1a-e336790e6443', 'en', 'digitrans', 'PaySpot', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '098480c2-da5e-471d-ae1a-e336790e6443', 1),
(198, 'created', '[]', '2023-10-13 11:40:34', '65292cb2e400d3.42905880', NULL, 'pages', '7b2cba9c-602b-49f9-8305-801edf772af5', 'en', 'digitrans', 'Centar Za Digitalnu Transformaciju', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '7b2cba9c-602b-49f9-8305-801edf772af5', 1),
(199, 'published', '[]', '2023-10-13 11:40:34', '65292cb2e400d3.42905880', NULL, 'pages', '7b2cba9c-602b-49f9-8305-801edf772af5', 'en', 'digitrans', 'Centar Za Digitalnu Transformaciju', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '7b2cba9c-602b-49f9-8305-801edf772af5', 1),
(200, 'modified', '[]', '2023-10-13 11:40:38', '65292cb6a591e3.00790177', NULL, 'pages', '7b2cba9c-602b-49f9-8305-801edf772af5', 'en', 'digitrans', 'Centar Za Digitalnu Transformaciju', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '7b2cba9c-602b-49f9-8305-801edf772af5', 1),
(201, 'published', '[]', '2023-10-13 11:40:38', '65292cb6a591e3.00790177', NULL, 'pages', '7b2cba9c-602b-49f9-8305-801edf772af5', 'en', 'digitrans', 'Centar Za Digitalnu Transformaciju', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '7b2cba9c-602b-49f9-8305-801edf772af5', 1),
(202, 'modified', '[]', '2023-10-13 11:40:52', '65292cc40ba023.53196846', NULL, 'pages', '7b2cba9c-602b-49f9-8305-801edf772af5', 'en', 'digitrans', 'Centar Za Digitalnu Transformaciju', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '7b2cba9c-602b-49f9-8305-801edf772af5', 1),
(203, 'published', '[]', '2023-10-13 11:40:52', '65292cc40ba023.53196846', NULL, 'pages', '7b2cba9c-602b-49f9-8305-801edf772af5', 'en', 'digitrans', 'Centar Za Digitalnu Transformaciju', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '7b2cba9c-602b-49f9-8305-801edf772af5', 1),
(204, 'created', '[]', '2023-10-13 11:44:19', '65292d93e58d10.77241801', NULL, 'pages', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 'en', 'digitrans', 'Ferum', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 1),
(205, 'published', '[]', '2023-10-13 11:44:19', '65292d93e58d10.77241801', NULL, 'pages', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 'en', 'digitrans', 'Ferum', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 1),
(206, 'created', '[]', '2023-10-13 11:44:36', '65292da45b1650.36369109', NULL, 'media', '12', 'en', NULL, 'Ferum LOGO', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(207, 'modified', '[]', '2023-10-13 11:44:41', '65292da954fc43.94840718', NULL, 'pages', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 'en', 'digitrans', 'Ferum', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 1),
(208, 'published', '[]', '2023-10-13 11:44:41', '65292da954fc43.94840718', NULL, 'pages', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 'en', 'digitrans', 'Ferum', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 1),
(209, 'created', '[]', '2023-10-13 11:45:35', '65292ddfa575f8.87301799', NULL, 'pages', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 'en', 'digitrans', 'StarCard', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 1),
(210, 'published', '[]', '2023-10-13 11:45:35', '65292ddfa575f8.87301799', NULL, 'pages', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 'en', 'digitrans', 'StarCard', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 1),
(211, 'modified', '[]', '2023-10-13 11:45:50', '65292dee2e7490.09256772', NULL, 'pages', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 'en', 'digitrans', 'StarCard', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 1),
(212, 'published', '[]', '2023-10-13 11:45:50', '65292dee2e7490.09256772', NULL, 'pages', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 'en', 'digitrans', 'StarCard', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 1),
(213, 'created', '[]', '2023-10-13 11:46:27', '65292e13b47062.74837056', NULL, 'pages', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 'en', 'digitrans', 'Unija Poslodavaca Srbije', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 1),
(214, 'published', '[]', '2023-10-13 11:46:27', '65292e13b47062.74837056', NULL, 'pages', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 'en', 'digitrans', 'Unija Poslodavaca Srbije', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 1),
(215, 'modified', '[]', '2023-10-13 11:46:52', '65292e2c242360.39891138', NULL, 'pages', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 'en', 'digitrans', 'Unija Poslodavaca Srbije', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 1),
(216, 'published', '[]', '2023-10-13 11:46:52', '65292e2c242360.39891138', NULL, 'pages', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 'en', 'digitrans', 'Unija Poslodavaca Srbije', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 1),
(217, 'modified', '[]', '2023-10-13 14:00:57', '65294d99bb6835.46568023', NULL, 'roles', '1', NULL, NULL, 'User', NULL, 'sulu.security.roles', NULL, '1', 1),
(218, 'modified', '[]', '2023-10-16 06:38:10', '652cda53093a58.01227239', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Seyfor', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(219, 'published', '[]', '2023-10-16 06:38:10', '652cda53093a58.01227239', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Seyfor', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(220, 'created', '[]', '2023-10-16 06:38:30', '652cda66d8a234.26211100', NULL, 'media', '13', 'en', NULL, 'JPG Logo-400x400', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '8', 1),
(221, 'modified', '[]', '2023-10-16 06:38:35', '652cda6c03ae81.27411733', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Seyfor', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(222, 'published', '[]', '2023-10-16 06:38:36', '652cda6c03ae81.27411733', NULL, 'pages', '28e0c348-075d-404b-9342-a28835076669', 'en', 'digitrans', 'Seyfor', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '28e0c348-075d-404b-9342-a28835076669', 1),
(223, 'created', '[]', '2023-10-16 08:03:58', '652cee6e826dc4.77818104', NULL, 'collections', '9', 'en', NULL, 'Sulu forms', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '9', 1),
(224, 'translation_added', '[]', '2023-10-16 08:03:58', '652cee6e8b1806.03863273', NULL, 'collections', '9', 'de', NULL, 'Sulu Formulare', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '9', 1),
(225, 'created', '[]', '2023-10-16 08:03:58', '652cee6e90d388.54907666', NULL, 'collections', '10', 'en', NULL, 'Attachments', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '10', 1),
(226, 'translation_added', '[]', '2023-10-16 08:03:58', '652cee6e9d44b2.21504071', NULL, 'collections', '10', 'de', NULL, 'Anhänge', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '10', 1),
(227, 'modified', '[]', '2023-10-16 08:12:35', '652cf0739e0db2.35052509', NULL, 'roles', '1', NULL, NULL, 'User', NULL, 'sulu.security.roles', NULL, '1', 1),
(228, 'modified', '[]', '2023-10-16 08:12:58', '652cf08ac40bb7.40470036', NULL, 'roles', '1', NULL, NULL, 'User', NULL, 'sulu.security.roles', NULL, '1', 1),
(229, 'created', '[]', '2023-10-16 08:16:18', '652cf152ed4e44.14292749', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(230, 'modified', '[]', '2023-10-16 08:19:27', '652cf20f8ae102.30331633', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(231, 'modified', '[]', '2023-10-16 08:20:25', '652cf2497fec87.85641610', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(232, 'modified', '[]', '2023-10-16 08:32:59', '652cf53b466887.62503780', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(233, 'published', '[]', '2023-10-16 08:32:59', '652cf53b466887.62503780', NULL, 'pages', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', 'en', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 1),
(234, 'modified', '[]', '2023-10-16 08:39:05', '652cf6a9e47ae7.64173793', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(235, 'modified', '[]', '2023-10-16 09:20:24', '652d0058df1005.20173898', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(236, 'modified', '[]', '2023-10-16 09:20:47', '652d006f558c38.22909197', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(237, 'modified', '[]', '2023-10-16 09:35:55', '652d03fbd48988.80727865', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(238, 'modified', '[]', '2023-10-16 09:38:44', '652d04a4eff5e5.16148426', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(239, 'modified', '[]', '2023-10-16 09:55:31', '652d08939571a5.16648479', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(240, 'modified', '[]', '2023-10-16 09:56:00', '652d08b03aa4c2.37462192', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(241, 'modified', '[]', '2023-10-16 09:56:32', '652d08d032fc15.88422026', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(242, 'modified', '[]', '2023-10-16 10:34:00', '652d11983ab838.76807093', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(243, 'modified', '[]', '2023-10-16 10:54:55', '652d167f7f8231.91739884', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(244, 'modified', '[]', '2023-10-16 11:25:44', '652d1db84dd522.64317224', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(245, 'modified', '[]', '2023-10-16 11:27:31', '652d1e236b5694.10117200', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(246, 'modified', '[]', '2023-10-16 12:40:14', '652d2f2e28f188.42902939', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(247, 'modified', '[]', '2023-10-16 12:49:50', '652d316eb1aa31.67468904', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(248, 'modified', '[]', '2023-10-16 13:06:42', '652d35625c6319.98979564', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(249, 'modified', '[]', '2023-10-16 13:13:14', '652d36eaee6de1.37004070', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1),
(250, 'modified', '[]', '2023-10-16 13:13:40', '652d3704a8f087.09849591', NULL, 'forms', '1', 'en', NULL, 'Single Ticket', 'en', 'sulu.form.forms', NULL, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ca_categories`
--

CREATE TABLE `ca_categories` (
  `id` int(11) NOT NULL,
  `category_key` varchar(191) DEFAULT NULL,
  `default_locale` varchar(5) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCategoriesParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ca_category_meta`
--

CREATE TABLE `ca_category_meta` (
  `id` int(11) NOT NULL,
  `meta_key` varchar(45) NOT NULL,
  `value` varchar(255) NOT NULL,
  `locale` varchar(5) DEFAULT NULL,
  `idCategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ca_category_translations`
--

CREATE TABLE `ca_category_translations` (
  `id` int(11) NOT NULL,
  `translation` varchar(255) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCategories` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ca_category_translation_keywords`
--

CREATE TABLE `ca_category_translation_keywords` (
  `idKeywords` int(11) NOT NULL,
  `idCategoryTranslations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ca_category_translation_medias`
--

CREATE TABLE `ca_category_translation_medias` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `idCategoryTranslations` int(11) NOT NULL,
  `idMedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ca_keywords`
--

CREATE TABLE `ca_keywords` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `keyword` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_accounts`
--

CREATE TABLE `co_accounts` (
  `id` int(11) NOT NULL,
  `logo` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `externalId` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `corporation` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `registerNumber` varchar(255) DEFAULT NULL,
  `placeOfJurisdiction` varchar(255) DEFAULT NULL,
  `mainEmail` varchar(255) DEFAULT NULL,
  `mainPhone` varchar(255) DEFAULT NULL,
  `mainFax` varchar(255) DEFAULT NULL,
  `mainUrl` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idContactsMain` int(11) DEFAULT NULL,
  `idAccountsParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_addresses`
--

CREATE TABLE `co_account_addresses` (
  `id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `idAddresses` int(11) NOT NULL,
  `idAccounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_bank_accounts`
--

CREATE TABLE `co_account_bank_accounts` (
  `idAccounts` int(11) NOT NULL,
  `idBankAccounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_categories`
--

CREATE TABLE `co_account_categories` (
  `idAccounts` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_contacts`
--

CREATE TABLE `co_account_contacts` (
  `id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `idPositions` int(11) DEFAULT NULL,
  `idContacts` int(11) NOT NULL,
  `idAccounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_emails`
--

CREATE TABLE `co_account_emails` (
  `idAccounts` int(11) NOT NULL,
  `idEmails` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_faxes`
--

CREATE TABLE `co_account_faxes` (
  `idAccounts` int(11) NOT NULL,
  `idFaxes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_medias`
--

CREATE TABLE `co_account_medias` (
  `idAccounts` int(11) NOT NULL,
  `idMedias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_notes`
--

CREATE TABLE `co_account_notes` (
  `idAccounts` int(11) NOT NULL,
  `idNotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_phones`
--

CREATE TABLE `co_account_phones` (
  `idAccounts` int(11) NOT NULL,
  `idPhones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_social_media_profiles`
--

CREATE TABLE `co_account_social_media_profiles` (
  `idAccounts` int(11) NOT NULL,
  `idSocialMediaProfiles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_tags`
--

CREATE TABLE `co_account_tags` (
  `idAccounts` int(11) NOT NULL,
  `idTags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_account_urls`
--

CREATE TABLE `co_account_urls` (
  `idAccounts` int(11) NOT NULL,
  `idUrls` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_addresses`
--

CREATE TABLE `co_addresses` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `primaryAddress` tinyint(1) DEFAULT NULL,
  `deliveryAddress` tinyint(1) DEFAULT NULL,
  `billingAddress` tinyint(1) DEFAULT NULL,
  `street` varchar(150) DEFAULT NULL,
  `number` varchar(60) DEFAULT NULL,
  `addition` varchar(60) DEFAULT NULL,
  `zip` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `state` varchar(60) DEFAULT NULL,
  `countryCode` varchar(5) DEFAULT NULL,
  `postboxNumber` varchar(100) DEFAULT NULL,
  `postboxPostcode` varchar(100) DEFAULT NULL,
  `postboxCity` varchar(100) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `idAdressTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_address_types`
--

CREATE TABLE `co_address_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `co_address_types`
--

INSERT INTO `co_address_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Table structure for table `co_bank_account`
--

CREATE TABLE `co_bank_account` (
  `id` int(11) NOT NULL,
  `bankName` varchar(150) DEFAULT NULL,
  `bic` varchar(100) DEFAULT NULL,
  `iban` varchar(100) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contacts`
--

CREATE TABLE `co_contacts` (
  `id` int(11) NOT NULL,
  `avatar` int(11) DEFAULT NULL,
  `firstName` varchar(60) NOT NULL,
  `middleName` varchar(60) DEFAULT NULL,
  `lastName` varchar(60) NOT NULL,
  `birthday` date DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `formOfAddress` int(11) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `mainEmail` varchar(255) DEFAULT NULL,
  `mainPhone` varchar(255) DEFAULT NULL,
  `mainFax` varchar(255) DEFAULT NULL,
  `mainUrl` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idTitles` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `co_contacts`
--

INSERT INTO `co_contacts` (`id`, `avatar`, `firstName`, `middleName`, `lastName`, `birthday`, `salutation`, `formOfAddress`, `newsletter`, `gender`, `note`, `mainEmail`, `mainPhone`, `mainFax`, `mainUrl`, `created`, `changed`, `idTitles`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, NULL, 'Adam', NULL, 'Ministrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-05 14:05:07', '2023-10-05 14:05:07', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_addresses`
--

CREATE TABLE `co_contact_addresses` (
  `id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `idAddresses` int(11) NOT NULL,
  `idContacts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_bank_accounts`
--

CREATE TABLE `co_contact_bank_accounts` (
  `idContacts` int(11) NOT NULL,
  `idBankAccounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_categories`
--

CREATE TABLE `co_contact_categories` (
  `idContacts` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_emails`
--

CREATE TABLE `co_contact_emails` (
  `idContacts` int(11) NOT NULL,
  `idEmails` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_faxes`
--

CREATE TABLE `co_contact_faxes` (
  `idContacts` int(11) NOT NULL,
  `idFaxes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_locales`
--

CREATE TABLE `co_contact_locales` (
  `id` int(11) NOT NULL,
  `locale` varchar(60) NOT NULL,
  `idContacts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_medias`
--

CREATE TABLE `co_contact_medias` (
  `idContacts` int(11) NOT NULL,
  `idMedias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_notes`
--

CREATE TABLE `co_contact_notes` (
  `idContacts` int(11) NOT NULL,
  `idNotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_phones`
--

CREATE TABLE `co_contact_phones` (
  `idContacts` int(11) NOT NULL,
  `idPhones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_social_media_profiles`
--

CREATE TABLE `co_contact_social_media_profiles` (
  `idContacts` int(11) NOT NULL,
  `idSocialMediaProfiles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_tags`
--

CREATE TABLE `co_contact_tags` (
  `idContacts` int(11) NOT NULL,
  `idTags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_titles`
--

CREATE TABLE `co_contact_titles` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_contact_urls`
--

CREATE TABLE `co_contact_urls` (
  `idContacts` int(11) NOT NULL,
  `idUrls` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_emails`
--

CREATE TABLE `co_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `idEmailTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_email_types`
--

CREATE TABLE `co_email_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `co_email_types`
--

INSERT INTO `co_email_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Table structure for table `co_faxes`
--

CREATE TABLE `co_faxes` (
  `id` int(11) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `idFaxTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_fax_types`
--

CREATE TABLE `co_fax_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `co_fax_types`
--

INSERT INTO `co_fax_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Table structure for table `co_notes`
--

CREATE TABLE `co_notes` (
  `id` int(11) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_phones`
--

CREATE TABLE `co_phones` (
  `id` int(11) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `idPhoneTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_phone_types`
--

CREATE TABLE `co_phone_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `co_phone_types`
--

INSERT INTO `co_phone_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private'),
(3, 'sulu_contact.mobile');

-- --------------------------------------------------------

--
-- Table structure for table `co_positions`
--

CREATE TABLE `co_positions` (
  `id` int(11) NOT NULL,
  `position` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_social_media_profiles`
--

CREATE TABLE `co_social_media_profiles` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `idSocialMediaTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_social_media_profile_types`
--

CREATE TABLE `co_social_media_profile_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `co_social_media_profile_types`
--

INSERT INTO `co_social_media_profile_types` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Instagram');

-- --------------------------------------------------------

--
-- Table structure for table `co_urls`
--

CREATE TABLE `co_urls` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `idUrlTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_url_types`
--

CREATE TABLE `co_url_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `co_url_types`
--

INSERT INTO `co_url_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Table structure for table `fo_dynamics`
--

CREATE TABLE `fo_dynamics` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `typeId` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `webspaceKey` varchar(255) NOT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `formId` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fo_dynamics`
--

INSERT INTO `fo_dynamics` (`id`, `type`, `typeId`, `locale`, `webspaceKey`, `typeName`, `data`, `created`, `changed`, `formId`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"0628438016\"}', '2023-10-16 08:33:13', '2023-10-16 08:33:13', 1, NULL, NULL),
(2, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"0293121312\"}', '2023-10-16 08:39:42', '2023-10-16 08:39:42', 1, NULL, NULL),
(3, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"0293121312\"}', '2023-10-16 08:41:09', '2023-10-16 08:41:09', 1, NULL, NULL),
(4, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"0628438016\"}', '2023-10-16 08:46:22', '2023-10-16 08:46:22', 1, NULL, NULL),
(5, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"0628438016\"}', '2023-10-16 08:47:35', '2023-10-16 08:47:35', 1, NULL, NULL),
(6, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"12345\"}', '2023-10-16 08:48:00', '2023-10-16 08:48:00', 1, NULL, NULL),
(7, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"12345\"}', '2023-10-16 08:48:42', '2023-10-16 08:48:42', 1, NULL, NULL),
(8, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\"}', '2023-10-16 08:50:26', '2023-10-16 08:50:26', 1, NULL, NULL),
(9, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"0628438016\"}', '2023-10-16 09:15:06', '2023-10-16 09:15:06', 1, NULL, NULL),
(10, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"0628438016\"}', '2023-10-16 09:20:57', '2023-10-16 09:20:57', 1, NULL, NULL),
(11, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"0628438016\"}', '2023-10-16 09:36:25', '2023-10-16 09:36:25', 1, NULL, NULL),
(12, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"phone\":\"312321321\"}', '2023-10-16 09:39:03', '2023-10-16 09:39:03', 1, NULL, NULL),
(13, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"checkbox\":true,\"dropdown\":\"5\"}', '2023-10-16 09:57:17', '2023-10-16 09:57:17', 1, NULL, NULL),
(14, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"test\",\"email\":\"test@test.com\",\"phone1\":\"123\",\"city\":\"test\",\"text1\":\"test\",\"checkbox\":false,\"dropdown\":\"1\"}', '2023-10-16 10:30:59', '2023-10-16 10:30:59', 1, NULL, NULL),
(15, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"test\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"123\",\"city\":\"test\",\"text1\":\"test\",\"checkbox\":false,\"dropdown\":\"1\"}', '2023-10-16 10:31:39', '2023-10-16 10:31:39', 1, NULL, NULL),
(16, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"city\":\"test\",\"text1\":\"test\",\"checkbox\":true,\"dropdown\":\"1\"}', '2023-10-16 10:33:25', '2023-10-16 10:33:25', 1, NULL, NULL),
(17, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"company\":\"Centar Novih Tehnologija\",\"text\":\"103562487\",\"text2\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"dropdown\":\"1\",\"zip\":\"22400\"}', '2023-10-16 13:05:29', '2023-10-16 13:05:29', 1, NULL, NULL),
(18, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"Sanja\",\"email\":\"sanja@cnt.rs\",\"phone1\":\"0611111111\",\"dropdown\":\"5\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"zip\":\"22400\"}', '2023-10-16 13:14:29', '2023-10-16 13:14:29', 1, NULL, NULL),
(19, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"Mihajlo\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"21321321\",\"dropdown\":\"3\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"zip\":\"22400\"}', '2023-10-16 13:31:47', '2023-10-16 13:31:47', 1, NULL, NULL),
(20, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"dsadsad\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"21321321\",\"dropdown\":\"5\",\"city\":\"10\",\"text1\":\"213\",\"zip\":\"22400\"}', '2023-10-16 13:39:28', '2023-10-16 13:39:28', 1, NULL, NULL),
(21, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"dropdown\":\"2\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"zip\":\"22400\"}', '2023-10-16 13:54:16', '2023-10-16 13:54:16', 1, NULL, NULL),
(22, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"dropdown\":\"1\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"zip\":\"22400\"}', '2023-10-16 13:55:05', '2023-10-16 13:55:05', 1, NULL, NULL),
(23, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"dropdown\":\"2\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"zip\":\"22400\"}', '2023-10-16 14:00:36', '2023-10-16 14:00:36', 1, NULL, NULL),
(24, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"dropdown\":\"3\",\"city\":\"Ruma\",\"text1\":\"123\",\"zip\":\"22400\"}', '2023-10-16 14:02:17', '2023-10-16 14:02:17', 1, NULL, NULL),
(25, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"dropdown\":\"2\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"zip\":\"22400\"}', '2023-10-16 14:04:25', '2023-10-16 14:04:25', 1, NULL, NULL),
(26, 'page', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'en', 'digitrans', 'DigiTrans | Business and Digital Transformation Conference', '{\"text2\":\"Mihajlo Varga\",\"email\":\"mihajlo@cnt.rs\",\"phone1\":\"0628438016\",\"dropdown\":\"3\",\"city\":\"Ruma\",\"text1\":\"JNA 126\",\"zip\":\"22400\"}', '2023-10-16 14:05:44', '2023-10-16 14:05:44', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fo_forms`
--

CREATE TABLE `fo_forms` (
  `id` int(11) NOT NULL,
  `defaultLocale` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fo_forms`
--

INSERT INTO `fo_forms` (`id`, `defaultLocale`) VALUES
(1, 'en'),
(2, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `fo_form_fields`
--

CREATE TABLE `fo_form_fields` (
  `id` int(11) NOT NULL,
  `keyName` varchar(128) NOT NULL,
  `orderNumber` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `width` varchar(16) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `defaultLocale` varchar(5) NOT NULL,
  `idForms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fo_form_fields`
--

INSERT INTO `fo_form_fields` (`id`, `keyName`, `orderNumber`, `type`, `width`, `required`, `defaultLocale`, `idForms`) VALUES
(1, 'text2', 3, 'text', 'full', 1, 'en', 1),
(2, 'email', 4, 'email', 'full', 1, 'en', 1),
(3, 'textarea', 27, 'textarea', 'full', 0, 'en', 2),
(4, 'text', 26, 'text', 'full', 0, 'en', 2),
(5, 'checkbox', 25, 'checkbox', 'full', 0, 'en', 2),
(6, 'dropdownMultiple', 24, 'dropdownMultiple', 'full', 0, 'en', 2),
(7, 'dropdown', 23, 'dropdown', 'full', 0, 'en', 2),
(8, 'checkboxMultiple', 22, 'checkboxMultiple', 'full', 0, 'en', 2),
(9, 'radioButtons', 21, 'radioButtons', 'full', 0, 'en', 2),
(10, 'attachment', 20, 'attachment', 'full', 0, 'en', 2),
(11, 'spacer4', 19, 'spacer', 'half', 0, 'en', 2),
(12, 'email', 18, 'email', 'half', 1, 'en', 2),
(13, 'phone', 17, 'phone', 'half', 0, 'en', 2),
(14, 'fax', 16, 'fax', 'half', 0, 'en', 2),
(15, 'company', 15, 'company', 'half', 0, 'en', 2),
(16, 'function', 14, 'function', 'half', 0, 'en', 2),
(17, 'freeText', 13, 'freeText', 'full', 0, 'en', 2),
(18, 'headline', 12, 'headline', 'full', 0, 'en', 2),
(19, 'country', 11, 'country', 'half', 0, 'en', 2),
(20, 'state', 10, 'state', 'half', 0, 'en', 2),
(21, 'city', 9, 'city', 'half', 0, 'en', 2),
(22, 'zip', 8, 'zip', 'half', 0, 'en', 2),
(23, 'spacer3', 7, 'spacer', 'half', 0, 'en', 2),
(24, 'street', 6, 'street', 'half', 0, 'en', 2),
(25, 'lastName', 5, 'lastName', 'half', 1, 'en', 2),
(26, 'firstName', 4, 'firstName', 'half', 1, 'en', 2),
(27, 'spacer2', 3, 'spacer', 'half', 0, 'en', 2),
(28, 'title', 2, 'title', 'half', 0, 'en', 2),
(29, 'spacer', 1, 'spacer', 'half', 0, 'en', 2),
(30, 'salutation', 0, 'salutation', 'half', 0, 'en', 2),
(31, 'phone1', 5, 'phone', 'full', 1, 'en', 1),
(32, 'city', 7, 'city', 'full', 1, 'en', 1),
(33, 'text1', 8, 'text', 'full', 1, 'en', 1),
(35, 'dropdown', 6, 'dropdown', 'full', 1, 'en', 1),
(36, 'company', 1, 'company', 'full', 0, 'en', 1),
(37, 'text', 2, 'text', 'full', 0, 'en', 1),
(38, 'zip', 9, 'zip', 'full', 1, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fo_form_field_translations`
--

CREATE TABLE `fo_form_field_translations` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `defaultValue` longtext DEFAULT NULL,
  `shortTitle` varchar(255) DEFAULT NULL,
  `locale` varchar(5) NOT NULL,
  `options` longtext DEFAULT NULL,
  `idFormFields` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fo_form_field_translations`
--

INSERT INTO `fo_form_field_translations` (`id`, `title`, `placeholder`, `defaultValue`, `shortTitle`, `locale`, `options`, `idFormFields`) VALUES
(1, 'Ime i Prezime', NULL, NULL, NULL, 'en', '[]', 1),
(2, 'Email', NULL, NULL, NULL, 'en', '[]', 2),
(3, 'Textarea', NULL, NULL, NULL, 'en', '[]', 3),
(4, 'Text', NULL, NULL, NULL, 'en', '[]', 4),
(5, 'Checkbox', NULL, NULL, NULL, 'en', '[]', 5),
(6, 'DropdownMultiple', NULL, NULL, NULL, 'en', '{\"choices\":\"Choice 1\\nChoice 2\\nChoice 3\\nChoice 4\\nChoice 5\\nChoice 6\\nChoice 7\\n\"}', 6),
(7, 'Dropdown', NULL, NULL, NULL, 'en', '{\"choices\":\"Choice 1\\nChoice 2\\nChoice 3\\nChoice 4\\nChoice 5\\nChoice 6\\nChoice 7\\n\"}', 7),
(8, 'CheckboxMultiple', NULL, NULL, NULL, 'en', '{\"choices\":\"Choice 1\\nChoice 2\\nChoice 3\\nChoice 4\\nChoice 5\\nChoice 6\\nChoice 7\\n\"}', 8),
(9, 'RadioButtons', NULL, NULL, NULL, 'en', '{\"choices\":\"Choice 1\\nChoice 2\\nChoice 3\\nChoice 4\\nChoice 5\\nChoice 6\\nChoice 7\\n\"}', 9),
(10, 'Attachment', NULL, NULL, NULL, 'en', '[]', 10),
(11, 'Spacer', NULL, NULL, NULL, 'en', '[]', 11),
(12, 'Email', NULL, NULL, NULL, 'en', '[]', 12),
(13, 'Phone', NULL, NULL, NULL, 'en', '[]', 13),
(14, 'Fax', NULL, NULL, NULL, 'en', '[]', 14),
(15, 'Company', NULL, NULL, NULL, 'en', '[]', 15),
(16, 'Function', NULL, NULL, NULL, 'en', '[]', 16),
(17, 'FreeText', NULL, NULL, NULL, 'en', '[]', 17),
(18, 'Headline', NULL, NULL, NULL, 'en', '[]', 18),
(19, 'Country', NULL, NULL, NULL, 'en', '[]', 19),
(20, 'State', NULL, NULL, NULL, 'en', '[]', 20),
(21, 'City', NULL, NULL, NULL, 'en', '[]', 21),
(22, 'Zip', NULL, NULL, NULL, 'en', '[]', 22),
(23, 'Spacer', NULL, NULL, NULL, 'en', '[]', 23),
(24, 'Street', NULL, NULL, NULL, 'en', '[]', 24),
(25, 'LastName', NULL, NULL, NULL, 'en', '[]', 25),
(26, 'FirstName', NULL, NULL, NULL, 'en', '[]', 26),
(27, 'Spacer', NULL, NULL, NULL, 'en', '[]', 27),
(28, 'Title', NULL, NULL, NULL, 'en', '[]', 28),
(29, 'Spacer', NULL, NULL, NULL, 'en', '[]', 29),
(30, 'Salutation', NULL, NULL, NULL, 'en', '[]', 30),
(31, 'Kontakt Telefon', NULL, NULL, NULL, 'en', '[]', 31),
(32, 'Grad', NULL, NULL, NULL, 'en', '[]', 32),
(33, 'Adresa', NULL, NULL, NULL, 'en', '[]', 33),
(35, 'Broj karata', NULL, '0', NULL, 'en', '{\"choices\":\"1\\n2\\n3\\n4\\n5\\n6\\n7\\n8\\n9\\n10\\n11\\n12\\n13\\n14\\n15\\n16\\n17\\n18\\n19\\n20\\n\"}', 35),
(36, 'Naziv Firme', NULL, NULL, NULL, 'en', '[]', 36),
(37, 'PIB Firme', NULL, NULL, NULL, 'en', '[]', 37),
(38, 'Poštanski Broj', NULL, NULL, NULL, 'en', '[]', 38);

-- --------------------------------------------------------

--
-- Table structure for table `fo_form_translations`
--

CREATE TABLE `fo_form_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromEmail` varchar(255) DEFAULT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `toEmail` varchar(255) DEFAULT NULL,
  `toName` varchar(255) DEFAULT NULL,
  `mailText` longtext DEFAULT NULL,
  `submitLabel` varchar(255) DEFAULT NULL,
  `successText` longtext DEFAULT NULL,
  `sendAttachments` tinyint(1) NOT NULL DEFAULT 0,
  `deactivateAttachmentSave` tinyint(1) NOT NULL DEFAULT 0,
  `deactivateNotifyMails` tinyint(1) NOT NULL DEFAULT 0,
  `deactivateCustomerMails` tinyint(1) NOT NULL DEFAULT 0,
  `replyTo` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(5) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idForms` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fo_form_translations`
--

INSERT INTO `fo_form_translations` (`id`, `title`, `subject`, `fromEmail`, `fromName`, `toEmail`, `toName`, `mailText`, `submitLabel`, `successText`, `sendAttachments`, `deactivateAttachmentSave`, `deactivateNotifyMails`, `deactivateCustomerMails`, `replyTo`, `locale`, `created`, `changed`, `idForms`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'Single Ticket', 'digitrans.pro | Rezervacija', NULL, NULL, 'prijava@digitrans.pro', 'digitrans.pro | Rezervacija', '<p>Uspešno ste rezervisali kartu/e, uskoro će vam stići račun na ovu email adresu.</p><p>Ukoliko Vam ne stigne račun u roku od 24h, molimo Vas pišite nam direktno na prijava@digitrans.pro</p><p>DigiTrans Konferencija 2023</p>', 'Rezervišite', '<p>Uspešno ste poslali rezervaciju za pojedinačnu kartu.</p><p>Kontaktiraćemo Vas ubrzo.</p>', 0, 0, 0, 0, 1, 'en', '2023-10-16 08:16:18', '2023-10-16 13:13:40', 1, 1, 1),
(2, 'Test Form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 'en', '2023-10-16 08:24:47', '2023-10-16 08:24:47', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fo_form_translation_receivers`
--

CREATE TABLE `fo_form_translation_receivers` (
  `id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `idFormTranslations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_collections`
--

CREATE TABLE `me_collections` (
  `id` int(11) NOT NULL,
  `style` varchar(255) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `collection_key` varchar(191) DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCollectionsMetaDefault` int(11) DEFAULT NULL,
  `idCollectionTypes` int(11) NOT NULL,
  `idCollectionsParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `me_collections`
--

INSERT INTO `me_collections` (`id`, `style`, `lft`, `rgt`, `depth`, `collection_key`, `created`, `changed`, `idCollectionsMetaDefault`, `idCollectionTypes`, `idCollectionsParent`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, NULL, 1, 16, 0, 'system_collections', '2023-10-05 14:05:08', '2023-10-05 14:05:08', 1, 2, NULL, NULL, NULL),
(2, NULL, 2, 5, 1, 'sulu_media', '2023-10-05 14:05:08', '2023-10-16 08:03:58', 2, 2, 1, NULL, 1),
(3, NULL, 3, 4, 2, 'sulu_media.preview_image', '2023-10-05 14:05:08', '2023-10-16 08:03:58', 4, 2, 2, NULL, 1),
(4, NULL, 6, 11, 1, 'sulu_contact', '2023-10-05 14:05:08', '2023-10-16 08:03:58', 6, 2, 1, NULL, 1),
(5, NULL, 7, 8, 2, 'sulu_contact.contact', '2023-10-05 14:05:08', '2023-10-16 08:03:58', 8, 2, 4, NULL, 1),
(6, NULL, 9, 10, 2, 'sulu_contact.account', '2023-10-05 14:05:08', '2023-10-16 08:03:58', 10, 2, 4, NULL, 1),
(7, NULL, 17, 18, 0, NULL, '2023-10-13 08:14:07', '2023-10-13 08:14:07', 12, 1, NULL, 1, 1),
(8, NULL, 19, 20, 0, NULL, '2023-10-13 11:10:44', '2023-10-13 11:10:44', 13, 1, NULL, 1, 1),
(9, NULL, 12, 15, 1, 'sulu_form', '2023-10-16 08:03:58', '2023-10-16 08:03:58', 14, 2, 1, 1, 1),
(10, NULL, 13, 14, 2, 'sulu_form.attachments', '2023-10-16 08:03:58', '2023-10-16 08:03:58', 16, 2, 9, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `me_collection_meta`
--

CREATE TABLE `me_collection_meta` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `locale` varchar(5) NOT NULL,
  `idCollections` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `me_collection_meta`
--

INSERT INTO `me_collection_meta` (`id`, `title`, `description`, `locale`, `idCollections`) VALUES
(1, 'System', NULL, 'en', 1),
(2, 'Sulu media', NULL, 'en', 2),
(3, 'Sulu Medien', NULL, 'de', 2),
(4, 'Preview images', NULL, 'en', 3),
(5, 'Vorschaubilder', NULL, 'de', 3),
(6, 'Sulu contacts', NULL, 'en', 4),
(7, 'Sulu Kontakte', NULL, 'de', 4),
(8, 'People', NULL, 'en', 5),
(9, 'Personen', NULL, 'de', 5),
(10, 'Organizations', NULL, 'en', 6),
(11, 'Organisationen', NULL, 'de', 6),
(12, 'Predavači', 'Slike predavača', 'en', 7),
(13, 'Partneri', NULL, 'en', 8),
(14, 'Sulu forms', NULL, 'en', 9),
(15, 'Sulu Formulare', NULL, 'de', 9),
(16, 'Attachments', NULL, 'en', 10),
(17, 'Anhänge', NULL, 'de', 10);

-- --------------------------------------------------------

--
-- Table structure for table `me_collection_types`
--

CREATE TABLE `me_collection_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `collection_type_key` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `me_collection_types`
--

INSERT INTO `me_collection_types` (`id`, `name`, `collection_type_key`, `description`) VALUES
(1, 'Default', 'collection.default', NULL),
(2, 'System Collections', 'collection.system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `me_files`
--

CREATE TABLE `me_files` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idMedia` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `me_files`
--

INSERT INTO `me_files` (`id`, `version`, `created`, `changed`, `idMedia`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 1, '2023-10-13 08:14:14', '2023-10-13 08:14:14', 1, 1, 1),
(2, 1, '2023-10-13 08:18:35', '2023-10-13 08:18:35', 2, 1, 1),
(3, 1, '2023-10-13 11:10:48', '2023-10-13 11:10:48', 3, 1, 1),
(4, 1, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 4, 1, 1),
(5, 1, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 5, 1, 1),
(6, 1, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 6, 1, 1),
(7, 1, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 7, 1, 1),
(8, 1, '2023-10-13 11:30:39', '2023-10-13 11:30:39', 8, 1, 1),
(9, 1, '2023-10-13 11:30:39', '2023-10-13 11:30:39', 9, 1, 1),
(10, 1, '2023-10-13 11:30:40', '2023-10-13 11:30:40', 10, 1, 1),
(11, 1, '2023-10-13 11:37:45', '2023-10-13 11:37:45', 11, 1, 1),
(12, 1, '2023-10-13 11:44:36', '2023-10-13 11:44:36', 12, 1, 1),
(13, 1, '2023-10-16 06:38:30', '2023-10-16 06:38:30', 13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `me_file_versions`
--

CREATE TABLE `me_file_versions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `version` int(11) NOT NULL,
  `subVersion` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL,
  `downloadCounter` int(11) NOT NULL DEFAULT 0,
  `storageOptions` longtext DEFAULT NULL,
  `mimeType` varchar(191) DEFAULT NULL,
  `properties` varchar(1000) DEFAULT NULL,
  `focusPointX` int(11) DEFAULT NULL,
  `focusPointY` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idFileVersionsMetaDefault` int(11) DEFAULT NULL,
  `idFiles` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `me_file_versions`
--

INSERT INTO `me_file_versions` (`id`, `name`, `version`, `subVersion`, `size`, `downloadCounter`, `storageOptions`, `mimeType`, `properties`, `focusPointX`, `focusPointY`, `created`, `changed`, `idFileVersionsMetaDefault`, `idFiles`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'profile.png', 1, 0, 32174, 0, '{\"segment\":\"07\",\"fileName\":\"profile.png\"}', 'image/png', '{\"width\":512,\"height\":512}', NULL, NULL, '2023-10-13 08:14:14', '2023-10-13 08:14:14', 1, 1, 1, 1),
(2, 'woman.png', 1, 0, 33344, 0, '{\"segment\":\"05\",\"fileName\":\"woman.png\"}', 'image/png', '{\"width\":512,\"height\":512}', NULL, NULL, '2023-10-13 08:18:35', '2023-10-13 08:18:35', 2, 2, 1, 1),
(3, 'CNT png logo.png', 1, 0, 144721, 0, '{\"segment\":\"05\",\"fileName\":\"cnt-png-logo.png\"}', 'image/png', '{\"width\":2000,\"height\":1600}', NULL, NULL, '2023-10-13 11:10:48', '2023-10-13 11:10:48', 3, 3, 1, 1),
(4, 'CDT logo.png', 1, 0, 16818, 0, '{\"segment\":\"10\",\"fileName\":\"cdt-logo.png\"}', 'image/png', '{\"width\":645,\"height\":251}', NULL, NULL, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 4, 4, 1, 1),
(5, 'GoProLogoBeli2021.png', 1, 0, 14492, 0, '{\"segment\":\"10\",\"fileName\":\"goprologobeli2021.png\"}', 'image/png', '{\"width\":613,\"height\":279}', NULL, NULL, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 5, 5, 1, 1),
(6, 'payspot.png', 1, 0, 30867, 0, '{\"segment\":\"06\",\"fileName\":\"payspot.png\"}', 'image/png', '{\"width\":866,\"height\":330}', NULL, NULL, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 6, 6, 1, 1),
(7, 'starcard.png', 1, 0, 24078, 0, '{\"segment\":\"10\",\"fileName\":\"starcard.png\"}', 'image/png', '{\"width\":1181,\"height\":271}', NULL, NULL, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 7, 7, 1, 1),
(8, 'positive.png', 1, 0, 80866, 0, '{\"segment\":\"05\",\"fileName\":\"positive.png\"}', 'image/png', '{\"width\":2676,\"height\":498}', NULL, NULL, '2023-10-13 11:30:39', '2023-10-13 11:30:39', 8, 8, 1, 1),
(9, 'upv.png', 1, 0, 29694, 0, '{\"segment\":\"09\",\"fileName\":\"upv.png\"}', 'image/png', '{\"width\":535,\"height\":277}', NULL, NULL, '2023-10-13 11:30:39', '2023-10-13 11:30:39', 9, 9, 1, 1),
(10, 'privreda-turizam.png', 1, 0, 151750, 0, '{\"segment\":\"02\",\"fileName\":\"privreda-turizam.png\"}', 'image/png', '{\"width\":643,\"height\":565}', NULL, NULL, '2023-10-13 11:30:40', '2023-10-13 11:30:40', 10, 10, 1, 1),
(11, 'Mm 460x460-JPEG.jpg', 1, 0, 20840, 0, '{\"segment\":\"08\",\"fileName\":\"mm-460x460-jpeg.jpg\"}', 'image/jpeg', '{\"width\":460,\"height\":460}', NULL, NULL, '2023-10-13 11:37:45', '2023-10-13 11:37:45', 11, 11, 1, 1),
(12, 'Ferum LOGO.jpg', 1, 0, 31617, 0, '{\"segment\":\"09\",\"fileName\":\"ferum-logo.jpg\"}', 'image/jpeg', '{\"width\":1060,\"height\":458}', NULL, NULL, '2023-10-13 11:44:36', '2023-10-13 11:44:36', 12, 12, 1, 1),
(13, 'JPG Logo-400x400.jpg', 1, 0, 18040, 0, '{\"segment\":\"02\",\"fileName\":\"jpg-logo-400x400.jpg\"}', 'image/jpeg', '{\"width\":400,\"height\":400}', NULL, NULL, '2023-10-16 06:38:30', '2023-10-16 06:38:30', 13, 13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `me_file_version_categories`
--

CREATE TABLE `me_file_version_categories` (
  `idFileVersions` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_file_version_content_languages`
--

CREATE TABLE `me_file_version_content_languages` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `idFileVersions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_file_version_meta`
--

CREATE TABLE `me_file_version_meta` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `copyright` longtext DEFAULT NULL,
  `credits` longtext DEFAULT NULL,
  `locale` varchar(5) NOT NULL,
  `idFileVersions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `me_file_version_meta`
--

INSERT INTO `me_file_version_meta` (`id`, `title`, `description`, `copyright`, `credits`, `locale`, `idFileVersions`) VALUES
(1, 'profile', NULL, NULL, NULL, 'en', 1),
(2, 'woman', NULL, NULL, NULL, 'en', 2),
(3, 'CNT png logo', NULL, NULL, NULL, 'en', 3),
(4, 'CDT logo', NULL, NULL, NULL, 'en', 4),
(5, 'GoProLogoBeli2021', NULL, NULL, NULL, 'en', 5),
(6, 'payspot', NULL, NULL, NULL, 'en', 6),
(7, 'starcard', NULL, NULL, NULL, 'en', 7),
(8, 'positive', NULL, NULL, NULL, 'en', 8),
(9, 'upv', NULL, NULL, NULL, 'en', 9),
(10, 'privreda-turizam', NULL, NULL, NULL, 'en', 10),
(11, 'Mm 460x460-JPEG', NULL, NULL, NULL, 'en', 11),
(12, 'Ferum LOGO', NULL, NULL, NULL, 'en', 12),
(13, 'JPG Logo-400x400', NULL, NULL, NULL, 'en', 13);

-- --------------------------------------------------------

--
-- Table structure for table `me_file_version_publish_languages`
--

CREATE TABLE `me_file_version_publish_languages` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `idFileVersions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_file_version_tags`
--

CREATE TABLE `me_file_version_tags` (
  `idFileVersions` int(11) NOT NULL,
  `idTags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_format_options`
--

CREATE TABLE `me_format_options` (
  `format_key` varchar(191) NOT NULL,
  `crop_x` int(11) NOT NULL,
  `crop_y` int(11) NOT NULL,
  `crop_width` int(11) NOT NULL,
  `crop_height` int(11) NOT NULL,
  `fileVersion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_media`
--

CREATE TABLE `me_media` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idMediaTypes` int(11) NOT NULL,
  `idPreviewImage` int(11) DEFAULT NULL,
  `idCollections` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `me_media`
--

INSERT INTO `me_media` (`id`, `created`, `changed`, `idMediaTypes`, `idPreviewImage`, `idCollections`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, '2023-10-13 08:14:14', '2023-10-13 08:14:14', 2, NULL, 7, 1, 1),
(2, '2023-10-13 08:18:35', '2023-10-13 08:18:35', 2, NULL, 7, 1, 1),
(3, '2023-10-13 11:10:48', '2023-10-13 11:10:48', 2, NULL, 8, 1, 1),
(4, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 2, NULL, 8, 1, 1),
(5, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 2, NULL, 8, 1, 1),
(6, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 2, NULL, 8, 1, 1),
(7, '2023-10-13 11:30:38', '2023-10-13 11:30:38', 2, NULL, 8, 1, 1),
(8, '2023-10-13 11:30:39', '2023-10-13 11:30:39', 2, NULL, 8, 1, 1),
(9, '2023-10-13 11:30:39', '2023-10-13 11:30:39', 2, NULL, 8, 1, 1),
(10, '2023-10-13 11:30:40', '2023-10-13 11:30:40', 2, NULL, 8, 1, 1),
(11, '2023-10-13 11:37:45', '2023-10-13 11:37:45', 2, NULL, 8, 1, 1),
(12, '2023-10-13 11:44:36', '2023-10-13 11:44:36', 2, NULL, 8, 1, 1),
(13, '2023-10-16 06:38:30', '2023-10-16 06:38:30', 2, NULL, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `me_media_types`
--

CREATE TABLE `me_media_types` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `me_media_types`
--

INSERT INTO `me_media_types` (`id`, `name`, `description`) VALUES
(1, 'document', NULL),
(2, 'image', NULL),
(3, 'video', NULL),
(4, 'audio', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_binarydata`
--

CREATE TABLE `phpcr_binarydata` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `property_name` varchar(191) NOT NULL,
  `workspace_name` varchar(191) NOT NULL,
  `idx` int(11) NOT NULL DEFAULT 0,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_internal_index_types`
--

CREATE TABLE `phpcr_internal_index_types` (
  `type` varchar(191) NOT NULL,
  `node_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_namespaces`
--

CREATE TABLE `phpcr_namespaces` (
  `prefix` varchar(191) NOT NULL,
  `uri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phpcr_namespaces`
--

INSERT INTO `phpcr_namespaces` (`prefix`, `uri`) VALUES
('i18n', 'http://sulu.io/phpcr/locale'),
('phpcrmig', 'http://www.danteech.com/phpcr-migrations'),
('sec', 'http://sulu.io/phpcr/sec'),
('settings', 'http://sulu.io/phpcr/settings'),
('sulu', 'http://sulu.io/phpcr');

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_nodes`
--

CREATE TABLE `phpcr_nodes` (
  `id` int(11) NOT NULL,
  `path` varchar(191) NOT NULL,
  `parent` varchar(191) NOT NULL,
  `local_name` varchar(191) NOT NULL,
  `namespace` varchar(191) NOT NULL,
  `workspace_name` varchar(191) NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `props` longtext NOT NULL,
  `numerical_props` longtext DEFAULT NULL,
  `depth` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phpcr_nodes`
--

INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(1, '/', '', '', '', 'default', '14f40120-9415-4115-914a-cb5270a6458c', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 0, NULL),
(2, '/', '', '', '', 'default_live', '06984792-e42a-4bbe-baab-b43238a10eea', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 0, NULL),
(3, '/cmf', '/', 'cmf', '', 'default', '59b5ea29-1e11-4b13-9a31-37fb1348bea9', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">59b5ea29-1e11-4b13-9a31-37fb1348bea9</sv:value></sv:property></sv:node>\n', NULL, 1, 1),
(4, '/cmf/digitrans', '/cmf', 'digitrans', '', 'default', '1067f335-2fd6-4dc0-b364-6a033c86667e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">1067f335-2fd6-4dc0-b364-6a033c86667e</sv:value></sv:property></sv:node>\n', NULL, 2, 1),
(5, '/cmf/digitrans/contents', '/cmf/digitrans', 'contents', '', 'default', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">acc24755-82f8-435c-9cce-b3aefdd6d3d8</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"58\">DigiTrans | Business and Digital Transformation Conference</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.261+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T08:32:59.181+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.313+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">accordion</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_headline#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"20\">Više o konferenciji</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"650\">&lt;p&gt;&lt;strong&gt;Ideja DiGi Trans konferencije&lt;/strong&gt; jeste da pružimo podršku preduzetnicima, zanatlijama, malim i srednjim preduzećima u unapređenju neophodnih znanja i veština za uspešno upravljanje svojim kompanijama. Kroz seriju edukativnih sesija, prepoznaćete načine za unapređenje poslovanja spram potreba Vaše kompanije i kao ultimativni cilj, postićićete veću efikasnost u svom poslovanju.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Zajednička vizija je jasna&lt;/strong&gt;: da svi preduzetnici budu spremni za izazove današnjeg vremena i brzih promena, te da zajedno budemo konkurentni sa svetskim kompanijama koje postaju sve prisutnije na našem tržištu.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">accordion</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_headline#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">Kome je namenjena konferencija?</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_description#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"235\">&lt;p&gt;Konferencija je namenjena &lt;strong&gt;svim preduzetnicima&lt;/strong&gt; ( mikro,malim i srednjim preduzećima ) koji žele da podignu efikasnost. Svim onima koji žele da unaprede svoje poslovanje ali im je potrebna podrška na tom putu.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">4</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">accordion</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_headline#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"38\">Koja je dodatna vrednost konferencije?</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_description#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"546\">&lt;p&gt;&lt;strong&gt;DiGi Trans konferencija predstavlja početak putovanja &lt;/strong&gt;koje ima za cilj da probudi svest o digitalnoj transformaciji i da vam pruži konkretne korake kako da je ostvarite. Nakon inspirativnih uvodnih predavanja, sledeći korak je da uživo razgovaramo o koracima koje je potrebno da uradite kako bi napravili pozitivne promene u vašem poslovanju. Ovo je mesto gde ćete moći da razmenjujete poslovne ideje i razvijate nova partnerstva ali i da steknete znanja koja su vam neophodna na putu poslovne transformacije.&amp;nbsp;&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-type#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">accordion</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-settings#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_headline#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">Šta ova konferencija NIJE!</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_description#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"333\">&lt;p&gt;&lt;strong&gt;Ova konferencija nije mesto za kratkotrajnu motivaciju koja se gasi brže nego što se upali&lt;/strong&gt;. Nismo tu da vas samo privremeno inspirišemo, a već da sutradan nastavite kao da se ništa nije desilo. Takođe, nismo tu da vam kroz teoriju pričamo o promenama koje trebaju da se dogode, bez konkretnih rešenja.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">10</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"77\">Podizanje performansi kompanije kroz digitalizaciju i poslovnu transformaciju</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"659\">&lt;p&gt;Često čujemo o digitalnoj transformaciji, to je postalo svojevrsno \"buzz word\" koje se neprestano ponavlja kao mantra. Shvatili smo da je promena neophodna ukoliko želimo da opstanemo na dinamičnom i nemilosrdnom tržištu. No, ono što nas zaista zanima je kako da tu promenu sprovedemo i koji su konkretni koraci koje treba preduzeti. Upravo o tome će govoriti naše uvodno predavanje.&lt;/p&gt;&lt;p&gt;Ova konferencija će razjasniti da je sam proces digitalne transformacije, iako složen na prvi pogled, u suštini prilično jednostavan. Ključna stvar je da se krene u akciju odmah i da se obezbede značajni resursi za sprovođenje neophodnih promena.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"50\">Kako postati efikasniji i efektivniji u poslovanju</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"785\">&lt;p&gt;Često se dešava da mnogi greše tako što u proces digitalne transformacije kreću nabavkom novog softvera, očekujući da će on rešiti sve njihove probleme. Međutim, prvi korak u ovom procesu nije vezan za tehnologiju, već za transformaciju samog poslovanja. Ova transformacija počinje od vlasnika preduzeća i menadžera. Ključno je da inicijativa za transformaciju krene odozgo, od rukovodstva, koje zatim treba da jasno komunicira ovu viziju sa svim zaposlenima. Tek tada možemo biti sigurni da su svi spremni za promene, jer samo zajedničkim naporima možemo uspešno sprovesti transformaciju.&lt;/p&gt;&lt;p&gt;Ovo predavanje će vam pokazati kako da efikasno izvršite tu prvu transformaciju, onu koja se dešava u našim umovima, i kako da olakšate otpor prema promenama.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"50\">Važnost kreiranja i modelovanja poslovnih procesa</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"963\">&lt;p&gt;Kao što smo već naglasili, nabavka novog softvera neće doneti željene efekte ukoliko nisu pravilno usklađeni sa vašim poslovnim procesima. U većini kompanija, ti procesi su često samo implicitno prisutni, čuvaju se u glavama zaposlenih, a najveći deo odgovornosti za njihovo upravljanje leži kod direktora. Nedostatak jasne definicije poslovnih procesa često rezultira neprofesionalnim pristupom izvođenju zadatka, gde se oslanjamo na neslužbene dogovore i parole \"neka neko uradi.\" Ovo može dovesti do neefikasnog obavljanja poslova, produženih rokova ili neispunjenih obaveza.&lt;/p&gt;&lt;p&gt;Nakon prvog koraka transformacije, koji se odvija u svesti zaposlenih, sledi drugi korak - transformacija organizacije. Ovo podrazumeva kreiranje odgovarajuće strategije, organizacione strukture, poslovnih procesa i procedura. Ovi koraci su ključni za uspeh i efikasnost vaše organizacije, omogućavajući joj da radi optimalno i ostvari svoje ciljeve.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"57\">Može li knjigovodstvo biti jednostavno i dostupno svima?</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"537\">&lt;p&gt;Da, knjigovodstvo može biti jednostavno i dostupno za sve, uključujući mala preduzeća i preduzetnike.&lt;/p&gt;&lt;p&gt;Svima nam je poznato da vođenje knjiga zahteva vreme i stručnost, što za male preduzetnike može biti dodatan teret. Međutim, u digitalnom dobu postoje alati koji pojednostavljuju proces knjigovodstva. Ovi alati omogućavaju automatsko praćenje finansija, generisanje izveštaja i olakšanu komunikaciju sa knjigovođama. Ovom temom ćemo istražiti kako ovi alati čine knjigovodstvo bržim i efikasnijim za sve.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"67\">Digitalni marketing- alat za brži i lakši razvoj malih preduzeća</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"325\">&lt;p&gt;Marketing je ključan za razvoj malih preduzeća. On vam pomaže da privučete klijente, izgradite brend, nadmašite konkurenciju i širite svoje poslovanje. Da biste postigli ovakav uspeh, neophodno je uložiti vreme i sredstva u marketinške strategije. Na konferenciji ćemo saznati kako to postići brže i lakše.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"75\">Kako doći do konsultanata i novčanih sredstava za finansiranje poslovanja</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"511\">&lt;p&gt;Dolazimo do ključnog pitanja za sve preduzetnike i mala preduzeća: \"Kako doći do konsultanata i novčanih sredstava za finansiranje poslovne i digitalne transformacije?\" CDT će vam predstaviti ne samo put do potrebnih finansijskih resursa, već i način kako da pronađete stručnog konsultanta koji će vas voditi kroz ceo proces. Uz podršku Centra za digitalnu transformaciju, nakon ovog događaja dobićete konkretne smernice i resurse kako biste efikasno nastavili svoju poslovnu transformaciju.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"46\">Iskoristite softver za unapređenje poslovanja</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"567\">&lt;p&gt;Prethodno smo se fokusirali na prvi korak transformacije - promenu svesti menadžmenta i zaposlenih, kao i na značaj uređenih poslovnih procesa kao osnova za digitalnu transformaciju.&lt;/p&gt;&lt;p&gt;Sada je vreme da se usredsredimo na sledeći korak: pronalaženje odgovarajućih softverskih alata koji će vam pomoći da unapredite svoje poslovanje. Ovi alati će vam omogućiti da poslovanje postane brže, efikasnije i sigurnije. Na našem predavanju ćemo istražiti kako pronaći i iskoristiti te alate kako biste ostvarili konkretne koristi za vaše preduzeće.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"72\">IT kao alat efektivnog i bezbednog poslovanja. Šta sve treba da znate? </sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"616\">&lt;p&gt;Osnova svake digitalne transformacije leži u IT infrastrukturi, jer, bez sumnje, nema digitalne transformacije bez IT-a.&lt;/p&gt;&lt;p&gt;Fokus ove teme će biti posvećen razumevanju kako IT alati i infrastruktura mogu unaprediti efikasnost poslovanja. Takođe, obratićemo veliku pažnju bezbednosti IT sistema, što je od suštinskog značaja u današnjem digitalnom okruženju.&lt;/p&gt;&lt;p&gt;Na ovom predavanju ćemo vam pružiti ključne informacije o tome kako da iskoristite IT za poboljšanje performansi vašeg preduzeća, istovremeno se osiguravajući da vaša IT infrastruktura bude sigurna od potencijalnih pretnji.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">E-commerc plaćanja na marketplace</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"856\">&lt;p&gt;Za preduzetnike, mala i srednja preduzeća, brza, efikasna i moderna rešenja za plaćanje su postala ključna komponenta uspešnog poslovanja u online svetu.&lt;/p&gt;&lt;p&gt;Živimo u eri u kojoj digitalna tržišta postaju sveprisutna, a platforme za online prodaju - tzv. marketplace platforme, nude neograničene mogućnosti za prodaju različitih proizvoda i usluga. I dok su ove platforme olakšale pristup globalnom tržištu, efikasno plaćanje je postalo esencijalno za održavanje konkurentske prednosti.&lt;/p&gt;&lt;p&gt;Naš cilj tokom ovog predavanja je da istražimo kako se plaćanja na marketplace platformama modernizuju i kako ova modernizacija može značajno olakšati procese kupovine i prodaje. Takođe ćemo istražiti kako preduzetnici i mala preduzeća mogu iskoristiti ova rešenja da bi poboljšali svoje poslovanje i privukli više klijenata.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"63\">Kako da digitalizujete vaš prvi kontakt sa poslovnim partnerom</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"915\">&lt;p&gt;U digitalnom dobu, prvi utisak je ključan. Elektronske vizit karte vam omogućavaju da ostavite snažan prvi utisak na svoje poslovne partnere. Ali, to je samo početak. Osim što olakšavaju razmenu osnovnih kontakt podataka, moderne elektronske vizit karte često funkcionišu i kao sofisticirani alati za upravljanje kontaktima, prateći komunikaciju i pružajući vam više informacija o vašim partnerima. Ovo omogućava bolje razumevanje i personalizaciju poslovnih odnosa, što je od ključnog značaja za razvoj uspešnog i dugotrajnog biznisa.&lt;/p&gt;&lt;p&gt;istražićemo kako možete iskoristiti elektronske vizit karte kao snažan alat za digitalizaciju vašeg prvog kontakta sa poslovnim partnerom. Shvatićete kako ove inovativne tehnologije mogu unaprediti vašu sposobnost da privučete nove partnere, održavate postojeće odnose i ostvarite konkurentske prednosti u današnjem poslovnom okruženju.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">15</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">09:30:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">Registracija</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:20:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"18\">Svečano otvaranje</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"151\">&lt;p&gt;&lt;strong&gt;Dr Nenad Ivanišević&lt;/strong&gt; - Pokrajinski sekretar za privredu i turizam&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Vladimir Lalošević&lt;/strong&gt; - Predsednik UPV&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:20:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:40:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"77\">Podizanje performansi kompanije kroz digitalizaciju i poslovnu transformaciju</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"78\">&lt;p&gt;&lt;strong&gt;Miljan Radanović&lt;/strong&gt; - Expert za digitalnu transformaciju&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:40:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"50\">Kako postati efikasniji i efektivniji u poslovanju</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"60\">&lt;p&gt;&lt;strong&gt;Nenad Nikolić&lt;/strong&gt; - poslovni konsultant&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:20:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"50\">Važnost kreiranja i modelovanja poslovnih procesa</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"99\">&lt;p&gt;&lt;strong&gt;Dr Goran Petrović&lt;/strong&gt; - ekspert za digitalnu transformaciju i poslovne procese&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:20:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:40:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"57\">Može li knjigovodstvo biti jednostavno i dostupno svima?</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"51\">&lt;p&gt;&lt;strong&gt;Goran Bjelica -&lt;/strong&gt; CEO Minimax&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:10:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">Kafe pauza</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:10:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:30:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"67\">Digitalni marketing- alat za brži i lakši razvoj malih preduzeća</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"83\">&lt;p&gt;&lt;strong&gt;Dejana Radanović -&lt;/strong&gt; Generalni direktor Brandon &amp;amp; Brenda&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:30:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:45:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"75\">Kako doći do konsultanata i novčanih sredstava za finansiranje poslovanja</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"87\">&lt;p&gt;&lt;strong&gt;Filip Mrdak&lt;/strong&gt; -Project menager Centra za digitalnu transformaciju&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:45:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:05:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"46\">Iskoristite softver za unapređenje poslovanja</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"76\">&lt;p&gt;&lt;strong&gt;Darko Bogojević -&lt;/strong&gt; Business Developer Manager Go Pro&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:05:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:25:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"71\">IT kao alat efektivnog i bezbednog poslovanja. Šta sve treba da znate?</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"110\">&lt;p&gt;&lt;strong&gt;Vladimir Lalošević&lt;/strong&gt; - Predsednik Unije poslodavaca Vojvodine i generalni direktor CNT&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:25:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:45:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">E-commerc plaćanja na marketplace</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"130\">&lt;p&gt;&lt;strong&gt;Aleksandra Marić Šćepanović – &lt;/strong&gt;Direktor za razvoj poslovanja u instituciji elektronskog novca PaySpot&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:45:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:55:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"63\">Kako da digitalizujete vaš prvi kontakt sa poslovnim partnerom</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"57\">&lt;p&gt;&lt;strong&gt;Dušan Radošević&lt;/strong&gt; - CEO StarCard&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:55:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">14:05:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">Završna reč</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"143\">&lt;p&gt;&amp;nbsp;&lt;strong&gt;Miljan Radanović&lt;/strong&gt; : plan za web sajt ( baza znanja, baza članica sa konferencije ) i najava naredne konferencije&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">14:05:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">15:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"19\">Ručak i networking</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-speakers\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"265\">{\"audienceTargeting\":null,\"categories\":null,\"categoryOperator\":null,\"dataSource\":\"648df171-6054-4c5d-b423-e8ae8b45aa7e\",\"includeSubFolders\":true,\"limitResult\":null,\"sortBy\":\"published\",\"sortMethod\":\"asc\",\"tagOperator\":null,\"tags\":null,\"types\":null,\"presentAs\":null}</sv:value></sv:property><sv:property sv:name=\"i18n:en-partners\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"257\">{\"audienceTargeting\":null,\"categories\":null,\"categoryOperator\":null,\"dataSource\":\"cbbc2782-8f86-4758-91a6-540baca0787c\",\"includeSubFolders\":null,\"limitResult\":null,\"sortBy\":null,\"sortMethod\":null,\"tagOperator\":null,\"tags\":null,\"types\":null,\"presentAs\":null}</sv:value></sv:property><sv:property sv:name=\"i18n:en-single_ticket\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">4</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">10</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">15</sv:value></sv:property><sv:property sv:name=\"i18n:en-single_ticket\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', 3, 1),
(6, '/cmf/digitrans/routes', '/cmf/digitrans', 'routes', '', 'default', 'a47bb1eb-47b7-4f80-ae89-2af612e6b4e5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a47bb1eb-47b7-4f80-ae89-2af612e6b4e5</sv:value></sv:property></sv:node>\n', NULL, 3, 2),
(7, '/cmf/digitrans/routes/en', '/cmf/digitrans/routes', 'en', '', 'default', '4bc37cc6-1795-4e8b-a18d-a39d6a7c98fa', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">4bc37cc6-1795-4e8b-a18d-a39d6a7c98fa</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.318+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.318+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">acc24755-82f8-435c-9cce-b3aefdd6d3d8</sv:value></sv:property></sv:node>\n', NULL, 4, 1),
(8, '/cmf', '/', 'cmf', '', 'default_live', '59b5ea29-1e11-4b13-9a31-37fb1348bea9', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">59b5ea29-1e11-4b13-9a31-37fb1348bea9</sv:value></sv:property></sv:node>\n', NULL, 1, 2),
(9, '/cmf/digitrans', '/cmf', 'digitrans', '', 'default_live', '1067f335-2fd6-4dc0-b364-6a033c86667e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">1067f335-2fd6-4dc0-b364-6a033c86667e</sv:value></sv:property></sv:node>\n', NULL, 2, 2);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(10, '/cmf/digitrans/contents', '/cmf/digitrans', 'contents', '', 'default_live', 'acc24755-82f8-435c-9cce-b3aefdd6d3d8', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">acc24755-82f8-435c-9cce-b3aefdd6d3d8</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"58\">DigiTrans | Business and Digital Transformation Conference</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.313+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.261+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T08:32:59.181+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">accordion</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_headline#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"20\">Više o konferenciji</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"650\">&lt;p&gt;&lt;strong&gt;Ideja DiGi Trans konferencije&lt;/strong&gt; jeste da pružimo podršku preduzetnicima, zanatlijama, malim i srednjim preduzećima u unapređenju neophodnih znanja i veština za uspešno upravljanje svojim kompanijama. Kroz seriju edukativnih sesija, prepoznaćete načine za unapređenje poslovanja spram potreba Vaše kompanije i kao ultimativni cilj, postićićete veću efikasnost u svom poslovanju.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Zajednička vizija je jasna&lt;/strong&gt;: da svi preduzetnici budu spremni za izazove današnjeg vremena i brzih promena, te da zajedno budemo konkurentni sa svetskim kompanijama koje postaju sve prisutnije na našem tržištu.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">accordion</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_headline#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">Kome je namenjena konferencija?</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_description#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"235\">&lt;p&gt;Konferencija je namenjena &lt;strong&gt;svim preduzetnicima&lt;/strong&gt; ( mikro,malim i srednjim preduzećima ) koji žele da podignu efikasnost. Svim onima koji žele da unaprede svoje poslovanje ali im je potrebna podrška na tom putu.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">4</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">accordion</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_headline#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"38\">Koja je dodatna vrednost konferencije?</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_description#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"546\">&lt;p&gt;&lt;strong&gt;DiGi Trans konferencija predstavlja početak putovanja &lt;/strong&gt;koje ima za cilj da probudi svest o digitalnoj transformaciji i da vam pruži konkretne korake kako da je ostvarite. Nakon inspirativnih uvodnih predavanja, sledeći korak je da uživo razgovaramo o koracima koje je potrebno da uradite kako bi napravili pozitivne promene u vašem poslovanju. Ovo je mesto gde ćete moći da razmenjujete poslovne ideje i razvijate nova partnerstva ali i da steknete znanja koja su vam neophodna na putu poslovne transformacije.&amp;nbsp;&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-type#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">accordion</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-settings#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_headline#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">Šta ova konferencija NIJE!</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-accordion_description#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"333\">&lt;p&gt;&lt;strong&gt;Ova konferencija nije mesto za kratkotrajnu motivaciju koja se gasi brže nego što se upali&lt;/strong&gt;. Nismo tu da vas samo privremeno inspirišemo, a već da sutradan nastavite kao da se ništa nije desilo. Takođe, nismo tu da vam kroz teoriju pričamo o promenama koje trebaju da se dogode, bez konkretnih rešenja.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">10</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"77\">Podizanje performansi kompanije kroz digitalizaciju i poslovnu transformaciju</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"659\">&lt;p&gt;Često čujemo o digitalnoj transformaciji, to je postalo svojevrsno \"buzz word\" koje se neprestano ponavlja kao mantra. Shvatili smo da je promena neophodna ukoliko želimo da opstanemo na dinamičnom i nemilosrdnom tržištu. No, ono što nas zaista zanima je kako da tu promenu sprovedemo i koji su konkretni koraci koje treba preduzeti. Upravo o tome će govoriti naše uvodno predavanje.&lt;/p&gt;&lt;p&gt;Ova konferencija će razjasniti da je sam proces digitalne transformacije, iako složen na prvi pogled, u suštini prilično jednostavan. Ključna stvar je da se krene u akciju odmah i da se obezbede značajni resursi za sprovođenje neophodnih promena.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"50\">Kako postati efikasniji i efektivniji u poslovanju</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"785\">&lt;p&gt;Često se dešava da mnogi greše tako što u proces digitalne transformacije kreću nabavkom novog softvera, očekujući da će on rešiti sve njihove probleme. Međutim, prvi korak u ovom procesu nije vezan za tehnologiju, već za transformaciju samog poslovanja. Ova transformacija počinje od vlasnika preduzeća i menadžera. Ključno je da inicijativa za transformaciju krene odozgo, od rukovodstva, koje zatim treba da jasno komunicira ovu viziju sa svim zaposlenima. Tek tada možemo biti sigurni da su svi spremni za promene, jer samo zajedničkim naporima možemo uspešno sprovesti transformaciju.&lt;/p&gt;&lt;p&gt;Ovo predavanje će vam pokazati kako da efikasno izvršite tu prvu transformaciju, onu koja se dešava u našim umovima, i kako da olakšate otpor prema promenama.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"50\">Važnost kreiranja i modelovanja poslovnih procesa</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"963\">&lt;p&gt;Kao što smo već naglasili, nabavka novog softvera neće doneti željene efekte ukoliko nisu pravilno usklađeni sa vašim poslovnim procesima. U većini kompanija, ti procesi su često samo implicitno prisutni, čuvaju se u glavama zaposlenih, a najveći deo odgovornosti za njihovo upravljanje leži kod direktora. Nedostatak jasne definicije poslovnih procesa često rezultira neprofesionalnim pristupom izvođenju zadatka, gde se oslanjamo na neslužbene dogovore i parole \"neka neko uradi.\" Ovo može dovesti do neefikasnog obavljanja poslova, produženih rokova ili neispunjenih obaveza.&lt;/p&gt;&lt;p&gt;Nakon prvog koraka transformacije, koji se odvija u svesti zaposlenih, sledi drugi korak - transformacija organizacije. Ovo podrazumeva kreiranje odgovarajuće strategije, organizacione strukture, poslovnih procesa i procedura. Ovi koraci su ključni za uspeh i efikasnost vaše organizacije, omogućavajući joj da radi optimalno i ostvari svoje ciljeve.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"57\">Može li knjigovodstvo biti jednostavno i dostupno svima?</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"537\">&lt;p&gt;Da, knjigovodstvo može biti jednostavno i dostupno za sve, uključujući mala preduzeća i preduzetnike.&lt;/p&gt;&lt;p&gt;Svima nam je poznato da vođenje knjiga zahteva vreme i stručnost, što za male preduzetnike može biti dodatan teret. Međutim, u digitalnom dobu postoje alati koji pojednostavljuju proces knjigovodstva. Ovi alati omogućavaju automatsko praćenje finansija, generisanje izveštaja i olakšanu komunikaciju sa knjigovođama. Ovom temom ćemo istražiti kako ovi alati čine knjigovodstvo bržim i efikasnijim za sve.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"67\">Digitalni marketing- alat za brži i lakši razvoj malih preduzeća</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"325\">&lt;p&gt;Marketing je ključan za razvoj malih preduzeća. On vam pomaže da privučete klijente, izgradite brend, nadmašite konkurenciju i širite svoje poslovanje. Da biste postigli ovakav uspeh, neophodno je uložiti vreme i sredstva u marketinške strategije. Na konferenciji ćemo saznati kako to postići brže i lakše.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"75\">Kako doći do konsultanata i novčanih sredstava za finansiranje poslovanja</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"511\">&lt;p&gt;Dolazimo do ključnog pitanja za sve preduzetnike i mala preduzeća: \"Kako doći do konsultanata i novčanih sredstava za finansiranje poslovne i digitalne transformacije?\" CDT će vam predstaviti ne samo put do potrebnih finansijskih resursa, već i način kako da pronađete stručnog konsultanta koji će vas voditi kroz ceo proces. Uz podršku Centra za digitalnu transformaciju, nakon ovog događaja dobićete konkretne smernice i resurse kako biste efikasno nastavili svoju poslovnu transformaciju.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"46\">Iskoristite softver za unapređenje poslovanja</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"567\">&lt;p&gt;Prethodno smo se fokusirali na prvi korak transformacije - promenu svesti menadžmenta i zaposlenih, kao i na značaj uređenih poslovnih procesa kao osnova za digitalnu transformaciju.&lt;/p&gt;&lt;p&gt;Sada je vreme da se usredsredimo na sledeći korak: pronalaženje odgovarajućih softverskih alata koji će vam pomoći da unapredite svoje poslovanje. Ovi alati će vam omogućiti da poslovanje postane brže, efikasnije i sigurnije. Na našem predavanju ćemo istražiti kako pronaći i iskoristiti te alate kako biste ostvarili konkretne koristi za vaše preduzeće.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"72\">IT kao alat efektivnog i bezbednog poslovanja. Šta sve treba da znate? </sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"616\">&lt;p&gt;Osnova svake digitalne transformacije leži u IT infrastrukturi, jer, bez sumnje, nema digitalne transformacije bez IT-a.&lt;/p&gt;&lt;p&gt;Fokus ove teme će biti posvećen razumevanju kako IT alati i infrastruktura mogu unaprediti efikasnost poslovanja. Takođe, obratićemo veliku pažnju bezbednosti IT sistema, što je od suštinskog značaja u današnjem digitalnom okruženju.&lt;/p&gt;&lt;p&gt;Na ovom predavanju ćemo vam pružiti ključne informacije o tome kako da iskoristite IT za poboljšanje performansi vašeg preduzeća, istovremeno se osiguravajući da vaša IT infrastruktura bude sigurna od potencijalnih pretnji.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">E-commerc plaćanja na marketplace</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"856\">&lt;p&gt;Za preduzetnike, mala i srednja preduzeća, brza, efikasna i moderna rešenja za plaćanje su postala ključna komponenta uspešnog poslovanja u online svetu.&lt;/p&gt;&lt;p&gt;Živimo u eri u kojoj digitalna tržišta postaju sveprisutna, a platforme za online prodaju - tzv. marketplace platforme, nude neograničene mogućnosti za prodaju različitih proizvoda i usluga. I dok su ove platforme olakšale pristup globalnom tržištu, efikasno plaćanje je postalo esencijalno za održavanje konkurentske prednosti.&lt;/p&gt;&lt;p&gt;Naš cilj tokom ovog predavanja je da istražimo kako se plaćanja na marketplace platformama modernizuju i kako ova modernizacija može značajno olakšati procese kupovine i prodaje. Takođe ćemo istražiti kako preduzetnici i mala preduzeća mogu iskoristiti ova rešenja da bi poboljšali svoje poslovanje i privukli više klijenata.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-type#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">swipper</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-settings#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_headline#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"63\">Kako da digitalizujete vaš prvi kontakt sa poslovnim partnerom</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-theme_description#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"915\">&lt;p&gt;U digitalnom dobu, prvi utisak je ključan. Elektronske vizit karte vam omogućavaju da ostavite snažan prvi utisak na svoje poslovne partnere. Ali, to je samo početak. Osim što olakšavaju razmenu osnovnih kontakt podataka, moderne elektronske vizit karte često funkcionišu i kao sofisticirani alati za upravljanje kontaktima, prateći komunikaciju i pružajući vam više informacija o vašim partnerima. Ovo omogućava bolje razumevanje i personalizaciju poslovnih odnosa, što je od ključnog značaja za razvoj uspešnog i dugotrajnog biznisa.&lt;/p&gt;&lt;p&gt;istražićemo kako možete iskoristiti elektronske vizit karte kao snažan alat za digitalizaciju vašeg prvog kontakta sa poslovnim partnerom. Shvatićete kako ove inovativne tehnologije mogu unaprediti vašu sposobnost da privučete nove partnere, održavate postojeće odnose i ostvarite konkurentske prednosti u današnjem poslovnom okruženju.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">15</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">09:30:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">Registracija</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:20:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"18\">Svečano otvaranje</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"151\">&lt;p&gt;&lt;strong&gt;Dr Nenad Ivanišević&lt;/strong&gt; - Pokrajinski sekretar za privredu i turizam&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Vladimir Lalošević&lt;/strong&gt; - Predsednik UPV&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:20:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:40:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"77\">Podizanje performansi kompanije kroz digitalizaciju i poslovnu transformaciju</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"78\">&lt;p&gt;&lt;strong&gt;Miljan Radanović&lt;/strong&gt; - Expert za digitalnu transformaciju&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">10:40:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"50\">Kako postati efikasniji i efektivniji u poslovanju</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"60\">&lt;p&gt;&lt;strong&gt;Nenad Nikolić&lt;/strong&gt; - poslovni konsultant&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:20:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"50\">Važnost kreiranja i modelovanja poslovnih procesa</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"99\">&lt;p&gt;&lt;strong&gt;Dr Goran Petrović&lt;/strong&gt; - ekspert za digitalnu transformaciju i poslovne procese&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:20:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:40:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"57\">Može li knjigovodstvo biti jednostavno i dostupno svima?</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"51\">&lt;p&gt;&lt;strong&gt;Goran Bjelica -&lt;/strong&gt; CEO Minimax&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">11:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:10:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">Kafe pauza</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:10:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:30:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"67\">Digitalni marketing- alat za brži i lakši razvoj malih preduzeća</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#7\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"83\">&lt;p&gt;&lt;strong&gt;Dejana Radanović -&lt;/strong&gt; Generalni direktor Brandon &amp;amp; Brenda&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:30:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:45:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"75\">Kako doći do konsultanata i novčanih sredstava za finansiranje poslovanja</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#8\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"87\">&lt;p&gt;&lt;strong&gt;Filip Mrdak&lt;/strong&gt; -Project menager Centra za digitalnu transformaciju&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">12:45:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:05:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"46\">Iskoristite softver za unapređenje poslovanja</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#9\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"76\">&lt;p&gt;&lt;strong&gt;Darko Bogojević -&lt;/strong&gt; Business Developer Manager Go Pro&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:05:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:25:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"71\">IT kao alat efektivnog i bezbednog poslovanja. Šta sve treba da znate?</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#10\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"110\">&lt;p&gt;&lt;strong&gt;Vladimir Lalošević&lt;/strong&gt; - Predsednik Unije poslodavaca Vojvodine i generalni direktor CNT&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:25:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:45:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">E-commerc plaćanja na marketplace</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#11\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"130\">&lt;p&gt;&lt;strong&gt;Aleksandra Marić Šćepanović – &lt;/strong&gt;Direktor za razvoj poslovanja u instituciji elektronskog novca PaySpot&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:45:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:55:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"63\">Kako da digitalizujete vaš prvi kontakt sa poslovnim partnerom</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#12\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"57\">&lt;p&gt;&lt;strong&gt;Dušan Radošević&lt;/strong&gt; - CEO StarCard&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">13:55:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">14:05:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">Završna reč</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#13\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"143\">&lt;p&gt;&amp;nbsp;&lt;strong&gt;Miljan Radanović&lt;/strong&gt; : plan za web sajt ( baza znanja, baza članica sa konferencije ) i najava naredne konferencije&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-type#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">agenda_schedule</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-settings#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_start_time#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">14:05:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_end_time#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">15:00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_headline#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"19\">Ručak i networking</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#6\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-agenda_description#14\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-speakers\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"265\">{\"audienceTargeting\":null,\"categories\":null,\"categoryOperator\":null,\"dataSource\":\"648df171-6054-4c5d-b423-e8ae8b45aa7e\",\"includeSubFolders\":true,\"limitResult\":null,\"sortBy\":\"published\",\"sortMethod\":\"asc\",\"tagOperator\":null,\"tags\":null,\"types\":null,\"presentAs\":null}</sv:value></sv:property><sv:property sv:name=\"i18n:en-partners\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"257\">{\"audienceTargeting\":null,\"categories\":null,\"categoryOperator\":null,\"dataSource\":\"cbbc2782-8f86-4758-91a6-540baca0787c\",\"includeSubFolders\":null,\"limitResult\":null,\"sortBy\":null,\"sortMethod\":null,\"tagOperator\":null,\"tags\":null,\"types\":null,\"presentAs\":null}</sv:value></sv:property><sv:property sv:name=\"i18n:en-single_ticket\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-accordion_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">4</sv:value></sv:property><sv:property sv:name=\"i18n:en-conference_theme_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">10</sv:value></sv:property><sv:property sv:name=\"i18n:en-agenda_block-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">15</sv:value></sv:property><sv:property sv:name=\"i18n:en-single_ticket\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', 3, 3),
(11, '/cmf/digitrans/routes', '/cmf/digitrans', 'routes', '', 'default_live', 'a47bb1eb-47b7-4f80-ae89-2af612e6b4e5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a47bb1eb-47b7-4f80-ae89-2af612e6b4e5</sv:value></sv:property></sv:node>\n', NULL, 3, 4),
(12, '/cmf/digitrans/routes/en', '/cmf/digitrans/routes', 'en', '', 'default_live', '4bc37cc6-1795-4e8b-a18d-a39d6a7c98fa', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">4bc37cc6-1795-4e8b-a18d-a39d6a7c98fa</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.318+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.318+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">acc24755-82f8-435c-9cce-b3aefdd6d3d8</sv:value></sv:property></sv:node>\n', NULL, 4, 2),
(13, '/cmf/snippets', '/cmf', 'snippets', '', 'default', 'a61a5789-5419-40dd-b058-391cc5bc1741', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 2, 3),
(14, '/cmf/snippets', '/cmf', 'snippets', '', 'default_live', '074ef9dd-aec3-45ac-8770-09d83c520619', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 2, 4),
(15, '/cmf/digitrans/custom-urls', '/cmf/digitrans', 'custom-urls', '', 'default', 'ae2a322d-4cee-4594-a87e-5ebea910353e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ae2a322d-4cee-4594-a87e-5ebea910353e</sv:value></sv:property></sv:node>\n', NULL, 3, 5),
(16, '/cmf/digitrans/custom-urls/items', '/cmf/digitrans/custom-urls', 'items', '', 'default', '5d20406d-05ad-4dfd-897f-30f3a31a9a47', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5d20406d-05ad-4dfd-897f-30f3a31a9a47</sv:value></sv:property></sv:node>\n', NULL, 4, 1),
(17, '/cmf/digitrans/custom-urls/routes', '/cmf/digitrans/custom-urls', 'routes', '', 'default', '4277b658-a8c3-4cd9-94d4-eeb614decb93', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">4277b658-a8c3-4cd9-94d4-eeb614decb93</sv:value></sv:property></sv:node>\n', NULL, 4, 2),
(18, '/jcr:versions', '/', 'versions', 'http://www.jcp.org/jcr/1.0', 'default', '92faa4f4-ccf5-4600-a269-a6efb183390f', 'phpcrmig:versions', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"17\">phpcrmig:versions</sv:value></sv:property></sv:node>\n', NULL, 1, 3);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(19, '/jcr:versions/201504271608', '/jcr:versions', '201504271608', '', 'default', 'cdd544d2-4b26-46d6-868b-2b82ae5b92ae', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.528+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 1),
(20, '/jcr:versions/201504281842', '/jcr:versions', '201504281842', '', 'default', '67e1fadb-1832-4d09-869a-87c784605a23', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.537+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 2),
(21, '/jcr:versions/201507231648', '/jcr:versions', '201507231648', '', 'default', '454029ca-002c-4ef6-b958-ce6ac80fa816', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.542+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 3),
(22, '/jcr:versions/201507281529', '/jcr:versions', '201507281529', '', 'default', '1a8ee2a4-6ad5-453b-986d-19d936e934e1', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.547+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 4),
(23, '/jcr:versions/201510210733', '/jcr:versions', '201510210733', '', 'default', '1813d970-7789-4d22-99c1-3eee09ebf457', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.552+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 5),
(24, '/jcr:versions/201511171538', '/jcr:versions', '201511171538', '', 'default', '8e38568c-abd5-4040-a9e9-7d1598259248', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.557+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 6),
(25, '/jcr:versions/201511240843', '/jcr:versions', '201511240843', '', 'default', '1e122651-6879-4471-98e1-f6efe6fb8bfc', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.562+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 7),
(26, '/jcr:versions/201511240844', '/jcr:versions', '201511240844', '', 'default', '53e6a471-8955-45d8-9212-804cbad1ad5b', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.567+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 8),
(27, '/jcr:versions/201512090753', '/jcr:versions', '201512090753', '', 'default', '705096c4-b3da-41aa-84fb-9efe76279163', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.571+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 9),
(28, '/jcr:versions/201607181533', '/jcr:versions', '201607181533', '', 'default', '91dcba84-16ba-47f1-afac-97641de3818b', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.576+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 10),
(29, '/jcr:versions/201702021447', '/jcr:versions', '201702021447', '', 'default', 'a8919650-86cf-4647-b4a0-893c5d0a19d9', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.581+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 11),
(30, '/jcr:versions/201903271333', '/jcr:versions', '201903271333', '', 'default', 'd8d7b988-b6f1-44ce-a2a0-ddf0ad438618', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.587+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 12),
(31, '/jcr:versions/201904110902', '/jcr:versions', '201904110902', '', 'default', '90d55c9c-38cb-4fd8-a179-f7fa942981fb', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.591+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 13),
(32, '/jcr:versions/201905071542', '/jcr:versions', '201905071542', '', 'default', '87cceb92-aa66-4a2f-a951-6d6fb727e337', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.596+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 14),
(33, '/jcr:versions/202005191116', '/jcr:versions', '202005191116', '', 'default', '09f98206-b2d9-4337-bb31-4b217229a108', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.601+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 15),
(34, '/jcr:versions/202005250917', '/jcr:versions', '202005250917', '', 'default', '9d71636b-e1ef-4c43-bd89-35aa7cd9336d', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.605+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 16),
(35, '/jcr:versions/202105311447', '/jcr:versions', '202105311447', '', 'default', '4f78a2d8-6fa3-4e75-b819-acd2a4e74cd1', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-05T14:05:07.610+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 17),
(36, '/cmf/digitrans/contents/predavaci-2023', '/cmf/digitrans/contents', 'predavaci-2023', '', 'default', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">648df171-6054-4c5d-b423-e8ae8b45aa7e</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">Predavači-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">/predavaci-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:52:42.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:52:42.814+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:54:43.788+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:52:42.913+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 4, 7),
(37, '/cmf/digitrans/routes/en/predavaci', '/cmf/digitrans/routes/en', 'predavaci', '', 'default', '6c893f9c-d6af-47ee-958e-10487a42ddeb', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6c893f9c-d6af-47ee-958e-10487a42ddeb</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:52:42.919+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:53:08.890+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">34b5c943-c2e5-400a-bb08-ea5e0992be04</sv:value></sv:property></sv:node>\n', NULL, 5, 1),
(38, '/cmf/digitrans/contents/predavaci-2023', '/cmf/digitrans/contents', 'predavaci-2023', '', 'default_live', '648df171-6054-4c5d-b423-e8ae8b45aa7e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">648df171-6054-4c5d-b423-e8ae8b45aa7e</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">Predavači-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">/predavaci-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:52:42.913+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:52:42.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:52:42.814+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:54:43.788+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 4, 8),
(39, '/cmf/digitrans/routes/en/predavaci', '/cmf/digitrans/routes/en', 'predavaci', '', 'default_live', '6c893f9c-d6af-47ee-958e-10487a42ddeb', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6c893f9c-d6af-47ee-958e-10487a42ddeb</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:52:42.919+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:53:08.890+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">34b5c943-c2e5-400a-bb08-ea5e0992be04</sv:value></sv:property></sv:node>\n', NULL, 5, 2),
(40, '/cmf/digitrans/routes/en/predavaci-2023', '/cmf/digitrans/routes/en', 'predavaci-2023', '', 'default', '34b5c943-c2e5-400a-bb08-ea5e0992be04', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">34b5c943-c2e5-400a-bb08-ea5e0992be04</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:53:08.875+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:53:08.875+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">648df171-6054-4c5d-b423-e8ae8b45aa7e</sv:value></sv:property></sv:node>\n', NULL, 5, 3),
(41, '/cmf/digitrans/routes/en/predavaci-2023', '/cmf/digitrans/routes/en', 'predavaci-2023', '', 'default_live', '34b5c943-c2e5-400a-bb08-ea5e0992be04', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">34b5c943-c2e5-400a-bb08-ea5e0992be04</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:53:08.875+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:53:08.875+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">648df171-6054-4c5d-b423-e8ae8b45aa7e</sv:value></sv:property></sv:node>\n', NULL, 5, 4),
(42, '/cmf/digitrans/contents/predavaci-2023/vladimir-lalosevic', '/cmf/digitrans/contents/predavaci-2023', 'vladimir-lalosevic', '', 'default', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"20\">Vladimir Lalošević</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">/predavaci-2023/vladimir-lalosevic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.273+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:22:30.054+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.308+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"20\">Vladimir Lalošević</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">CEO </sv:value></sv:property><sv:property sv:name=\"i18n:en-company_title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"35\">CEO of Centar Novih Tehnologija DOO</sv:value></sv:property><sv:property sv:name=\"i18n:en-company_image\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"id\":null}</sv:value></sv:property><sv:property sv:name=\"i18n:en-speaker_image\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">{\"id\":1}</sv:value></sv:property><sv:property sv:name=\"i18n:en-speaker_biography\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">Vladimir Lalosevic Biografija</sv:value></sv:property><sv:property sv:name=\"i18n:en-external_link\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"140\">{\"provider\":\"external\",\"target\":\"_blank\",\"anchor\":null,\"query\":null,\"href\":\"https:\\/\\/cnt.rs\",\"title\":\"www.cnt.rs\",\"rel\":null,\"locale\":\"en\"}</sv:value></sv:property><sv:property sv:name=\"i18n:en-link\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"131\">{\"provider\":\"external\",\"target\":\"_self\",\"anchor\":null,\"query\":null,\"href\":\"https:\\/\\/cnt.rs\",\"title\":null,\"rel\":null,\"locale\":\"en\"}</sv:value></sv:property><sv:property sv:name=\"i18n:en-company_name\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Centar Novih Tehnologija</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 5, 1),
(43, '/cmf/digitrans/routes/en/predavaci-2023/vladimir-lalosevic', '/cmf/digitrans/routes/en/predavaci-2023', 'vladimir-lalosevic', '', 'default', 'd74124c1-456e-4dd2-9e17-c0af44bcfb39', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">d74124c1-456e-4dd2-9e17-c0af44bcfb39</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.315+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.315+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f</sv:value></sv:property></sv:node>\n', NULL, 6, 1),
(44, '/cmf/digitrans/contents/predavaci-2023/vladimir-lalosevic', '/cmf/digitrans/contents/predavaci-2023', 'vladimir-lalosevic', '', 'default_live', 'aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"20\">Vladimir Lalošević</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">/predavaci-2023/vladimir-lalosevic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.308+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.273+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:22:30.054+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"20\">Vladimir Lalošević</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">CEO </sv:value></sv:property><sv:property sv:name=\"i18n:en-company_title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"35\">CEO of Centar Novih Tehnologija DOO</sv:value></sv:property><sv:property sv:name=\"i18n:en-company_image\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"id\":null}</sv:value></sv:property><sv:property sv:name=\"i18n:en-speaker_image\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">{\"id\":1}</sv:value></sv:property><sv:property sv:name=\"i18n:en-speaker_biography\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">Vladimir Lalosevic Biografija</sv:value></sv:property><sv:property sv:name=\"i18n:en-external_link\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"140\">{\"provider\":\"external\",\"target\":\"_blank\",\"anchor\":null,\"query\":null,\"href\":\"https:\\/\\/cnt.rs\",\"title\":\"www.cnt.rs\",\"rel\":null,\"locale\":\"en\"}</sv:value></sv:property><sv:property sv:name=\"i18n:en-link\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"131\">{\"provider\":\"external\",\"target\":\"_self\",\"anchor\":null,\"query\":null,\"href\":\"https:\\/\\/cnt.rs\",\"title\":null,\"rel\":null,\"locale\":\"en\"}</sv:value></sv:property><sv:property sv:name=\"i18n:en-company_name\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Centar Novih Tehnologija</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 5, 2);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(45, '/cmf/digitrans/routes/en/predavaci-2023/vladimir-lalosevic', '/cmf/digitrans/routes/en/predavaci-2023', 'vladimir-lalosevic', '', 'default_live', 'd74124c1-456e-4dd2-9e17-c0af44bcfb39', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">d74124c1-456e-4dd2-9e17-c0af44bcfb39</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.315+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:57:47.315+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">aaa51e8b-c3bb-4d63-a279-77ad9c0fe90f</sv:value></sv:property></sv:node>\n', NULL, 6, 2),
(46, '/cmf/digitrans/contents/predavaci-2023/miljan-radanovic', '/cmf/digitrans/contents/predavaci-2023', 'miljan-radanovic', '', 'default', '8f934702-809f-4bce-9fc7-c588686eb15d', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8f934702-809f-4bce-9fc7-c588686eb15d</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"17\">Miljan Radanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"32\">/predavaci-2023/miljan-radanovic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.258+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:16:30.035+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.292+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"17\">Miljan Radanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', 5, 3),
(47, '/cmf/digitrans/routes/en/predavaci-2023/miljan-radanovic', '/cmf/digitrans/routes/en/predavaci-2023', 'miljan-radanovic', '', 'default', 'cb3d5c8d-eae4-40c2-a756-085bf4dc1c4b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">cb3d5c8d-eae4-40c2-a756-085bf4dc1c4b</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.297+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.297+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">8f934702-809f-4bce-9fc7-c588686eb15d</sv:value></sv:property></sv:node>\n', NULL, 6, 3),
(48, '/cmf/digitrans/contents/predavaci-2023/miljan-radanovic', '/cmf/digitrans/contents/predavaci-2023', 'miljan-radanovic', '', 'default_live', '8f934702-809f-4bce-9fc7-c588686eb15d', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8f934702-809f-4bce-9fc7-c588686eb15d</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"17\">Miljan Radanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"32\">/predavaci-2023/miljan-radanovic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.292+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.258+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:16:30.035+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"17\">Miljan Radanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', 5, 4),
(49, '/cmf/digitrans/routes/en/predavaci-2023/miljan-radanovic', '/cmf/digitrans/routes/en/predavaci-2023', 'miljan-radanovic', '', 'default_live', 'cb3d5c8d-eae4-40c2-a756-085bf4dc1c4b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">cb3d5c8d-eae4-40c2-a756-085bf4dc1c4b</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.297+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T07:58:58.297+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">8f934702-809f-4bce-9fc7-c588686eb15d</sv:value></sv:property></sv:node>\n', NULL, 6, 4),
(50, '/cmf/digitrans/contents/predavaci-2023/nenad-nikolic', '/cmf/digitrans/contents/predavaci-2023', 'nenad-nikolic', '', 'default', '568229a0-259b-46b4-92f1-de3c02e60e13', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">568229a0-259b-46b4-92f1-de3c02e60e13</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">Nenad Nikolić</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">/predavaci-2023/nenad-nikolic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.877+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:29.143+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.911+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">Nenad Nikolić</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', 5, 5),
(51, '/cmf/digitrans/routes/en/predavaci-2023/nenad-nikolic', '/cmf/digitrans/routes/en/predavaci-2023', 'nenad-nikolic', '', 'default', 'd6f56e94-d20c-49d5-b6b3-04619693a235', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">d6f56e94-d20c-49d5-b6b3-04619693a235</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.917+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.917+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">568229a0-259b-46b4-92f1-de3c02e60e13</sv:value></sv:property></sv:node>\n', NULL, 6, 5),
(52, '/cmf/digitrans/contents/predavaci-2023/nenad-nikolic', '/cmf/digitrans/contents/predavaci-2023', 'nenad-nikolic', '', 'default_live', '568229a0-259b-46b4-92f1-de3c02e60e13', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">568229a0-259b-46b4-92f1-de3c02e60e13</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">Nenad Nikolić</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">/predavaci-2023/nenad-nikolic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.911+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.877+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:29.143+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">Nenad Nikolić</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', 5, 6),
(53, '/cmf/digitrans/routes/en/predavaci-2023/nenad-nikolic', '/cmf/digitrans/routes/en/predavaci-2023', 'nenad-nikolic', '', 'default_live', 'd6f56e94-d20c-49d5-b6b3-04619693a235', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">d6f56e94-d20c-49d5-b6b3-04619693a235</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.917+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:14.917+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">568229a0-259b-46b4-92f1-de3c02e60e13</sv:value></sv:property></sv:node>\n', NULL, 6, 6),
(54, '/cmf/digitrans/contents/predavaci-2023/goran-petrovic', '/cmf/digitrans/contents/predavaci-2023', 'goran-petrovic', '', 'default', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">019b320c-4f97-4bc3-a752-ca98bab7bdd8</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">Goran Petrović</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"30\">/predavaci-2023/goran-petrovic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.244+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:58.819+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">50</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.300+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">Goran Petrović</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">50</sv:value></sv:property></sv:node>\n', 5, 7),
(55, '/cmf/digitrans/routes/en/predavaci-2023/goran-petrovic', '/cmf/digitrans/routes/en/predavaci-2023', 'goran-petrovic', '', 'default', '84cc1440-f426-415b-96da-a78e9792eff7', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">84cc1440-f426-415b-96da-a78e9792eff7</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.305+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.305+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">019b320c-4f97-4bc3-a752-ca98bab7bdd8</sv:value></sv:property></sv:node>\n', NULL, 6, 7),
(56, '/cmf/digitrans/contents/predavaci-2023/goran-petrovic', '/cmf/digitrans/contents/predavaci-2023', 'goran-petrovic', '', 'default_live', '019b320c-4f97-4bc3-a752-ca98bab7bdd8', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">019b320c-4f97-4bc3-a752-ca98bab7bdd8</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">Goran Petrović</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"30\">/predavaci-2023/goran-petrovic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.300+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.244+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:58.819+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">50</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"15\">Goran Petrović</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">50</sv:value></sv:property></sv:node>\n', 5, 8),
(57, '/cmf/digitrans/routes/en/predavaci-2023/goran-petrovic', '/cmf/digitrans/routes/en/predavaci-2023', 'goran-petrovic', '', 'default_live', '84cc1440-f426-415b-96da-a78e9792eff7', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">84cc1440-f426-415b-96da-a78e9792eff7</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.305+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:17:46.305+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">019b320c-4f97-4bc3-a752-ca98bab7bdd8</sv:value></sv:property></sv:node>\n', NULL, 6, 8);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(58, '/cmf/digitrans/contents/predavaci-2023/dejana-radanovic', '/cmf/digitrans/contents/predavaci-2023', 'dejana-radanovic', '', 'default', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">b5661119-d1fb-4b25-be3f-470cbfe53329</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"17\">Dejana Radanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"32\">/predavaci-2023/dejana-radanovic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.074+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:42.471+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">60</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.110+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"17\">Dejana Radanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[2]}</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">60</sv:value></sv:property></sv:node>\n', 5, 9),
(59, '/cmf/digitrans/routes/en/predavaci-2023/dejana-radanovic', '/cmf/digitrans/routes/en/predavaci-2023', 'dejana-radanovic', '', 'default', '8b292e79-cd62-423c-b215-da466b6e6b9e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8b292e79-cd62-423c-b215-da466b6e6b9e</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.115+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.115+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">b5661119-d1fb-4b25-be3f-470cbfe53329</sv:value></sv:property></sv:node>\n', NULL, 6, 9),
(60, '/cmf/digitrans/contents/predavaci-2023/dejana-radanovic', '/cmf/digitrans/contents/predavaci-2023', 'dejana-radanovic', '', 'default_live', 'b5661119-d1fb-4b25-be3f-470cbfe53329', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">b5661119-d1fb-4b25-be3f-470cbfe53329</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"17\">Dejana Radanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[2]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"32\">/predavaci-2023/dejana-radanovic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.110+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.074+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:42.471+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">60</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"17\">Dejana Radanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">60</sv:value></sv:property></sv:node>\n', 5, 10),
(61, '/cmf/digitrans/routes/en/predavaci-2023/dejana-radanovic', '/cmf/digitrans/routes/en/predavaci-2023', 'dejana-radanovic', '', 'default_live', '8b292e79-cd62-423c-b215-da466b6e6b9e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8b292e79-cd62-423c-b215-da466b6e6b9e</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.115+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:19.115+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">b5661119-d1fb-4b25-be3f-470cbfe53329</sv:value></sv:property></sv:node>\n', NULL, 6, 10),
(62, '/cmf/digitrans/contents/predavaci-2023/goran-bjelica', '/cmf/digitrans/contents/predavaci-2023', 'goran-bjelica', '', 'default', '787cfc72-c339-461b-b988-f46f1d56ea16', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">787cfc72-c339-461b-b988-f46f1d56ea16</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">Goran Bjelica</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">/predavaci-2023/goran-bjelica</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.649+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:10.329+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">70</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.683+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">Goran Bjelica</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">70</sv:value></sv:property></sv:node>\n', 5, 11),
(63, '/cmf/digitrans/routes/en/predavaci-2023/goran-bjelica', '/cmf/digitrans/routes/en/predavaci-2023', 'goran-bjelica', '', 'default', 'e79a6e76-648f-4bab-8299-dc0f7b850e82', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e79a6e76-648f-4bab-8299-dc0f7b850e82</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.688+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.688+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">787cfc72-c339-461b-b988-f46f1d56ea16</sv:value></sv:property></sv:node>\n', NULL, 6, 11),
(64, '/cmf/digitrans/contents/predavaci-2023/goran-bjelica', '/cmf/digitrans/contents/predavaci-2023', 'goran-bjelica', '', 'default_live', '787cfc72-c339-461b-b988-f46f1d56ea16', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">787cfc72-c339-461b-b988-f46f1d56ea16</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">Goran Bjelica</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">/predavaci-2023/goran-bjelica</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.683+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.649+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:10.329+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">70</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">Goran Bjelica</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">70</sv:value></sv:property></sv:node>\n', 5, 12),
(65, '/cmf/digitrans/routes/en/predavaci-2023/goran-bjelica', '/cmf/digitrans/routes/en/predavaci-2023', 'goran-bjelica', '', 'default_live', 'e79a6e76-648f-4bab-8299-dc0f7b850e82', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e79a6e76-648f-4bab-8299-dc0f7b850e82</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.688+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:18:56.688+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">787cfc72-c339-461b-b988-f46f1d56ea16</sv:value></sv:property></sv:node>\n', NULL, 6, 12),
(66, '/cmf/digitrans/contents/predavaci-2023/filip-mrdak', '/cmf/digitrans/contents/predavaci-2023', 'filip-mrdak', '', 'default', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">912c455e-47b7-4ebc-b4d5-a0eaf27f3e55</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Filip Mrdak</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">/predavaci-2023/filip-mrdak</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.651+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:46.555+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">80</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.682+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Filip Mrdak</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">80</sv:value></sv:property></sv:node>\n', 5, 13),
(67, '/cmf/digitrans/routes/en/predavaci-2023/filip-mrdak', '/cmf/digitrans/routes/en/predavaci-2023', 'filip-mrdak', '', 'default', 'f3421538-0370-4a13-bc13-dce4856733b2', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">f3421538-0370-4a13-bc13-dce4856733b2</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.688+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.688+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">912c455e-47b7-4ebc-b4d5-a0eaf27f3e55</sv:value></sv:property></sv:node>\n', NULL, 6, 13),
(68, '/cmf/digitrans/contents/predavaci-2023/filip-mrdak', '/cmf/digitrans/contents/predavaci-2023', 'filip-mrdak', '', 'default_live', '912c455e-47b7-4ebc-b4d5-a0eaf27f3e55', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">912c455e-47b7-4ebc-b4d5-a0eaf27f3e55</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Filip Mrdak</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">/predavaci-2023/filip-mrdak</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.682+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.651+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:46.555+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">80</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Filip Mrdak</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">80</sv:value></sv:property></sv:node>\n', 5, 14),
(69, '/cmf/digitrans/routes/en/predavaci-2023/filip-mrdak', '/cmf/digitrans/routes/en/predavaci-2023', 'filip-mrdak', '', 'default_live', 'f3421538-0370-4a13-bc13-dce4856733b2', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">f3421538-0370-4a13-bc13-dce4856733b2</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.688+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:19:30.688+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">912c455e-47b7-4ebc-b4d5-a0eaf27f3e55</sv:value></sv:property></sv:node>\n', NULL, 6, 14);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(70, '/cmf/digitrans/contents/predavaci-2023/darko-bogojevic', '/cmf/digitrans/contents/predavaci-2023', 'darko-bogojevic', '', 'default', 'cd9f3679-53bc-4230-a304-770ce34ce595', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">cd9f3679-53bc-4230-a304-770ce34ce595</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"16\">Darko Bogojević</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">/predavaci-2023/darko-bogojevic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.502+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:20.549+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">90</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.551+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"16\">Darko Bogojević</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">90</sv:value></sv:property></sv:node>\n', 5, 15),
(71, '/cmf/digitrans/routes/en/predavaci-2023/darko-bogojevic', '/cmf/digitrans/routes/en/predavaci-2023', 'darko-bogojevic', '', 'default', 'a82104db-09cf-4db2-a6dc-919c4f320bdb', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a82104db-09cf-4db2-a6dc-919c4f320bdb</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.556+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.556+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">cd9f3679-53bc-4230-a304-770ce34ce595</sv:value></sv:property></sv:node>\n', NULL, 6, 15),
(72, '/cmf/digitrans/contents/predavaci-2023/darko-bogojevic', '/cmf/digitrans/contents/predavaci-2023', 'darko-bogojevic', '', 'default_live', 'cd9f3679-53bc-4230-a304-770ce34ce595', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">cd9f3679-53bc-4230-a304-770ce34ce595</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"16\">Darko Bogojević</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">/predavaci-2023/darko-bogojevic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.551+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.502+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:20.549+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">90</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"16\">Darko Bogojević</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">90</sv:value></sv:property></sv:node>\n', 5, 16),
(73, '/cmf/digitrans/routes/en/predavaci-2023/darko-bogojevic', '/cmf/digitrans/routes/en/predavaci-2023', 'darko-bogojevic', '', 'default_live', 'a82104db-09cf-4db2-a6dc-919c4f320bdb', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a82104db-09cf-4db2-a6dc-919c4f320bdb</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.556+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:07.556+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">cd9f3679-53bc-4230-a304-770ce34ce595</sv:value></sv:property></sv:node>\n', NULL, 6, 16),
(74, '/cmf/digitrans/contents/predavaci-2023/aleksandra-maric-scepanovic', '/cmf/digitrans/contents/predavaci-2023', 'aleksandra-maric-scepanovic', '', 'default', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">fa98ab28-6828-49c7-b448-fe56d4974b6f</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">Aleksandra Marić Šćepanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"43\">/predavaci-2023/aleksandra-maric-scepanovic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.162+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:46.878+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">100</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.216+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">Aleksandra Marić Šćepanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[2]}</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">100</sv:value></sv:property></sv:node>\n', 5, 17),
(75, '/cmf/digitrans/routes/en/predavaci-2023/aleksandra-maric-scepanovic', '/cmf/digitrans/routes/en/predavaci-2023', 'aleksandra-maric-scepanovic', '', 'default', '6d3cf2ca-8736-44cf-a57e-b3b3971a9b25', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6d3cf2ca-8736-44cf-a57e-b3b3971a9b25</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.222+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.222+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">fa98ab28-6828-49c7-b448-fe56d4974b6f</sv:value></sv:property></sv:node>\n', NULL, 6, 17),
(76, '/cmf/digitrans/contents/predavaci-2023/aleksandra-maric-scepanovic', '/cmf/digitrans/contents/predavaci-2023', 'aleksandra-maric-scepanovic', '', 'default_live', 'fa98ab28-6828-49c7-b448-fe56d4974b6f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">fa98ab28-6828-49c7-b448-fe56d4974b6f</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">Aleksandra Marić Šćepanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[2]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"43\">/predavaci-2023/aleksandra-maric-scepanovic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.216+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.162+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:46.878+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">100</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">Aleksandra Marić Šćepanović</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">100</sv:value></sv:property></sv:node>\n', 5, 18),
(77, '/cmf/digitrans/routes/en/predavaci-2023/aleksandra-maric-scepanovic', '/cmf/digitrans/routes/en/predavaci-2023', 'aleksandra-maric-scepanovic', '', 'default_live', '6d3cf2ca-8736-44cf-a57e-b3b3971a9b25', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6d3cf2ca-8736-44cf-a57e-b3b3971a9b25</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.222+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:35.222+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">fa98ab28-6828-49c7-b448-fe56d4974b6f</sv:value></sv:property></sv:node>\n', NULL, 6, 18),
(78, '/cmf/digitrans/contents/predavaci-2023/dusan-radosevic', '/cmf/digitrans/contents/predavaci-2023', 'dusan-radosevic', '', 'default', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a83496be-9193-48a7-90ef-29d8cd4af7a9</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"18\">Dušan Radošević</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">/predavaci-2023/dusan-radosevic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.220+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:21:11.770+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">110</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.257+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"18\">Dušan Radošević</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">110</sv:value></sv:property></sv:node>\n', 5, 19),
(79, '/cmf/digitrans/routes/en/predavaci-2023/dusan-radosevic', '/cmf/digitrans/routes/en/predavaci-2023', 'dusan-radosevic', '', 'default', '8494f955-e7d8-4454-8574-b85e1c888103', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8494f955-e7d8-4454-8574-b85e1c888103</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.262+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.262+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">a83496be-9193-48a7-90ef-29d8cd4af7a9</sv:value></sv:property></sv:node>\n', NULL, 6, 19),
(80, '/cmf/digitrans/contents/predavaci-2023/dusan-radosevic', '/cmf/digitrans/contents/predavaci-2023', 'dusan-radosevic', '', 'default_live', 'a83496be-9193-48a7-90ef-29d8cd4af7a9', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a83496be-9193-48a7-90ef-29d8cd4af7a9</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"18\">Dušan Radošević</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[1]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"31\">/predavaci-2023/dusan-radosevic</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">predavaci</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.257+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.220+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:21:11.770+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">110</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"18\">Dušan Radošević</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-more\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">CEO</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">110</sv:value></sv:property></sv:node>\n', 5, 20),
(81, '/cmf/digitrans/routes/en/predavaci-2023/dusan-radosevic', '/cmf/digitrans/routes/en/predavaci-2023', 'dusan-radosevic', '', 'default_live', '8494f955-e7d8-4454-8574-b85e1c888103', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8494f955-e7d8-4454-8574-b85e1c888103</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.262+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T08:20:55.262+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">a83496be-9193-48a7-90ef-29d8cd4af7a9</sv:value></sv:property></sv:node>\n', NULL, 6, 20),
(82, '/cmf/digitrans/contents/sponzori-2023', '/cmf/digitrans/contents', 'sponzori-2023', '', 'default', 'ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">Sponzori-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">/sponzori-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.429+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.437+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.437+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.473+00:00</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', 4, 9);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(83, '/cmf/digitrans/routes/en/sponzori-2023', '/cmf/digitrans/routes/en', 'sponzori-2023', '', 'default', 'a90d9cec-38a6-49cd-ace1-6ce03c2c6592', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a90d9cec-38a6-49cd-ace1-6ce03c2c6592</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.476+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.476+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc</sv:value></sv:property></sv:node>\n', NULL, 5, 5),
(84, '/cmf/digitrans/contents/sponzori-2023', '/cmf/digitrans/contents', 'sponzori-2023', '', 'default_live', 'ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">Sponzori-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">/sponzori-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.473+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.429+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.437+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.437+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', 4, 10),
(85, '/cmf/digitrans/routes/en/sponzori-2023', '/cmf/digitrans/routes/en', 'sponzori-2023', '', 'default_live', 'a90d9cec-38a6-49cd-ace1-6ce03c2c6592', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a90d9cec-38a6-49cd-ace1-6ce03c2c6592</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.476+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T10:48:09.476+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc</sv:value></sv:property></sv:node>\n', NULL, 5, 6),
(86, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', '/cmf/digitrans/contents', 'pokrovitelji-i-partneri-2023', '', 'default', 'cbbc2782-8f86-4758-91a6-540baca0787c', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">cbbc2782-8f86-4758-91a6-540baca0787c</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"28\">Pokrovitelji i Partneri 2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">/pokrovitelji-i-partneri-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.649+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.657+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.657+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.699+00:00</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', 4, 11),
(87, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', '/cmf/digitrans/routes/en', 'pokrovitelji-i-partneri-2023', '', 'default', '6e92cfbc-89c4-4e8e-890c-a0f27280fd01', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6e92cfbc-89c4-4e8e-890c-a0f27280fd01</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.702+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.702+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">cbbc2782-8f86-4758-91a6-540baca0787c</sv:value></sv:property></sv:node>\n', NULL, 5, 7),
(88, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', '/cmf/digitrans/contents', 'pokrovitelji-i-partneri-2023', '', 'default_live', 'cbbc2782-8f86-4758-91a6-540baca0787c', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">cbbc2782-8f86-4758-91a6-540baca0787c</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"28\">Pokrovitelji i Partneri 2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">/pokrovitelji-i-partneri-2023</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.699+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.649+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.657+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.657+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', 4, 12),
(89, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', '/cmf/digitrans/routes/en', 'pokrovitelji-i-partneri-2023', '', 'default_live', '6e92cfbc-89c4-4e8e-890c-a0f27280fd01', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6e92cfbc-89c4-4e8e-890c-a0f27280fd01</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.702+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:06:02.702+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">cbbc2782-8f86-4758-91a6-540baca0787c</sv:value></sv:property></sv:node>\n', NULL, 5, 8),
(98, '/cmf/digitrans/contents/sponzori-2023/srebrni', '/cmf/digitrans/contents/sponzori-2023', 'srebrni', '', 'default', 'c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">Srebrni</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"22\">/sponzori-2023/srebrni</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.620+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.628+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.628+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.679+00:00</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 5, 1),
(99, '/cmf/digitrans/routes/en/sponzori-2023/srebrni', '/cmf/digitrans/routes/en/sponzori-2023', 'srebrni', '', 'default', '4f572be9-ed75-4509-9e88-92951d93add5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">4f572be9-ed75-4509-9e88-92951d93add5</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.684+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.684+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731</sv:value></sv:property></sv:node>\n', NULL, 6, 1),
(100, '/cmf/digitrans/contents/sponzori-2023/srebrni', '/cmf/digitrans/contents/sponzori-2023', 'srebrni', '', 'default_live', 'c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">Srebrni</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"22\">/sponzori-2023/srebrni</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.679+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.620+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.628+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.628+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 5, 2),
(101, '/cmf/digitrans/routes/en/sponzori-2023/srebrni', '/cmf/digitrans/routes/en/sponzori-2023', 'srebrni', '', 'default_live', '4f572be9-ed75-4509-9e88-92951d93add5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">4f572be9-ed75-4509-9e88-92951d93add5</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.684+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:48.684+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">c1b4dd68-f3f6-47cb-9bf2-1bc0f92c9731</sv:value></sv:property></sv:node>\n', NULL, 6, 2),
(102, '/cmf/digitrans/contents/sponzori-2023/zlatni', '/cmf/digitrans/contents/sponzori-2023', 'zlatni', '', 'default', 'c47fe239-e50f-48fb-b10c-023f22bb088a', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c47fe239-e50f-48fb-b10c-023f22bb088a</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">Zlatni</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"21\">/sponzori-2023/zlatni</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.881+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.889+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.889+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.929+00:00</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', 5, 3),
(103, '/cmf/digitrans/routes/en/sponzori-2023/zlatni', '/cmf/digitrans/routes/en/sponzori-2023', 'zlatni', '', 'default', '6ba369eb-dc38-4bf4-9394-de1490b0bc88', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6ba369eb-dc38-4bf4-9394-de1490b0bc88</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.934+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.934+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">c47fe239-e50f-48fb-b10c-023f22bb088a</sv:value></sv:property></sv:node>\n', NULL, 6, 3),
(104, '/cmf/digitrans/contents/sponzori-2023/zlatni', '/cmf/digitrans/contents/sponzori-2023', 'zlatni', '', 'default_live', 'c47fe239-e50f-48fb-b10c-023f22bb088a', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c47fe239-e50f-48fb-b10c-023f22bb088a</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">Zlatni</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"21\">/sponzori-2023/zlatni</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.929+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.881+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.889+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.889+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', 5, 4),
(105, '/cmf/digitrans/routes/en/sponzori-2023/zlatni', '/cmf/digitrans/routes/en/sponzori-2023', 'zlatni', '', 'default_live', '6ba369eb-dc38-4bf4-9394-de1490b0bc88', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6ba369eb-dc38-4bf4-9394-de1490b0bc88</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.934+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:27:56.934+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">c47fe239-e50f-48fb-b10c-023f22bb088a</sv:value></sv:property></sv:node>\n', NULL, 6, 4);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(106, '/cmf/digitrans/contents/sponzori-2023/platinum', '/cmf/digitrans/contents/sponzori-2023', 'platinum', '', 'default', '8a7c6e6d-ac84-4d3b-a695-d620aaaeb399', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8a7c6e6d-ac84-4d3b-a695-d620aaaeb399</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Platinum</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"23\">/sponzori-2023/platinum</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.944+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.950+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.950+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.985+00:00</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', 5, 5),
(107, '/cmf/digitrans/routes/en/sponzori-2023/platinum', '/cmf/digitrans/routes/en/sponzori-2023', 'platinum', '', 'default', '4f15adf8-8204-4415-a542-62e51d78a3e6', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">4f15adf8-8204-4415-a542-62e51d78a3e6</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.993+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.993+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">8a7c6e6d-ac84-4d3b-a695-d620aaaeb399</sv:value></sv:property></sv:node>\n', NULL, 6, 5),
(108, '/cmf/digitrans/contents/sponzori-2023/platinum', '/cmf/digitrans/contents/sponzori-2023', 'platinum', '', 'default_live', '8a7c6e6d-ac84-4d3b-a695-d620aaaeb399', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8a7c6e6d-ac84-4d3b-a695-d620aaaeb399</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Platinum</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"23\">/sponzori-2023/platinum</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.985+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.944+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.950+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.950+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', 5, 6),
(109, '/cmf/digitrans/routes/en/sponzori-2023/platinum', '/cmf/digitrans/routes/en/sponzori-2023', 'platinum', '', 'default_live', '4f15adf8-8204-4415-a542-62e51d78a3e6', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">4f15adf8-8204-4415-a542-62e51d78a3e6</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.993+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:28:05.993+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">8a7c6e6d-ac84-4d3b-a695-d620aaaeb399</sv:value></sv:property></sv:node>\n', NULL, 6, 6),
(110, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/unija-poslodavaca-vojvodine', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'unija-poslodavaca-vojvodine', '', 'default', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">aaeb399f-799e-4328-8bd2-bc2d4d9de6db</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">Unija Poslodavaca Vojvodine</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/upv</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.768+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:30:55.034+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.807+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[9]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">Unija Poslodavaca Vojvodine</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 5, 0),
(111, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/upv', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'upv', '', 'default', '85b14c05-eb13-43f5-8fde-fce26a2b9315', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">85b14c05-eb13-43f5-8fde-fce26a2b9315</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.812+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.812+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">aaeb399f-799e-4328-8bd2-bc2d4d9de6db</sv:value></sv:property></sv:node>\n', NULL, 6, 1),
(112, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/unija-poslodavaca-vojvodine', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'unija-poslodavaca-vojvodine', '', 'default_live', 'aaeb399f-799e-4328-8bd2-bc2d4d9de6db', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">aaeb399f-799e-4328-8bd2-bc2d4d9de6db</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">Unija Poslodavaca Vojvodine</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[9]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/upv</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.807+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.768+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:30:55.034+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">Unija Poslodavaca Vojvodine</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 5, 0),
(113, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/upv', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'upv', '', 'default_live', '85b14c05-eb13-43f5-8fde-fce26a2b9315', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">85b14c05-eb13-43f5-8fde-fce26a2b9315</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.812+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:29:57.812+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">aaeb399f-799e-4328-8bd2-bc2d4d9de6db</sv:value></sv:property></sv:node>\n', NULL, 6, 2),
(114, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/autonomna-pokrajina-vojvodina', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'autonomna-pokrajina-vojvodina', '', 'default', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c3dfded9-e645-4deb-8eb4-3011fe0c548f</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">Autonomna Pokrajina Vojvodina</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/apv</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.653+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:33:11.840+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.699+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">{\"ids\":[10]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">Autonomna Pokrajina Vojvodina</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', 5, 1),
(115, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/apv', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'apv', '', 'default', '72dc2153-7ce7-4c0a-ac67-f174817c642b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">72dc2153-7ce7-4c0a-ac67-f174817c642b</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.703+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.703+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">c3dfded9-e645-4deb-8eb4-3011fe0c548f</sv:value></sv:property></sv:node>\n', NULL, 6, 3),
(116, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/autonomna-pokrajina-vojvodina', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'autonomna-pokrajina-vojvodina', '', 'default_live', 'c3dfded9-e645-4deb-8eb4-3011fe0c548f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c3dfded9-e645-4deb-8eb4-3011fe0c548f</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">Autonomna Pokrajina Vojvodina</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">{\"ids\":[10]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/apv</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.699+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.653+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:33:11.840+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">Autonomna Pokrajina Vojvodina</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property></sv:node>\n', 5, 1),
(117, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/apv', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'apv', '', 'default_live', '72dc2153-7ce7-4c0a-ac67-f174817c642b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">72dc2153-7ce7-4c0a-ac67-f174817c642b</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.703+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:32:56.703+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">c3dfded9-e645-4deb-8eb4-3011fe0c548f</sv:value></sv:property></sv:node>\n', NULL, 6, 4),
(118, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/centar-novih-tehnologija', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'centar-novih-tehnologija', '', 'default', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">cbea54ca-6708-4f9c-ab49-76ad33481448</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Centar Novih Tehnologija</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/cnt</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.308+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:35:12.576+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.349+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[3]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Centar Novih Tehnologija</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', 5, 2);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(119, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/cnt', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'cnt', '', 'default', 'c9d97bbc-83f3-41f9-858b-a2d0007d8c02', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c9d97bbc-83f3-41f9-858b-a2d0007d8c02</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.354+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.354+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">cbea54ca-6708-4f9c-ab49-76ad33481448</sv:value></sv:property></sv:node>\n', NULL, 6, 5),
(120, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/centar-novih-tehnologija', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'centar-novih-tehnologija', '', 'default_live', 'cbea54ca-6708-4f9c-ab49-76ad33481448', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">cbea54ca-6708-4f9c-ab49-76ad33481448</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Centar Novih Tehnologija</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[3]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/cnt</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.349+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.308+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:35:12.576+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Centar Novih Tehnologija</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n', 5, 2),
(121, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/cnt', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'cnt', '', 'default_live', 'c9d97bbc-83f3-41f9-858b-a2d0007d8c02', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c9d97bbc-83f3-41f9-858b-a2d0007d8c02</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.354+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:34:55.354+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">cbea54ca-6708-4f9c-ab49-76ad33481448</sv:value></sv:property></sv:node>\n', NULL, 6, 6),
(122, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/positive', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'positive', '', 'default', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">01568c37-2ecd-465f-8b4d-9efec76bf0ae</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Positive</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"38\">/pokrovitelji-i-partneri-2023/positive</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.846+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:58.383+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">50</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.885+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[8]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Positive</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">50</sv:value></sv:property></sv:node>\n', 5, 3),
(123, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/positive', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'positive', '', 'default', 'f6218bf3-2b03-4561-83c1-90eefe9c5322', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">f6218bf3-2b03-4561-83c1-90eefe9c5322</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.892+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.892+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">01568c37-2ecd-465f-8b4d-9efec76bf0ae</sv:value></sv:property></sv:node>\n', NULL, 6, 7),
(124, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/positive', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'positive', '', 'default_live', '01568c37-2ecd-465f-8b4d-9efec76bf0ae', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">01568c37-2ecd-465f-8b4d-9efec76bf0ae</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Positive</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[8]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"38\">/pokrovitelji-i-partneri-2023/positive</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.885+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.846+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:58.383+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">50</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Positive</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">50</sv:value></sv:property></sv:node>\n', 5, 3),
(125, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/positive', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'positive', '', 'default_live', 'f6218bf3-2b03-4561-83c1-90eefe9c5322', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">f6218bf3-2b03-4561-83c1-90eefe9c5322</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.892+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:36:42.892+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">01568c37-2ecd-465f-8b4d-9efec76bf0ae</sv:value></sv:property></sv:node>\n', NULL, 6, 8),
(126, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/seyfor', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'seyfor', '', 'default', '28e0c348-075d-404b-9342-a28835076669', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">28e0c348-075d-404b-9342-a28835076669</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">Seyfor</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">/pokrovitelji-i-partneri-2023/seyfor</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:37:22.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:37:22.219+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T06:38:35.974+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">60</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:37:22.260+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">{\"ids\":[13]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">Minimax</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">60</sv:value></sv:property></sv:node>\n', 5, 4),
(127, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/minimax', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'minimax', '', 'default', '0db88046-d7c3-44b4-9571-8cf5b5cc3640', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">0db88046-d7c3-44b4-9571-8cf5b5cc3640</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:37:22.264+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T06:38:10.963+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">a474ee0b-5cf4-4273-90b5-3cae41833794</sv:value></sv:property></sv:node>\n', NULL, 6, 9),
(128, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/seyfor', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'seyfor', '', 'default_live', '28e0c348-075d-404b-9342-a28835076669', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">28e0c348-075d-404b-9342-a28835076669</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">Seyfor</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">{\"ids\":[13]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">/pokrovitelji-i-partneri-2023/seyfor</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:37:22.260+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:37:22.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:37:22.219+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T06:38:35.974+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">60</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">Minimax</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">60</sv:value></sv:property></sv:node>\n', 5, 4),
(129, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/minimax', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'minimax', '', 'default_live', '0db88046-d7c3-44b4-9571-8cf5b5cc3640', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">0db88046-d7c3-44b4-9571-8cf5b5cc3640</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:37:22.264+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T06:38:10.963+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">a474ee0b-5cf4-4273-90b5-3cae41833794</sv:value></sv:property></sv:node>\n', NULL, 6, 10),
(130, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/gopro', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'gopro', '', 'default', '865398cc-2188-45b4-81d6-8f878e2fb68c', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">865398cc-2188-45b4-81d6-8f878e2fb68c</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">GoPro</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"35\">/pokrovitelji-i-partneri-2023/gopro</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.536+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:45.223+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">70</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.572+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[5]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">GoPro</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">70</sv:value></sv:property></sv:node>\n', 5, 5),
(131, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/gopro', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'gopro', '', 'default', 'dbf13ffd-5f0c-43f0-a707-50badb127c63', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">dbf13ffd-5f0c-43f0-a707-50badb127c63</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.579+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.579+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">865398cc-2188-45b4-81d6-8f878e2fb68c</sv:value></sv:property></sv:node>\n', NULL, 6, 11);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(132, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/gopro', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'gopro', '', 'default_live', '865398cc-2188-45b4-81d6-8f878e2fb68c', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">865398cc-2188-45b4-81d6-8f878e2fb68c</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">GoPro</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[5]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"35\">/pokrovitelji-i-partneri-2023/gopro</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.572+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.536+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:45.223+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">70</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">GoPro</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">70</sv:value></sv:property></sv:node>\n', 5, 5),
(133, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/gopro', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'gopro', '', 'default_live', 'dbf13ffd-5f0c-43f0-a707-50badb127c63', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">dbf13ffd-5f0c-43f0-a707-50badb127c63</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.579+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:38:30.579+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">865398cc-2188-45b4-81d6-8f878e2fb68c</sv:value></sv:property></sv:node>\n', NULL, 6, 12),
(134, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/european-bank-for-reconstruction-and-development', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'european-bank-for-reconstruction-and-development', '', 'default', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">bd568be0-8e30-4642-9a5d-2db0627fb31c</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"48\">European Bank for Reconstruction and Development</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">/pokrovitelji-i-partneri-2023/ebrd</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:31.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:31.458+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:45.089+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">80</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:34.107+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"48\">European Bank for Reconstruction and Development</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">80</sv:value></sv:property></sv:node>\n', 5, 6),
(135, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/european-bank-for-reconstruction-and-development', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'european-bank-for-reconstruction-and-development', '', 'default_live', 'bd568be0-8e30-4642-9a5d-2db0627fb31c', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">bd568be0-8e30-4642-9a5d-2db0627fb31c</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"48\">European Bank for Reconstruction and Development</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">/pokrovitelji-i-partneri-2023/ebrd</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:34.107+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:31.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:31.458+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:45.089+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">80</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"48\">European Bank for Reconstruction and Development</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">80</sv:value></sv:property></sv:node>\n', 5, 6),
(136, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/ebrd', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'ebrd', '', 'default', '631f2cb0-e8b9-45ae-bb79-30048e4ec03f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">631f2cb0-e8b9-45ae-bb79-30048e4ec03f</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:34.119+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:34.119+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">bd568be0-8e30-4642-9a5d-2db0627fb31c</sv:value></sv:property></sv:node>\n', NULL, 6, 13),
(137, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/ebrd', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'ebrd', '', 'default_live', '631f2cb0-e8b9-45ae-bb79-30048e4ec03f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">631f2cb0-e8b9-45ae-bb79-30048e4ec03f</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:34.119+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:39:34.119+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">bd568be0-8e30-4642-9a5d-2db0627fb31c</sv:value></sv:property></sv:node>\n', NULL, 6, 14),
(138, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/payspot', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'payspot', '', 'default', '098480c2-da5e-471d-ae1a-e336790e6443', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">098480c2-da5e-471d-ae1a-e336790e6443</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">PaySpot</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"37\">/pokrovitelji-i-partneri-2023/payspot</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.691+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:11.463+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">90</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.726+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">PaySpot</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[6]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">90</sv:value></sv:property></sv:node>\n', 5, 7),
(139, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/payspot', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'payspot', '', 'default', '07e86fcf-fa9c-4384-8233-a7e656ce2b13', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">07e86fcf-fa9c-4384-8233-a7e656ce2b13</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.732+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.732+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">098480c2-da5e-471d-ae1a-e336790e6443</sv:value></sv:property></sv:node>\n', NULL, 6, 15),
(140, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/payspot', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'payspot', '', 'default_live', '098480c2-da5e-471d-ae1a-e336790e6443', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">098480c2-da5e-471d-ae1a-e336790e6443</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">PaySpot</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[6]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"37\">/pokrovitelji-i-partneri-2023/payspot</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.726+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.691+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:11.463+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">90</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">PaySpot</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">90</sv:value></sv:property></sv:node>\n', 5, 7),
(141, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/payspot', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'payspot', '', 'default_live', '07e86fcf-fa9c-4384-8233-a7e656ce2b13', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">07e86fcf-fa9c-4384-8233-a7e656ce2b13</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.732+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:01.732+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">098480c2-da5e-471d-ae1a-e336790e6443</sv:value></sv:property></sv:node>\n', NULL, 6, 16),
(142, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/centar-za-digitalnu-transformaciju', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'centar-za-digitalnu-transformaciju', '', 'default', '7b2cba9c-602b-49f9-8305-801edf772af5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">7b2cba9c-602b-49f9-8305-801edf772af5</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">Centar Za Digitalnu Transformaciju</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/cdt</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.842+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:51.979+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">100</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.875+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[4]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">Centar Za Digitalnu Transformaciju</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">100</sv:value></sv:property></sv:node>\n', 5, 8),
(143, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/cdt', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'cdt', '', 'default', '1edfb4b3-8cbd-4894-8e44-0b70e3c5f449', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">1edfb4b3-8cbd-4894-8e44-0b70e3c5f449</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.880+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.880+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">7b2cba9c-602b-49f9-8305-801edf772af5</sv:value></sv:property></sv:node>\n', NULL, 6, 17);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(144, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/centar-za-digitalnu-transformaciju', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'centar-za-digitalnu-transformaciju', '', 'default_live', '7b2cba9c-602b-49f9-8305-801edf772af5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">7b2cba9c-602b-49f9-8305-801edf772af5</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">Centar Za Digitalnu Transformaciju</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[4]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/cdt</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.875+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.842+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:51.979+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">100</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"34\">Centar Za Digitalnu Transformaciju</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">100</sv:value></sv:property></sv:node>\n', 5, 8),
(145, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/cdt', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'cdt', '', 'default_live', '1edfb4b3-8cbd-4894-8e44-0b70e3c5f449', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">1edfb4b3-8cbd-4894-8e44-0b70e3c5f449</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.880+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:40:34.880+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">7b2cba9c-602b-49f9-8305-801edf772af5</sv:value></sv:property></sv:node>\n', NULL, 6, 18),
(146, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/ferum', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'ferum', '', 'default', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">30cc01a4-002f-49cc-9cd7-e2696e2049fd</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">Ferum</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"35\">/pokrovitelji-i-partneri-2023/ferum</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.852+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:41.310+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">110</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.886+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">Ferum</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">{\"ids\":[12]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">110</sv:value></sv:property></sv:node>\n', 5, 9),
(147, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/ferum', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'ferum', '', 'default', 'a8d046f7-a21c-4a8c-a052-c4bc5d58806b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a8d046f7-a21c-4a8c-a052-c4bc5d58806b</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.892+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.892+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">30cc01a4-002f-49cc-9cd7-e2696e2049fd</sv:value></sv:property></sv:node>\n', NULL, 6, 19),
(148, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/ferum', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'ferum', '', 'default_live', '30cc01a4-002f-49cc-9cd7-e2696e2049fd', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">30cc01a4-002f-49cc-9cd7-e2696e2049fd</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">Ferum</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">{\"ids\":[12]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"35\">/pokrovitelji-i-partneri-2023/ferum</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.886+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.852+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:41.310+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">110</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">Ferum</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">110</sv:value></sv:property></sv:node>\n', 5, 9),
(149, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/ferum', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'ferum', '', 'default_live', 'a8d046f7-a21c-4a8c-a052-c4bc5d58806b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a8d046f7-a21c-4a8c-a052-c4bc5d58806b</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.892+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:44:19.892+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">30cc01a4-002f-49cc-9cd7-e2696e2049fd</sv:value></sv:property></sv:node>\n', NULL, 6, 20),
(150, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/starcard', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'starcard', '', 'default', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ce78f04a-00b3-41d6-8b25-8f2cd69883c9</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">StarCard</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"38\">/pokrovitelji-i-partneri-2023/starcard</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.565+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:50.115+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">120</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.614+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">StarCard</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[7]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">120</sv:value></sv:property></sv:node>\n', 5, 10),
(151, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/starcard', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'starcard', '', 'default', '96023c95-99cb-4e31-a6ac-eaeba31606b9', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">96023c95-99cb-4e31-a6ac-eaeba31606b9</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.618+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.618+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">ce78f04a-00b3-41d6-8b25-8f2cd69883c9</sv:value></sv:property></sv:node>\n', NULL, 6, 21),
(152, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/starcard', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'starcard', '', 'default_live', 'ce78f04a-00b3-41d6-8b25-8f2cd69883c9', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ce78f04a-00b3-41d6-8b25-8f2cd69883c9</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">StarCard</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">{\"ids\":[7]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"38\">/pokrovitelji-i-partneri-2023/starcard</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.614+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.565+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:50.115+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">120</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">StarCard</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">120</sv:value></sv:property></sv:node>\n', 5, 10),
(153, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/starcard', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'starcard', '', 'default_live', '96023c95-99cb-4e31-a6ac-eaeba31606b9', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">96023c95-99cb-4e31-a6ac-eaeba31606b9</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.618+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:45:35.618+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">ce78f04a-00b3-41d6-8b25-8f2cd69883c9</sv:value></sv:property></sv:node>\n', NULL, 6, 22),
(154, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/unija-poslodavaca-srbije', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'unija-poslodavaca-srbije', '', 'default', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Unija Poslodavaca Srbije</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/ups</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.621+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:52.114+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">130</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.671+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Unija Poslodavaca Srbije</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">130</sv:value></sv:property></sv:node>\n', 5, 11),
(155, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/ups', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'ups', '', 'default', '87837edd-3353-4206-808e-794491e3368e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">87837edd-3353-4206-808e-794491e3368e</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.679+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.679+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0</sv:value></sv:property></sv:node>\n', NULL, 6, 23);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(156, '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023/unija-poslodavaca-srbije', '/cmf/digitrans/contents/pokrovitelji-i-partneri-2023', 'unija-poslodavaca-srbije', '', 'default_live', '6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Unija Poslodavaca Srbije</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">/pokrovitelji-i-partneri-2023/ups</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">partneri</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.671+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.621+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:52.114+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">130</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"24\">Unija Poslodavaca Srbije</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"3\">130</sv:value></sv:property></sv:node>\n', 5, 11),
(157, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/ups', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'ups', '', 'default_live', '87837edd-3353-4206-808e-794491e3368e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">87837edd-3353-4206-808e-794491e3368e</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.679+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-13T11:46:27.679+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">6e4bfedf-8cb3-4cc8-bfcc-8d2a01b679e0</sv:value></sv:property></sv:node>\n', NULL, 6, 24),
(158, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/seyfor', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'seyfor', '', 'default', 'a474ee0b-5cf4-4273-90b5-3cae41833794', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a474ee0b-5cf4-4273-90b5-3cae41833794</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T06:38:10.948+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T06:38:10.948+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">28e0c348-075d-404b-9342-a28835076669</sv:value></sv:property></sv:node>\n', NULL, 6, 25),
(159, '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023/seyfor', '/cmf/digitrans/routes/en/pokrovitelji-i-partneri-2023', 'seyfor', '', 'default_live', 'a474ee0b-5cf4-4273-90b5-3cae41833794', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a474ee0b-5cf4-4273-90b5-3cae41833794</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T06:38:10.948+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-10-16T06:38:10.948+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">28e0c348-075d-404b-9342-a28835076669</sv:value></sv:property></sv:node>\n', NULL, 6, 26);

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_nodes_references`
--

CREATE TABLE `phpcr_nodes_references` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(191) NOT NULL,
  `target_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phpcr_nodes_references`
--

INSERT INTO `phpcr_nodes_references` (`source_id`, `source_property_name`, `target_id`) VALUES
(7, 'sulu:content', 5),
(12, 'sulu:content', 10),
(37, 'sulu:content', 40),
(39, 'sulu:content', 41),
(40, 'sulu:content', 36),
(41, 'sulu:content', 38),
(43, 'sulu:content', 42),
(45, 'sulu:content', 44),
(47, 'sulu:content', 46),
(49, 'sulu:content', 48),
(51, 'sulu:content', 50),
(53, 'sulu:content', 52),
(55, 'sulu:content', 54),
(57, 'sulu:content', 56),
(59, 'sulu:content', 58),
(61, 'sulu:content', 60),
(63, 'sulu:content', 62),
(65, 'sulu:content', 64),
(67, 'sulu:content', 66),
(69, 'sulu:content', 68),
(71, 'sulu:content', 70),
(73, 'sulu:content', 72),
(75, 'sulu:content', 74),
(77, 'sulu:content', 76),
(79, 'sulu:content', 78),
(81, 'sulu:content', 80),
(83, 'sulu:content', 82),
(85, 'sulu:content', 84),
(87, 'sulu:content', 86),
(89, 'sulu:content', 88),
(99, 'sulu:content', 98),
(101, 'sulu:content', 100),
(103, 'sulu:content', 102),
(105, 'sulu:content', 104),
(107, 'sulu:content', 106),
(109, 'sulu:content', 108),
(111, 'sulu:content', 110),
(113, 'sulu:content', 112),
(115, 'sulu:content', 114),
(117, 'sulu:content', 116),
(119, 'sulu:content', 118),
(121, 'sulu:content', 120),
(123, 'sulu:content', 122),
(125, 'sulu:content', 124),
(127, 'sulu:content', 158),
(129, 'sulu:content', 159),
(131, 'sulu:content', 130),
(133, 'sulu:content', 132),
(136, 'sulu:content', 134),
(137, 'sulu:content', 135),
(139, 'sulu:content', 138),
(141, 'sulu:content', 140),
(143, 'sulu:content', 142),
(145, 'sulu:content', 144),
(147, 'sulu:content', 146),
(149, 'sulu:content', 148),
(151, 'sulu:content', 150),
(153, 'sulu:content', 152),
(155, 'sulu:content', 154),
(157, 'sulu:content', 156),
(158, 'sulu:content', 126),
(159, 'sulu:content', 128);

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_nodes_weakreferences`
--

CREATE TABLE `phpcr_nodes_weakreferences` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(191) NOT NULL,
  `target_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_type_childs`
--

CREATE TABLE `phpcr_type_childs` (
  `id` int(11) NOT NULL,
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `primary_types` varchar(255) NOT NULL,
  `default_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phpcr_type_childs`
--

INSERT INTO `phpcr_type_childs` (`id`, `node_type_id`, `name`, `protected`, `auto_created`, `mandatory`, `on_parent_version`, `primary_types`, `default_type`) VALUES
(1, 10, '*', 0, 0, 0, 1, 'phpcrmig:version', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_type_nodes`
--

CREATE TABLE `phpcr_type_nodes` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `supertypes` varchar(255) NOT NULL,
  `is_abstract` tinyint(1) NOT NULL,
  `is_mixin` tinyint(1) NOT NULL,
  `queryable` tinyint(1) NOT NULL,
  `orderable_child_nodes` tinyint(1) NOT NULL,
  `primary_item` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phpcr_type_nodes`
--

INSERT INTO `phpcr_type_nodes` (`node_type_id`, `name`, `supertypes`, `is_abstract`, `is_mixin`, `queryable`, `orderable_child_nodes`, `primary_item`) VALUES
(1, 'sulu:base', 'mix:referenceable', 1, 1, 0, 0, NULL),
(2, 'sulu:path', 'sulu:base', 0, 1, 0, 0, NULL),
(3, 'sulu:content', 'sulu:base', 0, 1, 0, 0, NULL),
(4, 'sulu:snippet', 'sulu:content', 0, 1, 0, 0, NULL),
(5, 'sulu:page', 'sulu:content', 0, 1, 0, 0, NULL),
(6, 'sulu:home', 'sulu:content', 0, 1, 0, 0, NULL),
(7, 'sulu:custom_url', 'sulu:base', 0, 1, 0, 0, NULL),
(8, 'sulu:custom_url_route', 'sulu:base', 0, 1, 0, 0, NULL),
(9, 'phpcrmig:version', 'nt:base mix:created', 0, 0, 1, 0, NULL),
(10, 'phpcrmig:versions', 'nt:base', 0, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_type_props`
--

CREATE TABLE `phpcr_type_props` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `fulltext_searchable` tinyint(1) NOT NULL,
  `query_orderable` tinyint(1) NOT NULL,
  `required_type` int(11) NOT NULL,
  `query_operators` int(11) NOT NULL,
  `default_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phpcr_type_props`
--

INSERT INTO `phpcr_type_props` (`node_type_id`, `name`, `protected`, `auto_created`, `mandatory`, `on_parent_version`, `multiple`, `fulltext_searchable`, `query_orderable`, `required_type`, `query_operators`, `default_value`) VALUES
(2, 'sulu:content', 0, 0, 1, 1, 0, 0, 0, 9, 0, NULL),
(2, 'sulu:history', 0, 1, 1, 1, 0, 0, 0, 6, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpcr_workspaces`
--

CREATE TABLE `phpcr_workspaces` (
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phpcr_workspaces`
--

INSERT INTO `phpcr_workspaces` (`name`) VALUES
('default'),
('default_live');

-- --------------------------------------------------------

--
-- Table structure for table `pr_preview_links`
--

CREATE TABLE `pr_preview_links` (
  `id` int(11) NOT NULL,
  `token` varchar(12) NOT NULL,
  `resourceKey` varchar(255) NOT NULL,
  `resourceId` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `visitCount` int(11) NOT NULL,
  `lastVisit` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ro_routes`
--

CREATE TABLE `ro_routes` (
  `id` int(11) NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `locale` varchar(8) NOT NULL,
  `entity_class` varchar(191) NOT NULL,
  `entity_id` varchar(191) NOT NULL,
  `history` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `se_access_controls`
--

CREATE TABLE `se_access_controls` (
  `id` int(11) NOT NULL,
  `permissions` smallint(6) NOT NULL,
  `entityId` varchar(36) NOT NULL,
  `entityClass` varchar(191) NOT NULL,
  `entityIdInteger` int(11) DEFAULT NULL,
  `idRoles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `se_groups`
--

CREATE TABLE `se_groups` (
  `id` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idGroupsParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `se_group_roles`
--

CREATE TABLE `se_group_roles` (
  `idGroups` int(11) NOT NULL,
  `idRoles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `se_permissions`
--

CREATE TABLE `se_permissions` (
  `id` int(11) NOT NULL,
  `context` varchar(191) NOT NULL,
  `module` varchar(60) DEFAULT NULL,
  `permissions` smallint(6) NOT NULL,
  `idRoles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `se_permissions`
--

INSERT INTO `se_permissions` (`id`, `context`, `module`, `permissions`, `idRoles`) VALUES
(1, 'sulu.contact.people', NULL, 127, 1),
(2, 'sulu.contact.organizations', NULL, 127, 1),
(3, 'sulu.media.collections', NULL, 127, 1),
(4, 'sulu.media.system_collections', NULL, 127, 1),
(5, 'sulu.settings.categories', NULL, 127, 1),
(6, 'sulu.settings.tags', NULL, 127, 1),
(7, 'sulu.global.snippets', NULL, 127, 1),
(8, 'sulu.webspaces.digitrans.default-snippets', NULL, 127, 1),
(9, 'sulu.webspaces.digitrans', NULL, 127, 1),
(10, 'sulu.webspaces.digitrans.analytics', NULL, 127, 1),
(11, 'sulu.webspaces.digitrans.custom-urls', NULL, 127, 1),
(12, 'sulu.activities.activities', NULL, 127, 1),
(13, 'sulu.trash.trash', NULL, 127, 1),
(14, 'sulu.security.roles', NULL, 127, 1),
(15, 'sulu.security.users', NULL, 127, 1),
(16, 'sulu.form.forms', NULL, 120, 1);

-- --------------------------------------------------------

--
-- Table structure for table `se_roles`
--

CREATE TABLE `se_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `role_key` varchar(60) DEFAULT NULL,
  `securitySystem` varchar(60) NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idSecurityTypes` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `se_roles`
--

INSERT INTO `se_roles` (`id`, `name`, `role_key`, `securitySystem`, `anonymous`, `created`, `changed`, `idSecurityTypes`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'User', NULL, 'Sulu', 0, '2023-10-05 14:05:07', '2023-10-05 14:05:07', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `se_role_settings`
--

CREATE TABLE `se_role_settings` (
  `id` int(11) NOT NULL,
  `settingKey` varchar(191) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `se_security_types`
--

CREATE TABLE `se_security_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `se_users`
--

CREATE TABLE `se_users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(128) NOT NULL,
  `locale` varchar(60) NOT NULL,
  `salt` varchar(60) NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `lastLogin` datetime DEFAULT NULL,
  `confirmationKey` varchar(128) DEFAULT NULL,
  `passwordResetToken` varchar(80) DEFAULT NULL,
  `passwordResetTokenExpiresAt` datetime DEFAULT NULL,
  `passwordResetTokenEmailsSent` int(11) DEFAULT 0,
  `privateKey` varchar(2000) DEFAULT NULL,
  `apiKey` char(36) DEFAULT NULL COMMENT '(DC2Type:guid)',
  `email` varchar(191) DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idContacts` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `se_users`
--

INSERT INTO `se_users` (`id`, `username`, `password`, `locale`, `salt`, `locked`, `enabled`, `lastLogin`, `confirmationKey`, `passwordResetToken`, `passwordResetTokenExpiresAt`, `passwordResetTokenEmailsSent`, `privateKey`, `apiKey`, `email`, `created`, `changed`, `idContacts`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'admin', '$2y$13$p3iIIcMOF7nLnQiYeogoZOm2/A9PvDCpkWBw8WPnQcVPBhaUhkEoa', 'en', '49Y3r0iWqXGIqPmOTy9UhI5EnJ9Oi22TiR5CBgXuer8=', 0, 1, '2023-10-18 07:47:44', NULL, NULL, NULL, NULL, NULL, '5c36081850c76b6636a5f1d48f246206', 'admin@example.com', '2023-10-05 14:05:08', '2023-10-18 07:47:44', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `se_user_groups`
--

CREATE TABLE `se_user_groups` (
  `id` int(11) NOT NULL,
  `locale` longtext NOT NULL,
  `idGroups` int(11) DEFAULT NULL,
  `idUsers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `se_user_roles`
--

CREATE TABLE `se_user_roles` (
  `id` int(11) NOT NULL,
  `locale` longtext NOT NULL,
  `idUsers` int(11) DEFAULT NULL,
  `idRoles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `se_user_roles`
--

INSERT INTO `se_user_roles` (`id`, `locale`, `idUsers`, `idRoles`) VALUES
(1, '[\"en\"]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `se_user_settings`
--

CREATE TABLE `se_user_settings` (
  `settingsValue` longtext NOT NULL,
  `settingsKey` varchar(150) NOT NULL,
  `idUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `se_user_settings`
--

INSERT INTO `se_user_settings` (`settingsValue`, `settingsKey`, `idUsers`) VALUES
('false', 'sulu_admin.application.navigation_pinned', 1),
('\"en\"', 'sulu_admin.content_locale', 1),
('\"cbbc2782-8f86-4758-91a6-540baca0787c\"', 'sulu_admin.list_store.analytics.list.active', 1),
('[]', 'sulu_admin.list_store.analytics.list.filter', 1),
('8', 'sulu_admin.list_store.collections.single_list_overlay.active', 1),
('[]', 'sulu_admin.list_store.contacts.list.filter', 1),
('\"cbbc2782-8f86-4758-91a6-540baca0787c\"', 'sulu_admin.list_store.custom_urls.list.active', 1),
('[]', 'sulu_admin.list_store.custom_urls.list.filter', 1),
('[]', 'sulu_admin.list_store.form_data.list.filter', 1),
('[]', 'sulu_admin.list_store.forms.list.filter', 1),
('\"aaeb399f-799e-4328-8bd2-bc2d4d9de6db\"', 'sulu_admin.list_store.pages.page_list_digitrans.active', 1),
('\"cbbc2782-8f86-4758-91a6-540baca0787c\"', 'sulu_admin.list_store.pages.single_list_overlay.active', 1),
('[]', 'sulu_admin.list_store.roles.list.filter', 1),
('[]', 'sulu_admin.list_store.snippets.list.filter', 1);

-- --------------------------------------------------------

--
-- Table structure for table `se_user_two_factors`
--

CREATE TABLE `se_user_two_factors` (
  `id` int(11) NOT NULL,
  `method` varchar(12) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `idUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ta_tags`
--

CREATE TABLE `ta_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tr_trash_items`
--

CREATE TABLE `tr_trash_items` (
  `id` int(11) NOT NULL,
  `resourceKey` varchar(191) NOT NULL,
  `resourceId` varchar(191) NOT NULL,
  `restoreData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`restoreData`)),
  `restoreType` varchar(191) DEFAULT NULL,
  `restoreOptions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`restoreOptions`)),
  `resourceSecurityContext` varchar(191) DEFAULT NULL,
  `resourceSecurityObjectType` varchar(191) DEFAULT NULL,
  `resourceSecurityObjectId` varchar(191) DEFAULT NULL,
  `storeTimestamp` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `defaultLocale` varchar(191) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tr_trash_items`
--

INSERT INTO `tr_trash_items` (`id`, `resourceKey`, `resourceId`, `restoreData`, `restoreType`, `restoreOptions`, `resourceSecurityContext`, `resourceSecurityObjectType`, `resourceSecurityObjectId`, `storeTimestamp`, `defaultLocale`, `userId`) VALUES
(1, 'pages', 'cb44160a-f2ff-4469-a269-98494695f242', '{\"locales\":[{\"title\":\"Centar Novih Tehnologija\",\"locale\":\"en\",\"creator\":1,\"created\":\"2023-10-13T11:09:35+00:00\",\"author\":\"1\",\"authored\":\"2023-10-13T11:09:35+00:00\",\"structureType\":\"partneri\",\"structureData\":{\"title\":\"Centar Novih Tehnologija\",\"url\":\"\\/pokrovitelji-i-partneri-2023\\/cnt\",\"article\":\"\"},\"extensionsData\":{\"seo\":{\"title\":\"\",\"description\":\"\",\"keywords\":\"\",\"canonicalUrl\":\"\",\"noIndex\":false,\"noFollow\":false,\"hideInSitemap\":false},\"excerpt\":{\"title\":\"Centar Novih Tehnologija DOO\",\"more\":\"\",\"description\":\"\",\"categories\":[],\"tags\":[],\"segments\":[],\"icon\":{\"ids\":[]},\"images\":{\"ids\":[3]}}},\"permissions\":[],\"navigationContexts\":[],\"shadowLocaleEnabled\":false,\"shadowLocale\":null,\"redirectType\":1,\"redirectExternal\":null,\"redirectTargetUuid\":null,\"resourceSegment\":\"\\/pokrovitelji-i-partneri-2023\\/cnt\",\"suluOrder\":20}],\"parentUuid\":\"cbbc2782-8f86-4758-91a6-540baca0787c\"}', NULL, '[]', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cb44160a-f2ff-4469-a269-98494695f242', '2023-10-13 11:13:51', 'en', 1),
(2, 'pages', 'cce11bf1-b31a-427a-b630-13d68222087c', '{\"locales\":[{\"title\":\"Centar Novih Tehnologija DOO\",\"locale\":\"en\",\"creator\":1,\"created\":\"2023-10-13T11:14:24+00:00\",\"author\":\"1\",\"authored\":\"2023-10-13T11:14:24+00:00\",\"structureType\":\"sponzori\",\"structureData\":{\"title\":\"Centar Novih Tehnologija DOO\",\"url\":\"\\/sponzori-2023\\/cnt\",\"article\":\"\"},\"extensionsData\":{\"seo\":{\"title\":\"\",\"description\":\"\",\"keywords\":\"\",\"canonicalUrl\":\"\",\"noIndex\":false,\"noFollow\":false,\"hideInSitemap\":false},\"excerpt\":{\"title\":\"Centar Novih Tehnologija DOO\",\"more\":\"\",\"description\":\"\",\"categories\":[],\"tags\":[],\"segments\":[],\"icon\":{\"ids\":[]},\"images\":{\"ids\":[3]}}},\"permissions\":[],\"navigationContexts\":[],\"shadowLocaleEnabled\":false,\"shadowLocale\":null,\"redirectType\":1,\"redirectExternal\":null,\"redirectTargetUuid\":null,\"resourceSegment\":\"\\/sponzori-2023\\/cnt\",\"suluOrder\":20}],\"parentUuid\":\"ddc3c96e-a63f-4a6f-a0c6-a73ebe82d7bc\"}', NULL, '[]', 'sulu.webspaces.digitrans', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', 'cce11bf1-b31a-427a-b630-13d68222087c', '2023-10-13 11:27:35', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tr_trash_item_translations`
--

CREATE TABLE `tr_trash_item_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `trashItemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tr_trash_item_translations`
--

INSERT INTO `tr_trash_item_translations` (`id`, `locale`, `title`, `trashItemId`) VALUES
(1, 'en', 'Centar Novih Tehnologija', 1),
(2, 'en', 'Centar Novih Tehnologija DOO', 2);

-- --------------------------------------------------------

--
-- Table structure for table `we_analytics`
--

CREATE TABLE `we_analytics` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `webspace_key` varchar(191) NOT NULL,
  `all_domains` tinyint(1) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `we_analytics_domains`
--

CREATE TABLE `we_analytics_domains` (
  `analytics` int(11) NOT NULL,
  `domain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `we_domains`
--

CREATE TABLE `we_domains` (
  `id` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `environment` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac_activities`
--
ALTER TABLE `ac_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3EE015D064B64DCC` (`userId`),
  ADD KEY `timestamp_idx` (`timestamp`),
  ADD KEY `resourceKey_idx` (`resourceKey`),
  ADD KEY `resourceId_idx` (`resourceId`),
  ADD KEY `resourceSecurityContext_idx` (`resourceSecurityContext`),
  ADD KEY `resourceSecurityObjectType_idx` (`resourceSecurityObjectType`),
  ADD KEY `resourceSecurityObjectId_idx` (`resourceSecurityObjectId`);

--
-- Indexes for table `ca_categories`
--
ALTER TABLE `ca_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3D85D789AF5206F3` (`category_key`),
  ADD KEY `IDX_3D85D78937A3C3B1` (`idCategoriesParent`),
  ADD KEY `IDX_3D85D789DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_3D85D78930D07CD5` (`idUsersChanger`);

--
-- Indexes for table `ca_category_meta`
--
ALTER TABLE `ca_category_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2575BBB0B8075882` (`idCategories`);

--
-- Indexes for table `ca_category_translations`
--
ALTER TABLE `ca_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5DCED5E3B8075882` (`idCategories`),
  ADD KEY `IDX_5DCED5E3DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_5DCED5E330D07CD5` (`idUsersChanger`);

--
-- Indexes for table `ca_category_translation_keywords`
--
ALTER TABLE `ca_category_translation_keywords`
  ADD PRIMARY KEY (`idKeywords`,`idCategoryTranslations`),
  ADD KEY `IDX_D15FBE37F9FC9F05` (`idKeywords`),
  ADD KEY `IDX_D15FBE3717CA14DA` (`idCategoryTranslations`);

--
-- Indexes for table `ca_category_translation_medias`
--
ALTER TABLE `ca_category_translation_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_39FC41BA17CA14DA` (`idCategoryTranslations`),
  ADD KEY `IDX_39FC41BA7DE8E211` (`idMedia`);

--
-- Indexes for table `ca_keywords`
--
ALTER TABLE `ca_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_idx` (`keyword`,`locale`),
  ADD KEY `IDX_FE02CA0BDBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_FE02CA0B30D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_FE02CA0B5A93713B` (`keyword`);

--
-- Indexes for table `co_accounts`
--
ALTER TABLE `co_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_805CD14A6D4A8651` (`idContactsMain`),
  ADD KEY `IDX_805CD14AC9171171` (`idAccountsParent`),
  ADD KEY `IDX_805CD14AE48E9A13` (`logo`),
  ADD KEY `IDX_805CD14ADBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_805CD14A30D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_805CD14A5E237E06` (`name`);

--
-- Indexes for table `co_account_addresses`
--
ALTER TABLE `co_account_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4165FE4893205E40996BB4F7` (`idAddresses`,`idAccounts`),
  ADD KEY `IDX_4165FE4893205E40` (`idAddresses`),
  ADD KEY `IDX_4165FE48996BB4F7` (`idAccounts`);

--
-- Indexes for table `co_account_bank_accounts`
--
ALTER TABLE `co_account_bank_accounts`
  ADD PRIMARY KEY (`idAccounts`,`idBankAccounts`),
  ADD KEY `IDX_C873A532996BB4F7` (`idAccounts`),
  ADD KEY `IDX_C873A53237FCD1D8` (`idBankAccounts`);

--
-- Indexes for table `co_account_categories`
--
ALTER TABLE `co_account_categories`
  ADD PRIMARY KEY (`idAccounts`,`idCategories`),
  ADD KEY `IDX_B60E9510996BB4F7` (`idAccounts`),
  ADD KEY `IDX_B60E9510B8075882` (`idCategories`);

--
-- Indexes for table `co_account_contacts`
--
ALTER TABLE `co_account_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_28C6CA0E60E33F28996BB4F7` (`idContacts`,`idAccounts`),
  ADD KEY `IDX_28C6CA0E2A75CE2A` (`idPositions`),
  ADD KEY `IDX_28C6CA0E60E33F28` (`idContacts`),
  ADD KEY `IDX_28C6CA0E996BB4F7` (`idAccounts`);

--
-- Indexes for table `co_account_emails`
--
ALTER TABLE `co_account_emails`
  ADD PRIMARY KEY (`idAccounts`,`idEmails`),
  ADD KEY `IDX_3E246FC3996BB4F7` (`idAccounts`),
  ADD KEY `IDX_3E246FC32F9040C8` (`idEmails`);

--
-- Indexes for table `co_account_faxes`
--
ALTER TABLE `co_account_faxes`
  ADD PRIMARY KEY (`idAccounts`,`idFaxes`),
  ADD KEY `IDX_7A4E77DC996BB4F7` (`idAccounts`),
  ADD KEY `IDX_7A4E77DCCF6A2007` (`idFaxes`);

--
-- Indexes for table `co_account_medias`
--
ALTER TABLE `co_account_medias`
  ADD PRIMARY KEY (`idAccounts`,`idMedias`),
  ADD KEY `IDX_60772810996BB4F7` (`idAccounts`),
  ADD KEY `IDX_6077281071C3071B` (`idMedias`);

--
-- Indexes for table `co_account_notes`
--
ALTER TABLE `co_account_notes`
  ADD PRIMARY KEY (`idAccounts`,`idNotes`),
  ADD KEY `IDX_A3FBB24A996BB4F7` (`idAccounts`),
  ADD KEY `IDX_A3FBB24A16DFE591` (`idNotes`);

--
-- Indexes for table `co_account_phones`
--
ALTER TABLE `co_account_phones`
  ADD PRIMARY KEY (`idAccounts`,`idPhones`),
  ADD KEY `IDX_918DA964996BB4F7` (`idAccounts`),
  ADD KEY `IDX_918DA9648039866F` (`idPhones`);

--
-- Indexes for table `co_account_social_media_profiles`
--
ALTER TABLE `co_account_social_media_profiles`
  ADD PRIMARY KEY (`idAccounts`,`idSocialMediaProfiles`),
  ADD KEY `IDX_E06F75F5996BB4F7` (`idAccounts`),
  ADD KEY `IDX_E06F75F5573F8344` (`idSocialMediaProfiles`);

--
-- Indexes for table `co_account_tags`
--
ALTER TABLE `co_account_tags`
  ADD PRIMARY KEY (`idAccounts`,`idTags`),
  ADD KEY `IDX_E8D92005996BB4F7` (`idAccounts`),
  ADD KEY `IDX_E8D920051C41CAB8` (`idTags`);

--
-- Indexes for table `co_account_urls`
--
ALTER TABLE `co_account_urls`
  ADD PRIMARY KEY (`idAccounts`,`idUrls`),
  ADD KEY `IDX_ADF18382996BB4F7` (`idAccounts`),
  ADD KEY `IDX_ADF183825969693F` (`idUrls`);

--
-- Indexes for table `co_addresses`
--
ALTER TABLE `co_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_26E9A6142A37021A` (`idAdressTypes`);

--
-- Indexes for table `co_address_types`
--
ALTER TABLE `co_address_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_bank_account`
--
ALTER TABLE `co_bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_contacts`
--
ALTER TABLE `co_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_79D45A95A254E939` (`idTitles`),
  ADD KEY `IDX_79D45A951677722F` (`avatar`),
  ADD KEY `IDX_79D45A95DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_79D45A9530D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_79D45A952392A156` (`firstName`),
  ADD KEY `IDX_79D45A9591161A88` (`lastName`);

--
-- Indexes for table `co_contact_addresses`
--
ALTER TABLE `co_contact_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DEE056893205E4060E33F28` (`idAddresses`,`idContacts`),
  ADD KEY `IDX_DEE056893205E40` (`idAddresses`),
  ADD KEY `IDX_DEE056860E33F28` (`idContacts`);

--
-- Indexes for table `co_contact_bank_accounts`
--
ALTER TABLE `co_contact_bank_accounts`
  ADD PRIMARY KEY (`idContacts`,`idBankAccounts`),
  ADD KEY `IDX_76CDDA0660E33F28` (`idContacts`),
  ADD KEY `IDX_76CDDA0637FCD1D8` (`idBankAccounts`);

--
-- Indexes for table `co_contact_categories`
--
ALTER TABLE `co_contact_categories`
  ADD PRIMARY KEY (`idContacts`,`idCategories`),
  ADD KEY `IDX_8D2C3E2360E33F28` (`idContacts`),
  ADD KEY `IDX_8D2C3E23B8075882` (`idCategories`);

--
-- Indexes for table `co_contact_emails`
--
ALTER TABLE `co_contact_emails`
  ADD PRIMARY KEY (`idContacts`,`idEmails`),
  ADD KEY `IDX_8982963160E33F28` (`idContacts`),
  ADD KEY `IDX_898296312F9040C8` (`idEmails`);

--
-- Indexes for table `co_contact_faxes`
--
ALTER TABLE `co_contact_faxes`
  ADD PRIMARY KEY (`idContacts`,`idFaxes`),
  ADD KEY `IDX_61EBBEA260E33F28` (`idContacts`),
  ADD KEY `IDX_61EBBEA2CF6A2007` (`idFaxes`);

--
-- Indexes for table `co_contact_locales`
--
ALTER TABLE `co_contact_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_31E5672760E33F28` (`idContacts`);

--
-- Indexes for table `co_contact_medias`
--
ALTER TABLE `co_contact_medias`
  ADD PRIMARY KEY (`idContacts`,`idMedias`),
  ADD KEY `IDX_D7D1D1E260E33F28` (`idContacts`),
  ADD KEY `IDX_D7D1D1E271C3071B` (`idMedias`);

--
-- Indexes for table `co_contact_notes`
--
ALTER TABLE `co_contact_notes`
  ADD PRIMARY KEY (`idContacts`,`idNotes`),
  ADD KEY `IDX_B85E7B3460E33F28` (`idContacts`),
  ADD KEY `IDX_B85E7B3416DFE591` (`idNotes`);

--
-- Indexes for table `co_contact_phones`
--
ALTER TABLE `co_contact_phones`
  ADD PRIMARY KEY (`idContacts`,`idPhones`),
  ADD KEY `IDX_262B509660E33F28` (`idContacts`),
  ADD KEY `IDX_262B50968039866F` (`idPhones`);

--
-- Indexes for table `co_contact_social_media_profiles`
--
ALTER TABLE `co_contact_social_media_profiles`
  ADD PRIMARY KEY (`idContacts`,`idSocialMediaProfiles`),
  ADD KEY `IDX_74FF4CC060E33F28` (`idContacts`),
  ADD KEY `IDX_74FF4CC0573F8344` (`idSocialMediaProfiles`);

--
-- Indexes for table `co_contact_tags`
--
ALTER TABLE `co_contact_tags`
  ADD PRIMARY KEY (`idContacts`,`idTags`),
  ADD KEY `IDX_4CB5255060E33F28` (`idContacts`),
  ADD KEY `IDX_4CB525501C41CAB8` (`idTags`);

--
-- Indexes for table `co_contact_titles`
--
ALTER TABLE `co_contact_titles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4463FC02B36786B` (`title`);

--
-- Indexes for table `co_contact_urls`
--
ALTER TABLE `co_contact_urls`
  ADD PRIMARY KEY (`idContacts`,`idUrls`),
  ADD KEY `IDX_99D86D760E33F28` (`idContacts`),
  ADD KEY `IDX_99D86D75969693F` (`idUrls`);

--
-- Indexes for table `co_emails`
--
ALTER TABLE `co_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A2F2CB77D816E840` (`idEmailTypes`),
  ADD KEY `IDX_A2F2CB77E7927C74` (`email`);

--
-- Indexes for table `co_email_types`
--
ALTER TABLE `co_email_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_faxes`
--
ALTER TABLE `co_faxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A5EC6A18B466C5DA` (`idFaxTypes`);

--
-- Indexes for table `co_fax_types`
--
ALTER TABLE `co_fax_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_notes`
--
ALTER TABLE `co_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_phones`
--
ALTER TABLE `co_phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D5B0DD0A4249AD7` (`idPhoneTypes`);

--
-- Indexes for table `co_phone_types`
--
ALTER TABLE `co_phone_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_positions`
--
ALTER TABLE `co_positions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9FBC367E462CE4F5` (`position`);

--
-- Indexes for table `co_social_media_profiles`
--
ALTER TABLE `co_social_media_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DF585BFBB5BEA95F` (`idSocialMediaTypes`);

--
-- Indexes for table `co_social_media_profile_types`
--
ALTER TABLE `co_social_media_profile_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_urls`
--
ALTER TABLE `co_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6F03842E882335CC` (`idUrlTypes`);

--
-- Indexes for table `co_url_types`
--
ALTER TABLE `co_url_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fo_dynamics`
--
ALTER TABLE `fo_dynamics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EC8AF0309E50CC11` (`formId`),
  ADD KEY `IDX_EC8AF030DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_EC8AF03030D07CD5` (`idUsersChanger`);

--
-- Indexes for table `fo_forms`
--
ALTER TABLE `fo_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fo_form_fields`
--
ALTER TABLE `fo_form_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D544F184EAFB58EA6773D512` (`idForms`,`keyName`),
  ADD KEY `IDX_D544F184EAFB58EA` (`idForms`);

--
-- Indexes for table `fo_form_field_translations`
--
ALTER TABLE `fo_form_field_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D3E6716F2C2B00B` (`idFormFields`);

--
-- Indexes for table `fo_form_translations`
--
ALTER TABLE `fo_form_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8BAF12FFEAFB58EA` (`idForms`),
  ADD KEY `IDX_8BAF12FFDBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_8BAF12FF30D07CD5` (`idUsersChanger`);

--
-- Indexes for table `fo_form_translation_receivers`
--
ALTER TABLE `fo_form_translation_receivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E57BDF29F4EA7C89` (`idFormTranslations`);

--
-- Indexes for table `me_collections`
--
ALTER TABLE `me_collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F0D4887221904CD` (`collection_key`),
  ADD UNIQUE KEY `UNIQ_F0D4887CFA3F467` (`idCollectionsMetaDefault`),
  ADD KEY `IDX_F0D4887E67924D6` (`idCollectionTypes`),
  ADD KEY `IDX_F0D4887A4F2DCF8` (`idCollectionsParent`),
  ADD KEY `IDX_F0D4887DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_F0D488730D07CD5` (`idUsersChanger`);

--
-- Indexes for table `me_collection_meta`
--
ALTER TABLE `me_collection_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F8D5E71693782C96` (`idCollections`),
  ADD KEY `IDX_F8D5E7162B36786B` (`title`),
  ADD KEY `IDX_F8D5E7164180C698` (`locale`);

--
-- Indexes for table `me_collection_types`
--
ALTER TABLE `me_collection_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FB78DFB179078378` (`collection_type_key`);

--
-- Indexes for table `me_files`
--
ALTER TABLE `me_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CA8D04277DE8E211` (`idMedia`),
  ADD KEY `IDX_CA8D0427DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_CA8D042730D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_CA8D0427BF1CD3C3` (`version`);

--
-- Indexes for table `me_file_versions`
--
ALTER TABLE `me_file_versions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7B6E89456B801096` (`idFileVersionsMetaDefault`),
  ADD KEY `IDX_7B6E894511F10344` (`idFiles`),
  ADD KEY `IDX_7B6E8945DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_7B6E894530D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_7B6E8945D8F2A087` (`mimeType`),
  ADD KEY `IDX_7B6E8945F7C0246A` (`size`),
  ADD KEY `IDX_7B6E8945BF1CD3C3` (`version`),
  ADD KEY `IDX_7B6E89455E237E06` (`name`);

--
-- Indexes for table `me_file_version_categories`
--
ALTER TABLE `me_file_version_categories`
  ADD PRIMARY KEY (`idFileVersions`,`idCategories`),
  ADD KEY `IDX_2F1E17D0911ADE33` (`idFileVersions`),
  ADD KEY `IDX_2F1E17D0B8075882` (`idCategories`);

--
-- Indexes for table `me_file_version_content_languages`
--
ALTER TABLE `me_file_version_content_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F3FD652C911ADE33` (`idFileVersions`);

--
-- Indexes for table `me_file_version_meta`
--
ALTER TABLE `me_file_version_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AD44B0AD911ADE33` (`idFileVersions`),
  ADD KEY `IDX_AD44B0AD2B36786B` (`title`),
  ADD KEY `IDX_AD44B0AD4180C698` (`locale`);

--
-- Indexes for table `me_file_version_publish_languages`
--
ALTER TABLE `me_file_version_publish_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_195DAB3C911ADE33` (`idFileVersions`);

--
-- Indexes for table `me_file_version_tags`
--
ALTER TABLE `me_file_version_tags`
  ADD PRIMARY KEY (`idFileVersions`,`idTags`),
  ADD KEY `IDX_150A30BE911ADE33` (`idFileVersions`),
  ADD KEY `IDX_150A30BE1C41CAB8` (`idTags`);

--
-- Indexes for table `me_format_options`
--
ALTER TABLE `me_format_options`
  ADD PRIMARY KEY (`format_key`,`fileVersion`),
  ADD KEY `IDX_6D25443B31852B63` (`fileVersion`);

--
-- Indexes for table `me_media`
--
ALTER TABLE `me_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A694E572D1EB44DE` (`idPreviewImage`),
  ADD KEY `IDX_A694E57284671716` (`idMediaTypes`),
  ADD KEY `IDX_A694E57293782C96` (`idCollections`),
  ADD KEY `IDX_A694E572DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_A694E57230D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_A694E572A3F33DFA` (`changed`),
  ADD KEY `IDX_A694E572B23DB7B8` (`created`);

--
-- Indexes for table `me_media_types`
--
ALTER TABLE `me_media_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9A01D6E85E237E06` (`name`);

--
-- Indexes for table `phpcr_binarydata`
--
ALTER TABLE `phpcr_binarydata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_37E65615460D9FD7413BC13C1AC10DC4E7087E10` (`node_id`,`property_name`,`workspace_name`,`idx`);

--
-- Indexes for table `phpcr_internal_index_types`
--
ALTER TABLE `phpcr_internal_index_types`
  ADD PRIMARY KEY (`type`,`node_id`);

--
-- Indexes for table `phpcr_namespaces`
--
ALTER TABLE `phpcr_namespaces`
  ADD PRIMARY KEY (`prefix`);

--
-- Indexes for table `phpcr_nodes`
--
ALTER TABLE `phpcr_nodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A4624AD7B548B0F1AC10DC4` (`path`,`workspace_name`),
  ADD UNIQUE KEY `UNIQ_A4624AD7772E836A1AC10DC4` (`identifier`,`workspace_name`),
  ADD KEY `IDX_A4624AD73D8E604F` (`parent`),
  ADD KEY `IDX_A4624AD78CDE5729` (`type`),
  ADD KEY `IDX_A4624AD7623C14D533E16B56` (`local_name`,`namespace`);

--
-- Indexes for table `phpcr_nodes_references`
--
ALTER TABLE `phpcr_nodes_references`
  ADD PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  ADD KEY `IDX_F3BF7E1158E0B66` (`target_id`);

--
-- Indexes for table `phpcr_nodes_weakreferences`
--
ALTER TABLE `phpcr_nodes_weakreferences`
  ADD PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  ADD KEY `IDX_F0E4F6FA158E0B66` (`target_id`);

--
-- Indexes for table `phpcr_type_childs`
--
ALTER TABLE `phpcr_type_childs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phpcr_type_nodes`
--
ALTER TABLE `phpcr_type_nodes`
  ADD PRIMARY KEY (`node_type_id`),
  ADD UNIQUE KEY `UNIQ_34B0A8095E237E06` (`name`);

--
-- Indexes for table `phpcr_type_props`
--
ALTER TABLE `phpcr_type_props`
  ADD PRIMARY KEY (`node_type_id`,`name`);

--
-- Indexes for table `phpcr_workspaces`
--
ALTER TABLE `phpcr_workspaces`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `pr_preview_links`
--
ALTER TABLE `pr_preview_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EFB5DBF25F37A13B` (`token`);

--
-- Indexes for table `ro_routes`
--
ALTER TABLE `ro_routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_671DB7A4B548B0F4180C698` (`path`,`locale`),
  ADD KEY `IDX_671DB7A4158E0B66` (`target_id`),
  ADD KEY `IDX_671DB7A4DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_671DB7A430D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_671DB7A4B548B0F` (`path`),
  ADD KEY `IDX_671DB7A44180C698` (`locale`),
  ADD KEY `idx_resource` (`entity_id`,`entity_class`),
  ADD KEY `idx_history` (`history`);

--
-- Indexes for table `se_access_controls`
--
ALTER TABLE `se_access_controls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C526DC52A1FA6DDA` (`idRoles`),
  ADD KEY `IDX_C526DC52F62829FC` (`entityId`),
  ADD KEY `IDX_C526DC523963FFAB` (`entityClass`),
  ADD KEY `IDX_C526DC524473BB7A` (`entityIdInteger`);

--
-- Indexes for table `se_groups`
--
ALTER TABLE `se_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_231E44ECBF274AB0` (`idGroupsParent`),
  ADD KEY `IDX_231E44ECDBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_231E44EC30D07CD5` (`idUsersChanger`);

--
-- Indexes for table `se_group_roles`
--
ALTER TABLE `se_group_roles`
  ADD PRIMARY KEY (`idGroups`,`idRoles`),
  ADD KEY `IDX_9713F725937C91EA` (`idGroups`),
  ADD KEY `IDX_9713F725A1FA6DDA` (`idRoles`);

--
-- Indexes for table `se_permissions`
--
ALTER TABLE `se_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5CEC3EEAE25D857EC242628A1FA6DDA` (`context`,`module`,`idRoles`),
  ADD KEY `IDX_5CEC3EEAA1FA6DDA` (`idRoles`);

--
-- Indexes for table `se_roles`
--
ALTER TABLE `se_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_13B749A05E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_13B749A03EF22FDB` (`role_key`),
  ADD KEY `IDX_13B749A0D02106C0` (`idSecurityTypes`),
  ADD KEY `IDX_13B749A0DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_13B749A030D07CD5` (`idUsersChanger`);

--
-- Indexes for table `se_role_settings`
--
ALTER TABLE `se_role_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DAD1C8CB3AA9950BB8C2FD88` (`settingKey`,`roleId`),
  ADD KEY `IDX_DAD1C8CBB8C2FD88` (`roleId`),
  ADD KEY `IDX_DAD1C8CB3AA9950B` (`settingKey`);

--
-- Indexes for table `se_security_types`
--
ALTER TABLE `se_security_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `se_users`
--
ALTER TABLE `se_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B10AC28EF85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_B10AC28E60E33F28` (`idContacts`),
  ADD UNIQUE KEY `UNIQ_B10AC28EADC1CD13` (`passwordResetToken`),
  ADD UNIQUE KEY `UNIQ_B10AC28EE7927C74` (`email`),
  ADD KEY `IDX_B10AC28EDBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_B10AC28E30D07CD5` (`idUsersChanger`);

--
-- Indexes for table `se_user_groups`
--
ALTER TABLE `se_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E43ED0C8937C91EA` (`idGroups`),
  ADD KEY `IDX_E43ED0C8347E6F4` (`idUsers`);

--
-- Indexes for table `se_user_roles`
--
ALTER TABLE `se_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E48BD9DB347E6F4` (`idUsers`),
  ADD KEY `IDX_E48BD9DBA1FA6DDA` (`idRoles`);

--
-- Indexes for table `se_user_settings`
--
ALTER TABLE `se_user_settings`
  ADD PRIMARY KEY (`settingsKey`,`idUsers`),
  ADD KEY `IDX_108FCAFA347E6F4` (`idUsers`);

--
-- Indexes for table `se_user_two_factors`
--
ALTER TABLE `se_user_two_factors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_732E8321347E6F4` (`idUsers`);

--
-- Indexes for table `ta_tags`
--
ALTER TABLE `ta_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B258E4995E237E06` (`name`),
  ADD KEY `IDX_B258E499DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_B258E49930D07CD5` (`idUsersChanger`);

--
-- Indexes for table `tr_trash_items`
--
ALTER TABLE `tr_trash_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_102989B64B64DCC` (`userId`),
  ADD KEY `IDX_102989B5DAEB55C8CF57CB1` (`resourceKey`,`resourceId`);

--
-- Indexes for table `tr_trash_item_translations`
--
ALTER TABLE `tr_trash_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8264DAF45C8D7CA4180C698` (`trashItemId`,`locale`),
  ADD KEY `IDX_8264DAF45C8D7CA` (`trashItemId`);

--
-- Indexes for table `we_analytics`
--
ALTER TABLE `we_analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4E50BB8D1640EFD3` (`all_domains`),
  ADD KEY `IDX_4E50BB8DAE248174` (`webspace_key`);

--
-- Indexes for table `we_analytics_domains`
--
ALTER TABLE `we_analytics_domains`
  ADD PRIMARY KEY (`analytics`,`domain`),
  ADD KEY `IDX_F9323B6EEAC2E688` (`analytics`),
  ADD KEY `IDX_F9323B6EA7A91E0B` (`domain`);

--
-- Indexes for table `we_domains`
--
ALTER TABLE `we_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CFAB3F5F47645AE` (`url`),
  ADD KEY `IDX_7CFAB3F54626DE22` (`environment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_activities`
--
ALTER TABLE `ac_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `ca_categories`
--
ALTER TABLE `ca_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca_category_meta`
--
ALTER TABLE `ca_category_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca_category_translations`
--
ALTER TABLE `ca_category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca_category_translation_medias`
--
ALTER TABLE `ca_category_translation_medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca_keywords`
--
ALTER TABLE `ca_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_accounts`
--
ALTER TABLE `co_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_account_addresses`
--
ALTER TABLE `co_account_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_account_contacts`
--
ALTER TABLE `co_account_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_addresses`
--
ALTER TABLE `co_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_address_types`
--
ALTER TABLE `co_address_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `co_bank_account`
--
ALTER TABLE `co_bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_contacts`
--
ALTER TABLE `co_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `co_contact_addresses`
--
ALTER TABLE `co_contact_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_contact_locales`
--
ALTER TABLE `co_contact_locales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_contact_titles`
--
ALTER TABLE `co_contact_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_emails`
--
ALTER TABLE `co_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_email_types`
--
ALTER TABLE `co_email_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `co_faxes`
--
ALTER TABLE `co_faxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_fax_types`
--
ALTER TABLE `co_fax_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `co_notes`
--
ALTER TABLE `co_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_phones`
--
ALTER TABLE `co_phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_phone_types`
--
ALTER TABLE `co_phone_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `co_positions`
--
ALTER TABLE `co_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_social_media_profiles`
--
ALTER TABLE `co_social_media_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_social_media_profile_types`
--
ALTER TABLE `co_social_media_profile_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `co_urls`
--
ALTER TABLE `co_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `co_url_types`
--
ALTER TABLE `co_url_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fo_dynamics`
--
ALTER TABLE `fo_dynamics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `fo_forms`
--
ALTER TABLE `fo_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fo_form_fields`
--
ALTER TABLE `fo_form_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `fo_form_field_translations`
--
ALTER TABLE `fo_form_field_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `fo_form_translations`
--
ALTER TABLE `fo_form_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fo_form_translation_receivers`
--
ALTER TABLE `fo_form_translation_receivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `me_collections`
--
ALTER TABLE `me_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `me_collection_meta`
--
ALTER TABLE `me_collection_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `me_collection_types`
--
ALTER TABLE `me_collection_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `me_files`
--
ALTER TABLE `me_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `me_file_versions`
--
ALTER TABLE `me_file_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `me_file_version_content_languages`
--
ALTER TABLE `me_file_version_content_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `me_file_version_meta`
--
ALTER TABLE `me_file_version_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `me_file_version_publish_languages`
--
ALTER TABLE `me_file_version_publish_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `me_media`
--
ALTER TABLE `me_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `me_media_types`
--
ALTER TABLE `me_media_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phpcr_binarydata`
--
ALTER TABLE `phpcr_binarydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpcr_nodes`
--
ALTER TABLE `phpcr_nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `phpcr_type_childs`
--
ALTER TABLE `phpcr_type_childs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phpcr_type_nodes`
--
ALTER TABLE `phpcr_type_nodes`
  MODIFY `node_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pr_preview_links`
--
ALTER TABLE `pr_preview_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ro_routes`
--
ALTER TABLE `ro_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `se_access_controls`
--
ALTER TABLE `se_access_controls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `se_groups`
--
ALTER TABLE `se_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `se_permissions`
--
ALTER TABLE `se_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `se_roles`
--
ALTER TABLE `se_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `se_role_settings`
--
ALTER TABLE `se_role_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `se_security_types`
--
ALTER TABLE `se_security_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `se_users`
--
ALTER TABLE `se_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `se_user_groups`
--
ALTER TABLE `se_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `se_user_roles`
--
ALTER TABLE `se_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `se_user_two_factors`
--
ALTER TABLE `se_user_two_factors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ta_tags`
--
ALTER TABLE `ta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tr_trash_items`
--
ALTER TABLE `tr_trash_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tr_trash_item_translations`
--
ALTER TABLE `tr_trash_item_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `we_analytics`
--
ALTER TABLE `we_analytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `we_domains`
--
ALTER TABLE `we_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ac_activities`
--
ALTER TABLE `ac_activities`
  ADD CONSTRAINT `FK_3EE015D064B64DCC` FOREIGN KEY (`userId`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ca_categories`
--
ALTER TABLE `ca_categories`
  ADD CONSTRAINT `FK_3D85D78930D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3D85D78937A3C3B1` FOREIGN KEY (`idCategoriesParent`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3D85D789DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ca_category_meta`
--
ALTER TABLE `ca_category_meta`
  ADD CONSTRAINT `FK_2575BBB0B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ca_category_translations`
--
ALTER TABLE `ca_category_translations`
  ADD CONSTRAINT `FK_5DCED5E330D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5DCED5E3B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5DCED5E3DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ca_category_translation_keywords`
--
ALTER TABLE `ca_category_translation_keywords`
  ADD CONSTRAINT `FK_D15FBE3717CA14DA` FOREIGN KEY (`idCategoryTranslations`) REFERENCES `ca_category_translations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D15FBE37F9FC9F05` FOREIGN KEY (`idKeywords`) REFERENCES `ca_keywords` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ca_category_translation_medias`
--
ALTER TABLE `ca_category_translation_medias`
  ADD CONSTRAINT `FK_39FC41BA17CA14DA` FOREIGN KEY (`idCategoryTranslations`) REFERENCES `ca_category_translations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_39FC41BA7DE8E211` FOREIGN KEY (`idMedia`) REFERENCES `me_media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ca_keywords`
--
ALTER TABLE `ca_keywords`
  ADD CONSTRAINT `FK_FE02CA0B30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_FE02CA0BDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `co_accounts`
--
ALTER TABLE `co_accounts`
  ADD CONSTRAINT `FK_805CD14A30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14A6D4A8651` FOREIGN KEY (`idContactsMain`) REFERENCES `co_contacts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14AC9171171` FOREIGN KEY (`idAccountsParent`) REFERENCES `co_accounts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14ADBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14AE48E9A13` FOREIGN KEY (`logo`) REFERENCES `me_media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `co_account_addresses`
--
ALTER TABLE `co_account_addresses`
  ADD CONSTRAINT `FK_4165FE4893205E40` FOREIGN KEY (`idAddresses`) REFERENCES `co_addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4165FE48996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_bank_accounts`
--
ALTER TABLE `co_account_bank_accounts`
  ADD CONSTRAINT `FK_C873A53237FCD1D8` FOREIGN KEY (`idBankAccounts`) REFERENCES `co_bank_account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C873A532996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_categories`
--
ALTER TABLE `co_account_categories`
  ADD CONSTRAINT `FK_B60E9510996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B60E9510B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_contacts`
--
ALTER TABLE `co_account_contacts`
  ADD CONSTRAINT `FK_28C6CA0E2A75CE2A` FOREIGN KEY (`idPositions`) REFERENCES `co_positions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_28C6CA0E60E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_28C6CA0E996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_emails`
--
ALTER TABLE `co_account_emails`
  ADD CONSTRAINT `FK_3E246FC32F9040C8` FOREIGN KEY (`idEmails`) REFERENCES `co_emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3E246FC3996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_faxes`
--
ALTER TABLE `co_account_faxes`
  ADD CONSTRAINT `FK_7A4E77DC996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7A4E77DCCF6A2007` FOREIGN KEY (`idFaxes`) REFERENCES `co_faxes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_medias`
--
ALTER TABLE `co_account_medias`
  ADD CONSTRAINT `FK_6077281071C3071B` FOREIGN KEY (`idMedias`) REFERENCES `me_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_60772810996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_notes`
--
ALTER TABLE `co_account_notes`
  ADD CONSTRAINT `FK_A3FBB24A16DFE591` FOREIGN KEY (`idNotes`) REFERENCES `co_notes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A3FBB24A996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_phones`
--
ALTER TABLE `co_account_phones`
  ADD CONSTRAINT `FK_918DA9648039866F` FOREIGN KEY (`idPhones`) REFERENCES `co_phones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_918DA964996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_social_media_profiles`
--
ALTER TABLE `co_account_social_media_profiles`
  ADD CONSTRAINT `FK_E06F75F5573F8344` FOREIGN KEY (`idSocialMediaProfiles`) REFERENCES `co_social_media_profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E06F75F5996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_tags`
--
ALTER TABLE `co_account_tags`
  ADD CONSTRAINT `FK_E8D920051C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E8D92005996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_account_urls`
--
ALTER TABLE `co_account_urls`
  ADD CONSTRAINT `FK_ADF183825969693F` FOREIGN KEY (`idUrls`) REFERENCES `co_urls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ADF18382996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_addresses`
--
ALTER TABLE `co_addresses`
  ADD CONSTRAINT `FK_26E9A6142A37021A` FOREIGN KEY (`idAdressTypes`) REFERENCES `co_address_types` (`id`);

--
-- Constraints for table `co_contacts`
--
ALTER TABLE `co_contacts`
  ADD CONSTRAINT `FK_79D45A951677722F` FOREIGN KEY (`avatar`) REFERENCES `me_media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A9530D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A95A254E939` FOREIGN KEY (`idTitles`) REFERENCES `co_contact_titles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A95DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `co_contact_addresses`
--
ALTER TABLE `co_contact_addresses`
  ADD CONSTRAINT `FK_DEE056860E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE056893205E40` FOREIGN KEY (`idAddresses`) REFERENCES `co_addresses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_bank_accounts`
--
ALTER TABLE `co_contact_bank_accounts`
  ADD CONSTRAINT `FK_76CDDA0637FCD1D8` FOREIGN KEY (`idBankAccounts`) REFERENCES `co_bank_account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_76CDDA0660E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_categories`
--
ALTER TABLE `co_contact_categories`
  ADD CONSTRAINT `FK_8D2C3E2360E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8D2C3E23B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_emails`
--
ALTER TABLE `co_contact_emails`
  ADD CONSTRAINT `FK_898296312F9040C8` FOREIGN KEY (`idEmails`) REFERENCES `co_emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8982963160E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_faxes`
--
ALTER TABLE `co_contact_faxes`
  ADD CONSTRAINT `FK_61EBBEA260E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_61EBBEA2CF6A2007` FOREIGN KEY (`idFaxes`) REFERENCES `co_faxes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_locales`
--
ALTER TABLE `co_contact_locales`
  ADD CONSTRAINT `FK_31E5672760E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Constraints for table `co_contact_medias`
--
ALTER TABLE `co_contact_medias`
  ADD CONSTRAINT `FK_D7D1D1E260E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D7D1D1E271C3071B` FOREIGN KEY (`idMedias`) REFERENCES `me_media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_notes`
--
ALTER TABLE `co_contact_notes`
  ADD CONSTRAINT `FK_B85E7B3416DFE591` FOREIGN KEY (`idNotes`) REFERENCES `co_notes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B85E7B3460E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_phones`
--
ALTER TABLE `co_contact_phones`
  ADD CONSTRAINT `FK_262B509660E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_262B50968039866F` FOREIGN KEY (`idPhones`) REFERENCES `co_phones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_social_media_profiles`
--
ALTER TABLE `co_contact_social_media_profiles`
  ADD CONSTRAINT `FK_74FF4CC0573F8344` FOREIGN KEY (`idSocialMediaProfiles`) REFERENCES `co_social_media_profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_74FF4CC060E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_tags`
--
ALTER TABLE `co_contact_tags`
  ADD CONSTRAINT `FK_4CB525501C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4CB5255060E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_contact_urls`
--
ALTER TABLE `co_contact_urls`
  ADD CONSTRAINT `FK_99D86D75969693F` FOREIGN KEY (`idUrls`) REFERENCES `co_urls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_99D86D760E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `co_emails`
--
ALTER TABLE `co_emails`
  ADD CONSTRAINT `FK_A2F2CB77D816E840` FOREIGN KEY (`idEmailTypes`) REFERENCES `co_email_types` (`id`);

--
-- Constraints for table `co_faxes`
--
ALTER TABLE `co_faxes`
  ADD CONSTRAINT `FK_A5EC6A18B466C5DA` FOREIGN KEY (`idFaxTypes`) REFERENCES `co_fax_types` (`id`);

--
-- Constraints for table `co_phones`
--
ALTER TABLE `co_phones`
  ADD CONSTRAINT `FK_D5B0DD0A4249AD7` FOREIGN KEY (`idPhoneTypes`) REFERENCES `co_phone_types` (`id`);

--
-- Constraints for table `co_social_media_profiles`
--
ALTER TABLE `co_social_media_profiles`
  ADD CONSTRAINT `FK_DF585BFBB5BEA95F` FOREIGN KEY (`idSocialMediaTypes`) REFERENCES `co_social_media_profile_types` (`id`);

--
-- Constraints for table `co_urls`
--
ALTER TABLE `co_urls`
  ADD CONSTRAINT `FK_6F03842E882335CC` FOREIGN KEY (`idUrlTypes`) REFERENCES `co_url_types` (`id`);

--
-- Constraints for table `fo_dynamics`
--
ALTER TABLE `fo_dynamics`
  ADD CONSTRAINT `FK_EC8AF03030D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_EC8AF0309E50CC11` FOREIGN KEY (`formId`) REFERENCES `fo_forms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_EC8AF030DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `fo_form_fields`
--
ALTER TABLE `fo_form_fields`
  ADD CONSTRAINT `FK_D544F184EAFB58EA` FOREIGN KEY (`idForms`) REFERENCES `fo_forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fo_form_field_translations`
--
ALTER TABLE `fo_form_field_translations`
  ADD CONSTRAINT `FK_D3E6716F2C2B00B` FOREIGN KEY (`idFormFields`) REFERENCES `fo_form_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fo_form_translations`
--
ALTER TABLE `fo_form_translations`
  ADD CONSTRAINT `FK_8BAF12FF30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BAF12FFDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BAF12FFEAFB58EA` FOREIGN KEY (`idForms`) REFERENCES `fo_forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fo_form_translation_receivers`
--
ALTER TABLE `fo_form_translation_receivers`
  ADD CONSTRAINT `FK_E57BDF29F4EA7C89` FOREIGN KEY (`idFormTranslations`) REFERENCES `fo_form_translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `me_collections`
--
ALTER TABLE `me_collections`
  ADD CONSTRAINT `FK_F0D488730D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887A4F2DCF8` FOREIGN KEY (`idCollectionsParent`) REFERENCES `me_collections` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887CFA3F467` FOREIGN KEY (`idCollectionsMetaDefault`) REFERENCES `me_collection_meta` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F0D4887DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887E67924D6` FOREIGN KEY (`idCollectionTypes`) REFERENCES `me_collection_types` (`id`);

--
-- Constraints for table `me_collection_meta`
--
ALTER TABLE `me_collection_meta`
  ADD CONSTRAINT `FK_F8D5E71693782C96` FOREIGN KEY (`idCollections`) REFERENCES `me_collections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `me_files`
--
ALTER TABLE `me_files`
  ADD CONSTRAINT `FK_CA8D042730D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CA8D04277DE8E211` FOREIGN KEY (`idMedia`) REFERENCES `me_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CA8D0427DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `me_file_versions`
--
ALTER TABLE `me_file_versions`
  ADD CONSTRAINT `FK_7B6E894511F10344` FOREIGN KEY (`idFiles`) REFERENCES `me_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7B6E894530D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7B6E89456B801096` FOREIGN KEY (`idFileVersionsMetaDefault`) REFERENCES `me_file_version_meta` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7B6E8945DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `me_file_version_categories`
--
ALTER TABLE `me_file_version_categories`
  ADD CONSTRAINT `FK_2F1E17D0911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2F1E17D0B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `me_file_version_content_languages`
--
ALTER TABLE `me_file_version_content_languages`
  ADD CONSTRAINT `FK_F3FD652C911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `me_file_version_meta`
--
ALTER TABLE `me_file_version_meta`
  ADD CONSTRAINT `FK_AD44B0AD911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `me_file_version_publish_languages`
--
ALTER TABLE `me_file_version_publish_languages`
  ADD CONSTRAINT `FK_195DAB3C911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `me_file_version_tags`
--
ALTER TABLE `me_file_version_tags`
  ADD CONSTRAINT `FK_150A30BE1C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_150A30BE911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `me_format_options`
--
ALTER TABLE `me_format_options`
  ADD CONSTRAINT `FK_6D25443B31852B63` FOREIGN KEY (`fileVersion`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `me_media`
--
ALTER TABLE `me_media`
  ADD CONSTRAINT `FK_A694E57230D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A694E57284671716` FOREIGN KEY (`idMediaTypes`) REFERENCES `me_media_types` (`id`),
  ADD CONSTRAINT `FK_A694E57293782C96` FOREIGN KEY (`idCollections`) REFERENCES `me_collections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A694E572D1EB44DE` FOREIGN KEY (`idPreviewImage`) REFERENCES `me_media` (`id`),
  ADD CONSTRAINT `FK_A694E572DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ro_routes`
--
ALTER TABLE `ro_routes`
  ADD CONSTRAINT `FK_671DB7A4158E0B66` FOREIGN KEY (`target_id`) REFERENCES `ro_routes` (`id`),
  ADD CONSTRAINT `FK_671DB7A430D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_671DB7A4DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `se_access_controls`
--
ALTER TABLE `se_access_controls`
  ADD CONSTRAINT `FK_C526DC52A1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `se_groups`
--
ALTER TABLE `se_groups`
  ADD CONSTRAINT `FK_231E44EC30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_231E44ECBF274AB0` FOREIGN KEY (`idGroupsParent`) REFERENCES `se_groups` (`id`),
  ADD CONSTRAINT `FK_231E44ECDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `se_group_roles`
--
ALTER TABLE `se_group_roles`
  ADD CONSTRAINT `FK_9713F725937C91EA` FOREIGN KEY (`idGroups`) REFERENCES `se_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9713F725A1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `se_permissions`
--
ALTER TABLE `se_permissions`
  ADD CONSTRAINT `FK_5CEC3EEAA1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `se_roles`
--
ALTER TABLE `se_roles`
  ADD CONSTRAINT `FK_13B749A030D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_13B749A0D02106C0` FOREIGN KEY (`idSecurityTypes`) REFERENCES `se_security_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_13B749A0DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `se_role_settings`
--
ALTER TABLE `se_role_settings`
  ADD CONSTRAINT `FK_DAD1C8CBB8C2FD88` FOREIGN KEY (`roleId`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `se_users`
--
ALTER TABLE `se_users`
  ADD CONSTRAINT `FK_B10AC28E30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B10AC28E60E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B10AC28EDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `se_user_groups`
--
ALTER TABLE `se_user_groups`
  ADD CONSTRAINT `FK_E43ED0C8347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E43ED0C8937C91EA` FOREIGN KEY (`idGroups`) REFERENCES `se_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `se_user_roles`
--
ALTER TABLE `se_user_roles`
  ADD CONSTRAINT `FK_E48BD9DB347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E48BD9DBA1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `se_user_settings`
--
ALTER TABLE `se_user_settings`
  ADD CONSTRAINT `FK_108FCAFA347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `se_user_two_factors`
--
ALTER TABLE `se_user_two_factors`
  ADD CONSTRAINT `FK_732E8321347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ta_tags`
--
ALTER TABLE `ta_tags`
  ADD CONSTRAINT `FK_B258E49930D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B258E499DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tr_trash_items`
--
ALTER TABLE `tr_trash_items`
  ADD CONSTRAINT `FK_102989B64B64DCC` FOREIGN KEY (`userId`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tr_trash_item_translations`
--
ALTER TABLE `tr_trash_item_translations`
  ADD CONSTRAINT `FK_8264DAF45C8D7CA` FOREIGN KEY (`trashItemId`) REFERENCES `tr_trash_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `we_analytics_domains`
--
ALTER TABLE `we_analytics_domains`
  ADD CONSTRAINT `FK_F9323B6EA7A91E0B` FOREIGN KEY (`domain`) REFERENCES `we_domains` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F9323B6EEAC2E688` FOREIGN KEY (`analytics`) REFERENCES `we_analytics` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
