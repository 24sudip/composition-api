-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2025 at 05:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `composition_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_bn` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_en`, `name_bn`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'eum9_en', 'eum9_bn', 'eum9', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(2, 'totam5_en', 'totam5_bn', 'totam5', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(3, 'iusto6_en', 'iusto6_bn', 'iusto6', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(4, 'sequi6_en', 'sequi6_bn', 'sequi6', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(5, 'qui2_en', 'qui2_bn', 'qui2', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(6, 'autem9_en', 'autem9_bn', 'autem9', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(7, 'omnis8_en', 'omnis8_bn', 'omnis8', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(8, 'repudiandae4_en', 'repudiandae4_bn', 'repudiandae4', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(9, 'dolore10_en', 'dolore10_bn', 'dolore10', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(10, 'pariatur5_en', 'pariatur5_bn', 'pariatur5', '2025-04-04 01:00:54', '2025-04-04 01:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_04_043420_create_categories_table', 2),
(5, '2025_04_04_043522_create_tags_table', 2),
(6, '2025_04_04_043612_create_posts_table', 2),
(7, '2025_04_04_043714_create_comments_table', 2),
(8, '2025_04_04_043957_create_post_tag_table', 2),
(9, '2025_04_05_044830_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_bn` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body_en` longtext NOT NULL,
  `body_bn` longtext NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title_en`, `title_bn`, `slug`, `body_en`, `body_bn`, `photo`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Dolorum laboriosam harum eveniet autem officiis dolores et a.13_en', 'Dolorum laboriosam harum eveniet autem officiis dolores et a.13_bn', 'dolorum-laboriosam-harum-eveniet-autem-officiis-dolores-et-a13', 'Voluptatem eaque exercitationem sapiente excepturi facere culpa. Perspiciatis commodi quo mollitia provident aspernatur. Qui expedita blanditiis iure in._en', 'Voluptatem eaque exercitationem sapiente excepturi facere culpa. Perspiciatis commodi quo mollitia provident aspernatur. Qui expedita blanditiis iure in._bn', 'https://via.placeholder.com/1040x680.png/0066ee?text=debitis', 6, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(2, 'Illo qui illum itaque sit possimus dolores maiores.6_en', 'Illo qui illum itaque sit possimus dolores maiores.6_bn', 'illo-qui-illum-itaque-sit-possimus-dolores-maiores6', 'Aut ut aperiam quas numquam. Deserunt reprehenderit natus molestiae est. Est ipsa expedita dolorem ea fuga occaecati aut._en', 'Aut ut aperiam quas numquam. Deserunt reprehenderit natus molestiae est. Est ipsa expedita dolorem ea fuga occaecati aut._bn', 'https://via.placeholder.com/1040x680.png/00cc44?text=molestiae', 10, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(3, 'Labore sint ex consectetur laborum quasi eos libero.20_en', 'Labore sint ex consectetur laborum quasi eos libero.20_bn', 'labore-sint-ex-consectetur-laborum-quasi-eos-libero20', 'Quidem molestiae culpa perferendis nostrum illo. Id minima iste error dolores. Sunt expedita quo et possimus consequuntur ex vel. Quos porro neque adipisci qui iste._en', 'Quidem molestiae culpa perferendis nostrum illo. Id minima iste error dolores. Sunt expedita quo et possimus consequuntur ex vel. Quos porro neque adipisci qui iste._bn', 'https://via.placeholder.com/1040x680.png/000077?text=est', 1, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(4, 'Aut temporibus ullam nostrum dolore.10_en', 'Aut temporibus ullam nostrum dolore.10_bn', 'aut-temporibus-ullam-nostrum-dolore10', 'Sit suscipit voluptatem neque. Sapiente ipsa et omnis doloremque dolores et totam iusto. Hic accusantium et velit nostrum. Incidunt enim quam dolor cumque aliquid._en', 'Sit suscipit voluptatem neque. Sapiente ipsa et omnis doloremque dolores et totam iusto. Hic accusantium et velit nostrum. Incidunt enim quam dolor cumque aliquid._bn', 'https://via.placeholder.com/1040x680.png/000099?text=magni', 1, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(5, 'Et nemo iusto minus aliquid excepturi corrupti pariatur.10_en', 'Et nemo iusto minus aliquid excepturi corrupti pariatur.10_bn', 'et-nemo-iusto-minus-aliquid-excepturi-corrupti-pariatur10', 'Esse amet praesentium et similique voluptas. Quod veniam dolores magnam minima quis esse. Autem est qui hic iure. Reprehenderit est at mollitia sed qui._en', 'Esse amet praesentium et similique voluptas. Quod veniam dolores magnam minima quis esse. Autem est qui hic iure. Reprehenderit est at mollitia sed qui._bn', 'https://via.placeholder.com/1040x680.png/006633?text=cupiditate', 3, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(6, 'Sunt modi deleniti sunt eius sapiente.8_en', 'Sunt modi deleniti sunt eius sapiente.8_bn', 'sunt-modi-deleniti-sunt-eius-sapiente8', 'Quia eaque a dolor officia. Vitae aut consequatur fuga accusantium molestias. Sed laborum in ex ex. Voluptatum nulla aut quae officiis et neque maxime._en', 'Quia eaque a dolor officia. Vitae aut consequatur fuga accusantium molestias. Sed laborum in ex ex. Voluptatum nulla aut quae officiis et neque maxime._bn', 'https://via.placeholder.com/1040x680.png/00ddee?text=ratione', 7, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(7, 'Quam adipisci sunt est dolores aut.6_en', 'Quam adipisci sunt est dolores aut.6_bn', 'quam-adipisci-sunt-est-dolores-aut6', 'Explicabo reiciendis sed possimus. Vel dolorem architecto blanditiis possimus maiores alias ut. Qui maiores numquam molestiae magnam consequatur. Quos omnis pariatur aspernatur deserunt asperiores. Quod quo eos saepe et omnis aut officiis._en', 'Explicabo reiciendis sed possimus. Vel dolorem architecto blanditiis possimus maiores alias ut. Qui maiores numquam molestiae magnam consequatur. Quos omnis pariatur aspernatur deserunt asperiores. Quod quo eos saepe et omnis aut officiis._bn', 'https://via.placeholder.com/1040x680.png/005599?text=beatae', 3, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(8, 'Odit laborum aut illo consequatur perferendis.18_en', 'Odit laborum aut illo consequatur perferendis.18_bn', 'odit-laborum-aut-illo-consequatur-perferendis18', 'Odit sunt voluptatibus est harum aut quis repudiandae optio. Temporibus minima saepe impedit est. Quaerat ut harum dignissimos ipsum voluptas. Ea dolor dolorem asperiores ea nisi aut._en', 'Odit sunt voluptatibus est harum aut quis repudiandae optio. Temporibus minima saepe impedit est. Quaerat ut harum dignissimos ipsum voluptas. Ea dolor dolorem asperiores ea nisi aut._bn', 'https://via.placeholder.com/1040x680.png/007744?text=occaecati', 5, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(9, 'Eos soluta dolores reprehenderit nisi.19_en', 'Eos soluta dolores reprehenderit nisi.19_bn', 'eos-soluta-dolores-reprehenderit-nisi19', 'Consequatur excepturi officia sint nostrum. Hic ut dolor perspiciatis. Et repudiandae iusto quisquam dignissimos._en', 'Consequatur excepturi officia sint nostrum. Hic ut dolor perspiciatis. Et repudiandae iusto quisquam dignissimos._bn', 'https://via.placeholder.com/1040x680.png/002266?text=sed', 2, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(10, 'Tempore molestiae enim ut quia.3_en', 'Tempore molestiae enim ut quia.3_bn', 'tempore-molestiae-enim-ut-quia3', 'Veritatis quasi est aspernatur officia laboriosam iusto labore. Et veniam quibusdam nisi iste modi. Unde blanditiis id sequi. Nihil dolores est et fuga quo voluptatem blanditiis._en', 'Veritatis quasi est aspernatur officia laboriosam iusto labore. Et veniam quibusdam nisi iste modi. Unde blanditiis id sequi. Nihil dolores est et fuga quo voluptatem blanditiis._bn', 'https://via.placeholder.com/1040x680.png/00cc88?text=non', 3, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(11, 'Culpa nihil tempora quo alias.3_en', 'Culpa nihil tempora quo alias.3_bn', 'culpa-nihil-tempora-quo-alias3', 'Est reiciendis saepe accusantium qui. Quam est distinctio atque aut aut porro natus. Animi ex ipsam est voluptatum aut reprehenderit._en', 'Est reiciendis saepe accusantium qui. Quam est distinctio atque aut aut porro natus. Animi ex ipsam est voluptatum aut reprehenderit._bn', 'https://via.placeholder.com/1040x680.png/0066dd?text=aut', 9, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(12, 'Laborum nesciunt culpa rerum tempore ducimus aliquid nobis asperiores.13_en', 'Laborum nesciunt culpa rerum tempore ducimus aliquid nobis asperiores.13_bn', 'laborum-nesciunt-culpa-rerum-tempore-ducimus-aliquid-nobis-asperiores13', 'Corrupti aut enim ea enim. Dolor quibusdam nemo saepe suscipit quibusdam architecto id sint. Quos animi sunt et doloremque excepturi sint. Libero similique velit sunt sapiente maxime omnis. Consectetur commodi et ea voluptas ut nisi._en', 'Corrupti aut enim ea enim. Dolor quibusdam nemo saepe suscipit quibusdam architecto id sint. Quos animi sunt et doloremque excepturi sint. Libero similique velit sunt sapiente maxime omnis. Consectetur commodi et ea voluptas ut nisi._bn', 'https://via.placeholder.com/1040x680.png/00aa88?text=officiis', 6, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(13, 'Fuga ut magni dolorum laboriosam adipisci neque.10_en', 'Fuga ut magni dolorum laboriosam adipisci neque.10_bn', 'fuga-ut-magni-dolorum-laboriosam-adipisci-neque10', 'Explicabo est voluptatem iure sed et. Quaerat et repudiandae occaecati quibusdam consequatur perspiciatis dolorem. Corporis possimus ut voluptas praesentium autem occaecati._en', 'Explicabo est voluptatem iure sed et. Quaerat et repudiandae occaecati quibusdam consequatur perspiciatis dolorem. Corporis possimus ut voluptas praesentium autem occaecati._bn', 'https://via.placeholder.com/1040x680.png/0011aa?text=sint', 7, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(14, 'Debitis error est accusamus amet.7_en', 'Debitis error est accusamus amet.7_bn', 'debitis-error-est-accusamus-amet7', 'Dicta magni quos non cumque repellendus quia rerum nesciunt. Nulla voluptatem repellendus facilis odit tempora. Perspiciatis nobis ea ut tenetur dolore. Corrupti possimus dolor facere nisi fugiat._en', 'Dicta magni quos non cumque repellendus quia rerum nesciunt. Nulla voluptatem repellendus facilis odit tempora. Perspiciatis nobis ea ut tenetur dolore. Corrupti possimus dolor facere nisi fugiat._bn', 'https://via.placeholder.com/1040x680.png/003399?text=consectetur', 9, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(15, 'Consequatur maxime sed explicabo ut ea architecto.10_en', 'Consequatur maxime sed explicabo ut ea architecto.10_bn', 'consequatur-maxime-sed-explicabo-ut-ea-architecto10', 'Sunt qui excepturi accusantium. Ut alias impedit quia fugit enim aperiam asperiores._en', 'Sunt qui excepturi accusantium. Ut alias impedit quia fugit enim aperiam asperiores._bn', 'https://via.placeholder.com/1040x680.png/004455?text=fugiat', 5, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(16, 'Atque nihil culpa odio qui quis.7_en', 'Atque nihil culpa odio qui quis.7_bn', 'atque-nihil-culpa-odio-qui-quis7', 'Eveniet facilis temporibus molestias et omnis. Ipsam quae quo itaque voluptatum commodi et deleniti deserunt. Neque ducimus harum atque vero. Error quas vitae aut consequatur odio corrupti._en', 'Eveniet facilis temporibus molestias et omnis. Ipsam quae quo itaque voluptatum commodi et deleniti deserunt. Neque ducimus harum atque vero. Error quas vitae aut consequatur odio corrupti._bn', 'https://via.placeholder.com/1040x680.png/009944?text=adipisci', 4, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(17, 'Rem tenetur quo est enim sit.8_en', 'Rem tenetur quo est enim sit.8_bn', 'rem-tenetur-quo-est-enim-sit8', 'Placeat et dolorem necessitatibus omnis facere laudantium modi. Qui possimus nobis eveniet. Ut enim dignissimos maiores._en', 'Placeat et dolorem necessitatibus omnis facere laudantium modi. Qui possimus nobis eveniet. Ut enim dignissimos maiores._bn', 'https://via.placeholder.com/1040x680.png/000077?text=enim', 1, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(18, 'Illo veritatis corrupti tempore temporibus necessitatibus.13_en', 'Illo veritatis corrupti tempore temporibus necessitatibus.13_bn', 'illo-veritatis-corrupti-tempore-temporibus-necessitatibus13', 'Ab consequatur rerum ratione hic dicta. Ut quae laboriosam molestiae perspiciatis reiciendis. Voluptatem unde aliquam odit aut enim. Nesciunt eum dignissimos placeat dolore._en', 'Ab consequatur rerum ratione hic dicta. Ut quae laboriosam molestiae perspiciatis reiciendis. Voluptatem unde aliquam odit aut enim. Nesciunt eum dignissimos placeat dolore._bn', 'https://via.placeholder.com/1040x680.png/0077bb?text=deleniti', 9, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(19, 'Quibusdam eius et placeat quam.18_en', 'Quibusdam eius et placeat quam.18_bn', 'quibusdam-eius-et-placeat-quam18', 'Nihil modi et culpa dolores et sit nulla provident. Eius culpa voluptas maxime eum molestias reiciendis. Odit libero voluptatibus vel odit. Illo magnam similique est._en', 'Nihil modi et culpa dolores et sit nulla provident. Eius culpa voluptas maxime eum molestias reiciendis. Odit libero voluptatibus vel odit. Illo magnam similique est._bn', 'https://via.placeholder.com/1040x680.png/006600?text=velit', 3, '2025-04-04 01:00:55', '2025-04-04 01:00:55'),
