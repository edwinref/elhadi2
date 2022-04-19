-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 avr. 2022 à 16:27
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-04-01 23:04:57', '2022-04-01 23:04:57');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 7, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(57, 7, 'Nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'Prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'Photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'N_CIN', 'text', 'N CIN', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'N_de_DRPP', 'text', 'N De DRPP', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'Date_de_recrutement', 'date', 'Date De Recrutement', 0, 1, 1, 1, 1, 1, '{}', 7),
(63, 7, 'Telephone', 'number', 'Telephone', 0, 1, 1, 1, 1, 1, '{}', 8),
(64, 7, 'Email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'Date_de_naissance', 'date', 'Date De Naissance', 0, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'Professeur_appartenant_a_ENSA', 'checkbox', 'Professeur Appartenant A ENSA', 0, 1, 1, 1, 1, 1, '{\"on\":\"interne\",\"off\":\"externe\",\"checked\":true}', 11),
(67, 7, 'specialite', 'text', 'Specialite', 0, 1, 1, 1, 1, 1, '{}', 12),
(68, 7, 'Dossier_scientifique', 'file', 'Dossier Scientifique', 0, 1, 1, 1, 1, 1, '{}', 16),
(69, 7, 'Dossier_pedarogique', 'file', 'Dossier Pedarogique', 0, 1, 1, 1, 1, 1, '{}', 17),
(70, 7, 'Dossier_administratif', 'file', 'Dossier Administratif', 0, 1, 1, 1, 1, 1, '{}', 18),
(71, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 20),
(72, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(94, 10, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(95, 10, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(96, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(97, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(98, 7, 'professeur_belongsto_specialite_relationship', 'relationship', 'specialites', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialite\",\"table\":\"specialites\",\"type\":\"belongsTo\",\"column\":\"specialite\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(107, 7, 'Structure_de_recherche', 'text', 'Structure De Recherche', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":true,\"showLatLngInput\":false}', 14),
(108, 7, 'Directeur_de_strucure_de_recherche', 'text', 'Directeur De Strucure De Recherche', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":true,\"showLatLngInput\":false}', 15),
(117, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(118, 7, 'professeur_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 21),
(119, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 20),
(156, 25, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(158, 25, 'dossier', 'file', 'Dossier', 0, 1, 1, 1, 1, 1, '{}', 3),
(159, 25, 'etat', 'select_dropdown', 'Etat', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"En Attente \",\"option2\":\"En Cours \",\"option3\":\"Valid\\u00e9 \",\"option4\":\"Refus\\u00e9\"}}', 4),
(161, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(162, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(163, 26, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(165, 26, 'dossier', 'file', 'Dossier', 0, 1, 1, 1, 1, 1, '{}', 3),
(166, 26, 'etat', 'select_dropdown', 'Etat', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"En Attente \",\"option2\":\"En Cours \",\"option3\":\"Valid\\u00e9 \",\"option4\":\"Refus\\u00e9\"}}', 4),
(168, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(169, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(170, 27, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(172, 27, 'dossier', 'file', 'Dossier', 0, 1, 1, 0, 1, 1, '{}', 3),
(173, 27, 'etat', 'select_dropdown', 'Etat', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"En Attente \",\"option2\":\"En Cours \",\"option3\":\"Valid\\u00e9 \",\"option4\":\"Refus\\u00e9\"}}', 4),
(175, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(176, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(190, 25, 'user_id', 'hidden', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 2),
(191, 26, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(192, 27, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 23:04:57', '2022-04-12 17:35:38'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(3, 'roles', 'roles', 'Role', 'Les roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 23:04:57', '2022-04-07 12:55:33'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(5, 'posts', 'posts', 'Post', 'Graphs', 'voyager-bar-chart', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 23:04:58', '2022-04-06 23:03:49'),
(6, 'pages', 'pages', 'Profile', 'Profiles', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-04-01 23:04:58', '2022-04-12 17:16:21'),
(7, 'professeurs', 'professeurs', 'Professeur', 'Professeurs', 'voyager-person', 'App\\Professeur', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"profs\"}', '2022-04-01 23:14:37', '2022-04-13 15:56:33'),
(10, 'specialites', 'specialites', 'Specialite', 'Specialites', 'voyager-news', 'App\\Specialite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-02 10:57:17', '2022-04-02 10:57:17'),
(25, 'dossier_administratifs', 'dossier-administratifs', 'Dossier Administratif', 'Dossier Administratifs', 'voyager-documentation', 'App\\DossierAdministratif', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-13 14:25:14', '2022-04-15 14:53:11'),
(26, 'dossier_pedarogiques', 'dossier-pedarogiques', 'Dossier Pedarogique', 'Dossier Pedarogiques', 'voyager-documentation', 'App\\DossierPedarogique', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-13 14:27:26', '2022-04-14 00:11:08'),
(27, 'dossier_scientifiques', 'dossier-scientifiques', 'Dossier Scientifique', 'Dossier Scientifiques', 'voyager-documentation', 'App\\DossierScientifique', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-13 14:30:43', '2022-04-14 00:10:51');

-- --------------------------------------------------------

--
-- Structure de la table `dossier_administratifs`
--

CREATE TABLE `dossier_administratifs` (
  `id` int(10) UNSIGNED NOT NULL,
  `dossier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'En Attente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossier_administratifs`
--

INSERT INTO `dossier_administratifs` (`id`, `dossier`, `etat`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '[{\"download_link\":\"dossier-administratifs\\\\April2022\\\\rHpadhpGEKOMGkvtNab0.txt\",\"original_name\":\"exempl3.txt\"}]', 'option2', '2022-04-17 03:44:00', '2022-04-17 03:55:32', 2);

-- --------------------------------------------------------

--
-- Structure de la table `dossier_pedarogiques`
--

CREATE TABLE `dossier_pedarogiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `dossier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'En Attente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossier_pedarogiques`
--

INSERT INTO `dossier_pedarogiques` (`id`, `dossier`, `etat`, `created_at`, `updated_at`, `user_id`) VALUES
(4, '[{\"download_link\":\"dossier-pedarogiques\\\\April2022\\\\0Tehv0TMRMaurGWowrxR.rar\",\"original_name\":\"exempl2.rar\"}]', 'option4', '2022-04-17 03:44:00', '2022-04-17 03:55:03', 2);

-- --------------------------------------------------------

--
-- Structure de la table `dossier_scientifiques`
--

CREATE TABLE `dossier_scientifiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `dossier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'En Attente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossier_scientifiques`
--

INSERT INTO `dossier_scientifiques` (`id`, `dossier`, `etat`, `created_at`, `updated_at`, `user_id`) VALUES
(41, '[{\"download_link\":\"dossier-scientifiques\\\\April2022\\\\6Vlb51hGtfO8DDSa28M0.rar\",\"original_name\":\"exempl1.rar\"}]', 'option1', '2022-04-17 03:44:00', '2022-04-17 03:54:45', 2);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-04-01 23:04:57', '2022-04-01 23:04:57');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'tableau de bord', '', '_self', 'voyager-boat', '#22a7f0', NULL, 1, '2022-04-01 23:04:57', '2022-04-15 17:10:54', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', '#22a7f0', NULL, 5, '2022-04-01 23:04:57', '2022-04-13 23:41:02', 'voyager.media.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', '#22a7f0', NULL, 10, '2022-04-01 23:04:57', '2022-04-13 23:26:25', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-04-01 23:04:57', '2022-04-12 18:40:08', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-04-01 23:04:57', '2022-04-12 18:40:08', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-04-01 23:04:57', '2022-04-12 18:40:08', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-04-01 23:04:57', '2022-04-12 18:40:08', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', '#22a7f0', NULL, 11, '2022-04-01 23:04:57', '2022-04-13 23:26:49', 'voyager.settings.index', 'null'),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 9, '2022-04-01 23:04:57', '2022-04-13 14:33:07', 'voyager.categories.index', NULL),
(12, 1, 'Graphs', '', '_self', 'voyager-bar-chart', '#22a7f0', NULL, 6, '2022-04-01 23:04:58', '2022-04-13 23:24:39', 'voyager.posts.index', 'null'),
(13, 1, 'pages', '', '_self', 'voyager-file-text', '#000000', NULL, 8, '2022-04-01 23:04:58', '2022-04-13 14:33:07', 'voyager.pages.index', 'null'),
(14, 1, 'Professeurs', '', '_self', 'voyager-group', '#22a7f0', NULL, 12, '2022-04-01 23:14:38', '2022-04-13 23:27:02', 'voyager.professeurs.index', 'null'),
(17, 1, 'Specialites', '', '_self', 'voyager-news', '#22a7f0', NULL, 13, '2022-04-02 10:57:17', '2022-04-13 23:27:20', 'voyager.specialites.index', 'null'),
(22, 1, 'Users', '', '_self', 'voyager-people', '#22a7f0', NULL, 4, '2022-04-09 14:02:50', '2022-04-13 23:24:13', 'voyager.users.index', 'null'),
(23, 1, 'Roles', '', '_self', 'voyager-lock', '#22a7f0', NULL, 2, '2022-04-09 14:02:50', '2022-04-13 23:23:46', 'voyager.roles.index', 'null'),
(26, 1, 'Profile', '/admin/profile', '_self', 'voyager-person', '#22a7f0', NULL, 3, '2022-04-12 18:42:03', '2022-04-13 23:24:05', NULL, ''),
(37, 1, 'Dossiers', '', '_self', 'voyager-folder', '#22a7f0', NULL, 7, '2022-04-13 14:14:56', '2022-04-13 23:24:52', NULL, ''),
(38, 1, 'Dossier Administratifs', '', '_self', 'voyager-documentation', '#ffffff', 37, 3, '2022-04-13 14:25:14', '2022-04-15 14:35:18', 'voyager.dossier-administratifs.index', 'null'),
(39, 1, 'Dossier Pedarogiques', '', '_self', 'voyager-documentation', '#ffffff', 37, 2, '2022-04-13 14:27:26', '2022-04-15 14:35:10', 'voyager.dossier-pedarogiques.index', 'null'),
(40, 1, 'Dossier Scientifiques', '', '_self', 'voyager-documentation', '#ffffff', 37, 1, '2022-04-13 14:30:43', '2022-04-15 14:34:55', 'voyager.dossier-scientifiques.index', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-04-01 23:04:58', '2022-04-01 23:04:58');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(2, 'browse_bread', NULL, '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(3, 'browse_database', NULL, '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(4, 'browse_media', NULL, '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(5, 'browse_compass', NULL, '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(6, 'browse_menus', 'menus', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(7, 'read_menus', 'menus', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(8, 'edit_menus', 'menus', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(9, 'add_menus', 'menus', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(10, 'delete_menus', 'menus', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(11, 'browse_roles', 'roles', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(12, 'read_roles', 'roles', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(13, 'edit_roles', 'roles', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(14, 'add_roles', 'roles', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(15, 'delete_roles', 'roles', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(16, 'browse_users', 'users', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(17, 'read_users', 'users', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(18, 'edit_users', 'users', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(19, 'add_users', 'users', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(20, 'delete_users', 'users', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(21, 'browse_settings', 'settings', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(22, 'read_settings', 'settings', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(23, 'edit_settings', 'settings', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(24, 'add_settings', 'settings', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(25, 'delete_settings', 'settings', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(26, 'browse_categories', 'categories', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(27, 'read_categories', 'categories', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(28, 'edit_categories', 'categories', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(29, 'add_categories', 'categories', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(30, 'delete_categories', 'categories', '2022-04-01 23:04:57', '2022-04-01 23:04:57'),
(31, 'browse_posts', 'posts', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(32, 'read_posts', 'posts', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(33, 'edit_posts', 'posts', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(34, 'add_posts', 'posts', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(35, 'delete_posts', 'posts', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(36, 'browse_pages', 'pages', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(37, 'read_pages', 'pages', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(38, 'edit_pages', 'pages', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(39, 'add_pages', 'pages', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(40, 'delete_pages', 'pages', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(41, 'browse_professeurs', 'professeurs', '2022-04-01 23:14:38', '2022-04-01 23:14:38'),
(42, 'read_professeurs', 'professeurs', '2022-04-01 23:14:38', '2022-04-01 23:14:38'),
(43, 'edit_professeurs', 'professeurs', '2022-04-01 23:14:38', '2022-04-01 23:14:38'),
(44, 'add_professeurs', 'professeurs', '2022-04-01 23:14:38', '2022-04-01 23:14:38'),
(45, 'delete_professeurs', 'professeurs', '2022-04-01 23:14:38', '2022-04-01 23:14:38'),
(56, 'browse_specialites', 'specialites', '2022-04-02 10:57:17', '2022-04-02 10:57:17'),
(57, 'read_specialites', 'specialites', '2022-04-02 10:57:17', '2022-04-02 10:57:17'),
(58, 'edit_specialites', 'specialites', '2022-04-02 10:57:17', '2022-04-02 10:57:17'),
(59, 'add_specialites', 'specialites', '2022-04-02 10:57:17', '2022-04-02 10:57:17'),
(60, 'delete_specialites', 'specialites', '2022-04-02 10:57:17', '2022-04-02 10:57:17'),
(126, 'browse_dossier_administratifs', 'dossier_administratifs', '2022-04-13 14:25:14', '2022-04-13 14:25:14'),
(127, 'read_dossier_administratifs', 'dossier_administratifs', '2022-04-13 14:25:14', '2022-04-13 14:25:14'),
(128, 'edit_dossier_administratifs', 'dossier_administratifs', '2022-04-13 14:25:14', '2022-04-13 14:25:14'),
(129, 'add_dossier_administratifs', 'dossier_administratifs', '2022-04-13 14:25:14', '2022-04-13 14:25:14'),
(130, 'delete_dossier_administratifs', 'dossier_administratifs', '2022-04-13 14:25:14', '2022-04-13 14:25:14'),
(131, 'browse_dossier_pedarogiques', 'dossier_pedarogiques', '2022-04-13 14:27:26', '2022-04-13 14:27:26'),
(132, 'read_dossier_pedarogiques', 'dossier_pedarogiques', '2022-04-13 14:27:26', '2022-04-13 14:27:26'),
(133, 'edit_dossier_pedarogiques', 'dossier_pedarogiques', '2022-04-13 14:27:26', '2022-04-13 14:27:26'),
(134, 'add_dossier_pedarogiques', 'dossier_pedarogiques', '2022-04-13 14:27:26', '2022-04-13 14:27:26'),
(135, 'delete_dossier_pedarogiques', 'dossier_pedarogiques', '2022-04-13 14:27:26', '2022-04-13 14:27:26'),
(136, 'browse_dossier_scientifiques', 'dossier_scientifiques', '2022-04-13 14:30:43', '2022-04-13 14:30:43'),
(137, 'read_dossier_scientifiques', 'dossier_scientifiques', '2022-04-13 14:30:43', '2022-04-13 14:30:43'),
(138, 'edit_dossier_scientifiques', 'dossier_scientifiques', '2022-04-13 14:30:43', '2022-04-13 14:30:43'),
(139, 'add_dossier_scientifiques', 'dossier_scientifiques', '2022-04-13 14:30:43', '2022-04-13 14:30:43'),
(140, 'delete_dossier_scientifiques', 'dossier_scientifiques', '2022-04-13 14:30:43', '2022-04-13 14:30:43');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 9),
(1, 10),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 9),
(17, 1),
(17, 9),
(18, 1),
(18, 9),
(19, 1),
(19, 9),
(20, 1),
(20, 9),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(31, 1),
(31, 9),
(32, 1),
(32, 9),
(33, 1),
(33, 9),
(34, 1),
(34, 9),
(35, 1),
(35, 9),
(41, 1),
(41, 2),
(41, 9),
(41, 10),
(42, 1),
(42, 2),
(42, 9),
(42, 10),
(43, 1),
(43, 2),
(43, 9),
(43, 10),
(44, 1),
(44, 2),
(44, 9),
(44, 10),
(45, 1),
(45, 9),
(56, 1),
(56, 9),
(57, 1),
(57, 9),
(58, 1),
(58, 9),
(59, 1),
(59, 9),
(60, 1),
(60, 9),
(126, 1),
(126, 2),
(126, 9),
(126, 10),
(127, 1),
(127, 2),
(127, 9),
(127, 10),
(128, 1),
(128, 9),
(128, 10),
(129, 1),
(129, 2),
(129, 9),
(129, 10),
(130, 1),
(130, 9),
(130, 10),
(131, 1),
(131, 2),
(131, 9),
(131, 10),
(132, 1),
(132, 2),
(132, 9),
(132, 10),
(133, 1),
(133, 9),
(133, 10),
(134, 1),
(134, 2),
(134, 9),
(134, 10),
(135, 1),
(135, 9),
(135, 10),
(136, 1),
(136, 2),
(136, 9),
(136, 10),
(137, 1),
(137, 2),
(137, 9),
(137, 10),
(138, 1),
(138, 9),
(138, 10),
(139, 1),
(139, 2),
(139, 9),
(139, 10),
(140, 1),
(140, 9),
(140, 10);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-04-01 23:04:58', '2022-04-01 23:04:58');

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `N_CIN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `N_de_DRPP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_de_recrutement` date DEFAULT NULL,
  `Telephone` int(11) DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_de_naissance` date DEFAULT NULL,
  `Professeur_appartenant_a_ENSA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dossier_scientifique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dossier_pedarogique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dossier_administratif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `specialite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Structure_de_recherche` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Directeur_de_strucure_de_recherche` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `professeurs`
--

INSERT INTO `professeurs` (`id`, `Nom`, `Prenom`, `Photo`, `N_CIN`, `N_de_DRPP`, `Date_de_recrutement`, `Telephone`, `Email`, `Date_de_naissance`, `Professeur_appartenant_a_ENSA`, `Dossier_scientifique`, `Dossier_pedarogique`, `Dossier_administratif`, `created_at`, `updated_at`, `specialite`, `Structure_de_recherche`, `Directeur_de_strucure_de_recherche`, `user_id`) VALUES
(25, 'elhadi', 'refki', 'professeurs\\April2022\\Xcoi2k4NS098p7aYNHgj.jpg', NULL, NULL, NULL, 661979920, 'elh@gmail.com', NULL, '1', '[{\"download_link\":\"professeurs\\\\April2022\\\\SPw7cxQAO7OdCVo8tpLj.txt\",\"original_name\":\"elhadirefki.txt\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\CMq4Yac2vMYHrRJhtkN6.txt\",\"original_name\":\"AZEQ.txt\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\fFC6ZcYnGgVeRhM5nuyY.txt\",\"original_name\":\"tp2q4.sql.txt\"}]', '2022-04-06 21:00:00', '2022-04-06 21:36:22', NULL, 'Laboratoire de Technologies de l’Information (LTI)', 'Mr. Hassan Ouahmane', NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '[{\"download_link\":\"professeurs\\\\April2022\\\\HSrkMyEb5ZaJzOwOi4To.txt\",\"original_name\":\"Nouveau document texte.txt\"}]', '[]', '[]', '2022-04-12 22:37:08', '2022-04-12 22:37:08', NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '[{\"download_link\":\"professeurs\\\\April2022\\\\fczI4557QJ8cdOjjGhK1.\",\"original_name\":\"toptraffic[1]\"}]', '[]', '[]', '2022-04-13 14:41:58', '2022-04-13 14:41:58', NULL, NULL, NULL, NULL),
(36, 'eraz', 'reaz', 'professeurs\\April2022\\zZ5HHJQ3BPK6z1qYzEqi.jpg', 'rzae', 'raze', '2001-01-15', 672035299, 'p@gmail.com', '2022-04-21', '1', '[]', '[]', '[]', '2022-05-15 14:17:00', '2022-04-15 15:17:37', '1', 'Laboratoire de Technologies de l’Information (LTI)', 'Mr. Hassan Ouahmane', NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '[]', '[]', '[]', '2022-07-15 14:24:00', '2022-04-15 15:37:48', NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '[{\"download_link\":\"professeurs\\\\April2022\\\\g7fClZP0dRuZyF7J5UTj.rar\",\"original_name\":\"exempl1.rar\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\v9iOAhvd4oliKJezqLgs.rar\",\"original_name\":\"exempl2.rar\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\F6hpuDNs7mMjAMvDkRDm.txt\",\"original_name\":\"exempl3.txt\"}]', '2022-04-15 15:26:20', '2022-04-15 15:26:20', NULL, NULL, NULL, NULL),
(39, 'eraz', 'reaz', NULL, '1234', '1234', '2022-04-06', 672035299, 'p@gmail.com', '2022-04-06', '1', '[]', '[]', '[]', '2022-04-15 15:37:33', '2022-04-15 15:37:33', '1', 'Laboratoire de Technologies de l’Information (LTI)', 'Mr. Hassan Ouahmane', NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '[{\"download_link\":\"professeurs\\\\April2022\\\\TLKC0uUd4RM5q4p32Dwr.rar\",\"original_name\":\"exempl1.rar\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\AOnh1LBPbccD4WGk9eXG.rar\",\"original_name\":\"exempl2.rar\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\w9ChZAjiDzrs2wziTGHM.txt\",\"original_name\":\"exempl3.txt\"}]', '2022-04-15 15:38:56', '2022-04-15 15:38:56', NULL, NULL, NULL, NULL),
(41, 'elhadi', 'refki', 'professeurs\\April2022\\HHPKmRiBBoPanMjAM92G.jpg', 'M12345', '1234', '2022-04-28', 661979920, 'elhadirefki2001@gmail.com', '2022-04-19', '1', '[{\"download_link\":\"professeurs\\\\April2022\\\\nWdlACJdVKuJG5uWTJXU.rar\",\"original_name\":\"exempl1.rar\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\cSswtLj8BudCk31XnLOH.rar\",\"original_name\":\"exempl2.rar\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\jINKSUsHcVYhoWfYbIdI.txt\",\"original_name\":\"exempl3.txt\"}]', '2022-04-15 17:59:07', '2022-04-15 17:59:07', '1', 'Laboratoire de Technologies de l’Information (LTI)', 'Mr. Hassan Ouahmane', NULL),
(42, 'elhadi', 'refki', NULL, 'M12345', '123456', '2022-04-22', 661979920, 'elhadirefki2003@gmail.com', '2001-01-01', '1', '[{\"download_link\":\"professeurs\\\\April2022\\\\XVF1dXXvqyhnC9y1zN43.rar\",\"original_name\":\"exempl1.rar\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\vwgRBPOTZRLe5ES6b2nm.rar\",\"original_name\":\"exempl2.rar\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\3rPZ7Pxv3JTszuz7QoD2.txt\",\"original_name\":\"exempl3.txt\"}]', '2022-04-17 03:53:35', '2022-04-17 03:53:35', '1', 'Laboratoire de Technologies de l’Information (LTI)', 'Mr. Hassan Ouahmane', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'adminSys', 'AdministratorSys', '2022-04-01 23:04:57', '2022-04-03 13:57:29'),
(2, 'Prof', 'Professeur', '2022-04-01 23:04:57', '2022-04-01 23:59:04'),
(3, 'superadmin', 'SuperAdministrator', '2022-04-02 09:37:41', '2022-04-02 09:37:41'),
(9, 'admin', 'Administrateur', '2022-04-03 13:56:38', '2022-04-03 13:56:38'),
(10, 'user', 'Normal User', '2022-04-06 01:36:28', '2022-04-06 01:36:28');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `specialites`
--

CREATE TABLE `specialites` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialites`
--

INSERT INTO `specialites` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'info', '2022-04-02 10:57:34', '2022-04-02 10:57:34');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-04-01 23:04:58', '2022-04-01 23:04:58'),
(31, 'data_rows', 'display_name', 56, 'en', 'Id', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(32, 'data_rows', 'display_name', 56, 'ar', 'Id', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(33, 'data_rows', 'display_name', 57, 'en', 'Nom', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(34, 'data_rows', 'display_name', 57, 'ar', 'Nom', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(35, 'data_rows', 'display_name', 58, 'en', 'Prenom', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(36, 'data_rows', 'display_name', 58, 'ar', 'Prenom', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(37, 'data_rows', 'display_name', 59, 'en', 'Photo', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(38, 'data_rows', 'display_name', 59, 'ar', 'Photo', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(39, 'data_rows', 'display_name', 60, 'en', 'N CIN', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(40, 'data_rows', 'display_name', 60, 'ar', 'N CIN', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(41, 'data_rows', 'display_name', 61, 'en', 'N De DRPP', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(42, 'data_rows', 'display_name', 61, 'ar', 'N De DRPP', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(43, 'data_rows', 'display_name', 62, 'en', 'Date De Recrutement', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(44, 'data_rows', 'display_name', 62, 'ar', 'Date De Recrutement', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(45, 'data_rows', 'display_name', 63, 'en', 'Telephone', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(46, 'data_rows', 'display_name', 63, 'ar', 'Telephone', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(47, 'data_rows', 'display_name', 64, 'en', 'Email', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(48, 'data_rows', 'display_name', 64, 'ar', 'Email', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(49, 'data_rows', 'display_name', 65, 'en', 'Date De Naissance', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(50, 'data_rows', 'display_name', 65, 'ar', 'Date De Naissance', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(51, 'data_rows', 'display_name', 66, 'en', 'Professeur Appartenant A ENSA', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(52, 'data_rows', 'display_name', 66, 'ar', 'Professeur Appartenant A ENSA', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(53, 'data_rows', 'display_name', 68, 'en', 'Dossier Scientifique', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(54, 'data_rows', 'display_name', 68, 'ar', 'Dossier Scientifique', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(55, 'data_rows', 'display_name', 69, 'en', 'Dossier Pedarogique', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(56, 'data_rows', 'display_name', 69, 'ar', 'Dossier Pedarogique', '2022-04-03 18:30:19', '2022-04-03 18:30:19'),
(57, 'data_rows', 'display_name', 70, 'en', 'Dossier Administratif', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(58, 'data_rows', 'display_name', 70, 'ar', 'Dossier Administratif', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(59, 'data_rows', 'display_name', 71, 'en', 'Created At', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(60, 'data_rows', 'display_name', 71, 'ar', 'Created At', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(61, 'data_rows', 'display_name', 72, 'en', 'Updated At', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(62, 'data_rows', 'display_name', 72, 'ar', 'Updated At', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(63, 'data_rows', 'display_name', 67, 'en', 'Specialite', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(64, 'data_rows', 'display_name', 67, 'ar', 'Specialite', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(65, 'data_rows', 'display_name', 98, 'en', 'specialites', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(66, 'data_rows', 'display_name', 98, 'ar', 'specialites', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(67, 'data_types', 'display_name_singular', 7, 'en', 'Professeur', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(68, 'data_types', 'display_name_singular', 7, 'ar', 'Professeur', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(69, 'data_types', 'display_name_plural', 7, 'en', 'Professeurs', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(70, 'data_types', 'display_name_plural', 7, 'ar', 'Professeurs', '2022-04-03 18:30:20', '2022-04-03 18:30:20'),
(71, 'data_rows', 'display_name', 109, 'en', 'Id', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(72, 'data_rows', 'display_name', 109, 'ar', 'Id', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(73, 'data_rows', 'display_name', 110, 'en', 'Nom', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(74, 'data_rows', 'display_name', 110, 'ar', 'Nom', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(75, 'data_rows', 'display_name', 111, 'en', 'Created At', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(76, 'data_rows', 'display_name', 111, 'ar', 'Created At', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(77, 'data_rows', 'display_name', 112, 'en', 'Updated At', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(78, 'data_rows', 'display_name', 112, 'ar', 'Updated At', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(79, 'data_types', 'display_name_singular', 13, 'en', 'Directeur Structure De Recherch', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(80, 'data_types', 'display_name_singular', 13, 'ar', 'Directeur Structure De Recherch', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(81, 'data_types', 'display_name_plural', 13, 'en', 'Directeur Structure De Recherches', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(82, 'data_types', 'display_name_plural', 13, 'ar', 'Directeur Structure De Recherches', '2022-04-03 18:36:04', '2022-04-03 18:36:04'),
(83, 'data_rows', 'display_name', 113, 'en', 'Id', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(84, 'data_rows', 'display_name', 113, 'ar', 'Id', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(85, 'data_rows', 'display_name', 114, 'en', 'Nom', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(86, 'data_rows', 'display_name', 114, 'ar', 'Nom', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(87, 'data_rows', 'display_name', 115, 'en', 'Created At', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(88, 'data_rows', 'display_name', 115, 'ar', 'Created At', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(89, 'data_rows', 'display_name', 116, 'en', 'Updated At', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(90, 'data_rows', 'display_name', 116, 'ar', 'Updated At', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(91, 'data_types', 'display_name_singular', 14, 'en', 'Structure De Recherch', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(92, 'data_types', 'display_name_singular', 14, 'ar', 'Structure De Recherch', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(93, 'data_types', 'display_name_plural', 14, 'en', 'Structure De Recherches', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(94, 'data_types', 'display_name_plural', 14, 'ar', 'Structure De Recherches', '2022-04-03 18:36:28', '2022-04-03 18:36:28'),
(95, 'menu_items', 'title', 40, 'da', 'Dossier Scientifiques', '2022-04-15 11:09:18', '2022-04-15 11:09:18'),
(96, 'menu_items', 'title', 23, 'da', 'Roles', '2022-04-15 12:17:25', '2022-04-15 12:17:25'),
(97, 'menu_items', 'title', 39, 'da', 'Dossier Pedarogiques', '2022-04-15 14:35:10', '2022-04-15 14:35:10'),
(98, 'menu_items', 'title', 38, 'da', 'Dossier Administratifs', '2022-04-15 14:35:18', '2022-04-15 14:35:18'),
(99, 'menu_items', 'title', 1, 'da', 'Dashboard', '2022-04-15 14:35:44', '2022-04-15 14:35:44'),
(100, 'data_rows', 'display_name', 156, 'da', 'Id', '2022-04-15 14:49:30', '2022-04-15 14:49:30'),
(101, 'data_rows', 'display_name', 158, 'da', 'Dossier', '2022-04-15 14:49:30', '2022-04-15 14:49:30'),
(102, 'data_rows', 'display_name', 159, 'da', 'Etat', '2022-04-15 14:49:30', '2022-04-15 14:49:30'),
(103, 'data_rows', 'display_name', 161, 'da', 'Created At', '2022-04-15 14:49:30', '2022-04-15 14:49:30'),
(104, 'data_rows', 'display_name', 162, 'da', 'Updated At', '2022-04-15 14:49:30', '2022-04-15 14:49:30'),
(105, 'data_rows', 'display_name', 190, 'da', 'User Id', '2022-04-15 14:49:30', '2022-04-15 14:49:30'),
(106, 'data_types', 'display_name_singular', 25, 'da', 'Dossier Administratif', '2022-04-15 14:49:30', '2022-04-15 14:49:30'),
(107, 'data_types', 'display_name_plural', 25, 'da', 'Dossier Administratifs', '2022-04-15 14:49:30', '2022-04-15 14:49:30');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'elh',
  `Telephone` int(11) DEFAULT 0,
  `N_CIN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `Date_de_naissance` date DEFAULT '2001-04-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `prenom`, `Telephone`, `N_CIN`, `Date_de_naissance`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\April2022\\KIUNzHb4LkN9UhBeMI8e.png', '2022-04-17 01:43:32', '$2y$10$jjvmIcmjUkuLxqON6dPUwuyRej4dFbPmeIz2pWeeLNIbB9XbROc.a', 'FfpfFPohYpmFiW8XB4tWaOyQv7edTNrPh06HMEUtHQ3X4F1uABtFqHDc6L0q', '{\"locale\":\"en\"}', '2022-04-01 23:04:57', '2022-04-17 01:43:32', 'Admin', 0, '-----', '0000-00-00'),
(2, 2, 'Prof', 'Prof@prof.com', 'users/default.png', NULL, '$2y$10$MzAGC57wPpgHsgzJIZXZK.0d7zy6E9rCS8DQQmsbRtyaJHN1wOMRW', NULL, '{\"locale\":\"fr\"}', '2022-04-01 23:59:53', '2022-04-01 23:59:53', 'prof1', 697992068, 'M1234567', NULL),
(3, 3, 'Elhadi', 'super@super.com', 'users\\April2022\\AULrJnTP8srE721kLtj4.jpg', NULL, '$2y$10$4yHDyZX7jV4oKIMG2kmDHeKmDz/NepM0COhUq2qplCZnrWMT6i4SS', 'i70eJmCJotBfdOB48tAgfDatlSobiwFExIFv1dQ76OTUaNSi6bjQtGXoi9DU', '{\"locale\":\"fr\"}', '2022-04-02 09:39:56', '2022-04-15 13:57:49', 'REFKI', 697992068, 'M123456', '2001-04-01'),
(35, 9, 'admin', 'admin1@admin.com', 'users\\April2022\\lhqjFnL0lczKA5Abd9L7.png', NULL, '$2y$10$qgxj2QNONzjGgYQfPXVIauu0kij0m70JHYQo1D5GDNao/y0IsPzau', NULL, '{\"locale\":\"fr\"}', '2022-04-03 13:58:24', '2022-04-13 14:03:07', '', NULL, NULL, NULL),
(81, 2, 'refki', 'elhadirefki2001@gmail.com', 'users/default.png', '2022-04-16 23:08:21', '$2y$10$JQiw77t3Y94Ldq3qwGCQf.FZecOfTxLY9FUSnVnUNhj7TUwKWIWcO', NULL, NULL, '2022-04-16 23:07:37', '2022-04-16 23:08:21', 'elh', 0, 'default', '2001-04-01'),
(82, 2, 'piw', 'piwpiw@gmail.com', 'users/default.png', NULL, '$2y$10$UUhNKr3vSHBtwwV7uO6jgOUAlyYv1BnopOXflHFuVvDgK1xo/TPzC', NULL, NULL, '2022-04-17 02:09:56', '2022-04-17 02:09:56', 'elh', 0, 'default', '2001-04-01'),
(83, 2, 'refki', 'elhadirefki2002@gmail.com', 'users/default.png', '2022-04-17 02:16:04', '$2y$10$i6mbRa8FVg0mLkVkNMJdRukEq7UO6sq5CoKNMEamX0htxMx2hpMBG', NULL, NULL, '2022-04-17 02:14:00', '2022-04-17 02:16:04', 'elh', 0, 'default', '2001-04-01'),
(84, 2, 'refki', 'elhadirefki2003@gmail.com', 'users/default.png', '2022-04-17 03:51:41', '$2y$10$iatMcyQXGPne064YAAaMUOvu3Jyfl.pwvy5x3bcPixre6U/kXZUT6', NULL, NULL, '2022-04-17 03:51:16', '2022-04-17 03:51:41', 'elh', 0, 'default', '2001-04-01'),
(85, 2, 'Daisha Rosenbaum', 'uwatsica@example.net', 'users/default.png', '2022-04-19 07:23:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rk9Gc4ivDM', NULL, '2022-04-19 07:23:38', '2022-04-19 07:23:38', 'elh', 0, 'default', '2001-04-01'),
(86, 2, 'Angel Kovacek', 'bradtke.bridie@example.org', 'users/default.png', '2022-04-19 07:23:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3rf34hYdLp', NULL, '2022-04-19 07:23:38', '2022-04-19 07:23:38', 'elh', 0, 'default', '2001-04-01'),
(87, 2, 'Jimmie Renner DVM', 'ywaters@example.com', 'users/default.png', '2022-04-19 07:23:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0MhgOxTx7I', NULL, '2022-04-19 07:23:38', '2022-04-19 07:23:38', 'elh', 0, 'default', '2001-04-01'),
(88, 2, 'Dr. Ryleigh Harris', 'dfisher@example.org', 'users/default.png', '2022-04-19 07:23:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'trXcsQ9TlD', NULL, '2022-04-19 07:23:38', '2022-04-19 07:23:38', 'elh', 0, 'default', '2001-04-01'),
(89, 2, 'Eugene Vandervort', 'qcormier@example.net', 'users/default.png', '2022-04-19 07:23:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '90he04skiq', NULL, '2022-04-19 07:23:38', '2022-04-19 07:23:38', 'elh', 0, 'default', '2001-04-01');

-- --------------------------------------------------------

--
-- Structure de la table `users2`
--

CREATE TABLE `users2` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2),
(3, 3),
(35, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `dossier_administratifs`
--
ALTER TABLE `dossier_administratifs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossier_pedarogiques`
--
ALTER TABLE `dossier_pedarogiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossier_scientifiques`
--
ALTER TABLE `dossier_scientifiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `specialites`
--
ALTER TABLE `specialites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `dossier_administratifs`
--
ALTER TABLE `dossier_administratifs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `dossier_pedarogiques`
--
ALTER TABLE `dossier_pedarogiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `dossier_scientifiques`
--
ALTER TABLE `dossier_scientifiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `specialites`
--
ALTER TABLE `specialites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