(20, 'Cum atque debitis cum beatae omnis.11_en', 'Cum atque debitis cum beatae omnis.11_bn', 'cum-atque-debitis-cum-beatae-omnis11', 'Amet maxime minus soluta sed nostrum laudantium quaerat. Hic similique quibusdam sunt et. Officia alias qui adipisci repellat qui._en', 'Amet maxime minus soluta sed nostrum laudantium quaerat. Hic similique quibusdam sunt et. Officia alias qui adipisci repellat qui._bn', 'https://via.placeholder.com/1040x680.png/0099cc?text=omnis', 8, '2025-04-04 01:00:55', '2025-04-04 01:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 1, 2, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 1, 3, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 1, 4, NULL, NULL),
(10, 2, 4, NULL, NULL),
(11, 1, 5, NULL, NULL),
(12, 1, 6, NULL, NULL),
(13, 2, 6, NULL, NULL),
(14, 3, 6, NULL, NULL),
(15, 4, 6, NULL, NULL),
(16, 1, 7, NULL, NULL),
(17, 2, 7, NULL, NULL),
(18, 3, 7, NULL, NULL),
(19, 4, 7, NULL, NULL),
(20, 1, 8, NULL, NULL),
(21, 1, 9, NULL, NULL),
(22, 2, 9, NULL, NULL),
(23, 1, 10, NULL, NULL),
(24, 1, 11, NULL, NULL),
(25, 2, 11, NULL, NULL),
(26, 1, 12, NULL, NULL),
(27, 2, 12, NULL, NULL),
(28, 1, 13, NULL, NULL),
(29, 1, 14, NULL, NULL),
(30, 1, 15, NULL, NULL),
(31, 2, 15, NULL, NULL),
(32, 1, 16, NULL, NULL),
(33, 2, 16, NULL, NULL),
(34, 1, 17, NULL, NULL),
(35, 1, 18, NULL, NULL),
(36, 2, 18, NULL, NULL),
(37, 3, 18, NULL, NULL),
(38, 1, 19, NULL, NULL),
(39, 2, 19, NULL, NULL),
(40, 3, 19, NULL, NULL),
(41, 4, 19, NULL, NULL),
(42, 1, 20, NULL, NULL),
(43, 2, 20, NULL, NULL),
(44, 3, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ewB6tJH7opwNquEHiH5hM1GyxTBta5Ub2OKYPiIw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEZzUGNRUWl5QlVsQ2M5d0NLSGhibDR1cFNRcmhDbXd5ZDMzbGU2ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743845699),
('ZnFbwEIaVLyP2vDh58zIlMPMa9oyNzTkWjO9vBSk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlF4Z05Gb2lTaVp4cmpPWFNMNkMweURLWHFPeDJZMVVadUZhWXZkYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS9vbW5pczgvcG9zdHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743859805);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'quo', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(2, 'et', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(3, 'autem', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(4, 'ex', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(5, 'sunt', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(6, 'voluptates', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(7, 'aut', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(8, 'ratione', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(9, 'dolore', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(10, 'totam', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(11, 'sit', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(12, 'neque', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(13, 'nihil', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(14, 'aliquid', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(15, 'aperiam', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(16, 'ipsa', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(17, 'harum', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(18, 'provident', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(19, 'ea', '2025-04-04 01:00:54', '2025-04-04 01:00:54'),
(20, 'molestiae', '2025-04-04 01:00:54', '2025-04-04 01:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
